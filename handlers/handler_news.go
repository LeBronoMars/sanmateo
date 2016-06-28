package handlers

import (
	"net/http"
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
	if IsTokenValid(c) {
		news := []m.News{}	
		handler.db.Find(&news)
		c.JSON(http.StatusOK,news)
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}

func (handler NewsHandler) Create(c *gin.Context) {
	if IsTokenValid(c) {
		var news m.News
		err := c.Bind(&news)
		if err == nil {
			result := handler.db.Create(&news)
			if result.RowsAffected > 0 {
				data := map[string]string{"action": "News from San Mateo Municipal", "news_id": strconv.Itoa(news.Id)}
				handler.pusher.Trigger("all","created",data)
				c.JSON(http.StatusCreated,news)
			} else {
				respond(http.StatusBadRequest,result.Error.Error(),c,true)
			}
		} else {
			respond(http.StatusBadRequest,err.Error(),c,true)
		}
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}

