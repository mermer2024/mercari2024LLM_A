package handler

import (
	"log"
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
		return ctx.JSON(http.StatusBadRequest, map[string]string{"error": "Invalid shop ID"})
	}
	log.Println("askfa")

	var products []model.Product

	for _, product := range req.Products {
		var description string
		if product.Description != nil {
			description = *product.Description
		} else {
			description = "No description provided" // デフォルト値を設定
		}

		var imageUrl string
		if product.ImageUrl != nil {
			imageUrl = *product.ImageUrl
		} else {
			imageUrl = "No image provided" // デフォルト値を設定
		}

		products = append(products, model.Product{
			ID:          uuid.New(),
			Name:        product.Name,
			Description: description,
			Price:       product.Price,
			Stock:       product.Stock,
			ImageURL:    imageUrl,
			CreatedAt:   time.Now(),
			UpdatedAt:   time.Now(),
		})
	}

	log.Println(products)

	err = h.repo.BulkCreateProductsWithShopId(products, shopIdUUID, uuid.New())
	if err != nil {
		log.Printf("failed to create products: %v", err)
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	productList, err := h.repo.GetProductListByShopID(shopIdUUID)
	if err != nil {
		log.Printf("failed to get product list: %v", err)
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	// TODO:shopのcaptionをLLMで変更する。
	text, err := h.client.ShopCaption(ctx.Request().Context(), productList)
	if err != nil {
		log.Printf("failed to get shop caption: %v", err)
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	log.Println(text)

	// shopのcaptionを更新
	err = h.repo.UpdateShopCaption(shopIdUUID, text)
	if err != nil {
		log.Printf("failed to update shop description: %v", err)
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	return ctx.JSON(http.StatusOK, map[string]interface{}{"success": true})
}

// (POST /shops/{shopId}/products/{productId}/caption)
func (h *Handler) PostShopsShopIdProductsProductIdCaption(ctx echo.Context, shopId string, productId string) error {
	// TODO: caption生成をLLMで行う
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
	products, err := h.repo.GetProductListByShopID(shopIdUUID)
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
