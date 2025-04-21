CREATE TABLE productos (
 id INT PRIMARY KEY AUTO_INCREMENT,
 nombre VARCHAR(255) NOT NULL,
 stock INT NOT NULL
)ENGINE=INNODB;

/*Usuario1*/

START TRANSACTION;

SELECT stock
FROM productos
WHERE id=1;

UPDATE productos
SET stock=stock-5
WHERE id=1;



COMMIT;



