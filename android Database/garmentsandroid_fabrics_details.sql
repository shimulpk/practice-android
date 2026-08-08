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
-- Table structure for table `fabrics_details`
--

DROP TABLE IF EXISTS `fabrics_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabrics_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `base_fabric` decimal(38,2) DEFAULT NULL,
  `calculated_fabric` decimal(38,2) DEFAULT NULL,
  `has_uom` bit(1) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `rmc_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKal9b3pw0h6aeug1hrtdbv5kp4` (`rmc_id`),
  CONSTRAINT `FKal9b3pw0h6aeug1hrtdbv5kp4` FOREIGN KEY (`rmc_id`) REFERENCES `fabric-check` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabrics_details`
--

LOCK TABLES `fabrics_details` WRITE;
/*!40000 ALTER TABLE `fabrics_details` DISABLE KEYS */;
INSERT INTO `fabrics_details` VALUES (1,1.79,5370.00,_binary '','Short Sleeve Shirt',3000,'S','Short Sleeve Shirt',1),(2,1.84,9200.00,_binary '','Short Sleeve Shirt',5000,'M','Short Sleeve Shirt',1),(3,1.89,7560.00,_binary '','Short Sleeve Shirt',4000,'L','Short Sleeve Shirt',1),(4,2.00,4000.00,_binary '','Short Sleeve Shirt',2000,'XL','Short Sleeve Shirt',1),(5,1.94,3880.00,_binary '','Full Sleeve Shirt',2000,'S','Full Sleeve Shirt',2),(6,2.15,7525.00,_binary '','Full Sleeve Shirt',3500,'M','Full Sleeve Shirt',2),(7,2.21,8840.00,_binary '','Full Sleeve Shirt',4000,'L','Full Sleeve Shirt',2),(8,2.26,5650.00,_binary '','Full Sleeve Shirt',2500,'XL','Full Sleeve Shirt',2),(9,1.79,3580.00,_binary '','Short Sleeve Shirt',2000,'S','Short Sleeve Shirt',3),(10,1.84,5520.00,_binary '','Short Sleeve Shirt',3000,'M','Short Sleeve Shirt',3),(11,1.89,3780.00,_binary '','Short Sleeve Shirt',2000,'L','Short Sleeve Shirt',3),(12,2.00,6000.00,_binary '','Short Sleeve Shirt',3000,'XL','Short Sleeve Shirt',3),(13,1.94,2910.00,_binary '','Full Sleeve Shirt',1500,'S','Full Sleeve Shirt',3),(14,2.15,4300.00,_binary '','Full Sleeve Shirt',2000,'M','Full Sleeve Shirt',3),(15,2.21,3536.00,_binary '','Full Sleeve Shirt',1600,'L','Full Sleeve Shirt',3),(16,2.26,4294.00,_binary '','Full Sleeve Shirt',1900,'XL','Full Sleeve Shirt',3),(17,1.79,7160.00,_binary '','Short Sleeve Shirt',4000,'S','Short Sleeve Shirt',4),(18,1.84,5520.00,_binary '','Short Sleeve Shirt',3000,'M','Short Sleeve Shirt',4),(19,1.89,7560.00,_binary '','Short Sleeve Shirt',4000,'L','Short Sleeve Shirt',4),(20,2.00,8000.00,_binary '','Short Sleeve Shirt',4000,'XL','Short Sleeve Shirt',4),(21,1.94,9700.00,_binary '','Full Sleeve Shirt',5000,'S','Full Sleeve Shirt',5),(22,2.15,10750.00,_binary '','Full Sleeve Shirt',5000,'M','Full Sleeve Shirt',5),(23,2.21,11050.00,_binary '','Full Sleeve Shirt',5000,'L','Full Sleeve Shirt',5),(24,2.26,11300.00,_binary '','Full Sleeve Shirt',5000,'XL','Full Sleeve Shirt',5),(25,1.79,3580.00,_binary '','Short Sleeve Shirt',2000,'S','Short Sleeve Shirt',6),(26,1.84,9200.00,_binary '','Short Sleeve Shirt',5000,'M','Short Sleeve Shirt',6),(27,1.89,7560.00,_binary '','Short Sleeve Shirt',4000,'L','Short Sleeve Shirt',6),(28,2.00,6000.00,_binary '','Short Sleeve Shirt',3000,'XL','Short Sleeve Shirt',6),(29,1.79,3580.00,_binary '','Short Sleeve Shirt',2000,'S','Short Sleeve Shirt',7),(30,1.84,3680.00,_binary '','Short Sleeve Shirt',2000,'M','Short Sleeve Shirt',7),(31,1.89,3780.00,_binary '','Short Sleeve Shirt',2000,'L','Short Sleeve Shirt',7),(32,2.00,2000.00,_binary '','Short Sleeve Shirt',1000,'XL','Short Sleeve Shirt',7),(33,1.94,3880.00,_binary '','Full Sleeve Shirt',2000,'S','Full Sleeve Shirt',7),(34,2.15,4300.00,_binary '','Full Sleeve Shirt',2000,'M','Full Sleeve Shirt',7),(35,2.21,2210.00,_binary '','Full Sleeve Shirt',1000,'L','Full Sleeve Shirt',7),(36,2.26,2260.00,_binary '','Full Sleeve Shirt',1000,'XL','Full Sleeve Shirt',7),(37,1.94,5820.00,_binary '','Full Sleeve Shirt',3000,'S','Full Sleeve Shirt',8),(38,2.15,6450.00,_binary '','Full Sleeve Shirt',3000,'M','Full Sleeve Shirt',8),(39,2.21,4420.00,_binary '','Full Sleeve Shirt',2000,'L','Full Sleeve Shirt',8),(40,2.26,2260.00,_binary '','Full Sleeve Shirt',1000,'XL','Full Sleeve Shirt',8);
/*!40000 ALTER TABLE `fabrics_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-08 11:44:05
