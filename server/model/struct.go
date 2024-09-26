package model

// import "time"

// // Users テーブルの構造体
// type User struct {
// 	ID           string    `db:"id"`
// 	Username     string    `db:"username"`
// 	Email        string    `db:"email"`
// 	PasswordHash string    `db:"password_hash"`
// 	CreatedAt    time.Time `db:"created_at"`
// 	UpdatedAt    time.Time `db:"updated_at"`
// }

// // Shops テーブルの構造体
// type Shop struct {
// 	ID             string    `db:"id"`
// 	Name           string    `db:"name"`
// 	OwnerID        string    `db:"owner_id"`
// 	Description    string    `db:"description"`
// 	HeaderImageURL string    `db:"header_image_url"`
// 	CreatedAt      time.Time `db:"created_at"`
// 	UpdatedAt      time.Time `db:"updated_at"`
// }

// // Products テーブルの構造体
// type Product struct {
// 	ID          string    `db:"id"`
// 	ShopID      string    `db:"shop_id"`
// 	Name        string    `db:"name"`
// 	Description string    `db:"description"`
// 	Price       float64   `db:"price"`
// 	Stock       int       `db:"stock"`
// 	ImageURL    string    `db:"image_url"`
// 	CreatedAt   time.Time `db:"created_at"`
// 	UpdatedAt   time.Time `db:"updated_at"`
// }

// // ProductCaptions テーブルの構造体
// type ProductCaption struct {
// 	ID        string    `db:"id"`
// 	ProductID string    `db:"product_id"`
// 	Caption   string    `db:"caption"`
// 	CreatedAt time.Time `db:"created_at"`
// 	UpdatedAt time.Time `db:"updated_at"`
// }

// // Follows テーブルの構造体
// type Follow struct {
// 	ID        string    `db:"id"`
// 	UserID    string    `db:"user_id"`
// 	ShopID    string    `db:"shop_id"`
// 	CreatedAt time.Time `db:"created_at"`
// }

// // Comments テーブルの構造体
// type Comment struct {
// 	ID        string    `db:"id"`
// 	ShopID    string    `db:"shop_id"`
// 	UserID    string    `db:"user_id"`
// 	Content   string    `db:"content"`
// 	CreatedAt time.Time `db:"created_at"`
// }

// // Recommendations テーブルの構造体
// type Recommendation struct {
// 	ID        string    `db:"id"`
// 	UserID    string    `db:"user_id"`
// 	ShopID    *string   `db:"shop_id,omitempty"`
// 	ProductID *string   `db:"product_id,omitempty"`
// 	CreatedAt time.Time `db:"created_at"`
// }

// // Notifications テーブルの構造体
// type Notification struct {
// 	ID        string    `db:"id"`
// 	UserID    string    `db:"user_id"`
// 	Message   string    `db:"message"`
// 	IsRead    bool      `db:"is_read"`
// 	CreatedAt time.Time `db:"created_at"`
// }

// // SoldOutNotifications テーブルの構造体
// type SoldOutNotification struct {
// 	ID        string    `db:"id"`
// 	ProductID string    `db:"product_id"`
// 	ShopID    string    `db:"shop_id"`
// 	UserID    string    `db:"user_id"`
// 	CreatedAt time.Time `db:"created_at"`
// }

// // PurchaseHistory テーブルの構造体
// type PurchaseHistory struct {
// 	ID              string    `db:"id"`
// 	UserID          string    `db:"user_id"`
// 	ProductID       string    `db:"product_id"`
// 	Quantity        int       `db:"quantity"`
// 	PriceAtPurchase float64   `db:"price_at_purchase"`
// 	PurchaseDate    time.Time `db:"purchase_date"`
// 	CreatedAt       time.Time `db:"created_at"`
// }
