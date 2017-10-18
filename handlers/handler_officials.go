package handlers

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"github.com/pusher/pusher-http-go"
)

type OfficialHandler struct {
	db *gorm.DB
	pusher *pusher.Client
}

func NewOfficialHandler(db *gorm.DB, pusher *pusher.Client) *OfficialHandler {
	return &OfficialHandler{db,pusher}
}

//officials listing
func (handler OfficialHandler) Index(c *gin.Context) {
	officials := []m.Official{}
	handler.db.Order("zindex asc").Find(&officials)
	c.JSON(http.StatusOK,officials)
	return
}

//create official
func (handler OfficialHandler) Create(c *gin.Context) {
	var official m.Official
	err := c.Bind(&official)
	if err == nil {
		existingIndexRecord := m.Official{}
		if (handler.db.Where("zindex = ?",official.Zindex).First(&existingIndexRecord).RowsAffected > 0) {
			respond(http.StatusBadRequest,"zindex already used!",c,true)
		} else {
			result := handler.db.Create(&official)
			if result.RowsAffected > 0 {
				c.JSON(http.StatusCreated, official)								
			} else {
				respond(http.StatusBadRequest,result.Error.Error(),c,true)
			}
		}
	} else {
		respond(http.StatusBadRequest,err.Error(),c,true)
	}
	return
}

// delete official
func (handler OfficialHandler) Delete(c *gin.Context) {
	id := c.Param("id")
	official := m.Official{}
	qry := handler.db.Where("id = ? AND status = ?",id,"active").First(&official)
	if qry.RowsAffected > 0 {
		deleteResult := handler.db.Delete(&official)
		if (deleteResult.RowsAffected > 0) {
			respond(http.StatusOK, "Official record successfully deleted.", c, false)
		} else {
			respond(http.StatusBadRequest, deleteResult.Error.Error(), c, true)
		}
	} else {
		respond(http.StatusNotFound, "No record found.", c, true)
	}
}

//update official
func (handler OfficialHandler) UpdateOfficialRecord(c *gin.Context) {
	id := c.Param("id")
	official := m.Official{}
	qry := handler.db.Where("id = ? AND status = ?",id,"active").First(&official)
	if qry.RowsAffected > 0 {
		//update first name
		if (len(c.PostForm("first_name")) > 0) {
			official.FirstName = c.PostForm("first_name")
		}
		//update last name
		if (len(c.PostForm("last_name")) > 0) {
			official.LastName = c.PostForm("last_name")
		}
		//update nick name
		if (len(c.PostForm("nick_name")) > 0) {
			official.NickName = c.PostForm("nick_name")
		}
		//update background
		if (len(c.PostForm("background")) > 0) {
			official.Background = c.PostForm("background")
		}
		//update pic
		if (len(c.PostForm("pic")) > 0) {
			official.Pic = c.PostForm("pic")
		}
		//update status
		if (len(c.PostForm("status")) > 0) {
			official.Status = c.PostForm("status")
		}
		result := handler.db.Save(&official)
		if result.RowsAffected > 0 {
			c.JSON(http.StatusOK, official)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)	
		}
	} else {
		respond(http.StatusBadRequest,"Official record not found!",c,true)
	}
	return
}



