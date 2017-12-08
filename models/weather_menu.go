package models

type WeatherMenu struct {
	BaseModel
	Name string `json:"name" form:"name" binding:"required"`
	Image string `json:"image" form:"image" binding:"required"`
	Type string `json:"type" form:"type" binding:"required"`
}
