package handlers

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"github.com/pusher/pusher-http-go"
)

type WeatherReadingHandler struct {
	db *gorm.DB
	pusher *pusher.Client
}

func NewWeatherReadingHandler(db *gorm.DB, pusher *pusher.Client) *WeatherReadingHandler {
	return &WeatherReadingHandler{db,pusher}
}

//get all weather menu
func (handler WeatherReadingHandler) Index(c *gin.Context) {
	weatherReadings := []m.WeatherReading{}	
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

	query.Order("created_at desc").Find(&weatherReadings)
	c.JSON(http.StatusOK,weatherReadings)
	return
}

func (handler WeatherReadingHandler) Count(c *gin.Context) {
	weatherReadings := []m.WeatherReading{}	
	var query = handler.db

	count := 0;
	query.Find(&weatherReadings).Count(&count)

	c.JSON(http.StatusOK, &TotalCount{Count: count})
	return
}


func (handler WeatherReadingHandler) Create(c *gin.Context) {
	var weatherReading m.WeatherReading

	err := c.Bind(&weatherReading)

	if err == nil {
		result := handler.db.Create(&weatherReading)

		if result.RowsAffected > 0 {
			data := map[string]string{"action":"weather",
										"title" : "New weather reading",
										"message" : weatherReading.Remarks,
										"created_at" : weatherReading.CreatedAt.Format("2006-01-02 15:04:05"),
										"id": strconv.Itoa(weatherReading.Id)}
			handler.pusher.Trigger("clients","san_mateo_event",data)

			c.JSON(http.StatusCreated,weatherReading)
		} else {
			respond(http.StatusBadRequest, result.Error.Error(), c, true)
		}
	} else {
		respond(http.StatusBadRequest, err.Error(), c, true)
	}
	return
}


func (handler WeatherReadingHandler) Update(c *gin.Context) {
	id := c.Param("id")
	weatherReading := m.WeatherReading{}

	result := handler.db.Where("id = ?",id).First(&weatherReading)
	if result.RowsAffected > 0 {

		// update weatherReading BackgroundImage
		if (len(c.PostForm("background_image")) > 0) {
			weatherReading.BackgroundImage = c.PostForm("background_image")
		}

		// update weatherReading Summary
		if (len(c.PostForm("summary")) > 0) {
			weatherReading.Summary = c.PostForm("summary")
		}

		// update weatherReading HeatIndex
		if (len(c.PostForm("heat_index")) > 0) {
		    heatIndex, _ := strconv.ParseFloat(c.PostForm("heat_index"), 64)
			weatherReading.HeatIndex = heatIndex
		}

		// update weatherReading WeatherIcon
		if (len(c.PostForm("weather_icon")) > 0) {
			weatherReading.WeatherIcon = c.PostForm("weather_icon")
		}

		// update weatherReading WeaHumiditytherIcon
		if (len(c.PostForm("humidity")) > 0) {
			humidity, _ := strconv.ParseFloat(c.PostForm("humidity"), 64)
			weatherReading.Humidity = humidity
		}

		// update weatherReading UVIndex
		if (len(c.PostForm("uv_index")) > 0) {
			weatherReading.UVIndex = c.PostForm("uv_index")
		}

		// update weatherReading WindSpeed
		if (len(c.PostForm("wind_speed")) > 0) {
			windSpeed, _ := strconv.ParseFloat(c.PostForm("wind_speed"), 64)
			weatherReading.WindSpeed = windSpeed
		}

		// update weatherReading CloudCover
		if (len(c.PostForm("cloud_cover")) > 0) {
			cloudCover, _ := strconv.ParseFloat(c.PostForm("cloud_cover"), 64)
			weatherReading.CloudCover = cloudCover
		}

		// update weatherReading WindsFrom
		if (len(c.PostForm("winds_from")) > 0) {
			weatherReading.WindsFrom = c.PostForm("winds_from")
		}

		// update weatherReading WindGusts
		if (len(c.PostForm("wind_gusts")) > 0) {
			windGusts, _ := strconv.ParseFloat(c.PostForm("wind_gusts"), 64)
			weatherReading.WindGusts = windGusts
		}

		// update weatherReading DewPoint
		if (len(c.PostForm("dew_point")) > 0) {
			dewPoint, _ := strconv.ParseFloat(c.PostForm("dew_point"), 64)
			weatherReading.DewPoint = dewPoint
		}

		// update weatherReading Pressure
		if (len(c.PostForm("pressure")) > 0) {
			pressure, _ := strconv.ParseFloat(c.PostForm("pressure"), 64)
			weatherReading.Pressure = pressure
		}

		// update weatherReading Visibility
		if (len(c.PostForm("visibility")) > 0) {
			visibility, _ := strconv.ParseFloat(c.PostForm("visibility"), 64)
			weatherReading.Visibility = visibility
		}

		// update weatherReading Temperature
		if (len(c.PostForm("temperature")) > 0) {
			temperature, _ := strconv.ParseFloat(c.PostForm("temperature"), 64)
			weatherReading.Temperature = temperature
		}

		// update weatherReading Remarks
		if (len(c.PostForm("remakrs")) > 0) {
			weatherReading.Remarks = c.PostForm("remarks")
		}

		result := handler.db.Save(&weatherReading)
		if result.RowsAffected > 0 {
			c.JSON(http.StatusOK, weatherReading)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)	
		}
	} else {
		respond(http.StatusNotFound, "Weather record nout found.", c, true)
	}
}

func (handler WeatherReadingHandler) Delete(c *gin.Context) {
	id := c.Param("id")
	weatherReading := m.WeatherReading{}
	result := handler.db.Where("id = ?",id).First(&weatherReading)
	if result.RowsAffected > 0 {
		deleteResult := handler.db.Delete(&weatherReading)
		if (deleteResult.RowsAffected > 0) {
			respond(http.StatusOK, "Weather reading successfully deleted", c, false)	
		} else {
			respond(http.StatusBadRequest, deleteResult.Error.Error(), c, true)			
		}
	} else {
		respond(http.StatusNotFound, "Weather reading record record not found.", c, true)
	}
}


