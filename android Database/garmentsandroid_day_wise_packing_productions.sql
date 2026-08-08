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
-- Table structure for table `day_wise_packing_productions`
--

DROP TABLE IF EXISTS `day_wise_packing_productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_wise_packing_productions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `today_packed_cartons` int DEFAULT NULL,
  `today_packed_qty` int DEFAULT NULL,
  `today_reject_qty` int DEFAULT NULL,
  `packing_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKowtb0oxmpdr25ro13mex90onr` (`packing_plan_id`),
  CONSTRAINT `FKowtb0oxmpdr25ro13mex90onr` FOREIGN KEY (`packing_plan_id`) REFERENCES `packing_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_wise_packing_productions`
--

LOCK TABLES `day_wise_packing_productions` WRITE;
/*!40000 ALTER TABLE `day_wise_packing_productions` DISABLE KEYS */;
INSERT INTO `day_wise_packing_productions` VALUES (1,'Primark','2026-07-24','	OR-308','PRI-201',250,5000,20,1),(2,'Primark','2026-07-26','	OR-308','PRI-201',200,4000,30,1),(3,'Primark','2026-07-27','	OR-308','PRI-201',125,2500,10,1),(4,'Primark','2026-07-28','	OR-308','PRI-201',125,2500,10,1),(5,'H&M','2026-07-29','OR-301','HM-201',134,4000,20,2);
/*!40000 ALTER TABLE `day_wise_packing_productions` ENABLE KEYS */;
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
