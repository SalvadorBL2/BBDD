DELIMITER $$

DROP PROCEDURE IF EXISTS ejemplo22Repeat $$
CREATE PROCEDURE ejemplo22Repeat()
BEGIN
	SET final = 0, cont = 0;
	OPEN cursor22
	lCursor22: REPEAT
		FETCH cursor22 INTO temp;
		IF final = 1 THEN			-- CON REPEAT
			LEAVE l_cursor22;
		END IF;
		SET cont = cont + 1;
	UNTIL final
	END REPEAT l_cursor22;
	CLOSE cursor22;
END; $$

DELIMITER ;


