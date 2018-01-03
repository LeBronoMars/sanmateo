package models

type StormWatch struct {
	BaseModel
	Image string `json:"image" form:"image" binding:"required"`
	Summary string `json:"summary" form:"summary" binding:"required"`
}
