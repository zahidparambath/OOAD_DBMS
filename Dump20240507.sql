CREATE DATABASE  IF NOT EXISTS `trainer_evaluation_system_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `trainer_evaluation_system_db`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trainer_evaluation_system_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `employee_firstname` varchar(20) DEFAULT NULL,
  `employee_lastname` varchar(20) DEFAULT NULL,
  `ph_number` bigint DEFAULT NULL,
  `designation_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `user_id` (`user_id`),
  KEY `designation_id` (`designation_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`designation_id`) REFERENCES `employee_designation` (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'john','doe',1234567890,1),(2,2,'emma','smith',2345678901,1),(3,3,'michael','johnson',3456789012,2),(4,4,'sarah','williams',4567890123,2),(5,5,'alex','brown',5678901234,2),(6,6,'lisa','davis',6789012345,2),(7,7,'david','miller',7890123456,3),(8,8,'matt','jackson',8901234567,3),(9,9,'rachel','wilson',9012345678,3),(10,10,'chris','thomas',1234567890,3),(11,11,'emily','white',2345678901,3),(12,12,'james','harris',3456789012,3),(13,13,'olivia','taylor',4567890123,3),(14,14,'jessica','moore',5678901234,3),(15,15,'william','anderson',6789012345,3),(16,16,'sophia','clark',7890123456,3),(17,17,'andrew','hall',8901234567,3),(18,18,'emma','martinez',9012345678,3),(19,19,'natalie','lopez',1234567890,3),(20,20,'ryan','hernandez',2345678901,3),(21,21,'ashley','hill',3456789012,3),(22,22,'samuel','young',4567890123,3),(23,23,'hannah','scott',5678901234,3),(24,24,'jacob','green',6789012345,3),(25,25,'elizabeth','king',7890123456,3),(26,26,'adam','lee',8901234567,3),(29,27,'','parambath',3,3),(30,28,'anish','korah',3,3),(31,29,'imran','khan',3,3);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_designation`
--

DROP TABLE IF EXISTS `employee_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_designation` (
  `designation_id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_designation`
--

LOCK TABLES `employee_designation` WRITE;
/*!40000 ALTER TABLE `employee_designation` DISABLE KEYS */;
INSERT INTO `employee_designation` VALUES (1,'admin'),(2,'trainer'),(3,'trainee');
/*!40000 ALTER TABLE `employee_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_response`
--

DROP TABLE IF EXISTS `evaluation_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation_response` (
  `response_id` int NOT NULL AUTO_INCREMENT,
  `session_id` int DEFAULT NULL,
  `trainee_id` int DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`response_id`),
  KEY `session_id` (`session_id`),
  KEY `trainee_id` (`trainee_id`),
  CONSTRAINT `evaluation_response_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `training_session` (`session_id`),
  CONSTRAINT `evaluation_response_ibfk_2` FOREIGN KEY (`trainee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_response`
--

LOCK TABLES `evaluation_response` WRITE;
/*!40000 ALTER TABLE `evaluation_response` DISABLE KEYS */;
INSERT INTO `evaluation_response` VALUES (1,1,7,8.5,'The session was informative and engaging.'),(2,1,8,7,'Good content, but could be more interactive.'),(3,1,9,9,'Excellent session, very well presented.'),(4,1,10,6.5,'Lacked depth in some areas, overall decent.'),(5,1,11,8,'Enjoyed the session, learned a lot.'),(6,1,12,9.5,'Great session, highly informative.'),(7,1,13,8,'Interesting topic, well explained.'),(8,1,14,7.5,'Could have covered more examples.'),(9,1,15,6.5,'Session felt rushed, but still helpful.'),(10,1,16,8.5,'Very insightful session, enjoyed it.'),(11,2,17,8,'Clear explanations, good practical exercises.'),(12,2,18,7,'Found some parts confusing, overall helpful.'),(13,2,19,9,'Really liked the session, learnt a lot.'),(14,2,20,8.5,'Engaging presentation, would recommend.'),(15,2,21,7.5,'Could have been more interactive.'),(16,2,22,9,'Excellent session, very well structured.'),(17,2,23,8,'Enjoyed the topic, but wished for more examples.'),(18,2,24,7.5,'Good presentation, clear explanations.'),(19,2,25,8.5,'Useful session, covered important points.'),(20,2,26,8,'Helpful session, but could have been more detailed.'),(21,3,7,8.5,'Informative and engaging session.'),(22,3,8,7,'Good content, but could be more interactive.'),(23,3,9,9,'Excellent session, very well presented.'),(24,3,10,6.5,'Lacked depth in some areas, overall decent.'),(25,3,11,8,'Enjoyed the session, learned a lot.'),(26,3,12,9.5,'Great session, highly informative.'),(27,3,13,8,'Interesting topic, well explained.'),(28,3,14,7.5,'Could have covered more examples.'),(29,3,15,6.5,'Session felt rushed, but still helpful.'),(30,3,16,8.5,'Very insightful session, enjoyed it.'),(31,4,17,4.5,'Found explanations confusing, needs improvement.'),(32,4,18,5.5,'Some parts were helpful, but overall lacking.'),(33,4,19,7.5,'Decent session, could be more engaging.'),(34,4,20,6,'Average presentation, needs more depth.'),(35,4,21,4,'Session lacked clarity, not very helpful.'),(36,4,22,6.5,'Content could have been organized better.'),(37,4,23,5,'Some useful information, but poorly presented.'),(38,4,24,4.5,'Presentation was dull, struggled to stay engaged.'),(39,4,25,7,'Some valuable insights, but poorly structured.'),(40,4,26,5.5,'Session lacked depth, needs improvement.'),(41,5,7,6.5,'Interesting topic, but poorly explained.'),(42,5,8,7.5,'Good content, but lacked practical examples.'),(43,5,9,4,'Session felt rushed, not very informative.'),(44,5,10,6,'Decent session, but lacked engagement.'),(45,5,11,5.5,'Expected more depth in the content.'),(46,5,12,4.5,'Found the session confusing, needs improvement.'),(47,5,13,5,'Some useful insights, but poorly presented.'),(48,5,14,7,'Content was good, but presentation could be better.'),(49,5,15,4,'Session was too fast-paced, hard to follow.'),(50,5,16,6.5,'Valuable information, but presentation lacked clarity.'),(51,6,17,5,'Found explanations confusing, needs improvement.'),(52,6,18,6.5,'Some parts were helpful, but overall lacking.'),(53,6,19,7,'Decent session, could be more engaging.'),(54,6,20,4.5,'Average presentation, needs more depth.'),(55,6,21,5.5,'Session lacked clarity, not very helpful.'),(56,6,22,6,'Content could have been organized better.'),(57,6,23,4,'Some useful information, but poorly presented.'),(58,6,24,5.5,'Presentation was dull, struggled to stay engaged.'),(59,6,25,6,'Some valuable insights, but poorly structured.'),(60,6,26,5,'Session lacked depth, needs improvement.'),(61,7,7,7.5,'Interesting topic, but poorly explained.'),(62,7,8,6,'Good content, but lacked practical examples.'),(63,7,9,5.5,'Session felt rushed, not very informative.'),(64,7,10,4.5,'Decent session, but lacked engagement.'),(65,7,11,6.5,'Expected more depth in the content.'),(66,7,12,5,'Found the session confusing, needs improvement.'),(67,7,13,4,'Some useful insights, but poorly presented.'),(68,7,14,6,'Content was good, but presentation could be better.'),(69,7,15,5,'Session was too fast-paced, hard to follow.'),(70,7,16,7,'Valuable information, but presentation lacked clarity.'),(71,8,17,6.5,'Informative session, but lacked practical examples.'),(72,8,18,5,'Content was confusing, needs better explanation.'),(73,8,19,7,'Engaging presentation, but lacked depth.'),(74,8,20,6,'Decent session, could be more interactive.'),(75,8,21,4.5,'Content was not well-organized, hard to follow.'),(76,8,22,6.5,'Some useful insights, but poorly presented.'),(77,8,23,7.5,'Found the session informative, but lacking in engagement.'),(78,8,24,5.5,'Could have covered more examples.'),(79,8,25,6,'Session felt rushed, but still helpful.'),(80,8,26,7,'Well-structured session, enjoyed it.'),(81,9,7,6,'Lacked depth, needs more detailed explanation.'),(82,9,8,7.5,'Interesting topic, but poorly explained.'),(83,9,9,6.5,'Engaging session, but could be more interactive.'),(84,9,10,5,'Content was confusing, needs better clarification.'),(85,9,11,7,'Well-presented session, learned a lot.'),(86,9,12,6,'Session felt rushed, could have covered more.'),(87,9,13,5.5,'Could have provided more practical examples.'),(88,9,14,6.5,'Informative content, but lacked engagement.'),(89,9,15,7,'Interesting topic, well-explained.'),(90,9,16,6,'Decent session, but lacked depth.'),(91,10,17,6.5,'Informative session, but lacked practical examples.'),(92,10,18,5,'Content was confusing, needs better explanation.'),(93,10,19,7,'Engaging presentation, but lacked depth.'),(94,10,20,6,'Decent session, could be more interactive.'),(95,10,21,4.5,'Content was not well-organized, hard to follow.'),(96,10,22,6.5,'Some useful insights, but poorly presented.'),(97,10,23,7.5,'Found the session informative, but lacking in engagement.'),(98,10,24,5.5,'Could have covered more examples.'),(99,10,25,6,'Session felt rushed, but still helpful.'),(100,10,26,7,'Well-structured session, enjoyed it.'),(101,11,7,6,'Lacked depth, needs more detailed explanation.'),(102,11,8,7.5,'Interesting topic, but poorly explained.'),(103,11,9,6.5,'Engaging session, but could be more interactive.'),(104,11,10,5,'Content was confusing, needs better clarification.'),(105,11,11,7,'Well-presented session, learned a lot.'),(106,11,12,6,'Session felt rushed, could have covered more.'),(107,11,13,5.5,'Could have provided more practical examples.'),(108,11,14,6.5,'Informative content, but lacked engagement.'),(109,11,15,7,'Interesting topic, well-explained.'),(110,11,16,6,'Decent session, but lacked depth.'),(111,12,17,6.5,'Informative session, but lacked practical examples.'),(112,12,18,5,'Content was confusing, needs better explanation.'),(113,12,19,7,'Engaging presentation, but lacked depth.'),(114,12,20,6,'Decent session, could be more interactive.'),(115,12,21,4.5,'Content was not well-organized, hard to follow.'),(116,12,22,6.5,'Some useful insights, but poorly presented.'),(117,12,23,7.5,'Found the session informative, but lacking in engagement.'),(118,12,24,5.5,'Could have covered more examples.'),(119,12,25,6,'Session felt rushed, but still helpful.'),(120,12,26,7,'Well-structured session, enjoyed it.'),(121,13,7,6,'Lacked depth, needs more detailed explanation.'),(122,13,8,7.5,'Interesting topic, but poorly explained.'),(123,13,9,6.5,'Engaging session, but could be more interactive.'),(124,13,10,5,'Content was confusing, needs better clarification.'),(125,13,11,7,'Well-presented session, learned a lot.'),(126,13,12,6,'Session felt rushed, could have covered more.'),(127,13,13,5.5,'Could have provided more practical examples.'),(128,13,14,6.5,'Informative content, but lacked engagement.'),(129,13,15,7,'Interesting topic, well-explained.'),(130,13,16,6,'Decent session, but lacked depth.'),(131,14,17,6.5,'Informative session, but lacked practical examples.'),(132,14,18,5,'Content was confusing, needs better explanation.'),(133,14,19,7,'Engaging presentation, but lacked depth.'),(134,14,20,6,'Decent session, could be more interactive.'),(135,14,21,4.5,'Content was not well-organized, hard to follow.'),(136,14,22,6.5,'Some useful insights, but poorly presented.'),(137,14,23,7.5,'Found the session informative, but lacking in engagement.'),(138,14,24,5.5,'Could have covered more examples.'),(139,14,25,6,'Session felt rushed, but still helpful.'),(140,14,26,7,'Well-structured session, enjoyed it.'),(141,15,7,6,'Lacked depth, needs more detailed explanation.'),(142,15,8,7.5,'Interesting topic, but poorly explained.'),(143,15,9,6.5,'Engaging session, but could be more interactive.'),(144,15,10,5,'Content was confusing, needs better clarification.'),(145,15,11,7,'Well-presented session, learned a lot.'),(146,15,12,6,'Session felt rushed, could have covered more.'),(147,15,13,5.5,'Could have provided more practical examples.'),(148,15,14,6.5,'Informative content, but lacked engagement.'),(149,15,15,7,'Interesting topic, well-explained.'),(150,15,16,6,'Decent session, but lacked depth.'),(151,16,17,6.5,'Informative session, but lacked practical examples.'),(152,16,18,5,'Content was confusing, needs better explanation.'),(153,16,19,7,'Engaging presentation, but lacked depth.'),(154,16,20,6,'Decent session, could be more interactive.'),(155,16,21,4.5,'Content was not well-organized, hard to follow.'),(156,16,22,6.5,'Some useful insights, but poorly presented.'),(157,16,23,7.5,'Found the session informative, but lacking in engagement.'),(158,16,24,5.5,'Could have covered more examples.'),(159,16,25,6,'Session felt rushed, but still helpful.'),(160,16,26,7,'Well-structured session, enjoyed it.'),(161,17,7,6,'Lacked depth, needs more detailed explanation.'),(162,17,8,7.5,'Interesting topic, but poorly explained.'),(163,17,9,6.5,'Engaging session, but could be more interactive.'),(164,17,10,5,'Content was confusing, needs better clarification.'),(165,17,11,7,'Well-presented session, learned a lot.'),(166,17,12,6,'Session felt rushed, could have covered more.'),(167,17,13,5.5,'Could have provided more practical examples.'),(168,17,14,6.5,'Informative content, but lacked engagement.'),(169,17,15,7,'Interesting topic, well-explained.'),(170,17,16,6,'Decent session, but lacked depth.'),(171,18,17,6.5,'Informative session, but lacked practical examples.'),(172,18,18,5,'Content was confusing, needs better explanation.'),(173,18,19,7,'Engaging presentation, but lacked depth'),(174,18,17,6.5,'Informative session, but lacked practical examples.'),(175,18,18,5,'Content was confusing, needs better explanation.'),(176,18,19,7,'Engaging presentation, but lacked depth.'),(177,18,20,6,'Decent session, could be more interactive.'),(178,18,21,8.5,'Very well-structured, informative, and engaging.'),(179,18,22,7.5,'Useful insights and well-presented content.'),(180,18,23,8,'Clear explanations and good practical exercises.'),(181,18,24,7,'Found the session helpful and informative.'),(182,18,25,7.5,'Engaging presentation, covered important points.'),(183,18,26,8,'Enjoyed the session, learned a lot.'),(184,19,7,8,'Highly informative and engaging session.'),(185,19,8,7.5,'Interesting topic, explained well.'),(186,19,9,8.5,'Excellent session, very well presented.'),(187,19,10,7,'Good content, covered important points.'),(188,19,11,8,'Enjoyed the session, learned a lot.'),(189,19,12,7.5,'Well-structured session, covered key concepts.'),(190,19,13,8.5,'Insightful and informative, enjoyed it.'),(191,19,14,7,'Useful session, could have been more engaging.'),(192,19,15,8,'Clear explanations, engaging presentation.'),(193,19,16,7.5,'Found the session helpful and informative.'),(194,20,17,7,'Informative session, covered key concepts.'),(195,20,18,8,'Well-structured and engaging presentation.'),(196,20,19,7.5,'Interesting topic, explained well.'),(197,20,20,8.5,'Very insightful session, enjoyed it.'),(198,20,21,8,'Engaging presentation, covered important points.'),(199,20,22,7.5,'Useful insights and well-presented content.'),(200,20,23,8.5,'Clear explanations and good practical exercises.'),(201,20,24,7,'Found the session helpful and informative.'),(202,20,25,7.5,'Engaging presentation, covered important points.'),(203,20,26,8,'Enjoyed the session, learned a lot.');
/*!40000 ALTER TABLE `evaluation_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training_session`
--

DROP TABLE IF EXISTS `training_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training_session` (
  `session_id` int NOT NULL AUTO_INCREMENT,
  `trainer_id` int DEFAULT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `participant_count` int DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `trainer_id` (`trainer_id`),
  CONSTRAINT `training_session_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training_session`
--

LOCK TABLES `training_session` WRITE;
/*!40000 ALTER TABLE `training_session` DISABLE KEYS */;
INSERT INTO `training_session` VALUES (1,3,'Effective Communication','2024-05-01',120,15),(2,4,'Project Management Fundamentals','2024-05-02',90,10),(3,5,'Team Building and Collaboration','2024-05-03',60,20),(4,6,'Leadership Development','2024-05-04',75,12),(5,3,'Time Management Techniques','2024-05-05',90,18),(6,4,'Introduction to Agile Methodologies','2024-05-06',120,15),(7,5,'Presentation Skills for Professionals','2024-05-07',60,10),(8,6,'Effective Meetings Management','2024-05-08',90,20),(9,3,'Stress Management in the Workplace','2024-05-09',75,12),(10,4,'Problem Solving Strategies','2024-05-10',90,18),(11,5,'Software Development Best Practices','2024-05-11',120,15),(12,6,'Emotional Intelligence in Leadership','2024-05-12',60,10),(13,3,'Change Management Techniques','2024-05-13',90,20),(14,4,'Negotiation Skills for Professionals','2024-05-14',75,12),(15,5,'Introduction to Cloud Computing','2024-05-15',120,18),(16,6,'Creative Thinking and Problem Solving','2024-05-16',60,15),(17,3,'Data Analysis Basics','2024-05-17',90,10),(18,4,'Cybersecurity Awareness Training','2024-05-18',75,20),(19,5,'Web Development Fundamentals','2024-05-19',120,12),(20,6,'Time Management for Professionals','2024-05-20',60,15);
/*!40000 ALTER TABLE `training_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` enum('admin','trainer','trainee') DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'john.doe','password1','admin'),(2,'emma.smith','password2','admin'),(3,'michael.johnson','password3','trainer'),(4,'sarah.williams','password4','trainer'),(5,'alex.brown','password5','trainer'),(6,'lisa.davis','password6','trainer'),(7,'david.miller','password7','trainee'),(8,'matt.jackson','password8','trainee'),(9,'rachel.wilson','password9','trainee'),(10,'chris.thomas','password10','trainee'),(11,'emily.white','password11','trainee'),(12,'james.harris','password12','trainee'),(13,'olivia.taylor','password13','trainee'),(14,'jessica.moore','password14','trainee'),(15,'william.anderson','password15','trainee'),(16,'sophia.clark','password16','trainee'),(17,'andrew.hall','password17','trainee'),(18,'emma.martinez','password18','trainee'),(19,'natalie.lopez','password19','trainee'),(20,'ryan.hernandez','password20','trainee'),(21,'ashley.hill','password21','trainee'),(22,'samuel.young','password22','trainee'),(23,'hannah.scott','password23','trainee'),(24,'jacob.green','password24','trainee'),(25,'elizabeth.king','password25','trainee'),(26,'adam.lee','password26','trainee'),(27,'zahid.parambath','password27','trainee'),(28,'anish.korah','password28','trainee'),(29,'anish.korah','password28','trainee'),(30,'imran.khan','password29','trainee');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 15:08:48
