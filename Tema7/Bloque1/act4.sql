-- Crea una rutina que devuelva el valor al cuadrado de un número dado

USE practica;
DELIMITER $$

DROP PROCEDURE IF EXISTS numCuadrado $$
CREATE PROCEDURE numCuadrado(num INT)
BEGIN
	DECLARE resultado INT;
	SET resultado = num * num;
	SELECT resultado AS NÚMERO_AL_CUADRADO;
END; $$

DELIMITER ;


-- EJEMPLO CON FUNCIÓN (ES LO CORRECTO)

DELIMITER $$
DROP FUNCTION IF EXISTS pruebaCuadrado $$
CREATE FUNCTION pruebaCuadrado (num1 INT)
RETURNS INT
RETURN num1 * num1;

DELIMITER ;
