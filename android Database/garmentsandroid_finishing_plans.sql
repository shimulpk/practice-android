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
-- Table structure for table `finishing_plans`
--

DROP TABLE IF EXISTS `finishing_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finishing_plans` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `finishing_plan_id` varchar(255) DEFAULT NULL,
  `finishing_table_no` varchar(255) DEFAULT NULL,
  `input_qty` int DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `pass_qty` int DEFAULT NULL,
  `proc_button_attach` bit(1) DEFAULT NULL,
  `proc_ironing` bit(1) DEFAULT NULL,
  `proc_trimming` bit(1) DEFAULT NULL,
  `proc_washing` bit(1) DEFAULT NULL,
  `rejection_qty` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `status` enum('COMPLETED','IN_PROGRESS') NOT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `supervisor_name` varchar(255) DEFAULT NULL,
  `target_qty` int DEFAULT NULL,
  `sewing_plan_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1h8tg0u2asx914rtp5olxqplj` (`sewing_plan_id`),
  CONSTRAINT `FK1h8tg0u2asx914rtp5olxqplj` FOREIGN KEY (`sewing_plan_id`) REFERENCES `sewing_plans` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finishing_plans`
--

LOCK TABLES `finishing_plans` WRITE;
/*!40000 ALTER TABLE `finishing_plans` DISABLE KEYS */;
INSERT INTO `finishing_plans` VALUES (1,'Primark','Navy Blue','2026-07-21','FP-1786116457942','Table1,Table2,Table3',14000,'	OR-308',14000,_binary '',_binary '',_binary '',_binary '',90,'2026-07-19','COMPLETED','PRI-201','Badrulo Amin',14000,1),(2,'H&M','Navy Blue','2026-07-26','FP-1786118904893','Table1,Table2,Table3',14000,'OR-301',14000,_binary '',_binary '',_binary '',_binary '',90,'2026-07-22','COMPLETED','HM-201','Badrul Amin',14000,2),(3,'H&M','Blue','2026-07-27','FP-1786120301138','Table1,Table2,Table3',12000,'OR-302',12000,_binary '',_binary '',_binary '',_binary '',80,'2026-07-21','COMPLETED','HM-202','Badrul Amin',12000,3),(4,'H&M','Blue','2026-08-29','FP-1786121267075','Table1,Table2,Table3',17000,'	OR-303',0,_binary '',_binary '',_binary '',_binary '',0,'2026-07-24','IN_PROGRESS','HM-203','Badrul amin',17000,4);
/*!40000 ALTER TABLE `finishing_plans` ENABLE KEYS */;
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
