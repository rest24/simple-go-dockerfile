package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.GET("/hello",Hello)
	router.Run(":8088")
}

func Hello(c *gin.Context)  {
	c.String(http.StatusOK, "Hello, ini adalah project pertama golang menggunakan gin")
}