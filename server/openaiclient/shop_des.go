package openaiclient

import (
	"context"
	"strconv"

	_ "embed"

	"github.com/mermer2024/mercari2024LLM_A/model"

	"github.com/sashabaranov/go-openai"
)

//go:embed prompt/shop_caption.txt
var systemPromptForShopCaption string

func (c *Client) ShopCaption(ctx context.Context, products []model.Product) (string, error) {
	// []model.Productをつなげて文字列にする
	var productsStr string
	productsStr = "id_,name,price,created,updated,thumbnails,description\n"
	for _, product := range products {
		productsStr += product.ID.String() + "," + strconv.FormatFloat(float64(product.Price), 'f', 2, 32) + "," + product.CreatedAt.String() + "," + product.UpdatedAt.String() + "," + product.ImageURL + "," + product.Description + "\n"
	}

	req := openai.ChatCompletionRequest{
		Model: openai.GPT4o,
		Messages: []openai.ChatCompletionMessage{
			{
				Role:    openai.ChatMessageRoleSystem,
				Content: systemPromptForShopCaption,
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
