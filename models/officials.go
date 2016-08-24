package models

type Official struct {
	BaseModel
	FirstName  string `json:"first_name" form:"first_name" binding:"required"`
	LastName  string `json:"last_name" form:"last_name" binding:"required"`	
	NickName string `json:"nick_name" form:"nick_name"`
	Position string `json:"position" form:"position" binding:"required"`
	Zindex int `json:"-" form:"zindex" binding:"required"`
	Background string `json:"background" form:"background" sql:"type:longtext"`
	Pic string `json:"pic" form:"pic"`
	Status string `json:"status" form:"status"`
}

func (o *Official) BeforeCreate() (err error) {
	o.Status = "active"
	return
}
