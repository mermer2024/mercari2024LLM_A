package model

import (
	"log"
	"strings"
	"time"

	"github.com/google/uuid"
)

type Shop struct {
	ID             uuid.UUID `db:"id"`
	Name           string    `db:"name"`
	OwnerID        uuid.UUID `db:"owner_id"`
	Description    string    `db:"description"`
	Caption        string    `db:"caption"`
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

func (repo *Repository) EditShop(shop Shop) error {
	_, err := repo.db.Exec("UPDATE shops SET name = ?, description = ?, header_image_url = ?, updated_at = ? WHERE id = ?",
		shop.Name, shop.Description, shop.HeaderImageURL, shop.UpdatedAt, shop.ID)
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

	// Convert UUIDs to strings
	stringShopIDs := make([]string, len(shopIDs))
	for i, id := range shopIDs {
		stringShopIDs[i] = id.String()
	}

	// Create placeholders for the query
	placeholders := make([]string, len(stringShopIDs))
	for i := range stringShopIDs {
		placeholders[i] = "?"
	}

	// Construct the SQL query
	query := "SELECT id, name, owner_id, description, header_image_url, created_at, updated_at FROM shops WHERE id IN (" + strings.Join(placeholders, ", ") + ")"

	// Execute the query with the stringShopIDs as arguments
	err := repo.db.Select(&shops, query, convertToInterfaceSlice(stringShopIDs)...)
	if err != nil {
		log.Println(err)
		return nil, err
	}

	return shops, nil
}

// convertToInterfaceSlice converts a slice of strings to a slice of empty interfaces
func convertToInterfaceSlice(slice []string) []interface{} {
	result := make([]interface{}, len(slice))
	for i, v := range slice {
		result[i] = v
	}
	return result
}

func (repo *Repository) GetShopsAll() ([]Shop, error) {
	var shops []Shop
	err := repo.db.Select(&shops, "SELECT * FROM shops")
	log.Println(err)
	return shops, err
}

func (repo *Repository) GetShopsAllNoDescription() ([]Shop, error) {
	var shops []Shop
	err := repo.db.Select(&shops, "SELECT * FROM shops WHERE description IS NULL")
	return shops, err
}
