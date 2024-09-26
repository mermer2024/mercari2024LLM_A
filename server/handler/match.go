package handler

import (
	"net/http"

	"github.com/mermer2024/mercari2024LLM_A/api"

	"github.com/labstack/echo/v4"
)

// (POST /match_shops)
func (h *Handler) PostMatchShops(ctx echo.Context) error {
	var req api.PostMatchShopsJSONRequestBody
	if err := ctx.Bind(&req); err != nil {
		return err
	}
	if req.UserId == "" {
		return ctx.JSON(http.StatusBadRequest, map[string]string{"error": "User ID is required"})
	}

	// TODO:マッチングの作成
	// TODO: shopと購入履歴をLLMに投げる

	return nil
}
