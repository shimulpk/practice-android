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
-- Table structure for table `buyers`
--

DROP TABLE IF EXISTS `buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `buyer_code` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `payment_terms` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKtj1v58hsjq1lh53lmpjdib5nr` (`buyer_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyers`
--

LOCK TABLES `buyers` WRITE;
/*!40000 ALTER TABLE `buyers` DISABLE KEYS */;
INSERT INTO `buyers` VALUES (1,_binary '','Mäster Samuelsgatan 46A, SE-106 38 Stockholm','Buy-001','H&M','Sweden','EUR','LC','www.H&M.com'),(2,_binary '','	Av. de la Diputación, 15142 Arteixo, A Coruña','Buy-002','Zara (Inditex)','Spain','EUR','LC','www.zara.com'),(3,_binary '','Arthur Ryan House, 22-24 Parnell Street, Dublin 1','Buy-003','Primark','Ireland','EUR','TT','www.primark.com'),(4,_binary '','702 S.W. 8th Street, Bentonville, Arkansas 72716','Buy-004','Walmart','USA','USD','LC','www.walmart.com'),(5,_binary '','Midtown Tower, 9-7-1 Akasaka, Minato-ku, Tokyo 107-6231','Buy-005','Uniqlo (Fast Retailing)','Japan','JPY','TT',''),(6,_binary '','Wanheimer Straße 70, 40468 Düsseldorf','Buy-006','C&A','Germany','EUR','LC','www.c&a.com'),(7,_binary '','Tesco House, Shire Park, Kestrel Way, Welwyn Garden City, AL7 1GA','Buy-007','Tesco','UK','EUR','LC','www.tesko.com'),(8,_binary '','Waterside House, 35 North Wharf Road, London W2 1NW','Buy-008','Marks & Spencer','UK','EUR','LC','www.marks.com'),(9,_binary '','2 Folsom Street, San Francisco, CA 94105','Buy-009','Gap Inc','USA','USD','LC','www.gap.com'),(10,_binary '','	Fredskovvej, 7330 Brande','Buy-010','Bestseller','Denmark','EUR','LC','www.best.com');
/*!40000 ALTER TABLE `buyers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-08 11:44:08
