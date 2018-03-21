package handlers

import (
	"net/http"
    "strings"
    "strconv"
    "net/smtp"
    "log"
    "math/rand"
    "time"
    "fmt"

	"github.com/gin-gonic/gin"
	"github.com/jinzhu/gorm"
	m "profile/sanmateo/api/models"
	"profile/sanmateo/api/config"
	"github.com/dgrijalva/jwt-go"
)

type UserHandler struct {
	db *gorm.DB
}

func NewUserHandler(db *gorm.DB) *UserHandler {
	return &UserHandler{db}
}

//get all users
func (handler UserHandler) Index(c *gin.Context) {
	users := []m.User{}
	var query = handler.db

	userLevelParam,userLevelParamExist := c.GetQuery("user_level")
	startParam,startParamExist := c.GetQuery("start")
	limitParam,limitParamExist := c.GetQuery("limit")

	// user level param exist
	if userLevelParamExist {
		query = query.Where("user_level = ?", userLevelParam)
	} 

	//start param exist
	if startParamExist {
		start,_ := strconv.Atoi(startParam)
		if start != 0 {
			query = query.Offset(start)				
		} else {
			query = query.Offset(0)
		}
	} 

	//limit param exist
	if limitParamExist {
		limit,_ := strconv.Atoi(limitParam)
		query = query.Limit(limit)
	} else {
		query = query.Limit(10)
	}

	query.Find(&users)
	c.JSON(http.StatusOK,users)
	return
}

func (handler UserHandler) Count(c *gin.Context) {
	users := []m.User{}
	var query = handler.db

	userLevelParam,userLevelParamExist := c.GetQuery("user_level")
	startParam,startParamExist := c.GetQuery("start")
	limitParam,limitParamExist := c.GetQuery("limit")

	// user level param exist
	if userLevelParamExist {
		query = query.Where("user_level = ?", userLevelParam)
	} 

	//start param exist
	if startParamExist {
		start,_ := strconv.Atoi(startParam)
		if start != 0 {
			query = query.Offset(start)				
		} else {
			query = query.Offset(0)
		}
	} 

	//limit param exist
	if limitParamExist {
		limit,_ := strconv.Atoi(limitParam)
		query = query.Limit(limit)
	} else {
		query = query.Limit(10)
	}
	
	count := 0;
	query.Find(&users).Count(&count)

	c.JSON(http.StatusOK, &TotalCount{Count: count})
}

func (handler UserHandler) Update(c *gin.Context) {
	id := c.Param("id")
	user := m.User{}
	qry := handler.db.Where("id = ? AND status = ?",id,"active").First(&user)
	if qry.RowsAffected > 0 {
		//update first name
		if (len(c.PostForm("first_name")) > 0) {
			user.FirstName = c.PostForm("first_name")
		}
		//update last name
		if (len(c.PostForm("last_name")) > 0) {
			user.LastName = c.PostForm("last_name")
		}
		//update email
		if (len(c.PostForm("email")) > 0) {
			user.Email = c.PostForm("email")
		}
		//update address
		if (len(c.PostForm("background")) > 0) {
			user.Address = c.PostForm("address")
		}
		//update contact no
		if (len(c.PostForm("contact_no")) > 0) {
			user.ContactNo = c.PostForm("contact_no")
		}
		//update user lvel
		if (len(c.PostForm("user_level")) > 0) {
			user.UserLevel = c.PostForm("user_level")
		}
		// update gender
		if (len(c.PostForm("gender")) > 0) {
			user.Gender = c.PostForm("gender")
		}
		result := handler.db.Save(&user)
		if result.RowsAffected > 0 {
			c.JSON(http.StatusOK, user)
		} else {
			respond(http.StatusBadRequest,result.Error.Error(),c,true)	
		}
	} else {
		respond(http.StatusBadRequest,"User record not found!",c,true)
	}
	return
}

//create new user
func (handler UserHandler) Create(c *gin.Context) {
	var user m.User
	err := c.Bind(&user)
	if err == nil {
		existingUser := m.User{}
		if handler.db.Where("email = ?",user.Email).First(&existingUser).RowsAffected < 1 {
			encryptedPassword := encrypt([]byte(config.GetString("CRYPT_KEY")), user.Password)
			user.Password = encryptedPassword
			result := handler.db.Create(&user)
			if result.RowsAffected > 0 {
				authenticatedUser := m.AuthenticatedUser{}
				authenticatedUser.Id = user.Id
				authenticatedUser.FirstName = user.FirstName
				authenticatedUser.ContactNo = user.ContactNo
				authenticatedUser.LastName = user.LastName
				authenticatedUser.Status = user.Status
				authenticatedUser.Email = user.Email
				authenticatedUser.Address = user.Address
				authenticatedUser.UserLevel = user.UserLevel
				authenticatedUser.CreatedAt = user.CreatedAt
				authenticatedUser.UpdatedAt = user.UpdatedAt
				authenticatedUser.Gender = user.Gender
				authenticatedUser.PicUrl = user.PicUrl
				authenticatedUser.Token = generateJWT(user.Email)
				c.JSON(http.StatusCreated, authenticatedUser)
			} else {
				respond(http.StatusBadRequest,result.Error.Error(),c,true)
			}
		} else {
			respond(http.StatusBadRequest,"Email already taken",c,true)	
		}
	} else {
		respond(http.StatusBadRequest,err.Error(),c,true)
	}
	return
}

