-- MySQL dump 10.13  Distrib 5.6.21-70.1, for Linux (x86_64)
--
-- Host: localhost    Database: slboard_development
-- ------------------------------------------------------
-- Server version	5.6.21-70.1-log

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
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_acos_lft_rght` (`lft`,`rght`),
  KEY `idx_acos_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (1,NULL,NULL,NULL,'controllers',1,42),(2,1,NULL,NULL,'Users',2,5),(3,2,NULL,NULL,'Groups',3,4),(4,1,NULL,NULL,'Notices',6,7),(5,1,NULL,NULL,'GuestBooks',8,11),(6,5,NULL,NULL,'GuestBookComments',9,10),(7,1,NULL,NULL,'Questions',12,15),(8,7,NULL,NULL,'QuestionComments',13,14),(9,1,NULL,NULL,'Faqs',16,19),(10,9,NULL,NULL,'FaqCategories',17,18),(11,1,NULL,NULL,'Blogs',20,25),(12,11,NULL,NULL,'BlogCategories',21,22),(13,11,NULL,NULL,'BlogComments',23,24),(14,1,NULL,NULL,'CkeditorAssets',26,27),(15,1,NULL,NULL,'Galleries',28,31),(16,15,NULL,NULL,'GalleryCategories',29,30),(17,1,NULL,NULL,'Contacts',32,33),(18,1,NULL,NULL,'Portfolios',34,35),(19,1,NULL,NULL,'Histories',36,37),(20,1,NULL,NULL,'Home',38,39),(21,1,NULL,NULL,'Intro',40,41);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aros_lft_rght` (`lft`,`rght`),
  KEY `idx_aros_alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (1,NULL,'Group',1,'admins',1,2),(2,NULL,'Group',2,'managers',3,4),(3,NULL,'Group',3,'users',5,6),(4,NULL,'Group',4,'viewers',7,8);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`),
  KEY `idx_aco_id` (`aco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` VALUES (1,1,1,'1','1','1','1'),(2,2,1,'1','1','1','1'),(3,2,2,'-1','-1','-1','-1'),(4,3,17,'1','1','0','0'),(5,4,17,'1','1','0','0');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `blog_category_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `blogs_count` int(11) NOT NULL DEFAULT '0',
  `blog_categories_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `leaf` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_categories_on_blog_category_id` (`blog_category_id`),
  KEY `index_blog_categories_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,1,NULL,'내소개',1,0,1,0,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(2,1,NULL,'리눅스',0,0,1,0,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(3,1,NULL,'웹개발',0,0,1,0,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(4,1,NULL,'제작작품',25,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(5,1,NULL,'방명록',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(6,1,1,'소개',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(7,1,1,'일기',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(8,1,1,'생각',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(9,1,1,'사진첩',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(10,1,2,'설치',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(11,1,2,'응용프로그램',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(12,1,2,'기본명령어',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(13,1,2,'서버',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(14,1,2,'html',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(15,1,3,'스타일시트',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(16,1,3,'자바스크립트',0,0,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_comments_on_blog_id` (`blog_id`),
  KEY `index_blog_comments_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_contents`
--

DROP TABLE IF EXISTS `blog_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_contents`
--

