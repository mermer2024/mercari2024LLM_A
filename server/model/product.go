package model

import (
	"time"

	"github.com/google/uuid"
)

type Product struct {
	ID          uuid.UUID `db:"id"`
	Name        string    `db:"name"`
	Description string    `db:"description"`
	Price       float32   `db:"price"`
	Stock       int       `db:"stock"`
	ImageURL    string    `db:"image_url"`
	CreatedAt   time.Time `db:"created_at"`
	UpdatedAt   time.Time `db:"updated_at"`
}

func (repo *Repository) GetProduct(id uuid.UUID) (Product, error) {
	var product Product
	err := repo.db.Get(&product, "SELECT * FROM products WHERE id = ?", id)
	return product, err
}

// func (repo *Repository) CreateProduct(product Product) error {
// 	tx := repo.db.MustBegin()
// 	_, err := tx.Exec("INSERT INTO products (id, name, description, price, stock, image_url, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
// 		product.ID, product.Name, product.Description, product.Price, product.Stock, product.ImageURL, product.CreatedAt, product.UpdatedAt)
// 	if err != nil {
// 		tx.Rollback()
// 		return err
// 	}
// 	_, err = tx.Exec("INSERT INTO shop_product_maps (shop_id, product_id) VALUES (?, ?)",
// 		product.ShopID, product.ID)
// 	if err != nil {
// 		tx.Rollback()
// 		return err
// 	}
// 	return tx.Commit()
// }

func (repo *Repository) BulkCreateProducts(products []Product) error {
	tx := repo.db.MustBegin()
	for _, product := range products {
		_, err := tx.Exec("INSERT INTO products (id, name, description, price, stock, image_url, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
			product.ID, product.Name, product.Description, product.Price, product.Stock, product.ImageURL, product.CreatedAt, product.UpdatedAt)
		if err != nil {
			tx.Rollback()
			return err
		}
	}
	return tx.Commit()
}

func (repo *Repository) BulkCreateProductsWithShopId(products []Product, shopID uuid.UUID, mapsID uuid.UUID) error {
	tx := repo.db.MustBegin()
	for _, product := range products {
		_, err := tx.Exec("INSERT INTO products (id, name, description, price, stock, image_url, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
			product.ID, product.Name, product.Description, product.Price, product.Stock, product.ImageURL, product.CreatedAt, product.UpdatedAt)
		if err != nil {
			tx.Rollback()
			return err
		}
		_, err = tx.Exec("INSERT INTO shop_product_maps (id, shop_id, product_id) VALUES (?, ?, ?)",
			mapsID, shopID, product.ID)
		if err != nil {
			tx.Rollback()
			return err
		}
	}
	return tx.Commit()
}
