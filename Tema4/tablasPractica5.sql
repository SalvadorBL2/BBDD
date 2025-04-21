DROP DATABASE IF EXISTS GestionAlsinaBD;
CREATE DATABASE GestionAlsinaBD;
USE GestionAlsinaBD;

CREATE TABLE TEmpleados(
	nombreEm VARCHAR(10),
	apellidosEm VARCHAR(30),
	idEmpleado CHAR(4) PRIMARY KEY,
	fechaAntiguedadEm DATE
)ENGINE=InnoDB;

CREATE TABLE TAutocares(
	matricula VARCHAR(10) PRIMARY KEY,
	plazas INT,
	modelo VARCHAR(10)
)ENGINE=InnoDB;

CREATE TABLE TDesplazamientos(
	fechaDesplazamiento DATE,
	autocar VARCHAR(10),
	conductor CHAR(4),
	destino VARCHAR(10),
	totalViajeros INT,
	PRIMARY KEY (fechaDesplazamiento, autocar, conductor),
	FOREIGN KEY (autocar) REFERENCES TAutocares(matricula),
	FOREIGN KEY (conductor) REFERENCES TEmpleados(idEmpleado)
)ENGINE=InnoDB;

INSERT INTO TEmpleados VALUES ('Juan', 'Gómez de Liaño', '1111', '1970-02-20');
INSERT INTO TEmpleados VALUES ('Luis', 'del Olmo Olmillo', '2222', '1982-12-15');
INSERT INTO TEmpleados VALUES ('Juana', 'Reina de España', '3333', '1997-10-10');
INSERT INTO TEmpleados VALUES ('Dolores', 'Fuerte de Barriga', '4444', '1970-12-12');
INSERT INTO TEmpleados VALUES ('José', 'Ortega Cano', '5555', '1988-04-15');

INSERT INTO TAutocares VALUES ('AA-1111-AA', 50, 'Travel');
INSERT INTO TAutocares VALUES ('BB-2222-BB', 52, 'Travel');
INSERT INTO TAutocares VALUES ('CC-3333-CC', 50, 'Travel');
INSERT INTO TAutocares VALUES ('DD-4444-DD', 48, 'Plane');
INSERT INTO TAutocares VALUES ('EE-5555-EE', 48, 'Confort');
INSERT INTO TAutocares VALUES ('FF-6666-FF', 45, 'Plane');

INSERT INTO TDesplazamientos VALUES ('1998-01-01', 'BB-2222-BB', '3333', 'Granada', 45);
INSERT INTO TDesplazamientos VALUES ('1998-02-02', 'CC-3333-CC', '1111', 'Cordoba', 44);
INSERT INTO TDesplazamientos VALUES ('1998-03-03', 'AA-1111-AA', '4444', 'Jaen', 47);
INSERT INTO TDesplazamientos VALUES ('1998-04-04', 'CC-3333-CC', '2222', 'Huelva', 47);
INSERT INTO TDesplazamientos VALUES ('1998-04-20', 'DD-4444-DD', '1111', 'Cordoba', 46);
INSERT INTO TDesplazamientos VALUES ('1998-01-01', 'EE-5555-EE', '5555', 'Almeria', 45);























