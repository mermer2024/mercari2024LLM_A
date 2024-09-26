package handler

import (
	"github.com/labstack/echo/v4"
	"github.com/mermer2024/mercari2024LLM_A/api"
)

// (GET /search_shops)
func (h *Handler) GetSearchShops(ctx echo.Context, params api.GetSearchShopsParams) error {
	return nil
}

// (POST /shops)
func (h *Handler) PostShops(ctx echo.Context) error {
	return nil
}

// (PUT /shops/{shopId})
func (h *Handler) PutShopsShopId(ctx echo.Context, shopId string) error {
	return nil
}
