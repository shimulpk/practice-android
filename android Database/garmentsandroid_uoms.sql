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
-- Table structure for table `uoms`
--

DROP TABLE IF EXISTS `uoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uoms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` decimal(38,2) DEFAULT NULL,
  `pocket` decimal(38,2) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `shrinkage` decimal(38,2) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `sleeve` decimal(38,2) DEFAULT NULL,
  `total_base_fabric` decimal(38,2) DEFAULT NULL,
  `wastage` decimal(38,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uoms`
--

LOCK TABLES `uoms` WRITE;
/*!40000 ALTER TABLE `uoms` DISABLE KEYS */;
INSERT INTO `uoms` VALUES (1,1.15,0.10,'Short Sleeve Shirt',3.00,'S',0.45,1.79,2.00),(2,1.20,0.10,'Short Sleeve Shirt',3.00,'M',0.45,1.84,2.00),(3,1.25,0.10,'Short Sleeve Shirt',3.00,'L',0.45,1.89,2.00),(4,1.35,0.10,'Short Sleeve Shirt',3.00,'XL',0.45,2.00,2.00),(5,1.30,0.10,'Full Sleeve Shirt',3.00,'S',0.45,1.94,2.00),(6,1.35,0.20,'Full Sleeve Shirt',3.00,'M',0.50,2.15,2.00),(7,1.40,0.20,'Full Sleeve Shirt',3.00,'L',0.50,2.21,2.00),(8,1.45,0.20,'Full Sleeve Shirt',3.00,'XL',0.50,2.26,2.00);
/*!40000 ALTER TABLE `uoms` ENABLE KEYS */;
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
