-- Crea una base de datos llamada PRACTICA1 que contendrá las siguientes 3 tablas que nos servirán para realizar las consultas:

DROP DATABASE IF EXISTS PRACTICA1;
CREATE DATABASE PRACTICA1;
USE PRACTICA1;

CREATE TABLE clientes(
	codCliente INT PRIMARY KEY,
	nombre VARCHAR(30),
	apellido1 VARCHAR(30),
	apellido2 VARCHAR(30),
	nif INT,
	poblacion VARCHAR(30),
	calle VARCHAR(30),
	CP INT,
	telefono VARCHAR(15)
)ENGINE=InnoDB;

CREATE TABLE coches(
	modelo VARCHAR(30) PRIMARY KEY,
	potencia INT,
	fecha DATE,
	precio INT,
	disponible BOOLEAN
)ENGINE=InnoDB;

CREATE TABLE productos(
	codigoProducto INT,
	mes VARCHAR(20),
	ingresos INT,
	PRIMARY KEY (codigoProducto, mes, ingresos)
)ENGINE=InnoDB;

INSERT INTO clientes VALUES (1, 'Pedro', 'García', 'Rovira', 123456798, 'Madrid', 'Las Huertas', 12345, 9112345678);
INSERT INTO clientes VALUES (2, 'Juan', 'Garriga', 'Sorlí', 987654323, 'Barcelona', 'Diagonal 32', 234423, 93456789);
INSERT INTO clientes VALUES (3, 'Ana', 'Jacinta', 'Galdos', 847474747, 'Málaga', 'La Paz', 836311, 67845493);
INSERT INTO clientes VALUES (4, 'Esperanza', 'Aguirre', 'Gonzalez', 949383838, 'Córdoba', 'Julio Romero', 848487, 57474747);

INSERT INTO coches VALUES ('afent', 100, '1999-12-12', 10000, TRUE);
INSERT INTO coches VALUES ('clio', 70, '1999-12-12', 10000, TRUE);
INSERT INTO coches VALUES ('fiat brava', 90, '1999-12-12', 10000, FALSE);
INSERT INTO coches VALUES ('fiat punto', 70, '1995-09-09', 10000, TRUE);
INSERT INTO coches VALUES ('ford focus', 89, '2001-01-01', 10000, TRUE);
INSERT INTO coches VALUES ('kia rio', 90, '2005-01-03', 10000, TRUE);
INSERT INTO coches VALUES ('laguna', 200, '2004-03-01', 10000, FALSE);
INSERT INTO coches VALUES ('marbella', 65, '1996-01-05', 10000, TRUE);
INSERT INTO coches VALUES ('megane', 100, '2003-03-01', 10000, TRUE);
INSERT INTO coches VALUES ('mercedes 300', 150, '2005-02-10', 10000, TRUE);
INSERT INTO coches VALUES ('mercedes 500', 200, '1999-12-12', 10000, TRUE);
INSERT INTO coches VALUES ('opel kadet', 89, '1999-12-12', 10000, TRUE);
INSERT INTO coches VALUES ('r-18', 80, '1995-02-10', 10000, TRUE);
INSERT INTO coches VALUES ('santa fe', 150, '1999-12-12', 10000, TRUE);
INSERT INTO coches VALUES ('santia', 200, '2000-02-01', 10000, TRUE);
INSERT INTO coches VALUES ('smart', 60, '2002-01-02', 10000, FALSE);
INSERT INTO coches VALUES ('space', 200, '1999-12-12', 10000, TRUE);
INSERT INTO coches VALUES ('toyota corola', 100, '1999-12-12', 10000, TRUE);

INSERT INTO productos VALUES (1, 'enero', 100);
INSERT INTO productos VALUES (1, 'enero', 400);
INSERT INTO productos VALUES (1, 'abril', 900);
INSERT INTO productos VALUES (4, 'enero', 2000);
INSERT INTO productos VALUES (4, 'febrero', 1200);
INSERT INTO productos VALUES (7, 'marzo', 230);
INSERT INTO productos VALUES (7, 'mayo', 500);
INSERT INTO productos VALUES (7, 'mayo', 600);
INSERT INTO productos VALUES (7, 'abril', 234);
INSERT INTO productos VALUES (7, 'marzo', 1000);
INSERT INTO productos VALUES (8, 'enero', 600);
INSERT INTO productos VALUES (8, 'enero', 1290);
INSERT INTO productos VALUES (9, 'marzo', 2400);

























