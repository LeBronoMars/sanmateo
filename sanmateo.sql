-- MySQL dump 10.13  Distrib 5.5.54, for Linux (x86_64)
--
-- Host: localhost    Database: sanmateo
-- ------------------------------------------------------
-- Server version	5.5.54

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (66,'2017-04-22 14:47:54','2017-04-22 14:47:54','2017-10-18 12:23:58','aaa','aaa'),(67,'2017-04-22 14:48:03','2017-04-22 14:48:03','2017-10-19 03:26:27','bbb','bbb'),(68,'2017-04-22 14:48:25','2017-04-22 14:48:25','2017-10-19 07:03:41','ccc','cccc'),(69,'2017-04-22 14:50:29','2017-04-22 14:50:29','2017-10-19 07:03:44','ddd','ddd'),(70,'2017-08-16 12:13:01','2017-08-16 12:13:01','2017-10-19 07:03:48','Hello','World'),(71,'2017-08-30 14:37:11','2017-08-30 14:37:11','2017-10-19 07:03:52','Hello','World'),(72,'2017-08-30 14:38:04','2017-08-30 14:38:04','2017-10-19 03:26:18','Hello2','World2'),(73,'2017-10-11 13:55:39','2017-10-11 13:55:39',NULL,'School Class Suspension','No Classes for Elementary'),(74,'2017-10-11 13:57:46','2017-10-11 13:57:46',NULL,'Storm Warning','Storm Warning'),(75,'2017-10-19 02:40:16','2017-10-19 02:40:16',NULL,'ASEAN Summit','Suspension of work on Nov 13 to 15'),(76,'2017-10-19 03:27:54','2017-10-19 03:27:54','2017-10-19 07:03:57','Halloween Party','Halloween Party'),(77,'2017-10-19 18:44:38','2017-10-19 18:44:38','2017-10-19 18:44:57','asd','asd'),(78,'2017-10-19 18:45:45','2017-10-19 18:45:45','2017-10-19 18:45:54','er','re'),(79,'2017-10-19 18:47:24','2017-10-19 18:47:24','2017-10-19 18:48:07','asd','asd'),(80,'2017-10-19 18:48:10','2017-10-19 18:48:10','2017-10-19 18:48:20','asd','asd'),(81,'2017-10-19 18:48:45','2017-10-19 18:48:45','2017-10-19 18:49:17','asd','asdd'),(82,'2017-10-19 19:01:09','2017-10-19 19:01:09','2017-10-19 19:01:14','Qwe','asd'),(83,'2017-10-19 19:09:57','2017-10-19 19:09:57','2017-10-19 19:10:02','Test','test'),(84,'2018-01-24 03:00:39','2018-01-24 03:00:39','2018-01-24 03:00:50','Class Suspended','Classes are suspended from pre-school to senior high school tomorrow, July 27, 2017'),(85,'2018-01-24 03:01:15','2018-01-24 03:01:15',NULL,'Class Suspended','Classes are suspended from pre-school to senior high school tomorrow, July 25, 2018'),(86,'2018-01-25 05:39:07','2018-01-25 05:39:07',NULL,'Anouncement Test','testing'),(87,'2018-01-26 00:34:00','2018-01-26 00:34:00',NULL,'Announcement 2','Testing'),(88,'2018-01-29 01:32:38','2018-01-29 01:32:38',NULL,'Announcement Test 3','Test'),(89,'2018-01-30 02:39:23','2018-01-30 02:39:23',NULL,'Announcement 4','Test 4'),(90,'2018-02-05 02:03:51','2018-02-05 02:03:51',NULL,'Announcement 5','test 5'),(91,'2018-02-06 02:04:32','2018-02-06 02:04:32',NULL,'Announcement 6','Test 6'),(92,'2018-02-13 01:56:35','2018-02-13 01:56:35',NULL,'Announcement 7','Test 7'),(93,'2018-02-27 06:28:40','2018-02-27 06:28:40',NULL,'Announcement 8','Announcement 8'),(94,'2018-02-28 02:14:05','2018-02-28 02:14:05',NULL,'Announcement 9','Testing Push Notifications. Is it working?'),(95,'2018-03-08 02:27:37','2018-03-08 02:27:37',NULL,'Announcement 10','Test 10'),(96,'2018-03-09 08:09:05','2018-03-09 08:09:05',NULL,'Hello','World');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'2016-06-27 08:56:50','2016-06-27 08:56:50','2017-10-19 03:11:03','General Luna Highway','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/highway.jpg','In terms of geography, the town of  San Mateo is just a heartbeat away from Metro Manila.Barangay Banaba is its gateway, whether approaching it from either Nangka in Marikina City or Batasan Road in Quezon City. Upon driving through the arch above General Luna Highwaymarking the entry point to San Mateo, a marker can be seen by the side of the road saying something like you are now leaving the National Capital Region!  \\n\\nGeneral Luna Highway is San Mateo’s main thoroughfare. It must be a historic road where Andres Bonifacio could have passed by on his way to Pamitinan Cave. The legendary General Licerio Geronimo and his band of tiradores could have marched this road on their way to the victorious Battle of San Mateo.'),(2,'2016-06-27 09:07:17','2017-10-19 03:12:28',NULL,'Acacia Trees','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/acacia_trees.jpg','Several decades ago, old timers claim that the interlacing branches of enormous acacia trees rising from both sides of the road provide a living ceiling to passers-by. One that was said to be inhabited by a cafre or ogre was torn down recently to give way for a parking space of a newly constructed building next to San Jose de Ampid Parish. The poor cafre must have been satisfied of just being a housemate in one of the buildings in the area.\\n\\nOne of the largest surviving trees still stands along the highway in Barangay Ampid near the corner before entering Ciudad Christhia Resort.'),(3,'2016-06-27 09:10:18','2016-06-27 09:10:18',NULL,'Ciudad Christhia','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/ciudad_christhia_resort.jpg','After Banaba is Barangay Ampid. Ampid is home to a popular summer destination -Ciudad Christhia Resort. But even during none-summer months, the resort seemed to be on peak season. I have seen from our balcontruck loads of  tourists making their way to the resort everyday (and every night). Perhaps they are drawn by its “nine-waves pool” and acrophobic double-loop water slide.   \\n\\nWe have been to Ciudad Christhia several times. Big and brawny, it has three large pools (the main pool can simulate rippling waves), 66 air-conditioned cabanas,  complete sports facility, including a 12-lane Duckpin Bowling, billiards and tennis tables and basketball court, a butterfly farm and greenhouse for the kids and karaoke lounge for the adults.'),(4,'2016-06-27 09:13:18','2016-06-27 09:13:18',NULL,'Kakanin and Prima Blend','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/kakanin2.jpg','Exploring further into the town, urban icons continue to manifest their power. Sure one can have a Jollibee sundae or a Chowking halo-halo in the plaza, but San Mateo prefers the home-made kakanin or different varieties of delicious rice cakes sold in the Guitnang Bayan market or the delectable pastries and the mouthwatering butter-rich cakes whipped only by Primablend.  \\n\\nPrimablend has a branch along General Luna, a few walks from the plaza. The bakeshop has become an institution in San Mateo. I’ve sampled their cakes once and since then I’ve developed a craving. Every September, Guitnang Bayan celebrates the Kakanin Festival in praise for this delicious delicacy where bilaos of kakanin are paraded and shared in a feast for everyone.  \\n\\nAlthough the town has rapidly developed into a first class municipality (whatever that means), local flavor and folk traditions that are nostalgically provincial managed to survive.'),(5,'2016-06-27 09:15:15','2016-06-27 09:15:15',NULL,'Spanish San Mateo','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/gallery/poon.jpg','During Holy Week, Spanish San Mateo comes alive with its almost daily processions at San Jose de Ampid Parish and at the centuries-old Church of Nuestra Señora de Aranzazu.  The large crowd that march along with the Holy Wednesday and Good Friday processions of heirloom tableaus and images is a religious ritual from the past linking the history of the town to the Spanish colonial times.  \\n\\nHistorical accounts suggests that two years before Miguel Lopez de Legazpi claimed the City of Manila for Spain, his nephew,  Juan de Salcedo came to present-day San Mateo with a force of 150 men and tag-along friars and established the first community in 1571. There is also another account describing the town was founded when the first chapel was built by the Augustinian along the riverbanks south of the present poblacion in 1596.  \\n\\n To finally put the issue to rest, it has been suggested that the town was established in 1571 by Salcedo while the first church was founded in 1596 by the Augustinians.'),(6,'2017-10-18 02:26:01','2017-10-18 13:28:30','2017-10-18 13:44:00','Test3','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20aea6b570-b3ab-11e7-90a4-3f5fb484ce0e%20%20.jpg','Test'),(7,'2017-10-18 02:27:43','2017-10-18 02:27:43','2017-10-18 12:31:31','Test2','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20eaf56620-b3ab-11e7-90a4-3f5fb484ce0e%20%20.jpg','Test'),(8,'2017-10-18 13:30:46','2017-10-18 13:31:06','2017-10-18 13:43:54','test bill2','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%208b842200-b408-11e7-a940-4b04fe84de18%20%20.jpg','asd'),(9,'2017-10-18 13:31:25','2017-10-18 13:34:34','2017-10-18 13:43:48','test bill2','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20133623b0-b409-11e7-a940-4b04fe84de18%20%20.jpg','asd'),(10,'2017-10-19 15:31:18','2017-10-19 15:31:18','2017-10-19 16:50:52','Test','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%208b055300-b4e2-11e7-87fb-d707fcde9d19%20%20.jpg','Test'),(11,'2017-10-19 15:32:40','2017-10-19 15:32:40','2017-10-19 15:34:27','Test2','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20bba6f860-b4e2-11e7-87fb-d707fcde9d19%20%20.jpg','test2'),(12,'2017-10-19 19:04:53','2017-10-19 19:04:53','2017-10-19 19:04:58','sample','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%2061f23460-b500-11e7-8c32-f506453b67c2%20%20.jpg','waaa'),(13,'2017-10-19 19:05:51','2017-10-19 19:05:51','2017-10-19 19:05:57','sample','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%208501e1d0-b500-11e7-8c32-f506453b67c2%20%20.jpg','asd'),(14,'2017-10-19 19:08:08','2017-10-19 19:08:08','2017-10-19 19:08:13','test','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20d65f3280-b500-11e7-8c32-f506453b67c2%20%20.jpg','test'),(15,'2017-10-19 19:08:41','2017-10-19 19:08:41','2017-10-19 19:09:44','asd','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20ea494fb0-b500-11e7-8c32-f506453b67c2%20%20.jpg','asd'),(16,'2017-10-19 19:11:40','2017-10-19 19:11:40','2017-10-19 19:12:12','test','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%2054d74bc0-b501-11e7-8c32-f506453b67c2%20%20.jpg','test'),(17,'2017-10-19 19:12:07','2017-10-19 19:12:07','2017-10-19 19:12:18','tes','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%2065096a00-b501-11e7-8c32-f506453b67c2%20%20.jpg','test'),(18,'2018-02-26 15:51:37','2018-02-26 15:51:37','2018-03-01 15:19:20','Test 1','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20eb81ccf0-1b0c-11e8-b5f7-9b4e4f327c82%20%20.jpg','Test 1'),(19,'2018-03-01 15:19:11','2018-03-01 15:19:11','2018-03-01 15:19:17','aa','https://sanmateoprofileapp.s3.us-west-1.amazonaws.com/test%20%20%27/%27%20e45c9280-1d63-11e8-add8-2734f69ac2ee%20%20.jpg','aa'),(20,'2018-03-02 07:10:33','2018-03-02 07:10:33',NULL,'Test 1','https://sanmateoprofileapp.s3.us-west-1.amazonaws.com/test%20%20%27/%27%20cbf9e410-1de8-11e8-943f-ed95ea7968f1%20%20.png','Test 1');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidents`
--

LOCK TABLES `incidents` WRITE;
/*!40000 ALTER TABLE `incidents` DISABLE KEYS */;
INSERT INTO `incidents` VALUES (1,'2017-08-16 11:45:10','2017-10-05 15:39:15',NULL,'https://www.worksafe.qld.gov.au/injury-prevention-safety/incidents-and-notifications?a=83334###http://www.csu.edu.au/__data/assets/image/0007/1067893/Accident-Incidents.jpg###http://www.planbconsulting.co.uk/content/planb/incident-support-for-teams.jpg',1,14.591882,121.059003,'Robinson Galleria, Ortigas Center, Pasig City','sobrang traffic','blocked','Traffic road report',''),(2,'2017-09-06 13:36:12','2017-10-20 00:05:04',NULL,'https://www.worksafe.qld.gov.au/injury-prevention-safety/incidents-and-notifications?a=83334###http://www.csu.edu.au/__data/assets/image/0007/1067893/Accident-Incidents.jpg###http://www.planbconsulting.co.uk/content/planb/incident-support-for-teams.jpg',1,14.591882,121.059003,'Robinson Galleria, Ortigas Center, Pasig City','sobrang traffic','blocked','Traffic road report',''),(3,'2017-10-08 08:05:14','2017-10-20 00:04:56',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Sun%2C%202017-10-08%2004%3A03%20PM.jpg###',33,1,1,'SM SAN MATEO','Flood In SM SAN MATEO','blocked','Flood report',''),(4,'2017-10-13 02:22:05','2017-10-20 00:04:30',NULL,'',16,1,1,'T Sora','Sample','blocked','Flood report',''),(5,'2017-10-13 02:31:15','2017-10-19 06:34:00',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Fri%2C%202017-10-13%2010%3A30%20AM.jpg###',33,1,1,'San Mateo','Test','blocked','Disaster report',''),(6,'2017-10-13 03:24:29','2017-10-19 06:34:04',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/0b66bb0b-64b9-4d78-8c36-aab601fa33eb.png###',16,1,1,'Congressional','Samaple','blocked','Traffic road report',''),(7,'2017-10-13 03:25:36','2017-10-19 06:34:07',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/7acdd07e-97f1-40b3-9153-4f43194035f6.png###',16,1,1,'Congressional','Traffic','blocked','Traffic road report',''),(8,'2017-10-18 18:37:09','2017-10-19 06:34:11',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2002%3A36%20AM.jpg',31,14.7001238,120.9787616,'Ilang-ilang, Valenzuela, Metro Manila, Philippines','pm','blocked','waste',''),(9,'2017-10-18 18:42:33','2017-10-19 06:34:14',NULL,'',31,14.7001238,120.9787616,'Ilang-ilang, Valenzuela, Metro Manila, Philippines','traffic!','blocked','traffic',''),(10,'2017-10-18 18:43:49','2017-10-19 06:15:20',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/63454595-28a5-4dad-9fb5-0f474a378a0c.png',31,14.7001238,120.9787616,'Ilang-ilang, Valenzuela, Metro Manila, Philippines','shit','blocked','waste',''),(11,'2017-10-19 06:05:26','2017-10-19 07:00:56',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2002%3A04%20p.m..jpg###',16,1,1,'San Mateo','Heavy Traffic','blocked','Traffic road report',''),(12,'2017-10-19 06:06:31','2017-10-19 06:06:31',NULL,'',16,1,1,'San Mateo','sample\n','for approval','traffic',''),(13,'2017-10-19 06:09:07','2017-10-19 08:31:39',NULL,'',16,1,1,'San Mateo','Samples','blocked','traffic',''),(14,'2017-10-19 06:27:07','2017-10-19 07:00:24',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2002%3A18%20p.m..jpg',16,14.6753752,121.0437226,'14.6753752,121.0437226','san mateo','blocked','traffic',''),(15,'2017-10-19 06:34:11','2017-10-19 07:14:34',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2002%3A28%20p.m..jpg',16,14.6760751,121.0433643,'485 Tandang Sora Ave, Tandang Sora, Quezon City, Metro Manila, Philippines','solid waste','blocked','waste',''),(16,'2017-10-19 06:49:08','2017-10-19 07:51:03',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2002%3A48%20p.m..jpg',16,1,1,'Brgy Guitnang Bayan San Mateo Rizal, Philippines','san mateo testing ','blocked','fire',''),(17,'2017-10-19 07:53:21','2017-10-19 08:44:50',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2003%3A51%20PM.jpg',34,14.6941181,121.1182307,'97 Gen Luna St, Guitnang Bayan 1, San Mateo, 1850 Rizal, Philippines','Vehicular accident along Gen. Luna at the Batasan intersection bound to Quezon City involving a long bed truck and a private vehicle.\n\nAssisted by DPOS on duty.','blocked','traffic',''),(18,'2017-10-19 07:55:39','2017-10-19 08:44:47',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2003%3A53%20PM.jpg',34,14.6953757,121.1179957,'2 Aranzazu, Guitnang Bayan 2, San Mateo, 1850 Rizal, Philippines','Vehicular accident along Gen. Luna in front of Dulong Bayan 7Eleven bound to Montalban involving a truck, a bicicle, and a private vehicle.','blocked','traffic',''),(19,'2017-10-19 07:57:34','2017-10-19 08:44:44',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2003%3A56%20PM.jpg',34,14.6953726,121.1179933,'2 Aranzazu, Guitnang Bayan 2, San Mateo, 1850 Rizal, Philippines','May aksidente sa Gen. Luna sa harap ng PNB papuntang Marikina.','blocked','traffic',''),(20,'2017-10-19 07:58:47','2017-10-19 08:44:40',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2003%3A57%20PM.jpg',34,14.6953757,121.1179957,'2 Aranzazu, Guitnang Bayan 2, San Mateo, 1850 Rizal, Philippines','May na-aksidenteng motor sa Gen. Luna-Guinayang papuntang Marikina.','blocked','traffic',''),(21,'2017-10-19 08:04:51','2017-10-19 08:44:34',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2004%3A04%20PM.jpg',34,14.6953726,121.1179933,'2 Aranzazu, Guitnang Bayan 2, San Mateo, 1850 Rizal, Philippines','Illegally dumped solid waste found along Sampaguita Street corner St. Anthony.','blocked','waste',''),(22,'2017-10-19 08:10:06','2017-10-19 08:31:53',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2004%3A09%20PM.jpg',34,14.6952706,121.1180737,'103 Gen. Luna Ave, San Mateo, Rizal, Philippines','fjfkdcnfks','blocked','traffic',''),(23,'2017-10-19 08:44:02','2017-10-19 08:45:46',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2004%3A42%20PM.jpg',35,14.679432,121.109699,'Gen. Luna cor. Batasan Bridge','May bungguan po ng trak at pick up dito lang mismo sa entrada ng Batasan Bridge mula Gen. Luna.','active','traffic',''),(24,'2017-10-19 10:10:42','2017-10-19 10:11:00',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2006%3A09%20PM.jpg',37,14.701102,121.124468,'Gen. Luna cor. Dulong Bayan','May pulang vios na nabunggo ng puting trak. mukhang wala namang nasaktan.','active','traffic',''),(25,'2017-10-19 10:15:16','2017-10-19 10:15:30',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2006%3A13%20PM.jpg',38,14.677478,121.111515,'Gen. Luna Marikina-bound','An L300 delivery truck bumped into a Suzuki van. Almost two lanes are occupied/clogged.','active','traffic',''),(26,'2017-10-19 10:20:56','2017-10-19 10:21:44',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2006%3A18%20PM.jpg',39,14.674041,121.130566,'Sampaguita St.','May basura dito na itinambak na lang ng mga lalaking nakabalot ang mga mukha at naka triciyle.','active','waste',''),(27,'2017-10-19 10:26:24','2017-10-19 10:26:42',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202017-10-19%2006%3A24%20PM.jpg',40,14.707258,121.128985,'Guinayang','Driver swerved to the sidewalk and fell from his motorcycle. Victim appears to be drunk.','active','traffic',''),(28,'2017-10-20 00:21:48','2017-10-20 00:21:48',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Fri%2C%202017-10-20%2008%3A20%20AM.jpg',33,1,1,'San Mateo Puregold','Early morning traffic','for approval','traffic',''),(29,'2018-01-16 01:11:30','2018-01-16 01:11:30',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/56be2ccd-4092-4019-aef6-35d7648b8dd1.png',16,14.6769469,121.0442667,'37 San Miguel Rd, Quezon City, Metro Manila, Philippines','traffic condition along tandang sora.','for approval','traffic',''),(30,'2018-01-22 05:49:35','2018-01-23 03:00:44',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Mon%2C%202018-01-22%2001%3A48%20PM.jpg',34,14.6953624,121.1178739,'San Mateo Square, 103 Gen. Luna Ave, Guitnang Bayan II, San Mateo City, 1850 Rizal, Philippines','test','active','traffic',''),(31,'2018-01-23 05:45:39','2018-01-23 05:45:39',NULL,'',16,1,1,'tandang sora','truck bumaliktad','for approval','traffic',''),(32,'2018-01-23 05:49:48','2018-01-23 05:49:48',NULL,'',16,1,1,'Dolores Ave','test','for approval','waste',''),(33,'2018-01-23 05:58:51','2018-01-23 05:58:51',NULL,'',16,14.6769577,121.0442376,'37 San Miguel Rd, Quezon City, Metro Manila, Philippines','test','for approval','fire',''),(34,'2018-01-23 06:13:01','2018-01-23 06:13:01',NULL,'',16,1,1,'Zuniga St','test','for approval','flood',''),(35,'2018-01-23 12:46:09','2018-01-23 12:46:09',NULL,'',16,1,1,'Test','test','for approval','traffic',''),(36,'2018-01-23 12:48:27','2018-01-23 12:48:27',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/c549cfa4-3102-4bb1-92df-61b00c9c9fe3.png',16,1,1,'Test','test','for approval','traffic',''),(37,'2018-01-24 01:34:05','2018-01-24 01:34:05',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Wed%2C%202018-01-24%2009%3A29%20AM.jpg',16,1,1,'Tandang Sora Ave','\ntest','for approval','traffic',''),(38,'2018-01-25 05:59:36','2018-01-25 06:00:11',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Thu%2C%202018-01-25%2001%3A52%20PM.jpg',16,1,1,'Tsora QC','test\n\n','active','traffic',''),(39,'2018-01-25 06:34:20','2018-01-25 06:34:39',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/42cf312d-bbcf-4b99-be66-5fa008e2604e.png',16,14.6769575,121.0442375,'37 San Miguel Rd, Quezon City, Metro Manila, Philippines','testing location services','active','traffic',''),(40,'2018-01-29 01:22:05','2018-01-29 01:22:27',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/80ab4870-8449-4d12-b929-34f332766922.png',16,1,1,'qc','test\n','active','waste',''),(41,'2018-01-30 02:37:23','2018-02-14 01:56:28',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/baa6e54b-0c0c-4b83-8b26-22fcccdd18f1.png',16,1,1,'Tandang Sora avenue','test (image distorted?)','blocked','fire',''),(42,'2018-01-31 05:02:47','2018-02-14 03:39:53',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/0c812416-c7ff-40e9-9047-5074e18bf12d.png',16,1,1,'quezon city hall','test\n','active','misc',''),(43,'2018-02-05 02:01:38','2018-02-05 02:02:33',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/incident_image_Mon%2C%202018-02-05%2009%3A57%20AM.jpg',16,1,1,'qc','test','active','traffic',''),(44,'2018-02-06 02:45:43','2018-02-06 02:46:04',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/1ae37eeb-6e3a-4b0c-aa14-9e44e68f89fc.png',16,1,1,'Maginhawa, Quezon City','\nTest 1','active','fire',''),(45,'2018-02-14 01:49:37','2018-02-14 01:55:30',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/4db9eb3e-5c91-44da-926a-b502af593019.png',16,1,1,'San Mateo City Hall','Test','active','misc',''),(46,'2018-02-28 02:21:51','2018-02-28 02:21:51',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/dbd3d32f-50b2-4334-b6ec-cb686d9835a6.png',16,1,1,'Maly, San Mateo','Push notifications not yet working. ','for approval','traffic',''),(47,'2018-03-02 07:20:16','2018-03-02 07:20:16',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/37b0a453-33cb-46b0-b222-cea40246a65f.png',16,1,1,'Maly San Mateo','testing push notifications on web admin goodluck\n','for approval','fire',''),(48,'2018-03-08 02:21:14','2018-03-08 02:22:04',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/incidents/98a00bcd-69b9-462b-9e58-226b3baaf1e7.png',45,1,1,'Tandang Sora QC','test\n\n','active','fire',''),(50,'2018-03-09 08:23:29','2018-03-09 08:23:29',NULL,'https://www.worksafe.qld.gov.au/injury-prevention-safety/incidents-and-notifications?a=83334###http://www.csu.edu.au/__data/assets/image/0007/1067893/Accident-Incidents.jpg###http://www.planbconsulting.co.uk/content/planb/incident-support-for-teams.jpg',1,14.591882,121.059003,'Robinson Galleria, Ortigas Center, Pasig City','sobrang traffic','for approval','fire','');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (67,'2017-04-22 12:00:29','2017-04-22 12:00:29','2017-10-19 07:02:59','1111','1111','www.google.com','https://www.gstatic.com/images/branding/googlelogo/2x/googlelogo_color_284x96dp.png','Juan Dela Cruz','active'),(68,'2017-04-22 12:02:05','2017-04-22 12:02:05','2017-10-19 07:03:03','2222','2222','www.google.com','http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/1966.png&w=350&h=350','Lebron James','active'),(69,'2017-04-22 12:10:28','2017-04-22 12:10:28','2017-10-19 07:03:06','3333','3333','www.google.com','http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/110.png&w=350&h=254','Kobe Bryant','active'),(70,'2017-08-30 15:00:32','2017-08-30 15:00:32','2017-10-19 07:03:09','Title','Body test','Youtube.com','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20f1409560-8d93-11e7-982b-5931f3c844f3%20%20.PNG','Russel Bulanon','active'),(71,'2017-10-18 02:40:46','2017-10-18 02:40:46','2017-10-19 07:03:13','Test','Test','google.com','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20bddcae80-b3ad-11e7-90a4-3f5fb484ce0e%20%20.jpg','Leryll Piol','active'),(72,'2017-10-18 02:42:15','2017-10-18 02:42:15','2017-10-19 07:03:17','Test2','Test','Test2','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20f2cdfef0-b3ad-11e7-90a4-3f5fb484ce0e%20%20.jpg','Tester','active'),(73,'2017-10-18 02:43:32','2017-10-18 12:56:56','2017-10-18 12:57:03','News 1111111','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','http://www.openculture.com/2015/03/the-story-of-lorem-ipsum.html','http://cdn8.openculture.com/2015/03/24135800/Cb_szSLUcAAS7M1.png','Papa Bearrrr','active'),(74,'2017-10-18 14:45:06','2017-10-18 14:45:06','2017-10-18 14:51:58','test','test','google.com','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20ed66fc90-b412-11e7-a940-4b04fe84de18%20%20.jpg','rsteam','active'),(75,'2017-10-18 15:06:12','2017-10-18 15:06:22','2017-10-18 15:11:14','Test24','test','bb','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20e0086950-b415-11e7-a940-4b04fe84de18%20%20.jpg','rsteam','active'),(76,'2017-11-28 13:38:32','2017-11-28 13:38:32',NULL,'News 4','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','http://www.openculture.com/2015/03/the-story-of-lorem-ipsum.html','http://cdn8.openculture.com/2015/03/24135800/Cb_szSLUcAAS7M1.png','Papa Bear','active'),(77,'2018-02-26 15:45:18','2018-02-26 15:45:18',NULL,'test 1',' test 1','test 1','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%200a870b20-1b0c-11e8-b5f7-9b4e4f327c82%20%20.jpg','test 1','active'),(78,'2018-03-01 14:36:18','2018-03-01 14:36:18',NULL,'aa','aa','a','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20e5b70120-1d5d-11e8-8a13-b7e614e8dd1d%20%20.jpg','aa','active'),(79,'2018-03-01 14:38:40','2018-03-01 14:38:40',NULL,'aa','aa','aa','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%203a451f60-1d5e-11e8-8a13-b7e614e8dd1d%20%20.jpg','aa','active'),(80,'2018-03-02 06:25:08','2018-03-02 06:25:08',NULL,'Test 2','Test','Test','https://sanmateoprofileapp.s3.us-west-1.amazonaws.com/test%20%20%27/%27%2073fc5050-1de2-11e8-943f-ed95ea7968f1%20%20.png','Test','active');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officials`
--

