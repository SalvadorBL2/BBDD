-- 4. Obtener todos los campos de todos los concesionarios

SELECT *
FROM Concesionarios;
+------+--------+-----------+
| cifc | nombre | Ciudad    |
+------+--------+-----------+
|    1 | acar   | Madrid    |
|    2 | bcar   | Madrid    |
|    3 | ccar   | Barcelona |
|    4 | dcar   | Valencia  |
|    5 | ecar   | Bilbao    |
+------+--------+-----------+

-- 5. Obtener todos los campos de todos los clientes de Madrid

SELECT *
FROM Clientes
WHERE ciudad = 'Madrid';
+-----+--------+----------+--------+
| dni | Nombre | Apellido | Ciudad |
+-----+--------+----------+--------+
|   1 | Luis   | Garcia   | Madrid |
|   3 | Juan   | Martin   | Madrid |
|   4 | Maria  | Garcia   | Madrid |
+-----+--------+----------+--------+

-- 6. Obtener los nombres de todas las marcas de coches ordenadas alfabéticamente

SELECT nombre
FROM Marcas
ORDER BY nombre DESC;
+---------+
| nombre  |
+---------+
| audi    |
| bmw     |
| citroen |
| opel    |
| renault |
| seat    |
+---------+

-- 7. Obtener el cifc de todos los concesionarios cuyo atributo cantidad en la tabla DISTRIBUCIÓN es mayor que 18

SELECT cifc
FROM Concesionarios
WHERE cifc IN (
	SELECT cifc
	FROM Distribucion
	WHERE cantidad > 18
	);
+------+
| cifc |
+------+
|    5 |
+------+

-- 8. Obtener el cifc de todos los concesionarios cuyo atributo cantidad en la tabla DISTRIBUCIÓN está comprendido entre 10 y 18 ambos inclusive

SELECT cifc
FROM Concesionarios
WHERE cifc IN (
	SELECT cifc
	FROM Distribucion
	WHERE cantidad >= 10 AND cantidad <= 18
	);
+------+
| cifc |
+------+
|    2 |
|    4 |
|    5 |
+------+

-- 9. Obtener el cifc de todos los concesionarios que han adquirido más de 10 coches o menos de 5

SELECT cifc
FROM Concesionarios
WHERE cifc IN (
	SELECT cifc
	FROM Distribucion
	WHERE cantidad > 10 OR cantidad < 5
	);
+------+
| cifc |
+------+
|    1 |
|    3 |
|    5 |
+------+

-- 10. Obtener todas las parejas de cifm de marcas y dni de clientes que sean de la misma ciudad

SELECT cifm, dni
FROM Marcas
JOIN Clientes ON Clientes.ciudad = Marcas.ciudad;
+------+-----+
| cifm | dni |
+------+-----+
|    4 |   1 |
|    1 |   1 |
|    3 |   2 |
|    4 |   3 |
|    1 |   3 |
|    4 |   4 |
|    1 |   4 |
|    6 |   5 |
|    2 |   5 |
|    6 |   6 |
|    2 |   6 |
+------+-----+
-- 11. Obtener todas las parejas de dni de clientes y cifm de marcas que no sean de la misma ciudad

SELECT dni, cifm
FROM Clientes
JOIN Marcas ON Clientes.ciudad <> Marcas.ciudad;
+-----+------+
| dni | cifm |
+-----+------+
|   6 |    1 |
|   5 |    1 |
|   2 |    1 |
|   4 |    2 |
|   3 |    2 |
|   2 |    2 |
|   1 |    2 |
|   6 |    3 |
|   5 |    3 |
|   4 |    3 |
|   3 |    3 |
|   1 |    3 |
|   6 |    4 |
|   5 |    4 |
|   2 |    4 |
|   6 |    5 |
|   5 |    5 |
|   4 |    5 |
|   3 |    5 |
|   2 |    5 |
|   1 |    5 |
|   4 |    6 |
|   3 |    6 |
|   2 |    6 |
|   1 |    6 |
+-----+------+

