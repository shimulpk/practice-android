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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `grand_total` decimal(38,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `po_number` varchar(255) DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `subtotal` decimal(38,2) DEFAULT NULL,
  `total_quantity` int DEFAULT NULL,
  `vat` decimal(38,2) DEFAULT NULL,
  `vat_percent` decimal(38,2) DEFAULT NULL,
  `buyer_id` bigint NOT NULL,
  `style_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm64p5iuhw3kaqel7x21pskgjr` (`buyer_id`),
  KEY `FKoirr195kd4qi3k9lbgbiiirw3` (`style_id`),
  CONSTRAINT `FKm64p5iuhw3kaqel7x21pskgjr` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`),
  CONSTRAINT `FKoirr195kd4qi3k9lbgbiiirw3` FOREIGN KEY (`style_id`) REFERENCES `bom_styles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,7171500.00,'2026-07-07','OR-301','HM-PO-401','2026-08-07','Mäster Samuelsgatan 46A, SE-106 38 Stockholm','CONFIRMED',6830000.00,14000,341500.00,5.00,1,1),(2,6556000.00,'2026-07-08','OR-302','HM-PO-402','2026-08-08','Mäster Samuelsgatan 46A, SE-106 38 Stockholm','CONFIRMED',5960000.00,12000,596000.00,10.00,1,2),(3,8818950.00,'2026-07-06','	OR-303','HM-PO-403','2026-08-06','Mäster Samuelsgatan 46A, SE-106 38 Stockholm','CONFIRMED',8399000.00,17000,419950.00,5.00,1,3),(4,7759500.00,'2026-07-05','OR-304','ZA-PO-404','2026-08-05','	Av. de la Diputación, 15142 Arteixo, A Coruña','CONFIRMED',7390000.00,15000,369500.00,5.00,2,5),(5,9922500.00,'2026-07-04','OR-305','ZA-PO-405','2026-08-04','	Av. de la Diputación, 15142 Arteixo, A Coruña','CONFIRMED',9450000.00,20000,472500.00,5.00,2,6),(6,7326000.00,'2026-07-03','	OR-306','ZA-PO-406','2026-08-03','	Av. de la Diputación, 15142 Arteixo, A Coruña','CONFIRMED',6660000.00,13000,666000.00,10.00,2,7),(7,9292500.00,'2026-08-02','	OR-307','	ZA-PO-407','2026-08-02','	Av. de la Diputación, 15142 Arteixo, A Coruña','REJECTED',8850000.00,17000,442500.00,5.00,2,8),(8,7791000.00,'2026-07-01','	OR-308','PRI-PO-408','2026-08-01','Arthur Ryan House, 22-24 Parnell Street, Dublin 1','CONFIRMED',7420000.00,14000,371000.00,5.00,3,9),(9,5092500.00,'2026-07-09','	OR-309','PRI-PO-409','2026-08-09','Arthur Ryan House, 22-24 Parnell Street, Dublin 1','CONFIRMED',4850000.00,9000,242500.00,5.00,3,10),(10,9817500.00,'2026-07-10','OR-310','PRI-PO-410','2026-08-10','Arthur Ryan House, 22-24 Parnell Street, Dublin 1','CONFIRMED',9350000.00,17000,467500.00,5.00,3,11);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