LOCK TABLES `officials` WRITE;
/*!40000 ALTER TABLE `officials` DISABLE KEYS */;
INSERT INTO `officials` VALUES (1,'2016-08-27 03:31:52','2016-08-27 03:31:52',NULL,'Rodrigo','Duterte','Digong','Mayor',1,'Kill Them All','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/officials/official_profile_pic_Sat%2C%202016-08-27%2011%3A31%20AM.jpg','active'),(2,'2016-08-27 03:32:44','2016-08-27 03:32:44',NULL,'Ronald','Dela Rosa','Bato','Vice Mayor',2,'Shoot Them All','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/officials/official_profile_pic_Sat%2C%202016-08-27%2011%3A32%20AM.jpg','active'),(3,'2016-09-01 13:12:17','2016-09-01 13:12:17',NULL,'James','Yap','Big Game','Shooting Guard',3,'Grand Slam','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/officials/official_profile_pic_Thu%2C%202016-09-01%2009%3A11%20PM.jpg','active'),(4,'2016-09-01 14:35:16','2016-09-01 14:35:16',NULL,'Tim','Cone','Coa H','Coach',4,'Dddd','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/officials/official_profile_pic_Thu%2C%202016-09-01%2010%3A34%20PM.jpg','active'),(5,'2017-10-18 02:56:08','2017-10-18 02:56:08',NULL,'Test','Test','Test','Tester',5,'google.com','','active'),(6,'2017-10-18 02:56:19','2017-10-18 02:56:19',NULL,'Test','Test','Test','Tester',6,'google.com','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20e41d8cc0-b3af-11e7-90a4-3f5fb484ce0e%20%20.jpg','active'),(7,'2017-10-18 02:58:46','2017-10-18 02:58:46',NULL,'Test','Test','Test','Test3r',8,'google.com','','active'),(8,'2017-10-18 11:23:36','2017-10-18 11:23:36',NULL,'Paolo','Duterte','Digong','Vice Mayor',9,'Lorem ipsum dolor','http://sa.kapamilya.com/absnews/abscbnnews/media/2017/news/02/28/duterte-malaysia-rtr.jpg','active'),(9,'2017-10-18 11:43:43','2017-10-18 11:43:43',NULL,'test','test','test','Tester',10,'google.com','','active'),(10,'2018-02-26 15:50:46','2018-02-26 15:50:46',NULL,'test 1','test 1','test te','Cong',99,'na','https://sanmateoprofileapp.s3-us-west-1.amazonaws.com/test%20%20%27/%27%20ce014f70-1b0c-11e8-b5f7-9b4e4f327c82%20%20.jpg','active'),(11,'2018-03-02 06:38:59','2018-03-02 06:38:59',NULL,'Test 11','Test 11','Test 11','Test 11',88,'Test 11','https://sanmateoprofileapp.s3.us-west-1.amazonaws.com/test%20%20%27/%27%2062cd70a0-1de4-11e8-943f-ed95ea7968f1%20%20.png','active');
/*!40000 ALTER TABLE `officials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `qry_incident_reports`
--

DROP TABLE IF EXISTS `qry_incident_reports`;
/*!50001 DROP VIEW IF EXISTS `qry_incident_reports`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `qry_incident_reports` (
  `uploader_id` tinyint NOT NULL,
  `uploader_name` tinyint NOT NULL,
  `uploader_email` tinyint NOT NULL,
  `uploader_contact_no` tinyint NOT NULL,
  `uploader_gender` tinyint NOT NULL,
  `uploader_address` tinyint NOT NULL,
  `uploader_pic_url` tinyint NOT NULL,
  `reporter_id` tinyint NOT NULL,
  `reporter_name` tinyint NOT NULL,
  `reporter_email` tinyint NOT NULL,
  `reporter_address` tinyint NOT NULL,
  `reporter_contact_no` tinyint NOT NULL,
  `reporter_gender` tinyint NOT NULL,
  `reporter_pic_url` tinyint NOT NULL,
  `incident_report_id` tinyint NOT NULL,
  `incident_id` tinyint NOT NULL,
  `report_status` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `remarks` tinyint NOT NULL,
  `incident_type` tinyint NOT NULL,
  `incident_description` tinyint NOT NULL,
  `incident_images` tinyint NOT NULL,
  `incident_status` tinyint NOT NULL,
  `incident_address` tinyint NOT NULL,
  `incident_latitude` tinyint NOT NULL,
  `incident_longitude` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `qry_incidents`
--

DROP TABLE IF EXISTS `qry_incidents`;
/*!50001 DROP VIEW IF EXISTS `qry_incidents`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `qry_incidents` (
  `reporter_id` tinyint NOT NULL,
  `reporter_name` tinyint NOT NULL,
  `reporter_contact_no` tinyint NOT NULL,
  `reporter_email` tinyint NOT NULL,
  `reporter_address` tinyint NOT NULL,
  `reporter_pic_url` tinyint NOT NULL,
  `incident_id` tinyint NOT NULL,
  `images` tinyint NOT NULL,
  `latitude` tinyint NOT NULL,
  `longitude` tinyint NOT NULL,
  `incident_address` tinyint NOT NULL,
  `incident_description` tinyint NOT NULL,
  `incident_status` tinyint NOT NULL,
  `incident_type` tinyint NOT NULL,
  `remarks` tinyint NOT NULL,
  `incident_date_reported` tinyint NOT NULL,
  `incident_date_updated` tinyint NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `storm_watches`
--

DROP TABLE IF EXISTS `storm_watches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storm_watches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storm_watches`
--

LOCK TABLES `storm_watches` WRITE;
/*!40000 ALTER TABLE `storm_watches` DISABLE KEYS */;
INSERT INTO `storm_watches` VALUES (1,'2018-01-03 15:33:49','2018-01-03 15:33:49',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+01+-+Sunny.jpg','sample'),(2,'2018-01-23 00:37:19','2018-01-23 00:37:19',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+04+-+Light-Heavy+Thunderstorms.jpg','sample 2'),(3,'2018-01-23 05:02:15','2018-01-23 05:02:15',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Cloudy'),(4,'2018-01-23 07:35:19','2018-01-23 07:35:19',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+04+-+Light-Heavy+Thunderstorms.jpg','Thunderstorm'),(5,'2018-01-24 05:11:10','2018-01-24 05:11:10',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+03+-+Partly+Cloudy.jpg','Cloudy'),(6,'2018-01-25 05:45:05','2018-01-25 05:45:05',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+01+-+Clear+Skies.jpg','Test'),(7,'2018-01-26 00:41:54','2018-01-26 00:41:54',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Sunny'),(8,'2018-01-29 01:31:40','2018-01-29 01:31:40',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+04+-+Overcast+-+Complete+Cloud+Cover.jpg','Cloudy'),(9,'2018-01-30 02:44:12','2018-01-30 02:44:12',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Sunny'),(10,'2018-01-31 06:07:37','2018-01-31 06:07:37',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+04+-+Overcast+-+Complete+Cloud+Cover.jpg','Cloudy'),(11,'2018-01-31 06:08:38','2018-01-31 06:08:38',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+01+-+Sunny.jpg','Test'),(12,'2018-01-31 06:44:20','2018-01-31 06:44:20','2018-01-31 06:48:04','undefined','Sample'),(13,'2018-01-31 06:48:42','2018-01-31 06:48:42',NULL,'https://www.google.com.ph/images/branding/googlelogo/2x/googlelogo_color_120x44dp.png','Sample'),(14,'2018-01-31 07:07:45','2018-01-31 07:07:45','2018-02-06 02:25:33','zcdsdcsdczxdczx','fvgdfvg'),(15,'2018-02-05 02:06:10','2018-02-05 02:06:10',NULL,'Test','Test'),(16,'2018-02-06 02:24:54','2018-02-06 02:24:54','2018-02-13 06:17:23','Test','test 1'),(17,'2018-02-27 00:49:20','2018-02-27 00:49:20',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+01+-+Sunny.jpg','Test'),(18,'2018-02-28 02:16:04','2018-02-28 02:16:04',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+03+-+Partly+Cloudy.jpg','Test'),(19,'2018-03-08 02:37:22','2018-03-08 02:38:06',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+04+-+Overcast+-+Complete+Cloud+Cover.jpg','- 24 Hour(Tomorrow morning): 845 km East of Tuguegarao City, Cagayan(18.7°N, 129.6°E) - 48 Hour(Saturday morning):830 km East of Basco, Batanes(21.3°N, 129.9°E) - 72 Hour(Sunday morning): 1,045 km East Northeast of Basco, Batanes(25.1°N, 130.8°E) - 96 Hou');
/*!40000 ALTER TABLE `storm_watches` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2016-06-23 14:39:30','2016-07-19 14:20:24',NULL,'Russel','Bulanon','rsbulanon@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','3uILg5vjcTyFbGIP2cY1tLPaKQ==',1,'Male','http://vignette1.wikia.nocookie.net/logopedia/images/b/bb/Purefoods.jpg/revision/latest?cb=20150506051734'),(2,'2016-06-30 15:47:24','2016-06-30 15:47:24',NULL,'Jovel','Quiamco','jvlquiamco@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','72o5JSmZkX7N_xtDt6vPOLDJQqo=',NULL,'Male','http://www.gravatar.com/avatar/2ae05db25b0a42667f488e7763c51c46?d=identicon'),(3,'2016-06-30 15:52:02','2016-06-30 15:52:02',NULL,'JovsQ','Quiamco','dynamic.jvquiamco@gmail.com','Hagonoy, Bulacan','09321622825','active','superadmin','DJ7JeEi9uhSNC2FGCkSO1hR5-RU=',NULL,'Male','http://www.gravatar.com/avatar/46aa3bb21ff083c894ea64e0ded1ef77?d=identicon'),(4,'2016-07-04 12:04:58','2016-07-04 12:04:58',NULL,'Ned','Flanders','nedflanders@gmail.com','Malolos, Bulacan','09321622825','active','superadmin','CExyAJehUZY2SsJGlRQtf4zBaw==',NULL,'Male','http://www.gravatar.com/avatar/b658ab705b1f30f149666a6e21fbe6ec?d=identicon'),(5,'2016-07-06 02:43:15','2016-07-06 02:58:57',NULL,'Maud','Flanders','maud@flanders.com','Hagonoy, Bulacan','09321622825','active','Regular User','gIxjuUEZv4-TSHqmJCLWHFpXwA==',NULL,'Female','http://www.gravatar.com/avatar/63921e20d866864e1b42aaa973399e8f?d=identicon'),(6,'2016-07-06 03:09:10','2016-07-06 03:09:10',NULL,'Jovs','Quiamco','jvquiamco@dynamicobjx.com','Val','09123456789','active','Regular User','ozVWginfwOIZn9wkC0VDZGIJOC8=',NULL,'Male','http://www.gravatar.com/avatar/e3d9263537be9a38adf3ab2d4d8f7547?d=identicon'),(7,'2016-07-14 16:04:55','2016-07-14 17:05:26',NULL,'Aa','Aa','aa@gmail.com','Aa','Aa','active','Regular User','6eQn8egLIV-GIb4U8v5EokJb',NULL,'Male','http://www.gravatar.com/avatar/3979576bcdcbd166d005a5b225e1bc52?d=identicon'),(8,'2016-07-18 11:27:27','2016-09-03 15:02:43',NULL,'Lebron','James','lebron@gmail.com','San Pedro Hagonoy, Bulacan','09321622825','active','Regular User','QXH9vu9sQ4C3EXDbdaboPmqdTw==',NULL,'Male','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/profilepics/6836e942-b0c4-43eb-997d-c8a7fcdde7d9.png'),(10,'2017-04-22 09:49:36','2017-04-22 09:49:36',NULL,'Russel','Bulanon','rbulanon@exist.com','Hagonoy, Bulacan','09123456789','active','Regular User','nf-i-8xJr8r0gWwmPyoFTz9Ov2nHrg==',NULL,'Male','http://www.gravatar.com/avatar/55ea5db6cb869bf27ff3e8ba123882ca?d=identicon'),(11,'2017-04-22 09:53:44','2017-04-22 09:53:44',NULL,'Bb','Bb','bb@gmail.com','Bb','99','active','Regular User','tT-mIt3XtWqAdL5rVPu_qeba',NULL,'Male','http://www.gravatar.com/avatar/70cb72e6687a8532f00f3c360c15941a?d=identicon'),(12,'2017-04-22 12:29:59','2017-04-26 12:29:11',NULL,'Jovel','Quiamco','jovs.play01@gmail.com','Valenzuela','09950815097','active','Regular User','gF8wW1S4oYItZtYWkcEFGIA4jcKqmQ==',NULL,'Male','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/profilepics/cce69913-ebef-40a4-b4c1-8f6bde560daa.png'),(13,'2017-04-23 04:55:23','2017-04-23 04:55:23',NULL,'jovs','ffd','jvl@gmail.com','fffg','8885','active','Regular User','MVxWUgvfwozf-JGkfFeR2FGBOqZRWA==',NULL,'Male','http://www.gravatar.com/avatar/443f9fb1bab2aceda25b07af1f161b5f?d=identicon'),(14,'2017-04-27 05:37:40','2017-04-27 05:37:40',NULL,'Marvin','Tabora','marvinvtabora23@gmail.com','Quezon City Cubao','09754348976','active','Regular User','ttoKYjmhzEFddRrSI6ErRQid2smDOw==',NULL,'Male','http://www.gravatar.com/avatar/d75a752261d6887f83f640ffd42422f6?d=identicon'),(15,'2017-04-27 05:42:45','2017-04-27 05:42:45',NULL,'Jun','Dc','jun@gmail.com','Manila','09062008844','active','Regular User','tdx6kS140VlZvG5u5D_2r3n4jrFE',NULL,'Male','http://www.gravatar.com/avatar/0ef92543981a081bb0d7345effcd6711?d=identicon'),(16,'2017-05-03 06:37:37','2018-02-28 03:54:53',NULL,'San Mateo','App','sanmateoapp@gmail.com','Manila','09062008844','active','Regular User','pC9DdRvmyqobZJ6eEFDLhAuvpM0_gxUjgQ==',NULL,'Male','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/profilepics/94f924d1-a2b8-4136-91e0-e027365a8c94.png'),(17,'2017-05-10 01:54:22','2017-05-10 01:54:22',NULL,'Mar','Tab','marvinvtabora24@gmail.com','Quezon City','09754348976','active','Regular User','ByZSlMIl4mt4HpO7BAaxPfH7yITZpg==',NULL,'Male','http://www.gravatar.com/avatar/abd606a797805f2af8430de6b6f1f67d?d=identicon'),(18,'2017-05-10 03:52:22','2017-05-10 03:52:22',NULL,'Jun','Dela Chica','junrio@gmail.com','Manila','09062008844','active','Regular User','PwbUMUQMI2HKJ6oHCH21lHEbt-37riI=',NULL,'Male','http://www.gravatar.com/avatar/76091bf65d28350f402305d77441a353?d=identicon'),(19,'2017-07-10 08:15:43','2017-07-10 08:15:43',NULL,'Jon','Jalit','jondarchangel@gmail.com','San Mateo','09175796659','active','Regular User','Ki_2_2r6Hqes7FHXZMjrMaAA1DU=',NULL,'Male','http://www.gravatar.com/avatar/f7d5c5b48b660fddb0895cbce8b0e192?d=identicon'),(20,'2017-07-29 13:58:05','2017-07-29 13:58:05',NULL,'Russel','Bulanon','russel@pogi.com','Dyan lang','09051253400','active','Regular User','W7wyID7omYG-CK0bRFbO6u3clRo6nj1T',NULL,'Male','http://www.gravatar.com/avatar/b5d2102b03a434ee8a9a6d2ae20fda05?d=identicon'),(21,'2017-08-02 18:11:47','2017-08-02 18:11:47',NULL,'Russel','Bulanon','russel@test.com','Tst','09123456789','active','Regular User','N_0QHrkeP-Dna-DJ3DSYV9gzER_O9DWK',NULL,'Male','http://www.gravatar.com/avatar/281c5cb5fd6da911467b39a187b6d177?d=identicon'),(22,'2017-08-07 09:18:37','2017-08-07 09:18:37',NULL,'Jovel','Quiamco','jovs.play02@gmail.com','Valenzuela City','09950815097','active','Regular User','6oaGGfmbxJKICMVR61Oamk7AbSqpYyVI',NULL,'Male','http://www.gravatar.com/avatar/2f01b22023052561dc72e0c4ece55dcc?d=identicon'),(23,'2017-08-07 09:33:06','2017-08-07 09:33:06',NULL,'Dhdhdjdd','Dhdhddhf','jovs.play03@gmail.com','Dyhhdd','6868686595','active','Regular User','xAG-nNhm2VobPh2G7oaFS_fw0wcarcOe',NULL,'Male','http://www.gravatar.com/avatar/c16de7dae986226c55e9ecffe52f98d2?d=identicon'),(24,'2017-08-28 11:35:37','2017-08-28 11:35:37',NULL,'Jovs','Quiamco','jovs.play04@gmail.com','Valenzuela City','09950815097','active','Regular User','xaI4NmEWpDWsPF4em_eKxMmaH43hCraLHMBy3A==',NULL,'Male','http://www.gravatar.com/avatar/10696514d727c44ead8800d771ff8d3a?d=identicon'),(25,'2017-08-28 11:49:36','2017-08-28 11:49:36',NULL,'Jdd','Dddjd','jovs.play05@gmail.com','Eshdhdd','686868','active','Regular User','8uC9YvRtRNQuOsJcEOSDd3z-GCHTw-4B',NULL,'Male','http://www.gravatar.com/avatar/311f3ade4d6cf3465cc9f7bba823457f?d=identicon'),(26,'2017-08-29 02:14:52','2017-08-29 02:14:52',NULL,'Leryll','Piol','leryllouiep@gmail.com','Bulacan','09123456789','active','Regular User','Mn8FqLo4p_XRnR7ylxuaiA9w8QztzemA',NULL,'male','http://www.gravatar.com/avatar/abdb5eb81fdee31e143da0681aece8e4?d=identicon'),(27,'2017-08-29 03:37:48','2017-08-29 03:37:48',NULL,'Admin','User','admin@gmail.com','Bulacan','09123456789','active','Admin','Ed0-2mK9ZvDAMa3b8SDICk0w8vWrGWxu',NULL,'male','http://www.gravatar.com/avatar/75d23af433e0cea4c0e45a56dba18b30?d=identicon'),(28,'2017-08-29 11:53:27','2017-08-29 11:53:27',NULL,'Russel','Bulanon','russel@pogiforever.com','rasdsadas','09051253499','active','1','LCmBYa2lECbi-l2ZjCtIG3opirpIdb_v',NULL,'Male','http://www.gravatar.com/avatar/6fe88163fff7c58769957b5515cf6a6b?d=identicon'),(29,'2017-08-29 12:31:54','2017-08-29 12:31:54',NULL,'russel','russel','russel@russel.com','russel','23123','active','1','47WD_pz_mkeMIAy89a7QilkKPLpZO4Xj',NULL,'Female','http://www.gravatar.com/avatar/09154bca0d9febdbc24fe4837835a91a?d=identicon'),(30,'2017-08-29 12:34:13','2017-08-29 12:34:13',NULL,'russel','russel','russel@lesusa.com','russel','russel','active','1','zJqIwX7O2e7qUgaMaN0mCPfUtT6pDTmC',NULL,'Male','http://www.gravatar.com/avatar/4cf6ef9a4afb6e52a6a9763aac2f2942?d=identicon'),(31,'2017-09-13 04:38:01','2017-09-13 04:38:01',NULL,'Jovel','Quiamco','jovel@ideyatech.com','Valenzuela','09950815097','active','Regular User','wcShpRI8F29chDSvIvh4qDhOSJYk3rm1Zt-8BQ==',NULL,'Male','http://www.gravatar.com/avatar/00ece5276530dc28aaa9adf0780474a8?d=identicon'),(32,'2017-09-13 16:47:39','2017-09-13 16:47:39',NULL,'adds','asdas','test@test.com','asd','add','active','1','Oy5vPVqUji0a6p4qwGXoo3qwYFayshXx',NULL,'Male','http://www.gravatar.com/avatar/b642b4217b34b1e8d3bd915fc65c4452?d=identicon'),(33,'2017-10-08 08:00:55','2018-01-23 13:47:05',NULL,'Jon','Jalit','rsjalit@avinnovz.com','San Mateo','09175796659','active','Regular User','dTwmNyoZHtsus1vYpt5CccQxjPN_uR1g',NULL,'Male','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/profilepics/8b7ba320-bed2-4e2a-9513-622784de7865.png'),(34,'2017-10-19 07:32:09','2017-10-19 07:32:09',NULL,'Ritzmond','David','tzi.david@outlook.com','Ampid I','09178055130','active','Regular User','Acx4urI9jJmtJbVFPydiceTj_zxXJ-Tisg==',NULL,'Male','http://www.gravatar.com/avatar/849dd3ba01cdbbd08c32c5482389269b?d=identicon'),(35,'2017-10-19 08:35:36','2017-10-19 08:35:36',NULL,'Claire','Lacsamana','claire.lacsamana@gmail.com','Guitnangbayan','09171234567','active','Regular User','LxJeMEMpX0Mz4HUKA10AxKeEt48myfJj',NULL,'Female','http://www.gravatar.com/avatar/143d4182b2444ce239bd5b19a15c9db6?d=identicon'),(36,'2017-10-19 08:46:20','2017-10-19 08:46:20',NULL,'Anthony','dela Paz','athony@gmail.com','Ampid II','09171234567','active','Regular User','2DFWWSzs7zLdoxL_9awsghLQ2tIUNYyF',NULL,'Male','http://www.gravatar.com/avatar/d02ec1f99f53f92f67de44084b6bb36c?d=identicon'),(37,'2017-10-19 10:07:04','2017-10-19 10:07:04',NULL,'Anthony','Dela Paz','tonypaz@gmail.com','Guitnangbayan I','09171234567','active','Regular User','EyRfSP-ClhjbmPhp3rRBwask-XmjwagG',NULL,'Male','http://www.gravatar.com/avatar/18fb4d8904f5cb9035e92ef36f8e9fb2?d=identicon'),(38,'2017-10-19 10:12:26','2017-10-19 10:12:26',NULL,'Emilia','Garcia','egarcia@gmail.com','Pintung Bukawe','09171234567','active','Regular User','TbdgB5tlcvC0qhtAKwJ3s237UVM5GS_4',NULL,'Female','http://www.gravatar.com/avatar/a9f1f533e1ec9d0049c96f174a489e15?d=identicon'),(39,'2017-10-19 10:17:09','2017-10-19 10:17:09',NULL,'Agapeto','Bautista','agabautista@gmail.com','Maly','09171234567','active','Regular User','IH9iBYiRnPcHz6_COPKEyTwdfqHZUy8j',NULL,'Male','http://www.gravatar.com/avatar/1c93507b925a1c6c7b309844edf8833b?d=identicon'),(40,'2017-10-19 10:23:04','2017-10-19 10:23:04',NULL,'Jessica','Carmona','jcarmona@gmail.com','Gulod Malaya','09191234567','active','Regular User','yNDQLC1pHLOM5qELLTQsuQq5biMe0aAn',NULL,'Female','http://www.gravatar.com/avatar/311775455dc1f105bf5f14ac00f3257c?d=identicon'),(41,'2017-10-19 15:44:34','2017-10-19 15:44:34',NULL,'Aaaa','Aaaa','ned@flanders.com','Aaaa','4444','active','Regular User','lhWZjZJkg7P7gzoKCDrMLYqUPEpvAeSH',NULL,'Male','http://www.gravatar.com/avatar/ed2209b7729aa1f98a7b2b27a4a38302?d=identicon'),(42,'2017-12-04 12:18:01','2017-12-04 12:18:01',NULL,'Jovel','Quiamco','smeagolnizza@gmail.com','Valenzuela','09950815097','active','Regular User','ol3Wl4FYdahajEnPbmaTjvoOnH9tkP-FR4M7xQ==',NULL,'Male','http://www.gravatar.com/avatar/50c1f76baa462108b782594c8227f21d?d=identicon'),(43,'2017-12-17 07:07:33','2017-12-17 15:20:33',NULL,'Ccccc','Cccc','cc@gmail.com','Cc','88','active','Regular User','_3ur6-lBDa9ZW9kMfQiKIh6jfMIGwtb7',NULL,'Male','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/profilepics/2ea8460b-a804-4f16-89ab-21e5ff3d37a0.png'),(44,'2018-02-27 02:11:33','2018-02-27 02:11:33',NULL,'Avinnovz','Technologies','projects.avinnovztech@gmail.com','Tandang Sora, QC','09454136179','active','Regular User','QNc-YR2oiCIb_DDTAHv4V3IsGb4sBZagZsMx',NULL,'Male','http://www.gravatar.com/avatar/6ad5b8a68a0775940bae5438a2638385?d=identicon'),(45,'2018-02-27 03:21:25','2018-02-27 03:21:25',NULL,'Dennis','Lindez','dlindez@ymail.com','Maly, San Mateo','09454136179','active','Regular User','QPE8KGg1wHTTSe0VBJnY7MEXniXMr2TFHjg1',NULL,'Male','http://www.gravatar.com/avatar/0037ec3bca5b9a22ac6ae4914ba209c8?d=identicon'),(46,'2018-03-04 12:39:39','2018-03-04 12:39:39',NULL,'Aaa','Aaa','roselle@gmail.com','Aaaa','444','active','Regular User','zJeJbEDnvxGObjp-NKvAKK3ks4iOF77j',NULL,'Male','http://www.gravatar.com/avatar/a74d844af50b2754700708a24ac2ec2e?d=identicon'),(47,'2018-03-06 08:05:12','2018-03-06 08:05:12',NULL,'Jon','Salon','rogelio-jalit@outlook.com','rogelio-jalit@outlook.com','09984138995','active','Regular User','EiOhRQSG8dPF4kHYKiKtm5a20WT90Ohm',NULL,'Male','http://www.gravatar.com/avatar/e2c1e4f3c63fb298fe1b0f253ca198bc?d=identicon'),(48,'2018-03-08 03:00:44','2018-03-08 03:00:44',NULL,'Dennis','Tester','dennislindez@gmail.com','QC','09454136179','active','Regular User','w7jnW9OJN_fqpLnipkqt77XlhugVOzIsC43L',NULL,'Male','http://www.gravatar.com/avatar/af807eddf187f46f0dad770d9d3dd585?d=identicon');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_levels`
--

LOCK TABLES `water_levels` WRITE;
/*!40000 ALTER TABLE `water_levels` DISABLE KEYS */;
INSERT INTO `water_levels` VALUES (1,'2017-08-16 12:16:22','2017-08-16 12:16:22',NULL,'San Mateo Public Market',20,'Critical'),(2,'2017-08-30 15:49:18','2017-08-30 15:49:18','2017-10-19 03:32:30','Palengke',21,'Critical'),(3,'2017-10-11 08:00:32','2017-10-11 08:00:32',NULL,'San Mateo Public Market',18,'Alert'),(4,'2017-10-11 08:01:42','2017-10-11 08:01:42',NULL,'San Mateo Public Market',21,'Critical'),(5,'2017-10-11 08:02:09','2017-10-11 08:02:09','2017-10-18 13:53:48','Palengke',18,'Alert'),(6,'2017-10-18 13:50:57','2017-10-18 13:50:57','2017-10-18 13:52:06','San Mateo Public Market',30,'Critical'),(7,'2017-10-18 14:26:59','2017-10-18 14:26:59',NULL,'San Mateo Public Market',40,'Critical'),(8,'2017-10-19 02:38:12','2017-10-19 02:38:12',NULL,'San Mateo Public Market',15,'Alert'),(9,'2017-10-19 02:39:16','2017-10-19 02:39:16',NULL,'Batasan-San Mateo Bridge',16,'Alert'),(10,'2017-10-19 03:33:02','2017-10-19 03:33:02',NULL,'Batasan-San Mateo Bridge',17,'Alert'),(11,'2017-10-19 08:14:05','2017-10-19 08:14:05',NULL,'Batasan-San Mateo Bridge',16,'Alert'),(12,'2017-10-19 08:14:34','2017-10-19 08:14:34',NULL,'San Mateo Public Market',18,'Alert'),(13,'2017-10-19 16:56:34','2017-10-19 16:56:34',NULL,'Montalban',80,'Critical'),(14,'2017-10-19 18:54:13','2017-10-19 18:54:13','2017-10-19 18:54:30','Montalban',100,'Critical'),(15,'2017-10-19 18:55:30','2017-10-19 18:55:30','2017-10-19 18:55:35','Montalban',90,'Critical'),(16,'2017-10-19 19:00:45','2017-10-19 19:00:45','2017-10-19 19:00:52','Montalban',213,'Critical'),(17,'2017-10-19 19:13:55','2017-10-19 19:13:55','2017-10-19 19:14:01','San Mateo Public Market',122,'Critical'),(18,'2017-10-20 00:07:19','2017-10-20 00:07:19',NULL,'Batasan-San Mateo Bridge',16,'Alert'),(19,'2017-10-20 00:07:47','2017-10-20 00:07:47',NULL,'Montalban',18,'Alert'),(20,'2018-01-24 00:41:03','2018-01-24 00:41:03',NULL,'Batasan-San Mateo Bridge',18,'Alert'),(21,'2018-01-25 05:39:35','2018-01-25 05:39:35',NULL,'Montalban',80,'Critical'),(22,'2018-01-26 00:35:00','2018-01-26 00:35:00',NULL,'Batasan-San Mateo Bridge',50,'Critical'),(23,'2018-01-26 00:35:10','2018-01-26 00:35:10',NULL,'Montalban',55,'Critical'),(24,'2018-01-29 01:24:17','2018-01-29 01:24:17',NULL,'Batasan-San Mateo Bridge',35,'Critical'),(25,'2018-01-29 01:24:26','2018-01-29 01:24:26',NULL,'Montalban',40,'Critical'),(26,'2018-01-30 02:40:06','2018-01-30 02:40:06',NULL,'Batasan-San Mateo Bridge',50,'Critical'),(27,'2018-01-30 02:40:15','2018-01-30 02:40:15',NULL,'Montalban',55,'Critical'),(28,'2018-02-05 02:07:56','2018-02-05 02:07:56',NULL,'Batasan-San Mateo Bridge',30,'Critical'),(29,'2018-02-05 02:08:10','2018-02-05 02:08:10',NULL,'Montalban',31,'Critical'),(30,'2018-02-06 02:23:22','2018-02-06 02:23:22',NULL,'Batasan-San Mateo Bridge',33,'Critical'),(31,'2018-02-06 02:23:32','2018-02-06 02:23:32',NULL,'Montalban',34,'Critical'),(32,'2018-02-13 02:02:02','2018-02-13 02:02:02',NULL,'Batasan-San Mateo Bridge',35,'Critical'),(33,'2018-02-13 02:02:11','2018-02-13 02:02:11',NULL,'Montalban',35,'Critical'),(34,'2018-02-28 02:15:06','2018-02-28 02:15:06',NULL,'Batasan-San Mateo Bridge',20,'Critical'),(35,'2018-02-28 02:15:14','2018-02-28 02:15:14',NULL,'Montalban',20,'Critical'),(36,'2018-03-08 02:50:32','2018-03-08 02:50:32',NULL,'Batasan-San Mateo Bridge',11,'Alert'),(37,'2018-03-08 02:50:43','2018-03-08 02:50:43',NULL,'Montalban',11,'Alert');
/*!40000 ALTER TABLE `water_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_menus`
--

DROP TABLE IF EXISTS `weather_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_menus`
--

LOCK TABLES `weather_menus` WRITE;
/*!40000 ALTER TABLE `weather_menus` DISABLE KEYS */;
INSERT INTO `weather_menus` VALUES (1,'2017-12-27 13:30:06','2017-12-27 13:30:06',NULL,'BG_Sunny','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+01+-+Sunny.jpg','BG'),(2,'2017-12-27 13:37:16','2017-12-27 13:37:16',NULL,'BG_Mostly_Sunny','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+02+-+Mostly+Sunny+-+Light+Haze.jpg','BG'),(3,'2017-12-27 13:37:38','2017-12-27 13:37:38',NULL,'BG_Partly_Cloudy','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+03+-+Partly+Cloudy.jpg','BG'),(4,'2017-12-27 13:39:52','2017-12-27 13:39:52',NULL,'BG_Day_4','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+04+-+Overcast+-+Complete+Cloud+Cover.jpg','BG'),(5,'2017-12-27 13:40:32','2017-12-27 13:40:32',NULL,'BG_Day_5','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+05+-+Cloudy+with+Mist+-+Fog.jpg\n','BG'),(6,'2017-12-27 13:40:50','2017-12-27 13:40:50',NULL,'BG_Day_6','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+06+-+Windy+-+Cloudy+with+Strong+Winds.jpg','BG'),(7,'2017-12-27 13:42:03','2017-12-27 13:42:03',NULL,'BG_Day_7','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+07+-+Light+Rain.jpg','BG'),(8,'2017-12-27 13:42:21','2017-12-27 13:42:21',NULL,'BG_Day_8','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+08+-+Heavy+Rain.jpg','BG'),(9,'2017-12-27 13:42:38','2017-12-27 13:42:38',NULL,'BG_Day_9','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+09+-+Thunderstorm.jpg','BG'),(10,'2017-12-27 13:43:45','2017-12-27 13:43:45',NULL,'BG_Night_1','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+01+-+Clear+Skies.jpg','BG'),(11,'2017-12-27 13:44:04','2017-12-27 13:44:04',NULL,'BG_Night_2','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+02+-+Partly+Cloudy+-+Complete+Cloud+Cover.jpg','BG'),(12,'2017-12-27 13:44:16','2017-12-27 13:44:16',NULL,'BG_Night_3','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+03+-+Light-Heavy+Rains.jpg','BG'),(13,'2017-12-27 13:44:29','2017-12-27 13:44:29',NULL,'BG_Night_4','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+04+-+Light-Heavy+Thunderstorms.jpg','BG'),(14,'2017-12-27 13:44:44','2017-12-27 13:44:44',NULL,'BG_Night_5','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','BG'),(15,'2017-12-27 13:46:06','2017-12-27 13:46:06',NULL,'ICON_Day_1','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+01.png','icon'),(16,'2017-12-27 13:46:29','2017-12-27 13:46:29',NULL,'ICON_Day_2','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+02.png','icon'),(17,'2017-12-27 13:46:43','2017-12-27 13:46:43',NULL,'ICON_Day_3','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+03.png','icon'),(18,'2017-12-27 13:47:12','2017-12-27 13:47:12',NULL,'ICON_Day_4','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+04.png','icon'),(19,'2017-12-27 13:47:31','2017-12-27 13:47:31',NULL,'ICON_Day_5','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+05.png','icon'),(20,'2017-12-27 13:47:37','2017-12-27 13:47:37',NULL,'ICON_Day_6','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+06.png','icon'),(21,'2017-12-27 13:48:14','2017-12-27 13:48:14',NULL,'ICON_Day_7','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+07.png','icon'),(22,'2017-12-27 13:48:21','2017-12-27 13:48:21',NULL,'ICON_Day_8','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+08.png','icon'),(23,'2017-12-27 13:48:26','2017-12-27 13:48:26',NULL,'ICON_Day_9','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+09.png','icon'),(24,'2017-12-27 13:48:33','2017-12-27 13:48:33',NULL,'ICON_Day_10','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+10.png','icon'),(25,'2017-12-27 13:48:38','2017-12-27 13:48:38',NULL,'ICON_Day_11','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+11.png','icon'),(26,'2017-12-27 13:50:53','2017-12-27 13:50:53',NULL,'ICON_Day_12','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+12.png','icon'),(27,'2017-12-27 13:50:59','2017-12-27 13:50:59',NULL,'ICON_Day_13','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+13.png','icon'),(28,'2017-12-27 13:51:05','2017-12-27 13:51:05',NULL,'ICON_Day_14','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+14.png','icon'),(29,'2017-12-27 13:51:12','2017-12-27 13:51:12',NULL,'ICON_Day_15','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+15.png','icon'),(30,'2017-12-27 13:55:41','2017-12-27 13:55:41',NULL,'ICON_Night_1','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+01.png','icon'),(31,'2017-12-27 13:55:46','2017-12-27 13:55:46',NULL,'ICON_Night_2','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+02.png','icon'),(32,'2017-12-27 13:55:54','2017-12-27 13:55:54',NULL,'ICON_Night_3','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+03.png','icon'),(33,'2017-12-27 13:55:59','2017-12-27 13:55:59',NULL,'ICON_Night_4','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+04.png','icon'),(34,'2017-12-27 13:56:05','2017-12-27 13:56:05',NULL,'ICON_Night_5','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+05.png','icon'),(35,'2017-12-27 13:56:13','2017-12-27 13:56:13',NULL,'ICON_Night_6','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+06.png','icon'),(36,'2017-12-27 13:56:23','2017-12-27 13:56:23',NULL,'ICON_Night_7','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+07.png','icon'),(37,'2017-12-27 13:56:28','2017-12-27 13:56:28',NULL,'ICON_Night_8','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+08.png','icon'),(38,'2017-12-27 13:56:34','2017-12-27 13:56:34',NULL,'ICON_Night_9','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+09.png','icon');
/*!40000 ALTER TABLE `weather_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_readings`
--

DROP TABLE IF EXISTS `weather_readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather_readings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `background_image` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `heat_index` double DEFAULT NULL,
  `weather_icon` varchar(255) DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `u_v_index` varchar(255) DEFAULT NULL,
  `wind_speed` double DEFAULT NULL,
  `cloud_cover` double DEFAULT NULL,
  `winds_from` varchar(255) DEFAULT NULL,
  `wind_gusts` double DEFAULT NULL,
  `dew_point` double DEFAULT NULL,
  `pressure` double DEFAULT NULL,
  `visibility` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_readings`
--

LOCK TABLES `weather_readings` WRITE;
/*!40000 ALTER TABLE `weather_readings` DISABLE KEYS */;
INSERT INTO `weather_readings` VALUES (1,'2017-12-17 07:50:41','2018-02-27 08:53:09',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+04+-+Overcast+-+Complete+Cloud+Cover.jpg','Test',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+06.png',30,'moderate',6,30,'30',30,30,30,30,30,'Partly cloudy to cloudy skies with rainshowers or thunderstorms will prevail over San Mateo.'),(2,'2018-01-03 14:54:13','2018-01-03 14:54:13',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Partly Cloudy with Thunderstorms',32,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+09.png',100,'Moderate',20,72,'SW',20,26,1008,8,29,'Partly cloudy to cloudy skies with rainshowers or thunderstorms will prevail over San Mateo.'),(3,'2018-01-03 15:05:35','2018-01-03 15:05:35','2018-01-03 15:05:47','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+04+-+Light-Heavy+Thunderstorms.jpg','Partly Cloudy with Thunderstorms',32,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+01.png',100,'Moderate',20,72,'SW',20,26,1008,8,29,'Partly cloudy to cloudy skies with rainshowers or thunderstorms will prevail over San Mateo.'),(4,'2018-01-16 02:04:35','2018-01-16 02:04:35',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+03+-+Partly+Cloudy.jpg','Cloudy',35,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+08.png',106,'moderate',45,70,'NW',25,30,1200,10,35,'Cloudy in san mateo'),(5,'2018-01-16 02:20:37','2018-01-16 02:20:37',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+04+-+Light-Heavy+Thunderstorms.jpg','thunder storm',26,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+06.png',75,'moderate',45,89,'NE',28,29,900,6,26,'San Mateo will experience Thunder Storm today'),(6,'2018-01-18 02:42:34','2018-01-18 02:42:34',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','55',35,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+01.png',55,'moderate',55,100,'55',55,55,55,55,55,'55'),(7,'2018-01-18 05:23:31','2018-01-18 05:23:31',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+01+-+Sunny.jpg','60',60,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+01.png',60,'moderate',60,60,'60',60,60,60,60,60,'60'),(8,'2018-01-18 06:18:26','2018-01-18 06:18:26',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+04+-+Light-Heavy+Thunderstorms.jpg','45',45,'undefined',45,'moderate',45,45,'45',45,45,45,45,45,'45'),(9,'2018-01-18 06:21:07','2018-01-18 06:21:07',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+02+-+Partly+Cloudy+-+Complete+Cloud+Cover.jpg','40',40,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+12.png',40,'moderate',40,40,'40',40,40,40,40,40,'40'),(10,'2018-01-18 06:22:16','2018-01-18 06:22:16',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+01+-+Clear+Skies.jpg','34',34,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+08.png',34,'moderate',34,34,'34',34,34,34,34,43,'34'),(11,'2018-01-18 06:23:39','2018-01-18 06:23:39',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+04+-+Light-Heavy+Thunderstorms.jpg','25',25,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+06.png',25,'moderate',25,25,'25',25,25,25,25,25,'25'),(12,'2018-01-18 06:24:30','2018-01-18 06:24:30',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+04+-+Light-Heavy+Thunderstorms.jpg','30',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+14.png',30,'moderate',3,30,'30',30,30,30,30,30,'30'),(13,'2018-01-22 01:21:21','2018-01-22 01:21:21',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','35',35,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+01.png',35,'moderate',35,35,'35',35,35,35,35,35,'35'),(14,'2018-01-22 03:50:04','2018-01-22 03:50:04',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+03+-+Light-Heavy+Rains.jpg','40',40,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+02.png',40,'moderate',40,40,'40',40,40,40,40,40,'40'),(15,'2018-01-22 04:25:43','2018-01-22 04:25:43',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+03+-+Partly+Cloudy.jpg','Partly Cloudy with Thunderstorms',32,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+09.png',100,'Moderate',20,72,'SW',20,26,1008,8,29,'Cloudy skies with scattered rainshowers and thunderstorms Easterlies Possible flash floods or landslides due to light to moderatewith at times heavy rains Batanes and Babuyan Group of Islands  Cloudy skies with scattered rains Northeast Monsoon No signifi'),(16,'2018-01-23 00:09:59','2018-01-23 00:09:59',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+06+-+Windy+-+Cloudy+with+Strong+Winds.jpg','30',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+08.png',30,'moderate',30,30,'30',30,30,30,30,30,'30'),(17,'2018-01-23 00:19:11','2018-01-23 00:19:11',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+03+-+Partly+Cloudy.jpg','Partly cloudy',32,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+04.png',66,'moderate',6,32,'6',6,32,32,32,32,'Partly cloudy'),(18,'2018-01-24 00:59:56','2018-01-24 00:59:56',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','30',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+04.png',30,'moderate',30,30,'30',30,30,30,30,30,'TEST'),(19,'2018-01-24 07:09:56','2018-01-24 07:09:56',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+02+-+Mostly+Sunny+-+Light+Haze.jpg','test',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+02.png',30,'moderate',6,30,'30',30,30,30,30,30,'test'),(20,'2018-01-25 05:41:06','2018-01-25 05:41:06',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Test',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+08.png',30,'moderate',6,30,'30',30,30,30,30,30,'Test'),(21,'2018-01-26 00:43:06','2018-01-26 00:43:06',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Test',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+01.png',30,'moderate',6,30,'30',30,30,30,30,30,'Test'),(22,'2018-01-29 01:23:55','2018-01-29 01:23:55',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+04+-+Overcast+-+Complete+Cloud+Cover.jpg','Test',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+03.png',30,'moderate',6,30,'30',30,30,30,30,30,'test'),(23,'2018-01-29 06:44:07','2018-01-29 06:44:07',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+06+-+Windy+-+Cloudy+with+Strong+Winds.jpg','Test',32,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+08.png',32,'moderate',6,32,'32',32,32,32,32,32,'Test'),(24,'2018-01-30 02:43:45','2018-01-30 02:43:45',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Test',40,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+02.png',40,'moderate',6,40,'40',40,40,40,40,40,'Test'),(25,'2018-02-05 02:05:42','2018-02-05 02:05:42',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+06+-+Windy+-+Cloudy+with+Strong+Winds.jpg','Test',40,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Night+08.png',40,'moderate',6,40,'40',40,40,40,40,40,'Test'),(26,'2018-02-06 02:26:38','2018-02-06 02:26:38','2018-02-06 02:29:28','https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','test 1',33,'undefined',33,'MODERATE',6,33,'33',33,33,33,33,33,'TEST 1'),(27,'2018-02-06 02:29:21','2018-02-06 02:29:21',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Test 1',34,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+04.png',34,'moderate',6,34,'34',34,34,34,34,34,'Test 1'),(28,'2018-02-13 01:49:13','2018-02-13 01:49:13',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Test',35,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+04.png',35,'moderater',6,35,'35',35,35,35,35,35,'Test'),(29,'2018-02-27 08:52:31','2018-02-27 08:52:31',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Day+04+-+Overcast+-+Complete+Cloud+Cover.jpg','Test',30,'undefined',30,'moderate',6,30,'30',30,30,30,30,30,'Test'),(30,'2018-02-28 02:16:52','2018-02-28 02:16:52',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Test',30,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+04.png',30,'moderate',6,30,'30',30,30,30,30,30,'Test'),(31,'2018-03-08 02:50:18','2018-03-08 02:50:18',NULL,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/Night+05+-+Cloudy-Heavy+Rains+with+Strong+Winds.jpg','Test',31,'https://s3-us-west-1.amazonaws.com/sanmateoprofileapp/weathermenu/icons/Day+04.png',31,'moderate',6,31,'6',6,6,6,6,31,'Test');
/*!40000 ALTER TABLE `weather_readings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `qry_incident_reports`
--

/*!50001 DROP TABLE IF EXISTS `qry_incident_reports`*/;
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

/*!50001 DROP TABLE IF EXISTS `qry_incidents`*/;
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

-- Dump completed on 2018-03-09 16:26:33
