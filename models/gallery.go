package models

type Gallery struct {
	BaseModel
	ImageUrl string `json:"image_url" form:"image_url" binding:"required"`
	Description string `json:"description" form:"description" binding:"required"`
}