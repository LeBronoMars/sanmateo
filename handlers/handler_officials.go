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

//create official
func (handler OfficialHandler) Create(c *gin.Context) {
	if IsTokenValid(c) {
		var official m.Official
		err := c.Bind(&official)
		if err == nil {
			existingIndexRecord := m.Official{}
			if (handler.db.Where("zindex = ?",official.Zindex).First(&existingIndexRecord).RowsAffected > 0) {
				respond(http.StatusBadRequest,"zindex already used!",c,true)
			} else {
				handler.db.Create(&official)
				c.JSON(http.StatusCreated, official)			
			}
		} else {
			respond(http.StatusBadRequest,err.Error(),c,true)
		}
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}

