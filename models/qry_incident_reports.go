package models

type QryIncidentReports struct {
	UploaderId int `json:"uploader_id"`
	UploaderName string `json:"uploader_name"`
	UploaderEmail string `json:"uploader_email"`
	UploaderContactNo string `json:"uploader_contact_no"`
	UploaderGender string `json:"uploader_gender"`
	UploaderAddress string `json:"uploader_address"`
	UploaderPicUrl string `json:"uploader_pic_url"`
	ReporterId int `json:"reporter_id"`
	ReporterName string `json:"reporter_name"`
	ReporterEmail string `json:"reporter_email"`
	ReporterAddress string `json:"reporter_address"`
	ReporterContactNo string `json:"repoter_contact_no"`
	ReporterGender string `json:"reporter_gender"`
	ReporterPicUrl string `json:"reporter_pic_url"`
	IncidentId int `json:"incident_id"`
	ReportStatus string `json:"report_status"`
	IncidentDescruption string `json:"incident_description"`
	IncidentImages string `json:"incident_images"`
	IncidentStatus string `json:"incident_status"`
	IncidentAddress string `json:"incident_address"`
	IncidentLatitude float64 `json:"incident_latitude"`
	IncidentLongitude float64 `json:"incident_longitude"`
}