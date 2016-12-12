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
	return
}

func (handler WaterLevelHandler) Create(c *gin.Context) {
	var waterLevel m.WaterLevel
	err := c.Bind(&waterLevel)

	if err == nil {
		result := handler.db.Create(&waterLevel)
		if result.RowsAffected > 0 {
			data := map[string]string{"action":"water level",
										"title" : waterLevel.Area + " water level",
										"message" : waterLevel.Alert, 
										"area" : waterLevel.Area,
										"id": strconv.Itoa(waterLevel.Id)}
			handler.pusher.Trigger("clients","san_mateo_event",data)
			c.JSON(http.StatusCreated,waterLevel)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,err.Error(),c,true)
	}
	return
}

func (handler WaterLevelHandler) GetNewWaterLevelNotifications(c *gin.Context) {
	id,_ := strconv.Atoi(c.Param("id"))
	area,_ := c.GetQuery("area")
	qry_water_level := []m.WaterLevel{}
	qry := handler.db.Where("id > ? AND area = ?",id,area).Order("created_at desc").Find(&qry_water_level)
	if qry.Error == nil {
		c.JSON(http.StatusOK,qry_water_level)
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
	return
}

func (handler WaterLevelHandler) GetWaterLevelByArea(c *gin.Context) {
	area,areaQueryExist := c.GetQuery("area")
	if areaQueryExist {
		qry_water_level := []m.WaterLevel{}
		qry := handler.db.Where("area = ?",area).Order("created_at desc").Find(&qry_water_level)
		if qry.Error == nil {
			c.JSON(http.StatusOK,qry_water_level)
		} else {
			respond(http.StatusBadRequest,qry.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,"Area is required!",c,true)
	}
	return
}


