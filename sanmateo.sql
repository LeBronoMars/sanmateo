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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'2016-07-09 12:24:46','2016-07-09 12:24:46',NULL,'No Classes','Walang pasok'),(2,'2016-07-09 12:25:08','2016-07-09 12:25:08',NULL,'Test','Hello World'),(3,'2016-07-09 12:25:26','2016-07-09 12:25:26',NULL,'Typoon Watch','May bagyo'),(4,'2016-07-09 13:12:41','2016-07-09 13:12:41',NULL,'Qqqqq','Aaaa'),(5,'2016-07-09 13:19:48','2016-07-09 13:19:48',NULL,'Typoon Watch','May bagyo'),(6,'2016-07-10 03:39:25','2016-07-10 03:39:25',NULL,'AAAAA','Walang pasok'),(7,'2016-07-10 03:39:36','2016-07-10 03:39:36',NULL,'BBBBB','Walang pasok'),(8,'2016-07-10 03:42:28','2016-07-10 03:42:28',NULL,'CCCCC','Walang pasok'),(9,'2016-07-10 03:42:32','2016-07-10 03:42:32',NULL,'DDDD','Walang pasok'),(10,'2016-07-10 03:42:39','2016-07-10 03:42:39',NULL,'EEEEE','Walang pasok'),(11,'2016-07-10 03:42:46','2016-07-10 03:42:46',NULL,'FFFFFF','Walang pasok'),(12,'2016-07-10 03:42:50','2016-07-10 03:42:50',NULL,'GGGGG','Walang pasok'),(13,'2016-07-10 03:42:54','2016-07-10 03:42:54',NULL,'HHHHHH','Walang pasok'),(14,'2016-07-10 03:42:58','2016-07-10 03:42:58',NULL,'JJJJJ','Walang pasok'),(15,'2016-07-10 03:43:02','2016-07-10 03:43:02',NULL,'LLLLLL','Walang pasok'),(16,'2016-07-10 03:43:06','2016-07-10 03:43:06',NULL,'MMMMMM','Walang pasok'),(17,'2016-07-10 03:43:09','2016-07-10 03:43:09',NULL,'NNNNN','Walang pasok'),(18,'2016-07-10 03:43:12','2016-07-10 03:43:12',NULL,'OOOOO','Walang pasok'),(19,'2016-07-10 03:43:17','2016-07-10 03:43:17',NULL,'PPPPP','Walang pasok'),(20,'2016-07-10 03:43:29','2016-07-10 03:43:29',NULL,'QQQQQ','Walang pasok'),(21,'2016-07-10 04:24:21','2016-07-10 04:24:21',NULL,'Rrrrr','Eeee'),(22,'2016-07-15 00:51:16','2016-07-15 00:51:16',NULL,'No Classesaaaaa','Walang pasok'),(23,'2016-07-15 00:51:29','2016-07-15 00:51:29',NULL,'No Classesbbbb','Walang pasok'),(24,'2016-07-18 17:23:09','2016-07-18 17:23:09',NULL,'Aaaa','Walang pasok'),(25,'2016-07-18 17:24:23','2016-07-18 17:24:23',NULL,'Aaaa','Walang pasok'),(26,'2016-07-18 17:24:55','2016-07-18 17:24:55',NULL,'Aaaa','Walang pasok'),(27,'2016-07-18 17:25:25','2016-07-18 17:25:25',NULL,'Aaaa','Walang pasok'),(28,'2016-07-18 17:29:17','2016-07-18 17:29:17',NULL,'Aaaa','Walang pasok'),(29,'2016-07-18 17:37:29','2016-07-18 17:37:29',NULL,'Aaaa','Walang pasok'),(30,'2016-07-18 17:38:56','2016-07-18 17:38:56',NULL,'Aaaa','Walang pasok'),(31,'2016-07-19 14:05:12','2016-07-19 14:05:12',NULL,'Aaaa','Walang pasok');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident_reports`
--

LOCK TABLES `incident_reports` WRITE;
/*!40000 ALTER TABLE `incident_reports` DISABLE KEYS */;
INSERT INTO `incident_reports` VALUES (1,'2016-07-04 12:42:31','2016-07-04 12:42:31',NULL,'Masyadong pogi',1,1,4,'for review'),(2,'2016-07-04 15:30:03','2016-07-04 15:30:03',NULL,'Masyadong Pogii E',4,1,1,'for review');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` VALUES (26,'2016-08-18 09:44:44','2016-08-18 09:52:11',NULL,'http://newsinfo.inquirer.net/files/2015/12/sm-megamall-1.jpg',8,14.58576,121.057545,'Hagonoy','TO MEEE','active','Environmental Report','');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2016-07-06 12:34:09','2016-07-06 12:34:09',NULL,'Barcelona’s Messi sentenced to 21 months for tax fraud','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(7,'2016-07-09 11:33:01','2016-07-09 11:33:01',NULL,'San Mateo Profile App now available','Lorem ipsum dolor','','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/san_mateo_app_1.png','San Mateo Government','active'),(8,'2016-07-12 12:29:23','2016-07-12 12:29:23',NULL,'News 1','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(9,'2016-07-12 12:45:32','2016-07-12 12:45:32',NULL,'News 2','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(10,'2016-07-12 12:45:40','2016-07-12 12:45:40',NULL,'News 3','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(11,'2016-07-12 12:47:45','2016-07-12 12:47:45',NULL,'News 4','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(12,'2016-07-12 12:47:49','2016-07-12 12:47:49',NULL,'News 5','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(13,'2016-07-12 12:48:00','2016-07-12 12:48:00',NULL,'News 6','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(14,'2016-07-12 12:48:40','2016-07-12 12:48:40',NULL,'News 7','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(15,'2016-07-12 12:49:39','2016-07-12 12:49:39',NULL,'News 8','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(16,'2016-07-12 12:49:42','2016-07-12 12:49:42',NULL,'News 9','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(17,'2016-07-12 12:49:45','2016-07-12 12:49:45',NULL,'News 10','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(18,'2016-07-12 12:49:49','2016-07-12 12:49:49',NULL,'News 11','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(19,'2016-07-12 12:49:51','2016-07-12 12:49:51',NULL,'News 12','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(20,'2016-07-12 12:49:53','2016-07-12 12:49:53',NULL,'News 13','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(21,'2016-07-12 12:49:57','2016-07-12 12:49:57',NULL,'News 14','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(22,'2016-07-12 12:50:00','2016-07-12 12:50:00',NULL,'News 15','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(23,'2016-07-12 12:50:03','2016-07-12 12:50:03',NULL,'News 16','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(24,'2016-07-12 12:50:06','2016-07-12 12:50:06',NULL,'News 17','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(25,'2016-07-12 12:50:09','2016-07-12 12:50:09',NULL,'News 18','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(26,'2016-07-12 12:50:11','2016-07-12 12:50:11',NULL,'News 19','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(27,'2016-07-12 12:50:15','2016-07-12 12:50:15',NULL,'News 20','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active'),(28,'2016-07-15 00:15:31','2016-07-15 00:15:31',NULL,'Barcelona’s Messi sentenced to 21 months for tax fraud','BARCELONA — A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  Read more: http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud#ixzz4DdCLqmte  Follow us: @inquirerdotnet on Twitter | inquirerdotnet on Facebook  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years.  A court in Spain on Wednesday sentenced Barcelona striker Lionel Messi and his father to 21 months in jail for tax fraud and slapped them with a fine of 3.7 million euros ($4.1 million).  But these prison sentences are likely to be suspended as is common in Spain for first offences for non-violent crimes carrying a sentence of less than two years. The Argentina and Barcelona star and his father Jorge Horacio Messi were found guilty of using companies in Belize and Uruguay to avoid paying taxes on 4.16 million euros of Messi’s income earned from his image rights from 2007-09. The income related to Messi’s image rights that was allegedly hidden includes endorsement deals with Banco Sabadell, Danone, Adidas, Pepsi-Cola, Procter & Gamble and the Kuwait Food Company.','http://sports.inquirer.net/215681/barcelonas-messi-sentenced-to-21-months-for-tax-fraud','http://sports.inquirer.net/files/2016/04/Lionel-Messi.jpg','inquirer.net','active');
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
 1 AS `incident_id`,
 1 AS `report_status`,
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
INSERT INTO `users` VALUES (1,'2016-06-23 14:39:30','2016-07-19 14:20:24',NULL,'Russel','Bulanon','rsbulanon@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','3uILg5vjcTyFbGIP2cY1tLPaKQ==',1,'Male','http://vignette1.wikia.nocookie.net/logopedia/images/b/bb/Purefoods.jpg/revision/latest?cb=20150506051734'),(2,'2016-06-30 15:47:24','2016-06-30 15:47:24',NULL,'Jovel','Quiamco','jvlquiamco@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','72o5JSmZkX7N_xtDt6vPOLDJQqo=',NULL,'Male','http://www.gravatar.com/avatar/2ae05db25b0a42667f488e7763c51c46?d=identicon'),(3,'2016-06-30 15:52:02','2016-06-30 15:52:02',NULL,'JovsQ','Quiamco','dynamic.jvquiamco@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','DJ7JeEi9uhSNC2FGCkSO1hR5-RU=',NULL,'Male','http://www.gravatar.com/avatar/46aa3bb21ff083c894ea64e0ded1ef77?d=identicon'),(4,'2016-07-04 12:04:58','2016-07-04 12:04:58',NULL,'Ned','Flanders','nedflanders@gmail.com','Malolos, Bulacan','09321622825','active','superadmin','CExyAJehUZY2SsJGlRQtf4zBaw==',NULL,'Male','http://www.gravatar.com/avatar/b658ab705b1f30f149666a6e21fbe6ec?d=identicon'),(5,'2016-07-06 02:43:15','2016-07-06 02:58:57',NULL,'Maud','Flanders','maud@flanders.com','Hagonoy, Bulacan','09321622825','active','Regular User','gIxjuUEZv4-TSHqmJCLWHFpXwA==',NULL,'Female','http://www.gravatar.com/avatar/63921e20d866864e1b42aaa973399e8f?d=identicon'),(6,'2016-07-06 03:09:10','2016-07-06 03:09:10',NULL,'Jovs','Quiamco','jvquiamco@dynamicobjx.com','Val','09123456789','active','Regular User','ozVWginfwOIZn9wkC0VDZGIJOC8=',NULL,'Male','http://www.gravatar.com/avatar/e3d9263537be9a38adf3ab2d4d8f7547?d=identicon'),(7,'2016-07-14 16:04:55','2016-07-14 17:05:26',NULL,'Aa','Aa','aa@gmail.com','Aa','Aa','active','Regular User','6eQn8egLIV-GIb4U8v5EokJb',NULL,'Male','http://www.gravatar.com/avatar/3979576bcdcbd166d005a5b225e1bc52?d=identicon'),(8,'2016-07-18 11:27:27','2016-07-19 15:08:30',NULL,'Lebron','James','lebron@gmail.com','San Pedro Hagonoy, Bulacan','09321622825','active','Regular User','QXH9vu9sQ4C3EXDbdaboPmqdTw==',NULL,'Male','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/profilepics/incident_image_20160719_230818.jpg');
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
  `level` double DEFAULT NULL,
  `alert` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_levels`
--

LOCK TABLES `water_levels` WRITE;
/*!40000 ALTER TABLE `water_levels` DISABLE KEYS */;
INSERT INTO `water_levels` VALUES (1,'2016-07-10 06:37:59','2016-07-10 06:37:59',NULL,18,'Alert'),(2,'2016-07-10 07:36:52','2016-07-10 07:36:52',NULL,18,'Alert'),(3,'2016-07-10 07:59:28','2016-07-10 07:59:28',NULL,23,'Critical'),(4,'2016-07-15 00:11:33','2016-07-15 00:11:33',NULL,18,'Alert'),(5,'2016-07-15 00:14:31','2016-07-15 00:14:31',NULL,22,'Critical'),(6,'2016-07-15 00:16:04','2016-07-15 00:16:04',NULL,23,'Critical'),(7,'2016-07-15 00:16:50','2016-07-15 00:16:50',NULL,23.2,'Critical'),(8,'2016-07-15 00:17:19','2016-07-15 00:17:19',NULL,23.3,'Critical'),(9,'2016-07-15 00:17:48','2016-07-15 00:17:48',NULL,23.4,'Critical'),(10,'2016-07-15 00:18:14','2016-07-15 00:18:14',NULL,23.5,'Critical'),(11,'2016-07-15 00:22:56','2016-07-15 00:22:56',NULL,23.6,'Critical'),(12,'2016-07-15 00:23:27','2016-07-15 00:23:27',NULL,23.7,'Critical'),(13,'2016-07-15 00:23:49','2016-07-15 00:23:49',NULL,23.8,'Critical'),(14,'2016-07-15 00:26:58','2016-07-15 00:26:58',NULL,23.9,'Critical'),(15,'2016-07-15 00:27:22','2016-07-15 00:27:22',NULL,24,'Critical'),(16,'2016-07-15 00:34:44','2016-07-15 00:34:44',NULL,26,'Critical'),(17,'2016-07-15 00:37:02','2016-07-15 00:37:02',NULL,27,'Critical'),(18,'2016-07-15 00:38:58','2016-07-15 00:38:58',NULL,28,'Critical'),(19,'2016-07-15 00:39:07','2016-07-15 00:39:07',NULL,29,'Critical'),(20,'2016-07-15 00:44:02','2016-07-15 00:44:02',NULL,29.1,'Critical'),(21,'2016-07-15 00:44:45','2016-07-15 00:44:45',NULL,29.3,'Critical'),(22,'2016-07-15 00:50:25','2016-07-15 00:50:25',NULL,29.4,'Critical'),(23,'2016-07-15 00:51:46','2016-07-15 00:51:46',NULL,29.5,'Critical'),(24,'2016-07-15 00:53:26','2016-07-15 00:53:26',NULL,29.6,'Critical'),(25,'2016-07-15 00:53:41','2016-07-15 00:53:41',NULL,29.7,'Critical'),(26,'2016-07-15 00:53:48','2016-07-15 00:53:48',NULL,29.8,'Critical');
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
/*!50001 VIEW `qry_incident_reports` AS select `u`.`id` AS `uploader_id`,concat(`u`.`first_name`,' ',`u`.`last_name`) AS `uploader_name`,`u`.`email` AS `uploader_email`,`u`.`contact_no` AS `uploader_contact_no`,`u`.`gender` AS `uploader_gender`,`u`.`address` AS `uploader_address`,`u`.`pic_url` AS `uploader_pic_url`,`r`.`id` AS `reporter_id`,concat(`r`.`first_name`,' ',`r`.`last_name`) AS `reporter_name`,`r`.`email` AS `reporter_email`,`r`.`address` AS `reporter_address`,`r`.`contact_no` AS `reporter_contact_no`,`r`.`gender` AS `reporter_gender`,`r`.`pic_url` AS `reporter_pic_url`,`i`.`id` AS `incident_id`,`i`.`status` AS `report_status`,`incident`.`description` AS `incident_description`,`incident`.`images` AS `incident_images`,`incident`.`status` AS `incident_status`,`incident`.`address` AS `incident_address`,`incident`.`latitude` AS `incident_latitude`,`incident`.`longitude` AS `incident_longitude` from (((`incident_reports` `i` join `users` `u` on((`i`.`posted_by` = `u`.`id`))) join `users` `r` on((`r`.`id` = `i`.`reported_by`))) join `incidents` `incident` on((`incident`.`id` = `i`.`incident_id`))) */;
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

-- Dump completed on 2016-08-18 17:53:59
