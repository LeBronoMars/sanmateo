package models

import "time"

type AuthenticatedUser struct {
	Id int `json:"id"`
	FirstName  string `json:"first_name"`
	LastName  string `json:"last_name"`	
	Status string `json:"status"`
	UserLevel string `json:"user_level"`
	Email string `json:"email"`
	Address string `json:"address"`
	IsPasswordDefault bool `json:"is_password_default"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
	Gender string `json:"gender"`
	Token string `json:"token"`
}