package openaiclient

import (
	"context"

	_ "embed"

	"github.com/mermer2024/mercari2024LLM_A/model"

	"github.com/sashabaranov/go-openai"
)

//go:embed prompt/purchase_shop.txt
var systemPromptForPurchaseShopCaption string

func (c *Client) PurchaseShopCaption(ctx context.Context, purchaseHistories []model.PurchaseHistory, shops []model.Shop) (string, error) {
	// []model.Productをつなげて文字列にする
	var promptText string
	promptText = "[user's purchase history]\n"
	for _, history := range purchaseHistories {
		promptText += history.ProductName + "\n"
	}
	promptText += "[select shop description]\n"
	for _, shop := range shops {
		if shop.Caption != nil {
			promptText += shop.ID.String() + ":" + *shop.Caption + "\n"
		}
	}
	req := openai.ChatCompletionRequest{
		Model: openai.GPT4o,
		Messages: []openai.ChatCompletionMessage{
			{
				Role:    openai.ChatMessageRoleSystem,
				Content: systemPromptForPurchaseShopCaption,
			},
			{
				Role:    openai.ChatMessageRoleUser,
				Content: promptText,
			},
		},
	}
	res, err := c.apiClient.CreateChatCompletion(ctx, req)
	if err != nil {
		return "", err
	}

	return res.Choices[0].Message.Content, nil
}
