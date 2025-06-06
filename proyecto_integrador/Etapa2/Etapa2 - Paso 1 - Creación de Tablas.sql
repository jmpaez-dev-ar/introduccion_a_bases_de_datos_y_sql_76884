USE TECNO_DB;

CREATE TABLE CLIENTES (
    ClienteID INT PRIMARY KEY,
    Nombre VARCHAR(25),
    Apellido VARCHAR(25),
    CUIT CHAR(16),
    Direccion VARCHAR(50),
    Comentarios VARCHAR(50)
);

CREATE TABLE ARTICULOS (
    ArticuloID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Precio DOUBLE,
    Stock INT
);

CREATE TABLE FACTURAS (
    FacturaID INT PRIMARY KEY,
    Letra CHAR(1),
    Numero INT,
    ClienteID INT,
    Fecha DATE,
    Monto DOUBLE,
    FOREIGN KEY (ClienteID) REFERENCES CLIENTES(ClienteID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE DETALLE (
    DetalleID INT PRIMARY KEY,
    ArticuloID INT,
    FacturaID INT,
    Cantidad INT,
    FOREIGN KEY (ArticuloID) REFERENCES ARTICULOS(ArticuloID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (FacturaID) REFERENCES FACTURAS(FacturaID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


