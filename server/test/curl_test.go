package main

import (
	"bytes"
	"encoding/json"
	"io"
	"net/http"
	"testing"
)

// Define the data models based on the OpenAPI specification
type Shop struct {
	ID          string `json:"id"`
	Name        string `json:"name"`
	OwnerID     string `json:"ownerId"`
	Description string `json:"description"`
	HeaderImage string `json:"headerImage,omitempty"`
	Followers   int    `json:"followers,omitempty"`
}

type Product struct {
	ID          string  `json:"id"`
	Name        string  `json:"name"`
	Price       float64 `json:"price"`
	Stock       int     `json:"stock"`
	Description string  `json:"description,omitempty"`
	ImageURL    string  `json:"imageUrl,omitempty"`
}

type Recommendation struct {
	Shop Shop `json:"shop"`
}

type User struct {
	ID       string `json:"id"`
	Name     string `json:"name"`
	Email    string `json:"email"`
	CreateAt string `json:"createdAt"`
	UpdateAt string `json:"updatedAt"`
}

type PurchaseHistory struct {
	ID              string  `json:"id"`
	UserID          string  `json:"userId"`
	ProductID       string  `json:"productId"`
	ProductName     string  `json:"productName"`
	ProductQuantity int     `json:"productQuantity"`
	PriceAtPurchase float64 `json:"priceAtPurchase"`
	PurchaseDate    string  `json:"purchaseDate"`
}

// Helper function to send POST requests
func sendPostRequest(url string, payload interface{}) (*http.Response, error) {
	url = "http://localhost:8080" + url
	var body io.Reader
	if payload != nil {
		payloadBytes, err := json.Marshal(payload)
		if err != nil {
			return nil, err
		}
		body = bytes.NewReader(payloadBytes)
	} else {
		body = nil
	}

	req, err := http.NewRequest("POST", url, body)
	if err != nil {
		return nil, err
	}
	if payload != nil {
		req.Header.Set("Content-Type", "application/json")
	}

	return http.DefaultClient.Do(req)
}

// Helper function to send GET requests
func sendGetRequest(url string) (*http.Response, error) {
	url = "http://localhost:8080" + url
	req, err := http.NewRequest("GET", url, nil)
	if err != nil {
		return nil, err
	}
	return http.DefaultClient.Do(req)
}

// Helper function to send PUT requests
func sendPutRequest(url string, payload interface{}) (*http.Response, error) {
	url = "http://localhost:8080" + url
	payloadBytes, err := json.Marshal(payload)
	if err != nil {
		return nil, err
	}

	body := bytes.NewReader(payloadBytes)
	req, err := http.NewRequest("PUT", url, body)
	if err != nil {
		return nil, err
	}
	req.Header.Set("Content-Type", "application/json")

	return http.DefaultClient.Do(req)
}

