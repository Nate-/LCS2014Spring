CREATE DATABASE  IF NOT EXISTS `a6462472_lol` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `a6462472_lol`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: lol
-- ------------------------------------------------------
-- Server version	5.6.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match` (
  `MatchID` int(11) NOT NULL,
  `BlueTeam` varchar(3) NOT NULL,
  `RedTeam` varchar(3) NOT NULL,
  PRIMARY KEY (`MatchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` VALUES (1,'C9','TSM'),(2,'EG','XDG'),(3,'CRS','CST'),(4,'XDG','C9'),(5,'TSM','EG'),(6,'CLG','DIG'),(7,'CRS','XDG'),(8,'C9','CLG'),(9,'DIG','TSM'),(10,'EG','CLG'),(11,'CST','DIG'),(12,'CLG','CRS'),(13,'DIG','C9'),(14,'CST','EG'),(15,'TSM','CRS'),(16,'XDG','CST'),(17,'DIG','XDG'),(18,'CST','CRS'),(19,'EG','DIG'),(20,'TSM','CLG'),(21,'XDG','EG'),(22,'CST','TSM'),(23,'C9','CRS'),(24,'DIG','CLG'),(25,'TSM','XDG'),(26,'CST','C9'),(27,'CRS','CLG'),(28,'EG','C9'),(29,'XDG','CLG'),(30,'CRS','EG'),(31,'CLG','CST'),(32,'TSM','C9'),(33,'C9','XDG'),(34,'DIG','CST'),(35,'EG','TSM'),(36,'CRS','DIG'),(37,'CLG','EG'),(38,'CRS','TSM'),(39,'C9','CST'),(40,'XDG','DIG'),(41,'CLG','C9'),(42,'EG','CRS'),(43,'CST','XDG'),(44,'TSM','DIG'),(45,'XDG','CRS'),(46,'C9','DIG'),(47,'EG','CST'),(48,'CLG','TSM'),(49,'DIG','EG'),(50,'TSM','CST'),(51,'CRS','C9'),(52,'CLG','XDG'),(53,'C9','EG'),(54,'TSM','CRS'),(55,'CST','CLG'),(56,'DIG','XDG'),(57,'XDG','C9'),(58,'CLG','CRS'),(59,'DIG','TSM'),(60,'CST','EG'),(61,'C9','TSM'),(62,'EG','DIG'),(63,'XDG','CLG'),(64,'CRS','CST'),(65,'EG','C9'),(66,'CST','TSM'),(67,'CLG','DIG'),(68,'CRS','XDG'),(69,'CST','DIG'),(70,'TSM','CLG'),(71,'EG','XDG'),(72,'C9','CRS'),(73,'TSM','EG'),(74,'XDG','CST'),(75,'DIG','C9'),(76,'XDG','TSM'),(77,'CLG','CST'),(78,'DIG','CRS'),(79,'C9','CLG'),(80,'CRS','EG'),(81,'TSM','XDG'),(82,'CRS','DIG'),(83,'CST','C9'),(84,'EG','CLG'),(85,'TSM','DIG'),(86,'CST','CLG'),(87,'XDG','CRS'),(88,'C9','EG'),(89,'DIG','EG'),(90,'CLG','TSM'),(91,'CST','XDG'),(92,'CRS','C9'),(93,'CLG','XDG'),(94,'CRS','TSM'),(95,'C9','DIG'),(96,'EG','CST'),(97,'C9','XDG'),(98,'CST','CRS'),(99,'CLG','C9'),(100,'DIG','CRS'),(101,'EG','TSM'),(102,'XDG','DIG'),(103,'TSM','CST'),(104,'CRS','CLG'),(105,'DIG','CST'),(106,'CLG','EG'),(107,'TSM','C9'),(108,'DIG','CLG'),(109,'EG','CRS'),(110,'XDG','TSM'),(111,'C9','CST'),(112,'XDG','EG');
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-10 13:29:10