-- 12. Obtener los codcoche suministrados por algún concesionario de Barcelona

SELECT DISTINCT codcoche
FROM Distribucion
WHERE cifc IN (
	SELECT cifc
	FROM Concesionarios
	WHERE ciudad = 'Barcelona'
	);
+----------+
| codcoche |
+----------+
|       10 |
|       11 |
|       12 |
+----------+

-- 13. Obtener el codcoche de aquellos coches vendidos a clientes de Madrid

SELECT codcoche
FROM Ventas
WHERE dni IN (
	SELECT dni
	FROM Clientes
	WHERE ciudad = 'Madrid'
	);
+----------+
| codcoche |
+----------+
|        1 |
|        6 |
|        8 |
|       11 |
+----------+

-- 14. Obtener todos los codcoche de los coches cuyo nombre empiece por C

SELECT codcoche
FROM Coches
WHERE nombre LIKE 'c%';
+----------+
| codcoche |
+----------+
|        5 |
|       17 |
+----------+

-- 15. Obtener todos los codcoche de los coches cuyo nombre no contiene ninguna a

SELECT codcoche
FROM Coches
WHERE nombre NOT LIKE '%a%';
+----------+
| codcoche |
+----------+
|        4 |
|       10 |
|       11 |
|       18 |
|       19 |
|       20 |
+----------+

-- 16. Obtener el número total de nombres de marcas de coches que son de Madrid

SELECT COUNT(nombre) AS TOTAL_MARCAS
FROM Marcas
WHERE ciudad = 'Madrid';
+--------------+
| TOTAL_MARCAS |
+--------------+
|            2 |
+--------------+

-- 17. Obtener la media de la cantidad de coches que tienen en total todos los concesionarios

SELECT AVG(cantidad)
FROM Distribucion
WHERE cifc IN (
	SELECT DISTINCT cifc
	FROM Concesionarios
	);					/* NO SÉ SI ESTÁ BIEN LA CONSULTA */
+---------------+
| AVG(cantidad) |
+---------------+
|        7.7143 |
+---------------+

-- 18. Obtener el dni cuya numeración sea la más alta de todos los clientes de Madrid

SELECT MAX(dni) AS DNI_MAS_ALTO_DE_MADRID
FROM Clientes
WHERE ciudad = 'Madrid';
+------------------------+
| DNI_MAS_ALTO_DE_MADRID |
+------------------------+
|                      4 |
+------------------------+

-- 19. Obtener el dni con numeración más baja de todos los clientes que han comprado un coche blanco

SELECT MIN(dni) AS DNI_MAS_BAJO_QUE_COMPRARON_COCHE_BLANCO
FROM Clientes
WHERE dni IN (
	SELECT dni
	FROM Ventas
	WHERE Color = 'Blanco'
	);
+-----------------------------------------+
| DNI_MAS_BAJO_QUE_COMPRARON_COCHE_BLANCO |
+-----------------------------------------+
|                                       1 |
+-----------------------------------------+

-- 20. Obtener el cifc de todos los concesionarios cuyo número de coches en stock no es nulo

SELECT DISTINCT cifc
FROM Concesionarios
WHERE cifc IN (
	SELECT cifc
	FROM Distribucion
	);
+------+
| cifc |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
+------+

-- 21. Obtener el cifm y el nombre de las marcas de coches cuya segunda letra del nombre de la ciudad de origen sea una i

SELECT cifm, nombre
FROM Marcas
WHERE ciudad LIKE '_i%';
+------+--------+
| cifm | nombre |
+------+--------+
|    5 | opel   |
+------+--------+

-- 22. Obtener el dni de los clientes que han comprado algún coche a un concesionario de Madrid

SELECT dni
FROM Clientes
WHERE dni IN (
	SELECT DISTINCT dni
	FROM Ventas
	WHERE cifc IN (
		SELECT cifc
		FROM Concesionarios
		WHERE ciudad = 'Madrid'
		));
+-----+
| dni |
+-----+
|   1 |
|   2 |
|   3 |
+-----+