// Test for GET /api/ping
func TestPing(t *testing.T) {
	resp, err := sendGetRequest("/api/ping")
	if err != nil {
		t.Fatalf("sendGetRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	bodyString := string(bodyBytes)
	expectedBody := `pong`
	if bodyString != expectedBody {
		t.Fatalf("Expected response body %s, got %s", expectedBody, bodyString)
	}
	t.Logf("Response body: %s", bodyString)
}

// Test for POST /api/openai
func TestOpenAI(t *testing.T) {
	payload := map[string]interface{}{
		"sentences": []string{"This is the first sentence.", "This is the second sentence."},
	}

	resp, err := sendPostRequest("/api/openai", payload)
	if err != nil {
		t.Fatalf("sendPostRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var response struct {
		Message string `json:"message"`
	}
	if err := json.Unmarshal(bodyBytes, &response); err != nil {
		t.Fatalf("Failed to unmarshal response body: %v", err)
	}
	if response.Message == "" {
		t.Fatalf("Expected 'message' in response, got empty")
	}
	t.Logf("Response message: %s", response.Message)
}

// Test for POST /api/match_shops
func TestMatchShops(t *testing.T) {
	payload := map[string]interface{}{
		"userId": "114639E0-6E0D-420F-998F-A52BB9ECC145",
	}

	resp, err := sendPostRequest("/api/match_shops", payload)
	if err != nil {
		t.Fatalf("sendPostRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var shops []Shop
	if err := json.Unmarshal(bodyBytes, &shops); err != nil {
		t.Fatalf("Failed to unmarshal response body into shops: %v", err)
	}
	t.Logf("Number of shops matched: %d", len(shops))
}

// Test for GET /api/shops/{shopId}
func TestGetShopByID(t *testing.T) {
	shopID := "80beab1c-e47c-4b94-b1f5-f82941c6c7f7"

	resp, err := sendGetRequest("/api/shops/" + shopID)
	if err != nil {
		t.Fatalf("sendGetRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}

	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}

	var shop Shop
	if err := json.Unmarshal(bodyBytes, &shop); err != nil {
		t.Fatalf("Failed to unmarshal response body into Shop: %v", err)
	}

	if shop.ID != shopID {
		t.Fatalf("Expected shop ID %s, got %s", shopID, shop.ID)
	}

	t.Logf("Retrieved shop: %+v", shop)
}

// Test for POST /api/shop
func TestCreateShop(t *testing.T) {
	payload := map[string]interface{}{
		"name":        "New Select Shop",
		"ownerId":     "1B493F89-58C4-40E6-8648-2B8445D8032D",
		"description": "This is a new select shop created by suzuki_ryo.",
		"headerImage": "https://example.com/images/newshop.jpg",
	}

	resp, err := sendPostRequest("/api/shop", payload)
	if err != nil {
		t.Fatalf("sendPostRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK { // TODO: StatusCreate is better?
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var shop Shop
	if err := json.Unmarshal(bodyBytes, &shop); err != nil {
		t.Fatalf("Failed to unmarshal response body into Shop: %v", err)
	}
	if shop.Name != payload["name"] {
		t.Fatalf("Expected shop name %s, got %s", payload["name"], shop.Name)
	}
	t.Logf("Created shop ID: %s", shop.ID)
}

// Test for PUT /api/shops/{shopId}
func TestUpdateShop(t *testing.T) {
	payload := map[string]interface{}{
		"name":        "Updated Shop Name",
		"description": "Updated description of the shop.",
		"headerImage": "https://example.com/images/updatedshop.jpg",
	}

	resp, err := sendPutRequest("/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7", payload)
	if err != nil {
		t.Fatalf("sendPutRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var shop Shop
	if err := json.Unmarshal(bodyBytes, &shop); err != nil {
		t.Fatalf("Failed to unmarshal response body into Shop: %v", err)
	}
	if shop.Name != payload["name"] {
		t.Fatalf("Expected shop name %s, got %s", payload["name"], shop.Name)
	}
	if shop.ID != "80beab1c-e47c-4b94-b1f5-f82941c6c7f7" {
		t.Fatalf("Expected shop ID 80beab1c-e47c-4b94-b1f5-f82941c6c7f7, got %s", shop.ID)
	}
	t.Logf("Updated shop ID: %s", shop.ID)
}

// Test for GET /api/search_shops
func TestSearchShops(t *testing.T) {
	resp, err := sendGetRequest("/api/search_shops")
	if err != nil {
		t.Fatalf("sendGetRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var shops []Shop
	if err := json.Unmarshal(bodyBytes, &shops); err != nil {
		t.Fatalf("Failed to unmarshal response body into shops: %v", err)
	}
	t.Logf("Number of shops found: %d", len(shops))
}

// Test for POST /api/shops/{shopId}/follow
func TestFollowShop(t *testing.T) {
	payload := map[string]interface{}{
		"userId": "114639E0-6E0D-420F-998F-A52BB9ECC145",
	}

	resp, err := sendPostRequest("/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/follow", payload)
	if err != nil {
		t.Fatalf("sendPostRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var response struct {
		Success bool `json:"success"`
	}
	if err := json.Unmarshal(bodyBytes, &response); err != nil {
		t.Fatalf("Failed to unmarshal response body: %v", err)
	}
	if !response.Success {
		t.Fatalf("Expected success to be true, got false")
	}
	t.Logf("Successfully followed the shop")
}

// Test for POST /api/shops/{shopId}/unfollow
func TestUnfollowShop(t *testing.T) {
	payload := map[string]interface{}{
		"userId": "114639E0-6E0D-420F-998F-A52BB9ECC145",
	}

	resp, err := sendPostRequest("/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/unfollow", payload)
	if err != nil {
		t.Fatalf("sendPostRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var response struct {
		Success bool `json:"success"`
	}
	if err := json.Unmarshal(bodyBytes, &response); err != nil {
		t.Fatalf("Failed to unmarshal response body: %v", err)
	}
	if !response.Success {
		t.Fatalf("Expected success to be true, got false")
	}
	t.Logf("Successfully unfollowed the shop")
}

// Test for GET /api/shops/{shopId}/search_products
func TestSearchProducts(t *testing.T) {
	resp, err := sendGetRequest("/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/search_products")
	if err != nil {
		t.Fatalf("sendGetRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var products []Product
	if err := json.Unmarshal(bodyBytes, &products); err != nil {
		t.Fatalf("Failed to unmarshal response body into products: %v", err)
	}
	t.Logf("Number of products found: %d", len(products))
}

// Test for POST /api/shops/{shopId}/products
func TestAddProducts(t *testing.T) {
	payload := map[string]interface{}{
		"products": []map[string]interface{}{
			{
				"name":        "最新型スマートウォッチ",
				"price":       35000,
				"stock":       10,
				"description": "心拍数や睡眠パターンをモニタリングできる最新のスマートウォッチです。",
				"imageUrl":    "https://example.com/images/gadget1.jpg",
			},
			{
				"name":        "ワイヤレスノイズキャンセリングヘッドホン",
				"price":       28000,
				"stock":       15,
				"description": "高品質なサウンドとノイズキャンセリング機能を備えたワイヤレスヘッドホンです。",
				"imageUrl":    "https://example.com/images/gadget2.jpg",
			},
		},
	}

	resp, err := sendPostRequest("/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/products", payload)
	if err != nil {
		t.Fatalf("sendPostRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK { // TODO: StatusCreated is better?
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var response struct {
		Success bool `json:"success"`
	}
	if err := json.Unmarshal(bodyBytes, &response); err != nil {
		t.Fatalf("Failed to unmarshal response body: %v", err)
	}
	if !response.Success {
		t.Fatalf("Expected success to be true, got false")
	}
	t.Logf("Successfully added products to the shop")
}

// Test for GET /api/users/{userId}
func TestGetUserByID(t *testing.T) {
	userID := "114639e0-6e0d-420f-998f-a52bb9ecc145"

	resp, err := sendGetRequest("/api/users/" + userID)
	if err != nil {
		t.Fatalf("sendGetRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}

	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}

	var user User
	if err := json.Unmarshal(bodyBytes, &user); err != nil {
		t.Fatalf("Failed to unmarshal response body into User: %v", err)
	}

	if user.ID != userID {
		t.Fatalf("Expected user ID %s, got %s", userID, user.ID)
	}

	t.Logf("Retrieved user: %+v", user)
}

// Test for GET /api/users/{userId}/purchase_histories
func TestGetUserPurchaseHistories(t *testing.T) {
	userID := "114639e0-6e0d-420f-998f-a52bb9ecc145"

	resp, err := sendGetRequest("/api/users/" + userID + "/purchase_histories")
	if err != nil {
		t.Fatalf("sendGetRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}

	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}

	var purchaseHistories []PurchaseHistory
	if err := json.Unmarshal(bodyBytes, &purchaseHistories); err != nil {
		t.Fatalf("Failed to unmarshal response body into PurchaseHistories: %v", err)
	}

	for _, ph := range purchaseHistories {
		if ph.UserID != userID {
			t.Fatalf("Expected purchase history with user ID %s, got %s", userID, ph.UserID)
		}
	}

	t.Logf("Retrieved %d purchase histories for user %s", len(purchaseHistories), userID)
}

// Not Implemented
// Test for POST /api/shops/{shopId}/products/{productId}/caption
func TestUpdateProductCaption(t *testing.T) {
	payload := map[string]interface{}{
		"caption": "期間限定セール！このソファが10%オフ！",
	}

	resp, err := sendPostRequest("/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/products/B71B742C-3459-4671-86DE-4112A541909B/caption", payload)
	if err != nil {
		t.Fatalf("sendPostRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var response struct {
		Success bool `json:"success"`
	}
	if err := json.Unmarshal(bodyBytes, &response); err != nil {
		t.Fatalf("Failed to unmarshal response body: %v", err)
	}
	if !response.Success {
		t.Fatalf("Expected success to be true, got false")
	}
	t.Logf("Successfully updated product caption")
}

// Not Implemented
// Test for POST /api/shops/{shopId}/products/{productId}/sold_out
func TestProductSoldOut(t *testing.T) {
	resp, err := sendPostRequest("/api/shops/80BEAB1C-E47C-4B94-B1F5-F82941C6C7F7/products/B71B742C-3459-4671-86DE-4112A541909B/sold_out", nil)
	if err != nil {
		t.Fatalf("sendPostRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var response struct {
		Success bool `json:"success"`
	}
	if err := json.Unmarshal(bodyBytes, &response); err != nil {
		t.Fatalf("Failed to unmarshal response body: %v", err)
	}
	if !response.Success {
		t.Fatalf("Expected success to be true, got false")
	}
	t.Logf("Successfully notified owner about sold out product")
}

// Not Implemented
// Test for GET /api/recommendations/today
func TestRecommendationsToday(t *testing.T) {
	resp, err := sendGetRequest("/api/recommendations/today")
	if err != nil {
		t.Fatalf("sendGetRequest error: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		t.Fatalf("Expected status code 200, got %d", resp.StatusCode)
	}
	bodyBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		t.Fatalf("Failed to read response body: %v", err)
	}
	var recommendations []Recommendation
	if err := json.Unmarshal(bodyBytes, &recommendations); err != nil {
		t.Fatalf("Failed to unmarshal response body into recommendations: %v", err)
	}
	t.Logf("Number of recommendations: %d", len(recommendations))
}
