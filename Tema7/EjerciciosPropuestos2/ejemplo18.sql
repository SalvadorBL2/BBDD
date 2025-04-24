/*
EJEMPLO 18:
Dada la tabla CAJAS, escribe una rutina que permita borrar una caja cuyo número de
referencia se pasará como parámetro. Si la caja cuyo identificador se ha pasado como
parámetro no existe, aparecerá un mensaje diciendo que la caja con dicho número de
referencia no existe.
*/

DELIMITER $$
USE EjerciciosPropuestos $$

DROP PROCEDURE IF EXISTS borrarCajas $$
CREATE PROCEDURE borrarCajas(numRef INT)
BEGIN
/*	EN ESTA PARTE CREAMOS LA VARIABLE DONDE SE GUARDARÁ SI EXISTE O NO LA CAJA*/
	DECLARE cajaExiste INT;
	SELECT COUNT(*) INTO cajaExiste
	FROM cajas
	WHERE numReferencia = numRef;
/*	AQUI ES DONDE COMPROBAMOS SI LA VARIABLE ES 0 O 1, PARA SABER SI EXISTE LA CAJA*/
	IF cajaExiste > 0 THEN
		DELETE
		FROM cajas
		WHERE numReferencia = numRef;
		SELECT CONCAT('Se ha borrado de la tabla cajas, la caja con el numReferencia ', numRef, '.') AS RESULTADO;
	ELSE
		SELECT CONCAT('No se ha podido borrar la caja con referencia ', numRef, ' porque no existe.') AS RESULTADO;
	END IF;
END; $$

DELIMITER ;
