package handler

import (
	"net/http"
	"time"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"

	"github.com/mermer2024/mercari2024LLM_A/api"
	"github.com/mermer2024/mercari2024LLM_A/model"
)

// (POST /shops/{shopId}/follow)
func (h *Handler) PostShopsShopIdFollow(ctx echo.Context, shopId string) error {
	// ユーザーIDを取得
	var req api.PostShopsShopIdFollowJSONRequestBody
	if err := ctx.Bind(&req); err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	if req.UserId == "" {
		return ctx.JSON(http.StatusBadRequest, map[string]string{"error": "User ID is required"})
	}

	// UUIDに変換
	shopUUID, err := uuid.Parse(shopId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	userUUID, err := uuid.Parse(req.UserId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	// フォローの作成
	follow := model.Follow{
		ID:        uuid.New(),
		UserID:    userUUID,
		ShopID:    shopUUID,
		CreatedAt: time.Now(),
	}

	if err := h.repo.CreateFollow(follow); err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	return ctx.JSON(http.StatusOK, nil)
}

// (POST /shops/{shopId}/unfollow)
func (h *Handler) PostShopsShopIdUnfollow(ctx echo.Context, shopId string) error {
	// ユーザーIDを取得
	var req api.PostShopsShopIdUnfollowJSONRequestBody
	if err := ctx.Bind(&req); err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	if *req.UserId == "" {
		return ctx.JSON(http.StatusBadRequest, map[string]string{"error": "User ID is required"})
	}

	// UUIDに変換
	shopUUID, err := uuid.Parse(shopId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	userUUID, err := uuid.Parse(*req.UserId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, map[string]string{"error": "Invalid user ID"})
	}

	// フォローの削除
	follow := model.Follow{
		UserID: userUUID,
		ShopID: shopUUID,
	}
	err = h.repo.DeleteFollow(follow)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	return ctx.JSON(http.StatusOK, nil)
}
