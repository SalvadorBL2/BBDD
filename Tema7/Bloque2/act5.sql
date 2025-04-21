-- Crea una rutina para otorgar un bono basado en el rendimiento. La rutina recibirá el ID de un empleado y su calificación de rendimiento (una letra: 'A', 'B', o 'C'). Si la calificación es 'A', otorga un bono de 500; si es 'B', otorga un bono de 250; y si es 'C', no otorga bono. (Asume que existe una tabla Empleados con campos id_empleado y calificacion_rendimiento).

DELIMITER $$
USE practica $$

DROP FUNCTION IF EXISTS bono $$
CREATE FUNCTION bono(id INT, rendimiento CHAR(1))
RETURNS varchar(20)
BEGIN
	CASE rendimiento
		WHEN 'A' THEN
			RETURN '500€';
		WHEN 'B' THEN
			RETURN '250€';
		WHEN 'C' THEN
			RETURN '0€';
		ELSE
			RETURN NULL;
	END CASE;
END; $$

DELIMITER ;
























