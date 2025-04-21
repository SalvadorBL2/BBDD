-- 1) Contar el número de coches que tienen una potencia superior a 100

SELECT COUNT(*) AS COCHES_CON_POTENCIA_SUPERIOR_A_100
FROM coches
WHERE potencia > 100;

+------------------------------------+
| COCHES_CON_POTENCIA_SUPERIOR_A_100 |
+------------------------------------+
|                                  6 |
+------------------------------------+

-- 2) Calcular los ingresos medios por mes para aquellos meses con unos ingresos medios superiores a 1000, además de mostrar el número del mes ordenados de más a menos ingresos medios.

SELECT AVG(ingresos) AS MEDIA_INGRESOS, mes
FROM productos
GROUP BY mes
HAVING MEDIA_INGRESOS > 1000
ORDER BY MEDIA_INGRESOS DESC;

+----------------+---------+
| MEDIA_INGRESOS | mes     |
+----------------+---------+
|      1210.0000 | marzo   |
|      1200.0000 | febrero |
+----------------+---------+

-- 3) Mostrar el mes correspondiente y la suma de ingresos de ese mes ordenados descendentemente por mes, pero solo para aquellos cuya suma sea superior a 2500

SELECT SUM(ingresos) AS INGRESOS_TOTALES, mes
FROM productos
GROUP BY mes
HAVING INGRESOS_TOTALES > 2500
ORDER BY mes DESC;

+------------------+-------+
| INGRESOS_TOTALES | mes   |
+------------------+-------+
|             3630 | marzo |
|             4390 | enero |
+------------------+-------+


-- 4) Calcular la potencia mínima, el precio máximo, la potencia media y la suma de los precios de los coches, pero solo de los de potencia superior a 100

SELECT MIN(potencia) AS POTENCIA_MINIMA, MAX(precio) AS PRECIO_MAXIMO, AVG(potencia) AS POTENCIA_MEDIA, SUM(precio) AS PRECIO_TOTAL
FROM coches
WHERE potencia > 100;

+-----------------+---------------+----------------+--------------+
| POTENCIA_MINIMA | PRECIO_MAXIMO | POTENCIA_MEDIA | PRECIO_TOTAL |
+-----------------+---------------+----------------+--------------+
|             150 |         10000 |       183.3333 |        60000 |
+-----------------+---------------+----------------+--------------+

































