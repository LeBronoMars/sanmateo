-- MySQL dump 10.13  Distrib 5.7.11, for osx10.10 (x86_64)
--
-- Host: localhost    Database: sanmateo
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` longtext,
  `message` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'2016-06-27 08:56:50','2016-06-27 08:56:50',NULL,'General Luna Highway','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/highway.jpg','In terms of geography, the town of  San Mateo is just a heartbeat away from Metro Manila.Barangay Banaba is its gateway, whether approaching it from either Nangka in Marikina City or Batasan Road in Quezon City. Upon driving through the arch above General Luna Highwaymarking the entry point to San Mateo, a marker can be seen by the side of the road saying something like you are now leaving the National Capital Region!  \\n\\nGeneral Luna Highway is San Mateo’s main thoroughfare. It must be a historic road where Andres Bonifacio could have passed by on his way to Pamitinan Cave. The legendary General Licerio Geronimo and his band of tiradores could have marched this road on their way to the victorious Battle of San Mateo.'),(2,'2016-06-27 09:07:17','2016-06-27 09:07:17',NULL,'Acacia Trees','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/acacia_trees.jpg','Several decades ago, old timers claim that the interlacing branches of enormous acacia trees rising from both sides of the road provide a living ceiling to passers-by. One that was said to be inhabited by a cafre or ogre was torn down recently to give way for a parking space of a newly constructed building next to San Jose de Ampid Parish. The poor cafre must have been satisfied of just being a housemate in one of the buildings in the area.\\n\\nOne of the largest surviving trees still stands along the highway in Barangay Ampid near the corner before entering Ciudad Christhia Resort.'),(3,'2016-06-27 09:10:18','2016-06-27 09:10:18',NULL,'Ciudad Christhia','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/ciudad_christhia_resort.jpg','After Banaba is Barangay Ampid. Ampid is home to a popular summer destination -Ciudad Christhia Resort. But even during none-summer months, the resort seemed to be on peak season. I have seen from our balcontruck loads of  tourists making their way to the resort everyday (and every night). Perhaps they are drawn by its “nine-waves pool” and acrophobic double-loop water slide.   \\n\\nWe have been to Ciudad Christhia several times. Big and brawny, it has three large pools (the main pool can simulate rippling waves), 66 air-conditioned cabanas,  complete sports facility, including a 12-lane Duckpin Bowling, billiards and tennis tables and basketball court, a butterfly farm and greenhouse for the kids and karaoke lounge for the adults.'),(4,'2016-06-27 09:13:18','2016-06-27 09:13:18',NULL,'Kakanin and Prima Blend','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/kakanin2.jpg','Exploring further into the town, urban icons continue to manifest their power. Sure one can have a Jollibee sundae or a Chowking halo-halo in the plaza, but San Mateo prefers the home-made kakanin or different varieties of delicious rice cakes sold in the Guitnang Bayan market or the delectable pastries and the mouthwatering butter-rich cakes whipped only by Primablend.  \\n\\nPrimablend has a branch along General Luna, a few walks from the plaza. The bakeshop has become an institution in San Mateo. I’ve sampled their cakes once and since then I’ve developed a craving. Every September, Guitnang Bayan celebrates the Kakanin Festival in praise for this delicious delicacy where bilaos of kakanin are paraded and shared in a feast for everyone.  \\n\\nAlthough the town has rapidly developed into a first class municipality (whatever that means), local flavor and folk traditions that are nostalgically provincial managed to survive.'),(5,'2016-06-27 09:15:15','2016-06-27 09:15:15',NULL,'Spanish San Mateo','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/poon.jpg','During Holy Week, Spanish San Mateo comes alive with its almost daily processions at San Jose de Ampid Parish and at the centuries-old Church of Nuestra Señora de Aranzazu.  The large crowd that march along with the Holy Wednesday and Good Friday processions of heirloom tableaus and images is a religious ritual from the past linking the history of the town to the Spanish colonial times.  \\n\\nHistorical accounts suggests that two years before Miguel Lopez de Legazpi claimed the City of Manila for Spain, his nephew,  Juan de Salcedo came to present-day San Mateo with a force of 150 men and tag-along friars and established the first community in 1571. There is also another account describing the town was founded when the first chapel was built by the Augustinian along the riverbanks south of the present poblacion in 1596.  \\n\\n To finally put the issue to rest, it has been suggested that the town was established in 1571 by Salcedo while the first church was founded in 1596 by the Augustinians.');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident_reports`
--

DROP TABLE IF EXISTS `incident_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `incident_id` int(11) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `reported_by` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_reports`
--

