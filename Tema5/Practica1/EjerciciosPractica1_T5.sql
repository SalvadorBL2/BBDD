/*1.*/

INSERT INTO emple (emp_no, apellido, dept_no) VALUES (9999, 'GONZÁLEZ', 10);

/*2.*/

INSERT INTO emple VALUES (5000, 'MORAGA', 'EMPLEADO', 7902, '1999/10/17', 100000, NULL, 20);

/*3.*/

INSERT INTO depart VALUES (50, 'GENERAL', 'SEVILLA');

/*4.*/

INSERT INTO depart (dept_no, dnombre) VALUES (60, 'PRUEBAS');

/*5.*/

CREATE TABLE emple30(
	emp_no INTEGER PRIMARY KEY,
        apellido VARCHAR(50) NOT NULL,      
        oficio VARCHAR(30),
        dir INTEGER,
        fecha_alt DATE,
        salario INTEGER,
        comision INTEGER,       
        dept_no INTEGER,
        FOREIGN KEY (dept_no) REFERENCES depart (dept_no)
)ENGINE=InnoDB;

INSERT INTO emple30 VALUES (7369, 'SANCHEZ', 'EMPLEADO', 7902, '1980/12/17', 104000, NULL, 30);
INSERT INTO emple30 VALUES (7521, 'SALA', 'VENDEDOR', 7698, '1991/02/22', 1625, 650, 30);
INSERT INTO emple30 VALUES (7654, 'MARTIN', 'VENDEDOR', 7698, '1991/09/29', 1600, 1020, 30);
INSERT INTO emple30 VALUES (7698, 'NEGRO', 'DIRECTOR', 7839, '1991/05/01', 3005, NULL, 30);
INSERT INTO emple30 VALUES (7844, 'TOVAR', 'VENDEDOR', 7698, '1991/09/08', 1350, 0, 30);
INSERT INTO emple30 VALUES (7900, 'JIMENO', 'EMPLEADO', 7698, '1991/12/03', 1335, NULL, 30);

/*6.*/

CREATE TABLE emple20(
	emp_no INTEGER PRIMARY KEY,
        apellido VARCHAR(50) NOT NULL,      
        oficio VARCHAR(30),
        dir INTEGER,
        fecha_alt DATE,
        salario INTEGER,
        comision INTEGER,       
        dept_no INTEGER,
        FOREIGN KEY (dept_no) REFERENCES depart (dept_no)
)ENGINE=InnoDB;

INSERT INTO emple20 VALUES (7369, 'SANCHEZ', 'EMPLEADO', 7902, '1980/12/17', 104000, NULL, 20);
INSERT INTO emple20 VALUES (7566, 'JIMENEZ', 'DIRECTOR', 7839, '1981/04/02', 386750, NULL, 20);
INSERT INTO emple20 VALUES (7788, 'GIL', 'ANALISTA', 7566, '1981/11/09', 390000, NULL, 20);
INSERT INTO emple20 VALUES (7876, 'ALONSO', 'EMPLEADO', 7788, '1981/09/23', 143000, NULL, 20);
INSERT INTO emple20 VALUES (7902, 'FERNÁNDEZ', 'ANALISTA', 7566, '1981/12/03', 390000, NULL, 20);


/*7*/

UPDATE emple30
SET salario=salario*2
WHERE dept_no=30;

/*8*/

UPDATE emple
SET dept_no=20
WHERE dept_no=30;

/*9*/

UPDATE emple
SET salario=salario+(salario*0.1)
WHERE dept_no=10;

/*10*/

UPDATE depart
SET loc='BILBAO'
WHERE dept_no=10;

/*11*/

UPDATE emple
SET salario=(
	SELECT salario
	FROM emple30
	WHERE apellido='NEGRO'
	)
WHERE apellido='ARROYO';

/*12*/

UPDATE emple
SET salario=(
	SELECT emple30.salario
	FROM emple30
	WHERE apellido='JIMENO'
	)				/*¿ÉSTA FORMA DE HACERLO ES ÓPTIMA?*/
WHERE apellido='MUÑOZ',
UPDATE emple
SET oficio=(
	SELECT emple30.oficio
	FROM emple30
	WHERE apellido='JIMENO'
	)
WHERE apellido='MUÑOZ';

/*13*/

DELETE 
FROM depart
WHERE dept_no=50;

/*14*/

DELETE 
FROM emple
WHERE oficio='ANALISTA' AND dept_no=20;

/*15*/

DELETE
FROM emple
WHERE comision IS NULL OR comision=0;



























