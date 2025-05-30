-- Consulta de datos anexados
use tecno_prj;

CREATE TABLE ARTICULOS_Analisis (
    ArticuloID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Precio DOUBLE,
    Stock INT
);

insert into ARTICULOS_Analisis(ArticuloID, Nombre, Precio)
select ArticuloID, Nombre, Precio from Articulos limit 5 OFFSET 10;

insert into ARTICULOS_Analisis(ArticuloID, Nombre, Precio)
select ArticuloID, Nombre, Precio from Articulos limit 5 OFFSET 20;

insert into ARTICULOS_Analisis(ArticuloID, Nombre, Precio)
select ArticuloID, Nombre, Precio from Articulos limit 5 OFFSET 30;


select * from ARTICULOS_Analisis;