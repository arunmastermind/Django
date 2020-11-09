-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: modeltesting
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add age',7,'add_age'),(26,'Can change age',7,'change_age'),(27,'Can delete age',7,'delete_age'),(28,'Can view age',7,'view_age'),(29,'Can add cabinholdduration',8,'add_cabinholdduration'),(30,'Can change cabinholdduration',8,'change_cabinholdduration'),(31,'Can delete cabinholdduration',8,'delete_cabinholdduration'),(32,'Can view cabinholdduration',8,'view_cabinholdduration'),(33,'Can add depositpolicy',9,'add_depositpolicy'),(34,'Can change depositpolicy',9,'change_depositpolicy'),(35,'Can delete depositpolicy',9,'delete_depositpolicy'),(36,'Can view depositpolicy',9,'view_depositpolicy'),(37,'Can add diningseating',10,'add_diningseating'),(38,'Can change diningseating',10,'change_diningseating'),(39,'Can delete diningseating',10,'delete_diningseating'),(40,'Can view diningseating',10,'view_diningseating'),(41,'Can add diningtable',11,'add_diningtable'),(42,'Can change diningtable',11,'change_diningtable'),(43,'Can delete diningtable',11,'delete_diningtable'),(44,'Can view diningtable',11,'view_diningtable'),(45,'Can add groupreview',12,'add_groupreview'),(46,'Can change groupreview',12,'change_groupreview'),(47,'Can delete groupreview',12,'delete_groupreview'),(48,'Can view groupreview',12,'view_groupreview'),(49,'Can add imagesize',13,'add_imagesize'),(50,'Can change imagesize',13,'change_imagesize'),(51,'Can delete imagesize',13,'delete_imagesize'),(52,'Can view imagesize',13,'view_imagesize'),(53,'Can add optiontime',14,'add_optiontime'),(54,'Can change optiontime',14,'change_optiontime'),(55,'Can delete optiontime',14,'delete_optiontime'),(56,'Can view optiontime',14,'view_optiontime'),(57,'Can add image',15,'add_image'),(58,'Can change image',15,'change_image'),(59,'Can delete image',15,'delete_image'),(60,'Can view image',15,'view_image'),(61,'Can add category',16,'add_category'),(62,'Can change category',16,'change_category'),(63,'Can delete category',16,'delete_category'),(64,'Can view category',16,'view_category'),(65,'Can add bedconfiguration',17,'add_bedconfiguration'),(66,'Can change bedconfiguration',17,'change_bedconfiguration'),(67,'Can delete bedconfiguration',17,'delete_bedconfiguration'),(68,'Can view bedconfiguration',17,'view_bedconfiguration'),(69,'Can add cabinattribute',18,'add_cabinattribute'),(70,'Can change cabinattribute',18,'change_cabinattribute'),(71,'Can delete cabinattribute',18,'delete_cabinattribute'),(72,'Can view cabinattribute',18,'view_cabinattribute'),(73,'Can add cabin',19,'add_cabin'),(74,'Can change cabin',19,'change_cabin'),(75,'Can delete cabin',19,'delete_cabin'),(76,'Can view cabin',19,'view_cabin'),(77,'Can add port',20,'add_port'),(78,'Can change port',20,'change_port'),(79,'Can delete port',20,'delete_port'),(80,'Can view port',20,'view_port'),(81,'Can add cruise',21,'add_cruise'),(82,'Can change cruise',21,'change_cruise'),(83,'Can delete cruise',21,'delete_cruise'),(84,'Can view cruise',21,'view_cruise'),(85,'Can add ratepricing',22,'add_ratepricing'),(86,'Can change ratepricing',22,'change_ratepricing'),(87,'Can delete ratepricing',22,'delete_ratepricing'),(88,'Can view ratepricing',22,'view_ratepricing'),(89,'Can add sailings',23,'add_sailings'),(90,'Can change sailings',23,'change_sailings'),(91,'Can delete sailings',23,'delete_sailings'),(92,'Can view sailings',23,'view_sailings'),(93,'Can add market',24,'add_market'),(94,'Can change market',24,'change_market'),(95,'Can delete market',24,'delete_market'),(96,'Can view market',24,'view_market'),(97,'Can add ship',25,'add_ship'),(98,'Can change ship',25,'change_ship'),(99,'Can delete ship',25,'delete_ship'),(100,'Can view ship',25,'view_ship'),(101,'Can add agency',26,'add_agency'),(102,'Can change agency',26,'change_agency'),(103,'Can delete agency',26,'delete_agency'),(104,'Can view agency',26,'view_agency'),(105,'Can add cruise itinerary',27,'add_cruiseitinerary'),(106,'Can change cruise itinerary',27,'change_cruiseitinerary'),(107,'Can delete cruise itinerary',27,'delete_cruiseitinerary'),(108,'Can view cruise itinerary',27,'view_cruiseitinerary'),(109,'Can add cancellationpolicy',28,'add_cancellationpolicy'),(110,'Can change cancellationpolicy',28,'change_cancellationpolicy'),(111,'Can delete cancellationpolicy',28,'delete_cancellationpolicy'),(112,'Can view cancellationpolicy',28,'view_cancellationpolicy'),(113,'Can add rate',29,'add_rate'),(114,'Can change rate',29,'change_rate'),(115,'Can delete rate',29,'delete_rate'),(116,'Can view rate',29,'view_rate'),(117,'Can add grade',30,'add_grade'),(118,'Can change grade',30,'change_grade'),(119,'Can delete grade',30,'delete_grade'),(120,'Can view grade',30,'view_grade'),(121,'Can add cruisefeesandtaxes',31,'add_cruisefeesandtaxes'),(122,'Can change cruisefeesandtaxes',31,'change_cruisefeesandtaxes'),(123,'Can delete cruisefeesandtaxes',31,'delete_cruisefeesandtaxes'),(124,'Can view cruisefeesandtaxes',31,'view_cruisefeesandtaxes'),(125,'Can add consortia',32,'add_consortia'),(126,'Can change consortia',32,'change_consortia'),(127,'Can delete consortia',32,'delete_consortia'),(128,'Can view consortia',32,'view_consortia'),(129,'Can add apilog',33,'add_apilog'),(130,'Can change apilog',33,'change_apilog'),(131,'Can delete apilog',33,'delete_apilog'),(132,'Can view apilog',33,'view_apilog'),(133,'Can add users',34,'add_users'),(134,'Can change users',34,'change_users'),(135,'Can delete users',34,'delete_users'),(136,'Can view users',34,'view_users'),(137,'Can add clients',35,'add_clients'),(138,'Can change clients',35,'change_clients'),(139,'Can delete clients',35,'delete_clients'),(140,'Can view clients',35,'view_clients'),(141,'Can add apimethods',36,'add_apimethods'),(142,'Can change apimethods',36,'change_apimethods'),(143,'Can delete apimethods',36,'delete_apimethods'),(144,'Can view apimethods',36,'view_apimethods'),(145,'Can add userslooktobook',37,'add_userslooktobook'),(146,'Can change userslooktobook',37,'change_userslooktobook'),(147,'Can delete userslooktobook',37,'delete_userslooktobook'),(148,'Can view userslooktobook',37,'view_userslooktobook'),(149,'Can add cabin availability',38,'add_cabinavailability'),(150,'Can change cabin availability',38,'change_cabinavailability'),(151,'Can delete cabin availability',38,'delete_cabinavailability'),(152,'Can view cabin availability',38,'view_cabinavailability'),(153,'Can add availability',39,'add_availability'),(154,'Can change availability',39,'change_availability'),(155,'Can delete availability',39,'delete_availability'),(156,'Can view availability',39,'view_availability'),(157,'Can add reservation',40,'add_reservation'),(158,'Can change reservation',40,'change_reservation'),(159,'Can delete reservation',40,'delete_reservation'),(160,'Can view reservation',40,'view_reservation'),(161,'Can add guests',41,'add_guests'),(162,'Can change guests',41,'change_guests'),(163,'Can delete guests',41,'delete_guests'),(164,'Can view guests',41,'view_guests');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability_availability`
--

