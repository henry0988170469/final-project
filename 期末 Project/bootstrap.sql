-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bootstrap_92
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cid` int NOT NULL,
  `cname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (0,'types'),(1,'hats'),(2,'jackets'),(3,'sneakers'),(4,'womens'),(5,'mens');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture_92`
--

DROP TABLE IF EXISTS `picture_92`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `picture_92` (
  `id` int NOT NULL,
  `img_title` varchar(45) DEFAULT NULL,
  `img_intro` varchar(45) DEFAULT NULL,
  `img_year` varchar(45) DEFAULT NULL,
  `cat_id` int DEFAULT NULL,
  `local_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_idx` (`cat_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cid`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture_92`
--

LOCK TABLES `picture_92` WRITE;
/*!40000 ALTER TABLE `picture_92` DISABLE KEYS */;
INSERT INTO `picture_92` VALUES (1,'Threads','Illustration',NULL,0,'/img/portfolio/01-thumbnail.jpg'),(2,'Explore','Graphic Design',NULL,0,'/img/portfolio/02-thumbnail.jpg'),(3,'Finish','Identity',NULL,0,'/img/portfolio/03-thumbnail.jpg'),(4,'Lines','Branding',NULL,0,'/img/portfolio/04-thumbnail.jpg'),(5,'Southwest','Website Design',NULL,0,'/img/portfolio/05-thumbnail.jpg'),(6,'Window','Photography',NULL,0,'/img/portfolio/06-thumbnail.jpg'),(7,'Our Humble Beginnings',NULL,'2009-2011',1,'/img/about/1.jpg'),(8,'An Agency is Born','timeline-inverted','March 2011',1,'/img/about/2.jpg'),(9,'Transition to Full Service',NULL,'December 2012',1,'/img/about/3.jpg'),(10,'Phase Two Expansion','timeline-inverted','July 2014',1,'/img/about/4.jpg'),(11,'Kay Garland','Lead Designer',NULL,2,'/img/team/1.jpg'),(12,'Larry Parker','Lead Marketer',NULL,2,'/img/team/2.jpg'),(13,'Diana Petersen','Lead Developer',NULL,2,'/img/team/3.jpg'),(14,'logos-creative_market',NULL,NULL,3,'/img/logose/creative_market.jpg'),(15,'logos-designmodo',NULL,NULL,3,'/img/logose/designmodo.jpg'),(16,'logos-envato',NULL,NULL,3,'/img/logose/envato.jpg'),(17,'logos-themeforest',NULL,NULL,3,'/img/logose/themeforest.jpg'),(18,'portfolio-01-full',NULL,NULL,4,'/img/portfolio/01-full.jpg'),(19,'portfolio-02-full',NULL,NULL,4,'/img/portfolio/02-full.jpg'),(20,'portfolio-03-full',NULL,NULL,4,'/img/portfolio/03-full.jpg'),(21,'portfolio-04-full',NULL,NULL,4,'/img/portfolio/04-full.jpg'),(22,'portfolio-05-full',NULL,NULL,4,'/img/portfolio/05-full.jpg'),(23,'portfolio-06-full',NULL,NULL,4,'/img/portfolio/06-full.jpg');
/*!40000 ALTER TABLE `picture_92` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-08 21:38:26
