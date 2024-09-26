package handler

import (
	"github.com/labstack/echo/v4"
	"github.com/mermer2024/mercari2024LLM_A/api"
)

// (POST /shops/{shopId}/follow)
func (h *Handler) PostShopsShopIdFollow(ctx echo.Context, shopId string) error {
	return nil
}

// (DELETE /shops/{shopId}/unfollow)
func (h *Handler) DeleteShopsShopIdUnfollow(ctx echo.Context, shopId string, params api.DeleteShopsShopIdUnfollowParams) error {
	return nil
}
