CREATE DATABASE fumarya;
use fumarya;

CREATE TABLE Usuarios (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Contrasena VARCHAR(24) NOT NULL,
    Telefono INT NOT NULL,
    Correo VARCHAR(100) NOT NULL, 
    FechaNacimiento DATETIME NOT NULL, 
    Rol VARCHAR(30) NOT NULL
);

CREATE TABLE Producto (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Marca VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(255) NOT NULL,
    Precio DECIMAL(18,2) NOT NULL, 
    Tipo VARCHAR(50) NOT NULL, 
    Imagen VARCHAR(255) NOT NULL
);

CREATE TABLE Ventas (
    Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    IdUsuario INT NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    Municipio VARCHAR(45) NOT NULL,
    CodigoPostal INT NOT NULL, 
    Fecha DATETIME NOT NULL, 
    Estado VARCHAR(12) NOT NULL,
    Total DECIMAL(18,2) NOT NULL,
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios(Id)
);

CREATE TABLE DetalleVenta (
    IdVenta INT NOT NULL,
    IdProducto INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(18,2) NOT NULL,
    PRIMARY KEY (IdVenta, IdProducto),
    FOREIGN KEY (IdVenta) REFERENCES Ventas(Id),
    FOREIGN KEY (IdProducto) REFERENCES Producto(Id)
);

-- Insertando Usuarios
INSERT INTO Usuarios(Nombre, Contrasena, Telefono, Correo, FechaNacimiento, Rol) VALUES 
('Usuario1', 'pass1', 1234567890, 'usuario1@correo.com', '1990-01-01', 'Usuario'),
('Usuario2', 'pass2', 2345678901, 'usuario2@correo.com', '1991-02-02', 'Usuario'),
('Usuario3', 'pass3', 3456789012, 'usuario3@correo.com', '1992-03-03', 'Usuario'),
('Usuario4', 'pass4', 4567890123, 'usuario4@correo.com', '1993-04-04', 'Usuario'),
('Usuario5', 'pass5', 5678901234, 'usuario5@correo.com', '1994-05-05', 'Usuario'),
('Usuario6', 'pass6', 6789012345, 'usuario6@correo.com', '1995-06-06', 'Usuario'),
('Usuario7', 'pass7', 7890123456, 'usuario7@correo.com', '1996-07-07', 'Usuario'),
('Usuario8', 'pass8', 8901234567, 'usuario8@correo.com', '1997-08-08', 'Usuario'),
('Usuario9', 'pass9', 9012345678, 'usuario9@correo.com', '1998-09-09', 'Usuario'),
('Admin', 'adminpass', 9999999999, 'admin@correo.com', '1999-10-10', 'Admin');

-- Insertando Productos
INSERT INTO Producto(Nombre, Marca, Descripcion, Precio, Tipo, Imagen) VALUES 
('Cigarro1', 'Marca1', 'Descripcion1', 5.00, 'Tabaco', 'imagen1.jpg'),
('Cigarro2', 'Marca2', 'Descripcion2', 5.50, 'Tabaco', 'imagen2.jpg'),
('Cigarro3', 'Marca3', 'Descripcion3', 6.00, 'Tabaco', 'imagen3.jpg'),
('Cigarro4', 'Marca4', 'Descripcion4', 6.50, 'Tabaco', 'imagen4.jpg'),
('Cigarro5', 'Marca5', 'Descripcion5', 7.00, 'Tabaco', 'imagen5.jpg'),
('Cigarro6', 'Marca6', 'Descripcion6', 7.50, 'Tabaco', 'imagen6.jpg'),
('Cigarro7', 'Marca7', 'Descripcion7', 8.00, 'Tabaco', 'imagen7.jpg'),
('Cigarro8', 'Marca8', 'Descripcion8', 8.50, 'Tabaco', 'imagen8.jpg'),
('Cigarro9', 'Marca9', 'Descripcion9', 9.00, 'Tabaco', 'imagen9.jpg'),
('Cigarro10', 'Marca10', 'Descripcion10', 10.00, 'Tabaco', 'imagen10.jpg'),
('Cigarro11', 'Marca11', 'Descripcion11', 11.00, 'Tabaco', 'imagen11.jpg'),
('Cigarro12', 'Marca12', 'Descripcion12', 12.00, 'Tabaco', 'imagen12.jpg'),
('Cigarro13', 'Marca13', 'Descripcion13', 13.00, 'Tabaco', 'imagen13.jpg'),
('Cigarro14', 'Marca14', 'Descripcion14', 14.00, 'Tabaco', 'imagen14.jpg'),
('Cigarro15', 'Marca15', 'Descripcion15', 15.00, 'Tabaco', 'imagen15.jpg');

