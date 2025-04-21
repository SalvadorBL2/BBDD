-- 1 Averigua el DNI de todos los clientes.

SELECT dni
FROM Cliente;
+-----+
| dni |
+-----+
|   1 |
|   2 |
|   3 |
|   4 |
|   5 |
|   6 |
+-----+

-- 2 Consulta todos los datos de todos los programas.

SELECT *
FROM Programa;
+------------+--------------------------+-----------------+
| idPrograma | nombre                   | version         |
+------------+--------------------------+-----------------+
|          1 | Application Server       | 9i              |
|          2 | Database                 | 8i              |
|          3 | Database                 | 9i              |
|          4 | Database                 | 10g             |
|          5 | Developer                | 6i              |
|          6 | Access                   | 97              |
|          7 | Access                   | 2000            |
|          8 | Access                   | XP              |
|          9 | Windows                  | 98              |
|         10 | Windows                  | XP Professional |
|         11 | Windows                  | XP Home Edition |
|         12 | Windows                  | 2003 Server     |
|         13 | Norton Internet Security | 2004            |
|         14 | Freddy Hardest           | -               |
|         15 | Paradox                  | 2               |
|         16 | C++ Builder              | 55              |
|         17 | DB/2                     | 20              |
|         18 | OS/2                     | 10              |
|         19 | JBuilder                 | X               |
|         20 | La Prisión               | 10              |
+------------+--------------------------+-----------------+

-- 3 Obtén un listado con los nombres de todos los programas.

SELECT DISTINCT nombre
FROM Programa;
+--------------------------+
| nombre                   |
+--------------------------+
| Application Server       |
| Database                 |
| Developer                |
| Access                   |
| Windows                  |
| Norton Internet Security |
| Freddy Hardest           |
| Paradox                  |
| C++ Builder              |
| DB/2                     |
| OS/2                     |
| JBuilder                 |
| La Prisión               |
+--------------------------+

-- 4 Genera una lista con todos los comercios.

SELECT *
FROM Comercio;
+------------+-----------------+-----------+
| idComercio | nombre          | ciudad    |
+------------+-----------------+-----------+
|          1 | El Corte Ingles | Sevilla   |
|          2 | El Corte Ingles | Madrid    |
|          3 | Jump            | Valencia  |
|          4 | Centro Mail     | Sevilla   |
|          5 | FNAC            | Barcelona |
+------------+-----------------+-----------+

-- 5 Genera una lista de las ciudades con establecimientos donde se venden programas, sin que aparezcan valores duplicados .

SELECT DISTINCT ciudad
FROM Comercio;
+-----------+
| ciudad    |
+-----------+
| Sevilla   |
| Madrid    |
| Valencia  |
| Barcelona |
+-----------+

-- 6 Obtén una lista con los nombres de programas, sin que aparezcan valores duplicados.

SELECT DISTINCT nombre
FROM Programa;
+--------------------------+
| nombre                   |
+--------------------------+
| Application Server       |
| Database                 |
| Developer                |
| Access                   |
| Windows                  |
| Norton Internet Security |
| Freddy Hardest           |
| Paradox                  |
| C++ Builder              |
| DB/2                     |
| OS/2                     |
| JBuilder                 |
| La Prisión               |
+--------------------------+

-- 7 Obtén el DNI más 4 de todos los clientes.

SELECT dni + 4
FROM Cliente;
+---------+
| dni + 4 |
+---------+
|       5 |
|       6 |
|       7 |
|       8 |
|       9 |
|      10 |
+---------+

-- 8 Haz un listado con los códigos de los programas multiplicados por 7.

SELECT idPrograma * 7
FROM Programa;
+----------------+
| idPrograma * 7 |
+----------------+
|              7 |
|             14 |
|             21 |
|             28 |
|             35 |
|             42 |
|             49 |
|             56 |
|             63 |
|             70 |
|             77 |
|             84 |
|             91 |
|             98 |
|            105 |
|            112 |
|            119 |
|            126 |
|            133 |
|            140 |
+----------------+

-- 9 ¿Cuáles son los programas cuyo código es inferior o igual a 10?

