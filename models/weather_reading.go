package models

type WeatherReading struct {
	BaseModel
	BackgroundImage string `json:"background_image" form:"background_image" binding:"required"`
	Summary string `json:"summary" form:"summary" binding:"required"`
	HeatIndex float64 `json:"heat_index" form:"heat_index" binding:"required"`
	WeatherIcon string `json:"weather_icon" form:"weather_icon" binding:"required"`
	Humidity float64 `json:"humidity" form:"humidity" binding:"required"`
	UVIndex string `json:"uv_index" form:"uv_index" binding:"required"`
	WindSpeed float64 `json:"wind_speed" form:"wind_speed" binding:"required"`
	CloudCover float64 `json:"cloud_cover" form:"cloud_cover" binding:"required"`
	WindsFrom string `json:"winds_from" form:"winds_from" binding:"required"`
	WindGusts float64 `json:"wind_gusts" form:"wind_gusts" binding:"required"`
	DewPoint float64 `json:"dew_point" form:"dew_point" binding:"required"`
	Pressure float64 `json:"pressure" form:"pressure" binding:"required"`
	Visibility float64 `json:"visibility" form:"visibility" binding:"required"`
	Temperature float64 `json:"temperature" form:"temperature" binding:"required"`
	Remarks string `json:"remarks" form:"remarks"`
}
