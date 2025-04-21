A. Muestra un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.

SELECT fabricante.*, producto.nombre AS productos
FROM fabricante LEFT JOIN producto
ON fabricante.codigo=producto.codigo_fabricante;

+--------+-----------------+---------------------------------+
| codigo | nombre          | productos                       |
+--------+-----------------+---------------------------------+
|      1 | Asus            | Monitor 24 LED Full HD          |
|      1 | Asus            | Monitor 27 LED Full HD          |
|      2 | Lenovo          | Portátil Yoga 520               |
|      2 | Lenovo          | Portátil Ideapd 320             |
|      3 | Hewlett-Packard | Impresora HP Deskjet 3720       |
|      3 | Hewlett-Packard | Impresora HP Laserjet Pro M26nw |
|      4 | Samsung         | Disco SSD 1TB                   |
|      5 | Seagate         | Disco duro SATA3 1TB            |
|      6 | Crucial         | Memoria RAM DDR4 8GB            |
|      6 | Crucial         | GeForce GTX 1080 Xtreme         |
|      7 | Gigabyte        | GeForce GTX 1050Ti              |
|      8 | Huawei          | NULL                            |
|      9 | Xiaomi          | NULL                            |
+--------+-----------------+---------------------------------+

B. Muestra un listado donde sólo aparezcan aquellos fabricantes que tienen algún producto asociado.

SELECT DISTINCT fabricante.*
FROM fabricante, producto
WHERE fabricante.codigo=producto.codigo_fabricante;

+--------+-----------------+
| codigo | nombre          |
+--------+-----------------+
|      1 | Asus            |
|      2 | Lenovo          |
|      3 | Hewlett-Packard |
|      4 | Samsung         |
|      5 | Seagate         |
|      6 | Crucial         |
|      7 | Gigabyte        |
+--------+-----------------+

C. Muestra un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.

SELECT fabricante.*
FROM fabricante LEFT JOIN producto
ON fabricante.codigo=producto.codigo_fabricante
WHERE producto.codigo_fabricante IS NULL;

+--------+--------+
| codigo | nombre |
+--------+--------+
|      8 | Huawei |
|      9 | Xiaomi |
+--------+--------+

D. ¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.








































