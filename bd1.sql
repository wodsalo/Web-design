-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: bd1
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `gamers`
--

DROP TABLE IF EXISTS `gamers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamers` (
  `idgamers` int NOT NULL,
  `name` varchar(25) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `favourite_game` int DEFAULT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`idgamers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamers`
--

LOCK TABLES `gamers` WRITE;
/*!40000 ALTER TABLE `gamers` DISABLE KEYS */;
INSERT INTO `gamers` VALUES (10,'Agaeva','США',100,'2007-09-11'),(11,'Beresnev','Китай',NULL,'2006-12-07'),(12,'Boeva','Китай',105,'2007-07-31'),(13,'bykova','США',NULL,'2007-08-30'),(14,'bystrova',NULL,102,'2007-07-31'),(15,'Vdovin','США',105,'2007-06-02'),(16,'vilesov',NULL,103,'2007-04-23'),(17,'Geliver',NULL,NULL,'2007-03-31'),(18,'gerfanov','США',NULL,'2006-02-03'),(19,'kamyshev  ','Китай',102,'2007-01-03'),(20,'Kovrignyh','США',103,'2007-11-05'),(21,'kolesnikova  ','Китай',108,'2006-07-31');
/*!40000 ALTER TABLE `gamers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamers_games`
--

DROP TABLE IF EXISTS `gamers_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamers_games` (
  `idgamers_games` int NOT NULL,
  `gamer` int NOT NULL,
  `game` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`idgamers_games`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamers_games`
--

LOCK TABLES `gamers_games` WRITE;
/*!40000 ALTER TABLE `gamers_games` DISABLE KEYS */;
INSERT INTO `gamers_games` VALUES (1000,11,100,'2011-07-11','01:00:01'),(1001,13,105,'2015-12-31','00:55:01'),(1002,15,102,'2015-12-31','08:00:01'),(1003,11,105,'2016-07-02','00:41:01'),(1004,12,106,'2017-02-01','08:50:01'),(1005,12,108,'2017-02-01','12:00:01'),(1006,13,105,'2015-03-01','00:45:01'),(1007,14,102,'2017-10-08','17:00:01'),(1008,14,108,'2019-11-03','00:10:01'),(1009,18,107,'2012-10-15','22:59:01'),(1010,11,105,'2012-10-16','01:00:01'),(1011,12,105,'2019-10-15','07:00:01'),(1012,10,100,'2020-10-17','08:00:01'),(1013,10,100,'2021-09-15','11:00:01'),(1014,12,106,'2012-11-11','13:00:01'),(1015,12,105,'2012-12-13','17:11:01'),(1016,12,105,'2019-10-15','14:07:01'),(1017,12,105,'2021-10-19','09:00:01');
/*!40000 ALTER TABLE `gamers_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `idgame` int NOT NULL,
  `game_name` varchar(25) NOT NULL,
  `developer` varchar(30) NOT NULL,
  `price` double DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idgame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (100,'Counter-Strike 2','Valve',0,'США'),(101,'Dota 2','Valve',0,'США'),(102,'Battlefield™ 6','Battlefield Studios',100,'США'),(103,'PUBG: BATTLEGROUNDS','PUBG Corporation',0,'Южная Корея'),(104,'Escape from Duckov','Team Soda',15,'Китай'),(105,'Marvel Rivals','NetEase Games',0,'Китай'),(106,'Delta Force','Team Jade',0,'Китай'),(107,'Banana','Sky',0,'США'),(108,'Dota 3','ИСИТ',NULL,'Россия');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-25 15:33:07
