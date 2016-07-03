package models

type IncidentReport struct {
	BaseModel
	Remarks string `json:"remarks" form:"remarks" binding:"required"`
	IncidentId int `json:"incident_id" form:"incident_id" binding:"required"`
	PostedBy int `json:"posted_by" form:"posted_by" binding:"required"`
	ReportedBy int `json:"reported_by" form:"reported_by" binding:"required"`
	Status string `json:"status" form:"status"`
}

func (i *IncidentReport) BeforeCreate() (err error) {
	i.Status = "for review"
	return
}