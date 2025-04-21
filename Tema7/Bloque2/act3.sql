-- Crea una rutina que reciba un año y devuelva 1 si es bisiesto y 0 si no lo es. (Un año es bisiesto si es divisible por 4, excepto si es divisible por 100 pero no por 400).

DELIMITER $$
USE practica $$

DROP FUNCTION IF EXISTS año $$
CREATE FUNCTION año(num INT)
RETURNS INT
BEGIN
	DECLARE resultado INT;
	IF num % 4 = 0 AND num % 100 = 0 AND num % 400 = 0 THEN
		SET resultado = 1;
	ELSE
		SET resultado = 0;
	END IF;
	RETURN resultado;
END; $$

DELIMITER ;

/*
1. Si el año es uniformemente divisible por 4, vaya al paso 2. De lo contrario, vaya al paso 5.
2. Si el año es uniformemente divisible por 100, vaya al paso 3. De lo contrario, vaya al paso 4.
3. Si el año es uniformemente divisible por 400, vaya al paso 4. De lo contrario, vaya al paso 5.
4. El año es un año bisiesto (tiene 366 días).
5. El año no es un año bisiesto (tiene 365 días).

	DECLARE resultado INT;
	IF num % 4 = 0 THEN
		IF num % 100 = 0 THEN
			IF num % 400 = 0 THEN
				SET resultado = 1;
			ELSE
				SET resultado = 0;
			END IF;
		ELSE
			SET resultado = 1;
		END IF;
	ELSE
		SET resultado = 0;
	END IF;






