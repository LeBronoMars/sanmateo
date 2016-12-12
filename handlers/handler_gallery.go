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
	galleries := []m.Gallery{}	
	handler.db.Order("created_at desc").Find(&galleries)
	c.JSON(http.StatusOK,galleries)
	return
}

func (handler GalleryHandler) Create(c *gin.Context) {
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
	return
}

func (handler GalleryHandler) UpdateGallery(c *gin.Context) {
	id := c.Param("id")
	gallery := m.Gallery{}
	qry := handler.db.Where("id = ?",id).First(&gallery)
	if qry.RowsAffected > 0 {
		//update title
		if (len(c.PostForm("title")) > 0) {
			gallery.Title = c.PostForm("title")
		}
		//update description
		if (len(c.PostForm("description")) > 0) {
			gallery.Description = c.PostForm("description")
		}
		//update image url
		if (len(c.PostForm("image_url")) > 0) {
			gallery.ImageUrl = c.PostForm("image_url")
		}
		result := handler.db.Save(&gallery)
		if result.RowsAffected > 0 {
			c.JSON(http.StatusOK, gallery)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)	
		}
	} else {
		respond(http.StatusBadRequest,"Gallery record not found!",c,true)
	}
	return
}

