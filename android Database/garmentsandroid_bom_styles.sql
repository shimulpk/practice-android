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
-- Table structure for table `bom_styles`
--

DROP TABLE IF EXISTS `bom_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bom_styles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `approval_status` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `size_set` varchar(255) DEFAULT NULL,
  `style_code` varchar(255) NOT NULL,
  `style_name` varchar(255) NOT NULL,
  `style_type` varchar(255) DEFAULT NULL,
  `buyer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKaa2n4bsvm7d3v35tb2vllk2wn` (`style_code`),
  KEY `FKftd77tjarim4i0b4ua731nbn4` (`buyer_id`),
  CONSTRAINT `FKftd77tjarim4i0b4ua731nbn4` FOREIGN KEY (`buyer_id`) REFERENCES `buyers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bom_styles`
--

LOCK TABLES `bom_styles` WRITE;
/*!40000 ALTER TABLE `bom_styles` DISABLE KEYS */;
INSERT INTO `bom_styles` VALUES (1,_binary '','Approved','100% Cotton Poplin, 120 GSM; Regular fit; Short sleeves with hem finish; Button-down front placket; Semi-spread collar with fusible interlining; Single chest pocket; Lockstitch with 12 SPI; Overlock seam finishing; Available sizes S–XL','S,M,L,XL','HM-201','Short Sleeve Shirt',' Casual',1),(2,_binary '','Approved','Cotton-Polyester Blend, 140 GSM; Slim fit; Full sleeves with cuff and button closure; Front placket with reinforced stitching; Classic spread collar with stiff fusible interlining; Double yoke back; Lockstitch 12–14 SPI; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','HM-202','Full Sleeve Shirt','Formal',1),(3,_binary '','Approved','100% Cotton Twill, 135 GSM; Convertible design with detachable sleeves (short/full option); Modern fit; Front placket with branded buttons; Semi-spread collar with medium fusible interlining; Twin chest pockets with flap; Lockstitch 12 SPI + bartack reinforcement; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','HM-203','Short Sleeve Shirt And Full Sleeve Shirt',' Casual',1),(4,_binary '','Pending','100% Cotton Poplin, 120 GSM; Regular fit; Short sleeves with hem finish; Button-down front placket; Semi-spread collar with fusible interlining; Single chest pocket; Lockstitch with 12 SPI; Overlock seam finishing; Available sizes S–XL.','S,M,L,XL','HM-204','Short Sleeve Shirt',' Casual',1),(5,_binary '','Approved','100% Cotton Poplin, 120 GSM; Regular fit; Short sleeves with hem finish; Button-down front placket; Semi-spread collar with fusible interlining; Single chest pocket; Lockstitch with 12 SPI; Overlock seam finishing; Available sizes S–XL.','S,M,L,XL','ZA-201','Short Sleeve Shirt',' Casual',2),(6,_binary '','Approved','Cotton-Polyester Blend, 140 GSM; Slim fit; Full sleeves with cuff and button closure; Front placket with reinforced stitching; Classic spread collar with stiff fusible interlining; Double yoke back; Lockstitch 12–14 SPI; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','ZA-202','Full Sleeve Shirt','Formal',2),(7,_binary '','Approved','100% Cotton Twill, 135 GSM; Convertible design with detachable sleeves (short/full option); Modern fit; Front placket with branded buttons; Semi-spread collar with medium fusible interlining; Twin chest pockets with flap; Lockstitch 12 SPI + bartack reinforcement; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','ZA-203','Short Sleeve Shirt And Full Sleeve Shirt','Formal',2),(8,_binary '','Approved','Cotton-Polyester Blend, 140 GSM; Slim fit; Full sleeves with cuff and button closure; Front placket with reinforced stitching; Classic spread collar with stiff fusible interlining; Double yoke back; Lockstitch 12–14 SPI; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','ZA-204','Full Sleeve Shirt','Formal',2),(9,_binary '','Approved','100% Cotton Poplin, 120 GSM; Regular fit; Short sleeves with hem finish; Button-down front placket; Semi-spread collar with fusible interlining; Single chest pocket; Lockstitch with 12 SPI; Overlock seam finishing; Available sizes S–XL.','S,M,L,XL','PRI-201','Short Sleeve Shirt',' Casual',3),(10,_binary '','Approved','Cotton-Polyester Blend, 140 GSM; Slim fit; Full sleeves with cuff and button closure; Front placket with reinforced stitching; Classic spread collar with stiff fusible interlining; Double yoke back; Lockstitch 12–14 SPI; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','PRI-202','Full Sleeve Shirt','Formal',3),(11,_binary '','Approved','100% Cotton Twill, 135 GSM; Convertible design with detachable sleeves (short/full option); Modern fit; Front placket with branded buttons; Semi-spread collar with medium fusible interlining; Twin chest pockets with flap; Lockstitch 12 SPI + bartack reinforcement; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','PRI-203','Short Sleeve Shirt And Full Sleeve Shirt',' Casual',3),(12,_binary '','Approved','100% Cotton Poplin, 120 GSM; Regular fit; Short sleeves with hem finish; Button-down front placket; Semi-spread collar with fusible interlining; Single chest pocket; Lockstitch with 12 SPI; Overlock seam finishing; Available sizes S–XL.','S,M,L,XL','WAL-201','Short Sleeve Shirt',' Casual',4),(13,_binary '','Approved','Cotton-Polyester Blend, 140 GSM; Slim fit; Full sleeves with cuff and button closure; Front placket with reinforced stitching; Classic spread collar with stiff fusible interlining; Double yoke back; Lockstitch 12–14 SPI; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','WAL-202','Full Sleeve Shirt',' Casual',4),(14,_binary '','Approved','100% Cotton Twill, 135 GSM; Convertible design with detachable sleeves (short/full option); Modern fit; Front placket with branded buttons; Semi-spread collar with medium fusible interlining; Twin chest pockets with flap; Lockstitch 12 SPI + bartack reinforcement; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','WAL-203','Short Sleeve Shirt And Full Sleeve Shirt',' Casual',4),(15,_binary '','Approved','100% Cotton Poplin, 120 GSM; Regular fit; Short sleeves with hem finish; Button-down front placket; Semi-spread collar with fusible interlining; Single chest pocket; Lockstitch with 12 SPI; Overlock seam finishing; Available sizes S–XL.','S,M,L,XL','UN-201','Short Sleeve Shirt',' Casual',5),(16,_binary '','Approved','Cotton-Polyester Blend, 140 GSM; Slim fit; Full sleeves with cuff and button closure; Front placket with reinforced stitching; Classic spread collar with stiff fusible interlining; Double yoke back; Lockstitch 12–14 SPI; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','UN-202','Full Sleeve Shirt','Formal',5),(17,_binary '','Approved','100% Cotton Twill, 135 GSM; Convertible design with detachable sleeves (short/full option); Modern fit; Front placket with branded buttons; Semi-spread collar with medium fusible interlining; Twin chest pockets with flap; Lockstitch 12 SPI + bartack reinforcement; Overlock seam finishing; Sizes S–XL.','S,M,L,XL','UN-203','Short Sleeve Shirt And Full Sleeve Shirt','Formal',5);
/*!40000 ALTER TABLE `bom_styles` ENABLE KEYS */;
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
