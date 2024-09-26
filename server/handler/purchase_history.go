package handler

import (
	"net/http"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/mermer2024/mercari2024LLM_A/api"
)

// (GET /users/{userId}/purchase_histories)
func (h *Handler) GetPurchaseHistories(ctx echo.Context, userId string) error {
	userID, err := uuid.Parse(userId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	histories, err := h.repo.GetPurchaseHistoriesByUserID(userID)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	var res []*api.PurchaseHistory
	for _, history := range histories {
		res = append(res, &api.PurchaseHistory{
			Id:              history.ID.String(),
			PriceAtPurchase: float32(history.PriceAtPurchase),
			ProductId:       history.ProductID.String(),
			ProductName:     history.ProductName,
			ProductQuantity: history.Quantity,
			PurchaseDate:    history.PurchaseDate,
			UserId:          history.UserID.String(),
		})
	}

	return ctx.JSON(http.StatusOK, res)
}
