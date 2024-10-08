// Package api provides primitives to interact with the openapi HTTP API.
//
// Code generated by github.com/oapi-codegen/oapi-codegen/v2 version v2.3.0 DO NOT EDIT.
package api

import (
	"fmt"
	"net/http"
	"time"

	"github.com/labstack/echo/v4"
	"github.com/oapi-codegen/runtime"
)

// CreateShopRequest defines model for CreateShopRequest.
type CreateShopRequest struct {
	Description string  `json:"description"`
	HeaderImage *string `json:"headerImage,omitempty"`
	Name        string  `json:"name"`
	OwnerId     string  `json:"ownerId"`
}

// EditShopRequest defines model for EditShopRequest.
type EditShopRequest struct {
	Description string  `json:"description"`
	HeaderImage *string `json:"headerImage,omitempty"`
	Name        string  `json:"name"`
}

// PostOpenAIRequest defines model for PostOpenAIRequest.
type PostOpenAIRequest struct {
	Sentences []string `json:"sentences"`
}

// PostOpenAIResponse defines model for PostOpenAIResponse.
type PostOpenAIResponse struct {
	// Message The message returned from OpenAI API
	Message *string `json:"message,omitempty"`
}

// Product defines model for Product.
type Product struct {
	Description *string `json:"description,omitempty"`
	Id          string  `json:"id"`
	ImageUrl    *string `json:"imageUrl,omitempty"`
	Name        string  `json:"name"`
	Price       float32 `json:"price"`
	Stock       int     `json:"stock"`
}

// ProductList defines model for ProductList.
type ProductList = []Product

// ProductRequest defines model for ProductRequest.
type ProductRequest struct {
	Description *string `json:"description,omitempty"`
	Id          *string `json:"id,omitempty"`
	ImageUrl    *string `json:"imageUrl,omitempty"`
	Name        string  `json:"name"`
	Price       float32 `json:"price"`
	Stock       int     `json:"stock"`
}

// PurchaseHistories defines model for PurchaseHistories.
type PurchaseHistories = []PurchaseHistory

// PurchaseHistory defines model for PurchaseHistory.
type PurchaseHistory struct {
	Id              string    `json:"id"`
	ImageUrl        string    `json:"imageUrl"`
	PriceAtPurchase float32   `json:"priceAtPurchase"`
	ProductId       string    `json:"productId"`
	ProductName     string    `json:"productName"`
	ProductQuantity int       `json:"productQuantity"`
	PurchaseDate    time.Time `json:"purchaseDate"`
	UserId          string    `json:"userId"`
}

// Recommendation defines model for Recommendation.
type Recommendation struct {
	Shop *Shop `json:"shop,omitempty"`
}

// RecommendationList defines model for RecommendationList.
type RecommendationList = []Recommendation

// Shop defines model for Shop.
type Shop struct {
	Description string  `json:"description"`
	Followers   *int    `json:"followers,omitempty"`
	HeaderImage *string `json:"headerImage,omitempty"`
	Id          string  `json:"id"`
	Name        string  `json:"name"`
	OwnerId     string  `json:"ownerId"`
}

// ShopList defines model for ShopList.
type ShopList = []Shop

// User defines model for User.
type User struct {
	CreatedAt *time.Time `json:"createdAt,omitempty"`
	Email     string     `json:"email"`
	Id        string     `json:"id"`
	ImageUrl  *string    `json:"image_url,omitempty"`
	Name      string     `json:"name"`
	UpdatedAt *time.Time `json:"updatedAt,omitempty"`
}

// PostMatchShopsJSONBody defines parameters for PostMatchShops.
type PostMatchShopsJSONBody struct {
	UserId string `json:"userId"`
}

// GetSearchShopsParams defines parameters for GetSearchShops.
type GetSearchShopsParams struct {
	Keyword *string `form:"keyword,omitempty" json:"keyword,omitempty"`
}

// PostShopsShopIdFollowJSONBody defines parameters for PostShopsShopIdFollow.
type PostShopsShopIdFollowJSONBody struct {
	UserId string `json:"userId"`
}

// PostShopsShopIdProductsJSONBody defines parameters for PostShopsShopIdProducts.
type PostShopsShopIdProductsJSONBody struct {
	Products []ProductRequest `json:"products"`
}

