package handlers

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
)

type StormWatchHandler struct {
	db *gorm.DB
}

func NewStormWatchHandler(db *gorm.DB) *StormWatchHandler {
	return &StormWatchHandler{db}
}

//get all weather menu
func (handler StormWatchHandler) Index(c *gin.Context) {
	stormWatchs := []m.StormWatch{}	
	var query = handler.db

	startParam,startParamExist := c.GetQuery("start")
	limitParam,limitParamExist := c.GetQuery("limit")

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

	query.Order("created_at desc").Find(&stormWatchs)
	c.JSON(http.StatusOK, stormWatchs)
	return
}

func (handler StormWatchHandler) Count(c *gin.Context) {
	stormWatchs := []m.StormWatch{}	
	var query = handler.db

	count := 0;
	query.Find(&stormWatchs).Count(&count)

	c.JSON(http.StatusOK, &TotalCount{Count: count})
	return
}

func (handler StormWatchHandler) Create(c *gin.Context) {
	var stormWatch m.StormWatch

	err := c.Bind(&stormWatch)

	if err == nil {
		result := handler.db.Create(&stormWatch)

		if result.RowsAffected > 0 {
			c.JSON(http.StatusCreated,stormWatch)
		} else {
			respond(http.StatusBadRequest, result.Error.Error(), c, true)
		}
	} else {
		respond(http.StatusBadRequest, err.Error(), c, true)
	}
	return
}


func (handler StormWatchHandler) Update(c *gin.Context) {
	id := c.Param("id")
	stormWatch := m.StormWatch{}

	result := handler.db.Where("id = ?",id).First(&stormWatch)
	if result.RowsAffected > 0 {

		// update StormWatch Image
		if (len(c.PostForm("image")) > 0) {
			stormWatch.Image = c.PostForm("image")
		}

		// update StormWatch Summary
		if (len(c.PostForm("summary")) > 0) {
			stormWatch.Summary = c.PostForm("summary")
		}

		result := handler.db.Save(&stormWatch)

		if result.RowsAffected > 0 {
			c.JSON(http.StatusOK, stormWatch)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)	
		}
	} else {
		respond(http.StatusNotFound, "Storm watch record nout found.", c, true)
	}
}

func (handler StormWatchHandler) Delete(c *gin.Context) {
	id := c.Param("id")
	stormWatch := m.StormWatch{}
	result := handler.db.Where("id = ?",id).First(&stormWatch)
	if result.RowsAffected > 0 {
		deleteResult := handler.db.Delete(&stormWatch)
		if (deleteResult.RowsAffected > 0) {
			respond(http.StatusOK, "Storm watch reading successfully deleted", c, false)	
		} else {
			respond(http.StatusBadRequest, deleteResult.Error.Error(), c, true)			
		}
	} else {
		respond(http.StatusNotFound, "Storm watch reading record not found.", c, true)
	}
}


