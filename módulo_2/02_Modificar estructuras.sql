-- Activamos la BBDD de trabajo
use tecno_prj;
show tables;

-- Agregamos columnas a la tabla
desc articulos;
alter table articulos add COLUMN Observaciones VARCHAR(50) null;
desc articulos;

-- (Add) Agregamos columnas a la tabla en una determinada posición
desc Clientes;
alter table Clientes add column Primera varchar(10) null FIRST;
desc Clientes;
alter table Clientes add column Siguiente varchar(10) null AFTER Nombre;
desc Clientes;

-- (Change) Modificamos el nombre del Campo, Tipo de Dato o restricción
desc articulos;
alter table articulos CHANGE Observaciones Comentarios varchar(40);
desc articulos;

-- (Modify) Cambiamos el Tipo de Dato o restricción
desc articulos;
alter table articulos modify Comentarios text null;
desc articulos;

-- (Drop) Eliminar columa(s)
desc Clientes;
alter table Clientes drop column Primera, drop column Siguiente;
desc Clientes;

desc articulos;
alter table articulos drop column Comentarios;
desc articulos;

-- Renombrar tablas
alter table Articulos rename Productos;
show tables;

rename table Productos to Articulos;


-- 	Agregar o eliminar restricciones
desc articulos;
alter table Articulos drop PRIMARY KEY;
desc articulos;
alter table Articulos add PRIMARY KEY(ArticuloID);
desc articulos;

desc Detalle;
alter table Detalle drop FOREIGN KEY detalle_ibfk_1;
desc Detalle;
alter table Detalle add CONSTRAINT detalle_articulo_FK
	FOREIGN KEY (ArticuloID) REFERENCES Articulos(ArticuloID);

