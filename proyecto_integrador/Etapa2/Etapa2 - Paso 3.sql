-- PROYECTO INTEGRADOR - ETAPA 2

-- PASO 3:

USE TECNO_DB;

/* 1. Cargar 5 registros en la tabla LOCALIDADES, tal como se detallan a continuación: */
# Prompt: podrías proporcionar el script para cargar 5 registros en la tabla LOCALIDADES, tal como se detallan en las imágenes adjuntas.

select * from Localidades; 
desc Localidades;

-- opción 1:
INSERT INTO localidades (LocalidadID, Nombre, CP, Provincia) VALUES
(1, 'CABA', '1000', 'Buenos Aires'),
(2, 'Rosario', '2000', 'Santa Fe'),
(3, 'Córdoba', '5000', 'Córdoba'),
(4, 'San Miguel de Tucumán', '4000', 'Tucumán'),
(5, 'Neuquén', '8300', 'Neuquén');

-- opción 2: Si la columna LocalidadID está definida como AUTO_INCREMENT, podés omitirla en el INSERT:
INSERT INTO localidades (Nombre, CP, Provincia) VALUES
('CABA', '1000', 'Buenos Aires'),
('Rosario', '2000', 'Santa Fe'),
('Córdoba', '5000', 'Córdoba'),
('San Miguel de Tucumán', '4000', 'Tucumán'),
('Neuquén', '8300', 'Neuquén');

/* 2. Cargar 5 registros en la tabla CLIENTES, tal como se detallan a continuación: */
# podrías proporcionar el script para cargar 5 registros en la tabla CLIENTES, tal como se detallan en las imágenes adjuntas 
select * from Clientes;

-- Opcion 1: 
INSERT INTO clientes (ClienteID, Nombre, Apellido, CUIT, Direccion, Observaciones, LocalidadID) VALUES
(5,  'Santiago', 'González', '23-24582359-9', 'Uriburu 558 - 7ºA',       'VIP',  3),
(14, 'Gloria',   'Fernández', '23-35965852-5', 'Constitución 323',       'GBA',  1),
(17, 'Gonzalo',  'López',     '23-33587416-0', 'Arias 2624',             'GBA',  5),
(26, 'Carlos',   'García',    '23-42321230-9', 'Pasteur 322 - 2ºC',      'VIP',  2),
(50, 'Micaela',  'Altieri',   '23-22885566-5', 'Santamarina 1255',       'GBA',  4);

-- Opcion 2:  Si ClienteID es AUTO_INCREMENT, omitilo en el INSERT:
INSERT INTO clientes (Nombre, Apellido, CUIT, Direccion, Observaciones, LocalidadID) VALUES
('Santiago', 'González', '23-24582359-9', 'Uriburu 558 - 7ºA',       'VIP',  3),
('Gloria',   'Fernández', '23-35965852-5', 'Constitución 323',       'GBA',  1),
('Gonzalo',  'López',     '23-33587416-0', 'Arias 2624',             'GBA',  5),
('Carlos',   'García',    '23-42321230-9', 'Pasteur 322 - 2ºC',      'VIP',  2),
('Micaela',  'Altieri',   '23-22885566-5', 'Santamarina 1255',       'GBA',  4);


/* 3. Cargar 4 registros en la tabla ARTICULOS, tal como se detallan a continuación: */
# podrías proporcionar el script para cargar 4 registros en la tabla ARTICULOS, tal como se detallan en las imágenes adjuntas 

-- Opcion 1
INSERT INTO articulos (ArticuloID, Nombre, Precio, Stock) VALUES
(95,  'Webcam con Micrófono Plug & Play',       513.35,   39),
(157, 'Apple AirPods Pro',                      979.75,  152),
(335, 'Lavasecarropas Automático Samsung',     1589.50,   12),
(411, 'Gloria Trevi / Gloria / CD+DVD',        2385.70,    2);

-- Opcion 2: ⚠️ Si ArticuloID es una columna AUTO_INCREMENT, podés omitirla en la inserción:
INSERT INTO articulos (Nombre, Precio, Stock) VALUES
('Webcam con Micrófono Plug & Play',       513.35,   39),
('Apple AirPods Pro',                      979.75,  152),
('Lavasecarropas Automático Samsung',     1589.50,   12),
('Gloria Trevi / Gloria / CD+DVD',        2385.70,    2);

