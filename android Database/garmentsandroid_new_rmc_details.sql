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
-- Table structure for table `new_rmc_details`
--

DROP TABLE IF EXISTS `new_rmc_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_rmc_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `material_name` varchar(255) DEFAULT NULL,
  `qty_per_piece` double DEFAULT NULL,
  `total_material_cost` double DEFAULT NULL,
  `total_qty_required` double DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `rmc_check_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6g1etkcsl8xls0ncee5ub5hfx` (`rmc_check_id`),
  CONSTRAINT `FK6g1etkcsl8xls0ncee5ub5hfx` FOREIGN KEY (`rmc_check_id`) REFERENCES `new_rmc_check` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_rmc_details`
--

LOCK TABLES `new_rmc_details` WRITE;
/*!40000 ALTER TABLE `new_rmc_details` DISABLE KEYS */;
INSERT INTO `new_rmc_details` VALUES (1,'Cotton Fabric',1.88,3158400,26320,'Yard',120,1),(2,'Care Label',2,140000,28000,'Pieces',5,1),(3,'Hang Tag',3,294000,42000,'Pieces',7,1),(4,'Button',8,151200,112000,'Pieces',1.35,1),(5,'Interlining',0.25,30625,3500,'meter',8.75,1),(6,'Sewing Thread',150,420000,2100000,'meter',0.2,1),(7,'Cotton Fabric',1.77,3761250,30090,'	Yard',125,2),(8,'	Care Label',2,136000,34000,'Pieces',4,2),(9,'Hang Tag',3,255000,51000,'	Pieces',5,2),(10,'Button',12,183600,204000,'	Pieces',0.9,2),(11,'Interlining',0.25,148750,4250,'	meter',35,2),(12,'Sewing Thread',150,535500,2550000,'meter',0.21,2),(13,'Cotton Fabric',1.89,4422600,37800,'	Yard',117,3),(14,'Care Label',2,320000,40000,'Pieces',8,3),(15,'Hang Tag',4,480000,80000,'	Pieces',6,3),(16,'	Button',10,200000,200000,'	Pieces',1,3),(17,'Interlining',0.25,175000,5000,'meter',35,3),(18,'Sewing Thread',160,512000,3200000,'meter',0.16,3),(19,'Cotton Fabric',1.88,2820000,22560,'	Yard',125,4),(20,'Care Label',2,96000,24000,'	Pieces',4,4),(21,'	Hang Tag',3,180000,36000,'	Pieces',5,4),(22,'Button',8,124800,96000,'Pieces',1.3,4),(23,'Interlining',0.25,105000,3000,'	meter',35,4),(24,'	Sewing Thread',160,307200,1920000,'	meter',0.16,4),(25,'	Cotton Fabric',1.88,3271200,28200,'	Yard',116,5),(26,'Care Label',2,150000,30000,'	Pieces',5,5),(27,'	Hang Tag',3,270000,45000,'	Pieces',6,5),(28,'	Button',11,148500,165000,'	Pieces',0.9,5),(29,'	Interlining',0.25,131250,3750,'	meter',35,5),(30,'Sewing Thread',160,360000,2400000,'	meter',0.15,5);
/*!40000 ALTER TABLE `new_rmc_details` ENABLE KEYS */;
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
