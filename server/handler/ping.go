package handler

import (
	"log"
	"net/http"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
)

func (h *Handler) GetPing(ctx echo.Context) error {
	shopList, err := h.repo.GetShopsAll()
	if err != nil {
		log.Printf("failed to get shop list: %v", err)
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	shopIdUUIDs := make([]uuid.UUID, len(shopList))
	for i, shop := range shopList {
		shopIdUUIDs[i] = shop.ID
	}
	for _, shopIdUUID := range shopIdUUIDs {
		productList, err := h.repo.GetProductListByShopID(shopIdUUID)
		if err != nil {
			log.Printf("failed to get product list: %v", err)
			return ctx.JSON(http.StatusInternalServerError, err)
		}

		// TODO:shopのdescriptionをLLMで変更する。
		text, err := h.client.ShopDescription(ctx.Request().Context(), productList)
		if err != nil {
			log.Printf("failed to get shop description: %v", err)
			return ctx.JSON(http.StatusInternalServerError, err)
		}

		log.Println(text)

		// shopのdescriptionを更新
		err = h.repo.UpdateShopDescription(shopIdUUID, text)
		if err != nil {
			log.Printf("failed to update shop description: %v", err)
			return ctx.JSON(http.StatusInternalServerError, err)
		}
	}
	return ctx.String(http.StatusOK, "pong")
}
