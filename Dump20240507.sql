-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: employeetravel_db
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
-- Table structure for table `accomodations`
--

DROP TABLE IF EXISTS `accomodations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accomodations` (
  `accomodation_id` int NOT NULL AUTO_INCREMENT,
  `travel_request_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `accomodation_expense` int NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` date NOT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`accomodation_id`),
  KEY `travel_request_id` (`travel_request_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `accomodations_ibfk_1` FOREIGN KEY (`travel_request_id`) REFERENCES `travel_requests` (`travel_request_id`),
  CONSTRAINT `accomodations_ibfk_2` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  CONSTRAINT `accomodations_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `accomodations_ibfk_4` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomodations`
--

LOCK TABLES `accomodations` WRITE;
/*!40000 ALTER TABLE `accomodations` DISABLE KEYS */;
INSERT INTO `accomodations` VALUES (25,1,10,'2024-05-10','2024-05-15',700,9,NULL,'2024-05-10',NULL),(26,2,12,'2024-06-21','2024-06-25',900,11,NULL,'2024-06-20',NULL),(27,3,1,'2024-07-15','2024-07-19',1200,13,NULL,'2024-07-15',NULL),(28,4,3,'2024-08-06','2024-08-10',1000,1,NULL,'2024-08-05',NULL),(29,5,9,'2024-09-14','2024-09-17',800,15,NULL,'2024-09-12',NULL),(30,6,16,'2024-10-09','2024-10-13',1100,7,NULL,'2024-10-08',NULL),(31,7,11,'2024-11-16','2024-11-20',1500,17,NULL,'2024-11-16',NULL),(32,8,7,'2024-12-27','2024-12-31',2000,3,NULL,'2024-12-25',NULL),(33,9,14,'2025-01-16','2025-01-20',1300,19,NULL,'2025-01-14',NULL),(34,10,8,'2025-02-22','2025-02-22',1800,20,NULL,'2025-02-18',NULL),(35,11,14,'2025-03-08','2025-03-08',1600,2,NULL,'2025-03-08',NULL),(36,12,7,'2025-04-19','2025-04-24',1100,8,NULL,'2025-04-19',NULL),(37,13,3,'2025-05-06','2025-05-10',1400,10,NULL,'2025-05-05',NULL),(38,14,12,'2025-06-19','2025-06-23',1700,6,NULL,'2025-06-17',NULL),(39,15,10,'2025-07-21','2025-07-25',1900,20,NULL,'2025-07-20',NULL),(40,16,12,'2025-08-11','2025-08-15',2200,10,NULL,'2025-08-09',NULL),(41,17,11,'2025-09-14','2025-09-19',2500,18,NULL,'2025-09-14',NULL),(42,18,1,'2025-10-12','2025-10-17',2800,16,NULL,'2025-10-12',NULL),(43,19,12,'2025-11-23','2025-11-27',2100,4,NULL,'2025-11-22',NULL),(44,20,7,'2025-12-08','2025-12-12',2400,12,NULL,'2025-12-07',NULL),(45,21,14,'2026-01-26','2026-01-30',2700,14,NULL,'2026-01-25',NULL),(46,22,1,'2026-02-18','2026-02-24',3000,2,NULL,'2026-02-18',NULL),(47,23,11,'2026-03-10','2026-03-15',3200,1,NULL,'2026-03-10',NULL),(48,24,14,'2026-04-19','2026-04-24',2800,4,NULL,'2026-04-19',NULL);
/*!40000 ALTER TABLE `accomodations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(30) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Administration'),(2,'Human Resources'),(3,'IT Support'),(4,'Sales'),(5,'Research and Development'),(6,'Accounting'),(7,'Logistics'),(8,'Quality Assurance');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_first_name` varchar(20) NOT NULL,
  `employee_last_name` varchar(20) NOT NULL,
  `employee_phnumber` bigint NOT NULL,
  `dept_id` int NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` date NOT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `dept_id` (`dept_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`),
  CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'John','Doe',9876543210,1,1,NULL,'2024-01-01',NULL),(2,'Jane','Smith',8765432109,1,1,NULL,'2024-01-01',NULL),(3,'Michael','Johnson',7654321098,1,1,NULL,'2024-03-07',NULL),(4,'Emily','Brown',6543210987,3,2,NULL,'2024-04-08',NULL),(5,'David','Williams',9876543210,8,1,NULL,'2024-05-09',NULL),(6,'Jessica','Jones',8765432109,7,2,NULL,'2024-06-10',NULL),(7,'Christopher','Wilson',7654321098,6,1,NULL,'2024-07-11',NULL),(8,'Sarah','Martinez',6543210987,4,2,NULL,'2024-08-12',NULL),(9,'Matthew','Anderson',9876543210,4,1,NULL,'2024-09-13',NULL),(10,'Amanda','Taylor',8765432109,5,2,NULL,'2024-10-14',NULL),(11,'Daniel','Thomas',7654321098,7,2,NULL,'2024-11-15',NULL),(12,'Lauren','Garcia',6543210987,2,1,NULL,'2024-12-16',NULL),(13,'James','Rodriguez',9876543210,3,1,NULL,'2025-01-17',NULL),(14,'Ashley','Lee',8765432109,4,3,NULL,'2025-02-18',NULL),(15,'Justin','Nguyen',7654321098,5,3,NULL,'2025-03-19',NULL),(16,'Rachel','Wang',6543210987,6,3,NULL,'2025-04-20',NULL),(17,'Brandon','Chen',9876543210,6,1,NULL,'2025-05-21',NULL),(18,'Nicole','Lopez',8765432109,2,2,NULL,'2025-06-22',NULL),(19,'Andrew','Kim',7654321098,8,3,NULL,'2025-07-23',NULL),(20,'Hannah','Rivera',6543210987,3,3,NULL,'2025-08-24',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotels` (
  `hotel_id` int NOT NULL AUTO_INCREMENT,
  `hotel_name` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (1,'Topaz Lake','Varkala'),(2,'Prince Park','Kottarakkara'),(3,'Alliance Arena','Aluva'),(4,'Bernabeu Hotel','Thiruvalla'),(5,'Nou Camp Hotel','Kattakkada'),(6,'Hotel Anfield','Kothamangalam'),(7,'Serenity Sands Resort','Mavelikkara'),(8,'Azure Haven Hotel','Thrissur'),(9,'Emerald Crest Inn','Karunagapally'),(10,'Tranquil Oasis Lodge','Kochi'),(11,'Sunset Vista Retreat','Kochi'),(12,'Enchanted Valley Resort','Trivandrum'),(13,'Golden Horizon','Kannur'),(14,'Whispering Pines','Trivandrum'),(15,'Crystal Cove Lodge','Kattapana'),(16,'Harmony Hill Inn','Sulthan Bathery');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_expenses`
--

DROP TABLE IF EXISTS `travel_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_expenses` (
  `travel_expenses_id` int NOT NULL AUTO_INCREMENT,
  `travel_request_id` int NOT NULL,
  `travel_expense` int DEFAULT NULL,
  `expense_date` date NOT NULL,
  `created_by` int NOT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` date NOT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`travel_expenses_id`),
  KEY `travel_request_id` (`travel_request_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `travel_expenses_ibfk_1` FOREIGN KEY (`travel_request_id`) REFERENCES `travel_requests` (`travel_request_id`),
  CONSTRAINT `travel_expenses_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `employees` (`employee_id`),
  CONSTRAINT `travel_expenses_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_expenses`
--

LOCK TABLES `travel_expenses` WRITE;
/*!40000 ALTER TABLE `travel_expenses` DISABLE KEYS */;
INSERT INTO `travel_expenses` VALUES (1,1,10000,'2024-05-20',9,NULL,'2024-05-20',NULL),(2,2,12000,'2024-06-25',11,NULL,'2024-06-26',NULL),(3,3,1200,'2024-07-20',13,NULL,'2024-07-21',NULL),(4,4,9000,'2024-08-10',1,NULL,'2024-08-11',NULL),(5,5,600,'2024-09-17',15,NULL,'2024-09-18',NULL),(6,6,1000,'2024-10-13',7,NULL,'2024-10-14',NULL),(7,7,1500,'2024-11-20',17,NULL,'2024-11-21',NULL),(8,8,2000,'2024-12-31',3,NULL,'2025-01-01',NULL),(9,9,13000,'2025-01-20',19,NULL,'2025-01-21',NULL),(10,10,1800,'2025-02-22',20,NULL,'2025-02-23',NULL),(11,11,16000,'2025-03-12',2,NULL,'2025-03-13',NULL),(12,12,1100,'2025-04-24',8,NULL,'2025-04-25',NULL),(13,13,14000,'2025-05-10',10,NULL,'2025-05-11',NULL),(14,14,11000,'2025-06-23',6,NULL,'2025-06-24',NULL),(15,15,1900,'2025-07-25',20,NULL,'2025-07-26',NULL),(16,16,2200,'2025-08-15',10,NULL,'2025-08-16',NULL),(17,17,2500,'2025-09-19',18,NULL,'2025-09-20',NULL),(18,18,2800,'2025-10-17',16,NULL,'2025-10-18',NULL),(19,19,2100,'2025-11-28',4,NULL,'2025-11-29',NULL),(20,20,2400,'2025-12-12',12,NULL,'2025-12-13',NULL),(21,21,2700,'2026-01-30',14,NULL,'2026-01-31',NULL),(22,22,3000,'2026-02-24',2,NULL,'2026-02-25',NULL),(23,23,3200,'2026-03-15',1,NULL,'2026-03-16',NULL),(24,24,2800,'2026-04-24',4,NULL,'2026-04-25',NULL);
/*!40000 ALTER TABLE `travel_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_requests`
--

DROP TABLE IF EXISTS `travel_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_requests` (
  `travel_request_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `destination` varchar(30) NOT NULL,
  `travel_purpose` varchar(40) NOT NULL,
  `transportation_type` varchar(30) NOT NULL,
  `status` enum('pending','approved') NOT NULL,
  PRIMARY KEY (`travel_request_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `travel_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_requests`
--

LOCK TABLES `travel_requests` WRITE;
/*!40000 ALTER TABLE `travel_requests` DISABLE KEYS */;
INSERT INTO `travel_requests` VALUES (1,9,'2024-05-10','2024-05-15','Kochi','Business Meeting','Airplane','approved'),(2,11,'2024-06-20','2024-06-25','Trivandrum','Conference','Airplane','approved'),(3,13,'2024-07-15','2024-07-20','Varkala','On-site training','Train','approved'),(4,1,'2024-08-05','2024-08-10','Aluva','Client Visit','Airplane','approved'),(5,15,'2024-09-12','2024-09-17','Karunagapally','Training Workshop','Train','approved'),(6,7,'2024-10-08','2024-10-13','Kalpetta','Business Trip','Car','approved'),(7,17,'2024-11-16','2024-11-20','Kochi','Exhibition','Airplane','approved'),(8,3,'2024-12-25','2024-12-31','Adoor','On-site Inspection','Car','approved'),(9,19,'2025-01-14','2025-01-20','Kazhakkuttam','Client Meeting','Airplane','approved'),(10,20,'2025-02-18','2025-02-22','Thrissur','Team Building','Train','approved'),(11,2,'2025-03-08','2025-03-12','Trivandrum','Conference','Airplane','approved'),(12,8,'2025-04-19','2025-04-24','Adoor','Project Kickoff','Car','approved'),(13,10,'2025-05-05','2025-05-10','Aluva','Training Session','Airplane','approved'),(14,6,'2025-06-17','2025-06-23','Kazhakkuttam','Business Negotiation','Airplane','approved'),(15,20,'2025-07-20','2025-07-25','Angamaly','Expo Visit','Train','approved'),(16,10,'2025-08-09','2025-08-15','Trivandrum','Client Presentation','Airplane','approved'),(17,18,'2025-09-14','2025-09-19','Kochi','On-site training','Airplane','approved'),(18,16,'2025-10-12','2025-10-17','Varkala','Business Trip','Train','approved'),(19,4,'2025-11-22','2025-11-28','Attingal','Conference','Car','approved'),(20,12,'2025-12-07','2025-12-12','Adoor','Project Meeting','Car','approved'),(21,14,'2026-01-25','2026-01-30','Pattom','Training Workshop','Airplane','approved'),(22,2,'2026-02-18','2026-02-24','Varkala','Business Trip','Train','approved'),(23,1,'2026-03-10','2026-03-15','Kakkanad','Client Visit','Airplane','approved'),(24,4,'2026-04-19','2026-04-24','Varkala','Conference','Train','approved'),(25,2,'2026-05-09','2026-05-15','Trivandrum','Project Review','Airplane','pending'),(26,7,'2026-12-12','2026-12-17','Kochi','Project on-site','Train','pending'),(27,3,'2026-11-11','2026-11-15','Kakkanad','Training','Car','pending');
/*!40000 ALTER TABLE `travel_requests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-07 15:13:01
