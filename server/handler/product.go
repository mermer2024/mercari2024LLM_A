package handler

import (
	"net/http"
	"time"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"

	"github.com/mermer2024/mercari2024LLM_A/api"
	"github.com/mermer2024/mercari2024LLM_A/model"
)

// (POST /shops/{shopId}/products)
func (h *Handler) PostShopsShopIdProducts(ctx echo.Context, shopId string) error {
	var req api.PostShopsShopIdProductsJSONRequestBody
	if err := ctx.Bind(&req); err != nil {
		return err
	}
	if len(req.Products) == 0 {
		return ctx.JSON(http.StatusBadRequest, map[string]string{"error": "Product name is required"})
	}

	shopIdUUID, err := uuid.Parse(shopId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	var products []model.Product

	for _, product := range req.Products {
		products = append(products, model.Product{
			ID:          uuid.New(),
			ShopID:      shopIdUUID,
			Name:        product.Name,
			Description: *product.Description,
			Price:       product.Price,
			CreatedAt:   time.Now(),
		})
	}

	err = h.repo.BulkCreateProducts(products)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	// TODO:shopのdescriptionを変更する。

	return ctx.JSON(http.StatusOK, nil)
}

// (POST /shops/{shopId}/products/{productId}/caption)
func (h *Handler) PostShopsShopIdProductsProductIdCaption(ctx echo.Context, shopId string, productId string) error {
	// TODO: caption生成
	// h.repo.EditProductCaption()
	return ctx.JSON(http.StatusInternalServerError, "Not implemented")
}

// (POST /shops/{shopId}/products/{productId}/sold_out)
func (h *Handler) PostShopsShopIdProductsProductIdSoldOut(ctx echo.Context, shopId string, productId string) error {
	// parse shopid
	// shopIdUUID, err := uuid.Parse(shopId)
	_, err := uuid.Parse(shopId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}
	// parse productid
	// productIdUUID, err := uuid.Parse(productId)
	_, err = uuid.Parse(productId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}
	return ctx.JSON(http.StatusInternalServerError, "Not implemented")
}

// (GET /shops/{shopId}/search_products)
func (h *Handler) GetShopsShopIdSearchProducts(ctx echo.Context, shopId string, params api.GetShopsShopIdSearchProductsParams) error {
	// parse shopid
	shopIdUUID, err := uuid.Parse(shopId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	// search products
	products, err := h.repo.GetProductsByShopID(shopIdUUID)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	var resProducts api.ProductList
	for _, product := range products {
		resProducts = append(resProducts, api.Product{
			Id:          product.ID.String(),
			Name:        product.Name,
			Description: &product.Description,
			Price:       product.Price,
			Stock:       product.Stock,
			ImageUrl:    &product.ImageURL,
		})
	}
	return ctx.JSON(http.StatusOK, resProducts)
}
