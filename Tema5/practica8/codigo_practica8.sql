DROP DATABASE IF EXISTS practica8;
CREATE DATABASE practica8;
USE practica8;

CREATE TABLE almacenes(
	codigo INT PRIMARY KEY,
	lugar VARCHAR(100),
	capacidad INT
)ENGINE=InnoDB;

CREATE TABLE cajas(
	numreferencia CHAR(5) PRIMARY KEY,
	contenido VARCHAR(5),
	valor INT,
	almacen INT,
	FOREIGN KEY (almacen) REFERENCES almacenes(codigo) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;


