package model

import (
	"time"

	"github.com/google/uuid"
)

type PurchaseHistory struct {
	ID              uuid.UUID `db:"id"`
	UserID          uuid.UUID `db:"user_id"`
	ProductID       uuid.UUID `db:"product_id"`
	ProductName     string    `db:"product_name"`
	Quantity        int       `db:"quantity"`
	PriceAtPurchase float64   `db:"price_at_purchase"`
	PurchaseDate    time.Time `db:"purchase_date"`
	ProductImageUrl string    `db:"image_url"`
}

func (repo *Repository) GetPurchaseHistoriesByUserID(userID uuid.UUID) ([]PurchaseHistory, error) {
	var purchases []PurchaseHistory
	err := repo.db.Select(&purchases, "SELECT purchase_history.id, purchase_history.user_id, purchase_history.product_id, products.name AS product_name, purchase_history.quantity, purchase_history.price_at_purchase, purchase_history.purchase_date, products.image_url FROM purchase_history JOIN products ON purchase_history.product_id = products.id WHERE purchase_history.user_id = ?", userID)
	return purchases, err
}

func (repo *Repository) CreatePurchase(id string, userID string, productID string, quantity int, priceAtPurchase float64, purchaseDate time.Time, createdAt time.Time) error {
	_, err := repo.db.Exec("INSERT INTO purchase_history (id, user_id, product_id, quantity, price_at_purchase, purchase_date, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)",
		id, userID, productID, quantity, priceAtPurchase, purchaseDate, createdAt)
	return err
}
