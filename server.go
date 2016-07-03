package main

import (
	"os"
	"fmt"
	"log"

	"github.com/gin-gonic/gin"
	_ "github.com/go-sql-driver/mysql"
	h "profile/sanmateo/api/handlers"
	m "profile/sanmateo/api/models"
	"profile/sanmateo/api/config"
	"github.com/jinzhu/gorm"
	"github.com/dgrijalva/jwt-go"
	"github.com/pusher/pusher-http-go"
)

func main() {
	pusher := *InitPusher()
	db := *InitDB()
	router := gin.Default()
	LoadAPIRoutes(router, &db, &pusher)
}

func LoadAPIRoutes(r *gin.Engine, db *gorm.DB, pusher *pusher.Client) {
	public := r.Group("/api/v1")
	private := r.Group("/api/v1")
	private.Use(Auth(config.GetString("TOKEN_KEY")))

	//manage users
	userHandler := h.NewUserHandler(db)
	public.POST("/user", userHandler.Create)
	public.POST("/login", userHandler.Auth)
	private.GET("/users", userHandler.Index)

	//manage news
	newsHandler := h.NewNewsHandler(db,pusher)
	private.GET("/news", newsHandler.Index)
	private.POST("/news", newsHandler.Create)

	//manage gallery
	galleryHandler := h.NewGalleryHandler(db)
	private.POST("/gallery", galleryHandler.Create)
	private.GET("/galleries", galleryHandler.Index)

	//manage incidents
	incidentsHandler := h.NewIncidentsHandler(db,pusher)
	private.GET("/incidents", incidentsHandler.Index)
	private.POST("/incident", incidentsHandler.Create)
	private.GET("/incidents/show/:incident_id", incidentsHandler.Show)
	private.GET("/incidents/latest/:incident_id", incidentsHandler.GetNewIncidents)

	//manage incident reporting
	incidentReportsHandler := h.NewIncidentReportHandler(db,pusher)
	private.POST("/report", incidentReportsHandler.Create)

	var port = os.Getenv("PORT")
	if port == "" {
		port = "9000"
	}
	fmt.Println("PORT ---> ",port)
	r.Run(fmt.Sprintf(":%s", port))
}

func Auth(secret string) gin.HandlerFunc {
	return func(c *gin.Context) {
		tokenString := c.Request.Header.Get("Authorization")

		token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		    return []byte(config.GetString("TOKEN_KEY")), nil
		})

		if err != nil || !token.Valid {
		    c.AbortWithError(401, err)
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
	_db.LogMode(true)
	_db.Set("gorm:table_options", "ENGINE=InnoDB").AutoMigrate(&m.User{},&m.News{},&m.Gallery{},
																&m.Incident{},&m.IncidentReport{})
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
        port = "8000"
        fmt.Println("INFO: No PORT environment variable detected, defaulting to " + port)
    }
    fmt.Println("port -----> ", port)
    return ":" + port
}