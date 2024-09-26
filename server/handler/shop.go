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

// (GET /shops/{shopId})
func (h *Handler) GetShopsShopId(ctx echo.Context, shopId string) error {
	shopID, err := uuid.Parse(shopId)
	if err != nil {
		log.Println(err)
		return ctx.JSON(http.StatusBadRequest, err)
	}
	shop, err := h.repo.GetShop(shopID)
	if err != nil {
		log.Println(err)
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	res := api.Shop{
		Description: shop.Description,
		Followers:   nil,
		HeaderImage: &shop.HeaderImageURL,
		Id:          shop.ID.String(),
		Name:        shop.Name,
		OwnerId:     shop.OwnerID.String(),
	}
	return ctx.JSON(http.StatusOK, res)
}

// (GET /search_shops)
func (h *Handler) GetSearchShops(ctx echo.Context, params api.GetSearchShopsParams) error {

	// TODO: shopの検索をする(not LLM)
	shops, err := h.repo.GetShopsAll()
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	var resShops []*api.Shop
	for _, shop := range shops {
		resShops = append(resShops, &api.Shop{
			Description: shop.Description,
			HeaderImage: &shop.HeaderImageURL,
			Id:          shop.ID.String(),
			Name:        shop.Name,
			OwnerId:     shop.OwnerID.String(),
		})
	}

	return ctx.JSON(http.StatusInternalServerError, resShops)
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
