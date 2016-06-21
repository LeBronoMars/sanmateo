package handlers

import (
	"net/http"
	"fmt"
	"io"
	"time"
	"crypto/aes"	
    "crypto/cipher"
    "crypto/rand"
    "encoding/base64"

	"profile/sanmateo/api/config"
	"gopkg.in/redis.v3"
	"github.com/gin-gonic/gin"
	"github.com/dgrijalva/jwt-go"
)

func respond(statusCode int, responseMessage string, c *gin.Context, isError bool) {
	response := &Response{Message: responseMessage}
	c.JSON(statusCode,response)
}

func jwtVerifier() gin.HandlerFunc {
	return func(c *gin.Context) {

		appToken := c.Request.Header.Get("Authorization")

		if appToken == "" {
			respond(http.StatusForbidden, "Authorization header is required", c, true)
		} else {
			respond(http.StatusBadRequest, fmt.Sprintf("Invalid token: %s", appToken), c, true)
		}
	}
}

type Response struct {
	Message string `json:"message"`
}

//generate JWT
func generateJWT(username string) string {
	// Create the token
	//token := jwt_lib.New(jwt_lib.GetSigningMethod("HS256"))
	// Set some claims
	//token.Claims["ID"] = username
	//token.Claims["exp"] = time.Now().Add(time.Hour * 24).Unix()
	// Sign and get the complete encoded token as a string
	//tokenString, _ := token.SignedString([]byte(config.GetString("TOKEN_KEY")))
	mySigningKey := []byte(config.GetString("TOKEN_KEY"))
    claims := &jwt.StandardClaims{
    	ExpiresAt: time.Now().Add(time.Hour * 24).Unix(),
    	Issuer:    username,
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	tokenString,_ := token.SignedString(mySigningKey)
    return tokenString
}

//change timezone of date
func changeTimeZone(t time.Time) time.Time {
	loc,_ := time.LoadLocation("Asia/Manila")
	newTime,_ := time.ParseInLocation(time.RFC3339,t.Format(time.RFC3339),loc)
	return newTime
}

// encrypt string to base64 crypto using AES
func encrypt(key []byte, text string) string {
	// key := []byte(keyText)
	plaintext := []byte(text)

	block, err := aes.NewCipher(key)
	if err != nil {
		panic(err)
	}

	// The IV needs to be unique, but not secure. Therefore it's common to
	// include it at the beginning of the ciphertext.
	ciphertext := make([]byte, aes.BlockSize+len(plaintext))
	iv := ciphertext[:aes.BlockSize]
	if _, err := io.ReadFull(rand.Reader, iv); err != nil {
		panic(err)
	}

	stream := cipher.NewCFBEncrypter(block, iv)
	stream.XORKeyStream(ciphertext[aes.BlockSize:], plaintext)

	// convert to base64
	return base64.URLEncoding.EncodeToString(ciphertext)
}

// decrypt from base64 to decrypted string
func decrypt(key []byte, cryptoText string) string {
	ciphertext, _ := base64.URLEncoding.DecodeString(cryptoText)

	block, err := aes.NewCipher(key)
	if err != nil {
		panic(err)
	}

	// The IV needs to be unique, but not secure. Therefore it's common to
	// include it at the beginning of the ciphertext.
	if len(ciphertext) < aes.BlockSize {
		panic("ciphertext too short")
	}
	iv := ciphertext[:aes.BlockSize]
	ciphertext = ciphertext[aes.BlockSize:]

	stream := cipher.NewCFBDecrypter(block, iv)

	// XORKeyStream can work in-place if the two arguments are the same.
	stream.XORKeyStream(ciphertext, ciphertext)

	return fmt.Sprintf("%s", ciphertext)
}

func AddTokenToRedis(c *gin.Context) {
    client := redis.NewClient(&redis.Options{
        Addr:     ":6379",
        Password: "", // no password set
        DB:       0,  // use default DB
    })
    token := c.Request.Header.Get("Authorization")
    err := client.Set(token, token, time.Duration(86400)*time.Second).Err()
    if err != nil {
        panic(err)
    } else {
    	fmt.Println("Successfully written in redis")
    	result, err := client.Get(token).Result()
    	if (err == nil) {
    		fmt.Println("RESULT ---> " + result)
    	}
    }
    defer client.Close()
}

func IsTokenValid(c *gin.Context) bool {
    client := redis.NewClient(&redis.Options{
        Addr:     ":6379",
        Password: "", // no password set
        DB:       0,  // use default DB
    })
    defer client.Close()
    token := c.Request.Header.Get("Authorization")
    result, _ := client.Get(token).Result()
	if (result != "") {
		return false
	}
	return true
}