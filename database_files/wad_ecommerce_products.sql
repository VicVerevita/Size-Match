CREATE DATABASE  IF NOT EXISTS `wad_ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `wad_ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: wad_ecommerce
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `slug` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(45) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `category_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (36,'Cotton T-shirt','cotton-t-shirt','Soft and comfortable cotton t-shirt','cotton_tshirt.jpg',19.99,1,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(37,'Slim Fit Jeans','slim-fit-jeans','Stylish and trendy slim fit jeans','slim_jeans.jpg',49.99,2,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(38,'Summer Dress','summer-dress','Light and breezy summer dress','summer_dress.jpg',29.99,3,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(39,'Sneakers','sneakers','Casual and sporty sneakers','sneakers.jpg',59.99,4,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(40,'Baseball Cap','baseball-cap','Classic baseball cap for a casual look','baseball_cap.jpg',14.99,5,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(41,'Leather Jacket','leather-jacket','Stylish leather jacket for a cool vibe','leather_jacket.jpg',89.99,6,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(42,'Denim Skirt','denim-skirt','Trendy denim skirt for a fashionable outfit','denim_skirt.jpg',34.99,7,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(43,'Bikini Set','bikini-set','Stylish bikini set for a beach day','bikini_set.jpg',39.99,8,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(44,'Sunglasses','sunglasses','Fashionable sunglasses for UV protection','sunglasses.jpg',24.99,9,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(45,'Crew Socks','crew-socks','Comfortable crew socks for everyday wear','crew_socks.jpg',9.99,10,'2023-05-16 16:50:45','2023-05-16 16:50:45'),(46,'V-Neck T-shirt','v-neck-t-shirt','Classic V-neck t-shirt for a versatile look','vneck_tshirt.jpg',17.99,1,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(47,'Ripped Jeans','ripped-jeans','Fashionable ripped jeans for a trendy outfit','ripped_jeans.jpg',54.99,2,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(48,'Maxi Dress','maxi-dress','Elegant and stylish maxi dress for special occasions','maxi_dress.jpg',39.99,3,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(49,'Running Shoes','running-shoes','Comfortable running shoes for an active lifestyle','running_shoes.jpg',79.99,4,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(50,'Beanie Hat','beanie-hat','Warm and cozy beanie hat for colder days','beanie_hat.jpg',12.99,5,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(51,'Leather Biker Jacket','leather-biker-jacket','Edgy leather biker jacket for a rebellious look','leather_biker_jacket.jpg',99.99,6,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(52,'Pleated Skirt','pleated-skirt','Chic pleated skirt for a sophisticated outfit','pleated_skirt.jpg',29.99,7,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(53,'One-Piece Swimsuit','one-piece-swimsuit','Stylish one-piece swimsuit for poolside elegance','one_piece_swimsuit.jpg',44.99,8,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(54,'Statement Necklace','statement-necklace','Eye-catching statement necklace for a bold accessory','statement_necklace.jpg',19.99,9,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(55,'Ankle Socks','ankle-socks','Comfortable ankle socks for everyday wear','ankle_socks.jpg',7.99,10,'2023-05-16 16:50:54','2023-05-16 16:50:54'),(56,'Floral Print Blouse','floral-print-blouse','Feminine floral print blouse for a romantic look','floral_print_blouse.jpg',28.99,1,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(57,'Distressed Denim Shorts','distressed-denim-shorts','Trendy distressed denim shorts for a casual summer style','distressed_denim_shorts.jpg',34.99,2,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(58,'Evening Gown','evening-gown','Elegant evening gown for formal occasions','evening_gown.jpg',199.99,3,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(59,'Running Shoes','running-shoes','High-performance running shoes for athletes','running_shoes.jpg',89.99,4,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(60,'Straw Hat','straw-hat','Chic straw hat for a beachy and boho look','straw_hat.jpg',16.99,5,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(61,'Leather Moto Jacket','leather-moto-jacket','Edgy leather moto jacket for a tough and stylish appearance','leather_moto_jacket.jpg',129.99,6,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(62,'Pleated Mini Skirt','pleated-mini-skirt','Playful and flirty pleated mini skirt for a youthful style','pleated_mini_skirt.jpg',22.99,7,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(63,'Swimsuit Cover-Up','swimsuit-cover-up','Stylish swimsuit cover-up for a beach or poolside look','swimsuit_cover_up.jpg',32.99,8,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(64,'Layered Necklace','layered-necklace','Trendy layered necklace for a fashionable accessory','layered_necklace.jpg',18.99,9,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(65,'Ankle Boots','ankle-boots','Versatile and chic ankle boots for a stylish fall outfit','ankle_boots.jpg',79.99,10,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(66,'Striped Sweater','striped-sweater','Cozy and stylish striped sweater for a casual and comfortable look','striped_sweater.jpg',39.99,1,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(67,'Wide-Leg Pants','wide-leg-pants','Flowy and sophisticated wide-leg pants for an elegant style','wide_leg_pants.jpg',49.99,2,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(68,'Wrap Romper','wrap-romper','Flattering wrap romper for a trendy and playful outfit','wrap_romper.jpg',36.99,3,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(69,'Slip-On Sneakers','slip-on-sneakers','Convenient and stylish slip-on sneakers for easy wear','slip_on_sneakers.jpg',54.99,4,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(70,'Bucket Hat','bucket-hat','Cool and casual bucket hat for a laid-back look','bucket_hat.jpg',14.99,5,'2023-05-16 16:53:30','2023-05-16 16:53:30'),(71,'Striped Polo Shirt','striped-polo-shirt','Classic striped polo shirt for a preppy look','striped_polo_shirt.jpg',24.99,1,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(72,'Skinny Jeans','skinny-jeans','Form-fitting skinny jeans for a sleek silhouette','skinny_jeans.jpg',59.99,2,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(73,'Printed Midi Dress','printed-midi-dress','Colorful printed midi dress for a playful style','printed_midi_dress.jpg',34.99,3,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(74,'Casual Sneakers','casual-sneakers','Versatile casual sneakers for everyday wear','casual_sneakers.jpg',49.99,4,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(75,'Wide Brim Hat','wide-brim-hat','Fashionable wide brim hat for sun protection','wide_brim_hat.jpg',19.99,5,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(76,'Bomber Jacket','bomber-jacket','Trendy bomber jacket for a stylish streetwear look','bomber_jacket.jpg',79.99,6,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(77,'A-line Skirt','a-line-skirt','Flattering A-line skirt for a feminine touch','a_line_skirt.jpg',27.99,7,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(78,'High-Waisted Bikini','high-waisted-bikini','Figure-flattering high-waisted bikini for a retro vibe','high_waisted_bikini.jpg',39.99,8,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(79,'Statement Earrings','statement-earrings','Bold and eye-catching statement earrings for a glamorous look','statement_earrings.jpg',14.99,9,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(80,'No-Show Socks','no-show-socks','Invisible no-show socks for a seamless appearance','no_show_socks.jpg',5.99,10,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(81,'Plaid Button-Up Shirt','plaid-button-up-shirt','Classic plaid button-up shirt for a timeless style','plaid_button_up_shirt.jpg',29.99,1,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(82,'Bootcut Jeans','bootcut-jeans','Flared bootcut jeans for a retro-inspired look','bootcut_jeans.jpg',54.99,2,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(83,'Wrap Dress','wrap-dress','Flattering wrap dress for a versatile and elegant outfit','wrap_dress.jpg',42.99,3,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(84,'Canvas Sneakers','canvas-sneakers','Casual and comfortable canvas sneakers for everyday wear','canvas_sneakers.jpg',39.99,4,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(85,'Fedora Hat','fedora-hat','Stylish fedora hat for a sophisticated accessory','fedora_hat.jpg',22.99,5,'2023-05-16 16:53:47','2023-05-16 16:53:47'),(86,'Test TSHIRT','test-tshirt','<p>sdfgsgfdsgdfgfdgdf</p>','cotton_t-shirt.jpg',25.00,1,'2023-05-21 09:36:04','2023-05-21 09:36:04'),(87,'Banana','banana','<p>Testtttt</p>','bananas.jpg',3.00,1,'2023-05-21 09:39:10','2023-05-21 09:39:10'),(88,'iphone 11 pro','iphone-11-pro','<p>dsgdsgfsdgfds</p>','iphhh.jpg',1345.00,1,'2023-05-21 09:40:37','2023-05-21 09:40:37');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24 21:15:03