SELECT *
FROM Programa
WHERE idPrograma <= 10;
+------------+--------------------+-----------------+
| idPrograma | nombre             | version         |
+------------+--------------------+-----------------+
|          1 | Application Server | 9i              |
|          2 | Database           | 8i              |
|          3 | Database           | 9i              |
|          4 | Database           | 10g             |
|          5 | Developer          | 6i              |
|          6 | Access             | 97              |
|          7 | Access             | 2000            |
|          8 | Access             | XP              |
|          9 | Windows            | 98              |
|         10 | Windows            | XP Professional |
+------------+--------------------+-----------------+

-- 10 ¿Cuál es el programa cuyo código es 11?

SELECT *
FROM Programa
WHERE idPrograma = 11;
+------------+---------+-----------------+
| idPrograma | nombre  | version         |
+------------+---------+-----------------+
|         11 | Windows | XP Home Edition |
+------------+---------+-----------------+

-- 11 ¿Qué fabricantes son de Estados Unidos?

SELECT *
FROM Fabricante
WHERE pais = 'Estados Unidos';
+--------------+-----------+----------------+
| idFabricante | nombre    | pais           |
+--------------+-----------+----------------+
|            1 | Oracle    | Estados Unidos |
|            2 | Microsoft | Estados Unidos |
|            3 | IBM       | Estados Unidos |
|            5 | Borland   | Estados Unidos |
|            6 | Symantec  | Estados Unidos |
+--------------+-----------+----------------+

-- 12 ¿Cuáles son los fabricantes no españoles?

SELECT *
FROM Fabricante
WHERE pais <> 'España';
+--------------+-----------+----------------+
| idFabricante | nombre    | pais           |
+--------------+-----------+----------------+
|            1 | Oracle    | Estados Unidos |
|            2 | Microsoft | Estados Unidos |
|            3 | IBM       | Estados Unidos |
|            5 | Borland   | Estados Unidos |
|            6 | Symantec  | Estados Unidos |
+--------------+-----------+----------------+

-- 13 Obtén un listado con los códigos de las distintas versiones de Windows.

SELECT idPrograma
FROM Programa
WHERE nombre = 'Windows';
+------------+
| idPrograma |
+------------+
|          9 |
|         10 |
|         11 |
|         12 |
+------------+

-- 14 ¿En qué ciudades comercializa programas El Corte Inglés?

SELECT ciudad
FROM Comercio
WHERE nombre = 'El Corte Inglés';
+---------+
| ciudad  |
+---------+
| Sevilla |
| Madrid  |
+---------+

-- 15 ¿Qué otros comercios hay, además de El Corte Inglés?

SELECT *
FROM Comercio
WHERE nombre <> 'El Corte Inglés';
+------------+-------------+-----------+
| idComercio | nombre      | ciudad    |
+------------+-------------+-----------+
|          3 | Jump        | Valencia  |
|          4 | Centro Mail | Sevilla   |
|          5 | FNAC        | Barcelona |
+------------+-------------+-----------+

-- 16 Genera una lista con los códigos de las distintas versiones de Windows y Access.

SELECT idPrograma
FROM Programa
WHERE nombre IN ('Windows', 'Access');
+------------+
| idPrograma |
+------------+
|          6 |
|          7 |
|          8 |
|          9 |
|         10 |
|         11 |
|         12 |
+------------+

-- 17 Obtén un listado que incluya los nombres de los clientes de edades comprendidas entre 10 y 25 y de los mayores de 50 años.

SELECT nombre
FROM Cliente
WHERE edad BETWEEN 10 AND 25 OR edad > 50;
+-----------------+
| nombre          |
+-----------------+
| Javier Casado   |
| Antonio Navarro |
+-----------------+

-- 18 Saca un listado con los comercios de Sevilla y Madrid. No se admiten valores duplicados.

SELECT DISTINCT nombre
FROM Comercio
WHERE ciudad IN ('Sevilla', 'Madrid');
+-----------------+
| nombre          |
+-----------------+
| El Corte Ingles |
| Centro Mail     |
+-----------------+

-- 19 ¿Qué clientes terminan su nombre en la letra “o”?

SELECT *
FROM Cliente
WHERE nombre LIKE '%o';
+-----+-----------------+------+
| dni | nombre          | edad |
+-----+-----------------+------+
|   4 | Javier Casado   |   18 |
|   6 | Antonio Navarro |   58 |
+-----+-----------------+------+

