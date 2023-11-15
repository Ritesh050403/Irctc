-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: temp
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `AgentID` int NOT NULL,
  `AgentName` varchar(255) DEFAULT NULL,
  `NoOfConfBooking` int DEFAULT NULL,
  PRIMARY KEY (`AgentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Arjun Verma',10),(2,'Jasmine Patel',5),(3,'Bhupinder Kumar',8),(4,'Aisha Gupta',12);
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `BookingID` int NOT NULL,
  `AgentID` int DEFAULT NULL,
  `RouteID` int DEFAULT NULL,
  `TripDate` date DEFAULT NULL,
  `SeatsSold` int DEFAULT NULL,
  `ChildSeats` int DEFAULT NULL,
  `AdultSeats` int DEFAULT NULL,
  `SeniorCitizenSeats` int DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `AgentID` (`AgentID`),
  KEY `RouteID` (`RouteID`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`AgentID`) REFERENCES `agents` (`AgentID`),
  CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`RouteID`) REFERENCES `routes` (`RouteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,1,101,'2023-01-15',50,10,30,10),(2,2,102,'2023-02-20',40,8,25,7),(3,3,103,'2023-03-25',60,12,35,13),(4,4,104,'2023-04-10',45,9,28,8),(5,1,105,'2023-05-12',55,11,33,11),(6,2,106,'2023-06-18',48,10,30,8),(7,3,107,'2023-07-22',65,13,40,12),(8,NULL,108,'2023-08-05',42,8,26,8),(9,1,109,'2023-09-15',58,12,35,11),(10,2,110,'2023-10-20',50,10,30,10),(11,NULL,108,'2023-10-11',35,5,14,16),(12,3,108,'2023-10-16',26,5,14,7);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coaches`
--

DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `CoachID` int NOT NULL,
  `TrainID` int DEFAULT NULL,
  `LastServiceDate` date DEFAULT NULL,
  `Mileage` int DEFAULT NULL,
  PRIMARY KEY (`CoachID`),
  KEY `TrainID` (`TrainID`),
  CONSTRAINT `coaches_ibfk_1` FOREIGN KEY (`TrainID`) REFERENCES `trains` (`TrainID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coaches`
--

LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,101,'2022-12-10',1000),(2,102,'2022-11-25',4800),(3,103,'2023-09-15',4200),(4,104,'2023-09-05',4500),(5,105,'2022-08-20',4900),(6,106,'2023-09-12',3100),(7,107,'2023-09-12',4800),(8,108,'2022-05-20',500),(9,109,'2022-04-15',4600),(10,110,'2022-03-05',2000);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commission`
--

