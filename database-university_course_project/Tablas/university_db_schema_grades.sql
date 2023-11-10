CREATE DATABASE  IF NOT EXISTS `university_db_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `university_db_schema`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: university_db_schema
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `grades_grade` decimal(3,2) NOT NULL,
  `grades_students_id` int NOT NULL,
  `grades_professors_id` int NOT NULL,
  `grades_courses_id` int NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `grade_id_UNIQUE` (`grade_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  KEY `grades_professors_id_idx` (`grades_professors_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_professors_id` FOREIGN KEY (`grades_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE CASCADE,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,8.00,1,20,1),(2,9.00,1,22,2),(3,7.00,1,24,3),(5,8.00,1,20,1),(6,9.00,1,22,2),(7,7.00,1,24,3),(8,8.00,1,21,4),(9,6.00,2,23,5),(10,7.00,2,20,6),(11,8.00,2,22,7),(12,9.00,2,24,8),(13,8.00,1,20,1),(14,9.00,1,22,2),(15,7.00,1,24,3),(16,8.00,1,21,4),(17,6.00,2,23,5),(18,7.00,2,20,6),(19,8.00,2,22,7),(20,9.00,2,24,8),(21,8.00,3,21,1),(22,7.00,3,23,2),(23,5.00,3,20,3),(24,8.00,3,22,4),(25,9.00,4,24,5),(26,8.00,4,21,6),(27,6.00,4,23,7),(28,7.00,4,20,8),(29,9.00,5,22,1),(30,6.00,5,24,2),(31,9.00,5,21,3),(32,6.00,5,23,4),(33,7.00,6,20,5),(34,8.00,6,22,6),(35,7.00,6,24,7),(36,8.00,6,21,8),(37,6.00,7,20,1),(38,8.00,7,22,2),(39,5.00,7,24,3),(40,9.00,7,21,4),(41,9.00,8,23,5),(42,9.00,8,20,6),(43,8.00,8,22,7),(44,7.00,8,24,8),(45,8.00,9,20,1),(46,9.00,9,22,2),(47,9.00,9,24,3),(48,7.00,9,21,4),(49,8.00,10,23,5),(50,7.00,10,20,6),(51,6.00,10,22,7),(52,9.00,10,24,8),(53,6.00,11,20,1),(54,7.00,11,22,2),(55,9.00,11,24,3),(56,8.00,11,21,4),(57,9.00,12,23,5),(58,7.00,12,20,6),(59,9.00,12,22,7),(60,8.00,12,24,8),(61,8.00,13,20,1),(62,9.00,13,22,2),(63,8.00,13,24,3),(64,9.00,13,21,4),(65,7.00,14,23,5),(66,9.00,14,20,6),(67,8.00,14,22,7),(68,9.00,14,24,8),(69,9.00,15,20,1),(70,7.00,15,22,2),(71,6.00,15,24,3),(72,6.00,15,21,4),(73,6.00,16,23,5),(74,7.00,16,20,6),(75,9.00,16,22,7),(76,7.00,16,24,8),(77,8.00,17,20,1),(78,8.00,17,22,2),(79,9.00,17,24,3),(80,9.00,17,21,4),(81,7.00,18,23,5),(82,8.00,18,20,6),(83,9.00,18,22,7),(84,5.00,18,24,8),(85,9.00,19,20,1),(86,6.00,19,22,2),(87,7.00,19,24,3),(88,8.00,19,21,4),(89,9.00,20,23,5),(90,8.00,20,20,6),(91,9.00,20,22,7),(92,9.00,20,24,8);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-09 23:03:28