-- 20 ¿Qué clientes terminan su nombre en la letra “o” y, además, son mayores de 30 años?

SELECT *
FROM Cliente
WHERE nombre LIKE '%o' AND edad > 30;
+-----+-----------------+------+
| dni | nombre          | edad |
+-----+-----------------+------+
|   6 | Antonio Navarro |   58 |
+-----+-----------------+------+

-- 21 Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A o por una W.

SELECT *
FROM Programa
WHERE version LIKE '%i' OR nombre LIKE 'A%' OR nombre LIKE 'W%';
+------------+--------------------+-----------------+
| idPrograma | nombre             | version         |
+------------+--------------------+-----------------+
|          1 | Application Server | 9i              |
|          2 | Database           | 8i              |
|          3 | Database           | 9i              |
|          5 | Developer          | 6i              |
|          6 | Access             | 97              |
|          7 | Access             | 2000            |
|          8 | Access             | XP              |
|          9 | Windows            | 98              |
|         10 | Windows            | XP Professional |
|         11 | Windows            | XP Home Edition |
|         12 | Windows            | 2003 Server     |
+------------+--------------------+-----------------+

-- 22 Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A y termine por una S.

SELECT *
FROM Programa
WHERE version LIKE '%i' OR nombre LIKE 'A%' AND nombre LIKE '%s';
+------------+--------------------+---------+
| idPrograma | nombre             | version |
+------------+--------------------+---------+
|          1 | Application Server | 9i      |
|          2 | Database           | 8i      |
|          3 | Database           | 9i      |
|          5 | Developer          | 6i      |
|          6 | Access             | 97      |
|          7 | Access             | 2000    |
|          8 | Access             | XP      |
+------------+--------------------+---------+

-- 23 Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, y cuyo nombre no comience por una A.

SELECT *
FROM Programa
WHERE version LIKE '%i' AND nombre NOT LIKE 'A%';
+------------+-----------+---------+
| idPrograma | nombre    | version |
+------------+-----------+---------+
|          2 | Database  | 8i      |
|          3 | Database  | 9i      |
|          5 | Developer | 6i      |
+------------+-----------+---------+

-- 24 Obtén una lista de empresas por orden alfabético ascendente.

SELECT *
FROM Comercio
ORDER BY nombre ASC;
/* LAS LETRAS ORDENADAS ASCENDENTEMENTE VAN DESDE LA 'A' HASTA LA 'Z' */
+------------+-----------------+-----------+
| idComercio | nombre          | ciudad    |
+------------+-----------------+-----------+
|          4 | Centro Mail     | Sevilla   |
|          1 | El Corte Ingles | Sevilla   |
|          2 | El Corte Ingles | Madrid    |
|          5 | FNAC            | Barcelona |
|          3 | Jump            | Valencia  |
+------------+-----------------+-----------+

-- 25 Genera un listado de empresas por orden alfabético descendente.

SELECT *
FROM Comercio
ORDER BY nombre DESC;
/* LOS NOMBRES DEBERIAN IR ORDENADOS DESDE LA 'Z' HASTA LA 'A' */
+------------+-----------------+-----------+
| idComercio | nombre          | ciudad    | 
+------------+-----------------+-----------+
|          3 | Jump            | Valencia  |
|          5 | FNAC            | Barcelona |
|          1 | El Corte Ingles | Sevilla   |
|          2 | El Corte Ingles | Madrid    |
|          4 | Centro Mail     | Sevilla   |
+------------+-----------------+-----------+

-- 26 Obtén un listado de programas por orden de versión

SELECT *
FROM Programa
ORDER BY version;
/* POR DEFECTO SE ORDENAN PRIMERO LOS CARACTERES ESPECIALES, LUEGO LOS NUMEROS Y POR ULTIMO LAS LETRAS, EN ESE ORDEN */
+------------+--------------------------+-----------------+
| idPrograma | nombre                   | version         |
+------------+--------------------------+-----------------+
|         14 | Freddy Hardest           | -               |
|         20 | La Prisión               | 10              |
|         18 | OS/2                     | 10              |
|          4 | Database                 | 10g             |
|         15 | Paradox                  | 2               |
|         17 | DB/2                     | 20              |
|          7 | Access                   | 2000            |
|         12 | Windows                  | 2003 Server     |
|         13 | Norton Internet Security | 2004            |
|         16 | C++ Builder              | 55              |
|          5 | Developer                | 6i              |
|          2 | Database                 | 8i              |
|          6 | Access                   | 97              |
|          9 | Windows                  | 98              |
|          3 | Database                 | 9i              |
|          1 | Application Server       | 9i              |
|         19 | JBuilder                 | X               |
|          8 | Access                   | XP              |
|         11 | Windows                  | XP Home Edition |
|         10 | Windows                  | XP Professional |
+------------+--------------------------+-----------------+

