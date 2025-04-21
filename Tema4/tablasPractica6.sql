DROP DATABASE IF EXISTS Practica6_T4;
CREATE DATABASE Practica6_T4;
USE Practica6_T4;

CREATE TABLE Fabricante (
  idFabricante INT PRIMARY KEY,
  nombre VARCHAR(50),
  pais VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE Programa (
  idPrograma INT PRIMARY KEY,
  nombre VARCHAR(100),
  version VARCHAR(20)
) ENGINE=InnoDB;

CREATE TABLE Comercio (
  idComercio INT PRIMARY KEY,
  nombre VARCHAR(100),
  ciudad VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE Cliente (
  dni INT PRIMARY KEY,
  nombre VARCHAR(100),
  edad INT
) ENGINE=InnoDB;

CREATE TABLE Desarrolla (
  idFabricante INT,
  idPrograma INT,
  PRIMARY KEY (idFabricante, idPrograma),
  FOREIGN KEY (idFabricante) REFERENCES Fabricante(idFabricante),
  FOREIGN KEY (idPrograma) REFERENCES Programa(idPrograma)
) ENGINE=InnoDB;

CREATE TABLE Distribuye (
  idComercio INT,
  idPrograma INT,
  unidades INT,
  PRIMARY KEY (idComercio, idPrograma),
  FOREIGN KEY (idComercio) REFERENCES Comercio(idComercio),
  FOREIGN KEY (idPrograma) REFERENCES Programa(idPrograma)
) ENGINE=InnoDB;

CREATE TABLE Registra (
  dni INT,
  idComercio INT,
  idPrograma INT,
  medio VARCHAR(50),
  PRIMARY KEY (dni, idComercio, idPrograma),
  FOREIGN KEY (dni) REFERENCES Cliente(dni),
  FOREIGN KEY (idComercio) REFERENCES Comercio(idComercio),
  FOREIGN KEY (idPrograma) REFERENCES Programa(idPrograma)
) ENGINE=InnoDB;

INSERT INTO Fabricante VALUES 
(1, 'Oracle', 'Estados Unidos'),
(2, 'Microsoft', 'Estados Unidos'),
(3, 'IBM', 'Estados Unidos'),
(4, 'Dinamic', 'España'),
(5, 'Borland', 'Estados Unidos'),
(6, 'Symantec', 'Estados Unidos');

INSERT INTO Programa VALUES 
(1, 'Application Server', '9i'),
(2, 'Database', '8i'),
(3, 'Database', '9i'),
(4, 'Database', '10g'),
(5, 'Developer', '6i'),
(6, 'Access', '97'),
(7, 'Access', '2000'),
(8, 'Access', 'XP'),
(9, 'Windows', '98'),
(10, 'Windows', 'XP Professional'),
(11, 'Windows', 'XP Home Edition'),
(12, 'Windows', '2003 Server'),
(13, 'Norton Internet Security', '2004'),
(14, 'Freddy Hardest', '-'),
(15, 'Paradox', '2'),
(16, 'C++ Builder', '55'),
(17, 'DB/2', '20'),
(18, 'OS/2', '10'),
(19, 'JBuilder', 'X'),
(20, 'La Prisión', '10');

INSERT INTO Comercio VALUES 
(1, 'El Corte Ingles', 'Sevilla'),
(2, 'El Corte Ingles', 'Madrid'),
(3, 'Jump', 'Valencia'),
(4, 'Centro Mail', 'Sevilla'),
(5, 'FNAC', 'Barcelona');

INSERT INTO Cliente VALUES 
(1, 'Pepe Pérez', 45),
(2, 'Juan González', 45),
(3, 'Maria Gómez', 33),
(4, 'Javier Casado', 18),
(5, 'Nuria Sánchez', 29),
(6, 'Antonio Navarro', 58);

INSERT INTO Desarrolla VALUES 
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
(2, 6), (2, 7), (2, 8), (2, 9), (2, 10), (2, 11), (2, 12),
(6, 13),
(4, 14),
(5, 15), (5, 16),
(3, 17), (3, 18),
(5, 19),
(4, 20);

INSERT INTO Distribuye VALUES 
(1, 1, 10), (1, 2, 11), (1, 6, 5), (1, 7, 3), (1, 10, 5), (1, 13, 7),
(2, 1, 6), (2, 2, 6), (2, 6, 4), (2, 7, 7),
(3, 10, 8), (3, 13, 5),
(4, 14, 3), (4, 20, 6),
(5, 15, 8), (5, 16, 2), (5, 17, 3), (5, 19, 6), (5, 8, 8);

INSERT INTO Registra VALUES 
(1, 1, 1, 'Internet'),
(1, 3, 4, 'Tarjeta Postal'),
(4, 2, 10, 'Telefono'),
(4, 1, 10, 'Tarjeta Postal'),
(5, 2, 12, 'Internet'),
(2, 4, 15, 'Internet');

SELECT 'Fabricante' AS NOMBRE_TABLA;
DESCRIBE Fabricante;
SELECT 'Cliente' AS NOMBRE_TABLA;
DESCRIBE Cliente;
SELECT 'Comercio' AS NOMBRE_TABLA;
DESCRIBE Comercio;
SELECT 'Programa' AS NOMBRE_TABLA;
DESCRIBE Programa;
SELECT 'Desarrolla' AS NOMBRE_TABLA;
DESCRIBE Desarrolla;
SELECT 'Distribuye' AS NOMBRE_TABLA;
DESCRIBE Distribuye;
SELECT 'Registra' AS NOMBRE_TABLA;
DESCRIBE Registra;














