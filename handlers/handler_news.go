package handlers

import (
	"net/http"
	"time"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"github.com/pusher/pusher-http-go"
)

type NewsHandler struct {
	db *gorm.DB
	pusher *pusher.Client
}

func NewNewsHandler(db *gorm.DB, pusher *pusher.Client) *NewsHandler {
	return &NewsHandler{db,pusher}
}

//get all news
func (handler NewsHandler) Index(c *gin.Context) {
	news := []m.News{}	
	var query = handler.db

	startParam,startParamExist := c.GetQuery("start")
	limitParam,limitParamExist := c.GetQuery("limit")
	statusParam,statusParamExist := c.GetQuery("status")
	whenParam,whenParamExist := c.GetQuery("when")

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

	//status param exist
	if statusParamExist {
		query = query.Where("status = ?",statusParam)
	}

	//when param exist
	if whenParamExist {
		asia, _ := time.LoadLocation("Asia/Manila")
		now := time.Now().In(asia)				
		startOfDay := GetStartOfDay(now)
		if whenParam == "today" {
			endOfDay := GetEndOfDay(now)
			query = query.Where("created_at between ? AND ?",startOfDay, endOfDay)
		} else if whenParam == "previous" {
			query = query.Where("created_at < ?", startOfDay)
		}
	}

	query.Order("created_at desc").Find(&news)
	c.JSON(http.StatusOK,news)
	return
}

func (handler NewsHandler) Create(c *gin.Context) {
	var news m.News
	err := c.Bind(&news)
	if err == nil {
		result := handler.db.Create(&news)
		if result.RowsAffected > 0 {
			data := map[string]string{"action":"news created","title" : "News from San Mateo Municipal",
										"reported_by" : news.ReportedBy, "id": strconv.Itoa(news.Id)}
			handler.pusher.Trigger("clients","san_mateo_event",data)
			c.JSON(http.StatusCreated,news)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,err.Error(),c,true)
	}
	return
}

func (handler NewsHandler) Update(c *gin.Context) {
	id := c.Param("id")
	news := m.News{}
	result := handler.db.Where("id = ?",id).First(&news)
	if result.RowsAffected > 0 {

		// update news title
		if (len(c.PostForm("title")) > 0) {
			news.Title = c.PostForm("title")
		}

		// update news body
		if (len(c.PostForm("body")) > 0) {
			news.Body = c.PostForm("body")
		}

		// update news source url
		if (len(c.PostForm("source_url")) > 0) {
			news.SourceUrl = c.PostForm("source_url")
		}

		// update news image url
		if (len(c.PostForm("image_url")) > 0) {
			news.ImageUrl = c.PostForm("image_url")
		}

		if (len(c.PostForm("reported_by")) > 0) {
			news.ReportedBy = c.PostForm("reported_by")
		}

		result := handler.db.Save(&news)
		if result.RowsAffected > 0 {
			c.JSON(http.StatusOK, news)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)	
		}
	} else {
		respond(http.StatusNotFound, "News record nout found.", c, true)
	}
}

func (handler NewsHandler) Delete(c *gin.Context) {
	id := c.Param("id")
	news := m.News{}
	result := handler.db.Where("id = ?",id).First(&news)
	if result.RowsAffected > 0 {
		deleteResult := handler.db.Delete(&news)
		if (deleteResult.RowsAffected > 0) {
			respond(http.StatusOK, "News successfully deleted", c, false)	
		} else {
			respond(http.StatusBadRequest, deleteResult.Error.Error(), c, true)			
		}
	} else {
		respond(http.StatusNotFound, "News record not found.", c, true)
	}
}

func (handler NewsHandler) GetNewsById(c *gin.Context) {
	id := c.Param("id")
	news := m.News{}
	result := handler.db.Where("id = ?",id).First(&news)
	if result.RowsAffected > 0 {
		c.JSON(http.StatusOK,news)
	} else {
		respond(http.StatusBadRequest,result.Error.Error(),c,true)
	}
	return
}


