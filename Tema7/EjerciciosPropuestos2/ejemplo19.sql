/*
EJEMPLO 19:
Dada una tabla PELÍCULAS, en la que se guarda un registro por cada película que incluye
campos con información de cada una, tales como: código, título, género, duración,
nacionalidad, etc.
Crea una rutina en la que se introduzca el identificador de una película y nos devuelva si es de “larga duración” (mas de 120 min), “media duración” (entre 50 y 120 min) o “corta duración” (menos de 50 min)
*/

DELIMITER $$
USE EjerciciosPropuestos $$

DROP FUNCTION IF EXISTS duracionPeli $$
CREATE FUNCTION duracionPeli(codigoP INT)
RETURNS VARCHAR(100)
BEGIN
	DECLARE tiempo INT;
	SELECT duracion INTO tiempo
	FROM peliculas
	WHERE codigoP = codigo;
	
	IF tiempo > 120 THEN
		RETURN 'Larga duración';
	ELSEIF tiempo BETWEEN 50 AND 120 THEN
		RETURN 'Media duración';
	ELSEIF tiempo < 50 THEN
		RETURN 'Corta duración';
	ELSE
		RETURN 'El codigo que facilitaste no corresponde a ninguna pelicula.';
	END IF;
END; $$

DELIMITER ;
