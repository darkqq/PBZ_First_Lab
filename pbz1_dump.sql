-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: pbz_first
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `academic_subject`
--

DROP TABLE IF EXISTS `academic_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `academic_subject` (
  `ID` char(3) DEFAULT NULL,
  `subject_name` tinytext,
  `academic_hours` int DEFAULT NULL,
  `speciality` tinytext,
  `semester` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academic_subject`
--

LOCK TABLES `academic_subject` WRITE;
/*!40000 ALTER TABLE `academic_subject` DISABLE KEYS */;
INSERT INTO `academic_subject` VALUES ('12П','Мини ЭВМ',36,'ЭВМ',1),('14П','ПЭВМ',72,'ЭВМ',2),('17П','СУБД ПК',48,'АСОИ',4),('18П','ВКСС',52,'АСОИ',6),('34П','Физика',30,'СД',6),('22П','Аудит',24,'Бухучета',3);
/*!40000 ALTER TABLE `academic_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_group`
--

DROP TABLE IF EXISTS `student_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_group` (
  `ID` varchar(3) DEFAULT NULL,
  `group_name` varchar(4) DEFAULT NULL,
  `students_amount` int DEFAULT NULL,
  `speciality` tinytext,
  `headman` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_group`
--

LOCK TABLES `student_group` WRITE;
/*!40000 ALTER TABLE `student_group` DISABLE KEYS */;
INSERT INTO `student_group` VALUES ('8Г','Э-12',18,'ЭВМ','Иванова'),('7Г','Э-15',22,'ЭВМ','Сеткин'),('4Г','АС-9',24,'АСОИ','Балабанов'),('3Г','АС-8',20,'АСОИ','Чижов'),('17Г','С-14',29,'СД','Амросов'),('12Г','М-6',16,'Международная экономика','Трубин'),('10Г','Б-4',21,'Бухучет','Зязюткин');
/*!40000 ALTER TABLE `student_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `ID` char(4) DEFAULT NULL,
  `last_name` tinytext,
  `position` tinytext,
  `department` tinytext,
  `speciality` tinytext,
  `local_phone` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('221Л','Фролов','Доцент','ЭВМ','АСОИ,ЭВМ',487),('222Л','Костин','Доцент','ЭВМ','ЭФМ',487),('225Л','Бойко','Профессор','АСУ','АСОИ,ЭВМ',487),('430Л','Глазов','Ассистент','ТФ','СД',487),('110Л','Петров','Ассистент','Экономики','Международная экономика',487);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_group`
--

DROP TABLE IF EXISTS `teacher_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_group` (
  `group_id` varchar(3) DEFAULT NULL,
  `subject_id` char(3) DEFAULT NULL,
  `teacher_id` char(4) DEFAULT NULL,
  `classroom` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_group`
--

LOCK TABLES `teacher_group` WRITE;
/*!40000 ALTER TABLE `teacher_group` DISABLE KEYS */;
INSERT INTO `teacher_group` VALUES ('8Г','12П','222Л',112),('8Г','14П','221Л',220),('8Г','17П','222Л',112),('7Г','14П','221Л',220),('7Г','17П','222Л',241),('7Г','18П','225Л',210),('4Г','12П','222Л',112),('4Г','18П','225Л',210),('3Г','12П','222Л',112),('3Г','17П','221Л',241),('3Г','18П','225Л',210),('17Г','12П','222Л',112),('17Г','22П','110Л',220),('17Г','34П','430Л',118),('12Г','12П','222Л',112),('12Г','22П','110Л',210),('10Г','12П','222Л',210),('10Г','22П','110Л',210);
/*!40000 ALTER TABLE `teacher_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-14  2:05:40
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: pbz_first_second
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `dependencies`
--

DROP TABLE IF EXISTS `dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependencies` (
  `provider_id` char(2) NOT NULL,
  `detail_id` char(2) NOT NULL,
  `project_id` char(3) NOT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`provider_id`,`detail_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependencies`
--

LOCK TABLES `dependencies` WRITE;
/*!40000 ALTER TABLE `dependencies` DISABLE KEYS */;
INSERT INTO `dependencies` VALUES ('П1','Д1','ПР1',200),('П1','Д1','ПР2',700),('П2','Д2','ПР2',200),('П2','Д3','ПР1',400),('П2','Д3','ПР3',200),('П2','Д3','ПР4',500),('П2','Д3','ПР5',600),('П2','Д3','ПР6',400),('П2','Д3','ПР7',800),('П2','Д5','ПР2',100),('П3','Д3','ПР1',200),('П3','Д4','ПР2',500),('П4','Д6','ПР3',300),('П4','Д6','ПР7',300),('П5','Д1','ПР2',100),('П5','Д2','ПР2',200),('П5','Д2','ПР4',100),('П5','Д3','ПР4',200),('П5','Д4','ПР4',800),('П5','Д5','ПР4',400),('П5','Д5','ПР5',500),('П5','Д5','ПР7',100),('П5','Д6','ПР2',200),('П5','Д6','ПР4',500);
/*!40000 ALTER TABLE `dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail` (
  `id` char(2) NOT NULL,
  `detail_name` tinytext,
  `color` tinytext,
  `size` int DEFAULT NULL,
  `city` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES ('Д1','Болт','Красный',12,'Москва'),('Д2','Гайка','Зеленый',17,'Минск'),('Д3','Диск','Черный',17,'Вильнюс'),('Д4','Диск','Черный',14,'Москва'),('Д5','Корпус','Красный',12,'Минск'),('Д6','Крышки','Красный',19,'Москва');
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` char(3) NOT NULL,
  `project_name` tinytext,
  `city` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('ПР1','ИПР1','Минск'),('ПР2','ИПР2','Таллин'),('ПР3','ИПР3','Псков'),('ПР4','ИПР4','Псков'),('ПР5','ИПР5','Москва'),('ПР6','ИПР6','Саратов'),('ПР7','ИПР7','Москва');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `id` char(2) NOT NULL,
  `provider_name` tinytext,
  `status` int DEFAULT NULL,
  `city` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES ('П1','Петров',20,'Москва'),('П2','Синицин',10,'Таллин'),('П3','Федоров',30,'Таллин'),('П4','Чаянов',20,'Минск'),('П5','Крюков',30,'Киев');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-14  2:05:40
