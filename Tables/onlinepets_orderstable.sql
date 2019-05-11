-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinepets
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orderstable`
--

DROP TABLE IF EXISTS `orderstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderstable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `breed` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `uaddress` varchar(255) DEFAULT NULL,
  `ucontact` varchar(255) DEFAULT NULL,
  `uemail` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstable`
--

LOCK TABLES `orderstable` WRITE;
/*!40000 ALTER TABLE `orderstable` DISABLE KEYS */;
INSERT INTO `orderstable` VALUES (7,6,'St Bernard','Preet Singh','delivered','133301','18000','#17,Surajpur','preet14','singhpreet896@gmail.com','preet14','Male'),(8,6,'Boxer','Preet Singh','granted','133301','19000','#17,Surajpur','preet14','singhpreet896@gmail.com','preet14','Male'),(9,6,'Golden Retriever','Preet Singh','NULL','133301','19000','#17,Surajpur','preet14','singhpreet896@gmail.com','preet14','Male'),(10,6,'St Bernard','Mukul Chauhan','NULL','133301','18000','#17,Surajpur','mukulch','mukul@gmail.com','mukulch','Male'),(11,5,'Australian Silky Terrier','Preet Singh','NULL','133301','15000','#17,Surajpur','preet14','singhpreet896@gmail.com','preet14','Male'),(12,6,'St Bernard','Preet Singh','NULL','133301','18000','#17,Surajpur','preet14','singhpreet896@gmail.com','preet14','Male');
/*!40000 ALTER TABLE `orderstable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-11 12:43:25
