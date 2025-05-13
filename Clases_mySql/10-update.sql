UPDATE TABLE [table]
SET [column = nuevo_valor, ...]
WHERE [condicion, ...];

UPDATE clients 
SET phone_number = "+525512345678"
WHERE client_id = 10
LIMIT 1;

UPDATE clients
SET phone_number = Null
WHERE
    name LIKE "grayce%"
    OR name LIKE "claire%"
LIMIT 10 

SELECT * 
FROM clients
WHERE
    name LIKE "claire%"
    OR name LIKE "grayce%"


UPDATE clients
SET phone_number = Null
WHERE
    (name LIKE "grayce%"
    OR name LIKE "claire%")
    AND phone_number IS NOT NULL
LIMIT 10 

UPDATE products 
SET stock = ROUND(100 * RAND());


UPDATE products
SET stock = stock - 3 
WHERE product_id = 8;