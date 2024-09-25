package handler

import (
	"github.com/labstack/echo/v4"
	"github.com/mermer2024/mercari2024LLM_A/api"
)

// (POST /match_shops)
func (h *Handler) PostMatchShops(ctx echo.Context) error {
	return nil
}

// (GET /recommendations/today)
func (h *Handler) GetRecommendationsToday(ctx echo.Context) error {
	return nil
}

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

// (POST /shops/{shopId}/follow)
func (h *Handler) PostShopsShopIdFollow(ctx echo.Context, shopId string) error {
	return nil
}

// (POST /shops/{shopId}/products/{productId}/caption)
func (h *Handler) PostShopsShopIdProductsProductIdCaption(ctx echo.Context, shopId string, productId string) error {
	return nil
}

// (POST /shops/{shopId}/products/{productId}/sold_out)
func (h *Handler) PostShopsShopIdProductsProductIdSoldOut(ctx echo.Context, shopId string, productId string) error {
	return nil
}

// (GET /shops/{shopId}/search_products)
func (h *Handler) GetShopsShopIdSearchProducts(ctx echo.Context, shopId string, params api.GetShopsShopIdSearchProductsParams) error {
	return nil
}

// (DELETE /shops/{shopId}/unfollow)
func (h *Handler) DeleteShopsShopIdUnfollow(ctx echo.Context, shopId string, params api.DeleteShopsShopIdUnfollowParams) error {
	return nil
}
