SELECT [columnas, variables, operaciones, funciones]
FROM [tabla, tabla, ...]
WHERE condicion
GROUP BY
HAVING
ORDER BY
LIMIT

SELECT product_id, name, price, stock, 
    ROUND(price * stock,2) AS total
FROM products
WHERE price <= 100
    AND stock > 90
ORDER BY stock desc;

SELECT product_id, name, price, stock, 
    ROUND(price * stock,2) AS total
FROM products
ORDER BY stock desc
LIMIT 10;