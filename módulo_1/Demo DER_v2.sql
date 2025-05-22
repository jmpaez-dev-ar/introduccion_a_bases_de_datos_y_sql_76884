CREATE TABLE IF NOT EXISTS `Clientes` (
	`ClienteId` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Nombre` varchar(50) NOT NULL,
	`Apellido` varchar(50) NOT NULL,
	`Cuit` char(13) NOT NULL UNIQUE,
	`GeneroId` int NOT NULL,
	PRIMARY KEY (`ClienteId`)
);

CREATE TABLE IF NOT EXISTS `Generos` (
	`GeneroId` int AUTO_INCREMENT NOT NULL UNIQUE,
	`Descripcion` varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (`GeneroId`)
);

ALTER TABLE `Clientes` ADD CONSTRAINT `Clientes_fk4` FOREIGN KEY (`GeneroId`) REFERENCES `Generos`(`GeneroId`);
