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
