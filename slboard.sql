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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (1,NULL,NULL,NULL,'controllers',1,44),(2,1,NULL,NULL,'Users',2,5),(3,2,NULL,NULL,'Groups',3,4),(4,1,NULL,NULL,'Notices',6,7),(5,1,NULL,NULL,'GuestBooks',8,11),(6,5,NULL,NULL,'GuestBookComments',9,10),(7,1,NULL,NULL,'Questions',12,15),(8,7,NULL,NULL,'QuestionComments',13,14),(9,1,NULL,NULL,'Faqs',16,19),(10,9,NULL,NULL,'FaqCategories',17,18),(11,1,NULL,NULL,'Blogs',20,25),(12,11,NULL,NULL,'BlogCategories',21,22),(13,11,NULL,NULL,'BlogComments',23,24),(14,1,NULL,NULL,'CkeditorAssets',26,27),(15,1,NULL,NULL,'Galleries',28,31),(16,15,NULL,NULL,'GalleryCategories',29,30),(17,1,NULL,NULL,'Contacts',32,33),(18,1,NULL,NULL,'Portfolios',34,35),(19,1,NULL,NULL,'Histories',36,37),(20,1,NULL,NULL,'Home',38,39),(21,1,NULL,NULL,'Intro',40,41),(22,1,NULL,NULL,'Resources',42,43);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ad_positions`
--

DROP TABLE IF EXISTS `ad_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_ad_positions_on_title` (`title`),
  UNIQUE KEY `index_ad_positions_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_positions`
--

LOCK TABLES `ad_positions` WRITE;
/*!40000 ALTER TABLE `ad_positions` DISABLE KEYS */;
INSERT INTO `ad_positions` VALUES (1,'광고 표시안함','none',1,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(2,'위에 표시','top',1,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(3,'아래에 표시','bottom',1,'2015-03-11 15:40:17','2015-03-11 15:40:17');
/*!40000 ALTER TABLE `ad_positions` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (1,NULL,'Group',1,'admins',1,2),(2,NULL,'Group',2,'managers',3,4),(3,NULL,'Group',3,'users',5,6),(4,NULL,'Group',4,'viewers',7,8),(5,NULL,'Group',1,NULL,9,10),(6,NULL,'Group',2,NULL,11,12),(7,NULL,'Group',3,NULL,13,14),(8,NULL,'Group',4,NULL,15,16);
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
  UNIQUE KEY `index_blog_categories_on_title` (`title`),
  KEY `index_blog_categories_on_blog_category_id` (`blog_category_id`),
  KEY `index_blog_categories_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,1,1,'분류1',0,1,1,1,'2015-03-15 02:38:08','2015-03-15 02:38:08');
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
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_contents`
--

LOCK TABLES `blog_contents` WRITE;
/*!40000 ALTER TABLE `blog_contents` DISABLE KEYS */;
INSERT INTO `blog_contents` VALUES (1,'그동안 수많은 방문자에 비해서 준비되지 못하였는데 이제 보다 업그레이드된 모습으로 다시 찾아뵙게되었습니다.\n    잠자는-사자와 소통하는 공간으로 계속 많은 이용바랍니다.');
/*!40000 ALTER TABLE `blog_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_translations`
--

DROP TABLE IF EXISTS `blog_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_translations_on_blog_id` (`blog_id`),
  KEY `index_blog_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_translations`
--

LOCK TABLES `blog_translations` WRITE;
/*!40000 ALTER TABLE `blog_translations` DISABLE KEYS */;
INSERT INTO `blog_translations` VALUES (1,1,'ko','2015-03-11 15:40:17','2015-03-11 15:40:17','잠자는-사자의 집이 다시 개장했습니다','설명 읗믄ㅇ힘낭흐민ㅇㅎ ');
/*!40000 ALTER TABLE `blog_translations` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,1,1,'잠자는-사자의 집이 다시 개장했습니다','설명 읗믄ㅇ힘낭흐민ㅇㅎ ',NULL,0,0,1,'2015-03-11 15:40:17','2015-03-11 15:40:17');
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
INSERT INTO `cake_sessions` VALUES ('73rpqtjc6leut96nnkgtn2n4p4','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426262107;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:8:\"redirect\";s:12:\"/notices/add\";}',1426262107),('flef8jjr1ls5sc838nlmq0nht0','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426351703;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:8:\"redirect\";s:6:\"/admin\";}',1426351703),('h7a6kpgqrhjfj801bv36r1f5k7','Config|a:3:{s:9:\"userAgent\";s:32:\"14c4320a4dd79968e0277dab13566fa4\";s:4:\"time\";i:1426369457;s:9:\"countdown\";i:10;}Message|a:0:{}Auth|a:1:{s:4:\"User\";a:27:{s:2:\"id\";s:1:\"2\";s:8:\"group_id\";s:1:\"1\";s:5:\"email\";s:16:\"admin@slboard.kr\";s:4:\"name\";s:9:\"관리자\";s:5:\"photo\";s:0:\"\";s:11:\"description\";s:19:\"관리자입니다.\";s:14:\"alternate_name\";N;s:6:\"gender\";b:1;s:10:\"birth_date\";N;s:10:\"death_date\";N;s:3:\"url\";N;s:9:\"job_title\";N;s:20:\"reset_password_token\";N;s:22:\"reset_password_sent_at\";N;s:19:\"remember_created_at\";N;s:13:\"sign_in_count\";s:1:\"0\";s:18:\"current_sign_in_at\";N;s:15:\"last_sign_in_at\";N;s:18:\"current_sign_in_ip\";N;s:15:\"last_sign_in_ip\";N;s:17:\"user_photos_count\";s:1:\"2\";s:5:\"admin\";b:0;s:5:\"intro\";b:0;s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";s:19:\"0000-00-00 00:00:00\";s:5:\"Group\";a:6:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:9:\"관리자\";s:11:\"users_count\";s:1:\"0\";s:6:\"enable\";b:1;s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";s:19:\"0000-00-00 00:00:00\";}}}',1426369457);
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
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
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
  `faqs_count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_faq_categories_on_title` (`title`),
  KEY `index_faq_categories_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,1,'분류1',0,1,'2015-03-15 02:37:50','2015-03-15 02:37:50');
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
  UNIQUE KEY `index_gallery_categories_on_title` (`title`),
  KEY `index_gallery_categories_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_categories`
