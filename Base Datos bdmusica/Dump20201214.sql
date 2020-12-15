CREATE DATABASE  IF NOT EXISTS `bdmusica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdmusica`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: bdmusica
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `TAdministrador`
--

DROP TABLE IF EXISTS `TAdministrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TAdministrador` (
  `idAdministrador` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  `apellido1` varchar(15) NOT NULL,
  `apellido2` varchar(15) DEFAULT NULL,
  `nombreUsuario` varchar(10) NOT NULL,
  `contrasenna` varchar(10) NOT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `correoElectronico` varchar(30) NOT NULL,
  PRIMARY KEY (`nombre`),
  UNIQUE KEY `idAdministrador_UNIQUE` (`idAdministrador`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAdministrador`
--

LOCK TABLES `TAdministrador` WRITE;
/*!40000 ALTER TABLE `TAdministrador` DISABLE KEYS */;
INSERT INTO `TAdministrador` VALUES (1,'Yen','Sal','Jim','Yesala','Yeva0106','Yenyen','jensysalazarj@icloud.com');
/*!40000 ALTER TABLE `TAdministrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAlbum`
--

DROP TABLE IF EXISTS `TAlbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TAlbum` (
  `idAlbum` int NOT NULL AUTO_INCREMENT,
  `nombreAlbum` varchar(15) NOT NULL,
  `fechaLanzamiento` date DEFAULT NULL,
  `imagen` varchar(30) DEFAULT NULL,
  `nombreArtista` varchar(25) NOT NULL,
  PRIMARY KEY (`nombreAlbum`),
  UNIQUE KEY `idAlbum_UNIQUE` (`idAlbum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAlbum`
--

LOCK TABLES `TAlbum` WRITE;
/*!40000 ALTER TABLE `TAlbum` DISABLE KEYS */;
INSERT INTO `TAlbum` VALUES (1,'Latino','2020-12-05','cancionLatina','Calle13'),(3,'Salsa','2020-12-10','Salsa.jpg','Gilberto Santarosa'),(2,'Trova','2020-12-11','trova.jpg','Silvio Rodriguez');
/*!40000 ALTER TABLE `TAlbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TAlbumCancion`
--

DROP TABLE IF EXISTS `TAlbumCancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TAlbumCancion` (
  `idalbumcancion` int NOT NULL AUTO_INCREMENT,
  `nombreAlbum` varchar(50) NOT NULL,
  `nombreCancion` varchar(50) NOT NULL,
  PRIMARY KEY (`idalbumcancion`),
  KEY `nombreAlbum` (`nombreAlbum`),
  KEY `nombreCancion` (`nombreCancion`),
  CONSTRAINT `talbumcancion_ibfk_1` FOREIGN KEY (`nombreAlbum`) REFERENCES `talbum` (`nombreAlbum`),
  CONSTRAINT `talbumcancion_ibfk_2` FOREIGN KEY (`nombreCancion`) REFERENCES `tcancion` (`nombreCancion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TAlbumCancion`
--

LOCK TABLES `TAlbumCancion` WRITE;
/*!40000 ALTER TABLE `TAlbumCancion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TAlbumCancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TArtista`
--

DROP TABLE IF EXISTS `TArtista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TArtista` (
  `idArtista` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `apellido1` varchar(15) DEFAULT NULL,
  `apellido2` varchar(15) DEFAULT NULL,
  `alias` varchar(35) NOT NULL,
  `paisNacimiento` varchar(35) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `fechaDefuncion` date DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(15) DEFAULT NULL,
  `referencias` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nombre`),
  UNIQUE KEY `alias_UNIQUE` (`alias`),
  UNIQUE KEY `idArtista_UNIQUE` (`idArtista`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TArtista`
--

LOCK TABLES `TArtista` WRITE;
/*!40000 ALTER TABLE `TArtista` DISABLE KEYS */;
INSERT INTO `TArtista` VALUES (2,'Calle13','Residente','Residente','Calle13','Puerto Rico','2003-01-01',NULL,17,'Rap Fusion','Hermanastros Residente y Visitante'),(1,'Elmer','Figeroa','Arce','Chayanne','Puerto Rica','1970-04-06',NULL,52,'POP','Bailarin y compositor'),(4,'Gilberto Santarosa','Santa','Rosa','Gilberto','Puerto Rico','1962-08-11',NULL,58,'Salsa','Caballero de la Salsa'),(5,'Juan Luis','Guerra','Seijas','Juan Luis Guerra','Republica Dominicana','1957-06-07',NULL,63,'Bachata','Compositor'),(3,'Silvio Rodriguez','Rodriguez','Dominguez','Silvio','Cuba','1946-11-29',NULL,74,'Trova','Cantautor, guitarrista y poeta');
/*!40000 ALTER TABLE `TArtista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TCancion`
--

DROP TABLE IF EXISTS `TCancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TCancion` (
  `idCancion` int NOT NULL AUTO_INCREMENT,
  `nombreCancion` varchar(30) NOT NULL,
  `nombreArtista` varchar(25) NOT NULL,
  PRIMARY KEY (`nombreCancion`),
  UNIQUE KEY `idCancion_UNIQUE` (`idCancion`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TCancion`
--

LOCK TABLES `TCancion` WRITE;
/*!40000 ALTER TABLE `TCancion` DISABLE KEYS */;
INSERT INTO `TCancion` VALUES (15,'Alguien me diga','Gilberto Santarosa'),(21,'Atrevete-te-te','Calle13'),(11,'Be Yourself','Audioslave'),(14,'Conciencia','Gilberto Santarosa'),(5,'Creep','Radiohead'),(16,'Ella','Gilberto Santarosa'),(6,'Fix you','ColdPlay'),(4,'Hello','Adele'),(19,'La maza','Silvio Rodriguez'),(22,'Latinoamerica','Calle13'),(17,'Manera de quererte','Gilberto Santarosa'),(12,'My inmortal','Evanescence'),(18,'Ojala','Silvio Rodriguez'),(23,'Ojos color sol','Calle13'),(20,'Quien fuera','Silvio Rodriguez'),(10,'Thank you','Dido'),(7,'The Story','Brandi Carlile'),(13,'Torero','Chayanne'),(9,'Use Somebody','Kings of Leon'),(8,'Who Knew','Pink');
/*!40000 ALTER TABLE `TCancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TCompositor`
--

DROP TABLE IF EXISTS `TCompositor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TCompositor` (
  `idCompositor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  `apellido1` varchar(15) NOT NULL,
  `apellido2` varchar(15) DEFAULT NULL,
  `paisNacimiento` varchar(15) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `genero` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`nombre`),
  UNIQUE KEY `idCompositor_UNIQUE` (`idCompositor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TCompositor`
--

LOCK TABLES `TCompositor` WRITE;
/*!40000 ALTER TABLE `TCompositor` DISABLE KEYS */;
INSERT INTO `TCompositor` VALUES (4,'Daniel','Dood','Wilson','Estados Unidos',59,'POP'),(1,'Duke','Kennedy','Ellington','Estados Unidos',75,'Jazz'),(2,'Franciso','Lopez','Varona','Espanna',63,'Trova'),(3,'Gloria','Gonzalez','Perez','Puerto Rico',76,'Salsa');
/*!40000 ALTER TABLE `TCompositor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TGenero`
--

DROP TABLE IF EXISTS `TGenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TGenero` (
  `idGenero` int NOT NULL AUTO_INCREMENT,
  `nombreGenero` varchar(15) NOT NULL,
  PRIMARY KEY (`nombreGenero`),
  UNIQUE KEY `idGenero_UNIQUE` (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TGenero`
--

LOCK TABLES `TGenero` WRITE;
/*!40000 ALTER TABLE `TGenero` DISABLE KEYS */;
INSERT INTO `TGenero` VALUES (1,'Jazz'),(2,'Salsa'),(3,'Trova'),(4,'Rap Fusion'),(5,'Balada');
/*!40000 ALTER TABLE `TGenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TLista`
--

DROP TABLE IF EXISTS `TLista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TLista` (
  `idLista` int NOT NULL AUTO_INCREMENT,
  `nombreLista` varchar(15) NOT NULL,
  `fechaCreacion` date DEFAULT NULL,
  PRIMARY KEY (`nombreLista`),
  UNIQUE KEY `idLista_UNIQUE` (`idLista`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TLista`
--

LOCK TABLES `TLista` WRITE;
/*!40000 ALTER TABLE `TLista` DISABLE KEYS */;
INSERT INTO `TLista` VALUES (1,'Ingles','2020-12-03'),(3,'Latino','2020-12-06'),(4,'Latino 1','2020-12-07'),(2,'Variadito','2020-12-04');
/*!40000 ALTER TABLE `TLista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TListaCancion`
--

DROP TABLE IF EXISTS `TListaCancion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TListaCancion` (
  `idlistacancion` int NOT NULL AUTO_INCREMENT,
  `nombreLista` varchar(50) NOT NULL,
  `nombreCancion` varchar(50) NOT NULL,
  PRIMARY KEY (`idlistacancion`),
  KEY `nombreLista` (`nombreLista`),
  KEY `nombreCancion` (`nombreCancion`),
  CONSTRAINT `tlistacancion_ibfk_1` FOREIGN KEY (`nombreLista`) REFERENCES `tlista` (`nombreLista`),
  CONSTRAINT `tlistacancion_ibfk_2` FOREIGN KEY (`nombreCancion`) REFERENCES `tcancion` (`nombreCancion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TListaCancion`
--

LOCK TABLES `TListaCancion` WRITE;
/*!40000 ALTER TABLE `TListaCancion` DISABLE KEYS */;
INSERT INTO `TListaCancion` VALUES (1,'Latino','Torero');
/*!40000 ALTER TABLE `TListaCancion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TReproduccion`
--

DROP TABLE IF EXISTS `TReproduccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TReproduccion` (
  `idReproduccion` int NOT NULL,
  PRIMARY KEY (`idReproduccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TReproduccion`
--

LOCK TABLES `TReproduccion` WRITE;
/*!40000 ALTER TABLE `TReproduccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TReproduccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TUsuario`
--

DROP TABLE IF EXISTS `TUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TUsuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  `apellido1` varchar(15) NOT NULL,
  `apellido2` varchar(15) DEFAULT NULL,
  `identificacion` varchar(10) NOT NULL,
  `paisProcedencia` varchar(15) NOT NULL,
  `edad` int DEFAULT NULL,
  `correoElectronico` varchar(30) NOT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `nombreUsuarioFinal` varchar(10) NOT NULL,
  `contrasenna` varchar(10) NOT NULL,
  PRIMARY KEY (`nombre`),
  UNIQUE KEY `idUsuario_UNIQUE` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TUsuario`
--

LOCK TABLES `TUsuario` WRITE;
/*!40000 ALTER TABLE `TUsuario` DISABLE KEYS */;
INSERT INTO `TUsuario` VALUES (1,'Felipe','Sol','Luz','232323','Nicaragua',44,'felsoluz@yahoo.com','fefe','Fesolu','Fes123'),(4,'Gabriel','Solis','Munoz','78652','Costa Rica',18,'gabriel.solis@yahoo.com','gabriel.jpg','GabSolMu','Gab0106'),(3,'Jorge','Salazar','Cedenno','67854','Bolivia',74,'jorgesalazar@yahoo.com','Jorge.jpg','Josace','Jos1905'),(2,'Karol','Salazar','Jimenez','23451','Costa Rica',46,'ksalazar@hotmail.com','karol.jpg','Kasala','Kas0706'),(6,'Tracy','Petri','Calas','2341','Mexico',46,'tracpe@yahoo.com','tracy.jpg','Tracpeca','Traca1213');
/*!40000 ALTER TABLE `TUsuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-14 22:00:54
