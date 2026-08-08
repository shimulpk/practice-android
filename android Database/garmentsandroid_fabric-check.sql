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
-- Table structure for table `fabric-check`
--

DROP TABLE IF EXISTS `fabric-check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabric-check` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `total_fabric_required` decimal(38,2) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `style_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKojho76d2nh2ev9xfwgmtcaeg9` (`order_id`),
  KEY `FK2bels5hql9bo96vy45j4b210i` (`style_id`),
  CONSTRAINT `FK2bels5hql9bo96vy45j4b210i` FOREIGN KEY (`style_id`) REFERENCES `bom_styles` (`id`),
  CONSTRAINT `FKojho76d2nh2ev9xfwgmtcaeg9` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabric-check`
--

LOCK TABLES `fabric-check` WRITE;
/*!40000 ALTER TABLE `fabric-check` DISABLE KEYS */;
INSERT INTO `fabric-check` VALUES (1,'2026-08-07 18:59:11.010739','OR-301','HM-PO-401',26130.00,1,1),(2,'2026-08-07 19:43:51.638930','OR-302','HM-PO-402',25895.00,2,2),(3,'2026-08-07 19:44:16.076548','	OR-303','HM-PO-403',33920.00,3,3),(4,'2026-08-07 19:45:03.686219','OR-304','ZA-PO-404',28240.00,4,5),(5,'2026-08-07 19:45:11.772822','OR-305','ZA-PO-405',42800.00,5,6),(6,'2026-08-07 19:56:01.799134','	OR-308','PRI-PO-408',26340.00,8,9),(7,'2026-08-07 23:07:06.542185','	OR-306','ZA-PO-406',25690.00,6,7),(8,'2026-08-07 23:10:17.585906','	OR-309','PRI-PO-409',18950.00,9,10);
/*!40000 ALTER TABLE `fabric-check` ENABLE KEYS */;
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
