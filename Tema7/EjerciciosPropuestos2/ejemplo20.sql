/*
EJEMPLO 20:
Dada la tabla CLIENTES que contiene los datos relevantes de cada uno de ellos, crea una rutina que cambie el mail de un cliente por otro que se pasará como parámetro. La rutina recibirá dos parámetros, el identificador del cliente y el nuevo mail.
*/

DELIMITER $$
USE EjerciciosPropuestos $$

DROP PROCEDURE cambioMail $$
CREATE PROCEDURE cambioMail(idC INT, correo VARCHAR(30))
BEGIN
	DECLARE idExiste INT;
	SELECT COUNT(idCliente) INTO idExiste
	FROM clientes
	WHERE idCliente = idC;
	
	IF idExiste > 0 THEN
		UPDATE clientes
		SET email = correo
		WHERE idCliente = idC;
		SELECT 'Se ha cambiado el email con éxito.' AS RESULTADO;
	ELSE
		SELECT 'El id proporcionado, no corresponde a ningún cliente.' AS ERROR;
	END IF;
END; $$

DELIMITER ;




