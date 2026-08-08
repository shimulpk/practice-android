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
-- Table structure for table `cutting_plans`
--

DROP TABLE IF EXISTS `cutting_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cutting_plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `cutting_master` varchar(255) DEFAULT NULL,
  `cutting_plan_id` varchar(255) DEFAULT NULL,
  `cutting_table_number` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `fabric_type` varchar(255) DEFAULT NULL,
  `marker_efficiency` decimal(38,2) DEFAULT NULL,
  `marker_length` decimal(38,2) DEFAULT NULL,
  `marker_width` decimal(38,2) DEFAULT NULL,
  `number_of_plies` int DEFAULT NULL,
  `planned_pieces` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` enum('CANCELLED','COMPLETED','IN_PROGRESS','PENDING') NOT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `total_fabric_required` decimal(38,2) DEFAULT NULL,
  `buyer_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm1c3x2lahtl70a240v127y4wv` (`buyer_id`),
  KEY `FKhpbk6xddhq6edwahnmwsbbmtl` (`order_id`),
  CONSTRAINT `FKhpbk6xddhq6edwahnmwsbbmtl` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKm1c3x2lahtl70a240v127y4wv` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cutting_plans`
--

LOCK TABLES `cutting_plans` WRITE;
/*!40000 ALTER TABLE `cutting_plans` DISABLE KEYS */;
INSERT INTO `cutting_plans` VALUES (1,'Navy Blue','Rahim','CP-1786111080533','CT-01,CT-02,CT-03','2026-07-12','Cotton-Polyester Blend',90.00,80.00,85.00,10,14000,'2026-07-08','COMPLETED','PRI-201',26340.00,3,8),(2,'Navy Blue','Rahim','CP-1786118249499','CT-01,CT-02,CT-03','2026-07-12','Cotton-Polyester Blend',90.00,80.00,85.00,10,14000,'2026-07-07','COMPLETED','HM-201',26130.00,1,1),(3,'Blue','Rahim','CP-1786119811721','CT-01,CT-02,CT-03','2026-08-13','Cotton-Polyester Blend',90.00,80.00,85.00,20,12000,'2026-07-08','COMPLETED','HM-202',25895.00,1,2),(4,'Blue','Rahim','CP-1786120691963','CT-01,CT-02,CT-03','2026-07-16','Cooton',90.00,80.00,85.00,20,17000,'2026-07-10','COMPLETED','HM-203',33920.00,1,3),(5,'Navy Blue','Rahim','CP-1786121430171','CT-01,CT-02,CT-03','2026-07-30','Cotton-Polyester Blend',90.00,80.00,85.00,20,15000,'2026-07-25','COMPLETED','ZA-201',28240.00,2,4),(6,'Navy Blue','Rahim','CP-1786121913383','CT-01,CT-02,CT-03','2026-08-07','Cotton-Polyester Blend',90.00,80.00,80.00,20,20000,'2026-08-01','COMPLETED','ZA-202',42800.00,2,5),(7,'Navy Blue','Rahim','CP-1786122487367','CT-01,CT-02,CT-03','2026-08-07','Cotton-Polyester Blend',90.00,80.00,85.00,20,13000,'2026-08-01','COMPLETED','ZA-203',25690.00,2,6),(8,'Blue','Rahim','CP-1786122683510','CT-01,CT-02,CT-03','2026-08-14','Cotton-Polyester Blend',90.00,80.00,85.00,20,9000,'2026-08-07','PENDING','PRI-202',18950.00,3,9);
/*!40000 ALTER TABLE `cutting_plans` ENABLE KEYS */;
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
