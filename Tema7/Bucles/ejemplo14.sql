DELIMITER $$
USE practica $$

DROP PROCEDURE IF EXISTS ejem14 $$
CREATE PROCEDURE ejem14()
BEGIN 
DECLARE i INT DEFAULT 1;

-- Crear una tabla con 2 campos: id y datos.
DROP TABLE IF EXISTS tablaEjemplo14;
CREATE TABLE tablaEjemplo14 (
	id INT PRIMARY KEY,
	datos VARCHAR(30)
)ENGINE=InnoDB;

-- Insertar en los 10 primeros registros: 1 registro 1.
WHILE (i <= 10) DO
INSERT INTO tablaEjemplo14 VALUES (i, CONCAT('Registro ', i));
SET i = i + 1;
END WHILE;

-- Actualizar los cinco últimos registros cambiándolos a “fila actualizada” (con repeat)
actuali: REPEAT
