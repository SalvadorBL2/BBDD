/*
Ejercicio propuesto: Ejemplo 16
Crea una rutina para rellenar la tabla cajas. El usuario introducirá sólo el número de
referencia de la caja y su valor. Dependiendo de éste la caja se almacenará en el
almacén correspondiente de acuerdo con el siguiente protocolo.
- Valor inferior a 50: almacén 1
- Valor entre 50 y 100: almacén 2
- Valor entre 100 y 200: almacén 3
- Valor entre 200 y 500: almacén 4
- Valor superior a 500: indicad al usuario que no se puede almacenar.
*/

DELIMITER $$
USE EjerciciosPropuestos $$

DROP PROCEDURE IF EXISTS valorCajas $$
CREATE PROCEDURE valorCajas(numReferencia INT, valor INT)
BEGIN
	IF valor < 50 THEN
		INSERT INTO cajas VALUES (numReferencia, valor, 1);
		SELECT 'Se ha añadido la caja al almacen número 1.' AS RESULTADO;
	ELSEIF valor BETWEEN 50 AND 100 THEN
		INSERT INTO cajas VALUES (numReferencia, valor, 2);
		SELECT 'Se ha añadido la caja al almacen número 2.' AS RESULTADO;
	ELSEIF valor BETWEEN 100 AND 200 THEN
		INSERT INTO cajas VALUES (numReferencia, valor, 3);
		SELECT 'Se ha añadido la caja al almacen número 3.' AS RESULTADO;
	ELSEIF valor BETWEEN 200 AND 500 THEN
		INSERT INTO cajas VALUES (numReferencia, valor, 4);
		SELECT 'Se ha añadido la caja al almacen número 4.' AS RESULTADO;
	ELSE
		SELECT CONCAT('No se puede almacenar la caja con referencia ', numReferencia, ' por que su contenido tiene un valor de ', valor, ' que supera el valor máximo que es 500€.') AS ERROR;
	END IF;
END; $$

DELIMITER ;
