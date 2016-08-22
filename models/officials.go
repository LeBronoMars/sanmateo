package models

type Official struct {
	BaseModel
	FirstName  string `json:"first_name" form:"first_name" binding:"required"`
	LastName  string `json:"last_name" form:"last_name" binding:"required"`	
	Nickname string `json:"nick_name" form:"nick_name`
	Position string `json:"position" form:"position" binding:"required"`
	Zindex int `json:"-" form:"zindex" binding:"required"`
	Background string `json:"background" form:"background"`
	Pic string `json:"pic" form:"pic"`
}

