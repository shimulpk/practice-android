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
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machines` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `machine_id` varchar(255) DEFAULT NULL,
  `machine_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `production_line_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK4sgxb9w2hibq8wvu2n19ftgdn` (`machine_id`),
  KEY `FK9rne3nrfwe2snay6gx98b8m4h` (`production_line_id`),
  CONSTRAINT `FK9rne3nrfwe2snay6gx98b8m4h` FOREIGN KEY (`production_line_id`) REFERENCES `production_lines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
INSERT INTO `machines` VALUES (1,_binary '','MAC-CUT-001','Automatic Fabric Cutter','Cutting',1),(2,_binary '','MAC-CUT-002','Automatic Fabric Cutter','Cutting',1),(3,_binary '','MAC-CUT-003','Automatic Fabric Cutter','Cutting',1),(4,_binary '','MAC-CUT-004','OverLock Machine','Overlock',2),(5,_binary '','MAC-CUT-005','OverLock Machine','Overlock',2),(6,_binary '','MAC-CUT-006','OverLock Machine','Overlock',2),(7,_binary '','MAC-CUT-007','Button Attach Machine','Button Attach',3),(8,_binary '','MAC-CUT-008','OverLock Machine','Button Attach',3),(9,_binary '','MAC-CUT-009','Button Attach Machine','Button Attach',3),(10,_binary '','MAC-CUT-010','Iron','Iron',4),(11,_binary '','MAC-CUT-011','Lock','Lock Stitch',5);
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
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
