package main

import (
	"errors"
	"log"
	"os"
	"strconv"
	"strings"

	"github.com/mermer2024/mercari2024LLM_A/api"
	"github.com/mermer2024/mercari2024LLM_A/handler"
	"github.com/mermer2024/mercari2024LLM_A/migration"
	"github.com/mermer2024/mercari2024LLM_A/model"
	"github.com/mermer2024/mercari2024LLM_A/openaiclient"

	"github.com/jmoiron/sqlx"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"github.com/sashabaranov/go-openai"
)

func main() {
	e := echo.New()

	allowOrigins := strings.Split(os.Getenv("ALLOW_ORIGINS"), ",")

	// middlewares
	e.Use(middleware.Recover())
	e.Use(middleware.Logger())
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins: allowOrigins,
	}))

	dev, err := strconv.ParseBool(os.Getenv("DEVELOPMENT"))
	if err != nil {
		dev = false
	}
	log.Println("development mode:", dev)

	// connect to database
	db, err := sqlx.Connect("mysql", model.MySQL().FormatDSN())
	if err != nil {
		e.Logger.Fatal(err)
	}
	defer db.Close()

	// migrate tables
	if err := migration.MigrateTables(db.DB); err != nil {
		e.Logger.Fatal(err)
	}

	// setup repository
	repo := model.New(db)

	token, ok := os.LookupEnv("OPENAI_API_KEY")
	if !ok {
		e.Logger.Fatal(errors.New("OPENAI_API_KEY is not set"))
	}

	apiClient := openai.NewClient(token)

	openaiClient := openaiclient.New(apiClient)

	// setup routes
	h := handler.New(repo, openaiClient)

	api.RegisterHandlersWithBaseURL(e, h, "/api")

	e.Logger.Fatal(e.Start(":8080"))
}
