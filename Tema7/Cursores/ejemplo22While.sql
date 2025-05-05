DELIMITER $$

DROP PROCEDURE IF EXISTS ejemplo22Repeat $$
CREATE PROCEDURE ejemplo22Repeat()
BEGIN
	SET final = 0, cont = 0;
	OPEN cursor22
	lCursor22: WHILE (final = 0) DO
		FETCH cursor22 INTO temp;
		IF final = 1 THEN
			LEAVE l_cursor22;		-- CON WHILE
		END IF;
		SET cont = cont + 1;
	END WHILE l_cursor22;
	CLOSE cursor22;
END; $$

DELIMITER ;
