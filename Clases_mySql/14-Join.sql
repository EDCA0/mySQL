SELECT p.product_id AS pid, p.name, p.price, i.investment,
ROUND(i.investment / p.price) AS inv_calculated, p.stock,
IF (ROUND(i.investment / p.price) = p.stock, "Perfecto", "ERROR") AS status
FROM investment AS i
    LEFT JOIN products AS p
        ON p.product_id = i.product_id
WHERE investment > 100000
    AND investment_id % 10 = 0
LIMIT 1\G