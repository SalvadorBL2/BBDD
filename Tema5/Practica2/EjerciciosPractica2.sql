/*1*/

INSERT INTO almacenes
SELECT 1, 'Barcelona', 3;

/*2*/

INSERT INTO cajas
SELECT 'H5RT', 'Papel', 200, 2;

INSERT INTO cajas
SELECT 'H9KG', 'Tierra', 240, 2;
INSERT INTO cajas
SELECT 'H7KJ', 'Juguetes', 100, 1;
INSERT INTO cajas
SELECT 'H5MK', 'Rocas', 300, 2;
INSERT INTO cajas
SELECT 'H4VF', 'Aluminio', 400, 2;
INSERT INTO cajas
SELECT 'H9BG', 'Hilo', 80, 1;
INSERT INTO cajas
SELECT 'H2NH', 'Metal', 450, 2;

/*3*/

UPDATE cajas
SET valor=valor*0.85;

/*4*/

UPDATE cajas
SET valor=valor*0.80
WHERE valor>(
	SELECT AVG(valor)
	FROM cajas
	);

/*5*/

DELETE
FROM cajas
WHERE valor>100;

/*6*/

??


















