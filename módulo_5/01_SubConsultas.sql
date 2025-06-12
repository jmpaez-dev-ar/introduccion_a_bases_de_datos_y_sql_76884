use tecno_prj_v2;

-- SubConsultas
select * from Articulos;
select * from detalle;

select count(*) from Articulos;

select * from Articulos where ArticuloId 
	in ( select ArticuloId from detalle ); 

select * from Articulos where ArticuloId 
	in ( select ArticuloId from detalle ); 

select * from Articulos where ArticuloId 
	not in ( select ArticuloId from detalle ); 


select * from detalle;

select ArticuloID, sum(Cantidad) from detalle
group by ArticuloID having sum(Cantidad) > 10
order by 2 desc;

select * from Articulos where ArticuloId 
in (
	select ArticuloID from detalle
	group by ArticuloID having sum(Cantidad) > 50
);