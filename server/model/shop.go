package model

import (
	"time"

	"github.com/google/uuid"
)

type Shop struct {
	ID             uuid.UUID `db:"id"`
	Name           string    `db:"name"`
	OwnerID        uuid.UUID `db:"owner_id"`
	Description    string    `db:"description"`
	HeaderImageURL string    `db:"header_image_url"`
	CreatedAt      time.Time `db:"created_at"`
	UpdatedAt      time.Time `db:"updated_at"`
}

func (repo *Repository) GetShop(id uuid.UUID) (Shop, error) {
	var shop Shop
	err := repo.db.Get(&shop, "SELECT * FROM shops WHERE id = ?", id)
	return shop, err
}

func (repo *Repository) CreateShop(shop Shop) error {
	_, err := repo.db.Exec("INSERT INTO shops (id, name, owner_id, description, header_image_url, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?)",
		shop.ID, shop.Name, shop.OwnerID, shop.Description, shop.HeaderImageURL, shop.CreatedAt, shop.UpdatedAt)
	return err
}

func (repo *Repository) EditProductCaption(id uuid.UUID, caption string) error {
	_, err := repo.db.Exec("UPDATE products SET caption = ? WHERE id = ?", caption, id)
	return err
}

func (repo *Repository) GetShopDescriptionsAll() ([]Shop, error) {
	var idAndDescriptions []Shop
	err := repo.db.Select(&idAndDescriptions, "SELECT id, description FROM shops")
	if err != nil {
		return nil, err
	}
	return idAndDescriptions, nil
}

func (repo *Repository) GetShopsByIDs(shopIDs []uuid.UUID) ([]Shop, error) {
	var shops []Shop
	err := repo.db.Select(&shops, "SELECT * FROM shops WHERE id IN (?)", shopIDs)
	return shops, err
}
