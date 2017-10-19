package handlers

import (
	"net/http"
	"strconv"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"github.com/pusher/pusher-http-go"
)

type IncidentsHandler struct {
	db *gorm.DB
	pusher *pusher.Client
}

func NewIncidentsHandler(db *gorm.DB, pusher *pusher.Client) *IncidentsHandler {
	return &IncidentsHandler{db,pusher}
}

func (handler IncidentsHandler) Index(c *gin.Context) {
	incidents := []m.QryIncident{}
	var query = handler.db

	startParam,startParamExist := c.GetQuery("start")
	limitParam,limitParamExist := c.GetQuery("limit")
	typeParam,typeParamExist := c.GetQuery("incident_type")
	statusParam,statusParamExist := c.GetQuery("status")
	reportedByParam,reportedByParamExist := c.GetQuery("reported_by")
	whenParam,whenParamExist := c.GetQuery("when")
	sortParam,sortParamExist := c.GetQuery("sort")

		//when param exist
	if whenParamExist {
		asia, _ := time.LoadLocation("Asia/Manila")
		now := time.Now().In(asia)				
		startOfDay := GetStartOfDay(now)
		if whenParam == "today" {
			endOfDay := GetEndOfDay(now)
			query = query.Where("incident_date_reported between ? AND ?",startOfDay, endOfDay)
		} else if whenParam == "previous" {
			query = query.Where("incident_date_reported < ?", startOfDay)
		}
	}

	//start param exist
	if startParamExist {
		start,_ := strconv.Atoi(startParam)
		if start != 0 {
			query = query.Offset(start).Order("incident_date_reported asc")		
		} else {
			query = query.Offset(0).Order("incident_date_reported desc")
		}
	} 

	//limit param exist
	if limitParamExist {
		limit,_ := strconv.Atoi(limitParam)
		query = query.Limit(limit)
	} else {
		query = query.Limit(10)
	}

	//type param exist
	if typeParamExist {
		query = query.Where("incident_type = ?",typeParam)
	} 

	//reported by param exist
	if reportedByParamExist {
		query = query.Where("reporter_id = ?",reportedByParam)
	}

	//status param exist
	if statusParamExist {
		query = query.Where("status = ?",statusParam)
	}

		// sort param exist
	if sortParamExist {
		query = query.Order(sortParam)
	} else {
		query.Order("incident_date_reported desc")
	}

	result := query.Order("incident_date_reported desc").Find(&incidents)
	if (result.Error == nil) {
		c.JSON(http.StatusOK, incidents)	
	} else {
		respond(http.StatusBadRequest, result.Error.Error(), c, true)
	}	
}

func (handler IncidentsHandler) Create(c *gin.Context) {
	var incident m.Incident
	err := c.Bind(&incident)
	if err == nil {	
		result := handler.db.Create(&incident)
		if result.RowsAffected > 0 {
			qry_incident := m.QryIncident{}
			qry := handler.db.Where("incident_id = ? ", incident.Id).First(&qry_incident)
			if qry.RowsAffected > 0 {
				//send push notif to admins for approval
				admins := []m.User{}
				res := handler.db.Where("user_level = ?", "Super Admin").Find(&admins)
				if res.RowsAffected > 0 {
					for _, admin := range admins {
						data := map[string]string{"action": "incident_approval", 
						"id": strconv.Itoa(qry_incident.IncidentId),
						"title":"New incident reported by " + qry_incident.ReporterName,
						"content": qry_incident.IncidentDescription}
						handler.pusher.Trigger(admin.Email,"san_mateo_event",data)
					}	
				}
				c.JSON(http.StatusCreated, qry_incident)
			}
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,err.Error(),c,true)
	}
}

