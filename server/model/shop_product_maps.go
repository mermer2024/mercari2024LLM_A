package model

import "github.com/google/uuid"

type ShopProductMaps struct {
	ID        uuid.UUID `db:"id"`
	ShopID    uuid.UUID `db:"shop_id"`
	ProductID uuid.UUID `db:"product_id"`
}

func (repo *Repository) GetShopProductMapsByShopID(shopID uuid.UUID) ([]ShopProductMaps, error) {
	var shopProductMaps []ShopProductMaps
	err := repo.db.Select(&shopProductMaps, "SELECT * FROM shop_product_maps WHERE shop_id = ?", shopID)
	return shopProductMaps, err
}

func (repo *Repository) GetShopListByProductID(productID uuid.UUID) ([]Shop, error) {
	var shops []Shop
	err := repo.db.Select(&shops, "SELECT * FROM shops WHERE id IN (SELECT shop_id FROM shop_product_maps WHERE product_id = ?)", productID)
	return shops, err
}

func (repo *Repository) GetProductListByShopID(shopID uuid.UUID) ([]Product, error) {
	var products []Product
	err := repo.db.Select(&products, "SELECT * FROM products WHERE id IN (SELECT product_id FROM shop_product_maps WHERE shop_id = ?)", shopID)
	return products, err
}

func (repo *Repository) GetShopProductMapsByProductID(productID uuid.UUID) ([]ShopProductMaps, error) {
	var shopProductMaps []ShopProductMaps
	err := repo.db.Select(&shopProductMaps, "SELECT * FROM shop_product_maps WHERE product_id = ?", productID)
	return shopProductMaps, err
}

func (repo *Repository) CreateShopProductMap(shopProductMap ShopProductMaps) error {
	_, err := repo.db.Exec("INSERT INTO shop_product_maps (shop_id, product_id) VALUES (?, ?)",
		shopProductMap.ShopID, shopProductMap.ProductID)
	return err
}

func (repo *Repository) DeleteShopProductMap(shopProductMap ShopProductMaps) error {
	_, err := repo.db.Exec("DELETE FROM shop_product_maps WHERE shop_id = ? AND product_id = ?", shopProductMap.ShopID, shopProductMap.ProductID)
	return err
}

func (repo *Repository) DeleteShopProductMapByShopID(shopID int) error {
	_, err := repo.db.Exec("DELETE FROM shop_product_maps WHERE shop_id = ?", shopID)
	return err
}

func (repo *Repository) DeleteShopProductMapByProductID(productID int) error {
	_, err := repo.db.Exec("DELETE FROM shop_product_maps WHERE product_id = ?", productID)
	return err
}

func (repo *Repository) UpdateShopDescription(shopID uuid.UUID, description string) error {
	_, err := repo.db.Exec("UPDATE shops SET description = ? WHERE id = ?", description, shopID)
	return err
}

func (repo *Repository) UpdateShopCaption(shopID uuid.UUID, caption string) error {
	_, err := repo.db.Exec("UPDATE shops SET caption = ? WHERE id = ?", caption, shopID)
	return err
}
