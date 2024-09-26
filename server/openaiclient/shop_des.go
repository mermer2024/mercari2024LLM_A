package openaiclient

import (
	"context"

	_ "embed"

	"github.com/mermer2024/mercari2024LLM_A/model"

	"github.com/sashabaranov/go-openai"
)

//go:embed prompt/shop_description.txt
var systemPromptForShopDescription string

func (c *Client) ShopDescription(ctx context.Context, products []model.Product) (string, error) {
	// []model.Productをつなげて文字列にする
	var productsStr string
	for _, product := range products {
		productsStr += product.Name + "\n" + product.Description + "\n"
	}

	req := openai.ChatCompletionRequest{
		Model: openai.GPT4o,
		Messages: []openai.ChatCompletionMessage{
			{
				Role:    openai.ChatMessageRoleSystem,
				Content: systemPromptForShopDescription,
			},
			{
				Role:    openai.ChatMessageRoleUser,
				Content: productsStr,
			},
		},
	}
	res, err := c.apiClient.CreateChatCompletion(ctx, req)
	if err != nil {
		return "", err
	}

	return res.Choices[0].Message.Content, nil
}
