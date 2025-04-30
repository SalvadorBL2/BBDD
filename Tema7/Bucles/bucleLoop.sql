DELIMITER $$
USE practica $$

DROP PROCEDURE IF EXISTS ejemploLoop $$
CREATE PROCEDURE ejemploLoop()
BEGIN
	DECLARE cont INT;
	SET cont = 0;
	loopLabel: LOOP
		INSERT INTO t VALUES (cont);
		SET cont = cont + 1;
		IF cont >= 5 THEN
			LEAVE loopLabel;
		END IF;
	END LOOP;
END; $$

DELIMITER ;


