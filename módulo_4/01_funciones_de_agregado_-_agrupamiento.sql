-- Funciones de Agregado / Agrupamiento

use tecno_prj;

# count()
select count(*) as Cantidad from Clientes;
select count(*) as Cantidad from Articulos;
select count(*) as Cantidad from Articulos where stock < 30;

 # sum()
 select * from Articulos;
 
 -- Obtener total de stock de articulos
  select sum(stock) as Total from Articulos;
 
 -- Obtener stock valorizado de articulos
  select sum(precio * stock) as TotalValorizado from Articulos;
 
 
 # min()
 -- Obtener el precio minimo de los articulos 
 select min(precio) as MinPrecio from articulos;
 select min(stock) as MinStock from articulos;
 
select * from Articulos where Precio =  39293.8788;
select * from Articulos where stock = 10;

  
  # max()
 -- Obtener el precio minimo de los articulos 
 select max(precio) as MaxPrecio from articulos;
 select max(stock) as MaxStock from articulos;
 
 # avg
 select avg(precio) as Promedio from articulos;
 
 
 select 
	count(*) as Cantidad,
    sum(Stock) as CantStock,
	min(Stock) as MinStock,
    max(Stock) as MaxStock,
    avg(Stock) as PromStock 
from articulos;