/* 4. Cargar 5 registros en la tabla FACTURAS, tal como se detallan a continuación:*/
# Prompt: podrías proporcionar el script para cargar 5 registros en la tabla FACTURAS, tal como se detallan en las imágenes adjuntas 

-- Opcion 1:
INSERT INTO facturas (FacturaID, Letra, Numero, IDCliente, Fecha, Monto) VALUES
(1, 'A', 28, 14, '2021-03-18', 1589.50),
(2, 'A', 39, 26, '2021-04-12',  979.75),
(3, 'B',  8, 17, '2021-04-25',  513.35),
(4, 'B', 12,  5, '2021-05-01', 2385.70),
(5, 'B', 19, 50, '2022-05-26',  979.75);

-- Opcion 2: Si FacturaID es AUTO_INCREMENT, podés omitirlo en la inserción:
INSERT INTO facturas (Letra, Numero, IDCliente, Fecha, Monto) VALUES
('A', 28, 14, '2021-03-18', 1589.50),
('A', 39, 26, '2021-04-12',  979.75),
('B',  8, 17, '2021-04-25',  513.35),
('B', 12,  5, '2021-05-01', 2385.70),
('B', 19, 50, '2022-05-26',  979.75);


/* Adjuntar el archivo SQL con el código y realizar un prompt donde le pedimos generar 
el código SQL para insertar 15 registros en la tabla DETALLES.*/

# Prompt: 
/*
		Podrías generar el código SQL para insertar 15 registros en la  tabla DETALLES.
		Considerando los datos registrados en estas tablas: 

		INSERT INTO articulos (ArticuloID, Nombre, Precio, Stock) VALUES
		(95,  'Webcam con Micrófono Plug & Play',       513.35,   39),
		(157, 'Apple AirPods Pro',                      979.75,  152),
		(335, 'Lavasecarropas Automático Samsung',     1589.50,   12),
		(411, 'Gloria Trevi / Gloria / CD+DVD',        2385.70,    2);


		INSERT INTO facturas (FacturaID, Letra, Numero, IDCliente, Fecha, Monto) VALUES
		(1, 'A', 28, 14, '2021-03-18', 1589.50),
		(2, 'A', 39, 26, '2021-04-12',  979.75),
		(3, 'B',  8, 17, '2021-04-25',  513.35),
		(4, 'B', 12,  5, '2021-05-01', 2385.70),
		(5, 'B', 19, 50, '2022-05-26',  979.75);
*/

-- Opción 1:
INSERT INTO detalle (DetalleID, ArticuloID, FacturaID, Cantidad) VALUES
(1,  335, 1, 1),  -- Lavasecarropas Samsung en Factura 1
(2,  157, 2, 1),  -- Apple AirPods Pro en Factura 2
(3,   95, 3, 1),  -- Webcam en Factura 3
(4,  411, 4, 1),  -- CD/DVD Gloria Trevi en Factura 4
(5,  157, 5, 1),  -- Apple AirPods Pro en Factura 5

(6,   95, 1, 2),  -- 2 Webcams en Factura 1
(7,  411, 1, 1),  -- CD/DVD en Factura 1
(8,  157, 3, 2),  -- 2 AirPods en Factura 3
(9,  335, 2, 1),  -- Lavasecarropas en Factura 2
(10, 157, 4, 3),  -- 3 AirPods en Factura 4

(11, 411, 2, 1),  -- CD/DVD en Factura 2
(12,  95, 5, 1),  -- Webcam en Factura 5
(13, 335, 3, 1),  -- Lavasecarropas en Factura 3
(14,  95, 4, 1),  -- Webcam en Factura 4
(15, 411, 5, 1);  -- CD/DVD en Factura 5

-- Opción 2:  Si la columna DetalleID es AUTO_INCREMENT, omitila en la instrucción:
INSERT INTO detalle (ArticuloID, FacturaID, Cantidad) VALUES
(335, 1, 1),
(157, 2, 1),
( 95, 3, 1),
(411, 4, 1),
(157, 5, 1),
( 95, 1, 2),
(411, 1, 1),
(157, 3, 2),
(335, 2, 1),
(157, 4, 3),
(411, 2, 1),
( 95, 5, 1),
(335, 3, 1),
( 95, 4, 1),
(411, 5, 1);
