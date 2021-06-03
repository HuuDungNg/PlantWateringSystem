-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: envData
-- ------------------------------------------------------
-- Server version	10.3.29-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buttondata`
--

DROP TABLE IF EXISTS `buttondata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buttondata` (
  `pumpbutton` varchar(3) NOT NULL,
  `lightbutton` varchar(3) NOT NULL,
  `mode` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buttondata`
--

LOCK TABLES `buttondata` WRITE;
/*!40000 ALTER TABLE `buttondata` DISABLE KEYS */;
INSERT INTO `buttondata` VALUES ('OFF','OFF','MANUAL');
/*!40000 ALTER TABLE `buttondata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envData`
--

DROP TABLE IF EXISTS `envData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime DEFAULT current_timestamp(),
  `temperature` float(4,2) NOT NULL,
  `humidity` float(4,1) NOT NULL,
  `update_only_time` time DEFAULT curtime(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envData`
--

LOCK TABLES `envData` WRITE;
/*!40000 ALTER TABLE `envData` DISABLE KEYS */;
INSERT INTO `envData` VALUES (1,'2021-05-20 12:22:30',29.00,75.0,'12:22:30'),(2,'2021-05-20 12:56:34',35.00,82.0,'12:56:34'),(3,'2021-05-20 12:56:39',28.00,81.0,'12:56:39'),(4,'2021-05-20 12:56:44',39.00,85.0,'12:56:44'),(5,'2021-05-20 12:56:49',33.00,77.0,'12:56:49'),(6,'2021-05-20 12:56:54',22.00,73.0,'12:56:54'),(7,'2021-05-20 13:10:53',21.00,83.0,'13:10:53'),(8,'2021-05-20 13:10:55',29.00,85.0,'13:10:55'),(9,'2021-05-20 13:10:57',26.00,84.0,'13:10:57'),(10,'2021-05-20 13:10:59',20.00,71.0,'13:10:59'),(11,'2021-05-20 13:11:01',37.00,82.0,'13:11:01'),(12,'2021-05-20 13:11:03',32.00,82.0,'13:11:03'),(13,'2021-05-20 15:30:16',28.00,77.0,'15:30:16'),(14,'2021-05-20 15:30:18',30.00,75.0,'15:30:18'),(15,'2021-05-20 15:30:20',20.00,82.0,'15:30:20'),(16,'2021-05-20 15:30:22',21.00,85.0,'15:30:22'),(17,'2021-05-20 15:30:24',31.00,82.0,'15:30:24'),(18,'2021-05-20 15:31:01',40.00,80.0,'15:31:01'),(19,'2021-05-20 15:31:06',32.00,85.0,'15:31:06'),(20,'2021-05-20 15:31:11',36.00,84.0,'15:31:11'),(21,'2021-05-20 15:31:16',30.00,73.0,'15:31:16'),(22,'2021-05-20 15:31:21',37.00,76.0,'15:31:21'),(23,'2021-05-20 15:31:26',36.00,82.0,'15:31:26'),(24,'2021-05-20 15:31:31',40.00,81.0,'15:31:31'),(25,'2021-05-20 15:31:36',31.00,77.0,'15:31:36'),(26,'2021-05-20 15:31:41',24.00,77.0,'15:31:41'),(27,'2021-05-20 15:31:46',32.00,74.0,'15:31:46'),(28,'2021-05-20 15:31:51',24.00,82.0,'15:31:51'),(29,'2021-05-20 15:31:56',31.00,74.0,'15:31:56'),(30,'2021-05-20 15:32:01',25.00,80.0,'15:32:01'),(31,'2021-05-20 15:32:06',37.00,85.0,'15:32:06'),(32,'2021-05-20 15:32:11',24.00,78.0,'15:32:11'),(33,'2021-05-20 15:32:16',36.00,79.0,'15:32:16'),(34,'2021-05-20 15:32:21',33.00,73.0,'15:32:21');
/*!40000 ALTER TABLE `envData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesetting`
--

DROP TABLE IF EXISTS `timesetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timesetting` (
  `onpump` time DEFAULT NULL,
  `offpump` time DEFAULT NULL,
  `onlight` time DEFAULT NULL,
  `offlight` time DEFAULT NULL,
  `pumpbutton` varchar(3) DEFAULT NULL,
  `lightbutton` varchar(3) DEFAULT NULL,
  `mode` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesetting`
--

LOCK TABLES `timesetting` WRITE;
/*!40000 ALTER TABLE `timesetting` DISABLE KEYS */;
INSERT INTO `timesetting` VALUES ('17:45:00','17:47:00','17:48:00','17:47:00','ON','ON','');
/*!40000 ALTER TABLE `timesetting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-03 17:46:29
