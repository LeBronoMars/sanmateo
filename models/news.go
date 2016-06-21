package models

type News struct {
	BaseModel
	Title string `json:"title" form:"title" binding:"required"`
	Body string `json:"body" form:"body" binding:"required"`
	ImageUrl string `json:"image_url" form:"image_url" binding:"required"`
	ReportedBy string `json:"reported_by" form:"reported_by" binding:"required"`
}