//create new user
func (handler UserHandler) CreateSuperAdmin(c *gin.Context) {
	var user m.User
	err := c.Bind(&user)
	if err == nil {
		//check for existing email
		existingUser := m.User{}
		existingUserQuery := handler.db.Where("email = ?", user.Email).First(&existingUser)
		if existingUserQuery.RowsAffected > 0 {
			respond(http.StatusBadRequest, "Email already taken!", c, true)
		} else {
			encryptedPassword := encrypt([]byte(config.GetString("CRYPT_KEY")), user.Password)
			user.Password = encryptedPassword
			user.UserLevel = "Super Admin"
			saveResult := handler.db.Save(&user)
			if saveResult.RowsAffected > 0 {
				//authentication successful
				token := &JWT{Token: generateJWT(user.Email)}
				c.JSON(http.StatusCreated, token)
			} else {
				respond(http.StatusBadRequest, saveResult.Error.Error(), c, true)
			}
		}
	} else {
		respond(http.StatusBadRequest, err.Error(), c, true)
	}
}

//user authentication
func (handler UserHandler) Auth(c *gin.Context) {
	email := c.PostForm("email")
	password := c.PostForm("password")

	if (strings.TrimSpace(email) == "") {
		respond(http.StatusBadRequest,"Email is required",c,true)
	} else if (strings.TrimSpace(password) == "") {
		respond(http.StatusBadRequest,"Password is required",c,true)
	} else {
		//check if email already existing
		user := m.User{}	
		query := handler.db.Where("email = ?",email).Find(&user)

		if query.RowsAffected < 1 {
			respond(http.StatusBadRequest,"Account not found!",c,true)
		} else {
			decryptedPassword := decrypt([]byte(config.GetString("CRYPT_KEY")), user.Password)
			//invalid password
			fmt.Printf("\n decrypted password --> %s", decryptedPassword)
			fmt.Printf("\n password param --> %s", password)
			if decryptedPassword != password {
				respond(http.StatusBadRequest,"Invalid account!",c,true)
			} else {
				if (user.Status == "blocked") {
					respond(http.StatusForbidden, "You're account is currently blocked. Please contact the administration on this number (+044) 706-7920", c ,false)
				} else {
					//authentication successful
					authenticatedUser := m.AuthenticatedUser{}
					authenticatedUser.Id = user.Id
					authenticatedUser.ContactNo = user.ContactNo
					authenticatedUser.FirstName = user.FirstName
					authenticatedUser.LastName = user.LastName
					authenticatedUser.Status = user.Status
					authenticatedUser.Email = user.Email
					authenticatedUser.Address = user.Address
					authenticatedUser.UserLevel = user.UserLevel
					authenticatedUser.CreatedAt = user.CreatedAt
					authenticatedUser.UpdatedAt = user.UpdatedAt
					authenticatedUser.Gender = user.Gender
					authenticatedUser.PicUrl = user.PicUrl
					authenticatedUser.Token = generateJWT(email)
					c.JSON(http.StatusOK, authenticatedUser)
				}
			}					
		}
	}
}

func (handler UserHandler) ChangePassword (c *gin.Context) {
	email := c.PostForm("email")
	oldPassword := c.PostForm("old_password")
	newPassword := c.PostForm("new_password")
	user := m.User{}
	query := handler.db.Where("email = ?",email).Find(&user)
	
	if query.RowsAffected > 0 {
		decryptedPassword := decrypt([]byte(config.GetString("CRYPT_KEY")), user.Password)
		if decryptedPassword == oldPassword {
 			encryptedPassword := encrypt([]byte(config.GetString("CRYPT_KEY")), newPassword)
			user.Password = encryptedPassword
			result := handler.db.Save(&user)
			if result.RowsAffected > 0 {
				respond(http.StatusOK,"Password successfully changed!",c,false)
			} else {
				respond(http.StatusBadRequest,"Unable to change password",c,true)
			}
		} else {
			respond(http.StatusBadRequest,"Invalid old password",c,true)
		}
	} else {
		respond(http.StatusBadRequest,"User not found!",c,true)
	}
	return
}

