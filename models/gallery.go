package models

type Gallery struct {
	BaseModel
	Title string `json:"title" form:"title" binding:"required"`
	ImageUrl string `json:"image_url" form:"image_url" binding:"required"`
	Description string `sql:"type:longtext" json:"description" form:"description" binding:"required"`
}