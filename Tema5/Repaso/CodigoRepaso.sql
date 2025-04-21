DROP DATABASE IF EXISTS Repaso;
CREATE DATABASE Repaso;
USE Repaso;

/*1*/

CREATE TABLE empleados (
	id CHAR(2) PRIMARY KEY,
	nombre VARCHAR(20),
	edad INT,
	departamento VARCHAR(20),
	salario INT
)ENGINE=InnoDB;

INSERT INTO empleados
SELECT 1, 'Javier', 24, 'Ventas', 900;
INSERT INTO empleados
SELECT 2, 'Jesus', 26, 'Administrativo', 1200;
INSERT INTO empleados
SELECT 3, 'Jeremías', 45, 'Comercial', 1800;
INSERT INTO empleados
SELECT 4, 'Jorge', 36, 'Administrativo', 1200;
INSERT INTO empleados
SELECT 5, 'Jaime', 29, 'Ventas', 900;

CREATE TABLE proyectos (
	id_proyecto CHAR(2) PRIMARY KEY,
	nombre VARCHAR(20),
	id_empleado_responsable CHAR(2),
	FOREIGN KEY proyectos(id_empleado_responsable) REFERENCES empleados(id)
)ENGINE=InnoDB;

INSERT INTO proyectos
SELECT 1, 'Creación', 1;
INSERT INTO proyectos
SELECT 2, 'Editado', NULL;
INSERT INTO proyectos
SELECT 3, 'Gestión', NULL;
INSERT INTO proyectos
SELECT 4, 'Revisado', 2;
INSERT INTO proyectos
SELECT 5, 'Reparto', 4;