// PostShopsShopIdProductsProductIdCaptionJSONBody defines parameters for PostShopsShopIdProductsProductIdCaption.
type PostShopsShopIdProductsProductIdCaptionJSONBody struct {
	Caption string `json:"caption"`
}

// GetShopsShopIdSearchProductsParams defines parameters for GetShopsShopIdSearchProducts.
type GetShopsShopIdSearchProductsParams struct {
	Keyword *string `form:"keyword,omitempty" json:"keyword,omitempty"`
}

// PostShopsShopIdUnfollowJSONBody defines parameters for PostShopsShopIdUnfollow.
type PostShopsShopIdUnfollowJSONBody struct {
	UserId *string `json:"userId,omitempty"`
}

// PostMatchShopsJSONRequestBody defines body for PostMatchShops for application/json ContentType.
type PostMatchShopsJSONRequestBody PostMatchShopsJSONBody

// PostOpenaiJSONRequestBody defines body for PostOpenai for application/json ContentType.
type PostOpenaiJSONRequestBody = PostOpenAIRequest

// PostShopJSONRequestBody defines body for PostShop for application/json ContentType.
type PostShopJSONRequestBody = CreateShopRequest

// PutShopsShopIdJSONRequestBody defines body for PutShopsShopId for application/json ContentType.
type PutShopsShopIdJSONRequestBody = EditShopRequest

// PostShopsShopIdFollowJSONRequestBody defines body for PostShopsShopIdFollow for application/json ContentType.
type PostShopsShopIdFollowJSONRequestBody PostShopsShopIdFollowJSONBody

// PostShopsShopIdProductsJSONRequestBody defines body for PostShopsShopIdProducts for application/json ContentType.
type PostShopsShopIdProductsJSONRequestBody PostShopsShopIdProductsJSONBody

// PostShopsShopIdProductsProductIdCaptionJSONRequestBody defines body for PostShopsShopIdProductsProductIdCaption for application/json ContentType.
type PostShopsShopIdProductsProductIdCaptionJSONRequestBody PostShopsShopIdProductsProductIdCaptionJSONBody

// PostShopsShopIdUnfollowJSONRequestBody defines body for PostShopsShopIdUnfollow for application/json ContentType.
type PostShopsShopIdUnfollowJSONRequestBody PostShopsShopIdUnfollowJSONBody

// ServerInterface represents all server handlers.
type ServerInterface interface {

	// (POST /match_shops)
	PostMatchShops(ctx echo.Context) error

	// (POST /openai)
	PostOpenai(ctx echo.Context) error

	// (GET /ping)
	GetPing(ctx echo.Context) error

	// (GET /recommendations/today)
	GetRecommendationsToday(ctx echo.Context) error

	// (GET /search_shops)
	GetSearchShops(ctx echo.Context, params GetSearchShopsParams) error

	// (POST /shop)
	PostShop(ctx echo.Context) error

	// (GET /shops/{shopId})
	GetShopsShopId(ctx echo.Context, shopId string) error

	// (PUT /shops/{shopId})
	PutShopsShopId(ctx echo.Context, shopId string) error

	// (POST /shops/{shopId}/follow)
	PostShopsShopIdFollow(ctx echo.Context, shopId string) error

	// (POST /shops/{shopId}/products)
	PostShopsShopIdProducts(ctx echo.Context, shopId string) error

	// (POST /shops/{shopId}/products/{productId}/caption)
	PostShopsShopIdProductsProductIdCaption(ctx echo.Context, shopId string, productId string) error

	// (POST /shops/{shopId}/products/{productId}/sold_out)
	PostShopsShopIdProductsProductIdSoldOut(ctx echo.Context, shopId string, productId string) error

	// (GET /shops/{shopId}/search_products)
	GetShopsShopIdSearchProducts(ctx echo.Context, shopId string, params GetShopsShopIdSearchProductsParams) error

	// (POST /shops/{shopId}/unfollow)
	PostShopsShopIdUnfollow(ctx echo.Context, shopId string) error

	// (GET /users/{userId})
	GetUsersUserId(ctx echo.Context, userId string) error

	// (GET /users/{userId}/purchase_histories)
	GetUsersUserIdPurchaseHistories(ctx echo.Context, userId string) error
}

// ServerInterfaceWrapper converts echo contexts to parameters.
type ServerInterfaceWrapper struct {
	Handler ServerInterface
}

