CREATE TABLE IF NOT EXISTS investment (
    investment_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_id INT UNSIGNED NOT NULL,
    investment INT NOT NULL DEFAULT 0
);






INSERT INTO investment(product_id, investment)
SELECT product_id, stock * price FROM products;