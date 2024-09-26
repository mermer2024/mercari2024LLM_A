package openaiclient

import (
	"context"

	_ "embed"

	"github.com/sashabaranov/go-openai"
)

type Client struct {
	apiClient *openai.Client
}

//go:embed prompt/prompt.txt
var systemPrompt string

func New(apiClient *openai.Client) *Client {
	return &Client{
		apiClient: apiClient,
	}
}

func (c *Client) ConvertMessage(ctx context.Context, originalMessage string) (string, error) {
	req := openai.ChatCompletionRequest{
		Model: openai.GPT4o,
		Messages: []openai.ChatCompletionMessage{
			{
				Role:    openai.ChatMessageRoleSystem,
				Content: systemPrompt,
			},
			{
				Role:    openai.ChatMessageRoleUser,
				Content: originalMessage,
			},
		},
	}
	res, err := c.apiClient.CreateChatCompletion(ctx, req)
	if err != nil {
		return "", err
	}

	return res.Choices[0].Message.Content, nil
}
