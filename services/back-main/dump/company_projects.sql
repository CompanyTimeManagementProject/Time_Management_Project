-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_title` varchar(150) NOT NULL,
  `project_description` varchar(2000) DEFAULT NULL,
  `project_deadline` date NOT NULL,
  `project_lead_id` int DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `project_lead_id` (`project_lead_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`project_lead_id`) REFERENCES `developers` (`developer_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Создание ПО для медицинского оборудования','Проект для индонезийской компании \"New line\". Продукт разрабатывается для считывания нейронных сигналов головного мозга.\n    Должны присутствовать: Контроль температуры тела, визуальное воспроизведение данных мозга, сбор и отправка данных\n    на специально разработанный сервер через медицинскую сеть. Технологии:\n    1. Python\n    2. СИ,\n    3. WebGL с вспомогательными библиотеками','2020-12-03',4),(2,'Создание WEB приложения для контроля диеты','Приложение включает в себя несколько серверов для контроля мобильного и браузерного приложений. \n    Идет мониторинг веса, самочувствия, и прочих параметров, заносимых пользователем на протяжении диеты.\n    Далее собранные данные генерируют последовательность действий для продолжения/изменения/перехода на другую диету.\n    Так же необходимо реализовать календарь здоровья, в котором будут отмечены все чекпоинты диеты.','2021-02-03',11),(3,'Управление проектами','Спроектировать базу данных для фирмы, занимающейся разработкой ПО. В базе данных должна быть представлена информация о \n    проектах (название, номер, описание, ФИО руководителя проекта, сроки исполнения проекта). Каждый проект включает группу задач. \n    У каждой задачи есть название, описание того, в чем состоит задача, результаты, планируемые и фактические сроки ее исполнения, \n    ФИО того, кто отвечает за исполнение задачи, а также ФИО всех, кто задействован в реализации этой задачи, Учесть, что сроки \n    исполнения проекта, задач могут меняться, в базе данных должна храниться информация обо всех изменениях сроков с указанием \n    причины. За сутки до истечения срока реализации задачи система рассылает сообщения исполнителям задачи. После реализации задачи \n    ответственный за ее выполнение отправляет отчет о результатах.','2020-12-31',30);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-13 13:39:25
