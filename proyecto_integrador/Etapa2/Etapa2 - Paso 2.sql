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


/* 3. Modificar la tabla CLIENTES. Tomar en cuenta las siguientes consideraciones: */

/*
	a. Cambiar el tipo de dato del campo Nombre para que admita hasta 30 caracteres y asigne la restricción correspondiente para
		que su carga sea obligatoria. OK

	b. Cambiar el tipo de dato del campo Apellido para que admita hasta 35 caracteres y asigne la restricción
		correspondiente para que su carga sea obligatoria.

	c. Cambiar el nombre del campo Comentarios por Observaciones y su tipo de dato para que admita hasta
		255 caracteres.
*/

desc CLIENTES;
alter table CLIENTES 
	MODIFY Nombre varchar(30) not null,
    MODIFY Apellido varchar(35) not null,
	MODIFY Observaciones varchar(255) null;

desc CLIENTES;
alter table CLIENTES 
	Change Comentarios Observaciones varchar(255) null;
    

/* 4. Crear un PROMPT para que la IA modifique el código que venimos desarrollando, de tal forma que se
relacionen las tablas CLIENTES y LOCALIDAD. */

-- Prompt 1: Actúa como experto en Mysql. Espere instrucciones. 
-- Prompt 2: Proporciona el script para relacionar las tablas CLIENTES y LOCALIDADES que ya existen en la base de datos.


/* 5. Copiar y ejecutar el código generado por la IA para que se reflejen los cambios en la base de datos. */

ALTER TABLE clientes
	ADD CONSTRAINT FK_Clientes_Localidades
	FOREIGN KEY (LocalidadID)
	REFERENCES localidades(LocalidadID)
	ON UPDATE CASCADE
	ON DELETE SET NULL;
    
    