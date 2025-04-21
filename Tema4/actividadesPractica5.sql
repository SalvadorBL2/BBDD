-- a) Muestra el número de Matricula, de todos los autocares modelo Plane que Tengan menos de 50 plazas. Deberá estar ordenado por matrícula (descendente).

SELECT matricula
FROM TAutocares
WHERE modelo = 'Plane' AND Plazas < 50;
+------------+
| matricula  |
+------------+
| DD-4444-DD |
| FF-6666-FF |
+------------+

-- b) Muestra el nombre y apellido de los conductores, y la matrícula de todos aquellos viajes que no tuvieran como destino la ciudad de Córdoba.

SELECT nombreEm, apellidosEm, autocar
FROM TEmpleados
JOIN TDesplazamientos ON idEmpleado = conductor
WHERE destino <> 'Cordoba';
+----------+-------------------+------------+
| nombreEm | apellidosEm       | autocar    |
+----------+-------------------+------------+
| Juana    | Reina de España   | BB-2222-BB |
| José     | Ortega Cano       | EE-5555-EE |
| Dolores  | Fuerte de Barriga | AA-1111-AA |
| Luis     | del Olmo Olmillo  | CC-3333-CC |
+----------+-------------------+------------+

-- c) Muestra toda la información de los viajes realizados por los autobuses con matrícula AA-1111-AA y DD-4444-DD. Debe estar ordenado por el matrícula (ascendente).

SELECT *
FROM TDesplazamientos
WHERE autocar IN ('AA-1111-AA', 'DD-4444-DD')
ORDER BY autocar ASC;
+---------------------+------------+-----------+---------+---------------+
| fechaDesplazamiento | autocar    | conductor | destino | totalViajeros |
+---------------------+------------+-----------+---------+---------------+
| 1998-03-03          | AA-1111-AA | 4444      | Jaen    |            47 |
| 1998-04-20          | DD-4444-DD | 1111      | Cordoba |            46 |
+---------------------+------------+-----------+---------+---------------+

-- d) Muestra el total de viajeros que van a cada ciudad.

SELECT destino, SUM(totalViajeros) AS TOTAL_VIAJEROS
FROM TDesplazamientos
GROUP BY destino;
+---------+----------------+
| destino | TOTAL_VIAJEROS |
+---------+----------------+
| Granada |             45 |
| Almeria |             45 |
| Cordoba |             90 |
| Jaen    |             47 |
| Huelva  |             47 |
+---------+----------------+

-- e) Muestra el número total de autobuses que disponen de al menos 50 plazas.

SELECT COUNT(matricula) AS AUTOBUSES_TOTALES
FROM TAutocares
WHERE plazas >= 50;
+-------------------+
| AUTOBUSES_TOTALES |
+-------------------+
|                 3 |
+-------------------+

-- f) Muestra los conductores cuya antigüedad es menor que la de Dolores

SELECT *
FROM TEmpleados
WHERE fechaAntiguedadEm > (
	SELECT fechaAntiguedadEm
	FROM TEmpleados
	WHERE nombreEm = 'Dolores'
	);
+----------+------------------+------------+-------------------+
| nombreEm | apellidosEm      | idEmpleado | fechaAntiguedadEm |
+----------+------------------+------------+-------------------+
| Luis     | del Olmo Olmillo | 2222       | 1982-12-15        |
| Juana    | Reina de España  | 3333       | 1997-10-10        |
| José     | Ortega Cano      | 5555       | 1988-04-15        |
+----------+------------------+------------+-------------------+

-- g) Muestra la media de viajeros que ha llevado cada conductor.

SELECT conductor, AVG(totalViajeros) AS VIAJEROS_TOTALES
FROM TDesplazamientos
GROUP BY conductor;
+-----------+------------------+
| conductor | VIAJEROS_TOTALES |
+-----------+------------------+
| 1111      |          45.0000 |
| 2222      |          47.0000 |
| 3333      |          45.0000 |
| 4444      |          47.0000 |
| 5555      |          45.0000 |
+-----------+------------------+

-- h) Muestra el modelo de autobús que dispone de un número menor de plazas

SELECT modelo
FROM TAutocares
WHERE plazas = (
	SELECT MIN(plazas)
	FROM TAutocares
	);
+--------+
| modelo |
+--------+
| Plane  |
+--------+

-- i) Muestra los autobuses que tienen más plazas que los que han viajado a Córdoba

SELECT matricula
FROM TAutocares
JOIN TDesplazamientos ON matricula = autocar
WHERE plazas > ALL (
	SELECT plazas
	FROM TAutocares
	WHERE matricula IN (
		SELECT autocar
		FROM TDesplazamientos
		WHERE destino = 'Cordoba'
		));
+------------+
| matricula  |
+------------+
| BB-2222-BB |
+------------+

-- j) Muestra los conductores que han viajado más de una vez

SELECT conductor, COUNT(*) AS TOTAL_VIAJES
FROM TDesplazamientos
GROUP BY conductor
HAVING TOTAL_VIAJES > 1;
+-----------+--------------+
| conductor | TOTAL_VIAJES |
+-----------+--------------+
| 1111      |            2 |
+-----------+--------------+


































