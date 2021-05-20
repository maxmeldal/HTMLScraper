CREATE DATABASE  IF NOT EXISTS `htmlscraper` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `htmlscraper`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: htmlscraper
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `url` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (10,'Marketing','https://thehub.io/jobs/60912dfb7e9bca7c13e9f364'),(11,'Regional Client Director Benelux (independent reseller)','https://thehub.io/jobs/60911ff37e9bca7c13e4f816'),(12,'Senior Ruby Engineer','https://thehub.io/jobs/609198437e9bca7c130ad51c'),(13,'Content Creator &amp; Product tester with a flair for Photography (US or Denmark)','https://thehub.io/jobs/609148647e9bca7c13f2cb57'),(14,'Lead Product Designer (UI/UX)','https://thehub.io/jobs/6093da7c27274c2225576179'),(15,'Communications Assistant','https://thehub.io/jobs/609389f627274c22253d8e83'),(16,'Gif Animator at social media Tech Start-up','https://thehub.io/jobs/60912f9d7e9bca7c13eaa1f5'),(17,'Mobile Developer at Cool New Startup - Potential for Equity','https://thehub.io/jobs/609114237e9bca7c13e0b7e3'),(18,'Angular Developer at new social media startup - Potential for Equity','https://thehub.io/jobs/609113787e9bca7c13e0788b'),(19,'Student Sales Assistant','https://thehub.io/jobs/609468cc27274c22257e1847'),(20,'Svensktalande studentmedarbetare för marknadsföring','https://thehub.io/jobs/6093c15527274c22254fe99b'),(21,'Business / Marketing internship in a Drone Startup','https://thehub.io/jobs/6092d8e427274c222515994c'),(22,'Project in a Drone Startup','https://thehub.io/jobs/6092d7bf27274c222515493a'),(23,'Image/Signal processing project in a Drone Startup','https://thehub.io/jobs/6092d73027274c2225152f0f'),(24,'Mobile Application Developer','https://thehub.io/jobs/6092d37527274c2225144352');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-20  9:18:39