func (handler UserHandler) ChangeProfilePic(c *gin.Context) {
	user_id,_ := strconv.Atoi(c.PostForm("user_id"))
	
	user := m.User{}	
	qry := handler.db.Where("id = ?",user_id).First(&user)
	if qry.RowsAffected > 0 {
		user.PicUrl = c.PostForm("new_pic_url")
		res := handler.db.Save(&user)
		if res.RowsAffected > 0 {
			respond(http.StatusOK,user.PicUrl,c,false)
		} else {
			respond(http.StatusBadRequest,res.Error.Error(),c,true)	
		}
	} else {
		respond(http.StatusBadRequest,"User not found!",c,true)
	}
	return
}

func (handler UserHandler) GetUserById(c *gin.Context) {
	user_id := c.Param("user_id")
	user := m.User{}	
	res := handler.db.Where("id = ?",user_id).First(&user)
	if res.RowsAffected > 0 {
		c.JSON(http.StatusOK,user)
	} else {
		respond(http.StatusBadRequest,"User not found!",c,true)
	}
	return
}

func (handler UserHandler) ForgotPassword(c *gin.Context) {
	email := c.PostForm("email")
	user := m.User{}
	qry := handler.db.Where("email = ?", email).First(&user)

	if qry.RowsAffected > 0 {
		from := "1sanmateo.app@gmail.com"
		pass := "sanmateo851troy"

		newPassword := RandomString(12)

  		msg := "From: " + from + "\r\n" +
           	"To: " + user.Email + "\r\n" + 
           	"MIME-Version: 1.0" +  "\r\n" +
           	"Content-type: text/html" + "\r\n" +
   			"Subject: Forgot Password Request" + "\r\n\r\n" +
			"Your new password <b>" + newPassword + "</b>. Please be sure that you'll change your password immediately." + "\r\n\r\n"

		err := smtp.SendMail("smtp.gmail.com:587",
			smtp.PlainAuth("", from, pass, "smtp.gmail.com"),
			from, []string{user.Email}, []byte(msg))

		if err != nil {
			log.Printf("smtp error: %s", err)
			return
		} else {
			encryptedPassword := encrypt([]byte(config.GetString("CRYPT_KEY")), newPassword)
			user.Password = encryptedPassword
			updateResult := handler.db.Save(&user)
			if updateResult.RowsAffected > 0 {
				respond(http.StatusOK, "Your new password was successfully sent to your email",c,false)
			} else {
				respond(http.StatusBadRequest, updateResult.Error.Error(),c,true)
			}
		}
	} else {
		respond(http.StatusBadRequest, "User record not found!",c,true)
	}
	return
}

func (handler UserHandler) GetUserInfo(c *gin.Context) {
	if c.Request.Header.Get("Authorization") != "" {
		tokenString := c.Request.Header.Get("Authorization")
		token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		    return []byte(config.GetString("TOKEN_KEY")), nil
		})
		if err != nil || !token.Valid {
			respond(http.StatusUnauthorized, err.Error(), c, true)
		} else {
			claims, _ := token.Claims.(jwt.MapClaims)
			user := m.User{}
			res := handler.db.Where("email = ?", claims["iss"]).First(&user)
			if res.RowsAffected > 0 {
				c.JSON(http.StatusOK, user)
			} else {
				respond(http.StatusUnauthorized, "User record not found", c, true)
			}
		}
	}
	return
}

func (handler UserHandler) BlockUser(c *gin.Context) {
	id := c.Param("id")
	user := m.User{}
	qry := handler.db.Where("id = ?",id).First(&user)
	
	if qry.RowsAffected > 0 {
		user.Status = "blocked"
		updateResult := handler.db.Save(&user)
		if (updateResult.RowsAffected > 0) {
			respond(http.StatusOK, "User successfully blocked.", c, false)
		} else {
			respond(http.StatusBadRequest, updateResult.Error.Error(), c, true)
		}
	} else {
		respond(http.StatusNotFound, "User record not found.", c, true)
	}
}

func (handler UserHandler) UnblockUser(c *gin.Context) {
	id := c.Param("id")
	user := m.User{}
	qry := handler.db.Where("id = ?",id).First(&user)
	
	if qry.RowsAffected > 0 {
		user.Status = "active"
		updateResult := handler.db.Save(&user)
		if (updateResult.RowsAffected > 0) {
			respond(http.StatusOK, "User successfully unblocked.", c, false)
		} else {
			respond(http.StatusBadRequest, updateResult.Error.Error(), c, true)
		}
	} else {
		respond(http.StatusNotFound, "User record not found.", c, true)
	}
}

func RandomString(strlen int) string {
	rand.Seed(time.Now().UTC().UnixNano())
	const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
	result := make([]byte, strlen)
	for i := 0; i < strlen; i++ {
		result[i] = chars[rand.Intn(len(chars))]
	}
	return string(result)
}

type JWT struct {
	Token string `json:"token"`
}

type Pagination struct {
	Max	int `json:"max"`
	Offset int `json:"offset"`
}

func CreatePagination(m int, o int) *Pagination {
	paginationObject := &Pagination{Max: m, Offset: o}
	return paginationObject
}