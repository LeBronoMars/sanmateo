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
			incidentRecord := m.QryIncident{}
			queryForIncidentRecord := handler.db.Where("incident_id = ?",incidentReport.IncidentId).First(&incidentRecord)

			if queryForIncidentRecord.RowsAffected > 0 {
				reportedByUser := m.User{}
				queryForReportedByUser := handler.db.Where("id = ?",incidentReport.ReportedBy).First(&reportedByUser)

				if queryForReportedByUser.RowsAffected > 0 {
					result := handler.db.Create(&incidentReport)
					if result.RowsAffected > 0 {
						qry := m.QryIncidentReports{}
						res := handler.db.Where("incident_id = ?",incidentReport.Id).First(&qry)
						if res.RowsAffected > 0 {
							//send push to channel
							data := map[string]string{"action": "new incident report",
														"reporter_id" : strconv.Itoa(qry.ReporterId),
														"incident_id" : strconv.Itoa(qry.IncidentId)}
							handler.pusher.Trigger("admin","san_mateo_event",data)
							c.JSON(http.StatusCreated,qry)
						} else {
							respond(http.StatusBadRequest,res.Error.Error(),c,true)
						}
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

func (handler IncidentReportHandler) GetPendingReviews(c *gin.Context) {
	if IsTokenValid(c) {
		qry := []m.QryIncidentReports{}
		res := handler.db.Where("report_status = ?","for review").Find(&qry)
		if res.RowsAffected > 0 {
			c.JSON(http.StatusOK,qry)
		} else {
			respond(http.StatusBadRequest,res.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
}
