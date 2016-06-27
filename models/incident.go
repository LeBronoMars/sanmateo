package models

type Incident struct {
	BaseModel
	Images []string `json:"images" form:"images" binding:"required"`
	ReportedBy int `json:"reported_by" form:"reported_by" binding:"required"`
}