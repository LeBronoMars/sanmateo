package models

type Official struct {
	BaseModel
	FirstName  string `json:"first_name" form:"first_name" binding:"required"`
	LastName  string `json:"last_name" form:"last_name" binding:"required"`	
	MiddleName string `json:"middle_name form:"middle_name" binding:"required"`
	Position string `json:"Position" form:"Position" binding:"required"`
	Index int `json:"index" form:"index" binding:"required"`
	AboutMe string `json:"about_me"`
}