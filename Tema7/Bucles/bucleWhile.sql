DELIMITER $$
USE practica $$

DROP PROCEDURE IF EXISTS whileImpar $$
CREATE PROCEDURE whileImpar()
BEGIN
	DECLARE cont INT;
	SET cont = 1;
	loopWhile: WHILE cont < 10 DO
		SELECT CONCAT(cont, ' ES IMPAR') AS RESULTADO;
		SET cont = cont + 2;
	END WHILE loopWhile;
END; $$

DELIMITER ;
