DELIMITER $$
USE practica $$

DROP PROCEDURE IF EXISTS numeroImpar $$
CREATE PROCEDURE numeroImpar()
BEGIN
	DECLARE i INT;
	SET i = 0;
	numeroImpar: REPEAT
		SET i = i + 1;
		IF mod(i,2) <> 0 THEN /* IMPAR */
		SELECT CONCAT(i, ' es impar.') AS RESULTADO;
		END IF;
		UNTIL i >= 10
	END REPEAT numeroImpar;
	
END; $$

DELIMITER ; 