--

LOCK TABLES `gallery_categories` WRITE;
/*!40000 ALTER TABLE `gallery_categories` DISABLE KEYS */;
INSERT INTO `gallery_categories` VALUES (1,1,'분류1',0,1,'2015-03-15 02:37:57','2015-03-15 02:37:57');
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
INSERT INTO `groups` VALUES (1,'관리자',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'부관리자',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'사용자',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'제한된 사용자',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book_comments`
--

LOCK TABLES `guest_book_comments` WRITE;
/*!40000 ALTER TABLE `guest_book_comments` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_book_contents`
--

LOCK TABLES `guest_book_contents` WRITE;
/*!40000 ALTER TABLE `guest_book_contents` DISABLE KEYS */;
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
  `guest_book_comments_count` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_guest_books_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_books`
--

LOCK TABLES `guest_books` WRITE;
/*!40000 ALTER TABLE `guest_books` DISABLE KEYS */;
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
-- Table structure for table `i18n`
--

DROP TABLE IF EXISTS `i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `i18n` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `locale` (`locale`),
  KEY `model` (`model`),
  KEY `row_id` (`foreign_key`),
  KEY `field` (`field`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n`
--

LOCK TABLES `i18n` WRITE;
/*!40000 ALTER TABLE `i18n` DISABLE KEYS */;
INSERT INTO `i18n` VALUES (1,'ko_kr','BlogCategory',17,'title','21351235'),(2,'ko_kr','BlogCategory',18,'title','12352135'),(3,'ko_kr','BlogCategory',19,'title','23513523'),(4,'kor','FaqCategory',1,'title','분류1'),(5,'kor','GalleryCategory',1,'title','분류1'),(6,'ko_kr','BlogCategory',1,'title','분류1'),(7,'kor','Group',1,'title','관리자'),(8,'kor','Group',2,'title','부관리자'),(9,'kor','Group',3,'title','사용자'),(10,'kor','Group',4,'title','제한된 사용자');
/*!40000 ALTER TABLE `i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impressions`
--

DROP TABLE IF EXISTS `impressions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `impressions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `impressionable_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impressions`
--

LOCK TABLES `impressions` WRITE;
/*!40000 ALTER TABLE `impressions` DISABLE KEYS */;
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
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_contents`
--

LOCK TABLES `notice_contents` WRITE;
/*!40000 ALTER TABLE `notice_contents` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notices`
--

LOCK TABLES `notices` WRITE;
/*!40000 ALTER TABLE `notices` DISABLE KEYS */;
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
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_comments`
--

LOCK TABLES `question_comments` WRITE;
/*!40000 ALTER TABLE `question_comments` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_contents`
--

LOCK TABLES `question_contents` WRITE;
/*!40000 ALTER TABLE `question_contents` DISABLE KEYS */;
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
  `secret` tinyint(1) NOT NULL DEFAULT '0',
  `question_comments_count` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_questions_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20120516001638'),('20120516002154'),('20120517002149'),('20120522094638'),('20120523094638'),('20120620234229'),('20120624164124'),('20121214055337'),('20121216002147'),('20121216002148'),('20121216002149'),('20121216023255'),('20121223094638'),('20121223140414'),('20130101002147'),('20130101002148'),('20130101002149'),('20130725114929'),('20140505080019'),('20140505080020'),('20140505080021');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_controller_photos`
--

DROP TABLE IF EXISTS `setting_controller_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting_controller_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_controller_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_setting_controller_photos_on_setting_controller_id` (`setting_controller_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_controller_photos`
--

LOCK TABLES `setting_controller_photos` WRITE;
/*!40000 ALTER TABLE `setting_controller_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_controller_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_controllers`
--

DROP TABLE IF EXISTS `setting_controllers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting_controllers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_position_id` int(11) NOT NULL,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `menu_action` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'index',
  `use_category` tinyint(1) NOT NULL DEFAULT '0',
  `menu_display` tinyint(1) NOT NULL DEFAULT '1',
  `per` int(11) NOT NULL DEFAULT '10',
  `desc` tinyint(1) NOT NULL DEFAULT '1',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `priority` int(11) NOT NULL DEFAULT '100',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_setting_controllers_on_title` (`title`),
  UNIQUE KEY `index_setting_controllers_on_controller` (`controller`),
  KEY `index_setting_controllers_on_ad_position_id` (`ad_position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_controllers`
--

LOCK TABLES `setting_controllers` WRITE;
/*!40000 ALTER TABLE `setting_controllers` DISABLE KEYS */;
INSERT INTO `setting_controllers` VALUES (1,3,'메인','처음화면','home','index',0,0,10,1,1,9000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(2,3,'소개','소개','intro','index',0,1,10,1,1,1000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(3,2,'갤러리','갤러리','galleries','index',1,1,60,1,1,2000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(4,2,'블로그','블로그','blogs','index',1,1,10,1,1,3000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(5,2,'질문, 답변','질문,답변','questions','index',0,1,10,1,1,4000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(6,2,'FAQ','FAQ','faqs','index',0,0,10,1,1,5000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(7,2,'상담,문의','상담 문의를 받을수 있게 합니다.','contacts','new',0,0,10,1,1,6000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(8,1,'공지사항','운영자가 방문자들에게 알릴 공지사항을 알릴수 있게 합니다.','notices','index',0,0,10,1,1,7000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(9,2,'방명록','방문자가 글을 쓸수 있는 방명록입니다.','guest_books','index',0,1,10,1,1,8000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(10,2,'연혁','연혁','histories','index',0,0,10,1,1,8000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(11,2,'포트폴리오','포트폴리오','portfolios','index',0,1,10,1,1,8000,'2015-03-11 15:40:17','2015-03-11 15:40:17'),(12,2,'회원가입','사용자','users','new',0,0,10,1,1,9000,'2015-03-11 15:40:17','2015-03-11 15:40:17');
/*!40000 ALTER TABLE `setting_controllers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_global`
--

DROP TABLE IF EXISTS `setting_global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting_global` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_global`
--

LOCK TABLES `setting_global` WRITE;
/*!40000 ALTER TABLE `setting_global` DISABLE KEYS */;
/*!40000 ALTER TABLE `setting_global` ENABLE KEYS */;
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
  `taggable_type` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
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
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_photos_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_photos`
--

LOCK TABLES `user_photos` WRITE;
/*!40000 ALTER TABLE `user_photos` DISABLE KEYS */;
INSERT INTO `user_photos` VALUES (1,1,'sl.jpg','jjh',0,1,'2015-03-11 15:40:16','2015-03-11 15:40:16'),(2,2,'.face.icon','',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,3,'','',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,2,'.face.icon','',0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
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
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
INSERT INTO `users` VALUES (1,1,'toughjjh@gmail.com','정종호','$2a$10$ch6X5ZD7lboLQrodc6cfc.pEmKZ8tUtSu5XYB8VmyHUuxJgyX2eLe','--- !ruby/object:File {}\n','깨끗한 웹세상을 꿈꾸는 웹프로그래머 잠자는-사자입니다.','잠자는-사자',0,NULL,NULL,'http://www.sleepinglion.pe.kr','웹프로그래머',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,1,1,1,'2015-03-11 15:40:16','2015-03-11 15:40:16'),(2,1,'admin@slboard.kr','관리자','$2a$10$/7KUbUkA/kHTegsjS4Mpb.qE5RHHCjEAfLlyG16HrxQW7lWj/XOw6','','관리자입니다.',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,2,0,0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
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

-- Dump completed on 2015-03-15  2:45:05
