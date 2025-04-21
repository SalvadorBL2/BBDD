-- Crear una rutina que dependiendo de la edad de la persona, la inserte en su tabla correspondiente: si es mayor de 18 la inserte en la tabla adultos si no en la tabla peques.

USE practica;
DELIMITER $$

DROP PROCEDURE IF EXISTS mayorEdad $$
CREATE PROCEDURE mayorEdad(edad INT)
BEGIN
	IF edad >= 18 THEN
		INSERT INTO adultos VALUES (id);
	ELSE
		INSERT INTO peques VALUES (id);
	END IF; 
END; $$

DELIMITER ;


