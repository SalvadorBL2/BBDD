-- 1) Seleccionar todos los clientes ordenados descendentemente por el primer apellido.

SELECT *
FROM clientes
ORDER BY apellido1 DESC;

+------------+-----------+-----------+-----------+-----------+-----------+--------------+--------+------------+
| codCliente | nombre    | apellido1 | apellido2 | nif       | poblacion | calle        | CP     | telefono   |
+------------+-----------+-----------+-----------+-----------+-----------+--------------+--------+------------+
|          3 | Ana       | Jacinta   | Galdos    | 847474747 | Málaga    | La Paz       | 836311 | 67845493   |
|          2 | Juan      | Garriga   | Sorlí     | 987654323 | Barcelona | Diagonal 32  | 234423 | 93456789   |
|          1 | Pedro     | García    | Rovira    | 123456798 | Madrid    | Las Huertas  |  12345 | 9112345678 |
|          4 | Esperanza | Aguirre   | Gonzalez  | 949383838 | Córdoba   | Julio Romero | 848487 | 57474747   |
+------------+-----------+-----------+-----------+-----------+-----------+--------------+--------+------------+

-- 2) Seleccionar todos los clientes pero únicamente los campos apellido1, apellido2 y población y ordenados ascendentemente por el segundo apellido.

SELECT apellido1, apellido2, poblacion
FROM clientes
ORDER BY apellido2 ASC;

+-----------+-----------+-----------+
| apellido1 | apellido2 | poblacion |
+-----------+-----------+-----------+
| Jacinta   | Galdos    | Málaga    |
| Aguirre   | Gonzalez  | Córdoba   |
| García    | Rovira    | Madrid    |
| Garriga   | Sorlí     | Barcelona |
+-----------+-----------+-----------+

-- 3) Seleccionar los clientes con un código superior a 2

SELECT *
FROM clientes
WHERE codCliente > 2;

+------------+-----------+-----------+-----------+-----------+-----------+--------------+--------+----------+
| codCliente | nombre    | apellido1 | apellido2 | nif       | poblacion | calle        | CP     | telefono |
+------------+-----------+-----------+-----------+-----------+-----------+--------------+--------+----------+
|          3 | Ana       | Jacinta   | Galdos    | 847474747 | Málaga    | La Paz       | 836311 | 67845493 |
|          4 | Esperanza | Aguirre   | Gonzalez  | 949383838 | Córdoba   | Julio Romero | 848487 | 57474747 |
+------------+-----------+-----------+-----------+-----------+-----------+--------------+--------+----------+

-- 4) Seleccionar los clientes con un código entre 2 y 4

SELECT *
FROM clientes
WHERE codCliente > 2 AND codCliente < 4;

+------------+--------+-----------+-----------+-----------+-----------+--------+--------+----------+
| codCliente | nombre | apellido1 | apellido2 | nif       | poblacion | calle  | CP     | telefono |
+------------+--------+-----------+-----------+-----------+-----------+--------+--------+----------+
|          3 | Ana    | Jacinta   | Galdos    | 847474747 | Málaga    | La Paz | 836311 | 67845493 |
+------------+--------+-----------+-----------+-----------+-----------+--------+--------+----------+

-- 5) Seleccionar los coches con un precio entre 1000 y 15000 y potencia superior a 100

SELECT *
FROM coches
WHERE precio > 1000 AND precio < 15000 AND potencia > 100;

+--------------+----------+------------+--------+------------+
| modelo       | potencia | fecha      | precio | disponible |
+--------------+----------+------------+--------+------------+
| laguna       |      200 | 2004-03-01 |  10000 |          0 |
| mercedes 300 |      150 | 2005-02-10 |  10000 |          1 |
| mercedes 500 |      200 | 1999-12-12 |  10000 |          1 |
| santa fe     |      150 | 1999-12-12 |  10000 |          1 |
| santia       |      200 | 2000-02-01 |  10000 |          1 |
| space        |      200 | 1999-12-12 |  10000 |          1 |
+--------------+----------+------------+--------+------------+

-- 6) Seleccionar los coches con un precio entre 1000 y 15000 o potencia superior a 100

SELECT *
FROM coches
WHERE precio > 1000 AND precio < 15000 OR potencia > 100;

