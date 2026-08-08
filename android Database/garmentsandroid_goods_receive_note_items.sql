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
-- Table structure for table `goods_receive_note_items`
--

DROP TABLE IF EXISTS `goods_receive_note_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_receive_note_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `line_total` double NOT NULL,
  `quantity` double NOT NULL,
  `unit_price` double NOT NULL,
  `goods_receive_note_id` bigint NOT NULL,
  `purchase_order_item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7j9e9mrh191nca9lnqewwmt2g` (`goods_receive_note_id`),
  KEY `FKp40rl7g9kx47bh4vsvrblxhsd` (`purchase_order_item_id`),
  CONSTRAINT `FK7j9e9mrh191nca9lnqewwmt2g` FOREIGN KEY (`goods_receive_note_id`) REFERENCES `goods_receive_notes` (`id`),
  CONSTRAINT `FKp40rl7g9kx47bh4vsvrblxhsd` FOREIGN KEY (`purchase_order_item_id`) REFERENCES `purchase_order_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_receive_note_items`
--

LOCK TABLES `goods_receive_note_items` WRITE;
/*!40000 ALTER TABLE `goods_receive_note_items` DISABLE KEYS */;
INSERT INTO `goods_receive_note_items` VALUES (1,600000,5000,120,1,1),(2,180000,200000,0.9,1,2),(3,300000,60000,5,1,3),(4,210000,30000,7,1,4),(5,20,100,0.2,1,5),(6,90,100,0.9,1,6),(7,1300,100,13,1,7),(8,150,5,30,1,8),(9,600,5,120,1,9),(10,700000,20000,35,1,10),(11,240000,2000,120,2,11),(12,27000,20000,1.35,2,12),(13,300000,60000,5,2,13),(14,300000,50000,6,2,14),(15,15,50,0.3,2,15),(16,145,100,1.45,2,16),(17,1600,100,16,2,17),(18,1200,10,120,2,18),(19,70000,2000,35,2,19);
/*!40000 ALTER TABLE `goods_receive_note_items` ENABLE KEYS */;
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
