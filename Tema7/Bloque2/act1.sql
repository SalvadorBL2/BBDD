-- Crea una rutina que reciba el salario de un empleado y devuelva una categoría salarial: "Bajo" si el salario es menor de 1500, "Medio" si está entre 1500 y 2500(inclusive), y "Alto" si es mayor de 2500.

DELIMITER $$
USE practica $$
DROP FUNCTION IF EXISTS sueldo $$
CREATE FUNCTION sueldo(num INT)
RETURNS VARCHAR(20)
BEGIN
	IF num < 1500 THEN				-- SIN VARIABLE
		RETURN = 'Bajo';
	ELSEIF num >= 1500 AND num <= 2500 THEN
		RETURN = 'Medio';
	ELSE
		RETURN = 'Alto';
	END IF;
END; $$

DELIMITER ;

/*
DELIMITER $$
USE practica $$
DROP FUNCTION IF EXISTS sueldo $$
CREATE FUNCTION sueldo(num INT)
RETURNS VARCHAR(20)
BEGIN
	DECLARE resultado VARCHAR(20);
	IF num < 1500 THEN
		SET resultado = 'Bajo';			-- CON VARIABLE
	ELSEIF num >= 1500 AND num <= 2500 THEN
		SET resultado = 'Medio';
	ELSE
		SET resultado = 'Alto';
	END IF;
	RETURN resultado;
END; $$

DELIMITER ;
*/