-- Insertando Ventas
-- Aquí estoy insertando 25 ventas de diferentes usuarios (a veces repito el mismo usuario) con fechas diferentes.
INSERT INTO Ventas(IdUsuario, Direccion, Municipio, CodigoPostal, Fecha, Estado, Total) VALUES 
(1, 'Direccion1', 'Municipio1', 11111, '2023-05-01 10:00:00', 'Completado', 69.50),
(2, 'Direccion2', 'Municipio2', 22222, '2023-05-02 11:00:00', 'Completado', 110.00),
(3, 'Direccion3', 'Municipio3', 33333, '2023-05-03 10:00:00', 'Completado', 35.50),
(4, 'Direccion4', 'Municipio4', 44444, '2023-05-04 11:00:00', 'Completado', 106.00),
(5, 'Direccion5', 'Municipio5', 55555, '2023-05-05 10:00:00', 'Completado', 259.00),
(6, 'Direccion6', 'Municipio6', 66666, '2023-05-06 11:00:00', 'Completado', 152.00),
(7, 'Direccion7', 'Municipio7', 77777, '2023-05-07 10:00:00', 'Completado', 79.00),
(8, 'Direccion8', 'Municipio8', 88888, '2023-05-08 11:00:00', 'Completado', 133.00),
(9, 'Direccion9', 'Municipio9', 99999, '2023-05-09 10:00:00', 'Completado', 76.00),
(10, 'Direccion10', 'Municipio10', 10101, '2023-05-10 11:00:00', 'Completado', 34.50),
(1, 'Direccion11', 'Municipio11', 11111, '2023-05-11 10:00:00', 'Completado', 30.00),
(2, 'Direccion12', 'Municipio12', 22222, '2023-05-12 11:00:00', 'Completado', 81.00),
(3, 'Direccion13', 'Municipio13', 33333, '2023-05-13 10:00:00', 'Completado', 6.00),
(4, 'Direccion14', 'Municipio14', 44444, '2023-05-14 11:00:00', 'Completado', 136.00),
(5, 'Direccion15', 'Municipio15', 55555, '2023-05-15 10:00:00', 'Completado', 36.00),
(6, 'Direccion16', 'Municipio16', 66666, '2023-05-16 11:00:00', 'Completado', 8.00),
(7, 'Direccion17', 'Municipio17', 77777, '2023-05-17 10:00:00', 'Completado', 117.00),
(8, 'Direccion18', 'Municipio18', 88888, '2023-05-18 11:00:00', 'Completado', 44.00),
(9, 'Direccion19', 'Municipio19', 99999, '2023-05-19 10:00:00', 'Completado', 11.00),
(10, 'Direccion20', 'Municipio20', 10101, '2023-05-20 11:00:00', 'Completado', 300.00),
(1, 'Direccion21', 'Municipio21', 11111, '2023-05-21 10:00:00', 'Completado', 28.00),
(2, 'Direccion22', 'Municipio22', 22222, '2023-05-22 11:00:00', 'Completado', 108.00),
(3, 'Direccion23', 'Municipio23', 33333, '2023-05-23 10:00:00', 'Completado', 7.50),
(4, 'Direccion24', 'Municipio24', 44444, '2023-05-24 11:00:00', 'Completado', 52.00),
(5, 'Direccion25', 'Municipio25', 55555, '2023-05-25 10:00:00', 'Completado', 419.00);

-- Insertando DetalleVenta

INSERT INTO DetalleVenta(IdVenta, IdProducto, Cantidad, PrecioUnitario) VALUES 
(1, 1, 2, 10.00),
(1, 2, 3, 16.50),
(2, 3, 1, 6.00),
(2, 4, 4, 26.00),
(3, 5, 2, 14.00),
(3, 6, 1, 7.50),
(4, 7, 3, 24.00),
(4, 8, 2, 17.00),
(5, 9, 1, 9.00),
(5, 10, 5, 50.00),
(6, 11, 2, 22.00),
(6, 12, 3, 36.00),
(7, 13, 1, 13.00),
(7, 14, 2, 28.00),
(8, 15, 4, 32.00),
(8, 1, 1, 5.00),
(9, 2, 2, 11.00),
(9, 3, 3, 18.00),
(10, 4, 1, 6.50),
(10, 5, 2, 14.00),
(11, 6, 2, 15.00),
(12, 9, 3, 27.00),
(13, 3, 1, 6.00),
(14, 8, 4, 34.00),
(15, 10, 2, 18.00),
(16, 11, 1, 8.00),
(17, 14, 3, 39.00),
(18, 15, 2, 22.00),
(19, 5, 1, 11.00),
(20, 12, 5, 60.00),
(21, 1, 2, 14.00),
(22, 7, 3, 36.00),
(23, 6, 1, 7.50),
(24, 13, 2, 26.00),
(25, 2, 4, 32.00),
(25, 11, 3, 33.00),
(25, 12, 4, 48.00);
