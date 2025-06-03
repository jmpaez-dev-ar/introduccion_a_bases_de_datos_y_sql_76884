-- PROYECTO INTEGRADOR - ETAPA 2

-- PASO 2:

USE TECNO_DB;

-- 1. Modificar la tabla FACTURAS

/* a. 
	Asignar la restricción UNSIGNED al campo Monto, manteniendo el tipo de dato ya
	definido para el campo.
*/

desc FACTURAS;
alter table FACTURAS modify Monto double UNSIGNED;

/* b. 
	Modificar la tabla ARTICULOS tomando en cuenta las siguientes consideraciones:
	b1. Cambiar el tipo de dato del campo Nombre para que admita hasta 75 caracteres.
	b2. Asignar las restricciones UNSIGNED y NOT NULL al campo Precio, manteniendo
	el tipo de dato ya definido para el campo.
	b3. Asignar las restricciones UNSIGNED y NOT NULL al campo Stock, manteniendo
	el tipo de dato ya definido para el campo
*/    
desc ARTICULOS;
alter table ARTICULOS
	modify Nombre varchar(75),
    modify Precio double UNSIGNED NOT NULL,
    modify Stock int UNSIGNED NOT NULL;
desc ARTICULOS;    

