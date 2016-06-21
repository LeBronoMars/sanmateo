package config

import (
	"fmt"
	"log"
	"os"

	"github.com/spf13/viper"
)

func init() {
	log.Println("Initializing configs")
	env := os.Getenv("ENV")
	if env == "" {
		env = "dev"
	}

	viper.AutomaticEnv()
	viper.SetConfigName(env)
	viper.AddConfigPath("./config")
	err := viper.ReadInConfig()
	if err != nil {
		log.Print(fmt.Errorf("Fatal error config file: %s \n", err))
	}
}

// GetString returns config values
func GetString(key string) string {
	return viper.GetString(key)
}

func GetStringMap(key string) map[string]interface{} {
	return viper.GetStringMap(key)
}
