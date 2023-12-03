-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: livrable
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `Report_ID` int NOT NULL AUTO_INCREMENT,
  `Report_date` date NOT NULL,
  PRIMARY KEY (`Report_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (1,'2022-01-24'),(2,'2022-02-28'),(3,'2023-01-15'),(4,'2023-01-11'),(5,'2022-05-04'),(6,'2022-02-03'),(7,'2023-03-03'),(8,'2022-04-27'),(9,'2023-02-10'),(10,'2023-05-23'),(11,'2022-03-27'),(12,'2022-03-24'),(13,'2022-04-19'),(14,'2023-05-27'),(15,'2023-01-18'),(16,'2022-02-28'),(17,'2022-04-04'),(18,'2022-01-07'),(19,'2022-04-21'),(20,'2022-01-13'),(21,'2022-05-08'),(22,'2023-03-04'),(23,'2022-04-18'),(24,'2023-04-07'),(25,'2023-03-22'),(26,'2022-05-26'),(27,'2022-02-12'),(28,'2023-02-04'),(29,'2022-01-15'),(30,'2023-02-20'),(31,'2022-02-08'),(32,'2023-04-06'),(33,'2022-05-21'),(34,'2023-01-16'),(35,'2022-05-19'),(36,'2023-04-21'),(37,'2022-03-14'),(38,'2023-02-02'),(39,'2023-05-22'),(40,'2023-03-16'),(41,'2023-01-22'),(42,'2023-01-27'),(43,'2023-02-05'),(44,'2023-04-20'),(45,'2023-03-23'),(46,'2023-04-05'),(47,'2022-02-01'),(48,'2023-02-19'),(49,'2023-03-18'),(50,'2022-04-19'),(51,'2022-04-26'),(52,'2022-03-11'),(53,'2022-03-23'),(54,'2022-04-08'),(55,'2022-02-20'),(56,'2022-02-04'),(57,'2022-04-15'),(58,'2022-05-11'),(59,'2023-04-04'),(60,'2023-04-12'),(61,'2023-03-05'),(62,'2023-04-28'),(63,'2023-03-18'),(64,'2022-02-26'),(65,'2022-01-05'),(66,'2023-01-10'),(67,'2022-03-26'),(68,'2023-05-01'),(69,'2022-05-23'),(70,'2022-03-23'),(71,'2023-04-03'),(72,'2022-04-03'),(73,'2023-05-07'),(74,'2022-05-16'),(75,'2022-01-11'),(76,'2022-03-22'),(77,'2023-02-24'),(78,'2022-05-09'),(79,'2022-02-05'),(80,'2023-01-08'),(81,'2023-04-13'),(82,'2022-04-19'),(83,'2023-03-15'),(84,'2022-04-17'),(85,'2022-05-26'),(86,'2022-01-25'),(87,'2022-02-11'),(88,'2023-05-22'),(89,'2022-05-21'),(90,'2023-04-15'),(91,'2023-05-04'),(92,'2023-04-26'),(93,'2023-05-27'),(94,'2022-05-23'),(95,'2022-02-02'),(96,'2022-04-23'),(97,'2023-03-05'),(98,'2023-02-26'),(99,'2023-01-07'),(100,'2023-02-03'),(101,'2022-05-21'),(102,'2023-03-03'),(103,'2023-03-25'),(104,'2022-01-22'),(105,'2023-04-23'),(106,'2022-02-01'),(107,'2023-02-19'),(108,'2022-03-06'),(109,'2022-02-17'),(110,'2023-04-14'),(111,'2023-05-20'),(112,'2023-01-26'),(113,'2023-03-22'),(114,'2022-02-15'),(115,'2023-04-15'),(116,'2023-01-08'),(117,'2022-03-27'),(118,'2023-01-27'),(119,'2022-01-18'),(120,'2022-05-28'),(121,'2023-03-05'),(122,'2022-04-02'),(123,'2022-01-14'),(124,'2023-03-07'),(125,'2022-05-06'),(126,'2023-02-01'),(127,'2022-05-02'),(128,'2023-02-04'),(129,'2022-02-19'),(130,'2022-04-22'),(131,'2023-01-17'),(132,'2022-03-14'),(133,'2023-03-06'),(134,'2023-03-18'),(135,'2023-01-02'),(136,'2023-04-08'),(137,'2022-02-20'),(138,'2022-03-17'),(139,'2023-04-10'),(140,'2023-02-27'),(141,'2022-04-01'),(142,'2023-01-25'),(143,'2022-05-04'),(144,'2022-05-11'),(145,'2023-02-07'),(146,'2023-05-08'),(147,'2023-05-05'),(148,'2023-02-21'),(149,'2022-01-07'),(150,'2022-03-10'),(151,'2023-02-10'),(152,'2022-02-21'),(153,'2023-04-26'),(154,'2022-03-27'),(155,'2022-02-06'),(156,'2023-03-27'),(157,'2022-03-23'),(158,'2023-03-26'),(159,'2022-05-26'),(160,'2022-05-06'),(161,'2023-03-26'),(162,'2022-01-12'),(163,'2023-04-04'),(164,'2023-02-10'),(165,'2023-02-28'),(166,'2023-01-08'),(167,'2022-04-08'),(168,'2023-02-13'),(169,'2022-02-03'),(170,'2023-02-02'),(171,'2022-03-13'),(172,'2023-02-07'),(173,'2023-03-01'),(174,'2023-05-08'),(175,'2022-04-06'),(176,'2023-03-11'),(177,'2022-01-04'),(178,'2023-04-09'),(179,'2022-04-22'),(180,'2023-05-24'),(181,'2022-01-03'),(182,'2023-03-08'),(183,'2022-01-22'),(184,'2022-01-28'),(185,'2022-05-11'),(186,'2022-04-02'),(187,'2023-05-02'),(188,'2022-01-20'),(189,'2022-03-19'),(190,'2022-03-14'),(191,'2023-04-12'),(192,'2023-04-03'),(193,'2022-05-03'),(194,'2023-03-28'),(195,'2022-03-05'),(196,'2022-01-09'),(197,'2023-02-05'),(198,'2023-05-16'),(199,'2022-02-02'),(200,'2023-01-27'),(201,'2023-02-07'),(202,'2022-04-27'),(203,'2022-04-06'),(204,'2023-03-17'),(205,'2023-05-15'),(206,'2023-04-24'),(207,'2023-04-20'),(208,'2022-03-11'),(209,'2022-01-18'),(210,'2022-05-13'),(211,'2022-05-07'),(212,'2023-05-24'),(213,'2022-03-19'),(214,'2023-02-08'),(215,'2022-01-09'),(216,'2022-03-16'),(217,'2023-01-26'),(218,'2022-04-23'),(219,'2023-01-17'),(220,'2022-05-14'),(221,'2022-01-24'),(222,'2023-03-21'),(223,'2023-05-01'),(224,'2022-03-17'),(225,'2023-01-09'),(226,'2022-03-13'),(227,'2022-01-02'),(228,'2022-02-01'),(229,'2022-02-13'),(230,'2023-01-17'),(231,'2023-02-21'),(232,'2023-03-20'),(233,'2023-01-18'),(234,'2023-01-20'),(235,'2023-04-11'),(236,'2023-01-12'),(237,'2023-03-19'),(238,'2023-02-20'),(239,'2022-04-05'),(240,'2023-03-26'),(241,'2023-03-13'),(242,'2022-03-10'),(243,'2023-03-10'),(244,'2023-04-02'),(245,'2023-02-05'),(246,'2022-01-24'),(247,'2022-04-21'),(248,'2023-04-22'),(249,'2023-04-26'),(250,'2023-01-18'),(251,'2022-03-22'),(252,'2022-02-06'),(253,'2022-03-10'),(254,'2023-04-18'),(255,'2023-02-26'),(256,'2023-01-23'),(257,'2023-04-03'),(258,'2022-03-02'),(259,'2023-01-17'),(260,'2022-01-22'),(261,'2022-03-22'),(262,'2022-01-06'),(263,'2023-03-17'),(264,'2023-02-12'),(265,'2023-02-17'),(266,'2023-01-24'),(267,'2022-04-08'),(268,'2023-05-28'),(269,'2023-03-18'),(270,'2022-02-05'),(271,'2022-02-14'),(272,'2022-03-18'),(273,'2023-03-09'),(274,'2023-04-18'),(275,'2023-05-12'),(276,'2023-02-15'),(277,'2022-03-02'),(278,'2023-01-25'),(279,'2023-05-16'),(280,'2022-05-28'),(281,'2023-03-14'),(282,'2022-01-09'),(283,'2023-02-04'),(284,'2023-04-23'),(285,'2023-02-16'),(286,'2023-05-23'),(287,'2023-02-09'),(288,'2022-02-01'),(289,'2023-04-28'),(290,'2023-02-20'),(291,'2022-02-18'),(292,'2022-01-10'),(293,'2023-02-23'),(294,'2023-04-24'),(295,'2022-01-19'),(296,'2022-02-08'),(297,'2023-01-14'),(298,'2023-01-07'),(299,'2023-04-24'),(300,'2022-02-18'),(301,'2023-03-16'),(302,'2022-03-25'),(303,'2023-05-09'),(304,'2022-03-02'),(305,'2023-01-26'),(306,'2022-03-13'),(307,'2022-02-13'),(308,'2023-04-07'),(309,'2023-02-21'),(310,'2022-01-05'),(311,'2022-02-05'),(312,'2023-05-02'),(313,'2022-05-27'),(314,'2022-03-20'),(315,'2022-04-18'),(316,'2022-05-12'),(317,'2023-01-06'),(318,'2023-02-27'),(319,'2022-05-27'),(320,'2023-03-13'),(321,'2022-01-06'),(322,'2023-05-23'),(323,'2022-05-26'),(324,'2023-05-22'),(325,'2022-04-26'),(326,'2023-05-23'),(327,'2023-01-15'),(328,'2023-02-10'),(329,'2022-01-27'),(330,'2023-05-05'),(331,'2023-01-22'),(332,'2022-05-09'),(333,'2023-01-19'),(334,'2022-03-22'),(335,'2022-02-23'),(336,'2023-01-04'),(337,'2022-04-06'),(338,'2023-02-10'),(339,'2022-05-12'),(340,'2022-04-02'),(341,'2022-01-04'),(342,'2022-02-25'),(343,'2022-03-17'),(344,'2023-01-15'),(345,'2022-04-28'),(346,'2023-01-08'),(347,'2022-05-25'),(348,'2022-05-10'),(349,'2023-01-11'),(350,'2023-02-13'),(351,'2023-05-20'),(352,'2023-02-03'),(353,'2023-04-03'),(354,'2023-04-17'),(355,'2023-02-17'),(356,'2022-05-12'),(357,'2022-03-11'),(358,'2023-04-11'),(359,'2023-05-16'),(360,'2022-01-15'),(361,'2023-01-07'),(362,'2022-04-21'),(363,'2023-01-26'),(364,'2023-05-23'),(365,'2022-05-27'),(366,'2022-02-23'),(367,'2022-03-23'),(368,'2022-04-19'),(369,'2022-05-16'),(370,'2023-01-08'),(371,'2023-01-14'),(372,'2023-05-27'),(373,'2023-04-22'),(374,'2022-03-23'),(375,'2022-04-15'),(376,'2022-04-06'),(377,'2023-02-06'),(378,'2023-03-13'),(379,'2022-01-04'),(380,'2023-02-05'),(381,'2023-03-04'),(382,'2023-02-26'),(383,'2022-04-25'),(384,'2022-03-24'),(385,'2023-01-17'),(386,'2022-02-25'),(387,'2023-03-24'),(388,'2023-02-25'),(389,'2022-03-16'),(390,'2023-01-07'),(391,'2023-04-10'),(392,'2023-04-17'),(393,'2023-04-05'),(394,'2022-04-15'),(395,'2022-05-08'),(396,'2023-02-08'),(397,'2023-04-05'),(398,'2023-05-05'),(399,'2023-04-13'),(400,'2022-02-22'),(401,'2023-04-06'),(402,'2023-04-28'),(403,'2022-02-02'),(404,'2022-03-23'),(405,'2023-05-03'),(406,'2022-01-07'),(407,'2022-01-10'),(408,'2022-05-10'),(409,'2022-03-14'),(410,'2023-03-10'),(411,'2023-04-09'),(412,'2022-05-27'),(413,'2022-03-25'),(414,'2023-03-02'),(415,'2023-01-22'),(416,'2022-04-10'),(417,'2022-02-05'),(418,'2023-03-20'),(419,'2022-02-23'),(420,'2023-01-28'),(421,'2022-04-22'),(422,'2023-03-13'),(423,'2023-05-14'),(424,'2023-03-09'),(425,'2023-02-06'),(426,'2023-02-09'),(427,'2023-01-02'),(428,'2023-05-12'),(429,'2022-03-07'),(430,'2022-01-27'),(431,'2022-02-09'),(432,'2023-05-11'),(433,'2022-01-03'),(434,'2022-01-15'),(435,'2022-05-23'),(436,'2023-03-25'),(437,'2022-04-12'),(438,'2023-02-09'),(439,'2023-03-28'),(440,'2022-05-23'),(441,'2022-01-23'),(442,'2023-02-17'),(443,'2023-02-18'),(444,'2023-03-05'),(445,'2022-02-03'),(446,'2023-03-23'),(447,'2022-04-22'),(448,'2023-05-23'),(449,'2022-01-01'),(450,'2023-02-11'),(451,'2022-03-01'),(452,'2023-04-04'),(453,'2023-02-16'),(454,'2022-02-25'),(455,'2023-03-06'),(456,'2023-05-09'),(457,'2022-01-08'),(458,'2023-04-08'),(459,'2022-03-27'),(460,'2023-05-11'),(461,'2023-02-20'),(462,'2023-05-27'),(463,'2023-02-19'),(464,'2022-04-20'),(465,'2023-04-19'),(466,'2023-05-27'),(467,'2022-03-19'),(468,'2022-01-24'),(469,'2022-04-10'),(470,'2023-04-14'),(471,'2022-01-02'),(472,'2023-03-28'),(473,'2022-04-02'),(474,'2023-02-24'),(475,'2022-02-13'),(476,'2022-04-22'),(477,'2022-01-08'),(478,'2023-01-27'),(479,'2023-03-07'),(480,'2022-04-27'),(481,'2023-03-27'),(482,'2022-05-04'),(483,'2023-01-16'),(484,'2022-04-03'),(485,'2023-03-11'),(486,'2022-05-27'),(487,'2023-04-22'),(488,'2023-04-12'),(489,'2022-05-07'),(490,'2022-04-09'),(491,'2023-02-04'),(492,'2023-04-16'),(493,'2022-01-02'),(494,'2022-04-06'),(495,'2022-02-07'),(496,'2023-05-01'),(497,'2023-02-26'),(498,'2023-02-26'),(499,'2023-05-21'),(500,'2022-03-08');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 22:01:14
