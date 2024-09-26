-- +goose Up
CREATE TABLE `item` (
    `id` VARCHAR(36) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `price` VARCHAR(36),
    `condition` VARCHAR(36),
    `seller_id` VARCHAR(36),
    `shipping_payer` VARCHAR(255),
    `status` TEXT,
    `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `url` TEXT,
    PRIMARY KEY (`id`)
);