-- 27 Genera un listado de los programas que desarrolla Oracle.

SELECT Programa.*
FROM Programa
JOIN Desarrolla ON Desarrolla.idPrograma = Programa.idPrograma
WHERE Desarrolla.idFabricante = (
	SELECT Fabricante.idFabricante
	FROM Fabricante
	WHERE nombre = 'Oracle'
	);
+------------+--------------------+---------+
| idPrograma | nombre             | version |
+------------+--------------------+---------+
|          1 | Application Server | 9i      |
|          2 | Database           | 8i      |
|          3 | Database           | 9i      |
|          4 | Database           | 10g     |
|          5 | Developer          | 6i      |
+------------+--------------------+---------+

-- 28 ¿Qué comercios distribuyen Windows?

SELECT Comercio.*
FROM Comercio
JOIN Distribuye ON Comercio.idComercio = Distribuye.idComercio
JOIN Programa ON Distribuye.idPrograma = Programa.idPrograma
WHERE Programa.nombre = 'Windows';
+------------+-----------------+----------+
| idComercio | nombre          | ciudad   |
+------------+-----------------+----------+
|          1 | El Corte Ingles | Sevilla  |
|          3 | Jump            | Valencia |
+------------+-----------------+----------+

-- 29 Genera un listado de los programas y cantidades que se han distribuido a El Corte Inglés de Madrid.

SELECT Programa.*, Distribuye.unidades
FROM Programa
JOIN Distribuye ON Programa.idPrograma = Distribuye.idPrograma
JOIN Comercio ON Distribuye.idComercio = Comercio.idComercio
WHERE Comercio.nombre = 'El Corte Inglés' AND ciudad = 'Madrid';
+------------+--------------------+---------+----------+
| idPrograma | nombre             | version | unidades |
+------------+--------------------+---------+----------+
|          1 | Application Server | 9i      |        6 |
|          2 | Database           | 8i      |        6 |
|          6 | Access             | 97      |        4 |
|          7 | Access             | 2000    |        7 |
+------------+--------------------+---------+----------+

-- 30 ¿Qué fabricante ha desarrollado Freddy Hardest?

SELECT Fabricante.nombre
FROM Fabricante
JOIN Desarrolla ON Fabricante.IdFabricante = Desarrolla.idFabricante
JOIN Programa ON Desarrolla.idPrograma = Programa.idPrograma
WHERE Programa.nombre = 'Freddy Hardest';
+---------+
| nombre  |
+---------+
| Dinamic |
+---------+

-- 31 Selecciona el nombre de los programas que se registran por Internet.

SELECT Programa.nombre
FROM Programa
JOIN Registra ON Programa.idPrograma = Registra.idPrograma
WHERE medio = 'Internet';
+--------------------+
| nombre             |
+--------------------+
| Application Server |
| Paradox            |
| Windows            |
+--------------------+

-- 32 Selecciona el nombre de las personas que se registran por Internet.

SELECT Cliente.nombre
FROM Cliente
JOIN Registra ON Cliente.dni = Registra.dni
WHERE medio = 'Internet';
+----------------+
| nombre         |
+----------------+
| Pepe Pérez     |
| Juan González  |
| Nuria Sánchez  |
+----------------+

-- 33 ¿Qué medios ha utilizado para registrarse Pepe Pérez?

SELECT Registra.medio
FROM Registra
JOIN Cliente ON Registra.dni = Cliente.dni
WHERE Cliente.nombre = 'Pepe Pérez';
+----------------+
| medio          |
+----------------+
| Internet       |
| Tarjeta Postal |
+----------------+

-- 34 ¿Qué usuarios han optado por Internet como medio de registro?

