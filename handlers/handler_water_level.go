package handlers

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"github.com/pusher/pusher-http-go"
)

type WaterLevelHandler struct {
	db *gorm.DB
	pusher *pusher.Client
}

func NewWaterLevelHandler(db *gorm.DB, pusher *pusher.Client) *WaterLevelHandler {
	return &WaterLevelHandler{db,pusher}
}

//get all water level
func (handler WaterLevelHandler) Index(c *gin.Context) {
	if IsTokenValid(c) {
		waterLevels := []m.WaterLevel{}	
		var query = handler.db

		startParam,startParamExist := c.GetQuery("start")
		limitParam,limitParamExist := c.GetQuery("limit")

		//start param exist
		if startParamExist {
			start,_ := strconv.Atoi(startParam)
			if start != 0 {
				query = query.Offset(start)				
			}
		} 

		//limit param exist
		if limitParamExist {
			limit,_ := strconv.Atoi(limitParam)
			query = query.Limit(limit)
		} else {
			query = query.Limit(10)
		}

		query.Order("created_at desc").Find(&waterLevels)
		c.JSON(http.StatusOK,waterLevels)
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}

func (handler WaterLevelHandler) Create(c *gin.Context) {
	if IsTokenValid(c) {
		var waterLevel m.WaterLevel
		err := c.Bind(&waterLevel)

		if err == nil {
			result := handler.db.Create(&waterLevel)
			if result.RowsAffected > 0 {
				data := map[string]string{"action":"water level",
											"title" : "New water level notification",
											"message" : waterLevel.Alert, 
											"id": strconv.Itoa(waterLevel.Id)}
				handler.pusher.Trigger("client","san_mateo_event",data)
				c.JSON(http.StatusCreated,waterLevel)
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


