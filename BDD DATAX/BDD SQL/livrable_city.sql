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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `City_ID` int NOT NULL AUTO_INCREMENT,
  `City_name` varchar(40) NOT NULL,
  `Postal_code` varchar(10) NOT NULL,
  `Region_ID` int NOT NULL,
  PRIMARY KEY (`City_ID`),
  KEY `City_Region_FK` (`Region_ID`),
  CONSTRAINT `City_Region_FK` FOREIGN KEY (`Region_ID`) REFERENCES `region` (`Region_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Paris','75000',8),(2,'Marseille','13000',13),(3,'Lyon','69000',1),(4,'Toulouse','31000',11),(5,'Nice','06000',13),(6,'Nantes','44000',12),(7,'Montpellier','34000',11),(8,'Strasbourg','67000',6),(9,'Bordeaux','33000',10),(10,'Lille','59000',7),(11,'Rennes','35000',3),(12,'Reims','51100',6),(13,'Saint-Étienne','42000',1),(14,'Le Havre','76600',9),(15,'Toulon','83000',13),(16,'Grenoble','38000',1),(17,'Dijon','21000',2),(18,'Angers','49000',12),(19,'Nîmes','30000',11),(20,'Villeurbanne','69100',1),(21,'Saint-Denis','93200',8),(22,'Aix-en-Provence','13100',13),(23,'Le Mans','72000',12),(24,'Clermont-Ferrand','63000',1),(25,'Brest','29200',3),(26,'Tours','37000',4),(27,'Amiens','80000',7),(28,'Limoges','87000',10),(29,'Annecy','74000',1),(30,'Perpignan','66000',11),(31,'Boulogne-Billancourt','92100',8),(32,'Metz','57000',6),(33,'Besançon','25000',2),(34,'Orléans','45000',4),(35,'Argenteuil','95100',8),(36,'Rouen','76000',9),(37,'Mulhouse','68100',6),(38,'Montreuil','93100',8),(39,'Saint-Paul','97460',14),(40,'Caen','14000',9),(41,'Nancy','54000',6),(42,'Tourcoing','59200',7),(43,'Roubaix','59100',7),(44,'Nanterre','92000',8),(45,'Vitry-sur-Seine','94400',8),(46,'Avignon','84000',13),(47,'Créteil','94000',8),(48,'Dunkerque','59140',7),(49,'Poitiers','86000',10),(50,'Aubervilliers','93300',8),(51,'Asnières-sur-Seine','92600',8),(52,'Colombes','92700',8),(53,'Versailles','78000',8),(54,'Aulnay-sous-Bois','93600',8),(55,'Saint-Pierre','97410',14),(56,'Courbevoie','92400',8),(57,'Fort-de-France','97200',15),(58,'Cherbourg-en-Cotentin','50100',9),(59,'Rueil-Malmaison','92500',8),(60,'Champigny-sur-Marne','94500',8),(61,'Le Tampon','97430',14),(62,'Pau','64000',10),(63,'Béziers','34500',11),(64,'La Rochelle','17000',10),(65,'Calais','62100',7),(66,'Saint-Maur-des-Fossés','94100',8),(67,'Cannes','06400',13),(68,'Antibes','06600',13),(69,'Mamoudzou','97600',16),(70,'Mérignac','33700',10),(71,'Drancy','93700',8),(72,'Colmar','68000',6),(73,'Saint-Nazaire','44600',12),(74,'Ajaccio','20000',5),(75,'Issy-les-Moulineaux','92130',8),(76,'Évry-Courcouronnes','91000',8),(77,'Noisy-le-Grand','93160',8),(78,'Bourges','18000',4),(79,'Vénissieux','69200',1),(80,'La Seyne-sur-Mer','83500',13),(81,'Cergy','95000',8),(82,'Levallois-Perret','92300',8),(83,'Quimper','29000',3),(84,'Valence','26000',1),(85,'Villeneuve-d\'Ascq','59650',7),(86,'Antony','92160',8),(87,'Pessac','33600',10),(88,'Ivry-sur-Seine','94200',8),(89,'Troyes','10000',6),(90,'Cayenne','97300',17),(91,'Neuilly-sur-Seine','92200',8),(92,'Montauban','82000',11),(93,'Clichy','92110',8),(94,'Chambéry','73000',1),(95,'Niort','79000',10),(96,'Sarcelles','95200',8),(97,'Lorient','56100',3),(98,'Beauvais','60000',7),(99,'Le Blanc-Mesnil','93150',8);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
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
