-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `brief` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` int NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category` (`category`) USING BTREE,
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'what is computer','something about computer','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',3,'2021-03-02 15:02:29'),(2,'History of disney','about disney','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',2,'2021-03-02 15:02:29'),(3,'read and write','addAf ef vd vfzvg rf','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',5,'2021-03-02 15:02:29'),(4,'algorythm','algorythming stuff','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',1,'2021-03-02 15:02:29'),(5,'Leyli and Majnon','some fun story','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',4,'2021-03-02 15:02:29'),(26,'b1','aaaaaaaaaaaaaaa','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',3,'2021-03-02 19:25:48'),(27,'b2','szdfewwwwwwwwwwwwww','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',1,'2021-03-02 19:25:48'),(28,'b3','sdvfede','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',5,'2021-03-02 19:25:48'),(29,'b4','zafcdewaedf','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',2,'2021-03-02 19:25:48'),(30,'b5','acdwsedfw','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',1,'2021-03-02 19:25:48'),(31,'b6','dzsvd','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',2,'2021-03-02 19:25:48'),(32,'b7','aaaaaaaaaa','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',1,'2021-03-02 19:25:48'),(33,'b8','as cxcdecfwaef sa ','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',5,'2021-03-02 19:25:48'),(34,'b9','sfvsdgvr','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',4,'2021-03-02 19:25:48'),(35,'b10','zdxszdxv','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',2,'2021-03-02 19:25:48'),(36,'b11','zaxdfcd','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',4,'2021-03-02 19:25:48'),(37,'b12','ascdwsaq','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',1,'2021-03-02 19:25:48'),(38,'b13','ascdwqdce','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',5,'2021-03-02 19:25:48'),(39,'b14','sxAZceer','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',3,'2021-03-02 19:25:48'),(40,'b15','sdxcfwsedfr','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',5,'2021-03-02 19:25:48'),(41,'b16','ascdgvryhju','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',2,'2021-03-02 19:25:48'),(42,'b17','ascdw','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',5,'2021-03-02 19:25:48'),(43,'b18','ascwq','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',3,'2021-03-02 19:25:48'),(44,'b19','aaaaaaaaaaa','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',3,'2021-03-02 19:25:48'),(45,'b20','awwwwwwqqqqqq','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vulputate augue maximus, vulputate dolor ut, consequat eros. Fusce quis posuere dolor. Nam finibus, sem ac pharetra porttitor, ipsum dui consequat libero, ut tincidunt quam lacus ac eros. Fusce dapibus semper luctus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In aliquam rutrum felis quis sodales. Praesent eget turpis id nisi blandit facilisis a ac magna. Donec id condimentum erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam a odio neque. Nam tempor finibus tincidunt. Fusce eleifend erat ac commodo suscipit.',4,'2021-03-02 19:25:48');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Math'),(2,'History'),(3,'Computer'),(4,'Story'),(5,'Education'),(6,'new'),(9,'not used');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'fun'),(2,'awesome'),(3,'science'),(4,'professional'),(5,'hand write');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_article`
--

DROP TABLE IF EXISTS `tag_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_id` int NOT NULL,
  `article_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `tag_article_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `tag_article_ibfk_3` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_article`
--

LOCK TABLES `tag_article` WRITE;
/*!40000 ALTER TABLE `tag_article` DISABLE KEYS */;
INSERT INTO `tag_article` VALUES (1,2,4),(2,2,2),(3,1,2),(4,5,5),(5,4,1);
/*!40000 ALTER TABLE `tag_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writer`
--

DROP TABLE IF EXISTS `writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writer`
--

LOCK TABLES `writer` WRITE;
/*!40000 ALTER TABLE `writer` DISABLE KEYS */;
INSERT INTO `writer` VALUES (1,'Briana Heshmat','Christopher nejad',29),(2,'Diana','simin var',19),(3,'cutarina','boresh zade',61),(4,'hexadecimal','computer far',30),(5,'elan','shield',25),(6,'No one','Use me',98);
/*!40000 ALTER TABLE `writer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writer_article`
--

DROP TABLE IF EXISTS `writer_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writer_article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer_id` int NOT NULL,
  `article_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`),
  KEY `writer_id` (`writer_id`),
  CONSTRAINT `writer_article_ibfk_1` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`id`),
  CONSTRAINT `writer_article_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writer_article`
--

LOCK TABLES `writer_article` WRITE;
/*!40000 ALTER TABLE `writer_article` DISABLE KEYS */;
INSERT INTO `writer_article` VALUES (1,1,4),(2,3,2),(3,2,5),(4,5,3),(5,4,1),(6,1,26),(7,1,27),(8,2,28),(9,3,29),(10,2,30),(11,4,31),(12,2,32),(13,1,33),(14,2,34),(15,5,35),(16,4,36),(17,2,37),(18,1,38),(19,2,39),(20,3,40),(21,1,41),(22,5,42),(23,1,43),(24,4,44),(25,5,45);
/*!40000 ALTER TABLE `writer_article` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-02 21:11:44
