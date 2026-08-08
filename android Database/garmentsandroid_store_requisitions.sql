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
-- Table structure for table `store_requisitions`
--

DROP TABLE IF EXISTS `store_requisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_requisitions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department` varchar(255) DEFAULT NULL,
  `pr_no` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `requested_by` varchar(255) DEFAULT NULL,
  `requisition_date` date DEFAULT NULL,
  `status` enum('APPROVED','PENDING','PO_CREATED','REJECTED') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKfl1n8gu7qyuftyscuseb63w6e` (`pr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_requisitions`
--

LOCK TABLES `store_requisitions` WRITE;
/*!40000 ALTER TABLE `store_requisitions` DISABLE KEYS */;
INSERT INTO `store_requisitions` VALUES (1,'Inventory','PR-1785264752622','Urjent','Store Manager','2026-06-05','PO_CREATED'),(2,'Inventory','PR-1785264921887','very Urgent','Store Manager','2026-07-06','PO_CREATED'),(3,'Inventory','PR-1785265056308','Very Urgents','Store Manager','2026-07-08','PO_CREATED'),(4,'Inventory','PR-1785265149490','Urgents','Store Manager','2026-06-23','PENDING'),(5,'Inventory','PR-1785265240207','Urgents','Store Manager','2026-07-29','APPROVED');
/*!40000 ALTER TABLE `store_requisitions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-08 11:44:04
