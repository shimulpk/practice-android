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
-- Table structure for table `day_wise_sewing_productions`
--

DROP TABLE IF EXISTS `day_wise_sewing_productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_wise_sewing_productions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `achieved_quantity` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `rejection_qty` int DEFAULT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `production_line_id` bigint NOT NULL,
  `sewing_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8d0nto8j7u55y4dreys2efjmf` (`production_line_id`),
  KEY `FKcb3v251q7r6k83pexcxvma2xt` (`sewing_plan_id`),
  CONSTRAINT `FK8d0nto8j7u55y4dreys2efjmf` FOREIGN KEY (`production_line_id`) REFERENCES `production_lines` (`id`),
  CONSTRAINT `FKcb3v251q7r6k83pexcxvma2xt` FOREIGN KEY (`sewing_plan_id`) REFERENCES `sewing_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_wise_sewing_productions`
--

LOCK TABLES `day_wise_sewing_productions` WRITE;
/*!40000 ALTER TABLE `day_wise_sewing_productions` DISABLE KEYS */;
INSERT INTO `day_wise_sewing_productions` VALUES (1,3000,'2026-07-14','	OR-308',20,'PRI-201',1,1),(2,4000,'2026-07-15','	OR-308',20,'PRI-201',2,1),(3,3000,'2026-07-16','	OR-308',20,'PRI-201',3,1),(4,4000,'2026-07-17','	OR-308',10,'PRI-201',4,1),(5,3000,'2026-07-15','OR-301',10,'HM-201',1,2),(6,4000,'2026-07-16','OR-301',20,'HM-201',2,2),(7,5000,'2026-07-17','OR-301',50,'HM-201',3,2),(8,2000,'2026-07-18','OR-301',20,'HM-201',4,2),(9,3000,'2026-07-14','OR-302',20,'HM-202',1,3),(10,2500,'2026-07-15','OR-302',10,'HM-202',2,3),(11,2000,'2026-07-16','OR-302',10,'HM-202',3,3),(12,3000,'2026-08-16','OR-302',20,'HM-202',4,3),(13,1500,'2026-08-18','OR-302',10,'HM-202',5,3),(14,4000,'2026-07-17','	OR-303',20,'HM-203',1,4),(15,3000,'2026-07-18','	OR-303',20,'HM-203',2,4),(16,3500,'2026-07-19','	OR-303',20,'HM-203',3,4),(17,2500,'2026-07-19','	OR-303',20,'HM-203',4,4),(18,4000,'2026-07-21','	OR-303',20,'HM-203',5,4),(19,3000,'2026-08-01','OR-304',20,'ZA-201',1,5),(20,2000,'2026-08-02','OR-304',20,'ZA-201',2,5),(21,4000,'2026-08-04','OR-304',20,'ZA-201',3,5),(22,2500,'2026-08-05','OR-304',0,'ZA-201',4,5),(23,3500,'2026-08-07','OR-304',20,'ZA-201',5,5);
/*!40000 ALTER TABLE `day_wise_sewing_productions` ENABLE KEYS */;
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
