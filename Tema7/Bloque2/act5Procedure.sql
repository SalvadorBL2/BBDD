-- . Crea una rutina que cumplimente un bono a un empleado basado en su rendimiento. La rutina recibirá el ID de un empleado. Si la calificación es 'A', otorga un bono de 500; si es 'B', otorga un bono de 250; y si es 'C', no otorga bono. (Asume que existe una tabla Empleados con campos id_empleado, calificacion_rendimiento y bono. Los dos primeros ya están cumplimentados ).


DELIMITER $$
USE practica $$

DROP PROCEDURE IF EXISTS procedimientoBono $$
CREATE PROCEDURE procedimientoBono(id_empleado_param INT)
BEGIN
	DECLARE rendimiento CHAR(1);
	SELECT calificacion_rendimiento INTO rendimiento
	FROM bonosEmp
	WHERE id_empleado = id_empleado_param;
	CASE rendimiento
		WHEN 'A' THEN
			UPDATE bonosEmp
			SET bono = 500
			WHERE id_empleado = id_empleado_param;
		WHEN 'B' THEN
			UPDATE bonosEmp
			SET bono = 250
			WHERE id_empleado = id_empleado_param;
		WHEN 'C' THEN
			UPDATE bonosEmp
			SET bono = 0
			WHERE id_empleado = id_empleado_param;
		ELSE
			SELECT 'La calificación asignada a este trabajador es incorrecta, debes estar comprendida entre A, B o C.' AS ERROR;
	END CASE;
END; $$

DELIMITER ;
























