/*
Crea una rutina que inserte un registro en una tabla de empleados.
- La tabla debe tener campos como: id,nombre,edad, y salario. Asegúrate de que se verifique si el salario es mayor a un valor mínimo antes de realizar la inserción. El salario mínimo también debe ser introducido en cada caso. Si no cumple con el requisito, debe devolver un mensaje indicando que el salario es demasiado bajo.
*/

DELIMITER $$
USE practica $$

DROP PROCEDURE IF EXISTS empleadoSi;
CREATE PROCEDURE empleadoSi(id INT, nombre VARCHAR(20), edad INT, salario INT)
BEGIN
	DECLARE mensaje VARCHAR(200);
	IF salario <= 1000 THEN
		SET mensaje = CONCAT('El empleado con id ', id, ' de nombre ', nombre, ' con la edad de ', edad, ' y el salario de ', salario, ' no puede ser insertado en la tabla porque el salario no supera los 1000 euros.');
		SELECT mensaje;
	ELSE
		SET mensaje = CONCAT('El empleado con id ', id, ' de nombre ', nombre, ' con la edad de ', edad, ' y el salario de ', salario, ' va a ser insertado en la tabla porque el salario supera los 1000 euros.');
		INSERT INTO empleados VALUES (id, nombre, edad, salario);
		SELECT mensaje;
	END IF;
END; $$

DELIMITER ;





