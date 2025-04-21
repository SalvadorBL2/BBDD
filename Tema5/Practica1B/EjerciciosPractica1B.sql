
/*1*/


DELETE
FROM emple
WHERE salario>(				
	SELECT salario*0.5
	FROM emple
	WHERE oficio='PRESIDENTE'
	);

/*2*/

DELETE
FROM depart
WHERE dept_no NOT IN(
	SELECT dept_no
	FROM emple
	);

/*3*/


DELETE
FROM emple
WHERE salario>(
	SELECT SUM(salario)
	FROM emple
	WHERE dept_no=20
	);
	
/*4*/

DELETE
FROM emple
WHERE emple.comision=(
	SELECT MIN(emple.salario)
	FROM emple
	);
	
/*5*/

DELETE
FROM emple
WHERE oficio IS NULL;	
	
/*6*/

UPDATE emple
SET fecha_alt=(
	SELECT fecha_alt
	FROM emple
	WHERE emp_no=7782
	)
WHERE emp_no=7839;

/*7*/

DELETE
FROM depart
WHERE dnombre=(
	SELECT dnombre
	FROM depart
	WHERE dept_no=10
	)
AND dept_no<>10;

/*8*/

INSERT INTO emple VALUES (8002, 'LÓPEZ', 'VENDEDOR', 7955, '2023/11/21', 1500, 400, 30);	
	
/*9*/

INSERT INTO emple 
SELECT 8801, apellido, oficio, dir, fecha_alt, salario, comision, 30
FROM emple
WHERE emp_no=7782;
	
/*10*/	
	
INSERT INTO depart
SELECT 50, 'RECURSOS HUMANOS', loc
FROM depart
WHERE dept_no=10;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
