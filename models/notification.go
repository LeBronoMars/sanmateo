package models

type Notification struct {
	BaseModel
	Message string `json:"message" form:"message" binding:"required" sql:"type:longtext"`
	From int `json:"from" form:"form"`
	To int `json:"to" form:"to"`
	Status string `json:"status" form:"status"`
}

func (n *Notification) BeforeCreate() (err error) {
	n.Status = "unread"
	return
}