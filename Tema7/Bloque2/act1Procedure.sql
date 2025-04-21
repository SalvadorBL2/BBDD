-- Crea una rutina que reciba el nombre y el  salario de un empleado. Inserta la categoría según el salario tal que así: "Bajo" si el salario es menor de 1500, "Medio" si está entre 1500 y 2500(inclusive), y "Alto" si es mayor de 2500.), Inserta en una tabla el nombre del empleado, el sueldo y la categoría.

DELIMITER $$
USE practica $$

DROP PROCEDURE IF EXISTS registroEmpCat $$
CREATE PROCEDURE registroEmpCat(nombre VARCHAR(20), sueldo INT)
BEGIN
	DECLARE categoria VARCHAR(10);
	IF sueldo < 1500 THEN
		SET categoria = 'Baja';
	ELSEIF sueldo >= 1500 AND sueldo <= 2500 THEN
		SET categoria = 'Media';
	ELSE
		SET categoria = 'Alta';
	END IF;
	INSERT INTO empleadoCategoria VALUES (nombre, sueldo, categoria);
	SELECT CONCAT('Se ha realizado un registro del empleado ', nombre, ' con sueldo de ', sueldo, ' y categoria ', categoria, '.') AS RESULTADO;
END; $$

DELIMITER ;


