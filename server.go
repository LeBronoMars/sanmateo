package main

import (
	"os"
	"fmt"
	"log"
	"time"
	"net/http"

	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
	h "profile/sanmateo/api/handlers"
	m "profile/sanmateo/api/models"
	"profile/sanmateo/api/config"
	"github.com/jinzhu/gorm"
	"github.com/dgrijalva/jwt-go"
	"github.com/pusher/pusher-http-go"
	"github.com/itsjamie/gin-cors"
)


func main() {
	pusher := *InitPusher()
	db := *InitDB()
	router := gin.Default()
	config := cors.Config {
		Origins:         "*",
		RequestHeaders:  "Authorization",
		Methods:         "GET, POST, PUT, DELETE",
		Credentials:     true,
		ValidateHeaders: false,
		MaxAge:          24 * time.Hour,
	}
	router.Use(cors.Middleware(config))
	LoadAPIRoutes(router, &db, &pusher)
}

type Response struct {
	Message string `json:"message"`
}


func LoadAPIRoutes(r *gin.Engine, db *gorm.DB, pusher *pusher.Client) {
	public := r.Group("/api/v1")
	private := r.Group("/api/v1")
	private.Use(Auth(config.GetString("TOKEN_KEY"), db))

	//manage users
	userHandler := h.NewUserHandler(db)
	public.POST("/user", userHandler.Create)
	public.POST("/register/super", userHandler.CreateSuperAdmin)
	public.POST("/login", userHandler.Auth)
	private.GET("/users", userHandler.Index)
	private.PUT("/change_password", userHandler.ChangePassword)
	private.PUT("/change_profile_pic", userHandler.ChangeProfilePic)
	private.GET("/users/:user_id", userHandler.GetUserById)
	private.GET("/me", userHandler.GetUserInfo)
	public.POST("/forgot_password", userHandler.ForgotPassword)
	private.PUT("/users/:id/block", userHandler.BlockUser)
	private.PUT("/users/:id/unblock", userHandler.UnblockUser)
	private.PUT("/users/:id", userHandler.Update)

	//manage news
	newsHandler := h.NewNewsHandler(db,pusher)
	private.GET("/news", newsHandler.Index)
	private.POST("/news", newsHandler.Create)
	private.GET("/news/:id", newsHandler.GetNewsById)
	private.PUT("/news/:id", newsHandler.Update)
	private.DELETE("/news/:id", newsHandler.Delete)

	//manage gallery
	galleryHandler := h.NewGalleryHandler(db)
	private.POST("/gallery", galleryHandler.Create)
	private.GET("/galleries", galleryHandler.Index)
	private.PUT("/galleries/:id", galleryHandler.UpdateGallery)
	private.DELETE("/galleries/:id", galleryHandler.Delete)

	//manage incidents
	incidentsHandler := h.NewIncidentsHandler(db,pusher)
	private.GET("/incidents", incidentsHandler.Index)
	private.POST("/incident", incidentsHandler.Create)
	private.GET("/incidents/show/:incident_id", incidentsHandler.Show)
	private.GET("/incidents/latest/:incident_id", incidentsHandler.GetNewIncidents)
	private.PUT("/incidents/block/:incident_id", incidentsHandler.BlockIncidentReport)
	private.PUT("/incidents/approve/:incident_id", incidentsHandler.ApproveIncidentReport)
	private.PUT("/incidents/unblock/:incident_id", incidentsHandler.UnblockIncidentReport)
	private.GET("/incidents/for_reviews", incidentsHandler.GetAllForReviewsReports)
	private.DELETE("/incidents/disapprove/:incident_id", incidentsHandler.DisapproveMaliciousReport)
	private.GET("/incidents/for_reviews/:incident_id", incidentsHandler.GetForReviewReportById)

	//manage incident reporting
	incidentReportsHandler := h.NewIncidentReportHandler(db,pusher)
	private.POST("/report", incidentReportsHandler.Create)
	private.GET("/report/pending_reviews", incidentReportsHandler.GetPendingReviews)

	//manage announcements
	announcementHandler := h.NewAnnouncementHandler(db,pusher)
	private.GET("/announcements", announcementHandler.Index)
	private.POST("/announcements", announcementHandler.Create)
	private.GET("/announcements/show/:id", announcementHandler.GetAnnouncementById)
	private.GET("/announcements/latest/:id", announcementHandler.GetNewAnnouncements)
	private.DELETE("/announcements/:id", announcementHandler.Delete)

	//manage water level monitoring
	waterLevelHandler := h.NewWaterLevelHandler(db,pusher)
	private.GET("/water_level", waterLevelHandler.Index)
	private.POST("/water_level", waterLevelHandler.Create)
	private.GET("/water_level/latest/:id", waterLevelHandler.GetNewWaterLevelNotifications)
	private.GET("/water_level/filter", waterLevelHandler.GetWaterLevelByArea)
	private.DELETE("/water_level/:id", waterLevelHandler.Delete)

	//manage official
	officialHandler := h.NewOfficialHandler(db,pusher)
	private.GET("/officials", officialHandler.Index)
	private.POST("/official", officialHandler.Create)
	private.PUT("/officials/:id", officialHandler.UpdateOfficialRecord)
	private.DELETE("/officials/:id", officialHandler.Delete)
	r.Run(fmt.Sprintf(":%s", "7070"))
}

