package handler

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func (h *Handler) GetPing(ctx echo.Context) error {
	return ctx.String(http.StatusOK, "pong")
}
