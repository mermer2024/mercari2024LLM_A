package handler

import (
	"net/http"
	"time"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"

	"github.com/mermer2024/mercari2024LLM_A/api"
	"github.com/mermer2024/mercari2024LLM_A/model"
)

// (GET /search_shops)
func (h *Handler) GetSearchShops(ctx echo.Context, params api.GetSearchShopsParams) error {

	// TODO: shopの検索をする(not LLM)

	return ctx.JSON(http.StatusInternalServerError, "Not implemented")
}

// (POST /shop)
func (h *Handler) PostShop(ctx echo.Context) error {
	var req api.PostShopJSONRequestBody
	if err := ctx.Bind(&req); err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	// parse req.OwnerId
	ownerIdUUID, err := uuid.Parse(req.OwnerId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	newShop := model.Shop{
		ID:        uuid.New(),
		Name:      req.Name,
		CreatedAt: time.Now(),
		OwnerID:   ownerIdUUID,
		// HeaderImageURL: req.HeaderImageURL,
	}

	// TODO:shopのdescriptionをLLLで作る。

	err = h.repo.CreateShop(newShop)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	return ctx.JSON(http.StatusOK, nil)
}

// (PUT /shops/{shopId})
func (h *Handler) PutShopsShopId(ctx echo.Context, shopId string) error {
	return nil
}
