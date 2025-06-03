use tecno_prj;

-- Clausula Where

-- Operadores de comparacion
select * from articulos where ArticuloID = 10;
select * from articulos where ArticuloID >= 10;
select * from articulos where ArticuloID > 10;
select * from articulos where ArticuloID <= 10;
select * from articulos where ArticuloID < 10;
select * from articulos where ArticuloID <> 10;

-- Operadores Logicos
select * from articulos order by Stock;

-- OR
select * from articulos where (Stock < 20) or (Stock > 50) order by Stock;

-- AND
select * from articulos where stock < 40 and Precio > 39000;

-- NOT 
select * from articulos where not (ArticuloID = 10);

-- Between
select * from articulos where ArticuloID between 5 and 9;

-- Not Between
select * from articulos where ArticuloID not between 5 and 9;

-- In 
select * from articulos where  ArticuloID in (10, 20, 30);

-- not In 
select * from articulos where  ArticuloID not in (10, 20, 30);

-- Like
select * from articulos where  nombre like 'memo%';
select * from articulos where  nombre like 'm%';
select * from articulos where  nombre like '%n';
select * from articulos where  nombre like '%a%';
select * from articulos where  nombre like '%silla%' and nombre like '%ruedas%';

-- Not like
select * from articulos where  nombre not like '%a%';

-- Is null
select * from Clientes where nombre is null;

-- Is Not null
select * from Clientes where nombre is not null;


update Clientes set nombre = 'Maria' where ClienteId = 10;



 