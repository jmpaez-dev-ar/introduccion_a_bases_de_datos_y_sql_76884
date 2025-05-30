-- PROYECTO INTEGRADOR - ETAPA 2

-- PASO 1:
# 1. Crear una base de datos con el nombre TECNO_DB.

	create database TECNO_DB;

# 2. Poner en uso la base de datos generada en el paso anterior.

USE TECNO_DB;

# 3. Importar y ejecutar el código SQL generado (ver archivo Creación de Tablas.sql)

# 4. Crear una tabla con el nombre LOCALIDADES

CREATE TABLE LOCALIDADES (
    LocalidadID INT PRIMARY KEY,
    Nombre VARCHAR(40),
    CP VARCHAR(10),
    Provincia VARCHAR(20)
);

# 5. Mostrar un listado de todas las bases de datos alojadas en el servidor.
show databases;

# 6. Mostrar un listado de todas las tablas de la BBDD
show tables;

# 7. Comentar la instrucción que lista las tablas
-- show tables;
# show tables;
/* show tables; */

-- 8. Describir la estructura de la tabla CLIENTES.
desc Clientes;
describe Clientes;
