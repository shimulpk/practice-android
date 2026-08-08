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
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `unit_price` decimal(38,2) DEFAULT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbioxgbv59vetrxe0ejfubep1w` (`order_id`),
  CONSTRAINT `FKbioxgbv59vetrxe0ejfubep1w` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (5,'',3000,'S','Short Sleeve Shirt',470.00,1),(6,'',5000,'M','Short Sleeve Shirt',480.00,1),(7,'',4000,'L','Short Sleeve Shirt',500.00,1),(8,'',2000,'XL','Short Sleeve Shirt',510.00,1),(9,'',2000,'S','Full Sleeve Shirt',470.00,2),(10,'',3500,'M','Full Sleeve Shirt',480.00,2),(11,'',4000,'L','Full Sleeve Shirt',510.00,2),(12,'',2500,'XL','Full Sleeve Shirt',520.00,2),(13,'',2000,'S','Short Sleeve Shirt',470.00,3),(14,'',3000,'M','Short Sleeve Shirt',480.00,3),(15,'',2000,'L','Short Sleeve Shirt',520.00,3),(16,'',3000,'XL','Short Sleeve Shirt',530.00,3),(17,'',1500,'S','Full Sleeve Shirt',470.00,3),(18,'',2000,'M','Full Sleeve Shirt',475.00,3),(19,'',1600,'L','Full Sleeve Shirt',490.00,3),(20,'',1900,'XL','Full Sleeve Shirt',500.00,3),(25,'',4000,'S','Short Sleeve Shirt',470.00,4),(26,'',3000,'M','Short Sleeve Shirt',490.00,4),(27,'',4000,'L','Short Sleeve Shirt',500.00,4),(28,'',4000,'XL','Short Sleeve Shirt',510.00,4),(29,'',5000,'S','Full Sleeve Shirt',450.00,5),(30,'',5000,'M','Full Sleeve Shirt',470.00,5),(31,'',5000,'L','Full Sleeve Shirt',480.00,5),(32,'',5000,'XL','Full Sleeve Shirt',490.00,5),(33,'',2000,'S','Short Sleeve Shirt',500.00,6),(34,'',2000,'M','Short Sleeve Shirt',510.00,6),(35,'',2000,'L','Short Sleeve Shirt',520.00,6),(36,'',1000,'XL','Short Sleeve Shirt',530.00,6),(37,'',2000,'S','Full Sleeve Shirt',500.00,6),(38,'',2000,'M','Full Sleeve Shirt',510.00,6),(39,'',1000,'L','Full Sleeve Shirt',520.00,6),(40,'',1000,'XL','Full Sleeve Shirt',530.00,6),(41,'',5000,'S','Full Sleeve Shirt',500.00,7),(42,'',4000,'M','Full Sleeve Shirt',520.00,7),(43,'',5000,'L','Full Sleeve Shirt',530.00,7),(44,'',3000,'XL','Full Sleeve Shirt',540.00,7),(45,'',2000,'S','Short Sleeve Shirt',510.00,8),(46,'',5000,'M','Short Sleeve Shirt',510.00,8),(47,'',4000,'L','Short Sleeve Shirt',550.00,8),(48,'',3000,'XL','Short Sleeve Shirt',550.00,8),(49,'',3000,'S','Full Sleeve Shirt',500.00,9),(50,'',3000,'M','Full Sleeve Shirt',530.00,9),(51,'',2000,'L','Full Sleeve Shirt',580.00,9),(52,'',1000,'XL','Full Sleeve Shirt',600.00,9),(53,'',2000,'S','Short Sleeve Shirt',550.00,10),(54,'',2000,'M','Short Sleeve Shirt',550.00,10),(55,'',2000,'L','Short Sleeve Shirt',550.00,10),(56,'',2500,'XL','Short Sleeve Shirt',550.00,10),(57,'',2000,'S','Full Sleeve Shirt',550.00,10),(58,'',2000,'M','Full Sleeve Shirt',550.00,10),(59,'',3000,'L','Full Sleeve Shirt',550.00,10),(60,'',1500,'XL','Full Sleeve Shirt',550.00,10);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-08 11:44:06
