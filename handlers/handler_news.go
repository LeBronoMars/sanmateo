package handlers

import (
	"net/http"
	"time"
	"fmt"
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
			fmt.Printf("\nStart Of Day ----> %v",startOfDay)
			fmt.Printf("\nEnd of Day ----> %v",endOfDay)
			query = query.Where("created_at between ? AND ?",startOfDay,endOfDay)
		} else if whenParam == "previous" {
			query = query.Where("created_at < ?",startOfDay)
		}
	}

	query.Find(&news)
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


