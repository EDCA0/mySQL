CREATE TABLE IF NOT EXISTS bills (
    bill_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    client_id INT UNSIGNED NOT NULL ,
    total FLOAT,
    status ENUM('open', 'paid', 'lost') NOT NULL DEFAULT 'open',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (client_id) references clients(client_id)
);

INSERT INTO bills(client_id, total) VALUES (10, 15.00); //> ERROR 1452 (23000): Cannot add or UPDATE 
a child row: a FOREIGN key constraint fails (`Prueba_Clase_Platzi1`.`bills`, CONSTRAINT `bills_ibfk_1` F
OREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`))

INSERT INTO clients(client_id, name, email) VALUES (10, 'eduadro', 'eduardo@mail.com'); //> OK

CREATE TABLE IF NOT EXISTS bills (
    bill_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    client_id INT UNSIGNED NOT NULL ,
    total FLOAT,
    status ENUM('open', 'paid', 'lost') NOT NULL DEFAULT 'open',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);