func (handler IncidentsHandler) Show(c *gin.Context) {
	incident_id := c.Param("incident_id")
	qry_incident := m.QryIncident{}
	qry := handler.db.Where("incident_id = ? AND status = ?",incident_id,"active").First(&qry_incident)
	if qry.RowsAffected > 0 {
		c.JSON(http.StatusCreated,qry_incident)
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
	return
}

func (handler IncidentsHandler) GetNewIncidents(c *gin.Context) {
	incident_id := c.Param("incident_id")
	qry_incident := []m.QryIncident{}
	qry := handler.db.Where("incident_id > ? AND (status = ? OR status = ?)",incident_id,"active","pending").Order("incident_date_reported desc").Find(&qry_incident)
	if qry.Error == nil {
		c.JSON(http.StatusOK,qry_incident)
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
	return
}

func (handler IncidentsHandler) BlockIncidentReport(c *gin.Context) {
	incident_id := c.Param("incident_id")
	remarks := c.PostForm("remarks")
	status := c.PostForm("status")
	incident := m.Incident{}
	qry := handler.db.Where("id = ? AND status = ?",incident_id,status).First(&incident)
	if qry.Error == nil {
		incident.Status = "blocked"
		incident.Remarks = remarks
		res := handler.db.Save(&incident)
		if res.RowsAffected > 0 {
			
			incidentReport := m.IncidentReport{}
			incidentReportExist := handler.db.Where("incident_id = ?",incident_id).First(&incidentReport)
			
			if incidentReportExist.RowsAffected > 0 {
				handler.db.Unscoped().Delete(&incidentReport)
			}
		
			//send push to channel
			data := map[string]string{"action": "block report","id": strconv.Itoa(incident.Id),
						"reported_by":strconv.Itoa(incident.ReportedBy),"remarks":remarks}
			handler.pusher.Trigger("clients","san_mateo_event",data)

			qryIncident := m.QryIncident{}
			handler.db.Where("incident_id = ?",incident.Id).First(&qryIncident)
			c.JSON(http.StatusOK,qryIncident)
		} else {
			respond(http.StatusBadRequest,res.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
}

func (handler IncidentsHandler) ApproveIncidentReport(c *gin.Context) {
	incident_id := c.Param("incident_id")
	incident := m.Incident{}
	qry := handler.db.Where("id = ? AND status = ?",incident_id,"for approval").First(&incident)
	if qry.Error == nil {
		incident.Status = "active"
		res := handler.db.Save(&incident)
		if res.RowsAffected > 0 {
			qry_incident := m.QryIncident{}
			qry := handler.db.Where("incident_id = ? ", incident.Id).First(&qry_incident)
			
			if qry.RowsAffected > 0 {
				data := map[string]string{"action": "new incident", "id": strconv.Itoa(qry_incident.IncidentId),
					"title":"New incident reported by " + qry_incident.ReporterName,
					"content": qry_incident.IncidentDescription}
				handler.pusher.Trigger("clients","san_mateo_event",data)
				c.JSON(http.StatusOK,qry_incident)
			}
		} else {
			respond(http.StatusBadRequest,res.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
}

func (handler IncidentsHandler) UnblockIncidentReport(c *gin.Context) {
	incident_id := c.Param("incident_id")
	incident := m.Incident{}
	qry := handler.db.Where("id = ? AND status = ?",incident_id,"blocked").First(&incident)
	if qry.Error == nil {
		incident.Status = "active"
		incident.Remarks = ""
		res := handler.db.Save(&incident)
		if res.RowsAffected > 0 {
			qryIncident := m.QryIncident{}
			handler.db.Where("incident_id = ?",incident.Id).First(&qryIncident)
			c.JSON(http.StatusOK,qryIncident)
		} else {
			respond(http.StatusBadRequest,res.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
}


func (handler IncidentsHandler) GetAllForReviewsReports(c *gin.Context) {
	incidents := []m.QryIncidentReports{}
	var query = handler.db

	startParam,startParamExist := c.GetQuery("start")
	limitParam,limitParamExist := c.GetQuery("limit")
	typeParam,typeParamExist := c.GetQuery("incident_type")
	reportedByParam,reportedByParamExist := c.GetQuery("reported_by")

	//start param exist
	if startParamExist {
		start,_ := strconv.Atoi(startParam)
		if start != 0 {
			query = query.Offset(start)				
		}
	} 

	//limit param exist
	if limitParamExist {
		limit,_ := strconv.Atoi(limitParam)
		query = query.Limit(limit)
	} else {
		query = query.Limit(10)
	}

	//type param exist
	if typeParamExist {
		query = query.Where("incident_type = ?",typeParam)
	} 

	//reported by param exist
	if reportedByParamExist {
		query = query.Where("reporter_id = ?",reportedByParam)
	}

	query = query.Where("report_status = ?","for review")

	query.Order("created_at desc").Find(&incidents)
	c.JSON(http.StatusOK,incidents)
	return
}

func (handler IncidentsHandler) DisapproveMaliciousReport(c *gin.Context) {
	incident_id := c.Param("incident_id")
	incidentReport := m.IncidentReport{}
	qry := handler.db.Where("incident_id = ?",incident_id).Delete(&incidentReport)
	
	if qry.Error == nil {
		res := handler.db.Unscoped().Delete(&incidentReport)
		if (res.Error == nil) {
			respond(http.StatusOK,"Malicious report successfully disapproved",c,true)
		} else {
			respond(http.StatusBadRequest,res.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
	return
}

func (handler IncidentsHandler) GetForReviewReportById(c *gin.Context) {
	incident_id := c.Param("incident_id")
	incident := m.QryIncidentReports{}

	qry := handler.db.Where("incident_id = ?",incident_id).First(&incident)
	if qry.RowsAffected > 0 {
		c.JSON(http.StatusOK, incident)
	} else {
		respond(http.StatusBadRequest,qry.Error.Error(),c,true)
	}
	return
}

