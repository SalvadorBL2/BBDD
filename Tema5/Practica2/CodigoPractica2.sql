DROP DATABASE IF EXISTS Practica2T5;
CREATE DATABASE Practica2T5;
USE Practica2T5;

CREATE TABLE almacenes(
	codigo INT PRIMARY KEY,
	lugar VARCHAR(100),
	capacidad INT
)ENGINE=InnoDB;

CREATE TABLE cajas(
	numReferencia CHAR(5) PRIMARY KEY,
	contenido VARCHAR(100),
	valor INT,
	almacen INT,
	FOREIGN KEY cajas (almacen) REFERENCES almacenes (codigo)
)ENGINE=InnoDB;


