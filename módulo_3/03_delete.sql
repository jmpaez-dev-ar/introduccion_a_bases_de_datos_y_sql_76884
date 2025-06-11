-- Selecciona la base de datos 'tecno_prj' para trabajar sobre ella
USE tecno_prj;

-- Muestra todos los registros actuales de la tabla 'articulos_analisis'
SELECT * FROM articulos_analisis;

-- Elimina los registros de 'articulos_analisis' con los IDs 29 y 30
DELETE FROM articulos_analisis WHERE ArticuloID IN (29, 30);

-- Elimina el registro con ID 25 de la tabla 'articulos_analisis'
DELETE FROM articulos_analisis WHERE ArticuloID = 25;

-- Elimina todos los registros de la tabla 'articulos_analisis'
DELETE FROM articulos_analisis;

-- Desactiva el modo de actualizaciones seguras (por ejemplo, para permitir DELETE sin WHERE)
SET sql_safe_updates = 0;

-- Describe la estructura de la tabla 'detalle'
DESC detalle;

-- Elimina todos los registros de la tabla 'detalle' (equivalente a DELETE sin WHERE)
DELETE FROM detalle;

-- Vacía completamente la tabla 'detalle' y reinicia su contador de AUTO_INCREMENT (más eficiente que DELETE)
TRUNCATE TABLE detalle;
