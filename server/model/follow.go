package model

import (
	"time"

	"github.com/google/uuid"
)

type Follow struct {
	ID        uuid.UUID `db:"id"`
	UserID    uuid.UUID `db:"user_id"`
	ShopID    uuid.UUID `db:"shop_id"`
	CreatedAt time.Time `db:"created_at"`
}

func (repo *Repository) GetFollowsByUserID(userID uuid.UUID) ([]Follow, error) {
	var follows []Follow
	err := repo.db.Select(&follows, "SELECT * FROM follows WHERE user_id = ?", userID)
	return follows, err
}

func (repo *Repository) GetFollowsByShopID(shopID uuid.UUID) ([]Follow, error) {
	var follows []Follow
	err := repo.db.Select(&follows, "SELECT * FROM follows WHERE shop_id = ?", shopID)
	return follows, err
}

func (repo *Repository) CreateFollow(follow Follow) error {
	_, err := repo.db.Exec("INSERT INTO follows (id, user_id, shop_id, created_at) VALUES (?, ?, ?, ?)",
		follow.ID, follow.UserID, follow.ShopID, follow.CreatedAt)
	return err
}

func (repo *Repository) DeleteFollow(follow Follow) error {
	_, err := repo.db.Exec("DELETE FROM follows WHERE user_id = ? AND shop_id = ?", follow.UserID, follow.ShopID)
	return err
}
