CREATE DATABASE  IF NOT EXISTS `cadastro` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cadastro`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `Id_curso` int(11) NOT NULL,
  `Nome` varchar(20) NOT NULL,
  `descricao` text,
  `carga` int(10) unsigned DEFAULT NULL,
  `total_de_aulas` int(10) unsigned DEFAULT NULL,
  `ano` year(4) DEFAULT '2022',
  PRIMARY KEY (`Id_curso`),
  UNIQUE KEY `Nome` (`Nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'HTML5','curso de HTML5',40,37,2022),(2,'Algoritmos','Lógica de Programação',20,15,2022),(3,'Photoshop','Dicas de Photoshop CC',10,8,2022),(4,'PGP','curso de PHP para iniciantes',40,20,2022),(5,'JAVA','Introdução à Linguagem Java',40,29,2015),(6,'MySQL','Banco de Dados',30,15,2020),(7,'Word','curso completo de Word',40,30,2022);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gafonhotos`
--

DROP TABLE IF EXISTS `gafonhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gafonhotos` (
  `codigo` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gafonhotos`
--

LOCK TABLES `gafonhotos` WRITE;
/*!40000 ALTER TABLE `gafonhotos` DISABLE KEYS */;
INSERT INTO `gafonhotos` VALUES (NULL,1,'Godofredo',NULL,'1984-01-02','M',78.00,1.00,'brasil'),(NULL,2,'Godofredo',NULL,'1984-01-02','M',78.00,1.00,'brasil'),(NULL,3,'Godofredo',NULL,'1984-01-02','M',78.00,1.00,'brasil'),(NULL,4,'Godofredo',NULL,'1984-01-02','M',78.50,1.83,'brasil'),(NULL,5,'maria',NULL,'1988-11-22','F',55.20,1.60,'portugal'),(NULL,6,'jose',NULL,'1920-11-22','F',50.50,1.60,'default'),(NULL,7,'jose',NULL,'1920-11-22','F',50.50,1.60,'default'),(NULL,8,'jose',NULL,'1920-11-22','F',50.50,1.60,'Brasil'),(NULL,9,'carmen',NULL,'1950-11-22','F',50.50,1.70,'irlanda'),(NULL,10,'carmen',NULL,'1950-11-22','F',50.50,1.70,'irlanda'),(NULL,11,'carmen',NULL,'1950-11-22','F',50.50,1.70,'irlanda'),(NULL,12,'januario',NULL,'1985-12-25','M',70.85,1.90,'Brasil'),(NULL,13,'cosmo',NULL,'1935-11-05','M',155.80,2.00,'Brasil');
/*!40000 ALTER TABLE `gafonhotos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-14 10:32:27