SELECT Cliente.nombre
FROM Cliente
JOIN Registra ON Cliente.dni = Registra.dni
WHERE medio = 'Internet';
+----------------+
| nombre         |
+----------------+
| Pepe Pérez     |
| Juan González  |
| Nuria Sánchez  |
+----------------+

-- 35 ¿Qué programas han recibido registros por tarjeta postal?

SELECT Programa.nombre
FROM Programa
JOIN Registra ON Programa.idPrograma = Registra.idPrograma
WHERE medio = 'Tarjeta Postal';
+----------+
| nombre   |
+----------+
| Database |
| Windows  |
+----------+

-- 36 ¿En qué localidades se han vendido productos que se han registrado por Internet?

SELECT DISTINCT Comercio.Ciudad
FROM Comercio
JOIN Registra ON Comercio.idComercio = Registra.idComercio
WHERE medio = 'Internet';
+---------+
| Ciudad  |
+---------+
| Sevilla |
| Madrid  |
+---------+

-- 37 Obtén un listado de los nombres de las personas que se han registrado por Internet, junto al nombre de los programas para los que ha efectuado el registro.

SELECT DISTINCT Cliente.nombre, Programa.nombre
FROM Cliente
JOIN Registra ON Cliente.dni = Registra.dni
JOIN Programa ON Registra.idPrograma = Programa.idPrograma;
+----------------+--------------------+
| nombre         | nombre             |
+----------------+--------------------+
| Pepe Pérez     | Application Server |
| Pepe Pérez     | Database           |
| Juan González  | Paradox            |
| Javier Casado  | Windows            |
| Nuria Sánchez  | Windows            |
+----------------+--------------------+

-- 38 Genera un listado en el que aparezca cada cliente junto al programa que ha registrado, el medio con el que lo ha hecho y el comercio en el que lo ha adquirido.

SELECT Cliente.nombre, Programa.nombre, Registra.medio, Comercio.nombre
FROM Cliente
JOIN Registra ON Cliente.dni = Registra.dni
JOIN Programa ON Programa.idPrograma = Registra.idPrograma
JOIN Comercio ON Registra.idComercio = Comercio.idComercio;
+----------------+--------------------+----------------+-----------------+
| nombre         | nombre             | medio          | nombre          |
+----------------+--------------------+----------------+-----------------+
| Pepe Pérez     | Application Server | Internet       | El Corte Ingles |
| Javier Casado  | Windows            | Tarjeta Postal | El Corte Ingles |
| Javier Casado  | Windows            | Telefono       | El Corte Ingles |
| Nuria Sánchez  | Windows            | Internet       | El Corte Ingles |
| Pepe Pérez     | Database           | Tarjeta Postal | Jump            |
| Juan González  | Paradox            | Internet       | Centro Mail     |
+----------------+--------------------+----------------+-----------------+


/*------------------ HASTA AQUI ESTAN COMPROBADAS LAS CONSULTAS ---------------------*/


-- 39 Genera un listado con las ciudades en las que se pueden obtener los productos de Oracle.
-- 40 Obtén el nombre de los usuarios que han registrado Access XP.
-- 41 Nombre de aquellos fabricantes cuyo país es el mismo que ʻOracleʼ.
-- 42 Nombre de aquellos clientes que tienen la misma edad que Pepe Pérez.
-- 43 Genera un listado con los comercios que tienen su sede en la misma ciudad que tiene el comercio ʻFNACʼ.
-- 44 Nombre de aquellos clientes que han registrado un producto de la misma forma que el cliente ʻPepe Pérezʼ.
-- 45 Obtener el número de programas que hay en la tabla programas.
-- 46 Calcula el número de clientes cuya edad es mayor de 40 años.
-- 47 Calcula el número de productos que ha vendido el establecimiento cuyo CIF es 1.
-- 48 Calcula la media de programas que se venden cuyo código es 7.
-- 49 Calcula la mínima cantidad de programas de código 7 que se ha vendido
-- 50 Calcula la máxima cantidad de programas de código 7 que se ha vendido.
-- 51 ¿En cuántos establecimientos se vende el programa cuyo código es 7?
-- 52 Calcular el número de registros que se han realizado por Internet.
-- 53 Obtener el número total de programas que se han vendido en ʻSevillaʼ.
-- 54 Calcular el número total de programas que han desarrollado los fabricantes cuyo país es ʻEstados Unidosʼ.






































