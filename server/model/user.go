package model

import (
	"time"

	"github.com/google/uuid"
)

type User struct {
	ID           uuid.UUID `db:"id"`
	Username     string    `db:"username"`
	Email        string    `db:"email"`
	PasswordHash string    `db:"password_hash"`
	CreatedAt    time.Time `db:"created_at"`
	UpdatedAt    time.Time `db:"updated_at"`
}

func (repo *Repository) GetUser(id uuid.UUID) (User, error) {
	var user User
	err := repo.db.Get(&user, "SELECT * FROM users WHERE id = ?", id)
	return user, err
}

func (repo *Repository) CreateUser(user User) error {
	_, err := repo.db.Exec("INSERT INTO users (id, username, email, password_hash, created_at, updated_at) VALUES (?, ?, ?, ?, ?, ?)",
		user.ID, user.Username, user.Email, user.PasswordHash, user.CreatedAt, user.UpdatedAt)
	return err
}
