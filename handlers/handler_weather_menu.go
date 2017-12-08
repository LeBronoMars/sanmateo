package handlers

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
)

type WeatherMenuHandler struct {
	db *gorm.DB
}

func NewWeatherMenuHandler(db *gorm.DB) *WeatherMenuHandler {
	return &WeatherMenuHandler{db}
}

//get all weather menu
func (handler WeatherMenuHandler) Index(c *gin.Context) {
	weatherMenus := []m.WeatherMenu{}	
	var query = handler.db

	startParam,startParamExist := c.GetQuery("start")
	limitParam,limitParamExist := c.GetQuery("limit")
	typeParam,typeParamExist := c.GetQuery("type")

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

	// type param exist
	if typeParamExist {
		query = query.Where("type = ?", typeParam)
	} 

	query.Order("created_at desc").Find(&weatherMenus)
	c.JSON(http.StatusOK,weatherMenus)
	return
}

func (handler WeatherMenuHandler) Count(c *gin.Context) {
	weatherMenus := []m.WeatherMenu{}	
	var query = handler.db

	count := 0;
	query.Find(&weatherMenus).Count(&count)

	c.JSON(http.StatusOK, &TotalCount{Count: count})
	return
}


func (handler WeatherMenuHandler) Create(c *gin.Context) {
	var weatherMenu m.WeatherMenu

	err := c.Bind(&weatherMenu)

	if err == nil {
		result := handler.db.Create(&weatherMenu)

		if result.RowsAffected > 0 {
			c.JSON(http.StatusCreated,weatherMenu)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,err.Error(),c,true)
	}
	return
}

func (handler WeatherMenuHandler) Delete(c *gin.Context) {
	id := c.Param("id")
	weatherMenu := m.WeatherMenu{}
	result := handler.db.Where("id = ?",id).First(&weatherMenu)
	if result.RowsAffected > 0 {
		deleteResult := handler.db.Delete(&weatherMenu)
		if (deleteResult.RowsAffected > 0) {
			respond(http.StatusOK, "Weather menu successfully deleted", c, false)	
		} else {
			respond(http.StatusBadRequest, deleteResult.Error.Error(), c, true)			
		}
	} else {
		respond(http.StatusNotFound, "Weather menu record record not found.", c, true)
	}
}


