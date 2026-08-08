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
-- Table structure for table `bom_views`
--

DROP TABLE IF EXISTS `bom_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bom_views` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `base_fabric` varchar(255) DEFAULT NULL,
  `material_name` varchar(255) DEFAULT NULL,
  `quantity` decimal(38,2) DEFAULT NULL,
  `serial` int DEFAULT NULL,
  `total_cost` decimal(38,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `unit_price` decimal(38,2) DEFAULT NULL,
  `style_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgujq80ku3uvlqtrwgr8pwcdb8` (`style_id`),
  CONSTRAINT `FKgujq80ku3uvlqtrwgr8pwcdb8` FOREIGN KEY (`style_id`) REFERENCES `bom_styles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom_views`
--

LOCK TABLES `bom_views` WRITE;
/*!40000 ALTER TABLE `bom_views` DISABLE KEYS */;
INSERT INTO `bom_views` VALUES (1,'','Cotton Fabric',1.88,1,225.60,'Yard',120.00,1),(2,'','Care Label',2.00,2,10.00,'Pieces',5.00,1),(3,'','Hang Tag',3.00,3,21.00,'Pieces',7.00,1),(4,'','Button',8.00,4,10.80,'Pieces',1.35,1),(5,'','Interlining',0.25,5,2.19,'meter',8.75,1),(7,'','Sewing Thread',150.00,6,30.00,'meter',0.20,1),(8,'','Cotton Fabric',1.88,1,235.00,'	Yard',125.00,2),(9,'','Care Label',2.00,2,8.00,'	Pieces',4.00,2),(10,'','	Hang Tag',3.00,3,15.00,'	Pieces',5.00,2),(11,'','Button',8.00,4,10.40,'Pieces',1.30,2),(12,'','Interlining',0.25,5,8.75,'	meter',35.00,2),(13,'','	Sewing Thread',160.00,6,25.60,'	meter',0.16,2),(14,'','Cotton Fabric',1.77,1,221.25,'	Yard',125.00,3),(15,'','	Care Label',2.00,2,8.00,'Pieces',4.00,3),(16,'','Hang Tag',3.00,3,15.00,'	Pieces',5.00,3),(17,'','Button',12.00,4,10.80,'	Pieces',0.90,3),(18,'','Interlining',0.25,5,8.75,'	meter',35.00,3),(19,'','Sewing Thread',150.00,6,31.50,'meter',0.21,3),(20,'','	Cotton Fabric',1.88,1,218.08,'	Yard',116.00,5),(21,'','Care Label',2.00,2,10.00,'	Pieces',5.00,5),(22,'','	Hang Tag',3.00,3,18.00,'	Pieces',6.00,5),(23,'','	Button',11.00,4,9.90,'	Pieces',0.90,5),(24,'','	Interlining',0.25,5,8.75,'	meter',35.00,5),(25,'','Sewing Thread',160.00,6,24.00,'	meter',0.15,5),(26,'','Cotton Fabric',1.89,1,221.13,'	Yard',117.00,6),(27,'','Care Label',2.00,2,16.00,'Pieces',8.00,6),(28,'','Hang Tag',4.00,3,24.00,'	Pieces',6.00,6),(29,'','	Button',10.00,4,10.00,'	Pieces',1.00,6),(30,'','Interlining',0.25,5,8.75,'meter',35.00,6),(31,'','Sewing Thread',160.00,6,25.60,'meter',0.16,6),(32,'','	Cotton Fabric',1.93,1,231.60,'Yard',120.00,7),(33,'','	Care Label',4.00,2,28.00,'	Pieces',7.00,7),(34,'','Hang Tag',4.00,3,20.00,'	Pieces',5.00,7),(35,'','	Button',12.00,4,14.40,'	Pieces',1.20,7),(36,'','	Interlining',0.29,5,11.02,'	meter',38.00,7),(37,'','Sewing Thread',160.00,6,51.20,'	meter',0.32,7),(38,'','Cotton Fabric',1.88,1,218.08,'	Yard',116.00,9),(39,'','Care Label',3.00,2,12.00,'Pieces',4.00,9),(40,'','	Hang Tag',2.00,3,14.00,'	Pieces',7.00,9),(41,'','Button',10.00,4,10.00,'	Pieces',1.00,9),(42,'','	Interlining',0.20,5,7.00,'	meter',35.00,9),(43,'','	Sewing Thread',160.00,5,25.60,'meter',0.16,9),(44,'','	Cotton Fabric',1.88,1,225.60,'	Yard',120.00,10),(45,'','	Care Label',3.00,2,36.00,'	Pieces',12.00,10),(46,'','Hang Tag',3.00,3,18.00,'	Pieces',6.00,10),(47,'','Button',10.00,4,9.00,'	Pieces',0.90,10),(48,'','Interlining',0.25,5,9.00,'	meter',36.00,10),(49,'','Sewing Thread',160.00,6,25.60,'meter',0.16,10),(50,'','Cotton Fabric',1.92,1,230.40,'Yard',120.00,11),(51,'','	Care Label',2.00,2,12.00,'	Hang Tag',6.00,11),(52,'','	Hang Tag',3.00,3,15.00,'	Pieces',5.00,11),(53,'','Button',12.00,4,13.20,'Pieces',1.10,11),(54,'','Interlining',0.25,5,8.50,'	meter',34.00,11),(55,'','	Sewing Thread',180.00,6,41.40,'	meter',0.23,11),(56,'','	Cotton Fabric',1.88,1,233.12,'	Yard',124.00,12),(57,'','	Care Label',2.00,2,14.00,'	Pieces',7.00,12),(58,'','	Hang Tag',5.00,3,35.00,'	Pieces',7.00,12),(59,'','Button',12.00,4,12.00,'	Pieces',1.00,12),(60,'','	Interlining',0.25,5,8.75,'	meter',35.00,12),(61,'','Sewing Thread',160.00,6,25.60,'	meter',0.16,12);
/*!40000 ALTER TABLE `bom_views` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-08 11:44:05