LOCK TABLES `blog_contents` WRITE;
/*!40000 ALTER TABLE `blog_contents` DISABLE KEYS */;
INSERT INTO `blog_contents` VALUES (1,'그동안 수많은 방문자에 비해서 준비되지 못하였는데 이제 보다 업그레이드된 모습으로 다시 찾아뵙게되었습니다.\n    잠자는-사자와 소통하는 공간으로 계속 많은 이용바랍니다.','2015-01-27 18:15:04','2015-01-27 18:15:04'),(2,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12351235123</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12124</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>61361</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12351235</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12351235</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>123613</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>123613</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12351235</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12351235</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>12351235</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>351235</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>5123512351235</p>\r\n</body>\r\n</html>\r\n','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `blog_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog_comments_count` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blogs_on_user_id` (`user_id`),
  KEY `index_blogs_on_blog_category_id` (`blog_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,1,1,'잠자는-사자의 집이 다시 개장했습니다','설명 읗믄ㅇ힘낭흐민ㅇㅎ ',NULL,0,0,1,'2015-01-27 18:15:04','2015-01-27 18:15:04'),(2,2,4,'12351235','12351235',NULL,0,0,1,'2015-01-29 15:42:07','2015-01-29 15:42:07'),(3,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 15:42:32','2015-01-29 15:42:32'),(4,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 15:47:08','2015-01-29 15:47:08'),(5,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 15:49:49','2015-01-29 15:49:49'),(6,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 15:50:11','2015-01-29 15:50:11'),(7,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 15:50:47','2015-01-29 15:50:47'),(8,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 15:52:05','2015-01-29 15:52:05'),(9,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 18:47:54','2015-01-29 18:47:54'),(10,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 18:49:01','2015-01-29 18:49:01'),(11,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 18:49:48','2015-01-29 18:49:48'),(12,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 18:50:16','2015-01-29 18:50:16'),(13,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 18:51:52','2015-01-29 18:51:52'),(14,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 18:52:14','2015-01-29 18:52:14'),(15,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 18:52:39','2015-01-29 18:52:39'),(16,2,4,'44444444444','124',NULL,0,0,1,'2015-01-29 18:55:35','2015-01-29 18:55:35'),(17,2,4,'12356236','1236123',NULL,0,0,1,'2015-01-29 18:55:54','2015-01-29 18:55:54'),(18,2,4,'123512312362','1235',NULL,0,0,1,'2015-01-29 19:07:57','2015-01-29 19:07:57'),(19,2,4,'123512312362','1235',NULL,0,0,1,'2015-01-29 19:10:04','2015-01-29 19:10:04'),(20,2,4,'236','236',NULL,0,0,1,'2015-01-29 19:11:14','2015-01-29 19:11:14'),(21,2,4,'236','236',NULL,0,0,1,'2015-01-29 19:12:08','2015-01-29 19:12:08'),(22,2,4,'2315235','1235',NULL,0,0,1,'2015-01-29 19:48:32','2015-01-29 19:48:32'),(23,2,4,'2315235','1235',NULL,0,0,1,'2015-01-29 19:48:53','2015-01-29 19:48:53'),(24,2,4,'2315235','1235',NULL,0,0,1,'2015-01-29 19:49:51','2015-01-29 19:49:51'),(25,2,4,'123512351235','123512',NULL,0,0,1,'2015-01-29 19:52:10','2015-01-29 19:52:10'),(26,2,4,'12351235','235123',NULL,0,1,1,'2015-01-29 19:53:18','2015-01-29 19:53:18');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cake_sessions`
--

DROP TABLE IF EXISTS `cake_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cake_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `expires` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cake_sessions`
--

LOCK TABLES `cake_sessions` WRITE;
/*!40000 ALTER TABLE `cake_sessions` DISABLE KEYS */;
INSERT INTO `cake_sessions` VALUES ('ecinu6laortme0scf7725pscq4','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1422572558;s:9:\"countdown\";i:10;}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"2\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:15:\"admin@gmail.com\";s:4:\"name\";s:9:\"관리자\";s:5:\"photo\";N;s:11:\"description\";s:12:\"123512351235\";s:14:\"alternate_name\";N;s:6:\"gender\";b:1;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";N;s:9:\"job_title\";N;s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"1\";s:5:\"admin\";b:0;s:5:\"intro\";b:0;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";s:19:\"0000-00-00 00:00:00\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:5:\"admin\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-01-27 18:15:03\";s:10:\"updated_at\";s:19:\"2015-01-27 18:15:03\";}}}',1422572558),('qf5svc6rn9p5srleq6u7dmhbs1','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1422551963;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"2\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:15:\"admin@gmail.com\";s:4:\"name\";s:9:\"관리자\";s:5:\"photo\";N;s:11:\"description\";s:12:\"123512351235\";s:14:\"alternate_name\";N;s:6:\"gender\";b:1;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";N;s:9:\"job_title\";N;s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"1\";s:5:\"admin\";b:0;s:5:\"intro\";b:0;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";s:19:\"0000-00-00 00:00:00\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:5:\"admin\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"2015-01-27 18:15:03\";s:10:\"updated_at\";s:19:\"2015-01-27 18:15:03\";}}}',1422551963);
/*!40000 ALTER TABLE `cake_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_contents`
--

DROP TABLE IF EXISTS `contact_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_contents`
--

LOCK TABLES `contact_contents` WRITE;
/*!40000 ALTER TABLE `contact_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_faq_categories_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,1,'내소개',1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(2,1,'리눅스',1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(3,1,'웹개발',1,'2015-01-27 18:15:03','2015-01-27 18:15:03');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_contents`
--

DROP TABLE IF EXISTS `faq_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_contents`
--

LOCK TABLES `faq_contents` WRITE;
/*!40000 ALTER TABLE `faq_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_faqs_on_faq_category_id` (`faq_category_id`),
  KEY `index_faqs_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `gallery_category_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_galleries_on_user_id` (`user_id`),
  KEY `index_galleries_on_gallery_category_id` (`gallery_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_categories`
--

DROP TABLE IF EXISTS `gallery_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `galleries_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_gallery_categories_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_categories`
--

LOCK TABLES `gallery_categories` WRITE;
/*!40000 ALTER TABLE `gallery_categories` DISABLE KEYS */;
INSERT INTO `gallery_categories` VALUES (1,1,'일상',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(2,1,'멍멍이',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(3,1,'가족들',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(4,1,'풍경',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(5,1,'기타',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03');
/*!40000 ALTER TABLE `gallery_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `users_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admin',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(2,'manage',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(3,'user',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(4,'viewer',0,1,'2015-01-27 18:15:03','2015-01-27 18:15:03');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_book_comments`
--

DROP TABLE IF EXISTS `guest_book_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_book_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_book_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_guest_book_comments_on_user_id` (`user_id`),
  KEY `index_guest_book_comments_on_guest_book_id` (`guest_book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book_comments`
--

LOCK TABLES `guest_book_comments` WRITE;
/*!40000 ALTER TABLE `guest_book_comments` DISABLE KEYS */;
INSERT INTO `guest_book_comments` VALUES (1,1,NULL,'1236',NULL,NULL,'12351235','2015-01-28 15:59:03','2015-01-28 15:59:03');
/*!40000 ALTER TABLE `guest_book_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_book_contents`
--

DROP TABLE IF EXISTS `guest_book_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_book_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book_contents`
--

LOCK TABLES `guest_book_contents` WRITE;
/*!40000 ALTER TABLE `guest_book_contents` DISABLE KEYS */;
INSERT INTO `guest_book_contents` VALUES (1,'1235236');
/*!40000 ALTER TABLE `guest_book_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_books`
--

DROP TABLE IF EXISTS `guest_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guest_book_comments_count` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_guest_books_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_books`
--

LOCK TABLES `guest_books` WRITE;
/*!40000 ALTER TABLE `guest_books` DISABLE KEYS */;
INSERT INTO `guest_books` VALUES (1,NULL,'1235235','1231235',NULL,NULL,1,1,1,'2015-01-28 03:26:01','2015-01-28 03:26:01');
/*!40000 ALTER TABLE `guest_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `year` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_histories_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impressions`
--

DROP TABLE IF EXISTS `impressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impressions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `impressionable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `impressionable_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `controller_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `view_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_hash` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `referrer` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `poly_request_index` (`impressionable_type`,`impressionable_id`,`request_hash`),
  KEY `poly_ip_index` (`impressionable_type`,`impressionable_id`,`ip_address`),
  KEY `poly_session_index` (`impressionable_type`,`impressionable_id`,`session_hash`),
  KEY `controlleraction_request_index` (`controller_name`,`action_name`,`request_hash`),
  KEY `controlleraction_ip_index` (`controller_name`,`action_name`,`ip_address`),
  KEY `controlleraction_session_index` (`controller_name`,`action_name`,`session_hash`),
  KEY `index_impressions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impressions`
--

LOCK TABLES `impressions` WRITE;
/*!40000 ALTER TABLE `impressions` DISABLE KEYS */;
INSERT INTO `impressions` VALUES (1,'GuestBook',1,NULL,'guest_books','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20005/guest_books','2015-01-28 03:26:04','2015-01-28 03:26:04'),(2,'Notice',1,NULL,'notices','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20005/notices','2015-01-28 15:56:38','2015-01-28 15:56:38'),(3,'Question',1,NULL,'questions','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20005/questions','2015-01-28 16:29:45','2015-01-28 16:29:45'),(4,'Blog',26,2,'blogs','view',NULL,NULL,'::1',NULL,NULL,'http://localhost:20005/blogs','2015-01-29 22:17:40','2015-01-29 22:17:40');
/*!40000 ALTER TABLE `impressions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_contents`
--

DROP TABLE IF EXISTS `notice_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `html` tinyint(1) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_contents`
--

LOCK TABLES `notice_contents` WRITE;
/*!40000 ALTER TABLE `notice_contents` DISABLE KEYS */;
INSERT INTO `notice_contents` VALUES (1,0,'그동안 수많은 방문자에 비해서 준비되지 못하였는데 이제 보다 업그레이드된 모습으로 다시 찾아뵙게되었습니다.\n    잠자는-사자와 소통하는 공간으로 계속 많은 이용바랍니다.');
/*!40000 ALTER TABLE `notice_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notices_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
INSERT INTO `notices` VALUES (1,1,'잠자는-사자의 집이 다시 개장했습니다.',1,1,'2015-01-27 18:15:04','2015-01-27 18:15:04');
/*!40000 ALTER TABLE `notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio_contents`
--

DROP TABLE IF EXISTS `portfolio_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_contents`
--

LOCK TABLES `portfolio_contents` WRITE;
/*!40000 ALTER TABLE `portfolio_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_portfolios_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_comments`
--

DROP TABLE IF EXISTS `question_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_question_comments_on_user_id` (`user_id`),
  KEY `index_question_comments_on_question_id` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_comments`
--

LOCK TABLES `question_comments` WRITE;
/*!40000 ALTER TABLE `question_comments` DISABLE KEYS */;
INSERT INTO `question_comments` VALUES (1,1,NULL,'2136',NULL,NULL,'12352','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,NULL,'436346',NULL,NULL,'123512351253','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `question_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_contents`
--

DROP TABLE IF EXISTS `question_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_contents`
--

LOCK TABLES `question_contents` WRITE;
/*!40000 ALTER TABLE `question_contents` DISABLE KEYS */;
INSERT INTO `question_contents` VALUES (1,'123612366');
/*!40000 ALTER TABLE `question_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` int(11) NOT NULL DEFAULT '0',
  `question_comments_count` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_questions_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,NULL,'23512351235','123461236',NULL,NULL,0,2,1,1,'2015-01-28 16:29:43','2015-01-28 16:29:43');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120516001638'),('20120516002154'),('20120517002149'),('20120522094638'),('20120523094638'),('20120620234229'),('20120624164124'),('20121214055337'),('20121216002147'),('20121216002148'),('20121216002149'),('20121216023255'),('20121223094638'),('20121223140414'),('20130725114929'),('20140505080019'),('20140505080020'),('20140505080021');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,2,NULL,NULL,NULL,NULL,NULL),(2,2,2,NULL,NULL,NULL,NULL,NULL),(3,3,2,NULL,NULL,NULL,NULL,NULL),(4,4,2,NULL,NULL,NULL,NULL,NULL),(5,5,2,NULL,NULL,NULL,NULL,NULL),(6,1,5,NULL,NULL,NULL,NULL,NULL),(7,1,6,NULL,NULL,NULL,NULL,NULL),(8,2,7,NULL,NULL,NULL,NULL,NULL),(9,2,8,NULL,NULL,NULL,NULL,NULL),(10,1,11,NULL,NULL,NULL,NULL,NULL),(11,3,11,NULL,NULL,NULL,NULL,NULL),(12,1,12,NULL,NULL,NULL,NULL,NULL),(13,3,12,NULL,NULL,NULL,NULL,NULL),(14,1,13,NULL,NULL,NULL,NULL,NULL),(15,2,13,NULL,NULL,NULL,NULL,NULL),(16,3,13,NULL,NULL,NULL,NULL,NULL),(17,1,14,NULL,NULL,NULL,NULL,NULL),(18,2,14,NULL,NULL,NULL,NULL,NULL),(19,3,14,NULL,NULL,NULL,NULL,NULL),(20,1,15,NULL,NULL,NULL,NULL,NULL),(21,2,15,NULL,NULL,NULL,NULL,NULL),(22,3,15,NULL,NULL,NULL,NULL,NULL),(23,4,15,NULL,NULL,NULL,NULL,NULL),(24,5,15,NULL,NULL,NULL,NULL,NULL),(25,6,15,NULL,NULL,NULL,NULL,NULL),(26,1,16,NULL,NULL,NULL,NULL,NULL),(27,2,16,NULL,NULL,NULL,NULL,NULL),(28,3,16,NULL,NULL,NULL,NULL,NULL),(29,4,16,NULL,NULL,NULL,NULL,NULL),(30,5,16,NULL,NULL,NULL,NULL,NULL),(31,6,16,NULL,NULL,NULL,NULL,NULL),(32,1,17,NULL,NULL,NULL,NULL,NULL),(33,3,17,NULL,NULL,NULL,NULL,NULL),(34,5,17,NULL,NULL,NULL,NULL,NULL),(35,7,17,NULL,NULL,NULL,NULL,NULL),(36,1,18,NULL,NULL,NULL,NULL,NULL),(37,2,18,NULL,NULL,NULL,NULL,NULL),(38,3,18,NULL,NULL,NULL,NULL,NULL),(39,4,18,NULL,NULL,NULL,NULL,NULL),(40,5,18,NULL,NULL,NULL,NULL,NULL),(41,1,19,NULL,NULL,NULL,NULL,NULL),(42,2,19,NULL,NULL,NULL,NULL,NULL),(43,3,19,NULL,NULL,NULL,NULL,NULL),(44,4,19,NULL,NULL,NULL,NULL,NULL),(45,5,19,NULL,NULL,NULL,NULL,NULL),(46,1,20,NULL,NULL,NULL,NULL,NULL),(47,2,20,NULL,NULL,NULL,NULL,NULL),(48,3,20,NULL,NULL,NULL,NULL,NULL),(49,4,20,NULL,NULL,NULL,NULL,NULL),(50,5,20,NULL,NULL,NULL,NULL,NULL),(51,1,21,NULL,NULL,NULL,NULL,NULL),(52,2,21,NULL,NULL,NULL,NULL,NULL),(53,3,21,NULL,NULL,NULL,NULL,NULL),(54,4,21,NULL,NULL,NULL,NULL,NULL),(55,5,21,NULL,NULL,NULL,NULL,NULL),(56,1,26,'Blog',NULL,NULL,'tags','2015-01-29 19:53:18'),(57,2,26,'Blog',NULL,NULL,'tags','2015-01-29 19:53:18'),(58,3,26,'Blog',NULL,NULL,'tags','2015-01-29 19:53:18'),(59,4,26,'Blog',NULL,NULL,'tags','2015-01-29 19:53:18'),(60,5,26,'Blog',NULL,NULL,'tags','2015-01-29 19:53:18');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taggings_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'1',15),(2,'2',12),(3,'3',13),(4,'4',8),(5,'5',9),(6,'6',0),(7,'7',0);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_photos`
--

DROP TABLE IF EXISTS `user_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_photos_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_photos`
--

LOCK TABLES `user_photos` WRITE;
/*!40000 ALTER TABLE `user_photos` DISABLE KEYS */;
INSERT INTO `user_photos` VALUES (1,1,'sl.jpg','jjh',1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(2,2,'crying_baby.jpg','',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `user_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternate_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT '1',
  `birth_date` date DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_title` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_photos_count` int(11) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `intro` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  KEY `index_users_on_group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'toughjjh@gmail.com','정종호','$2a$10$RsrWU8b8uBiXbB8UrcyACeC99CHVhCuXUXWOxCUfbSGrMtNPCRDzi','--- !ruby/object:File {}\n','깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.','잠자는-사자',0,NULL,NULL,'http://www.sleepinglion.pe.kr','웹프로그래머',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,1,1,1,'2015-01-27 18:15:03','2015-01-27 18:15:03'),(2,1,'admin@gmail.com','관리자','$2a$10$9RvjbInqPJht/0/n5dtFvOfBHpZpLkWfzTJrQbjFSUOcZqGy1LJs2',NULL,'123512351235',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,1,0,0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
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

-- Dump completed on 2015-01-30  4:03:31
