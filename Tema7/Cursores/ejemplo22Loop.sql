/*Mostrar el nº de noticias
DECLARAR CURSOR*/

DELIMITER $$
DROP PROCEDURE IF EXISTS ejemplo22 $$
CREATE PROCEDURE ejemplo22()
BEGIN
	DECLARE temp VARCHAR(200);
	DECLARE final BOOLEAN;
	DECLARE cont INT;
	DECLARE cursor22 CURSOR FOR
		SELECT nombre
		FROM noticias;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET final = 1;
	SET final = 0, cont = 0;
	OPEN cursor22;
	lEjemplo22: loop
		fetch cursor22 INTO temp;
		IF final = 1 THEN
			LEAVE lEjemplo22;
		END IF;
		SET cont = cont + 1;
	END LOOP lEjemplo22;
	SELECT cont AS NUMERO_NOTICIAS;
END; $$

DELIMITER ;
