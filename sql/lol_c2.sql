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
-- Table structure for table `c2`
--

DROP TABLE IF EXISTS `c2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c2` (
  `ChampionName` varchar(255) NOT NULL,
  `MatchID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Kills` int(11) NOT NULL,
  `Deaths` int(11) NOT NULL,
  `Assists` int(11) NOT NULL,
  `CreepScore` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c2`
--

LOCK TABLES `c2` WRITE;
/*!40000 ALTER TABLE `c2` DISABLE KEYS */;
INSERT INTO `c2` VALUES ('Shyvana',57,'Benny',4,1,10,366,561),('Pantheon',57,'Xmithie',8,3,7,185,562),('Lulu',57,'mandatorycloud',5,6,8,380,563),('Caitlyn',57,'Zuna',4,3,9,384,564),('Leona',57,'Sheep',1,5,13,25,565),('Gragas',57,'Balls',5,4,4,398,566),('Lee Sin',57,'Meteos',2,2,7,169,567),('LeBlanc',57,'Hai',7,6,5,278,568),('Lucian',57,'Sneaky',3,2,7,396,569),('Annie',57,'LemonNation',1,8,7,18,570),('Renekton',58,'Nien',1,3,8,373,571),('Kha\'Zix',58,'dexter',3,2,5,217,572),('LeBlanc',58,'LiNk',7,2,6,336,573),('Sivir',58,'Doublelift',2,1,10,483,574),('Thresh',58,'Aphromoo',0,2,11,20,575),('Shyvana',58,'Quas',1,2,5,318,576),('Vi',58,'IWillDominate',0,4,8,161,577),('Syndra',58,'Voyboy',5,3,4,335,578),('Caitlyn',58,'Cop',4,1,5,427,579),('Leona',58,'Saintvicious',0,3,7,31,580),('Trundle',59,'Cruzer',2,4,8,225,581),('Evelynn',59,'Crumbz',3,4,10,114,582),('Gragas',59,'Scarra',4,3,6,302,583),('Jinx',59,'Imaqtpie',3,6,7,310,584),('Annie',59,'KiWiKiD',2,4,8,23,585),('Dr. Mundo',59,'Dyrus',4,4,13,264,586),('Wukong',59,'TheOddOne',2,4,17,137,587),('Zed',59,'Reginald',5,2,9,272,588),('Sivir',59,'WildTurtle',9,1,10,389,589),('Thresh',59,'Xpecial',1,3,13,21,590),('Lee Sin',60,'ZionSpartan',9,1,6,267,591),('Elise',60,'NintendudeX',4,2,7,92,592),('Nidalee',60,'Shiphtur',1,0,10,233,593),('Lucian',60,'WizFujiiN',3,0,9,234,594),('Thresh',60,'Daydreamin',1,1,13,22,595),('Shyvana',60,'InnoX',2,5,1,198,596),('Olaf',60,'Snoopeh',1,2,1,124,597),('Zed',60,'Pobelter',1,5,0,260,598),('Caitlyn',60,'Yellowpete',0,3,0,224,599),('Annie',60,'Krepo',0,3,1,20,600),('Shyvana',61,'Balls',3,0,2,233,601),('Kha\'Zix',61,'Meteos',4,1,4,137,602),('Lulu',61,'Hai',0,1,9,194,603),('Caitlyn',61,'Sneaky',4,1,8,211,604),('Morgana',61,'LemonNation',3,0,7,10,605),('Dr. Mundo',61,'Dyrus',0,4,0,213,606),('Wukong',61,'TheOddOne',1,2,0,118,607),('LeBlanc',61,'Reginald',1,3,1,171,608),('Lucian',61,'WildTurtle',1,1,2,188,609),('Thresh',61,'Xpecial',0,4,3,6,610),('Yasuo',62,'InnoX',2,7,8,384,611),('Pantheon',62,'Snoopeh',3,6,9,122,612),('Orianna',62,'Pobelta',5,3,13,381,613),('Caitlyn',62,'Yellowpete',8,3,5,335,614),('Morgana',62,'Krepo',4,2,12,29,615),('Shyvana',62,'Cruzer',4,3,10,275,616),('Elise',62,'Crumbz',3,4,12,198,617),('Karthus',62,'Scarra',3,9,9,295,618),('Sivir',62,'Imaqtpie',8,3,5,465,619),('Thresh',62,'KiWiKiD',3,3,10,12,620),('Dr. Mundo',63,'Benny',0,2,0,180,621),('Evelynn',63,'Xmithie',1,2,1,124,622),('Lulu',63,'mandatorycloud',1,3,0,221,623),('Caitlyn',63,'Zuna',0,2,0,184,624),('Morgana',63,'Sheep',0,4,1,14,625),('Shyvana',63,'Nien',3,0,7,252,626),('Elise',63,'dexter',1,1,6,81,627),('Ziggs',63,'LiNk',5,0,8,192,628),('Jinx',63,'Doublelift',4,0,7,218,629),('Leona',63,'Aphromoo',0,1,7,18,630),('Renekton',64,'Quas',1,2,3,278,631),('Pantheon',64,'IWillDominate',0,7,5,119,632),('Gragas',64,'Voyboy',7,5,1,257,633),('Caitlyn',64,'Cop',3,2,5,332,634),('Annie',64,'Saintvicious',1,7,1,13,635),('Shyvana',64,'ZionSpartan',1,1,14,237,636),('Vi',64,'NintendudeX',6,3,10,180,637),('Ahri',64,'Shiphtur',5,2,11,246,638),('Lucian',64,'WizFujiiN',9,2,9,290,639),('Thresh',64,'Daydreamin',2,4,6,13,640),('Trundle',65,'InnoX',0,4,2,188,641),('Evelynn',65,'Snoopeh',1,6,1,97,642),('LeBlanc',65,'Pobelter',2,2,1,226,643),('YellowPete',65,'Yellowpete',0,2,3,244,644),('Morgana',65,'Krepo',1,3,1,11,645),('Shyvana',65,'Balls',3,1,5,276,646),('Elise',65,'Meteos',0,0,12,110,647),('Kha\'Zix',65,'Hai',9,0,5,230,648),('Caitlyn',65,'Sneaky',5,2,6,240,649),('Thresh',65,'LemonNation',0,1,13,17,650),('Shyvana',66,'ZionSpartan',2,4,2,274,651),('Vi',66,'NintendudeX',1,8,3,115,652),('Nidalee',66,'Shiphtur',1,2,3,363,653),('Lucian',66,'WizFujiiN',2,5,4,327,654),('Thresh',66,'Daydreamin',1,6,4,19,655),('Renekton',66,'Dyrus',6,0,14,329,656),('Evelynn',66,'TheOddOne',4,2,15,128,657),('Gragas',66,'Reginald',6,0,14,348,658),('Caitlyn',66,'WildTurtle',9,2,7,342,659),('Annie',66,'Xpecial',0,3,13,20,660),('Ryze',67,'Nien',2,3,7,277,661),('Elise',67,'dexter',2,3,4,140,662),('Nidalee',67,'LiNk',6,0,6,265,663),('Sivir',67,'Doublelift',2,3,10,311,664),('Morgana',67,'Aphromoo',1,2,12,16,665),('Dr. Mundo',67,'Cruzer',5,1,6,210,666),('Wukong',67,'Crumbz',2,3,6,139,667),('Ziggs',67,'Scarra',1,4,5,302,668),('Jinx',67,'Imaqtpie',3,1,6,247,669),('Amumu',67,'KiWiKiD',0,4,7,31,670),('Trundle',68,'Quas',4,3,11,454,671),('Vi',68,'IWillDominate',3,2,12,242,672),('Lulu',68,'Voyboy',9,1,10,471,673),('Caitlyn',68,'Cop',3,0,11,491,674),('Leona',68,'Bunny FuFuu',0,5,14,32,675),('Renekton',68,'Benny',3,4,5,337,676),('Lee Sin',68,'Xmithie',2,5,7,131,677),('Orianna',68,'mancloud',3,4,5,607,678),('Sivir',68,'Zuna',1,3,6,497,679),('Morgana',68,'Sheep',2,3,8,71,680),('Jax',69,'ZionSpartan',1,0,1,357,681),('Elise',69,'NintendudeX',1,6,6,125,682),('Kassadin',69,'Shiphtur',3,0,2,291,683),('Caitlyn',69,'WizFujiiN',2,2,5,312,684),('Thresh',69,'Daydreamin',1,4,5,16,685),('Jayce',69,'Cruzer',3,0,7,356,686),('Evelynn',69,'Crumbz',3,3,7,144,687),('Kha\'Zix',69,'Scarra',4,1,1,327,688),('Lucian',69,'Imaqtpie',2,2,6,392,689),('Annie',69,'KiWiKiD',0,2,6,35,690),('Renekton',70,'Dyrus',4,0,6,174,691),('Elise',70,'TheOddOne',4,2,11,78,692),('Gragas',70,'Reginald',2,2,8,162,693),('Sivir',70,'WildTurtle',5,1,10,187,694),('Annie',70,'Xpecial',1,0,10,17,695),('Shyvana',70,'Nien',0,4,2,148,696),('Jarvan IV',70,'dexter',0,5,4,146,697),('Lulu',70,'LiNk',2,4,1,146,698),('Vayne',70,'Doublelift',3,3,1,186,699),('Morgana',70,'Aphromoo',0,1,4,19,700),('Nidalee',71,'InnoX',3,2,10,220,701),('Evelynn',71,'Snoopeh',6,0,4,105,702),('Gragas',71,'Pobelter',5,3,7,217,703),('Jinx',71,'Yellowpete',5,0,9,260,704),('Morgana',71,'Krepo',0,3,13,10,705),('Shyvana',71,'Benny',1,1,3,216,706),('Vi',71,'Xmithie',2,5,3,89,707),('Kha\'Zix',71,'mandatorycloud',2,4,3,252,708),('Caitlyn',71,'Zuna',1,4,4,243,709),('Annie',71,'Sheep',2,5,2,10,710),('Renekton',72,'Balls',1,2,9,329,711),('Kha\'Zix',72,'Meteos',5,3,7,206,712),('LeBlanc',72,'Hai',6,2,7,259,713),('Caitlyn',72,'Sneaky',7,1,7,353,714),('Lulu',72,'LemonNation',1,3,11,38,715),('Trundle',72,'Quas',2,3,8,238,716),('Elise',72,'IWillDominate',1,5,4,150,717),('Syndra',72,'Voyboy',0,4,7,234,718),('Lucian',72,'Cop',7,1,2,420,719),('Leona',72,'Bunny FuFuu',0,6,5,11,720),('Dr. Mundo',73,'Dyrus',3,1,11,212,721),('Vi',73,'TheOddOne',7,3,7,100,722),('Lulu',73,'Reginald',3,4,16,154,723),('Lucian',73,'WildTurtle',10,1,6,252,724),('Leona',73,'Xpecial',3,0,18,49,725),('Gragas',73,'InnoX',3,3,3,222,726),('Pantheon',73,'Snoopeh',2,7,4,69,727),('Ahri',73,'Pobelter',3,4,5,192,728),('Jinx',73,'Yellowpete',0,6,3,185,729),('Morgana',73,'Krepo',1,6,3,18,730),('Trundle',74,'Benny',5,1,10,288,731),('Lulu',74,'mandatorycloud',9,1,7,439,732),('Sivir',74,'Zuna',2,2,11,398,733),('Leona',74,'Sheep',0,4,11,87,734),('Lee Sin',74,'ZionSpartan',2,6,4,337,735),('Evelynn',74,'NintendudeX',1,4,9,165,736),('Ziggs',74,'Shiphtur',3,3,7,547,737),('Lucian',74,'WizFujiiN',6,2,4,394,738),('Thresh',74,'Daydreamin',0,6,9,19,739),('Shyvana',74,'Cruzer',5,2,7,295,740),('Kha\'Zix',75,'Crumbz',3,4,9,149,741),('Gragas',75,'Scarra',4,5,10,309,742),('Lucian',75,'Imaqtpie',7,3,8,310,743),('Annie',75,'KiWiKiD',1,5,12,40,744),('Renekton',75,'Balls',5,3,10,274,745),('Pantheon',75,'Meteos',1,5,12,182,746),('Kassadin',75,'Hai',4,3,10,295,747),('Sivir',75,'Sneaky',7,3,10,291,748),('Morgana',75,'LemonNation',2,6,11,36,749),('Trundle',76,'Benny',0,1,0,220,750),('Evelynn',76,'Xmithie',1,2,2,145,751),('LeBlanc',76,'Mancloud',1,5,1,207,752),('Caitlyn',76,'Zuna',1,7,2,184,753),('Leona',76,'Sheep',1,3,2,56,754),('Shyvana',76,'Dyrus',3,1,1,253,755),('Pantheon',76,'TheOddOne',5,0,5,106,756),('Gragas',76,'Reginald',3,1,6,209,757),('Ezreal',76,'WildTurtle',4,2,7,238,758),('Annie',76,'Xpecial',3,0,8,26,759),('Shyvana',77,'Nien',2,0,9,226,760),('Evelynn',77,'dexter',5,0,8,106,761),('Lulu',77,'LiNk',4,1,8,219,762),('Sivir',77,'Doublelift',7,1,8,245,763),('Leona',77,'Aphromoo',2,2,8,11,764),('Renekton',77,'ZionSpartan',0,3,0,214,765),('Vi',77,'NintendudeX',1,6,3,110,766),('Ahri',77,'Shiphtur',2,2,1,247,767),('Lucian',77,'WizFujiiN',1,4,3,240,768),('Morgana',77,'Daydreamin',0,5,3,9,769),('Shyvana',78,'Cruzer',0,2,0,261,770),('Kha\'Zix',78,'Crumbz',1,3,1,150,771),('Lulu',78,'Scarra',0,3,0,233,772),('Lucian',78,'Imaqtpie',2,2,1,275,773),('Annie',78,'KiWiKiD',0,6,3,12,774),('Trundle',78,'Quas',4,0,6,222,775),('Elise',78,'IWillDominate',1,0,6,118,776),('Nidalee',78,'Voyboy',4,0,8,245,777),('Draven',78,'Cop',4,2,10,231,778),('Thresh',78,'Bunny FuFuu',3,1,10,12,779),('Trundle',79,'Balls',3,2,5,184,780),('Elise',79,'Meteos',8,3,7,106,781),('Gragas',79,'Hai',10,2,7,209,782),('Lucian',79,'Sneaky',4,1,8,208,783),('Morgana',79,'LemonNation',0,4,12,18,784),('Shyvana',79,'Nien',1,5,3,203,785),('Evelynn',79,'dexter',4,3,4,88,786),('Ziggs',79,'LiNk',4,6,3,248,787),('Caitlyn',79,'Doublelift',1,7,5,250,788),('Leona',79,'Aphromoo',2,4,8,14,789),('Trundle',80,'Quas',2,3,1,184,790),('Vi',80,'IWillDominate',8,2,15,200,791),('Kassadin',80,'Voyboy',7,4,11,271,792),('Caitlyn',80,'Cop',10,2,12,316,793),('Thresh',80,'Bunny FuFuu',1,2,18,11,794),('Gragas',80,'InnoX',3,5,2,257,795),('Olaf',80,'Snoopeh',1,7,4,105,796),('Riven',80,'Pobelter',4,6,5,315,797),('Sivir',80,'Yellowpete',4,4,6,274,798),('Morgana',80,'Krepo',1,6,9,24,799),('Renekton',81,'Dyrus',0,0,5,313,800),('Evelynn',81,'TheOddOne',6,1,3,148,801),('Zed',81,'Bjergsen',8,2,1,318,802),('Lucian',81,'WildTurtle',4,3,6,274,803),('Annie',81,'Xpecial',0,1,9,39,804),('Shyvana',81,'Benny',2,1,1,233,805),('Kha\'Zix',81,'Xmithie',2,3,2,141,806),('Gragas',81,'Mancloud',1,4,2,278,807),('Caitlyn',81,'Zuna',1,5,1,244,808),('Thresh',81,'Sheep',1,5,4,11,809),('Aatrox',82,'Quas',3,1,10,268,810),('Elise',82,'IWillDominate',5,3,9,190,811),('Lulu',82,'Voyboy',5,3,9,190,812),('Caitlyn',82,'Cop',6,0,7,381,813),('Thresh',82,'Bunny FuFuu',2,4,11,18,814),('Ryze',82,'Cruzer',4,3,2,286,815),('Lee Sin',82,'Crumbz',0,6,6,136,816),('Orianna',82,'Scarra',0,3,6,382,817),('Lucian',82,'Imaqtpie',3,4,3,490,818),('Annie',82,'KiWiKiD',2,3,5,24,819),('Ryze',83,'ZionSpartan',0,6,2,143,820),('Pantheon',83,'NintendudeX',2,6,3,72,821),('Ziggs',83,'Shiphtur',2,3,0,241,822),('Sivir',83,'WizFujiiN',1,5,2,179,823),('Annie',83,'Daydreamin',1,4,3,10,824),('Renekton',83,'Balls',6,2,8,209,825),('Kha\'Zix',83,'Meteos',5,0,8,119,826),('Kassadin',83,'Hai',5,2,13,212,827),('Lucian',83,'Sneaky',8,0,9,242,828),('Morgana',83,'LemonNation',0,2,14,12,829),('Nidalee',84,'InnoX',3,4,2,202,830),('Elise',84,'Thinkcard',1,5,1,93,831),('Zed',84,'Pobelter',2,8,3,222,832),('Caitlyn',84,'ROBERTxLEE',1,4,1,277,833),('Morgana',84,'Ken',2,5,5,22,834),('Shyvana',84,'Nien',4,1,6,285,835),('Evelynn',84,'dexter',10,2,7,118,836),('LeBlanc',84,'LiNk',7,3,8,223,837),('Vayne',84,'Doublelift',5,1,9,291,838),('Thresh',84,'Aphromoo',0,2,19,22,839),('Renekton',85,'Dyrus',2,0,11,138,840),('Evelynn',85,'TheOddOne',5,0,8,117,841),('Lulu',85,'Bjergsen',12,0,8,193,842),('Sivir',85,'WildTurtle',3,0,15,209,843),('Leona',85,'Xpecial',0,1,14,51,844),('Shyvana',85,'Cruzer',0,5,1,111,845),('Kayle',85,'Crumbz',0,4,1,98,846),('Orianna',85,'Scarra',1,5,0,151,847),('Quinn',85,'Imaqtpie',0,4,1,193,848),('Annie',85,'KiWiKiD',0,4,1,10,849),('Renekton',86,'ZionSpartan',4,6,5,195,850),('Kha\'Zix',86,'NintendudeX',3,6,9,119,851),('Ziggs',86,'Shiphtur',14,3,5,404,852),('Lucian',86,'WizFujiiN',2,5,12,297,853),('Annie',86,'Daydreamin',1,8,15,23,854),('Shyvana',86,'Nien',5,6,13,304,855),('Elise',86,'dexter',7,3,12,114,856),('Ahri',86,'LiNk',7,6,7,339,857),('Sivir',86,'Doublelift',8,3,14,361,858),('Thresh',86,'Aphromoo',1,6,20,25,859),('Shyvana',87,'Benny',1,3,13,287,860),('Elise',87,'Xmithie',5,1,4,139,861),('Ziggs',87,'Mancloud',5,2,11,433,862),('Jinx',87,'Zuna',6,3,8,353,863),('Zyra',87,'Sheep',1,3,12,40,864),('Renekton',87,'Quas',3,5,3,192,865),('Kha\'Zix',87,'IWillDominate',2,5,3,192,866),('Syndra',87,'Voyboy',3,4,7,407,867),('Caitlyn',87,'Cop',3,1,3,407,868),('Leona',87,'Bunny FuFuu',1,3,5,20,869),('Renekton',88,'Balls',2,1,6,245,870),('Evelynn',88,'Meteos',7,2,7,123,871),('Zed',88,'Hai',8,2,0,225,872),('Lucian',88,'Sneaky',6,1,5,275,873),('Thresh',88,'LemonNation',1,0,14,8,874),('Jayce',88,'InnoX',2,5,1,218,875),('Pantheon',88,'Thinkcard',0,4,2,92,876),('Kayle',88,'Pobelter',2,8,3,203,877),('Sivir',88,'ROBERTxLEE',2,2,0,210,878),('Morgana',88,'Ken',0,5,2,14,879),('Shyvana',89,'Cruzer',1,2,7,265,880),('Kha\'Zix',89,'Crumbz',5,1,11,146,881),('Zed',89,'goldenglue',8,3,8,248,882),('Sivir',89,'Imaqtpie',5,2,10,396,883),('Karma',89,'KiWiKiD',4,4,17,83,884),('Lee Sin',89,'InnoX',2,2,4,396,885),('Nautilus',89,'Snoopeh',2,8,6,114,886),('LeBlanc',89,'Pobelter',5,5,4,284,887),('Lucian',89,'Yellowpete',3,1,4,410,888),('Thresh',89,'Ken',0,7,9,27,889),('Trundle',90,'Nien',0,3,14,197,890),('Lee Sin',90,'dexter',9,3,10,106,891),('Zigs',90,'LiNk',2,3,15,231,892),('Lucian',90,'Doublelift',9,1,10,284,893),('Thresh',90,'Aphromoo',1,4,16,10,894),('Shyvana',90,'Dyrus',3,6,9,235,895),('Evelynn',90,'TheOddOne',1,4,9,122,896),('LeBlanc',90,'Bjergsen',3,2,3,222,897),('Twitch',90,'WildTurtle',7,3,3,268,898),('Leona',90,'Xpecial',0,6,7,43,899),('Shyvana',91,'ZionSpartan',2,1,10,311,900),('Kha\'Zix',91,'NintendudeX',4,1,10,140,901),('Ahri',91,'Shiphtur',9,2,7,321,902),('Varus',91,'WizFujiiN',3,3,12,272,903),('Leona',91,'Daydreamin',2,2,11,24,904),('Trundle',91,'Benny',0,4,6,245,905),('Lee Sin',91,'Xmithie',1,5,5,134,906),('Zed',91,'mandatorycloud',4,4,2,359,907),('Twitch',91,'Zuna',3,3,4,288,908),('Thresh',91,'Sheep',1,4,6,25,909),('Trundle',92,'Quas',3,4,3,243,910),('Elise',92,'IWillDominate',0,4,7,99,911),('LeBlanc',92,'Voyboy',1,2,6,147,912),('Caitlyn',92,'Cop',2,2,3,254,913),('Karma',92,'Bunny FuFuu',2,3,4,35,914),('Renekton',92,'Balls',3,3,4,266,915),('Evelynn',92,'Meteos',1,1,11,132,916),('Soraka',92,'Hai',4,3,8,184,917),('Lucian',92,'Sneaky',7,0,3,280,918),('Morgana',92,'LemonNation',0,1,11,16,919),('Trundle',93,'Nien',6,2,4,224,920),('Lee Sin',93,'dexter',3,2,8,88,921),('Ziggs',93,'LiNk',0,1,6,239,922),('Lucian',93,'Doublelift',4,2,7,261,923),('Aphromoo',93,'Alistar',1,2,11,14,924),('Renekton',93,'Benny',1,3,1,207,925),('Evelynn',93,'Xmithie',1,1,3,110,926),('LeBlanc',93,'mandatorycloud',2,3,3,215,927),('Twitch',93,'Zuna',5,5,1,179,928),('Leona',93,'Sheep',0,2,2,38,929),('Renekton',94,'Quas',0,1,5,284,930),('Elise',94,'IWillDominate',4,5,3,123,931),('LeBlanc',94,'Voyboy',3,4,5,219,932),('Caitlyn',94,'Cop',2,3,6,267,933),('Thresh',94,'Bunny FuFuu',0,6,8,12,934),('Shyvana',94,'Dyrus',3,0,10,303,935),('Kha\'Zix',94,'TheOddOne',5,1,8,132,936),('Nidalee',94,'Bjergsen',8,1,4,287,937),('Lucian',94,'WildTurtle',2,3,6,353,938),('Leona',94,'Xpecial',1,4,13,45,939),('Rumble',95,'Balls',4,3,15,245,940),('Lee Sin',95,'Meteos',5,3,17,147,941),('Lulu',95,'Hai',10,5,18,283,942),('Lucian',95,'Sneaky',10,1,15,326,943),('Morgana',95,'LemonNation',3,4,20,2,944),('Ryze',95,'Cruzer',1,8,5,187,945),('Pantheon',95,'Crumbz',1,8,10,129,946),('Lux',95,'goldenglue',5,5,8,276,947),('Jinx',95,'Imaqtpie',8,3,7,377,948),('Thresh',95,'KiWiKiD',1,8,11,21,949),('Lee Sin',96,'InnoX',5,5,8,384,950),('Kha\'Zix',96,'Snoopeh',1,3,11,190,951),('Zed',96,'Pobelter',2,4,5,348,952),('Lucian',96,'Yellowpete',5,3,4,395,953),('Morgana',96,'Krepo',1,4,6,37,954),('Renekton',96,'ZionSpartan',3,3,14,371,955),('Evelynn',96,'NintendudeX',6,2,5,198,956),('LeBlanc',96,'Shiphtur',7,2,8,364,957),('Varus',96,'WizFujiiN',3,4,8,346,958),('Leona',96,'Daydreamin',0,3,15,74,959),('Trundle',97,'Balls',2,1,9,268,960),('Evelynn',97,'Meteos',2,0,8,150,961),('Soraka',97,'Hai',3,2,7,268,962),('Corki',97,'Sneaky',3,1,4,318,963),('Karma',97,'LemonNation',3,0,7,30,964),('Shyvana',97,'Benny',1,4,0,207,965),('Elise',97,'Xmithie',0,4,2,127,966),('Ziggs',97,'Mancloud',3,1,0,333,967),('Kog\'Maw',97,'Zuna',0,2,2,180,968),('Thresh',97,'Sheep',0,2,3,9,969),('Lee Sin',98,'ZionSpartan',0,3,2,293,970),('Elise',98,'NintendudeX',1,4,1,83,971),('Nidalee',98,'Shiphtur',2,2,1,238,972),('Caitlyn',98,'WizFujiiN',1,3,0,220,973),('Zyra',98,'Daydreamin',1,3,1,27,974),('Renekton',98,'Quas',3,0,7,230,975),('Vi',98,'IWillDominate',1,0,10,149,976),('Yasuo',98,'Voyboy',9,2,3,321,977),('Draven',98,'Cop',2,1,7,269,978),('Thresh',98,'Bunny FuFuu',0,2,8,12,979),('Shyvana',99,'Nien',2,5,3,332,980),('Evelynn',99,'dexter',2,7,7,128,981),('Ziggs',99,'LiNk',3,5,5,355,982),('Lucian',99,'Doublelift',7,5,4,363,983),('Thresh',99,'Aphromoo',0,5,11,30,984),('Shen',99,'Balls',5,1,13,308,985),('Kha\'Zix',99,'Meteos',11,5,10,186,986),('Lulu',99,'Hai',7,3,12,331,987),('Corki',99,'Sneaky',4,3,12,330,988),('Karma',99,'LemonNation',0,2,18,34,989),('Lee Sin',100,'Cruzer',4,1,9,191,990),('Vi',100,'Crumbz',2,3,8,139,991),('Orianna',100,'goldenglue',8,2,5,313,992),('Lucian',100,'Imaqtpie',1,1,12,305,993),('Annie',100,'KiWiKiD',1,3,13,44,994),('Renekton',100,'Quas',4,4,5,160,995),('Elise',100,'IWillDominate',1,5,6,108,996),('Nidalee',100,'Voyboy',2,2,5,227,997),('Ezreal',100,'Cop',2,2,5,221,998),('Karma',100,'Bunny FuFuu',1,3,5,32,999),('Nidalee',101,'InnoX',4,2,2,261,1000),('Kha\'Zix',101,'Snoopeh',3,2,2,96,1001),('Ahri',101,'Pobelter',1,4,4,279,1002),('Caitlyn',101,'Yellowpete',1,2,4,263,1003),('Morgana',101,'Krepo',0,3,2,17,1004),('Lee Sin',101,'Dyrus',1,3,7,272,1005),('Pantheon',101,'TheOddOne',3,4,6,116,1006),('Syndra',101,'Bjergsen',7,1,1,344,1007),('Lucian',101,'WildTurtle',2,0,7,331,1008),('Thresh',101,'Xpecial',0,1,9,10,1009),('Trundle',102,'Benny',1,2,1,191,1010),('Lee Sin',102,'Xmithie',0,4,3,133,1011),('Ziggs',102,'mandatorycloud',1,2,2,296,1012),('Corki',102,'Zuna',1,5,1,174,1013),('Karma',102,'Sheep',1,4,2,20,1014),('Jayce',102,'Cruzer',2,1,6,215,1015),('Elise',102,'Crumbz',4,1,5,103,1016),('Orianna',102,'goldenglue',4,0,10,263,1017),('Draven',102,'Imaqtpie',6,0,7,256,1018),('Thresh',102,'KiWiKiD',1,2,13,13,1019),('Shyvana',103,'Dyrus',3,3,7,249,1020),('Elise',103,'TheOddOne',2,2,12,127,1021),('Gragas',103,'Bjergsen',9,1,6,335,1022),('Jinx',103,'WildTurtle',5,2,5,277,1023),('Thresh',103,'Xpecial',2,1,14,21,1024),('Jax',103,'ZionSpartan',5,5,1,291,1025),('Evelynn',103,'NintendudeX',0,5,3,110,1026),('Ahri',103,'Shiphtur',1,4,3,347,1027),('Lucian',103,'WizFujiiN',2,3,2,282,1028),('Leona',103,'Daydreamin',1,4,5,19,1029),('Renekton',104,'Quas',6,3,8,230,1030),('Elise',104,'IWillDominate',0,3,11,127,1031),('Lulu',104,'Voyboy',6,4,9,148,1032),('Caitlyn',104,'Cop',7,2,6,261,1033),('Karma',104,'Bunny FuFuu',0,1,16,36,1034),('Shen',104,'Nien',2,5,9,245,1035),('Kha\'Zix',104,'dexter',5,4,5,140,1036),('LeBlanc',104,'LiNk',2,4,5,203,1037),('Jinx',104,'Doublelift',3,2,7,325,1038),('Thresh',104,'Aphromoo',1,4,8,12,1039),('Lee Sin',105,'Cruzer',4,6,13,281,1040),('Evelynn',105,'Crumbz',5,4,13,180,1041),('Zed',105,'goldenglue',1,5,11,331,1042),('Corki',105,'Imaqtpie',11,3,8,451,1043),('Annie',105,'KiWiKiD',1,8,12,25,1044),('Shyvana',105,'ZionSpartan',4,1,16,242,1045),('Pantheon',105,'NintendudeX',3,5,7,158,1046),('Ryze',105,'Shiphtur',4,6,13,394,1047),('Lucian',105,'WizFujiiN',15,2,6,383,1048),('Leona',105,'Daydreamin',0,8,13,18,1049),('Shyvana',106,'Nien',1,1,3,235,1050),('Lee Sin',106,'dexter',2,1,6,112,1051),('Orianna',106,'LiNk',3,1,6,247,1052),('Lucian',106,'Doublelift',9,0,4,290,1053),('Leona',106,'Aphromoo',1,1,8,37,1054),('Nidalee',106,'InnoX',1,1,1,219,1055),('Elise',106,'Snoopeh',0,2,2,75,1056),('Ziggs',106,'Pobelter',2,6,1,217,1057),('Caitlyn',106,'Yellowpete',1,3,3,236,1058),('Thresh',106,'Krepo',0,4,3,22,1059),('Shyvana',107,'Dyrus',0,1,0,255,1060),('Elise',107,'TheOddOne',0,6,4,109,1061),('Gragas',107,'Bjergsen',2,1,3,284,1062),('Lucian',107,'WildTurtle',3,4,0,264,1063),('Karma',107,'Xpecial',1,3,2,19,1064),('Renekton',107,'Balls',2,1,4,311,1065),('Evelynn',107,'Meteos',1,2,9,134,1066),('Soraka',107,'Hai',4,2,9,259,1067),('Corki',107,'Sneaky',5,1,5,331,1068),('Morgana',107,'LemonNation',3,0,10,11,1069),('Jayce',108,'Cruzer',0,2,1,110,1070),('Kha\'Zix',108,'Crumbz',1,2,0,91,1071),('Orianna',108,'goldenglue',0,3,1,160,1072),('Ezreal',108,'Imaqtpie',0,1,1,123,1073),('Annie',108,'KiWiKiD',0,1,1,10,1074),('Trundle',108,'Nien',2,0,4,183,1075),('Lee Sin',108,'dexter',2,0,3,75,1076),('Nidalee',108,'LiNk',2,0,3,137,1077),('Lucian',108,'Doublelift',3,1,3,147,1078),('Thresh',108,'Aphromoo',0,0,5,8,1079),('Ryze',109,'Innox',3,0,8,239,1080),('Pantheon',109,'Snoopeh',5,1,8,97,1081),('Lulu',109,'Pobelter',5,2,8,277,1082),('Lucian',109,'Yellowpete',3,1,10,321,1083),('Leona',109,'Krepo',1,1,8,39,1084),('Trundle',109,'Quas',0,3,1,171,1085),('Elise',109,'IWillDominate',2,4,2,131,1086),('Nidalee',109,'Voyboy',0,5,3,198,1087),('Caitlyn',109,'Cop',1,2,4,241,1088),('Morgana',109,'Bunny FuFuu',2,3,3,18,1089),('Ryze',110,'Benny',5,2,10,352,1090),('Elise',110,'Xmithie',4,6,16,152,1091),('Orianna',110,'mandatorycloud',4,1,16,454,1092),('Jinx',110,'Zuna',8,3,10,353,1093),('Thresh',110,'Sheep',1,7,17,56,1094),('Shyvana',110,'Dyrus',2,5,7,334,1095),('Evelynn',110,'TheOddOne',3,5,8,146,1096),('Syndra',110,'Bjergsen',5,6,2,473,1097),('Corki',110,'WildTurtle',8,2,2,454,1098),('Karma',110,'Xpecial',1,4,13,35,1099),('Renekton',111,'Balls',1,2,2,244,1100),('Nocturne',111,'Meteos',4,4,2,300,1101),('Gragas',111,'Hai',2,4,3,267,1102),('Lucian',111,'Sneaky',2,4,2,291,1103),('Karma',111,'LemonNation',0,5,4,45,1104),('Lee Sin',111,'ZionSpartan',4,2,7,337,1105),('Evelynn',111,'NintendudeX',2,1,7,160,1106),('LeBlanc',111,'Shiphtur',10,1,2,245,1107),('Caitlyn',111,'WizFujiiN',2,3,5,247,1108),('Annie',111,'Daydreamin',1,2,8,43,1109),('Ryze',112,'Benny',1,7,3,260,1110),('Pantheon',112,'Xmithie',1,8,1,116,1111),('Orianna',112,'mandatorycloud',4,6,2,367,1112),('Caitlyn',112,'Zuna',3,3,2,345,1113),('Morgana',112,'Sheep',0,4,3,29,1114),('Lee Sin',112,'InnoX',11,0,12,368,1115),('Evelynn',112,'Snoopeh',5,2,18,157,1116),('LeBlanc',112,'Pobelter',3,3,9,326,1117),('Lucian',112,'Yellowpete',7,1,11,406,1118),('Leona',112,'Krepo',2,3,13,57,1119);
/*!40000 ALTER TABLE `c2` ENABLE KEYS */;
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