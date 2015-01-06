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
-- Table structure for table `p1`
--

DROP TABLE IF EXISTS `p1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p1` (
  `Name` varchar(255) NOT NULL,
  `Role` varchar(7) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `p1`
--

LOCK TABLES `p1` WRITE;
/*!40000 ALTER TABLE `p1` DISABLE KEYS */;
INSERT INTO `p1` VALUES ('Aphromoo','Support'),('Balls','Top'),('Benny','Top'),('Bjergsen','Mid'),('BloodWater','Support'),('Bunny FuFuu','Support'),('Chauster','Mid'),('Cop','AD'),('Crumbz','Jungle'),('Cruzer','Top'),('Daydreamin','Support'),('dexter','Jungle'),('Doublelif','AD'),('Dyrus','Top'),('goldenglue','Mid'),('Hai','Mid'),('HotshotGG','Mid'),('Imaqtpie','AD'),('InnoX','Top'),('IWillDominate','Jungle'),('Ken','Support'),('KiWiKiD','Support'),('Krepo','Support'),('LemonNation','Support'),('LiNk','Mid'),('mandatorycloud','Mid'),('Meteos','Jungle'),('Nickwu','Jungle'),('Nien','Top'),('NintendudeX','Jungle'),('Pobelter','Mid'),('Quas','Top'),('Reginald','Mid'),('ROBERTxLEE','AD'),('Saintvicious','Support'),('Scarra','Mid'),('Sheep','Support'),('Shiphtur','Mid'),('Sneaky','AD'),('Snoopeh','Jungle'),('TheOddOne','Jungle'),('Thinkcard','Jungle'),('Voyboy','Mid'),('WildTurtle','AD'),('WizFujiiN','AD'),('Xmithie','Jungle'),('Xspecial','Support'),('yellowpete','AD'),('ZionSpartan','Top'),('Zuna','AD');
/*!40000 ALTER TABLE `p1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-10 13:29:09
