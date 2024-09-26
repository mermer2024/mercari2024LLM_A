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
	follows, err := h.repo.GetFollowsByShopID(shopID)
	if err != nil {
		log.Println(err)
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	followers := len(follows)
	res := api.Shop{
		Description: shop.Description,
		Followers:   &followers,
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

	return ctx.JSON(http.StatusOK, resShops)
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
	description := ""
	if req.Description != "" {
		description = req.Description
	}
	headerImage := ""
	if req.HeaderImage != nil {
		headerImage = *req.HeaderImage
	}

	newShop := model.Shop{
		ID:             uuid.New(),
		Name:           req.Name,
		CreatedAt:      time.Now(),
		UpdatedAt:      time.Now(),
		OwnerID:        ownerIdUUID,
		Description:    description,
		HeaderImageURL: headerImage,
	}

	err = h.repo.CreateShop(newShop)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	return ctx.JSON(http.StatusOK, api.Shop{
		Id:          newShop.ID.String(),
		Name:        newShop.Name,
		Description: newShop.Description,
		Followers:   nil,
		HeaderImage: &newShop.HeaderImageURL,
		OwnerId:     newShop.OwnerID.String(),
	})
}

// (PUT /shops/{shopId})
func (h *Handler) PutShopsShopId(ctx echo.Context, shopId string) error {
	var req api.PutShopsShopIdJSONRequestBody
	if err := ctx.Bind(&req); err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	shopIdUUID, err := uuid.Parse(shopId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	shop, err := h.repo.GetShop(shopIdUUID)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	description := shop.Description
	if req.Description != "" {
		description = req.Description
	}
	headerImage := shop.HeaderImageURL
	if req.HeaderImage != nil {
		headerImage = *req.HeaderImage
	}
	name := shop.Name
	if req.Name != "" {
		name = req.Name
	}

	newShop := model.Shop{
		ID:             shopIdUUID,
		Name:           name,
		CreatedAt:      shop.CreatedAt,
		UpdatedAt:      time.Now(),
		Description:    description,
		HeaderImageURL: headerImage,
		OwnerID:        shop.OwnerID,
	}

	err = h.repo.EditShop(newShop)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	return ctx.JSON(http.StatusOK, api.Shop{
		Id:          newShop.ID.String(),
		Name:        newShop.Name,
		Description: newShop.Description,
		Followers:   nil,
		HeaderImage: &newShop.HeaderImageURL,
		OwnerId:     newShop.OwnerID.String(),
	})
}
