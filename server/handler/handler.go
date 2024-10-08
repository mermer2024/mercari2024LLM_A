package handler

import (
	"github.com/mermer2024/mercari2024LLM_A/model"
	"github.com/mermer2024/mercari2024LLM_A/openaiclient"
)

type Handler struct {
	repo   *model.Repository
	client *openaiclient.Client
}

func New(repo *model.Repository, client *openaiclient.Client) *Handler {
	return &Handler{
		repo:   repo,
		client: client,
	}
}
