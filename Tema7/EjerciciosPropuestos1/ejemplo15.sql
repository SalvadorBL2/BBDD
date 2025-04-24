/*
Ejercicio propuesto: Ejemplo 15
Crea una rutina que dado el número de un almacén devuelva cuántas cajas hay en dicho almacén.
*/

DELIMITER $$

USE EjerciciosPropuestos $$
DROP FUNCTION IF EXISTS cuantasCajas $$
CREATE FUNCTION cuantasCajas(numAlmacen INT)
RETURNS INT
BEGIN
	DECLARE cuenta INT;
	SET cuenta = (
		SELECT COUNT(numReferencia)
		FROM cajas
		WHERE almacen = numAlmacen
		);
	RETURN cuenta;
END; $$

DELIMITER ;


