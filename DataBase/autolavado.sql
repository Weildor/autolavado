-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: autolavado
-- ------------------------------------------------------
-- Server version	9.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbb_usuarios`
--

DROP TABLE IF EXISTS `tbb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuarios` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `primerApellido` varchar(45) NOT NULL,
  `segundoApellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(90) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `idRol` int NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_rol_idx` (`idRol`),
  CONSTRAINT `fk_rol` FOREIGN KEY (`idRol`) REFERENCES `tbc_rols` (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuarios`
--

LOCK TABLES `tbb_usuarios` WRITE;
/*!40000 ALTER TABLE `tbb_usuarios` DISABLE KEYS */;
INSERT INTO `tbb_usuarios` VALUES (1,'Mario','Banda','Sanchez','Cda. Guillermo Prieto #113','7761059308','mariobanda@gmail.com','2005-09-12','Mbanda','12345678',3),(2,'Victor Dorian','Barrios','Franco','Cam San Antonio','7761263396','vicdorian@gmail.com','2006-11-27','12345678','Admin',1),(5,'Dara','Gomez','Santos','Av Zaragoza','7777777777','dara@gmail.com','2006-01-01','yaya','1234',2),(6,'Alfonso','Garcia','Tellez','Av Duraznos Dulces','7761339876','AlphGT@gmail.com','2005-04-30','Panecitow','2DuraznitosDulces',4);
/*!40000 ALTER TABLE `tbb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_vehiculos`
--

DROP TABLE IF EXISTS `tbb_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_vehiculos` (
  `idVehiculo` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(10) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `anio` year NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `idCliente` int NOT NULL,
  PRIMARY KEY (`idVehiculo`),
  KEY `fk_clientes_idx` (`idCliente`),
  CONSTRAINT `fk_clientes` FOREIGN KEY (`idCliente`) REFERENCES `tbc_clientes` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_vehiculos`
--

LOCK TABLES `tbb_vehiculos` WRITE;
/*!40000 ALTER TABLE `tbb_vehiculos` DISABLE KEYS */;
INSERT INTO `tbb_vehiculos` VALUES (2,'240065','4321','Azul','TOYOTA',2022,'Oficina',4),(3,'240036','9876','rojo','nissan',2025,'deportivo',3),(5,'240076','001','Gris','Chevrolet',2023,'Carreras',6),(6,'274565','3427','Negro','Italica',2024,'Todo Terreno',7);
/*!40000 ALTER TABLE `tbb_vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_clientes`
--

DROP TABLE IF EXISTS `tbc_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidoPaterno` varchar(45) NOT NULL,
  `apellidoMaterno` varchar(45) DEFAULT NULL,
  `direccion` varchar(95) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_clientes`
--

LOCK TABLES `tbc_clientes` WRITE;
/*!40000 ALTER TABLE `tbc_clientes` DISABLE KEYS */;
INSERT INTO `tbc_clientes` VALUES (2,'Andres','Perez','Almohada','Col Benito Juarez','776133 4455','andrezpa@gmail.com','2000-09-09','4321'),(3,'Alfredo','Paredez','Torrez','Av 11 Mayo','7767772234','alfpres@gmail.com','2001-01-02','huevos2'),(4,'Darila','Tenez','Lozada','Av Joya 30','8886667711','laTenezlozada@gmail.com','1999-09-08','Ha123'),(6,'Fabian','Longana','Gedrez','Av La Triste 112','7761263344','fablodres@gmaill.com','1988-08-07','favlG332211'),(7,'Samantha','Nicol','Olvera','Tabacal # 124','7761339871','Samy312@gmail.com','2004-01-12','Asta');
/*!40000 ALTER TABLE `tbc_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_rols`
--

DROP TABLE IF EXISTS `tbc_rols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_rols` (
  `idRol` int NOT NULL AUTO_INCREMENT,
  `nombreRol` varchar(45) NOT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_rols`
--

LOCK TABLES `tbc_rols` WRITE;
/*!40000 ALTER TABLE `tbc_rols` DISABLE KEYS */;
INSERT INTO `tbc_rols` VALUES (1,'Administrador'),(2,'Cajero'),(3,'Lavador'),(4,'Gerente');
/*!40000 ALTER TABLE `tbc_rols` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_servicios`
--

DROP TABLE IF EXISTS `tbc_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_servicios` (
  `idServicio` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(90) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `estatus` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`idServicio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_servicios`
--

LOCK TABLES `tbc_servicios` WRITE;
/*!40000 ALTER TABLE `tbc_servicios` DISABLE KEYS */;
INSERT INTO `tbc_servicios` VALUES (2,'Pulir','Limpiar hasta sacar brillo',180.00,10),(3,'Cambio de aseite','Cambiar aseite',300.00,100),(4,'Lavado','Lavar el coche',200.00,10);
/*!40000 ALTER TABLE `tbc_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_venta_servicio`
--

DROP TABLE IF EXISTS `tbd_venta_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_venta_servicio` (
  `idVenta` int NOT NULL AUTO_INCREMENT,
  `idUsuarioC` int NOT NULL,
  `idUsuarioL` int NOT NULL,
  `idServicio` int NOT NULL,
  `idVehiculo` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estatus` varchar(45) NOT NULL,
  `pagado` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`idVenta`),
  KEY `fk_usurioC_idx` (`idUsuarioC`),
  KEY `fk_usuarioL_idx` (`idUsuarioL`),
  KEY `fk_servicio_idx` (`idServicio`),
  KEY `fk_vehiculo_idx` (`idVehiculo`),
  CONSTRAINT `fk_servicio` FOREIGN KEY (`idServicio`) REFERENCES `tbc_servicios` (`idServicio`),
  CONSTRAINT `fk_usuarioL` FOREIGN KEY (`idUsuarioL`) REFERENCES `tbc_rols` (`idRol`),
  CONSTRAINT `fk_usurioC` FOREIGN KEY (`idUsuarioC`) REFERENCES `tbc_clientes` (`idCliente`),
  CONSTRAINT `fk_vehiculo` FOREIGN KEY (`idVehiculo`) REFERENCES `tbb_vehiculos` (`idVehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_venta_servicio`
--

LOCK TABLES `tbd_venta_servicio` WRITE;
/*!40000 ALTER TABLE `tbd_venta_servicio` DISABLE KEYS */;
INSERT INTO `tbd_venta_servicio` VALUES (2,2,2,2,2,'2025-01-01','07:00:00','200.00',20),(3,2,2,2,2,'2009-11-27','12:45:00','6',100),(4,2,2,2,2,'2024-11-20','11:30:00','260',1),(5,2,2,2,2,'1999-10-10','10:30:00','300',4),(6,2,2,2,2,'2022-08-03','12:00:00','150',2),(7,6,4,4,5,'2021-07-06','08:00:00','400',5),(8,3,3,3,3,'2019-03-09','04:00:00','600',3),(10,4,3,3,3,'2016-10-10','06:00:00','60',6),(11,7,1,4,6,'2025-07-07','12:00:00','500',1);
/*!40000 ALTER TABLE `tbd_venta_servicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-06  2:14:11
