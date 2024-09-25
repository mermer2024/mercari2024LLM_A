package handler

import (
	"net/http"
	"strings"

	"github.com/labstack/echo/v4"
	"github.com/mermer2024/mercari2024LLM_A/api"
)

// (POST /openai)
func (h *Handler) PostOpenai(ctx echo.Context) error {
	// リクエストからsentencesを受け取る
	var req api.PostOpenAIRequest
	if err := ctx.Bind(&req); err != nil {
		return ctx.JSON(http.StatusBadRequest, err)
	}

	// sentencesを1つのメッセージにまとめる
	originalMessage := strings.Join(req.Sentences, " ")

	// OpenAI APIにメッセージを送信して、レスポンスを取得
	responseMessage, err := h.client.ConvertMessage(ctx.Request().Context(), originalMessage)
	if err != nil {
		return ctx.JSON(http.StatusInternalServerError, err)
	}

	// OpenAI APIからのレスポンスを返す
	return ctx.JSON(http.StatusOK, api.PostOpenAIResponse{
		Message: &responseMessage,
	})
}
