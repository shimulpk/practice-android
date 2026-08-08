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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','CUTTING_MANAGER','FINISHING_MANAGER','MERCHANDISER','PACKING_MANAGER','PRODUCTION_MANAGER','PURCHASE_MANAGER','SEWING_MANAGER','STORE_MANAGER') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKdu5v5sr43g5bfnji4vb8hg5s3` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','admin@gmail.com','System Administrator','$2a$10$cUapvCVETLKsbWGaVkC4sOyTdJnvheI0Wc0NuoxdotmD78Ek3qVyO','01700000000','ADMIN'),(2,_binary '','shimulpk61100@gmail.com','Md Shimul Pramanik','$2a$10$uFMEsYO12LVxuPiJ8EBQ1eoXz33iVZzYyhLtwdeYKalFyQVMvYCze','01568186408','MERCHANDISER'),(3,_binary '','store@gmail.com','Badrul Amin','$2a$10$U6yUxfnFaK8q3v46bJGcUut3Kbe3GNJaTlaaz0MGz51/y2laxu/3e','01709628913','STORE_MANAGER'),(4,_binary '','procurement@gmail.com','Abul Hasan','$2a$10$9i.t9L3jP80Lgk7ZgNQSW.FQ7JDT4YNwvn68vN.7vahpVhVnF0VMe','01726708595','PURCHASE_MANAGER'),(5,_binary '','production@gmail.com','Tanvir Hossain','$2a$10$mcs3MUOHo0ISVYoWU0APyuEepU/opX28gQWE4Ee/NxZr1HlyUAHEy','01736996938','PRODUCTION_MANAGER'),(6,_binary '','cutting@gmail.com','Miskatul Islam','$2a$10$cPfsrmh6k4FeGmdasyfP8e17P72s7w7HDumVNd1KiHcmlZ0/h9vZu','01568188976','CUTTING_MANAGER'),(7,_binary '','sewing@gmail.com','Sajin Ahmed','$2a$10$HUijfTHoo2AZwObBrTgjhepvhDAwJZTuthnQ2tvyZDZOuJt9sZY1K','01568187823','SEWING_MANAGER'),(8,_binary '','finishing@gmail.com','Shaharan Hossain','$2a$10$NxtlUBeK9i47k4lK6.Jms.ejbXOQgpirga3KyWm6TX/NQRvJlOOqa','01568186409','FINISHING_MANAGER'),(9,_binary '','packing@gmail.com','Masud Rana','$2a$10$/NR5YTuNetptsNL/qE2Dge20eAiGdd1BwAOWJEkXiSS/ZztTQgxuq','01568186407','PACKING_MANAGER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
