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
			queryForIncidentRecord := handler.db.Where("incident_id = ?",incident_id).First(&incidentRecord)

			if queryForIncidentRecord.RowsAffected > 0 {
				reportedByUser := m.User{}
				queryForReportedByUser := handler.db.Where("id = ?",reported_by).First(&reportedByUser)
				if queryForReportedByUser.RowsAffected > 0 {
					resut := handler.db.Create(incidentReport)
					if resut.RowsAffected > 0 {
						c.JSON(http.StatusCreated,incidentReport)
						//send push to channel
						//data := map[string]string{"action": "new incident report","reported_by"}
						//handler.pusher.Trigger("all","san_mateo_event",data)
					}					
				} else {
					respond(http.StatusBadRequest,"Reportee record not found!",c,true)
				}
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