+---------------+----------+------------+--------+------------+
| modelo        | potencia | fecha      | precio | disponible |
+---------------+----------+------------+--------+------------+
| afent         |      100 | 1999-12-12 |  10000 |          1 |
| clio          |       70 | 1999-12-12 |  10000 |          1 |
| fiat brava    |       90 | 1999-12-12 |  10000 |          0 |
| fiat punto    |       70 | 1995-09-09 |  10000 |          1 |
| ford focus    |       89 | 2001-01-01 |  10000 |          1 |
| kia rio       |       90 | 2005-01-03 |  10000 |          1 |
| laguna        |      200 | 2004-03-01 |  10000 |          0 |
| marbella      |       65 | 1996-01-05 |  10000 |          1 |
| megane        |      100 | 2003-03-01 |  10000 |          1 |
| mercedes 300  |      150 | 2005-02-10 |  10000 |          1 |
| mercedes 500  |      200 | 1999-12-12 |  10000 |          1 |
| opel kadet    |       89 | 1999-12-12 |  10000 |          1 |
| r-18          |       80 | 1995-02-10 |  10000 |          1 |
| santa fe      |      150 | 1999-12-12 |  10000 |          1 |
| santia        |      200 | 2000-02-01 |  10000 |          1 |
| smart         |       60 | 2002-01-02 |  10000 |          0 |
| space         |      200 | 1999-12-12 |  10000 |          1 |
| toyota corola |      100 | 1999-12-12 |  10000 |          1 |
+---------------+----------+------------+--------+------------+

-- 7) Seleccionar los coches cuyo modelo empiece por S

SELECT *
FROM coches
WHERE modelo LIKE 'S%';

+----------+----------+------------+--------+------------+
| modelo   | potencia | fecha      | precio | disponible |
+----------+----------+------------+--------+------------+
| santa fe |      150 | 1999-12-12 |  10000 |          1 |
| santia   |      200 | 2000-02-01 |  10000 |          1 |
| smart    |       60 | 2002-01-02 |  10000 |          0 |
| space    |      200 | 1999-12-12 |  10000 |          1 |
+----------+----------+------------+--------+------------+

-- 8) Seleccionar los coches cuyo modelo termine por A

SELECT *
FROM coches
WHERE modelo LIKE '%a';

+---------------+----------+------------+--------+------------+
| modelo        | potencia | fecha      | precio | disponible |
+---------------+----------+------------+--------+------------+
| fiat brava    |       90 | 1999-12-12 |  10000 |          0 |
| laguna        |      200 | 2004-03-01 |  10000 |          0 |
| marbella      |       65 | 1996-01-05 |  10000 |          1 |
| santia        |      200 | 2000-02-01 |  10000 |          1 |
| toyota corola |      100 | 1999-12-12 |  10000 |          1 |
+---------------+----------+------------+--------+------------+

-- 9) Seleccionar los coches cuyo modelo termine por A y el precio sea superior a 12000

SELECT *
FROM coches
WHERE modelo LIKE '%a' AND precio > 12000;

Empty set (0,00 sec) -- NO HAY COCHES QUE CUMPLAN ESAS DOS CONDICIONES

-- 10) Seleccionar los coches cuyo modelo termine por A o el precio sea superior a 12000

SELECT *
FROM coches
WHERE modelo LIKE '%a' OR precio > 12000;

+---------------+----------+------------+--------+------------+
| modelo        | potencia | fecha      | precio | disponible |
+---------------+----------+------------+--------+------------+
| fiat brava    |       90 | 1999-12-12 |  10000 |          0 |
| laguna        |      200 | 2004-03-01 |  10000 |          0 |
| marbella      |       65 | 1996-01-05 |  10000 |          1 |
| santia        |      200 | 2000-02-01 |  10000 |          1 |
| toyota corola |      100 | 1999-12-12 |  10000 |          1 |
+---------------+----------+------------+--------+------------+

-- 11) Seleccionar los modelos, potencia y precio de los coches con potencia igual a 90, 100 o 200 y ordenados descendentemente por el campo potencia y en caso de repetición por el campo precio

SELECT modelo, potencia, precio
FROM coches
WHERE potencia = 90 OR potencia = 100 OR potencia = 200
ORDER BY potencia DESC;

+---------------+----------+--------+
| modelo        | potencia | precio |
+---------------+----------+--------+
| laguna        |      200 |  10000 |
| mercedes 500  |      200 |  10000 |
| santia        |      200 |  10000 |
| space         |      200 |  10000 |
| afent         |      100 |  10000 |
| megane        |      100 |  10000 |
| toyota corola |      100 |  10000 |
| fiat brava    |       90 |  10000 |
| kia rio       |       90 |  10000 |
+---------------+----------+--------+

-- 12) Seleccionar los coches con todos los campos y uno más que será IVA, de cada uno de los precios ordenados ascendentemente por el campo precio

-- NI IDEA DE QUE ES LO QUE PIDE EN ESTE EJERCICIO, ESTÁ MUY MAL EXPRESADO.







