LOCK TABLES `incident_reports` WRITE;
/*!40000 ALTER TABLE `incident_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `incident_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `images` longtext,
  `reported_by` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `incident_type` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
/*!40000 ALTER TABLE `incidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext,
  `source_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `reported_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `message` longtext,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officials`
--

DROP TABLE IF EXISTS `officials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `zindex` int(11) DEFAULT NULL,
  `background` longtext,
  `pic` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officials`
--

LOCK TABLES `officials` WRITE;
/*!40000 ALTER TABLE `officials` DISABLE KEYS */;
INSERT INTO `officials` VALUES (1,'2016-08-27 03:31:52','2016-08-27 03:31:52',NULL,'Rodrigo','Duterte','Digong','Mayor',1,'Kill Them All','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/officials/official_profile_pic_Sat%2C%202016-08-27%2011%3A31%20AM.jpg','active'),(2,'2016-08-27 03:32:44','2016-08-27 03:32:44',NULL,'Ronald','Dela Rosa','Bato','Vice Mayor',2,'Shoot Them All','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/officials/official_profile_pic_Sat%2C%202016-08-27%2011%3A32%20AM.jpg','active'),(3,'2016-09-01 13:12:17','2016-09-01 13:12:17',NULL,'James','Yap','Big Game','Shooting Guard',3,'Grand Slam','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/officials/official_profile_pic_Thu%2C%202016-09-01%2009%3A11%20PM.jpg','active'),(4,'2016-09-01 14:35:16','2016-09-01 14:35:16',NULL,'Tim','Cone','Coa H','Coach',4,'Dddd','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/officials/official_profile_pic_Thu%2C%202016-09-01%2010%3A34%20PM.jpg','active');
/*!40000 ALTER TABLE `officials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `qry_incident_reports`
--

DROP TABLE IF EXISTS `qry_incident_reports`;
/*!50001 DROP VIEW IF EXISTS `qry_incident_reports`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `qry_incident_reports` AS SELECT 
 1 AS `uploader_id`,
 1 AS `uploader_name`,
 1 AS `uploader_email`,
 1 AS `uploader_contact_no`,
 1 AS `uploader_gender`,
 1 AS `uploader_address`,
 1 AS `uploader_pic_url`,
 1 AS `reporter_id`,
 1 AS `reporter_name`,
 1 AS `reporter_email`,
 1 AS `reporter_address`,
 1 AS `reporter_contact_no`,
 1 AS `reporter_gender`,
 1 AS `reporter_pic_url`,
 1 AS `incident_report_id`,
 1 AS `incident_id`,
 1 AS `report_status`,
 1 AS `created_at`,
 1 AS `deleted_at`,
 1 AS `remarks`,
 1 AS `incident_type`,
 1 AS `incident_description`,
 1 AS `incident_images`,
 1 AS `incident_status`,
 1 AS `incident_address`,
 1 AS `incident_latitude`,
 1 AS `incident_longitude`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `qry_incidents`
--

DROP TABLE IF EXISTS `qry_incidents`;
/*!50001 DROP VIEW IF EXISTS `qry_incidents`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `qry_incidents` AS SELECT 
 1 AS `reporter_id`,
 1 AS `reporter_name`,
 1 AS `reporter_contact_no`,
 1 AS `reporter_email`,
 1 AS `reporter_address`,
 1 AS `reporter_pic_url`,
 1 AS `incident_id`,
 1 AS `images`,
 1 AS `latitude`,
 1 AS `longitude`,
 1 AS `incident_address`,
 1 AS `incident_description`,
 1 AS `incident_status`,
 1 AS `incident_type`,
 1 AS `remarks`,
 1 AS `incident_date_reported`,
 1 AS `incident_date_updated`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_level` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_password_default` tinyint(1) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2016-06-23 14:39:30','2016-07-19 14:20:24',NULL,'Russel','Bulanon','rsbulanon@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','3uILg5vjcTyFbGIP2cY1tLPaKQ==',1,'Male','http://vignette1.wikia.nocookie.net/logopedia/images/b/bb/Purefoods.jpg/revision/latest?cb=20150506051734'),(2,'2016-06-30 15:47:24','2016-06-30 15:47:24',NULL,'Jovel','Quiamco','jvlquiamco@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','72o5JSmZkX7N_xtDt6vPOLDJQqo=',NULL,'Male','http://www.gravatar.com/avatar/2ae05db25b0a42667f488e7763c51c46?d=identicon'),(3,'2016-06-30 15:52:02','2016-06-30 15:52:02',NULL,'JovsQ','Quiamco','dynamic.jvquiamco@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','DJ7JeEi9uhSNC2FGCkSO1hR5-RU=',NULL,'Male','http://www.gravatar.com/avatar/46aa3bb21ff083c894ea64e0ded1ef77?d=identicon'),(4,'2016-07-04 12:04:58','2016-07-04 12:04:58',NULL,'Ned','Flanders','nedflanders@gmail.com','Malolos, Bulacan','09321622825','active','superadmin','CExyAJehUZY2SsJGlRQtf4zBaw==',NULL,'Male','http://www.gravatar.com/avatar/b658ab705b1f30f149666a6e21fbe6ec?d=identicon'),(5,'2016-07-06 02:43:15','2016-07-06 02:58:57',NULL,'Maud','Flanders','maud@flanders.com','Hagonoy, Bulacan','09321622825','active','Regular User','gIxjuUEZv4-TSHqmJCLWHFpXwA==',NULL,'Female','http://www.gravatar.com/avatar/63921e20d866864e1b42aaa973399e8f?d=identicon'),(6,'2016-07-06 03:09:10','2016-07-06 03:09:10',NULL,'Jovs','Quiamco','jvquiamco@dynamicobjx.com','Val','09123456789','active','Regular User','ozVWginfwOIZn9wkC0VDZGIJOC8=',NULL,'Male','http://www.gravatar.com/avatar/e3d9263537be9a38adf3ab2d4d8f7547?d=identicon'),(7,'2016-07-14 16:04:55','2016-07-14 17:05:26',NULL,'Aa','Aa','aa@gmail.com','Aa','Aa','active','Regular User','6eQn8egLIV-GIb4U8v5EokJb',NULL,'Male','http://www.gravatar.com/avatar/3979576bcdcbd166d005a5b225e1bc52?d=identicon'),(8,'2016-07-18 11:27:27','2016-09-03 15:02:43',NULL,'Lebron','James','lebron@gmail.com','San Pedro Hagonoy, Bulacan','09321622825','active','Regular User','QXH9vu9sQ4C3EXDbdaboPmqdTw==',NULL,'Male','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/profilepics/6836e942-b0c4-43eb-997d-c8a7fcdde7d9.png');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_levels`
--

DROP TABLE IF EXISTS `water_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `water_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `level` double DEFAULT NULL,
  `alert` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_levels`
--

LOCK TABLES `water_levels` WRITE;
/*!40000 ALTER TABLE `water_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `water_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `qry_incident_reports`
--

/*!50001 DROP VIEW IF EXISTS `qry_incident_reports`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qry_incident_reports` AS select `u`.`id` AS `uploader_id`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `uploader_name`,`u`.`email` AS `uploader_email`,`u`.`contact_no` AS `uploader_contact_no`,`u`.`gender` AS `uploader_gender`,`u`.`address` AS `uploader_address`,`u`.`pic_url` AS `uploader_pic_url`,`r`.`id` AS `reporter_id`,concat(`r`.`first_name`,' ',`r`.`last_name`) AS `reporter_name`,`r`.`email` AS `reporter_email`,`r`.`address` AS `reporter_address`,`r`.`contact_no` AS `reporter_contact_no`,`r`.`gender` AS `reporter_gender`,`r`.`pic_url` AS `reporter_pic_url`,`i`.`id` AS `incident_report_id`,`i`.`incident_id` AS `incident_id`,`i`.`status` AS `report_status`,`i`.`created_at` AS `created_at`,`i`.`deleted_at` AS `deleted_at`,`i`.`remarks` AS `remarks`,`incident`.`incident_type` AS `incident_type`,`incident`.`description` AS `incident_description`,`incident`.`images` AS `incident_images`,`incident`.`status` AS `incident_status`,`incident`.`address` AS `incident_address`,`incident`.`latitude` AS `incident_latitude`,`incident`.`longitude` AS `incident_longitude` from (((`incident_reports` `i` join `users` `u` on((`i`.`posted_by` = `u`.`id`))) join `users` `r` on((`r`.`id` = `i`.`reported_by`))) join `incidents` `incident` on((`incident`.`id` = `i`.`incident_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `qry_incidents`
--

/*!50001 DROP VIEW IF EXISTS `qry_incidents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `qry_incidents` AS select `u`.`id` AS `reporter_id`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `reporter_name`,`u`.`contact_no` AS `reporter_contact_no`,`u`.`email` AS `reporter_email`,`u`.`address` AS `reporter_address`,`u`.`pic_url` AS `reporter_pic_url`,`i`.`id` AS `incident_id`,`i`.`images` AS `images`,`i`.`latitude` AS `latitude`,`i`.`longitude` AS `longitude`,`i`.`address` AS `incident_address`,`i`.`description` AS `incident_description`,`i`.`status` AS `incident_status`,`i`.`incident_type` AS `incident_type`,`i`.`remarks` AS `remarks`,`i`.`created_at` AS `incident_date_reported`,`i`.`updated_at` AS `incident_date_updated`,`i`.`status` AS `status` from (`incidents` `i` join `users` `u` on((`i`.`reported_by` = `u`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-04 23:32:05