-- 23. Obtener el color de los coches vendidos por el concesionario "acar"

SELECT color
FROM Ventas
WHERE cifc IN (
	SELECT cifc
	FROM Concesionarios
	WHERE nombre = 'acar'
	);
+--------+
| color  |
+--------+
| Blanco |
| rojo   |
+--------+

-- 24. Obtener el codcoche de los coches vendidos por algún concesionario de Madrid

SELECT codcoche
FROM Coches
WHERE codcoche IN (
	SELECT codcoche
	FROM Ventas
	WHERE cifc IN (
		SELECT cifc
		FROM Concesionarios
		WHERE ciudad = 'Madrid'
		));
+----------+
| codcoche |
+----------+
|        1 |
|        5 |
|        6 |
|        8 |
+----------+

-- 25. Obtener el nombre y el apellido de los clientes cuyo número de dni es menor que el del cliente Juan Martín

SELECT nombre, apellido
FROM Clientes
WHERE dni < (
	SELECT dni
	FROM Clientes
	WHERE nombre = 'Juan' AND apellido = 'Martin'
	);
+---------+----------+
| nombre  | apellido |
+---------+----------+
| Luis    | Garcia   |
| Antonio | Lopez    |
+---------+----------+

-- 26. Obtener el nombre y el apellido de los clientes cuyo número de dni es menor que el de todos los clientes que son de Barcelona

SELECT nombre, apellido
FROM Clientes
WHERE dni < ALL (
	SELECT dni
	FROM Clientes
	WHERE ciudad = 'Barcelona'
	);
+---------+----------+
| nombre  | apellido |
+---------+----------+
| Luis    | Garcia   |
| Antonio | Lopez    |
| Juan    | Martin   |
| Maria   | Garcia   |
+---------+----------+

-- 27. Obtener el nombre y el apellido de los clientes cuyo nombre empieza por a y cuyo número de dni es mayor que el de todos los clientes que son de Madrid

SELECT nombre, apellido
FROM Clientes
WHERE nombre LIKE 'a%' AND dni > ALL (
	SELECT dni
	FROM Clientes
	WHERE ciudad = 'Madrid'
	);
+--------+----------+
| nombre | apellido |
+--------+----------+
| Ana    | Lopez    |
+--------+----------+

-- 28. Obtener el nombre y el apellido de los clientes cuyo nombre empieza por a y cuyo número de dni es mayor que el de alguno de los clientes que son de Madrid

SELECT nombre, apellido
FROM Clientes
WHERE nombre LIKE 'a%' AND dni > ANY (
	SELECT dni
	FROM Clientes
	WHERE ciudad = 'Madrid'
	);
+---------+----------+
| nombre  | apellido |
+---------+----------+
| Antonio | Lopez    |
| Ana     | Lopez    |
+---------+----------+

-- 29. Obtener la media de los automóviles que cada concesionario tiene actualmente en stock

SELECT cifc, AVG(cantidad) AS STOCK_MEDIO
FROM Distribucion
GROUP BY cifc;
+------+-------------+
| cifc | STOCK_MEDIO |
+------+-------------+
|    1 |      5.6667 |			/* ESTA MANERA DE HACERLO ES CHAPUZA PORQUE NO SERÍA EL STOCK REAL ACTUAL */
|    2 |      8.3333 |
|    3 |      4.3333 |
|    4 |      7.5000 |
|    5 |     12.6667 |
+------+-------------+

-- 30. Obtener para cada concesionario, la cantidad total que tiene en stock

SELECT cifc, SUM(cantidad) AS TOTAL_STOCK
FROM Distribucion
GROUP BY cifc;
+------+-------------+
| cifc | TOTAL_STOCK |
+------+-------------+
|    1 |          17 |			/* ESTA MANERA DE HACERLO ES CHAPUZA, PORQUE NO SERÍA EL STOCK REAL ACTUAL */
|    2 |          25 |
|    3 |          13 |
|    4 |          15 |
|    5 |          38 |
+------+-------------+










































