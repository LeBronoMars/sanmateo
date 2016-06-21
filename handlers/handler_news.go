package handlers

import (
	"net/http"
    "strings"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"profile/sanmateo/api/config"
	"github.com/pusher/pusher-http-go"
)

type UserHandler struct {
	db *gorm.DB
}

func NewsHandler(db *gorm.DB) NewsHandler {
	return NewsHandler{db}
}

//get all news
func (handle NewsHandler) Index(c *gin.Context) {
	news := []m.News{}
	handler.db.Find(&news)
	c.JSON(http.StatusOK,news)
	return
}

func (handle NewsHandler) Create(c *gin.Context) {

}