package model

import (
	"fmt"
	"os"

	"github.com/go-sql-driver/mysql"
)

func getEnv(key, defaultValue string) string {
	v, ok := os.LookupEnv(key)
	if !ok {
		return defaultValue
	}

	return v
}

func MySQL() *mysql.Config {
	c := mysql.NewConfig()

	c.User = getEnv("DB_USER", "root")
	c.Passwd = getEnv("DB_PASS", "pass")
	c.Net = getEnv("DB_NET", "tcp")
	c.Addr = fmt.Sprintf(
		"%s:%s",
		getEnv("DB_HOST", "localhost"),
		getEnv("DB_PORT", "3306"),
	)
	c.DBName = getEnv("DB_NAME", "app")
	c.Collation = "utf8mb4_general_ci"
	c.AllowNativePasswords = true
	c.ParseTime = true

	return c
}
