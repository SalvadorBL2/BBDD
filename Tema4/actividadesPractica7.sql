-- A. Muestra un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.

SELECT *
FROM fabricante f
LEFT JOIN producto p ON f.codigo = p.codigoFabricante;
+--------+-----------------+--------+---------------------------------+--------+------------------+
| codigo | nombre          | codigo | nombre                          | precio | codigoFabricante |
+--------+-----------------+--------+---------------------------------+--------+------------------+
|      1 | Asus            |      6 | Monitor 24 LED Full HD          | 202.00 |                1 |
|      1 | Asus            |      7 | Monitor 27 LED Full HD          | 245.99 |                1 |
|      2 | Lenovo          |      8 | Portátil Yoga 520               | 559.00 |                2 |
|      2 | Lenovo          |      9 | Portátil Ideapad 320            | 444.00 |                2 |
|      3 | Hewlett-Packard |     10 | Impresora HP Deskjet 3720       |  59.99 |                3 |
|      3 | Hewlett-Packard |     11 | Impresora HP LaserJet Pro M26nw | 180.00 |                3 |
|      4 | Samsung         |      3 | Disco SSD 1 TB                  | 150.99 |                4 |
|      5 | Seagate         |      1 | Disco duro SATA3 1TB            |  86.99 |                5 |
|      6 | Crucial         |      2 | Memoria RAM DDR4 8GB            | 120.00 |                6 |
|      6 | Crucial         |      5 | GeForce GTX 1080 Xtreme         | 755.00 |                6 |
|      7 | Gigabyte        |      4 | GeForce GTX 1050Ti              | 185.00 |                7 |
|      8 | Huawei          |   NULL | NULL                            |   NULL |             NULL |
|      9 | Xiaomi          |   NULL | NULL                            |   NULL |             NULL |
+--------+-----------------+--------+---------------------------------+--------+------------------+

-- B. Muestra un listado donde sólo aparezcan aquellos fabricantes que tienen algún producto asociado.

SELECT *
FROM fabricante f
JOIN producto p ON f.codigo = p.codigoFabricante;
+--------+-----------------+--------+---------------------------------+--------+------------------+
| codigo | nombre          | codigo | nombre                          | precio | codigoFabricante |
+--------+-----------------+--------+---------------------------------+--------+------------------+
|      1 | Asus            |      6 | Monitor 24 LED Full HD          | 202.00 |                1 |
|      1 | Asus            |      7 | Monitor 27 LED Full HD          | 245.99 |                1 |
|      2 | Lenovo          |      8 | Portátil Yoga 520               | 559.00 |                2 |
|      2 | Lenovo          |      9 | Portátil Ideapad 320            | 444.00 |                2 |
|      3 | Hewlett-Packard |     10 | Impresora HP Deskjet 3720       |  59.99 |                3 |
|      3 | Hewlett-Packard |     11 | Impresora HP LaserJet Pro M26nw | 180.00 |                3 |
|      4 | Samsung         |      3 | Disco SSD 1 TB                  | 150.99 |                4 |
|      5 | Seagate         |      1 | Disco duro SATA3 1TB            |  86.99 |                5 |
|      6 | Crucial         |      2 | Memoria RAM DDR4 8GB            | 120.00 |                6 |
|      6 | Crucial         |      5 | GeForce GTX 1080 Xtreme         | 755.00 |                6 |
|      7 | Gigabyte        |      4 | GeForce GTX 1050Ti              | 185.00 |                7 |
+--------+-----------------+--------+---------------------------------+--------+------------------+

-- C. Muestra un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.

SELECT f.*
FROM fabricante f
LEFT JOIN producto p ON f.codigo = p.codigoFabricante
WHERE p.codigoFabricante IS NULL;
+--------+--------+
| codigo | nombre |
+--------+--------+
|      8 | Huawei |
|      9 | Xiaomi |
+--------+--------+

/*
D. ¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.
------------------------------------------------------------------------------------------------------
Sí, pueden existir productos que no estén relacionados con un fabricante, siempre que la columna codigo_fabricante esté permitida como NULL y la relación FOREIGN KEY no tenga restricciones que lo impidan (por ejemplo, si está definida con ON DELETE SET NULL). En ese caso, un producto puede no tener asignado ningún fabricante.
*/























