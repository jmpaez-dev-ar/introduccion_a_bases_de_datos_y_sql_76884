-- Se establece la base de datos a utilizar
USE tecno_prj;

-- Se consulta todo el contenido de la tabla 'articulos'
SELECT * FROM articulos;

-- Se actualiza el nombre del artículo con ID 20
UPDATE articulos 
SET nombre = 'Disco Externo 2TB (Samsung)'
WHERE ArticuloID = 20;

-- Se vuelve a actualizar el mismo artículo con nuevo nombre y stock
UPDATE articulos 
SET nombre = 'Disco Externo 2TB (SanDisk)', 
    Stock = 30
WHERE ArticuloID = 20;

-- Se actualiza el nombre del artículo con ID 233
UPDATE articulos 
SET nombre = 'Mousepad RGB (sin stock)'
WHERE ArticuloID = 233;

-- Se visualiza la estructura (columnas) de la tabla 'articulos'
DESC articulos;

-- Se incrementa el precio de todos los artículos en un 10%
UPDATE articulos 
SET precio = precio * 1.10;

-- Se visualiza cada artículo con su nuevo precio calculado (no modifica la tabla)
SELECT *, precio * 1.10 AS NuevoPrecio 
FROM articulos;

/*
Ejemplo de salida de precios actualizados:
1	Notebook Lenovo	226691.8
2	Monitor LG 24''	282023.36
3	Teclado Mecánico Redragon	92074.05
4	Mouse Logitech M170	114885.33
*/

-- Error típico al ejecutar UPDATE sin WHERE en modo seguro
-- Se desactiva el modo seguro de SQL para permitir actualizaciones masivas
SET sql_safe_updates = 0;

-- Se vuelve a activar el modo seguro de SQL
SET sql_safe_updates = 1;
