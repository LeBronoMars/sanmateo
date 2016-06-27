package handlers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
)

type GalleryHandler struct {
	db *gorm.DB
}

func NewGalleryHandler(db *gorm.DB) *GalleryHandler {
	return &GalleryHandler{db}
}

func (handler GalleryHandler) Index(c *gin.Context) {
	if IsTokenValid(c) {
		galleries := []m.Gallery{}	
		handler.db.Find(&galleries)
		c.JSON(http.StatusOK,galleries)
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}

func (handler GalleryHandler) Create(c *gin.Context) {
	if IsTokenValid(c) {
		var gallery m.Gallery
		err := c.Bind(&gallery)
		if err == nil {
			result := handler.db.Create(&gallery)
			if result.RowsAffected > 0 {
				c.JSON(http.StatusCreated,gallery)
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
