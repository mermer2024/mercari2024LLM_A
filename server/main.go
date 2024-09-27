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
	log.Println("Starting server...")
	e := echo.New()

	allowOrigins := strings.Split(os.Getenv("ALLOW_ORIGINS"), ",")
	log.Println("Allow origins:", allowOrigins)

	// middlewares
	e.Use(middleware.Recover())
	e.Use(middleware.Logger())
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins: allowOrigins,
	}))

	log.Println("Starting server...2")

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

	log.Println("Connected to database")

	// migrate tables
	if err := migration.MigrateTables(db.DB); err != nil {
		e.Logger.Fatal(err)
	}

	log.Println("Connected to database")

	// setup repository
	repo := model.New(db)

	token, ok := os.LookupEnv("OPENAI_API_KEY")
	if !ok {
		e.Logger.Fatal(errors.New("OPENAI_API_KEY is not set"))
	}

	apiClient := openai.NewClient(token)

	openaiClient := openaiclient.New(apiClient)

	log.Println("openai client created")

	// setup routes
	h := handler.New(repo, openaiClient)

	api.RegisterHandlersWithBaseURL(e, h, "/api")

	log.Println("openai client registered")

	e.Logger.Fatal(e.Start(":8080"))
}
