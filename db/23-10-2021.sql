-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: ecommerce-nunjucks
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'computers','computer, laptops etc','2021-10-19 20:35:11','2021-10-19 20:35:11'),(2,'mobiles','mobile phones','2021-10-19 20:35:11','2021-10-19 20:35:11'),(3,'furniture','furnitures','2021-10-19 20:35:11','2021-10-19 20:35:11'),(4,'fashion','fashion','2021-10-22 12:54:43','2021-10-22 12:54:43');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_path` longtext NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_image_idx` (`product_id`),
  CONSTRAINT `fk_product_image` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'https://rukminim1.flixcart.com/image/416/416/ktop5e80/computer/r/g/f/extensa-15-laptop-acer-original-imag6zenfhttpkvb.jpeg?q=70',1),(2,'https://rukminim1.flixcart.com/image/416/416/ktop5e80/computer/y/g/q/extensa-15-laptop-acer-original-imag6zent5sgfbzs.jpeg?q=70',1),(3,'https://rukminim1.flixcart.com/image/416/416/ktop5e80/computer/f/z/l/extensa-15-laptop-acer-original-imag6zenz8hdpynd.jpeg?q=70',1),(6,'https://rukminim1.flixcart.com/image/416/416/keaaavk0/computer/x/m/y/lenovo-na-laptop-original-imafuzt8r5jqppfn.jpeg?q=70',2),(7,'https://rukminim1.flixcart.com/image/416/416/kebpqq80/computer/p/h/d/lenovo-na-laptop-original-imafvyqwfzn8euu5.jpeg?q=70',2),(8,'https://rukminim1.flixcart.com/image/416/416/kruyw7k0/computer/l/i/5/na-thin-and-light-laptop-lenovo-original-imag5k4qqhvwzdzh.jpeg?q=70',2),(9,'https://rukminim1.flixcart.com/image/312/312/ksru0sw0/computer/u/6/v/14-dv0543tu-thin-and-light-laptop-hp-original-imag69qrjzvdahum.jpeg?q=70',3),(10,'https://rukminim1.flixcart.com/image/416/416/ksru0sw0/computer/u/6/v/14-dv0543tu-thin-and-light-laptop-hp-original-imag69qrjzvdahum.jpeg?q=70',3),(11,'https://rukminim1.flixcart.com/image/416/416/ksru0sw0/computer/1/t/e/14-dv0543tu-thin-and-light-laptop-hp-original-imag69qrzf49xbab.jpeg?q=70',3),(14,'https://rukminim1.flixcart.com/image/312/312/kp5sya80/screen-guard/tempered-glass/o/v/n/apple-macbook-air-m1-13-3-inch-lightwings-original-imag3gh5xftgbpg3.jpeg?q=70',4),(15,'https://rukminim1.flixcart.com/image/416/416/kruyw7k0/computer/p/s/p/na-thin-and-light-laptop-apple-original-imag5jt7zpmhsrpm.jpeg?q=70',4),(16,'https://rukminim1.flixcart.com/image/416/416/kruyw7k0/computer/7/s/m/na-thin-and-light-laptop-apple-original-imag5jt7khzzmh4w.jpeg?q=70',4),(19,'https://rukminim1.flixcart.com/image/416/416/kp1imq80/computer/u/b/z/na-gaming-laptop-acer-original-imag3d63hk3h8nm2.jpeg?q=70',5),(20,'https://rukminim1.flixcart.com/image/416/416/kuvkcy80/computer/e/e/c/na-gaming-laptop-acer-original-imag7whqeputbayu.jpeg?q=70',5),(21,'https://rukminim1.flixcart.com/image/416/416/kuvkcy80/computer/q/t/p/na-gaming-laptop-acer-original-imag7whqwyhtyydz.jpeg?q=70',5),(22,'/images/products/normal-top-double-08-caspia-pu-foam-bonnell-spring-peps-original-imag68h7cdthqtpd.webp',7),(23,'/images/products/single-10-42-75-ortho-pu-foam-flo-original-imagysvwzgrmtmnr.webp',6),(24,'/images/products/1634830390465.webp',8),(25,'/images/products/1634887744814.webp',9),(26,'/images/products/1634887744818.webp',9),(27,'/images/products/1634887744823.webp',9),(28,'/images/products/1634910107802.webp',10),(29,'/images/products/1634910290910.webp',11),(30,'/images/products/1634971661047.webp',12),(31,'/images/products/1634971851439.webp',13),(32,'/images/products/1634972013618.webp',14),(33,'/images/products/1634972013620.webp',14);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `price` float NOT NULL,
  `quantity` int NOT NULL,
  `category_id` int NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_category_id_idx` (`category_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'acer Dual Core A3020e - (4 GB/256 GB SSD/Windows 10 Home) EX215-22 Laptop  (15.6 inch, Black, 1.9 kg)','General\nSales Package\n	\n\n    Laptop, Power Adaptor, User Guide, Warranty Documents\n\nModel Number\n	\n\n    EX215-22\n\nPart Number\n	\n\n    UN.EG9SI.002\n\nModel Name\n	\n\n    Extensa 15\n\nColor\n	\n\n    Black\n\nType\n	\n\n    Laptop\n\nSuitable For\n	\n\n    Everyday Use, Processing & Multitasking\n\nBattery Backup\n	\n\n    Upto 9 hours\n\nPower Supply\n	\n\n    45 W AC Adapter\n\nBattery Cell\n	\n\n    2 cell\n\nMS Office Provided\n	\n\n    No',24990,25,1,'2021-10-19 20:39:13','2021-10-19 20:39:13'),(2,'Lenovo IdeaPad 3 Core i3 10th Gen - (8 GB/256 GB SSD/Windows 10 Home) 15IML05 Thin and Light Laptop  (15.6 Inch, Platinum Grey, 1.7 kg, With MS Office)','General\nSales Package\n	\n\n    Laptop, battery, adapter, cables and user manuals\n\nModel Number\n	\n\n    15IML05\n\nPart Number\n	\n\n    81WB01BNIN\n\nModel Name\n	\n\n    15IML05\n\nSeries\n	\n\n    IdeaPad 3\n\nColor\n	\n\n    Platinum Grey\n\nType\n	\n\n    Thin and Light Laptop\n\nSuitable For\n	\n\n    Processing & Multitasking\n\nBattery Backup\n	\n\n    Upto 11.5 hours\n\nPower Supply\n	\n\n    45W Round Tip\n\nMS Office Provided\n	\n\n    Yes',36990,55,1,'2021-10-19 20:42:45','2021-10-19 20:42:45'),(3,'HP Pavilion Core i5 11th Gen - (8 GB/512 GB SSD/Windows 10 Home) 14-dv0543TU Thin and Light Laptop  (14 Inch, Natural Silver, 1.41 Kg, With MS Office)','General\nSales Package\n	\n\n    Laptop, Power Adapter, User Guide, Warranty Documents\n\nModel Number\n	\n\n    14-dv0543TU\n\nPart Number\n	\n\n    4X7D7PA#ACJ\n\nModel Name\n	\n\n    14-dv0543TU\n\nSeries\n	\n\n    Pavilion\n\nColor\n	\n\n    Natural Silver\n\nType\n	\n\n    Thin and Light Laptop\n\nSuitable For\n	\n\n    Entertainment, Processing & Multitasking\n\nBattery Cell\n	\n\n    3 Cell\n\nMS Office Provided\n	\n\n    Yes',59990,43,1,'2021-10-20 20:09:34','2021-10-20 20:09:34'),(4,'APPLE MacBook Air M1 - (8 GB/256 GB SSD/Mac OS Big Sur) MGN63HN/A  (13.3 inch, Space Grey, 1.29 kg)','General\nSales Package\n	\n\n    MacBook Air, 30 W USB-C Power Adapter, USB-C Charge Cable (2m), User Guide, Warranty Documents\n\nModel Number\n	\n\n    MGN63HN/A\n\nPart Number\n	\n\n    MGN63HN/A\n\nSeries\n	\n\n    MacBook Air\n\nColor\n	\n\n    Space Grey\n\nType\n	\n\n    Thin and Light Laptop\n\nSuitable For\n	\n\n    Processing & Multitasking\n\nBattery Backup\n	\n\n    Upto 15 hours\n\nPower Supply\n	\n\n    30 W AC Adapter\n\nMS Office Provided\n	\n\n    No',83999,12,1,'2021-10-20 20:12:53','2021-10-20 20:12:53'),(5,'acer Aspire 7 Core i5 10th Gen - (8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) A715-75G-50TA/ A715-75G-41G Gaming Laptop  (15.6 inch, Black, 2.15 Kg)','This Acer gaming laptop features a large screen-to-body ratio and a FHD narrow border screen so that you can enjoy an expansive view of the screen. This gaming laptop offers USB ports, an HDMI port, and more to enable offline charging and so on. And, its aesthetic design and backlit keyboard enable you to game with ease in a dimly lit room. ',49990,12,1,'2021-10-21 14:59:18','2021-10-21 14:59:18'),(6,'FLO ORTHO 6 inch Single PU Foam Mattress  (L x W: 72 inch x 36 inch)','The mattress industry hadn?t changed in years, aside from adding new sales tricks and gimmicks. So when we started Flo, we worked to innovate something entirely new for the industry. Unparalleled in comfort and support, our proprietary foam was painstakingly perfected through customer feedback. Flo Responsive Foam. Innovation by us, perfected by you.',12,23,3,'2021-10-21 20:47:58','2021-10-21 20:47:58'),(7,'PEPS CASPIA 06 inch Double Bonnell Spring Mattress  (L x W: 72 inch x 48 inch)','Always place the mattress on a flat surface. Body impressions are normal. They may be minimized by rotation of the mattress at regular intervals,Exposure to air for some hours regularly will keep the exterior of the mattress dry and hygienic. Do not expose the mattress to direct sunlight.Sitting on the edge of the mattress in the same place repeatedly can cause a depression in the area. Use the handles provided at the sides of the mattress for positioning only. Do not use handles for carrying. If spillage occurs, treat stain with a damp cloth. Allow to dry thoroughly in the shade before re-using. Good quality, washable mattress protector is a must to keep your mattress fresh & free from stain.Tolerance : Length or Width +/- 12mm; Thk +/- 12mm, 6mm.',34,2,3,'2021-10-21 20:51:20','2021-10-21 20:51:20'),(8,'REDMI 9 Power (Fiery Red, 64 GB)  (4 GB RAM)','48MP quad rear camera, ultra-wide, macro mode, portrait, ai scene recognition, night mode, hdr, pro mode | 8MP front camera, 16.58 centimeters (6.53 inch) FHD+ multi-touch capacitive touchscreen with 2340 x 1080 pixels resolution, 394 ppi pixel density and 19.5:9 aspect ratio, Memory, Storage & SIM: 4GB RAM | 128GB internal memory expandable up to 512GB | Dual SIM + Dedicated SD card slot, Android v10 operating system with upto 2.0GHz clock speed Qualcomm Snapdragon 662 octa core processor, 6000mAH large lithium-polymer battery 18W charging support',11499,23,2,'2021-10-21 21:03:10','2021-10-21 21:03:10'),(9,'Printed, Embellished Fashion Lycra Blend Saree  (Maroon)','Style Code\r\nPatti_2.0\r\nPattern\r\nPrinted, Embellished\r\nPack of\r\n1\r\nOccasion\r\nCasual, Wedding, Party & Festive, Wedding & Festive\r\nDecorative Material\r\nRuffle\r\nFabric Care\r\nDry Clean Only\r\nFabric\r\nLycra Blend\r\nType\r\nFashion',401,25,4,'2021-10-22 12:59:04','2021-10-22 12:59:04'),(10,' OnePlus Y Series 100 cm (40 inch) Full HD LED Smart Android TV  (40FA1A00)                  ','Enjoy immersive visuals with equally exciting audio on the OnePlus Y Series 100 cm (40) Full HD LED Smart Android TV that comes with a number of innovative features. This home entertainment appliance features 93% Colour Gamut for lifelike vibrant visuals, a Gamma Engine for high-quality viewing, and Dolby Audio for an enhanced sound experience.',22499,12,4,'2021-10-22 19:11:47','2021-10-22 19:11:47'),(11,'Girls Lehenga Choli Ethnic Wear Embroidered Lehenga, Choli and Dupatta Set  (Green, Pack of 1)','Brand\r\nThe Fashion Prime\r\nStyle Code\r\nBUTTO..\r\nSize\r\n12 - 13 Years\r\nBrand Color\r\nGREEN\r\nIdeal For\r\nGirls\r\nLabel Size\r\n35\r\nType\r\nLehenga, Choli and Dupatta Set\r\nPrimary Color\r\nGreen',499,100,4,'2021-10-22 19:14:50','2021-10-22 19:14:50'),(12,'Fabiano FAB-MG-03 Tulip 500 Watts Mixer Grinder (3 Jars, White, Grey)','Sales Package\r\n	\r\n\r\n    1 Mixer Grinder, 3 Jars, 1 User Manual\r\n\r\nAuto Switch Off\r\n	\r\n\r\n    Yes\r\n\r\nLocking System\r\n	\r\n\r\n    Yes\r\n\r\nMaterial\r\n	\r\n\r\n    ABS Body, Stainless Steel Jars\r\n\r\nNon-slip Feet\r\n	\r\n\r\n    Yes\r\n\r\nDry Grinding\r\n	\r\n\r\n    Yes\r\n\r\nBlending\r\n	\r\n\r\n    Yes\r\n\r\nGrating\r\n	\r\n\r\n    Yes\r\n\r\nMincing\r\n	\r\n\r\n    Yes',1099,22,3,'2021-10-23 12:17:41','2021-10-23 12:17:41'),(13,'CROMPTON ACGEI-BRIO 1000 W Dry Iron  (SKY BLUE)','Smoothening the creases on your clothes may not always be the easiest thing but this Crompton iron will make ironing much more convenient. It comes with the Weilberger coating, which enhances the heat plate’s durability. On top of that, its ergonomic design makes it easier to glide it on your clothes, along with providing a better grip. Furthermore, you can iron every fabric optimally, as it comes with 6 fabric settings.',549,14,3,'2021-10-23 12:20:51','2021-10-23 12:20:51'),(14,'Scott International Solid Men Round Neck Reversible Multicolor T-Shirt  (Pack of 3)','Due To The Different Monitor And Light Effect, The Actual Color Of The Item Might Be Slightly Different From The Color Showed On The Pictures.',420,55,4,'2021-10-23 12:23:33','2021-10-23 12:23:33');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','customer') NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin@test.com','0192023a7bbd73250516f069df18b500','admin','2021-10-23 19:26:39','2021-10-23 19:26:39'),(2,'customer','customer','customer@test.com','f4ad231214cb99a985dff0f056a36242','customer','2021-10-23 19:28:08','2021-10-23 19:28:08');
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

-- Dump completed on 2021-10-23 20:11:33
