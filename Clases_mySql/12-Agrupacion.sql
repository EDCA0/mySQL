SELECT email, 
    if(email LIKE "%@gmail.com", 1, 0) AS gmail,
    if(email LIKE "%@hotmail.com", 1, 0)  AS hotmail
FROM clients 
    ORDER BY RAND()    
    LIMIT 30;

/* Case */

CASE 
    WHEN [par] THEN "par"
    WHEN [impar] THEN "no es par"
    WHEN [par] THEN "par"


/* Usando case */

SELECT email,
    CASE
        WHEN email LIKE "%@gmail.com" THEN "gmail"
        WHEN email LIKE "%@hotmail.com" THEN "hotmail"
        WHEN email LIKE "%@yahoo.com" THEN "yahoo"
        ELSE "Otro proveedor de correo"
        END AS proveedor
FROM clients ORDER BY RAND() LIMIT 30;


/* Agrupacion */

SELECT      
    CASE
        WHEN email LIKE "%@gmail.com" THEN "gmail"
        WHEN email LIKE "%@hotmail.com" THEN "hotmail"
        WHEN email LIKE "%@yahoo.com" THEN "yahoo"
        ELSE "Otro proveedor de correo"
    END AS proveedor,
    COUNT(*) as total_clients
FROM clients
WHERE name LIKE "a%"
GROUP BY proveedor
HAVING total_clients < 100
ORDER BY proveedor ASC;
