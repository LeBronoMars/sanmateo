package models

import (
	"time"
)

type QryIncident struct {
	ReporterId int `json:"reporter_id"`
	ReporterName string `json:"reporter_name"`
	ReporterContactNo string `json:"reporter_contact_no"`
	ReporterEmail string `json:"reporter_email"`
	ReporterAddress string `json:"reporter_address"`
	ReporterPicUrl string `json:"reporter_pic_url"`
	IncidentId int `json:"incident_id"`
	Images string `json:"images"`
	Latitude float64 `json:"latitude"`
	Longitude float64 `json:"longitude"`
	IncidentAddress string `json:"incident_address"`
	IncidentDescription string `json:"incident_description"`
	IncidentStatus string `json:"incident_status"`
	IncidentType string `json:"incident_type"`
	Remarks string `json:"remarks"`
	IncidentDateReported time.Time `json:"incident_date_reported"`
	IncidentDateUpdated time.Time `json:"incident_date_updated"`
	Status string `json:"status"`
}