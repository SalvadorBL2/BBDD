/*
Crea una rutina que inserte un registro en una tabla de empleados.
- La tabla debe tener campos como: id,nombre,edad, y salario. Asegúrate de que se verifique si el salario es mayor a un valor mínimo antes de realizar la inserción. El salario mínimo también debe ser introducido en cada caso. Si no cumple con el requisito, debe devolver un mensaje indicando que el salario es demasiado bajo.
*/
-- SMI = 1184€

DELIMITER $$
USE practica $$

DROP PROCEDURE IF EXISTS registroEmp $$
CREATE PROCEDURE registroEmp(id INT, nombre VARCHAR(20), edad INT, salario INT)
BEGIN
	DECLARE SMI INT;
	SET SMI = 1184;
	IF salario > SMI THEN
		INSERT INTO empleados VALUES (id, nombre, edad, salario);
		SELECT CONCAT('Se ha realizado un registro del empleado con id ', id, '.') AS RESULTADO;
	ELSE
		SELECT CONCAT('El empleado con id ', id, ' no cumplía con los requisitos mínimos de salario.') AS RESULTADO;
	END IF;
END; $$		/* DE ESTA MANERA, NO HAY QUE INTRODUCIR EL SMI CADA VEZ QUE LLAMES AL PROCEDURE */

DELIMITER ;

/*
DROP PROCEDURE IF EXISTS registroEmp $$
CREATE PROCEDURE registroEmp(id INT, nombre VARCHAR(20), edad INT, salario INT, SMI INT)
BEGIN
	IF salario > SMI THEN
		INSERT INTO empleados VALUES (id, nombre, edad, salario);
		SELECT CONCAT('Se ha realizado un registro del empleado con id ', id, '.') AS RESULTADO;
	ELSE
		SELECT CONCAT('El empleado con id ', id, ' no cumplía con los requisitos mínimos de salario.') AS RESULTADO;
	END IF;
END; $$

DELIMITER ;
*/			/* DE ESTA MANERA TIENES QUE ESTAR INTRODUCIENDO EL SMI CADA VEZ, CUANDO SE SUPONE QUE ES FIJO 'RELATIVAMENTE' */




















