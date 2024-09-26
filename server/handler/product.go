package handler

import (
	"github.com/labstack/echo/v4"
	"github.com/mermer2024/mercari2024LLM_A/api"
)

// (POST /shops/{shopId}/products)
func (h *Handler) PostShopsShopIdProducts(ctx echo.Context, shopId string) error {
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
