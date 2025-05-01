| product_id  | int unsigned | NO   | PRI | NULL              | auto_increment                                |
| name        | varchar(100) | NO   |     | NULL              |                                               |
| slug        | varchar(200) | NO   | UNI | NULL              |                                               |
| description | text         | YES  |     | NULL              |                                               |
| created_at  | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
| updated_at  | timestamp    | NO   |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on UPDATE CURRENT_TIMESTAMP |
+-------------+--------------+------+-----+-------------------+-----------------------------------------------+

INSERT IGNORE INTO products(name, slug) VALUES ("Boligrafo azul", "boligrafo-azul")
    ON DUPLICATE KEY UPDATE description = price;


INSERT INTO products(name, slug) VALUES ("Boligrafo roja", "boligrafo-roja");

INSERT INTO products(name, slug, description) VALUES ("Boligrafo negra", "boligrafo-negra", "Una pluma para vender"),
("Boligrafo rosa", "boligrafo-rosa", "Una pluma para vender");
 