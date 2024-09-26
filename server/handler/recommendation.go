package handler

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

// (GET /recommendations/today)
func (h *Handler) GetRecommendationsToday(ctx echo.Context) error {
	// TODO: 今日のおすすめを取得する
	return ctx.JSON(http.StatusInternalServerError, "Not implemented")
}
