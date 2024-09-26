package model

import (
	"time"

	"github.com/google/uuid"
)

type PurchaseHistory struct {
	ID              uuid.UUID `db:"id"`
	UserID          uuid.UUID `db:"user_id"`
	ProductID       uuid.UUID `db:"product_id"`
	Quantity        int       `db:"quantity"`
	PriceAtPurchase float64   `db:"price_at_purchase"`
	PurchaseDate    time.Time `db:"purchase_date"`
	CreatedAt       time.Time `db:"created_at"`
}

func (repo *Repository) GetPurchaseHistoryByUserID(userID uuid.UUID) ([]PurchaseHistory, error) {
	var purchases []PurchaseHistory
	err := repo.db.Select(&purchases, "SELECT * FROM purchase_history WHERE user_id = ?", userID)
	return purchases, err
}

func (repo *Repository) CreatePurchase(purchase PurchaseHistory) error {
	_, err := repo.db.Exec("INSERT INTO purchase_history (id, user_id, product_id, quantity, price_at_purchase, purchase_date, created_at) VALUES (?, ?, ?, ?, ?, ?, ?)",
		purchase.ID, purchase.UserID, purchase.ProductID, purchase.Quantity, purchase.PriceAtPurchase, purchase.PurchaseDate, purchase.CreatedAt)
	return err
}