DROP TABLE IF EXISTS `availability_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability_availability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qty` smallint unsigned NOT NULL,
  `grade_id` int NOT NULL,
  `rate_id` int NOT NULL,
  `sailing_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `availability_availab_grade_id_0fbbe318_fk_configura` (`grade_id`),
  KEY `availability_availab_rate_id_b842e83a_fk_configura` (`rate_id`),
  KEY `availability_availab_sailing_id_cf83a2b0_fk_configura` (`sailing_id`),
  CONSTRAINT `availability_availab_grade_id_0fbbe318_fk_configura` FOREIGN KEY (`grade_id`) REFERENCES `configuration_grade` (`id`),
  CONSTRAINT `availability_availab_rate_id_b842e83a_fk_configura` FOREIGN KEY (`rate_id`) REFERENCES `configuration_rate` (`id`),
  CONSTRAINT `availability_availab_sailing_id_cf83a2b0_fk_configura` FOREIGN KEY (`sailing_id`) REFERENCES `configuration_sailings` (`id`),
  CONSTRAINT `availability_availability_chk_1` CHECK ((`qty` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability_availability`
--

LOCK TABLES `availability_availability` WRITE;
/*!40000 ALTER TABLE `availability_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `availability_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability_cabinavailability`
--

DROP TABLE IF EXISTS `availability_cabinavailability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability_cabinavailability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `AvailableStatus` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `holdtime` datetime(6) NOT NULL,
  `cabin_id` int NOT NULL,
  `grade_id` int NOT NULL,
  `sailing_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `availability_cabinav_cabin_id_3a57bdf8_fk_configura` (`cabin_id`),
  KEY `availability_cabinav_grade_id_9c1a1486_fk_configura` (`grade_id`),
  KEY `availability_cabinav_sailing_id_9260da9e_fk_configura` (`sailing_id`),
  CONSTRAINT `availability_cabinav_cabin_id_3a57bdf8_fk_configura` FOREIGN KEY (`cabin_id`) REFERENCES `configuration_cabin` (`id`),
  CONSTRAINT `availability_cabinav_grade_id_9c1a1486_fk_configura` FOREIGN KEY (`grade_id`) REFERENCES `configuration_grade` (`id`),
  CONSTRAINT `availability_cabinav_sailing_id_9260da9e_fk_configura` FOREIGN KEY (`sailing_id`) REFERENCES `configuration_sailings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability_cabinavailability`
--

LOCK TABLES `availability_cabinavailability` WRITE;
/*!40000 ALTER TABLE `availability_cabinavailability` DISABLE KEYS */;
/*!40000 ALTER TABLE `availability_cabinavailability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_age`
--

DROP TABLE IF EXISTS `configuration_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_age` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(15) NOT NULL,
  `value` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `configuration_age_chk_1` CHECK ((`value` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_age`
--

LOCK TABLES `configuration_age` WRITE;
/*!40000 ALTER TABLE `configuration_age` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_age` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_agency`
--

DROP TABLE IF EXISTS `configuration_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_agency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `commissionlevel` decimal(5,2) NOT NULL,
  `accounttype` varchar(20) NOT NULL,
  `creditlimit` decimal(20,3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `market_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `configuration_agency_market_id_99ebdf6d_fk_configura` (`market_id`),
  CONSTRAINT `configuration_agency_market_id_99ebdf6d_fk_configura` FOREIGN KEY (`market_id`) REFERENCES `configuration_consortia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_agency`
--

LOCK TABLES `configuration_agency` WRITE;
/*!40000 ALTER TABLE `configuration_agency` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_bedconfiguration`
--

DROP TABLE IF EXISTS `configuration_bedconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_bedconfiguration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_bedconfiguration`
--

LOCK TABLES `configuration_bedconfiguration` WRITE;
/*!40000 ALTER TABLE `configuration_bedconfiguration` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_bedconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cabin`
--

DROP TABLE IF EXISTS `configuration_cabin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cabin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `number` varchar(5) NOT NULL,
  `position` varchar(15) NOT NULL,
  `location` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cabin`
--

LOCK TABLES `configuration_cabin` WRITE;
/*!40000 ALTER TABLE `configuration_cabin` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cabin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cabin_attr`
--

DROP TABLE IF EXISTS `configuration_cabin_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cabin_attr` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cabin_id` int NOT NULL,
  `cabinattribute_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `configuration_cabin_attr_cabin_id_cabinattribute__4b67b488_uniq` (`cabin_id`,`cabinattribute_id`),
  KEY `configuration_cabin__cabinattribute_id_fba96d96_fk_configura` (`cabinattribute_id`),
  CONSTRAINT `configuration_cabin__cabin_id_3edc5b43_fk_configura` FOREIGN KEY (`cabin_id`) REFERENCES `configuration_cabin` (`id`),
  CONSTRAINT `configuration_cabin__cabinattribute_id_fba96d96_fk_configura` FOREIGN KEY (`cabinattribute_id`) REFERENCES `configuration_cabinattribute` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cabin_attr`
--

LOCK TABLES `configuration_cabin_attr` WRITE;
/*!40000 ALTER TABLE `configuration_cabin_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cabin_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cabin_bedconfig`
--

DROP TABLE IF EXISTS `configuration_cabin_bedconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cabin_bedconfig` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cabin_id` int NOT NULL,
  `bedconfiguration_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `configuration_cabin_bedc_cabin_id_bedconfiguratio_aaad5c26_uniq` (`cabin_id`,`bedconfiguration_id`),
  KEY `configuration_cabin__bedconfiguration_id_30388b84_fk_configura` (`bedconfiguration_id`),
  CONSTRAINT `configuration_cabin__bedconfiguration_id_30388b84_fk_configura` FOREIGN KEY (`bedconfiguration_id`) REFERENCES `configuration_bedconfiguration` (`id`),
  CONSTRAINT `configuration_cabin__cabin_id_167d1eab_fk_configura` FOREIGN KEY (`cabin_id`) REFERENCES `configuration_cabin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cabin_bedconfig`
--

LOCK TABLES `configuration_cabin_bedconfig` WRITE;
/*!40000 ALTER TABLE `configuration_cabin_bedconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cabin_bedconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cabinattribute`
--

DROP TABLE IF EXISTS `configuration_cabinattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cabinattribute` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `guaranteedpriority` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cabinattribute`
--

LOCK TABLES `configuration_cabinattribute` WRITE;
/*!40000 ALTER TABLE `configuration_cabinattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cabinattribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cabinholdduration`
--

DROP TABLE IF EXISTS `configuration_cabinholdduration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cabinholdduration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit` varchar(15) NOT NULL,
  `value` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `configuration_cabinholdduration_chk_1` CHECK ((`value` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cabinholdduration`
--

LOCK TABLES `configuration_cabinholdduration` WRITE;
/*!40000 ALTER TABLE `configuration_cabinholdduration` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cabinholdduration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cancellationpolicy`
--

DROP TABLE IF EXISTS `configuration_cancellationpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cancellationpolicy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `daysbeforedeparture` smallint unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `value` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `configuration_cancellationpolicy_chk_1` CHECK ((`daysbeforedeparture` >= 0)),
  CONSTRAINT `configuration_cancellationpolicy_chk_2` CHECK ((`value` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cancellationpolicy`
--

LOCK TABLES `configuration_cancellationpolicy` WRITE;
/*!40000 ALTER TABLE `configuration_cancellationpolicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cancellationpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_category`
--

DROP TABLE IF EXISTS `configuration_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `availableto` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_category`
--

LOCK TABLES `configuration_category` WRITE;
/*!40000 ALTER TABLE `configuration_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_consortia`
--

DROP TABLE IF EXISTS `configuration_consortia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_consortia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_consortia`
--

LOCK TABLES `configuration_consortia` WRITE;
/*!40000 ALTER TABLE `configuration_consortia` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_consortia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cruise`
--

DROP TABLE IF EXISTS `configuration_cruise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cruise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `nights` smallint unsigned NOT NULL,
  `seadays` smallint unsigned NOT NULL,
  `descriptions` json NOT NULL,
  `ship_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_cruise_ship_id_35d9467d_fk_configuration_ship_id` (`ship_id`),
  KEY `configuration_cruise_code_8a022204` (`code`),
  CONSTRAINT `configuration_cruise_ship_id_35d9467d_fk_configuration_ship_id` FOREIGN KEY (`ship_id`) REFERENCES `configuration_ship` (`id`),
  CONSTRAINT `configuration_cruise_chk_1` CHECK ((`nights` >= 0)),
  CONSTRAINT `configuration_cruise_chk_2` CHECK ((`seadays` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cruise`
--

LOCK TABLES `configuration_cruise` WRITE;
/*!40000 ALTER TABLE `configuration_cruise` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cruise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cruisefeesandtaxes`
--

DROP TABLE IF EXISTS `configuration_cruisefeesandtaxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cruisefeesandtaxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` decimal(10,3) NOT NULL,
  `cruise_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_cruise_cruise_id_891ae090_fk_configura` (`cruise_id`),
  CONSTRAINT `configuration_cruise_cruise_id_891ae090_fk_configura` FOREIGN KEY (`cruise_id`) REFERENCES `configuration_cruise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cruisefeesandtaxes`
--

LOCK TABLES `configuration_cruisefeesandtaxes` WRITE;
/*!40000 ALTER TABLE `configuration_cruisefeesandtaxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cruisefeesandtaxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_cruiseitinerary`
--

DROP TABLE IF EXISTS `configuration_cruiseitinerary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_cruiseitinerary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` smallint unsigned NOT NULL,
  `extradescription` longtext NOT NULL,
  `arrivetime` time(6) NOT NULL,
  `departtime` time(6) NOT NULL,
  `cruise_id` int NOT NULL,
  `port_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_cruise_cruise_id_8c450a31_fk_configura` (`cruise_id`),
  KEY `configuration_cruise_port_id_f9395c75_fk_configura` (`port_id`),
  CONSTRAINT `configuration_cruise_cruise_id_8c450a31_fk_configura` FOREIGN KEY (`cruise_id`) REFERENCES `configuration_cruise` (`id`),
  CONSTRAINT `configuration_cruise_port_id_f9395c75_fk_configura` FOREIGN KEY (`port_id`) REFERENCES `configuration_port` (`id`),
  CONSTRAINT `configuration_cruiseitinerary_chk_1` CHECK ((`day` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_cruiseitinerary`
--

LOCK TABLES `configuration_cruiseitinerary` WRITE;
/*!40000 ALTER TABLE `configuration_cruiseitinerary` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_cruiseitinerary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_depositpolicy`
--

DROP TABLE IF EXISTS `configuration_depositpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_depositpolicy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `daysbeforedeparture` smallint unsigned NOT NULL,
  `type` varchar(15) NOT NULL,
  `value` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `configuration_depositpolicy_chk_1` CHECK ((`daysbeforedeparture` >= 0)),
  CONSTRAINT `configuration_depositpolicy_chk_2` CHECK ((`value` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_depositpolicy`
--

LOCK TABLES `configuration_depositpolicy` WRITE;
/*!40000 ALTER TABLE `configuration_depositpolicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_depositpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_diningseating`
--

DROP TABLE IF EXISTS `configuration_diningseating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_diningseating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `starttime` time(6) NOT NULL,
  `endtime` time(6) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_diningseating_code_10a2e2b5` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_diningseating`
--

LOCK TABLES `configuration_diningseating` WRITE;
/*!40000 ALTER TABLE `configuration_diningseating` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_diningseating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_diningtable`
--

DROP TABLE IF EXISTS `configuration_diningtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_diningtable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_diningtable_code_c15cfa56` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_diningtable`
--

LOCK TABLES `configuration_diningtable` WRITE;
/*!40000 ALTER TABLE `configuration_diningtable` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_diningtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_grade`
--

DROP TABLE IF EXISTS `configuration_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_grade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(15) NOT NULL,
  `cabinquantity` smallint unsigned NOT NULL,
  `guaranteed` tinyint(1) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `ship_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_grade_ship_id_efc8e7d9_fk_configuration_ship_id` (`ship_id`),
  KEY `configuration_grade_code_981b80a9` (`code`),
  CONSTRAINT `configuration_grade_ship_id_efc8e7d9_fk_configuration_ship_id` FOREIGN KEY (`ship_id`) REFERENCES `configuration_ship` (`id`),
  CONSTRAINT `configuration_grade_chk_1` CHECK ((`cabinquantity` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_grade`
--

LOCK TABLES `configuration_grade` WRITE;
/*!40000 ALTER TABLE `configuration_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_groupreview`
--

DROP TABLE IF EXISTS `configuration_groupreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_groupreview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reviewdaysbeforedeparture` smallint unsigned NOT NULL,
  `paymentdaysbeforedeparture` smallint unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `mingradepercentage` smallint unsigned NOT NULL,
  `maxgradepercentage` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `configuration_groupreview_chk_1` CHECK ((`reviewdaysbeforedeparture` >= 0)),
  CONSTRAINT `configuration_groupreview_chk_2` CHECK ((`paymentdaysbeforedeparture` >= 0)),
  CONSTRAINT `configuration_groupreview_chk_3` CHECK ((`mingradepercentage` >= 0)),
  CONSTRAINT `configuration_groupreview_chk_4` CHECK ((`maxgradepercentage` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_groupreview`
--

LOCK TABLES `configuration_groupreview` WRITE;
/*!40000 ALTER TABLE `configuration_groupreview` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_groupreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_image`
--

DROP TABLE IF EXISTS `configuration_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imagefile` varchar(100) NOT NULL,
  `imagesize` varchar(15) NOT NULL,
  `associatedtype` varchar(15) NOT NULL,
  `associatedid` int unsigned NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_image_category_id_ea37c39e_fk_configura` (`category_id`),
  CONSTRAINT `configuration_image_category_id_ea37c39e_fk_configura` FOREIGN KEY (`category_id`) REFERENCES `configuration_category` (`id`),
  CONSTRAINT `configuration_image_chk_1` CHECK ((`associatedid` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_image`
--

LOCK TABLES `configuration_image` WRITE;
/*!40000 ALTER TABLE `configuration_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_imagesize`
--

DROP TABLE IF EXISTS `configuration_imagesize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_imagesize` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(15) NOT NULL,
  `width` smallint unsigned NOT NULL,
  `height` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `configuration_imagesize_chk_1` CHECK ((`width` >= 0)),
  CONSTRAINT `configuration_imagesize_chk_2` CHECK ((`height` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_imagesize`
--

LOCK TABLES `configuration_imagesize` WRITE;
/*!40000 ALTER TABLE `configuration_imagesize` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_imagesize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_market`
--

DROP TABLE IF EXISTS `configuration_market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_market` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_market_code_0355da51` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_market`
--

LOCK TABLES `configuration_market` WRITE;
/*!40000 ALTER TABLE `configuration_market` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_optiontime`
--

DROP TABLE IF EXISTS `configuration_optiontime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_optiontime` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unit` varchar(15) NOT NULL,
  `value` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `configuration_optiontime_chk_1` CHECK ((`value` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_optiontime`
--

LOCK TABLES `configuration_optiontime` WRITE;
/*!40000 ALTER TABLE `configuration_optiontime` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_optiontime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_port`
--

DROP TABLE IF EXISTS `configuration_port`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_port` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `latitude` varchar(10) NOT NULL,
  `longitude` varchar(10) NOT NULL,
  `tender` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_port_code_948c2665` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_port`
--

LOCK TABLES `configuration_port` WRITE;
/*!40000 ALTER TABLE `configuration_port` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_port` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_rate`
--

DROP TABLE IF EXISTS `configuration_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_rate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL,
  `commissionoverride` decimal(5,2) NOT NULL,
  `restriction` varchar(15) NOT NULL,
  `descriptions` json NOT NULL,
  `market_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_rate_market_id_8d772e95_fk_configuration_market_id` (`market_id`),
  KEY `configuration_rate_code_7e6ebba7` (`code`),
  CONSTRAINT `configuration_rate_market_id_8d772e95_fk_configuration_market_id` FOREIGN KEY (`market_id`) REFERENCES `configuration_market` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_rate`
--

LOCK TABLES `configuration_rate` WRITE;
/*!40000 ALTER TABLE `configuration_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_rate_agency`
--

DROP TABLE IF EXISTS `configuration_rate_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_rate_agency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rate_id` int NOT NULL,
  `agency_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `configuration_rate_agency_rate_id_agency_id_be489a65_uniq` (`rate_id`,`agency_id`),
  KEY `configuration_rate_a_agency_id_876d2c00_fk_configura` (`agency_id`),
  CONSTRAINT `configuration_rate_a_agency_id_876d2c00_fk_configura` FOREIGN KEY (`agency_id`) REFERENCES `configuration_agency` (`id`),
  CONSTRAINT `configuration_rate_a_rate_id_51a97d95_fk_configura` FOREIGN KEY (`rate_id`) REFERENCES `configuration_rate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_rate_agency`
--

LOCK TABLES `configuration_rate_agency` WRITE;
/*!40000 ALTER TABLE `configuration_rate_agency` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_rate_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_rate_cancellationpolicy`
--

DROP TABLE IF EXISTS `configuration_rate_cancellationpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_rate_cancellationpolicy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rate_id` int NOT NULL,
  `cancellationpolicy_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `configuration_rate_cance_rate_id_cancellationpoli_90f8f3fb_uniq` (`rate_id`,`cancellationpolicy_id`),
  KEY `configuration_rate_c_cancellationpolicy_i_dc33ddfe_fk_configura` (`cancellationpolicy_id`),
  CONSTRAINT `configuration_rate_c_cancellationpolicy_i_dc33ddfe_fk_configura` FOREIGN KEY (`cancellationpolicy_id`) REFERENCES `configuration_cancellationpolicy` (`id`),
  CONSTRAINT `configuration_rate_c_rate_id_87f284d0_fk_configura` FOREIGN KEY (`rate_id`) REFERENCES `configuration_rate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_rate_cancellationpolicy`
--

LOCK TABLES `configuration_rate_cancellationpolicy` WRITE;
/*!40000 ALTER TABLE `configuration_rate_cancellationpolicy` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_rate_cancellationpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_ratepricing`
--

DROP TABLE IF EXISTS `configuration_ratepricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_ratepricing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstpassengerprice` decimal(20,3) NOT NULL,
  `secondpassengerprice` decimal(20,3) NOT NULL,
  `thirdpassengerprice` decimal(20,3) NOT NULL,
  `fourthpassengerprice` decimal(20,3) NOT NULL,
  `fifthpassengerprice` decimal(20,3) NOT NULL,
  `singlesupplement` decimal(20,3) NOT NULL,
  `available` smallint unsigned NOT NULL,
  `grade_id` int NOT NULL,
  `rate_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_ratepr_grade_id_7b5f0764_fk_configura` (`grade_id`),
  KEY `configuration_ratepr_rate_id_f53a189c_fk_configura` (`rate_id`),
  CONSTRAINT `configuration_ratepr_grade_id_7b5f0764_fk_configura` FOREIGN KEY (`grade_id`) REFERENCES `configuration_grade` (`id`),
  CONSTRAINT `configuration_ratepr_rate_id_f53a189c_fk_configura` FOREIGN KEY (`rate_id`) REFERENCES `configuration_rate` (`id`),
  CONSTRAINT `configuration_ratepricing_chk_1` CHECK ((`available` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_ratepricing`
--

LOCK TABLES `configuration_ratepricing` WRITE;
/*!40000 ALTER TABLE `configuration_ratepricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_ratepricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_sailings`
--

DROP TABLE IF EXISTS `configuration_sailings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_sailings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `gtfpercentage` decimal(5,2) NOT NULL,
  `cruise_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_sailin_cruise_id_ea9dc5d4_fk_configura` (`cruise_id`),
  CONSTRAINT `configuration_sailin_cruise_id_ea9dc5d4_fk_configura` FOREIGN KEY (`cruise_id`) REFERENCES `configuration_cruise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_sailings`
--

LOCK TABLES `configuration_sailings` WRITE;
/*!40000 ALTER TABLE `configuration_sailings` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_sailings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_ship`
--

DROP TABLE IF EXISTS `configuration_ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuration_ship` (
  `id` int NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(5) NOT NULL,
  `length` int unsigned NOT NULL,
  `size` int unsigned NOT NULL,
  `standardcapacity` int unsigned NOT NULL,
  `totalcapacity` int unsigned NOT NULL,
  `totalcabins` int unsigned NOT NULL,
  `descriptions` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configuration_ship_code_b15b56dd` (`code`),
  CONSTRAINT `configuration_ship_chk_1` CHECK ((`length` >= 0)),
  CONSTRAINT `configuration_ship_chk_2` CHECK ((`size` >= 0)),
  CONSTRAINT `configuration_ship_chk_3` CHECK ((`standardcapacity` >= 0)),
  CONSTRAINT `configuration_ship_chk_4` CHECK ((`totalcapacity` >= 0)),
  CONSTRAINT `configuration_ship_chk_5` CHECK ((`totalcabins` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_ship`
--

LOCK TABLES `configuration_ship` WRITE;
/*!40000 ALTER TABLE `configuration_ship` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuration_ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbprojadmin_apilog`
--

DROP TABLE IF EXISTS `dbprojadmin_apilog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbprojadmin_apilog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logged` datetime(6) NOT NULL,
  `method` varchar(32) NOT NULL,
  `serialised` longtext NOT NULL,
  `clientuser` int unsigned NOT NULL,
  `client_id` varchar(3) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dbprojadmin_apilog_client_id_114b1a63_fk_dbprojadm` (`client_id`),
  KEY `dbprojadmin_apilog_user_id_9c9fe04e_fk_dbprojadmin_users_id` (`user_id`),
  CONSTRAINT `dbprojadmin_apilog_client_id_114b1a63_fk_dbprojadm` FOREIGN KEY (`client_id`) REFERENCES `dbprojadmin_clients` (`client`),
  CONSTRAINT `dbprojadmin_apilog_user_id_9c9fe04e_fk_dbprojadmin_users_id` FOREIGN KEY (`user_id`) REFERENCES `dbprojadmin_users` (`id`),
  CONSTRAINT `dbprojadmin_apilog_chk_1` CHECK ((`clientuser` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbprojadmin_apilog`
--

LOCK TABLES `dbprojadmin_apilog` WRITE;
/*!40000 ALTER TABLE `dbprojadmin_apilog` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbprojadmin_apilog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbprojadmin_apimethods`
--

DROP TABLE IF EXISTS `dbprojadmin_apimethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbprojadmin_apimethods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apimethod` varchar(32) NOT NULL,
  `client_id` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dbprojadmin_apimetho_client_id_55d43c17_fk_dbprojadm` (`client_id`),
  CONSTRAINT `dbprojadmin_apimetho_client_id_55d43c17_fk_dbprojadm` FOREIGN KEY (`client_id`) REFERENCES `dbprojadmin_clients` (`client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbprojadmin_apimethods`
--

LOCK TABLES `dbprojadmin_apimethods` WRITE;
/*!40000 ALTER TABLE `dbprojadmin_apimethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbprojadmin_apimethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbprojadmin_clients`
--

DROP TABLE IF EXISTS `dbprojadmin_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbprojadmin_clients` (
  `client` varchar(3) NOT NULL,
  `email` varchar(255) NOT NULL,
  `startdate` date NOT NULL,
  PRIMARY KEY (`client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbprojadmin_clients`
--

LOCK TABLES `dbprojadmin_clients` WRITE;
/*!40000 ALTER TABLE `dbprojadmin_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbprojadmin_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbprojadmin_users`
--

DROP TABLE IF EXISTS `dbprojadmin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbprojadmin_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `client_id` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dbprojadmin_users_client_id_42a23298_fk_dbprojadm` (`client_id`),
  CONSTRAINT `dbprojadmin_users_client_id_42a23298_fk_dbprojadm` FOREIGN KEY (`client_id`) REFERENCES `dbprojadmin_clients` (`client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbprojadmin_users`
--

LOCK TABLES `dbprojadmin_users` WRITE;
/*!40000 ALTER TABLE `dbprojadmin_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbprojadmin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbprojadmin_userslooktobook`
--

DROP TABLE IF EXISTS `dbprojadmin_userslooktobook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dbprojadmin_userslooktobook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cost` decimal(5,3) NOT NULL,
  `client_id` varchar(3) NOT NULL,
  `method_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dbprojadmin_usersloo_client_id_f093401b_fk_dbprojadm` (`client_id`),
  KEY `dbprojadmin_usersloo_method_id_7a9ddb5b_fk_dbprojadm` (`method_id`),
  KEY `dbprojadmin_usersloo_user_id_68235c8b_fk_dbprojadm` (`user_id`),
  CONSTRAINT `dbprojadmin_usersloo_client_id_f093401b_fk_dbprojadm` FOREIGN KEY (`client_id`) REFERENCES `dbprojadmin_clients` (`client`),
  CONSTRAINT `dbprojadmin_usersloo_method_id_7a9ddb5b_fk_dbprojadm` FOREIGN KEY (`method_id`) REFERENCES `dbprojadmin_apimethods` (`id`),
  CONSTRAINT `dbprojadmin_usersloo_user_id_68235c8b_fk_dbprojadm` FOREIGN KEY (`user_id`) REFERENCES `dbprojadmin_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbprojadmin_userslooktobook`
--

LOCK TABLES `dbprojadmin_userslooktobook` WRITE;
/*!40000 ALTER TABLE `dbprojadmin_userslooktobook` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbprojadmin_userslooktobook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(39,'availability','availability'),(38,'availability','cabinavailability'),(7,'configuration','age'),(26,'configuration','agency'),(17,'configuration','bedconfiguration'),(19,'configuration','cabin'),(18,'configuration','cabinattribute'),(8,'configuration','cabinholdduration'),(28,'configuration','cancellationpolicy'),(16,'configuration','category'),(32,'configuration','consortia'),(21,'configuration','cruise'),(31,'configuration','cruisefeesandtaxes'),(27,'configuration','cruiseitinerary'),(9,'configuration','depositpolicy'),(10,'configuration','diningseating'),(11,'configuration','diningtable'),(30,'configuration','grade'),(12,'configuration','groupreview'),(15,'configuration','image'),(13,'configuration','imagesize'),(24,'configuration','market'),(14,'configuration','optiontime'),(20,'configuration','port'),(29,'configuration','rate'),(22,'configuration','ratepricing'),(23,'configuration','sailings'),(25,'configuration','ship'),(5,'contenttypes','contenttype'),(33,'dbprojadmin','apilog'),(36,'dbprojadmin','apimethods'),(35,'dbprojadmin','clients'),(34,'dbprojadmin','users'),(37,'dbprojadmin','userslooktobook'),(41,'reservation','guests'),(40,'reservation','reservation'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-11-09 15:28:54.847060'),(2,'auth','0001_initial','2020-11-09 15:28:54.895250'),(3,'admin','0001_initial','2020-11-09 15:28:55.008031'),(4,'admin','0002_logentry_remove_auto_add','2020-11-09 15:28:55.043212'),(5,'admin','0003_logentry_add_action_flag_choices','2020-11-09 15:28:55.049588'),(6,'contenttypes','0002_remove_content_type_name','2020-11-09 15:28:55.113668'),(7,'auth','0002_alter_permission_name_max_length','2020-11-09 15:28:55.140673'),(8,'auth','0003_alter_user_email_max_length','2020-11-09 15:28:55.158998'),(9,'auth','0004_alter_user_username_opts','2020-11-09 15:28:55.167956'),(10,'auth','0005_alter_user_last_login_null','2020-11-09 15:28:55.192958'),(11,'auth','0006_require_contenttypes_0002','2020-11-09 15:28:55.194889'),(12,'auth','0007_alter_validators_add_error_messages','2020-11-09 15:28:55.202406'),(13,'auth','0008_alter_user_username_max_length','2020-11-09 15:28:55.236891'),(14,'auth','0009_alter_user_last_name_max_length','2020-11-09 15:28:55.263497'),(15,'auth','0010_alter_group_name_max_length','2020-11-09 15:28:55.283048'),(16,'auth','0011_update_proxy_permissions','2020-11-09 15:28:55.294946'),(17,'auth','0012_alter_user_first_name_max_length','2020-11-09 15:28:55.319548'),(18,'sessions','0001_initial','2020-11-09 15:28:55.329365'),(19,'configuration','0001_initial','2020-11-09 15:31:20.679907'),(20,'dbprojadmin','0001_initial','2020-11-09 15:31:55.043028'),(21,'availability','0001_initial','2020-11-09 15:32:24.003668'),(22,'reservation','0001_initial','2020-11-09 15:38:38.246480'),(23,'reservation','0002_auto_20201109_1538','2020-11-09 15:38:38.272090');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_guests`
--

DROP TABLE IF EXISTS `reservation_guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_guests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `leadpassenger` tinyint(1) NOT NULL,
  `title` varchar(5) NOT NULL,
  `givenname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `dateofbirth` date NOT NULL,
  `ageontravel` smallint unsigned NOT NULL,
  `nationality` varchar(2) NOT NULL,
  `language` varchar(7) NOT NULL,
  `address` json NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(2) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `request` longtext NOT NULL,
  `documentation` json NOT NULL,
  `pricing` json NOT NULL,
  `booking_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservation_guests_booking_id_57dc194e_fk_reservati` (`booking_id`),
  CONSTRAINT `reservation_guests_booking_id_57dc194e_fk_reservati` FOREIGN KEY (`booking_id`) REFERENCES `reservation_reservation` (`id`),
  CONSTRAINT `reservation_guests_chk_1` CHECK ((`ageontravel` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_guests`
--

LOCK TABLES `reservation_guests` WRITE;
/*!40000 ALTER TABLE `reservation_guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_reservation`
--

DROP TABLE IF EXISTS `reservation_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pnr` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created` datetime(6) NOT NULL,
  `createdby` varchar(255) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `updatedby` varchar(255) NOT NULL,
  `agencyname` varchar(255) NOT NULL,
  `agencyid` int unsigned NOT NULL,
  `bookingtype` varchar(10) NOT NULL,
  `shipcode` varchar(5) NOT NULL,
  `shipname` varchar(100) NOT NULL,
  `cruisecode` varchar(5) NOT NULL,
  `cruisename` varchar(255) NOT NULL,
  `cruiseembarkation` date NOT NULL,
  `cruiseduration` smallint unsigned NOT NULL,
  `cruiseitinerary` json NOT NULL,
  `ratecode` varchar(5) NOT NULL,
  `ratename` varchar(255) NOT NULL,
  `ratepricing` json NOT NULL,
  `cabincode` varchar(5) NOT NULL,
  `cabinname` varchar(100) NOT NULL,
  `cancellationpolicy` json NOT NULL,
  `currency` varchar(3) NOT NULL,
  `totalprice` decimal(15,3) NOT NULL,
  `paymentschedule` json NOT NULL,
  `nextpaymentdue` date NOT NULL,
  `nextpaymentoutstanding` decimal(15,3) NOT NULL,
  `transactions` json NOT NULL,
  `totalpaid` decimal(15,3) NOT NULL,
  `leadtitle` varchar(5) NOT NULL,
  `leadgivenname` varchar(100) NOT NULL,
  `leadlastname` varchar(100) NOT NULL,
  `leademail` varchar(255) NOT NULL,
  `leadphone` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pnr` (`pnr`),
  CONSTRAINT `reservation_reservation_chk_1` CHECK ((`agencyid` >= 0)),
  CONSTRAINT `reservation_reservation_chk_2` CHECK ((`cruiseduration` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_reservation`
--

LOCK TABLES `reservation_reservation` WRITE;
/*!40000 ALTER TABLE `reservation_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-09 21:35:02
