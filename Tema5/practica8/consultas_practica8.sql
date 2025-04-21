CONSULTA 1.

SELECT cajas.numreferencia
FROM cajas
WHERE cajas.valor>150;

CONSULTA 2.

SELECT DISTINCT cajas.contenido
FROM cajas;

CONSULTA 3.

SELECT AVG(cajas.valor) AS valor_medio
FROM cajas;

CONSULTA 4.	#	CORREGIR A PARTIR DE AQUI	#

SELECT AVG(valor) AS valor_medio, almacen
FROM  cajas;

CONSULTA 5.

SELECT almacen, AVG(valor) AS media
FROM cajas
GROUP BY almacen
HAVING media>150;

CONSULTA 6.

SELECT cajas.numreferencia, almacenes.lugar
FROM almacenes, cajas
WHERE cajas.almacen=almacenes.codigo;

CONSULTA 7.

SELECT Almacen, COUNT(*) AS 'Número de cajas'
FROM Cajas
GROUP BY Almacen;      /*ÉSTA OPCIÓN SERÍA VÁLIDA SI NO TENEMOS EN CUENTAS LOS ALMACENES VACÍOS*/

SELECT Almacenes.Codigo, COUNT(NumReferencia) AS 'Número de Cajas'
FROM Almacenes LEFT JOIN Cajas
ON (Almacenes.Codigo=Cajas.Almacen)
GROUP BY Almacenes.Codigo;


CONSULTA 8.

SELECT Codigo
FROM Almacenes
WHERE Capacidad<(
	SELECT COUNT(*)
	FROM Cajas
	WHERE Almacen=Codigo
	);











