package handlers

import (
	"net/http"
	"strconv"

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
	if IsTokenValid(c) {
		incidents := []m.QryIncident{}
		var query = handler.db

		startParam,startParamExist := c.GetQuery("start")
		limitParam,limitParamExist := c.GetQuery("limit")
		typeParam,typeParamExist := c.GetQuery("incident_type")
		statusParam,statusParamExist := c.GetQuery("status")
		reportedByParam,reportedByParamExist := c.GetQuery("reported_by")

		//start param exist
		if startParamExist {
			start,_ := strconv.Atoi(startParam)
			query = query.Offset(start)
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

		query.Find(&incidents)
		c.JSON(http.StatusOK,incidents)
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}

func (handler IncidentsHandler) Create(c *gin.Context) {
	if IsTokenValid(c) {
		var incident m.Incident
		err := c.Bind(&incident)
		if err == nil {	
			result := handler.db.Create(&incident)
			if result.RowsAffected > 0 {
				qry_incident := m.QryIncident{}
				qry := handler.db.Where("incident_id = ? ", incident.Id).First(&qry_incident)
				if qry.RowsAffected > 0 {
					//send push to channel
					data := map[string]string{"action": "new incident", 
					"id": strconv.Itoa(qry_incident.IncidentId),"title":"New incident reported by " + qry_incident.ReporterName,
					"content": qry_incident.IncidentDescription}
					handler.pusher.Trigger("all","san_mateo_event",data)
					c.JSON(http.StatusCreated,qry_incident)
				}
			} else {
				respond(http.StatusBadRequest,result.Error.Error(),c,true)
			}
		} else {
			respond(http.StatusBadRequest,err.Error(),c,true)
		}
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
}

func (handler IncidentsHandler) Show(c *gin.Context) {
	if IsTokenValid(c) {
		incident_id := c.Param("incident_id")
		qry_incident := m.QryIncident{}
		qry := handler.db.Where("incident_id = ? AND status = ?",incident_id,"active").First(&qry_incident)
		if qry.RowsAffected > 0 {
			c.JSON(http.StatusCreated,qry_incident)
		} else {
			respond(http.StatusBadRequest,qry.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}

func (handler IncidentsHandler) GetNewIncidents(c *gin.Context) {
	if IsTokenValid(c) {
		incident_id := c.Param("incident_id")
		qry_incident := []m.QryIncident{}
		qry := handler.db.Where("incident_id >= ? AND status = ?",incident_id,"active").Find(&qry_incident)
		if qry.RowsAffected > 0 {
			c.JSON(http.StatusOK,qry_incident)
		} else {
			respond(http.StatusBadRequest,qry.Error.Error(),c,true)
		}
	} else {
		respond(http.StatusForbidden,"Sorry, but your session has expired!",c,true)	
	}
	return
}



