SELECT * //Trae todo 

SELECT column1, column2
FROM tabla
WHERE
    EXPR1 && EXPR2 || EXPR3


SELECT name
FROM clients
WHERE rand() >.0.1 AND FALSE;

SELECT name
FROM clients
WHERE 
    name LIKE "Mrs.%"
    OR
    name LIKE "%II"


SELECT name
FROM products
WHERE price * 10 > 5000

SELECT * FROM bill_products
WHERE discount > 0;

SELECT * 
FROM bill_products
WHERE
    date_added BETWEEN "2024-09-24 06:32:34" AND "2024-09-30"
    AND product_id IN (800, 900);
