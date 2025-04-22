DROP DATABASE IF EXISTS Practica_7;
CREATE DATABASE Practica_7;
USE Practica_7;

CREATE TABLE fabricante (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
) ENGINE=InnoDB;

CREATE TABLE producto (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio DECIMAL(10,2),
    codigoFabricante INT,
    FOREIGN KEY (codigoFabricante) REFERENCES fabricante(codigo)
        ON UPDATE CASCADE
        ON DELETE SET NULL
) ENGINE=InnoDB;

INSERT INTO fabricante (nombre) VALUES
('Asus'),
('Lenovo'),
('Hewlett-Packard'),
('Samsung'),
('Seagate'),
('Crucial'),
('Gigabyte'),
('Huawei'),
('Xiaomi');

INSERT INTO producto (nombre, precio, codigoFabricante) VALUES
('Disco duro SATA3 1TB', 86.99, 5),
('Memoria RAM DDR4 8GB', 120.00, 6),
('Disco SSD 1 TB', 150.99, 4),
('GeForce GTX 1050Ti', 185.00, 7),
('GeForce GTX 1080 Xtreme', 755.00, 6),
('Monitor 24 LED Full HD', 202.00, 1),
('Monitor 27 LED Full HD', 245.99, 1),
('Portátil Yoga 520', 559.00, 2),
('Portátil Ideapad 320', 444.00, 2),
('Impresora HP Deskjet 3720', 59.99, 3),
('Impresora HP LaserJet Pro M26nw', 180.00, 3);


SELECT 'TABLA FABRICANTE' AS NOMBRE;
DESCRIBE fabricante;
SELECT 'TABLA PRODUCTO' AS NOMBRE;
DESCRIBE producto;




































