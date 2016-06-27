package models

type Incident struct {
	BaseModel
	Images string `json:"images" form:"images" binding:"required" sql:"type:longtext"`
	ReportedBy int `json:"reported_by" form:"reported_by" binding:"required"`
	Latitude float64 `json:"latitude" form:"latitude" binding:"required"`
	Longitude float64 `json:"longitude" form:"longitude" binding:"required"`
	Address string `json:"address" form:"address" binding:"required"`
	Description string `json:"description" form:"description" binding:"required"` 
	Status string `json:"status" form:"status"`
	IncidentType string `json:"incident_type" form:"incident_type" binding:"required"`
}

func (i *Incident) BeforeCreate() (err error) {
	i.Status = "active"
	return
}