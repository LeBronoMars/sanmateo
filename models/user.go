package models

import (
	"crypto/md5"
	"fmt"
)

type User struct {
	BaseModel
	FirstName  string `json:"first_name" form:"first_name" binding:"required"`
	LastName  string `json:"last_name" form:"last_name" binding:"required"`	
	Email string `json:"email" form:"email" binding:"required"`
	Address string `json:"address" form:"address" binding:"required"`
	ContactNo string `json:"contact_no" form:"contact_no" binding:"required"`
	Status string `json:"status"`
	UserLevel string `json:"user_level" form:"user_level" binding:"required"`
	Password string `json:"-" form:"password" binding:"required"`
	Gender string `json:"gender" form:"gender" binding:"required"`
	PicUrl string `json:"pic_url" form:"pic_url"`
}

func (u *User) BeforeCreate() (err error) {
	u.Status = "active"
	defaultPic := fmt.Sprintf("%x", md5.Sum([]byte(u.Email)))
	u.PicUrl = fmt.Sprintf("http://www.gravatar.com/avatar/%s?d=identicon",defaultPic)
	return
}