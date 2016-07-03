package handlers

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"github.com/pusher/pusher-http-go"
)

type IncidentReportHandler struct {
	db *gorm.DB
	pusher *pusher.Client
}

func NewIncidentReportHandler(db *gorm.DB, pusher *pusher.Client) *IncidentReportHandler {
	return &IncidentReportHandler{db,pusher}
}


func (handler IncidentReportHandler) Create(c *gin.Context) {
	if IsTokenValid(c) {
		var incidentReport m.IncidentReport
		err := c.Bind(&incidentReport)
		if err == nil {	
			incident_id,_ := strconv.Atoi(c.PostForm("incident_id"))
			reported_by,_ := strconv.Atoi(c.PostForm("reported_by"))

			incidentRecord := m.QryIncident{}
			postedByUser := m.User{}
			reportedByUser := m.User{}

			queryForIncidentRecord := handler.db.Where("incident_id = ?",incident_id).First(&incidentRecord)

			if queryForIncidentRecord.RowsAffected > 0 {
				
			} else {
				respond(http.StatusBadRequest,"Incident record not found!",c,true)
			}
		} else {
			respond(http.StatusBadRequest,err.Error(),c,true)
		}
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}