DROP TABLE IF EXISTS `commission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commission` (
  `CommissionID` int NOT NULL,
  `AgentID` int DEFAULT NULL,
  `MonthYear` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CommissionID`),
  KEY `AgentID` (`AgentID`),
  CONSTRAINT `commission_ibfk_1` FOREIGN KEY (`AgentID`) REFERENCES `agents` (`AgentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission`
--

LOCK TABLES `commission` WRITE;
/*!40000 ALTER TABLE `commission` DISABLE KEYS */;
INSERT INTO `commission` VALUES (1,1,'2023-09-01',1500.50),(2,2,'2023-09-01',1200.75),(3,3,'2023-09-01',1800.25),(4,4,'2023-09-01',2000.00),(5,1,'2023-10-01',1600.50),(6,2,'2023-10-01',1300.75),(7,3,'2023-10-01',1900.25),(8,4,'2023-10-01',2100.00),(9,1,'2023-10-01',1700.50),(10,2,'2023-11-01',1400.75),(11,3,'2023-11-01',2000.25),(12,4,'2023-11-01',2200.00),(13,1,'2023-11-01',1800.50),(14,2,'2023-11-01',1500.75),(15,3,'2023-09-01',2100.25),(16,4,'2023-09-01',2300.00);
/*!40000 ALTER TABLE `commission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `DriverID` int DEFAULT NULL,
  `DriverName` varchar(25) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `CityOfResidence` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (501,'Rahul Verma','9876543210','Mumbai'),(502,'Priya Gupta','8765432109','Delhi'),(503,'Amit Sharma','7654321098','Chennai'),(504,'Deepa Patel','6543210987','Kolkata'),(505,'Sneha Kapoor','9998887776','Bangalore'),(506,'Vikram Reddy','8887776665','Hyderabad'),(507,'Neha Singh','7776665554','Ahmedabad'),(508,'Arun Kumar','6665554443','Pune');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passengers` (
  `PassengerID` int NOT NULL,
  `PassengerName` varchar(255) DEFAULT NULL,
  `TripCount` int DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PassengerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES (1,'Aarav Patel',5,28,'Adult'),(2,'Bhavya Singh',3,35,'Adult'),(3,'Chitra Desai',6,45,'Adult'),(4,'Devendra Yadav',4,32,'Adult'),(5,'Esha Sharma',2,50,'Adult'),(6,'Faisal Khan',7,40,'Adult'),(7,'Gauri Verma',3,29,'Adult'),(8,'Harish Joshi',5,36,'Adult'),(9,'Ishita Tiwari',4,34,'Adult'),(10,'Jatin Kapoor',2,27,'Adult'),(11,'Kiran Khanna',5,39,'Adult'),(12,'Lavanya Gupta',3,12,'Child'),(13,'Manish Singh',6,42,'Adult'),(14,'Neha Agarwal',4,3,'Child'),(15,'Ojasvi Verma',7,7,'Child'),(16,'Pranav Sharma',2,9,'Child'),(17,'Quintessa Kapoor',3,65,'Senior'),(18,'Rajeev Singh',4,70,'Senior'),(19,'Sanjana Walia',6,74,'Senior'),(20,'Shivansh Gupta',5,75,'Senior'),(21,'Tanvi Bakshi',3,88,'Senior'),(22,'Udaya Mehra',7,46,'Senior'),(23,'Vidya Prasad',4,72,'Senior'),(24,'Winston Fernandes',2,91,'Senior');
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routeoperatingdays`
--

DROP TABLE IF EXISTS `routeoperatingdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routeoperatingdays` (
  `RouteId` int DEFAULT NULL,
  `DayOfWeek` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routeoperatingdays`
--

LOCK TABLES `routeoperatingdays` WRITE;
/*!40000 ALTER TABLE `routeoperatingdays` DISABLE KEYS */;
INSERT INTO `routeoperatingdays` VALUES (101,'Mon'),(101,'Tue'),(101,'Wed'),(101,'Thurs'),(101,'Fri'),(101,'Sat'),(102,'Mon'),(102,'Tue'),(102,'Wed'),(102,'Fri'),(102,'Sat'),(102,'Sun'),(103,'Sun'),(104,'Mon'),(104,'Wed'),(104,'Thurs'),(104,'Fri'),(104,'Sat'),(104,'Sun'),(105,'Mon'),(105,'Tue'),(105,'Thurs'),(105,'Fri'),(105,'Sat'),(105,'Sun'),(106,'Mon'),(106,'Tue'),(106,'Wed'),(106,'Thurs'),(106,'Fri'),(106,'Sun'),(107,'Sat'),(108,'Mon'),(108,'Wed'),(108,'Sat'),(109,'Mon'),(109,'Tue'),(109,'Wed'),(109,'Thurs'),(109,'Fri'),(109,'Sat'),(109,'Sun'),(110,'Mon'),(110,'Tue'),(110,'Wed'),(110,'Thurs'),(110,'Fri'),(110,'Sat'),(110,'Sun');
/*!40000 ALTER TABLE `routeoperatingdays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `RouteID` int NOT NULL,
  `Distance` int DEFAULT NULL,
  `BoardStation` varchar(255) DEFAULT NULL,
  `ArrivedStation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RouteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (101,548,'Mumbai Central','Gandhinagar'),(102,412,'New Delhi','Himachal'),(103,500,'Secunderabad','Visakhapatnam'),(104,248,'Mumbai','Sainagar Shirdi'),(105,400,'Mumbai','Solapur'),(106,700,'Bhopal','Delhi'),(107,1062,'Lonavala','Ajmer'),(108,432,'Dharwad','Bengaluru'),(109,246,'Bhopal','Indore'),(110,588,'Mumbai','Goa');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `StationID` int NOT NULL,
  `StationName` varchar(50) NOT NULL,
  PRIMARY KEY (`StationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Mumbai Central'),(2,'Gandhinagar'),(3,'New Delhi'),(4,'Himachal'),(5,'Secunderabad'),(6,'Visakhapatnam'),(7,'Mumbai'),(8,'Sainagar Shirdi'),(9,'Solapur'),(10,'Bhopal'),(11,'Delhi'),(12,'Lonavala'),(13,'Ajmer'),(14,'Dharwad'),(15,'Bengaluru'),(16,'Indore'),(17,'Goa');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `TicketID` int NOT NULL,
  `PassengerID` int DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`TicketID`),
  KEY `PassengerID` (`PassengerID`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`PassengerID`) REFERENCES `passengers` (`PassengerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (201,1,500.00),(202,2,451.00),(203,3,600.00),(204,4,550.00),(205,5,700.00),(206,6,621.00),(207,7,481.00),(208,8,550.00),(209,9,600.00),(210,10,521.00);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trains` (
  `TrainID` int NOT NULL,
  `TrainName` varchar(255) DEFAULT NULL,
  `RouteID` int DEFAULT NULL,
  `MaintenanceStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TrainID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trains`
--

LOCK TABLES `trains` WRITE;
/*!40000 ALTER TABLE `trains` DISABLE KEYS */;
INSERT INTO `trains` VALUES (101,'Express1',101,'Yes'),(102,'Express2',102,'No'),(103,'Express3',103,'Yes'),(104,'Express4',104,'No'),(105,'Express5',105,'Yes'),(106,'Express6',106,'No'),(107,'Express7',107,'Yes'),(108,'Express8',108,'No'),(109,'Express9',109,'Yes'),(110,'Express10',110,'No');
/*!40000 ALTER TABLE `trains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trips` (
  `TripID` int NOT NULL,
  `RouteID` int DEFAULT NULL,
  `TripDate` date DEFAULT NULL,
  `DriverName` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `OnTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TripID`),
  KEY `RouteID` (`RouteID`),
  CONSTRAINT `trips_ibfk_1` FOREIGN KEY (`RouteID`) REFERENCES `routes` (`RouteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (1,101,'2023-10-07','Ram','Co-Driver','Yes'),(2,102,'2023-10-08','Shyam','Main Driver','Yes'),(3,103,'2023-10-09','Gopal','Main Driver','Yes'),(4,104,'2023-10-10','Vivek','Co-Driver','No'),(5,105,'2023-10-11','Sahil','Co-Driver','Yes'),(6,106,'2023-10-12','Himanshu','Main Driver','Yes'),(7,107,'2023-10-13','Abhishek','Main Driver','No'),(8,108,'2023-10-14','Rajesh','Co-Driver','Yes'),(9,109,'2023-10-15','Mahesh','Main Driver','Yes'),(10,110,'2023-10-16','Harish','Main Driver','Yes'),(11,101,'2023-10-17','Ram','Co-Driver','Yes'),(12,102,'2023-10-18','Bam','Main Driver','Yes'),(13,103,'2023-10-19','Gopal','Main Driver','Yes'),(14,104,'2023-10-10','Vik','Co-Driver','No'),(15,105,'2023-10-21','Sahk','Co-Driver','Yes'),(16,106,'2023-10-12','anshu','Main Driver','Yes'),(17,107,'2023-10-17','Abhi','Main Driver','No'),(18,108,'2023-10-17','Raj','Co-Driver','Yes'),(19,109,'2023-10-15','Mahi','Main Driver','Yes'),(20,109,'2023-10-26','Harish','Main Driver','Yes');
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 19:01:26
