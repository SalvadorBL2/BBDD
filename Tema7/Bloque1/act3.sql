-- Crea una rutina que devuelva el mayor de tres números pasados como parámetros.

USE practica;
DELIMITER $$

DROP PROCEDURE IF EXISTS cualMayor $$
CREATE PROCEDURE cualMayor(num1 INT,num2 INT,num3 INT)
BEGIN
	CASE
		WHEN num1 > num2 AND num1 > num3 THEN
			SELECT 'num1 es mayor que los demás.' AS RESULTADO;
		WHEN num2 > num1 AND num2 > num3 THEN
			SELECT 'num2 es mayor que los demás.' AS RESULTADO;
		WHEN num3 > num2 AND num3 > num1 THEN
			SELECT 'num3 es mayor que los demás.' AS RESULTADO;
		ELSE
			SELECT 'Hay al menos un número igual que otro.' AS ERROR;
	END CASE;
END; $$

DELIMITER ;
























/*
DROP PROCEDURE IF EXISTS cualMayor $$
CREATE PROCEDURE cualMayor(num1 INT,num2 INT,num3 INT)
BEGIN
	IF num1 > num2 THEN
		IF num1 > num3 THEN
			SELECT 'num1 es mayor que num2 y num3';
		END IF;
	END IF;
END; $$

DELIMITER ;
*/


