package handler

import (
	"encoding/json"
	"log"
	"net/http"

	"github.com/google/uuid"
	"github.com/mermer2024/mercari2024LLM_A/api"

	"github.com/labstack/echo/v4"
)

// (POST /match_shops)
func (h *Handler) PostMatchShops(ctx echo.Context) error {
	var req api.PostMatchShopsJSONRequestBody
	if err := ctx.Bind(&req); err != nil {
		return err
	}
	if req.UserId == "" {
		return ctx.JSON(http.StatusBadRequest, map[string]string{"error": "User ID is required"})
	}

	// TODO:マッチングの作成
	// TODO: shopと購入履歴をLLMに投げる
	// parse req.UserId
	userUUID, err := uuid.Parse(req.UserId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}
	purchaseHistories, err := h.repo.GetPurchaseHistoriesByUserID(userUUID)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	shopIdAndDescriptions, err := h.repo.GetShopDescriptionsAll()
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	// shopと購入履歴をLLMに投げる
	text, err := h.client.PurchaseShopDescription(ctx.Request().Context(), purchaseHistories, shopIdAndDescriptions)
	if err != nil {
		log.Printf("failed to get product list: %v", err)
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	log.Println(text)

	shopIds, err := convertJsonTextToShopIdList(text)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	log.Println(shopIds)

	shopList, err := h.repo.GetShopsByIDs(shopIds)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	var shops []*api.Shop
	for _, shop := range shopList {
		shops = append(shops, &api.Shop{
			Id:          shop.ID.String(),
			Name:        shop.Name,
			Description: shop.Description,
			HeaderImage: &shop.HeaderImageURL,
			OwnerId:     shop.OwnerID.String(),
		})
	}

	return ctx.JSON(http.StatusOK, shops)
}

type outputJsonText struct {
	ShopId             string `json:"shop_id"`
	RecommendationRate string `json:"recommendation_rate"`
	Reason             string `json:"reason"`
}

func convertJsonTextToShopIdList(text string) ([]uuid.UUID, error) {
	// textの最初の行と最後の行が```jsonで囲まれている場合、それを削除する
	if len(text) > 6 && text[:6] == "```json" {
		text = text[6:]
	}
	if len(text) > 3 && text[len(text)-3:] == "```" {
		text = text[:len(text)-3]
	}
	var data []outputJsonText
	// JSON文字列をoutputJsonTextのスライスに変換
	err := json.Unmarshal([]byte(text), &data)
	if err != nil {
		log.Printf("Failed to parse JSON: %v", err)
		return nil, err
	}

	var shopIdList []uuid.UUID

	// 変換したデータをuuidのリストにする
	for _, d := range data {
		id, err := uuid.Parse(d.ShopId)
		if err != nil {
			id, err = uuid.Parse("0" + d.ShopId)
			if err != nil {
				log.Println(d.ShopId)
				log.Println("Failed to parse UUID")
				return nil, err
			}
		}
		shopIdList = append(shopIdList, id)
	}
	return shopIdList, nil
}