func Auth(secret string, db *gorm.DB) gin.HandlerFunc {
	return func(c *gin.Context) {
		if c.Request.Header.Get("Authorization") != "" {
		
			tokenString := c.Request.Header.Get("Authorization")

			token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
			    return []byte(secret), nil
			})

			if err != nil || !token.Valid {
				response := &Response{Message: err.Error()}
				c.JSON(http.StatusUnauthorized, response)
				c.Abort()
			} else {
				claims, _ := token.Claims.(jwt.MapClaims)
				email := fmt.Sprintf("%s", claims["iss"])

				user := m.User{}	
				res := db.Where("email = ?", email).First(&user)
				if res.RowsAffected > 0 {
					if user.Status == "blocked" {
						response := &Response{Message: "You're account is currently blocked. Please contact the administration on this number (+044) 706-7920"}
						c.JSON(http.StatusUnauthorized, response)
						c.Abort();
					}
				} else {
					c.Next();
				}
			}
		} else {
			response := &Response{Message: "Authorization is required"}
			c.JSON(http.StatusUnauthorized, response)
			c.Abort()
		}
	}
}


func InitDB() *gorm.DB {
	dbURL := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8&parseTime=True&loc=Local",
		config.GetString("DB_USER"), config.GetString("DB_PASS"),
		config.GetString("DB_HOST"), config.GetString("DB_PORT"),
		config.GetString("DB_NAME"))
	log.Printf("\nDatabase URL: %s\n", dbURL)

	_db, err := gorm.Open("mysql", dbURL)
	if err != nil {
		panic(fmt.Sprintf("Error connecting to the database:  %s", err))
	}
	_db.DB()
	_db.LogMode(false)
	_db.Set("gorm:table_options", "ENGINE=InnoDB").AutoMigrate(&m.User{},&m.News{},&m.Gallery{},&m.Incident{},
																&m.IncidentReport{},&m.Notification{},
																&m.Announcement{},&m.WaterLevel{},&m.Official{})
	return &_db
}

func InitPusher() *pusher.Client {
    client := pusher.Client{
      AppId: config.GetString("PUSHER_APP_ID"),
      Key: config.GetString("PUSHER_APP_KEY"),
      Secret: config.GetString("PUSHER_APP_SECRET"),
      Cluster: config.GetString("PUSHER_CLUSTER"),
    }
    return &client
}

func GetPort() string {
    var port = os.Getenv("PORT")
    // Set a default port if there is nothing in the environment
    if port == "" {
        port = "9000"
        fmt.Println("INFO: No PORT environment variable detected, defaulting to " + port)
    }
    fmt.Println("port -----> ", port)
    return ":" + port
}