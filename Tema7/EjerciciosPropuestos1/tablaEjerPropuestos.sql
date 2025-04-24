DROP DATABASE IF EXISTS EjerciciosPropuestos;
CREATE DATABASE EjerciciosPropuestos;
USE EjerciciosPropuestos;

CREATE TABLE almacenes (
    codigo INT(11) NOT NULL PRIMARY KEY,
    lugar VARCHAR(10),
    capacidad INT(11)
) ENGINE=InnoDB;

CREATE TABLE cajas (
    numReferencia INT(11),
    valor INT(11),
    almacen INT(11),
    FOREIGN KEY (almacen) REFERENCES almacenes(codigo)
) ENGINE=InnoDB;

CREATE TABLE peliculas (
	codigo INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(30),
	genero VARCHAR(30),
	duracion INT,
	nacionalidad VARCHAR(30)
)ENGINE=InnoDB;

CREATE TABLE clientes (
	idCliente INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(30),
	email VARCHAR(30),
	ciudad VARCHAR(30)
)ENGINE=InnoDB;

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('El Padrino', 'Crimen', 175, 'Estados Unidos');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('La Casa de Papel', 'Acción', 40, 'España');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('Amélie', 'Comedia', 45, 'Francia');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('Parasite', 'Drama', 132, 'Corea del Sur');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('Inception', 'Ciencia ficción', 148, 'Estados Unidos');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('Spirited Away', 'Animación', 80, 'Japón');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('La La Land', 'Musical', 128, 'Estados Unidos');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('El Secreto de sus Ojos', 'Suspenso', 129, 'Argentina');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('Memento', 'Thriller', 113, 'Estados Unidos');

INSERT INTO peliculas (titulo, genero, duracion, nacionalidad)
VALUES ('El Viaje de Chihiro', 'Fantasía', 80, 'Japón');


INSERT INTO clientes (nombre, email, ciudad)
VALUES ('Salvador', 'sbarroso@gmail.com', 'Jerez');

INSERT INTO clientes (nombre, email, ciudad)
VALUES ('Victoria', 'vsierra@gmail.com', 'Puerto Real');

INSERT INTO clientes (nombre, email, ciudad)
VALUES ('Macarena', 'mlobo@gmail.com', 'Chiclana');

INSERT INTO clientes (nombre, email, ciudad)
VALUES ('Jesus', 'jcalleja@gmail.com', 'El Puerto');

INSERT INTO clientes (nombre, email, ciudad)
VALUES ('Rodrigo', 'rrato@gmail.com', 'Algeciras');

INSERT INTO clientes (nombre, email, ciudad)
VALUES ('Maite', 'mfigueroa@gmail.com', 'Rota');


