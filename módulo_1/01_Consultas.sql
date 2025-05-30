use tecno_prj;

select * from articulos;
select ArticuloId, Nombre from articulos;

select *, Precio * 1.21 as 'precio con iva' from articulos;

-- Order By
select *, Precio * 1.21 as 'precio con iva', 'EEUU' as Origen, true as Disponible 
from articulos
order by ArticuloId desc;

select * from articulos order by Nombre;

select * from Clientes
order by Apellido, Nombre;

-- Limit
select * from articulos order by precio desc limit 5;

-- Limit + Offset
select * from articulos order by ArticuloId
limit 10 offset 10;

-- where
select * from articulos where Precio < 100000 order by Precio; 

