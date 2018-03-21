package models

import "strings"

type WaterLevel struct {
	BaseModel
	Area string `json:"area" form:"area" binding:"required"`
	Level float64 `json:"water_level" form:"water_level" binding:"required"`
	Alert string `json:"alert"`
}

func (w *WaterLevel) BeforeCreate() (err error) {

	if (strings.ToUpper(w.Area) == "MONTALBAN") {
		if w.Level <= 23.59 {
			w.Alert = "Alert"
		} else if w.Level >= 23.60 && w.Level <= 24.19 {
			w.Alert = "Alarm"
		} else if w.Level >= 24.20 {
			w.Alert = "Critical"
		}
	} else {
		if w.Level <= 18 {
			w.Alert = "Alert"
		} else if w.Level >= 18.01 && w.Level <= 19.00 {
			w.Alert = "Alarm"
		} else if w.Level >= 19.01 {
			w.Alert = "Critical"
		}		
	}
	return
}