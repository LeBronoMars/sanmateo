package models

type WaterLevel struct {
	BaseModel
	Level float64 `json:"water_level" form:"water_level" binding:"required"`
	Alert string `json:"alert"`
}

func (w *WaterLevel) BeforeCreate() (err error) {
	if w.Level <= 18 {
		w.Alert = "Alert"
	} else if w.Level >= 18.01 && w.Level <= 19.00 {
		w.Alert = "Alarm"
	} else if w.Level >= 19.01 {
		w.Alert = "Critical"
	}
	return
}