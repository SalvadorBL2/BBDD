/*1*/

DELETE
FROM empleados
WHERE salario<1000;

/*2*/

UPDATE empleados
SET salario=salario*1.1
WHERE departamento='Ventas';

/*3*/

DELETE
FROM empleados
WHERE id NOT IN(
	SELECT id_empleado_responsable
	FROM proyectos
	WHERE id_empleado_responsable IS NOT NULL
	);

/*4*/