// PostMatchShops converts echo context to params.
func (w *ServerInterfaceWrapper) PostMatchShops(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PostMatchShops(ctx)
	return err
}

// PostOpenai converts echo context to params.
func (w *ServerInterfaceWrapper) PostOpenai(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PostOpenai(ctx)
	return err
}

// GetPing converts echo context to params.
func (w *ServerInterfaceWrapper) GetPing(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetPing(ctx)
	return err
}

// GetRecommendationsToday converts echo context to params.
func (w *ServerInterfaceWrapper) GetRecommendationsToday(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetRecommendationsToday(ctx)
	return err
}

// GetSearchShops converts echo context to params.
func (w *ServerInterfaceWrapper) GetSearchShops(ctx echo.Context) error {
	var err error

	// Parameter object where we will unmarshal all parameters from the context
	var params GetSearchShopsParams
	// ------------- Optional query parameter "keyword" -------------

	err = runtime.BindQueryParameter("form", true, false, "keyword", ctx.QueryParams(), &params.Keyword)
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter keyword: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetSearchShops(ctx, params)
	return err
}

// PostShop converts echo context to params.
func (w *ServerInterfaceWrapper) PostShop(ctx echo.Context) error {
	var err error

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PostShop(ctx)
	return err
}

// GetShopsShopId converts echo context to params.
func (w *ServerInterfaceWrapper) GetShopsShopId(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "shopId" -------------
	var shopId string

	err = runtime.BindStyledParameterWithOptions("simple", "shopId", ctx.Param("shopId"), &shopId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter shopId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetShopsShopId(ctx, shopId)
	return err
}

// PutShopsShopId converts echo context to params.
func (w *ServerInterfaceWrapper) PutShopsShopId(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "shopId" -------------
	var shopId string

	err = runtime.BindStyledParameterWithOptions("simple", "shopId", ctx.Param("shopId"), &shopId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter shopId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PutShopsShopId(ctx, shopId)
	return err
}

// PostShopsShopIdFollow converts echo context to params.
func (w *ServerInterfaceWrapper) PostShopsShopIdFollow(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "shopId" -------------
	var shopId string

	err = runtime.BindStyledParameterWithOptions("simple", "shopId", ctx.Param("shopId"), &shopId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter shopId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PostShopsShopIdFollow(ctx, shopId)
	return err
}

// PostShopsShopIdProducts converts echo context to params.
func (w *ServerInterfaceWrapper) PostShopsShopIdProducts(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "shopId" -------------
	var shopId string

	err = runtime.BindStyledParameterWithOptions("simple", "shopId", ctx.Param("shopId"), &shopId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter shopId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PostShopsShopIdProducts(ctx, shopId)
	return err
}

// PostShopsShopIdProductsProductIdCaption converts echo context to params.
func (w *ServerInterfaceWrapper) PostShopsShopIdProductsProductIdCaption(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "shopId" -------------
	var shopId string

	err = runtime.BindStyledParameterWithOptions("simple", "shopId", ctx.Param("shopId"), &shopId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter shopId: %s", err))
	}

	// ------------- Path parameter "productId" -------------
	var productId string

	err = runtime.BindStyledParameterWithOptions("simple", "productId", ctx.Param("productId"), &productId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter productId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PostShopsShopIdProductsProductIdCaption(ctx, shopId, productId)
	return err
}

// PostShopsShopIdProductsProductIdSoldOut converts echo context to params.
func (w *ServerInterfaceWrapper) PostShopsShopIdProductsProductIdSoldOut(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "shopId" -------------
	var shopId string

	err = runtime.BindStyledParameterWithOptions("simple", "shopId", ctx.Param("shopId"), &shopId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter shopId: %s", err))
	}

	// ------------- Path parameter "productId" -------------
	var productId string

	err = runtime.BindStyledParameterWithOptions("simple", "productId", ctx.Param("productId"), &productId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter productId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PostShopsShopIdProductsProductIdSoldOut(ctx, shopId, productId)
	return err
}

// GetShopsShopIdSearchProducts converts echo context to params.
func (w *ServerInterfaceWrapper) GetShopsShopIdSearchProducts(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "shopId" -------------
	var shopId string

	err = runtime.BindStyledParameterWithOptions("simple", "shopId", ctx.Param("shopId"), &shopId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter shopId: %s", err))
	}

	// Parameter object where we will unmarshal all parameters from the context
	var params GetShopsShopIdSearchProductsParams
	// ------------- Optional query parameter "keyword" -------------

	err = runtime.BindQueryParameter("form", true, false, "keyword", ctx.QueryParams(), &params.Keyword)
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter keyword: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetShopsShopIdSearchProducts(ctx, shopId, params)
	return err
}

// PostShopsShopIdUnfollow converts echo context to params.
func (w *ServerInterfaceWrapper) PostShopsShopIdUnfollow(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "shopId" -------------
	var shopId string

	err = runtime.BindStyledParameterWithOptions("simple", "shopId", ctx.Param("shopId"), &shopId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter shopId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.PostShopsShopIdUnfollow(ctx, shopId)
	return err
}

// GetUsersUserId converts echo context to params.
func (w *ServerInterfaceWrapper) GetUsersUserId(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "userId" -------------
	var userId string

	err = runtime.BindStyledParameterWithOptions("simple", "userId", ctx.Param("userId"), &userId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter userId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetUsersUserId(ctx, userId)
	return err
}

// GetUsersUserIdPurchaseHistories converts echo context to params.
func (w *ServerInterfaceWrapper) GetUsersUserIdPurchaseHistories(ctx echo.Context) error {
	var err error
	// ------------- Path parameter "userId" -------------
	var userId string

	err = runtime.BindStyledParameterWithOptions("simple", "userId", ctx.Param("userId"), &userId, runtime.BindStyledParameterOptions{ParamLocation: runtime.ParamLocationPath, Explode: false, Required: true})
	if err != nil {
		return echo.NewHTTPError(http.StatusBadRequest, fmt.Sprintf("Invalid format for parameter userId: %s", err))
	}

	// Invoke the callback with all the unmarshaled arguments
	err = w.Handler.GetUsersUserIdPurchaseHistories(ctx, userId)
	return err
}

// This is a simple interface which specifies echo.Route addition functions which
// are present on both echo.Echo and echo.Group, since we want to allow using
// either of them for path registration
type EchoRouter interface {
	CONNECT(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	DELETE(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	GET(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	HEAD(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	OPTIONS(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	PATCH(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	POST(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	PUT(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
	TRACE(path string, h echo.HandlerFunc, m ...echo.MiddlewareFunc) *echo.Route
}

// RegisterHandlers adds each server route to the EchoRouter.
func RegisterHandlers(router EchoRouter, si ServerInterface) {
	RegisterHandlersWithBaseURL(router, si, "")
}

// Registers handlers, and prepends BaseURL to the paths, so that the paths
// can be served under a prefix.
func RegisterHandlersWithBaseURL(router EchoRouter, si ServerInterface, baseURL string) {

	wrapper := ServerInterfaceWrapper{
		Handler: si,
	}

	router.POST(baseURL+"/match_shops", wrapper.PostMatchShops)
	router.POST(baseURL+"/openai", wrapper.PostOpenai)
	router.GET(baseURL+"/ping", wrapper.GetPing)
	router.GET(baseURL+"/recommendations/today", wrapper.GetRecommendationsToday)
	router.GET(baseURL+"/search_shops", wrapper.GetSearchShops)
	router.POST(baseURL+"/shop", wrapper.PostShop)
	router.GET(baseURL+"/shops/:shopId", wrapper.GetShopsShopId)
	router.PUT(baseURL+"/shops/:shopId", wrapper.PutShopsShopId)
	router.POST(baseURL+"/shops/:shopId/follow", wrapper.PostShopsShopIdFollow)
	router.POST(baseURL+"/shops/:shopId/products", wrapper.PostShopsShopIdProducts)
	router.POST(baseURL+"/shops/:shopId/products/:productId/caption", wrapper.PostShopsShopIdProductsProductIdCaption)
	router.POST(baseURL+"/shops/:shopId/products/:productId/sold_out", wrapper.PostShopsShopIdProductsProductIdSoldOut)
	router.GET(baseURL+"/shops/:shopId/search_products", wrapper.GetShopsShopIdSearchProducts)
	router.POST(baseURL+"/shops/:shopId/unfollow", wrapper.PostShopsShopIdUnfollow)
	router.GET(baseURL+"/users/:userId", wrapper.GetUsersUserId)
	router.GET(baseURL+"/users/:userId/purchase_histories", wrapper.GetUsersUserIdPurchaseHistories)

}
