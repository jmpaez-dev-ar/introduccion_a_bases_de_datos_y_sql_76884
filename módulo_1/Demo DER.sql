CREATE TABLE IF NOT EXISTS `Clientes` (
	`ClienteId` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Nombre` varchar(50) NOT NULL,
	`Apellido` varchar(50) NOT NULL,
	`Cuit` char(13) NOT NULL UNIQUE,
	PRIMARY KEY (`ClienteId`)
);

