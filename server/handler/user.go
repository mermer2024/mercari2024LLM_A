package handler

import (
	"net/http"

	"github.com/google/uuid"
	"github.com/labstack/echo/v4"
	"github.com/mermer2024/mercari2024LLM_A/api"
)

// (GET /users/{userId})
func (h *Handler) GetUsersUserId(ctx echo.Context, userId string) error {
	// parse userId
	userID, err := uuid.Parse(userId)
	if err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	user, err := h.repo.GetUser(userID)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}
	return ctx.JSON(http.StatusOK, api.User{
		Id:        user.ID.String(),
		Name:      user.Username,
		Email:     user.Email,
		ImageUrl:  &user.ImageURL,
		CreatedAt: &user.CreatedAt,
		UpdatedAt: &user.UpdatedAt,
	})
}
