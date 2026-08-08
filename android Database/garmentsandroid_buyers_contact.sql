-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: garmentsandroid
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `buyers_contact`
--

DROP TABLE IF EXISTS `buyers_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyers_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `buyer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9fnw0unun6yygj2931uoom6m0` (`buyer_id`),
  CONSTRAINT `FK9fnw0unun6yygj2931uoom6m0` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers_contact`
--

LOCK TABLES `buyers_contact` WRITE;
/*!40000 ALTER TABLE `buyers_contact` DISABLE KEYS */;
INSERT INTO `buyers_contact` VALUES (1,'Emon','Merchandiser','emon@gmail.com','01568186400',1),(2,'Rehana Akter','Country Representative','rehana@gmail.com','01568186401',1),(3,'Sajin Ahmed','Merchandiser','sajin@gmail.com','01568186402',2),(4,'Israt Jahan Jui','Country Representative','jui@gmail.com','01568186403',2),(5,'Sadia Akter','Country Representative','sadia@gmail.com','01568186404',3),(6,'Badrul Amin','','badrul@gmail.com','01568186405',4),(7,'Abul Hasan','Country Representative','abul@gmail.com','01568186405',5),(8,'Miskat Islam','Merchandiser','miskat@gmail.com','01568186406',6),(9,'Tanvir','Buying Manager','tanvir@gmail.com','01568186407',7),(10,'Shaharasn Hossain','Buying Manager','saharan@gmail.com','01568186408',8),(11,'Mortuja Masud','Merchandiser','masud@gmail.com','01568186410',9),(12,'Mahabub Ali','Buying Manager','mahbub@gmail.com','01568186411',10);
/*!40000 ALTER TABLE `buyers_contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-08 11:44:07
