Consulta 1. (Inserta un nuevo almacén en Barcelona con capacidad para 3 cajas)

INSERT INTO almacenes VALUES (codigo, 'Barcelona', 3);

Consulta 2. (Inserta una nueva caja, con número de referencia H5RT, con contenido Papel, valor 200 y situada en el almacén 2)

INSERT INTO cajas VALUES ('H5RT', 'Papel', 200, 2);

Consulta 3 (Rebaja el valor de todas las cajas un 15%)

UPDATE cajas
SET valor=
