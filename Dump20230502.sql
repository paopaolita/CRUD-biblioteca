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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(2,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(3,'Walter','Riso','1951-03-09',NULL,'Italia'),(4,'Gabriel','Garcia','1927-03-06','2014-04-17','Colombia'),(6,'William','Shakespeare','1564-04-08','1616-04-23','Reino Unido'),(7,'Oscar','Wilde','1864-10-16','1990-11-30','Francia'),(8,'Edgar','Allan','1809-10-19','1849-01-07','Estados Unidos'),(9,'Flódor','Dostoyevski','1821-11-11','1881-02-09','Rusia'),(10,'Victor','Hugo','1802-02-26','1885-05-22','Francia'),(11,'William','Faulkner','1897-09-25','1962-07-06','Estados Unidos'),(12,'George','Orwell','1903-06-25','1950-01-21','India'),(13,'William','Hayley','1745-11-09','1820-11-12','Reino Unido'),(14,'Julio','Verne','1828-02-08','1905-03-24','Francia'),(15,'Walter','Riso','1951-03-09',NULL,'Italia'),(16,'Gabriel','Garcia','1927-03-06','2014-04-17','Colombia'),(17,'Charles','Dickens','1812-02-07','1870-06-09','Reino unido'),(18,'William','Shakespeare','1564-04-08','1616-04-23','Reino Unido'),(19,'Oscar','Wilde','1864-10-16','1990-11-30','Francia'),(20,'Edgar','Allan','1809-10-19','1849-01-07','Estados Unidos'),(21,'Flódor','Dostoyevski','1821-11-11','1881-02-09','Rusia'),(22,'Victor','Hugo','1802-02-26','1885-05-22','Francia'),(23,'William','Faulkner','1897-09-25','1962-07-06','Estados Unidos'),(24,'George','Orwell','1903-06-25','1950-01-21','India'),(25,'William','Hayley','1745-11-09','1820-11-12','Reino Unido'),(26,',mjnhkj','jkhkji','2023-04-18','2023-04-18','iuojjoiju'),(27,'','','2023-04-19','2023-04-19',''),(28,'Jose','Barrios','2005-06-24','2023-04-19','Guatemala'),(29,'Jose ','barrios','2001-12-19','2023-04-19','fuatemala'),(30,'','','2023-04-19','2023-04-19',''),(31,'','','2023-04-19','2023-04-19','');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'IT','un mounstro aparece cada 27 años apara aterrorizar a los niño de Derry',1,'1986-01-01','2234567890'),(2,'La vuelta al mundo en ochenta días','Phileas Fogg es un adinerado caballero inglés que lleva una tranquila y solitaria vida en Londres.',2,'1872-04-05','98765432'),(3,'Enamórate de ti','Una buena autoestima incrementa las emociones positivas. Además, entre otras cosas, permite alcanzar mayor eficacia en las tareas, mejorar las relaciones con las personas, establecer un vínculo más equilibrado con los demás y ganar en independencia y autonomía',3,'2015-07-06','76373783'),(4,'Cien años de soledad','A lo largo de 20 capítulos, la novela narra la historia de la familia Buendía y su vínculo con Macondo, ciudad inventada por el escritor. Siete generaciones de la familia contemplan la creación, la evolución y la decadencia de Macondo',4,'1967-09-04','546418'),(6,'Hamlet','El argumento de esta obra gira entorno a la venganza llevada a cabo por el príncipe Hamlet para vindicar la muerte de su padre, el rey Hamlet, quien ha sido asesinado por su hermano Claudio',6,'1560-08-05','3456782344'),(7,'de la tierra a la luna','Se trata de enviar a la Luna un proyectil que, auxiliado por el monstruoso cañón Columbiad, hará la función de una auténtica nave espacial para hacer realidad en el siglo XIX un viejo sueño: atravesar el espacio y descubrir un mundo lunar hasta entonces en penumbras.',1,'1865-10-14','9783988284044'),(8,'Romeo y Julieta','Cuenta la historia de dos jóvenes que, a pesar de la oposición de sus familiares, rivales entre sí, deciden casarse de forma ilegal y vivir juntos; sin embargo, la presión de esa rivalidad y una serie de fatalidades conducen a que la pareja elija el suicidio antes que vivir separados.',6,'1595-01-29','9783869711423'),(9,'Julio Cesar','Recrea la conspiración en contra del dictador romano, su homicidio y sus secuelas, así como su lugar de desarrollo: la antigua Roma',6,'1599-01-01','9780133555387'),(10,'El hombre que rie','Gwynplaine es un niño al que le mutilan la cara cuando es muy pequeño. Fruto de esa agresión, su rostro tiene la forma de un bufón que parece estar riéndose continuamente. Una imagen grotesca que le infiere la apariencia de un monstruo por fuera.',22,'1869-04-01','9782322424993'),(11,'Nuestra señora de París','En el París del siglo XV, con sus sombrías callejuelas pobladas por desheredados de la fortuna y espíritus atormentados, la gitana Esmeralda, que predice el porvenir y atrae fatalmente a los hombres, es acusada injustamente de la muerte de su amado y condenada al patíbulo.',22,'1831-03-16','9780787105266'),(12,'de la tierra a la luna','Se trata de enviar a la Luna un proyectil que, auxiliado por el monstruoso cañón Columbiad, hará la función de una auténtica nave espacial para hacer realidad en el siglo XIX un viejo sueño: atravesar el espacio y descubrir un mundo lunar hasta entonces en penumbras.',1,'1865-10-14','9783988284044'),(13,'Romeo y Julieta','Cuenta la historia de dos jóvenes que, a pesar de la oposición de sus familiares, rivales entre sí, deciden casarse de forma ilegal y vivir juntos; sin embargo, la presión de esa rivalidad y una serie de fatalidades conducen a que la pareja elija el suicidio antes que vivir separados.',6,'1595-01-29','9783869711423'),(14,'Julio Cesar','Recrea la conspiración en contra del dictador romano, su homicidio y sus secuelas, así como su lugar de desarrollo: la antigua Roma',6,'1599-01-01','9780133555387'),(15,'El hombre que rie','Gwynplaine es un niño al que le mutilan la cara cuando es muy pequeño. Fruto de esa agresión, su rostro tiene la forma de un bufón que parece estar riéndose continuamente. Una imagen grotesca que le infiere la apariencia de un monstruo por fuera.',22,'1869-04-01','9782322424993'),(16,'Nuestra señora de París','En el París del siglo XV, con sus sombrías callejuelas pobladas por desheredados de la fortuna y espíritus atormentados, la gitana Esmeralda, que predice el porvenir y atrae fatalmente a los hombres, es acusada injustamente de la muerte de su amado y condenada al patíbulo.',22,'1831-03-16','9780787105266');
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

-- Dump completed on 2023-05-02  8:41:02
