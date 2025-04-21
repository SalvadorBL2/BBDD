-- Crea una rutina que reciba un código de estado de pedido (un entero) y devuelva una descripción del estado: 1 para "Pendiente", 2 para "En Proceso", 3 para "Enviado", y cualquier otro número para "Desconocido".

DELIMITER $$
USE practica $$
DROP FUNCTION IF EXISTS pedido $$
CREATE FUNCTION pedido(num INT)
RETURNS VARCHAR(20)
BEGIN
	DECLARE estado VARCHAR(20);
	IF num = 1 THEN
		SET estado = 'Pendiente';			-- CON VARIABLE
	ELSEIF num = 2 THEN
		SET estado = 'En Proceso';
	ELSEIF num = 3 THEN
		SET estado = 'Enviado';
	ELSE
		SET estado = 'Desconocido';
	END IF;
	RETURN estado;
END; $$

DELIMITER ;


DELIMITER $$
USE practica $$
DROP FUNCTION IF EXISTS pedido $$
CREATE FUNCTION pedido(num INT)
RETURNS VARCHAR(20)
BEGIN
	IF num = 1 THEN
		RETURN = 'Pendiente';				-- SIN VARIABLE
	ELSEIF num = 2 THEN
		RETURN = 'En Proceso';
	ELSEIF num = 3 THEN
		RETURN = 'Enviado';
	ELSE
		RETURN = 'Desconocido';
	END IF;
END; $$

DELIMITER ;
