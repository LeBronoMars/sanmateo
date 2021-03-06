package handlers

import (
	"net/http"
	"strconv"
	"fmt"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"github.com/pusher/pusher-http-go"
)

type AnnouncementHandler struct {
	db *gorm.DB
	pusher *pusher.Client
}

func NewAnnouncementHandler(db *gorm.DB, pusher *pusher.Client) *AnnouncementHandler {
	return &AnnouncementHandler{db,pusher}
}

//get all news
func (handler AnnouncementHandler) Index(c *gin.Context) {
	announcements := []m.Announcement{}	
	var query = handler.db

	startParam,startParamExist := c.GetQuery("start")
	limitParam,limitParamExist := c.GetQuery("limit")

	//start param exist
	if startParamExist {
		start,_ := strconv.Atoi(startParam)
		if start != 0 {
			query = query.Offset(start).Order("created_at asc")		
		} else {
			query = query.Offset(0).Order("created_at desc")
		}
	} 

	//limit param exist
	if limitParamExist {
		limit,_ := strconv.Atoi(limitParam)
		query = query.Limit(limit)
	} else {
		query = query.Limit(10)
	}

	query.Order("created_at desc").Find(&announcements)
	c.JSON(http.StatusOK,announcements)
	return
}

func (handler AnnouncementHandler) Count(c *gin.Context) {
	announcements := []m.Announcement{}	
	var query = handler.db

	count := 0;
	query.Find(&announcements).Count(&count)

	c.JSON(http.StatusOK, &TotalCount{Count: count})
}

func (handler AnnouncementHandler) Create(c *gin.Context) {
	var announcement m.Announcement
	err := c.Bind(&announcement)

	if err == nil {
		result := handler.db.Create(&announcement)
		if result.RowsAffected > 0 {
			data := map[string]string{"action":"announcements",
										"title" : "Announcement from San Mateo Municipal",
										"message" : announcement.Message, 
										"created_at" : announcement.CreatedAt.Format("2006-01-02 15:04:05"),
										"id": strconv.Itoa(announcement.Id)}
			handler.pusher.Trigger("clients","san_mateo_event",data)

			fmt.Println("MUST SEND NOTIF");
			c.JSON(http.StatusCreated,announcement)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,err.Error(),c,true)
	}
	return
}

func (handler AnnouncementHandler) Delete(c *gin.Context) {
	id := c.Param("id")
	announcement := m.Announcement{}
	result := handler.db.Where("id = ?",id).First(&announcement)
	if result.RowsAffected > 0 {
		deleteResult := handler.db.Delete(&announcement)
		if (deleteResult.RowsAffected > 0) {
			respond(http.StatusOK, "Announcement record successfully deleted.", c, false)
		} else {
			respond(http.StatusBadRequest, deleteResult.Error.Error(), c, true)
		}
	} else {
		respond(http.StatusNotFound, "Announcement not found.", c, true)
	}
}

func (handler AnnouncementHandler) GetAnnouncementById(c *gin.Context) {
	id := c.Param("id")
	announcement := m.Announcement{}
	result := handler.db.Where("id = ?",id).First(&announcement)
	if result.RowsAffected > 0 {
		c.JSON(http.StatusOK, announcement)
	} else {
		respond(http.StatusBadRequest,result.Error.Error(),c,true)
	}	
	return
}

func (handler AnnouncementHandler) GetNewAnnouncements(c *gin.Context) {
	id := c.Param("id")
	qry_announcements := []m.Announcement{}
	qry := handler.db.Where("id > ?",id).Order("created_at desc").Find(&qry_announcements)
	if qry.Error == nil {
		c.JSON(http.StatusOK,qry_announcements)
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
	return
}


