package model

type ShopProductMaps struct {
	ID        int `db:"id"`
	ShopID    int `db:"shop_id"`
	ProductID int `db:"product_id"`
}

func (repo *Repository) GetShopProductMapsByShopID(shopID int) ([]ShopProductMaps, error) {
	var shopProductMaps []ShopProductMaps
	err := repo.db.Select(&shopProductMaps, "SELECT * FROM shop_product_maps WHERE shop_id = ?", shopID)
	return shopProductMaps, err
}

func (repo *Repository) GetShopProductMapsByProductID(productID int) ([]ShopProductMaps, error) {
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
