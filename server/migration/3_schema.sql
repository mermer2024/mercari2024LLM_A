-- +goose Up

CREATE TABLE `shop_product_maps` (
    `id` VARCHAR(36) NOT NULL,
    `shop_id` VARCHAR(36) NOT NULL,
    `product_id` VARCHAR(36) NOT NULL
);
