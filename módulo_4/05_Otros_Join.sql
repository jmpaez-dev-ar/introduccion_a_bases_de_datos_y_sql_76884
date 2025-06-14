use tecno_prj;

-- Join
/* -- Composición Interna
	select * 
	from Productos, Marcas
	where Productos.Marca = Marcas.idMarca
		and Productos.Marca = 1;
*/

select *
from Productos
	join Marcas on Productos.Marca = Marcas.idMarca
where Productos.Marca = 1;

select *
from Productos
	inner join Marcas on Productos.Marca = Marcas.idMarca
where Productos.Marca = 1;


-- Otros Join

-- Tabla 1
CREATE TABLE Tabla1 (
    Codigo INT PRIMARY KEY,
    Nombre VARCHAR(15)
);

-- Tabla 2
CREATE TABLE Tabla2 (
    Codigo INT PRIMARY KEY,
    Nombre2 VARCHAR(15)
);

-- Datos para Tabla1
INSERT INTO Tabla1 (Codigo, Nombre) VALUES
(1, 'A'),
(3, 'C'),
(8, 'H');

-- Datos para Tabla2
INSERT INTO Tabla2 (Codigo, Nombre2) VALUES
(3, 'Tres'),
(5, 'Cinco'),
(8, 'Ocho');

/*----------------------------------------*/
-- left join
select *
from tabla1
	left join tabla2 on tabla1.codigo = tabla2.codigo;

-- right join
select *
from tabla1
	right join tabla2 on tabla1.codigo = tabla2.codigo;

-- cross join
select *
from tabla1
	cross join tabla2
order by tabla1.codigo;


CREATE TABLE EquiposLiga2025 (
    idEquipo INT PRIMARY KEY,
    NombreEquipo VARCHAR(100) NOT NULL,
    Provincia VARCHAR(50)
);

INSERT INTO EquiposLiga2025 (idEquipo, NombreEquipo, Provincia) VALUES
(1, 'River Plate', 'Buenos Aires'),
(2, 'Boca Juniors', 'Buenos Aires'),
(3, 'Racing Club', 'Buenos Aires'),
(4, 'Independiente', 'Buenos Aires'),
(5, 'San Lorenzo', 'Buenos Aires'),
(6, 'Huracán', 'Buenos Aires'),
(7, 'Vélez Sarsfield', 'Buenos Aires'),
(8, 'Argentinos Juniors', 'Buenos Aires'),
(9, 'Banfield', 'Buenos Aires'),
(10, 'Lanús', 'Buenos Aires'),
(11, 'Tigre', 'Buenos Aires'),
(12, 'Platense', 'Buenos Aires'),
(13, 'Barracas Central', 'Buenos Aires'),
(14, 'Defensa y Justicia', 'Buenos Aires'),
(15, 'Arsenal de Sarandí', 'Buenos Aires'),
(16, 'Estudiantes de La Plata', 'Buenos Aires'),
(17, 'Gimnasia y Esgrima La Plata', 'Buenos Aires'),
(18, 'Rosario Central', 'Santa Fe'),
(19, 'Newell''s Old Boys', 'Santa Fe'),
(20, 'Colón', 'Santa Fe'),
(21, 'Unión', 'Santa Fe'),
(22, 'Atlético Tucumán', 'Tucumán'),
(23, 'Talleres de Córdoba', 'Córdoba'),
(24, 'Instituto', 'Córdoba'),
(25, 'Belgrano', 'Córdoba'),
(26, 'Godoy Cruz', 'Mendoza'),
(27, 'Sarmiento de Junín', 'Buenos Aires'),
(28, 'Central Córdoba (SdE)', 'Santiago del Estero'),
(29, 'Gimnasia y Esgrima de Mendoza', 'Mendoza'),
(30, 'Deportivo Riestra', 'Buenos Aires');



select * from EquiposLiga2025;

-- Cross Join
select 	E1.NombreEquipo as Local, 
		E2.NombreEquipo as Visitante
from EquiposLiga2025 as E1
	cross join EquiposLiga2025 as E2
where E1.NombreEquipo <> E2.NombreEquipo;

-- Producto Cartesiano
select 	E1.NombreEquipo as Local, 
		E2.NombreEquipo as Visitante
from EquiposLiga2025 as E1, EquiposLiga2025 as E2
where E1.NombreEquipo <> E2.NombreEquipo;