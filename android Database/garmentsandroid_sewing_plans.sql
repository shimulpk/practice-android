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
-- Table structure for table `sewing_plans`
--

DROP TABLE IF EXISTS `sewing_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sewing_plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `input_received_qty` int DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `output_qty` int DEFAULT NULL,
  `rejection_qty` int DEFAULT NULL,
  `sewing_plan_id` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` enum('COMPLETED','IN_SEWING','PENDING') NOT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `cutting_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh8v9t6ywbmuwow2okp1xurn64` (`cutting_plan_id`),
  CONSTRAINT `FKh8v9t6ywbmuwow2okp1xurn64` FOREIGN KEY (`cutting_plan_id`) REFERENCES `cutting_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sewing_plans`
--

LOCK TABLES `sewing_plans` WRITE;
/*!40000 ALTER TABLE `sewing_plans` DISABLE KEYS */;
INSERT INTO `sewing_plans` VALUES (1,'Primark','Navy Blue','2026-08-18',14000,'	OR-308',14000,70,'SP-1786116226160','2026-07-14','COMPLETED','PRI-201',1),(2,'H&M','Navy Blue','2026-07-20',14000,'OR-301',14000,100,'SP-1786118700095','2026-07-15','COMPLETED','HM-201',2),(3,'H&M','Blue','2026-07-20',12000,'OR-302',12000,70,'SP-1786120038415','2026-07-14','COMPLETED','HM-202',3),(4,'H&M','Blue','2026-07-22',17000,'	OR-303',17000,100,'SP-1786120983035','2026-07-17','COMPLETED','HM-203',4),(5,'Zara (Inditex)','Navy Blue','2026-08-07',15000,'OR-304',15000,80,'SP-1786121654148','2026-08-01','COMPLETED','ZA-201',5),(6,'Zara (Inditex)','Navy Blue','2026-08-12',20000,'OR-305',0,0,'SP-1786122255524','2026-08-07','IN_SEWING','ZA-202',6);
/*!40000 ALTER TABLE `sewing_plans` ENABLE KEYS */;
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
