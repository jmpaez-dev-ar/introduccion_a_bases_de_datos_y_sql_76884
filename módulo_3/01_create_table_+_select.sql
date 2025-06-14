-- Selecciona la base de datos activa
USE tecno_prj;

-- Muestra todas las tablas existentes en la base de datos actual
SHOW TABLES;

-- Muestra todos los registros de la tabla 'articulos'
SELECT * FROM articulos;

-- Crea una nueva tabla llamada 'articulos_copia' copiando la estructura y los datos de 'articulos'
CREATE TABLE articulos_copia
SELECT * FROM articulos;

-- Muestra todos los registros de la nueva tabla 'articulos_copia'
SELECT * FROM articulos_copia;

-- Aumenta en un 10% el precio de todos los artículos en la tabla 'articulos_copia'
UPDATE articulos_copia SET Precio = Precio * 1.10;

-- Muestra la estructura (columnas y tipos de datos) de la tabla 'articulos'
DESC articulos;

-- Muestra la estructura de la tabla 'articulos_copia'
DESC articulos_copia;
