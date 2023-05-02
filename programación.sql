-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idalumno` int NOT NULL AUTO_INCREMENT,
  `carnet` varchar(10) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idalumno`),
  UNIQUE KEY `carnet` (`carnet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `idautor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `fecha_nac` date NOT NULL,
  `fecha_muerte` date DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idautor`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (2,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(3,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(4,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(6,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(7,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(8,'Miguel','de Cervantes','1547-09-29','1616-04-22','Madrid'),(9,'Charles','Dickens','1812-02-07','1870-06-09','Reino Unido'),(10,'Ernest','Hemingway','1899-07-21','1961-07-02','EEUU'),(11,'Victor','Hugo','1802-02-26','1885-05-22','Francia'),(12,'James','Joyce','1882-02-02','1941-01-13','Suiza'),(13,'Franz',' Kafka','1883-07-03','1924-06-03','Austria'),(14,'Herman','Melvillw','1819-08-01','1891-09-28','EEUU'),(15,'Marcel','Proust','1871-07-10','1922-11-18','Francia'),(16,'William','Shakespear','1564-04-01','1616-04-23','Reino Unido'),(17,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(18,'Miguel','de Cervantes','1547-09-29','1616-04-22','Madrid'),(19,'Charles','Dickens','1812-02-07','1870-06-09','Reino Unido'),(20,'Ernest','Hemingway','1899-07-21','1961-07-02','EEUU'),(21,'Victor','Hugo','1802-02-26','1885-05-22','Francia'),(22,'James','Joyce','1882-02-02','1941-01-13','Suiza'),(23,'Franz',' Kafka','1883-07-03','1924-06-03','Austria'),(24,'Herman','Melvillw','1819-08-01','1891-09-28','EEUU'),(25,'Marcel','Proust','1871-07-10','1922-11-18','Francia'),(26,'William','Shakespear','1564-04-01','1616-04-23','Reino Unido'),(27,'kvicha','gergia','2023-04-18','2023-04-18','khavartskhelia'),(28,'crstian','romero','2023-04-18','2023-04-18','argentina');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bibliotecario`
--

DROP TABLE IF EXISTS `bibliotecario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bibliotecario` (
  `idbiblio` int NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idbiblio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bibliotecario`
--

LOCK TABLES `bibliotecario` WRITE;
/*!40000 ALTER TABLE `bibliotecario` DISABLE KEYS */;
/*!40000 ALTER TABLE `bibliotecario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `idlibro` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text,
  `idautor` int NOT NULL,
  `fechapub` date NOT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`idlibro`),
  KEY `idautor` (`idautor`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`idautor`) REFERENCES `autor` (`idautor`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'IT','un mounhstuo aparece cada 27 años para aterrorizar a los niños de un pueblo llamado Derry',2,'1986-01-01','9788497593793'),(2,'Las 48 leyes del poder','El libro es una guía diseñada para poder mostrarle al lector cuáles son las cualidades personales que se deben de tener para alcanzar el poder en términos sociológicos',8,'1998-01-01','9788423991815'),(3,'Psicologia oscura','Psicología oscura: Una guía esencial de persuasión, manipulación, engaño, control mental, negociación, conducta humana, PNL y guerra psicológica',9,'2019-01-02','9781950924677'),(4,'El arte de la seducción','El arte de la seducción es una síntesis magistral de la obra de pensadores como Freud, Ovidio, Kierkegaard y Einstein, así como de los logros obtenidos por los mayores seductores de la historia',10,'2001-01-01','9786074004465'),(5,'romeo y julieta','Cuenta la historia de dos jóvenes que, a pesar de la oposición de sus familiares, rivales entre sí, deciden casarse de forma ilegal y vivir juntos',11,'1597-01-01','9788466237758'),(6,'romeo y julieta','Cuenta la historia de dos jóvenes que, a pesar de la oposición de sus familiares, rivales entre sí, deciden casarse de forma ilegal y vivir juntos',11,'1597-01-01','9788466237758');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `idprestamo` int NOT NULL AUTO_INCREMENT,
  `idalumno` int DEFAULT NULL,
  `idlibro` int DEFAULT NULL,
  `idbiblio` int DEFAULT NULL,
  `fechaprestamo` date NOT NULL,
  `fechadevolucion` date NOT NULL,
  PRIMARY KEY (`idprestamo`),
  KEY `idalumno` (`idalumno`),
  KEY `idlibro` (`idlibro`),
  KEY `idbiblio` (`idbiblio`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`),
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`idlibro`) REFERENCES `libro` (`idlibro`),
  CONSTRAINT `prestamo_ibfk_3` FOREIGN KEY (`idbiblio`) REFERENCES `bibliotecario` (`idbiblio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-02  8:51:17
