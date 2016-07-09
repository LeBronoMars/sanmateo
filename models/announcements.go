package models

type Announcement struct {
	BaseModel
	Title string `json:"title" form:"title" binding:"required" sql:"type:longtext"`
	Message string `json:"message" form:"message" binding:"required" sql:"type:longtext"`
}