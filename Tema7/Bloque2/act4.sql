/* Crea una rutina que reciba dos fechas y devuelva la cantidad de días entre ellas.
- Mejora la rutina para que muestre un mensaje que indique cuántos días hay entre las dos fechas, por ejemplo: “Hay Z días entre la fecha A y la fecha B”. */

DELIMITER $$
USE practica $$

DROP FUNCTION IF EXISTS cuantosDias $$
CREATE FUNCTION cuantosDias(F1 DATE, F2 DATE)
RETURNS INT
BEGIN
IF F1 < F2 THEN
	RETURN DATEDIFF(F2, F1);
ELSE
	RETURN DATEDIFF(F1, F2);
END IF;
END; $$

DELIMITER ;
