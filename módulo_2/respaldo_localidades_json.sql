
--
-- Table structure for table `localidades_json`
--

DROP TABLE IF EXISTS `localidades_json`;

CREATE TABLE `localidades_json` (
  `LocalidadID` int(11) DEFAULT NULL,
  `Nombre` text DEFAULT NULL,
  `CP` text DEFAULT NULL,
  `Provincia` text DEFAULT NULL
) ;

--
-- Dumping data for table `localidades_json`
--

LOCK TABLES `localidades_json` WRITE;
/*!40000 ALTER TABLE `localidades_json` DISABLE KEYS */;
INSERT INTO `localidades_json` VALUES (21,'San Miguel de Tucumán','4000','Tucumán'),(22,'Tafí Viejo','4103','Tucumán'),(23,'Concepción','4146','Tucumán'),(24,'Yerba Buena','4107','Tucumán'),(25,'Banda del Río Salí','4112','Tucumán'),(26,'San Salvador de Jujuy','4600','Jujuy'),(27,'Palpalá','4612','Jujuy'),(28,'Perico','4610','Jujuy'),(29,'La Quiaca','4650','Jujuy'),(30,'Humahuaca','4630','Jujuy'),(31,'San Fernando del Valle de Catamarca','4700','Catamarca'),(32,'Belén','4750','Catamarca'),(33,'Tinogasta','5340','Catamarca'),(34,'Andalgalá','4740','Catamarca'),(35,'Santa María','4139','Catamarca'),(36,'Resistencia','3500','Chaco'),(37,'Presidencia Roque Sáenz Peña','3700','Chaco'),(38,'Villa Ángela','3540','Chaco'),(39,'Charata','3730','Chaco'),(40,'General José de San Martín','3509','Chaco');
/*!40000 ALTER TABLE `localidades_json` ENABLE KEYS */;
UNLOCK TABLES;
