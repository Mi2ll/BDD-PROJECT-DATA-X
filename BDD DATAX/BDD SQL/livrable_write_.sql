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
-- Table structure for table `write_`
--

DROP TABLE IF EXISTS `write_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `write_` (
  `Employee_ID` int NOT NULL,
  `Report_ID` int NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Report_ID`),
  KEY `Write__Report0_FK` (`Report_ID`),
  CONSTRAINT `Write__Agent_FK` FOREIGN KEY (`Employee_ID`) REFERENCES `agent` (`Employee_ID`),
  CONSTRAINT `Write__Report0_FK` FOREIGN KEY (`Report_ID`) REFERENCES `report` (`Report_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write_`
--

LOCK TABLES `write_` WRITE;
/*!40000 ALTER TABLE `write_` DISABLE KEYS */;
INSERT INTO `write_` VALUES (175,1),(223,2),(223,3),(175,4),(223,5),(64,6),(134,7),(25,8),(86,9),(101,10),(152,11),(91,12),(250,13),(73,14),(170,15),(146,16),(240,17),(64,18),(172,19),(77,20),(113,21),(239,22),(121,23),(156,24),(103,25),(112,26),(179,27),(183,28),(86,29),(152,30),(100,31),(129,32),(65,33),(66,34),(65,35),(83,36),(209,37),(188,38),(174,39),(152,40),(129,41),(91,42),(236,43),(180,44),(54,45),(228,46),(66,47),(138,48),(192,49),(158,50),(97,51),(168,52),(19,53),(68,54),(112,55),(180,56),(65,57),(185,58),(238,59),(42,60),(172,61),(250,62),(45,63),(136,64),(205,65),(51,66),(165,67),(57,68),(167,69),(156,70),(121,71),(107,72),(54,73),(97,74),(122,75),(137,76),(217,77),(77,78),(83,79),(180,80),(194,81),(228,82),(229,83),(46,84),(158,85),(59,86),(64,87),(243,88),(50,89),(208,90),(62,91),(246,92),(120,93),(174,94),(168,95),(115,96),(247,97),(148,98),(235,99),(94,100),(240,101),(54,102),(181,103),(57,104),(55,105),(73,106),(113,107),(158,108),(153,109),(146,110),(129,111),(174,112),(228,113),(196,114),(212,115),(150,116),(153,117),(189,118),(64,119),(73,120),(163,121),(82,122),(25,123),(228,124),(229,125),(154,126),(55,127),(138,128),(115,129),(238,130),(45,131),(78,132),(213,133),(25,134),(116,135),(228,136),(153,137),(129,138),(217,139),(183,140),(22,141),(213,142),(213,143),(57,144),(137,145),(101,146),(201,147),(94,148),(224,149),(232,150),(165,151),(94,152),(22,153),(8,154),(177,155),(239,156),(159,157),(68,158),(187,159),(172,160),(165,161),(154,162),(136,163),(246,164),(58,165),(179,166),(115,167),(208,168),(180,169),(181,170),(199,171),(74,172),(163,173),(50,174),(238,175),(180,176),(239,177),(117,178),(186,179),(175,180),(188,181),(221,182),(25,183),(82,184),(218,185),(129,186),(64,187),(86,188),(172,189),(22,190),(99,191),(54,192),(196,193),(209,194),(137,195),(52,196),(177,197),(83,198),(74,199),(228,200),(194,201),(149,202),(239,203),(223,204),(55,205),(186,206),(158,207),(158,208),(65,209),(55,210),(181,211),(128,212),(77,213),(243,214),(52,215),(66,216),(59,217),(47,218),(64,219),(20,220),(58,221),(77,222),(163,223),(101,224),(47,225),(246,226),(29,227),(65,228),(170,229),(154,230),(63,231),(116,232),(115,233),(229,234),(228,235),(22,236),(236,237),(192,238),(54,239),(73,240),(246,241),(241,242),(148,243),(120,244),(8,245),(99,246),(99,247),(175,248),(194,249),(22,250),(136,251),(113,252),(174,253),(62,254),(77,255),(250,256),(55,257),(163,258),(154,259),(231,260),(192,261),(54,262),(19,263),(32,264),(129,265),(243,266),(52,267),(46,268),(224,269),(206,270),(20,271),(199,272),(146,273),(64,274),(50,275),(137,276),(103,277),(152,278),(170,279),(62,280),(97,281),(163,282),(208,283),(107,284),(192,285),(174,286),(212,287),(74,288),(205,289),(55,290),(92,291),(238,292),(183,293),(241,294),(231,295),(99,296),(45,297),(167,298),(45,299),(74,300),(128,301),(181,302),(187,303),(82,304),(201,305),(136,306),(228,307),(55,308),(100,309),(153,310),(238,311),(62,312),(236,313),(103,314),(120,315),(243,316),(94,317),(27,318),(138,319),(77,320),(94,321),(165,322),(128,323),(179,324),(87,325),(116,326),(100,327),(78,328),(20,329),(179,330),(213,331),(232,332),(213,333),(22,334),(213,335),(20,336),(19,337),(181,338),(29,339),(218,340),(212,341),(231,342),(55,343),(168,344),(148,345),(129,346),(185,347),(250,348),(66,349),(86,350),(55,351),(100,352),(50,353),(155,354),(206,355),(86,356),(129,357),(116,358),(98,359),(87,360),(170,361),(117,362),(134,363),(231,364),(213,365),(116,366),(104,367),(55,368),(179,369),(218,370),(86,371),(137,372),(218,373),(117,374),(246,375),(223,376),(186,377),(58,378),(82,379),(136,380),(64,381),(114,382),(185,383),(54,384),(117,385),(82,386),(73,387),(99,388),(8,389),(155,390),(63,391),(148,392),(150,393),(113,394),(25,395),(22,396),(144,397),(228,398),(153,399),(112,400),(243,401),(246,402),(155,403),(144,404),(51,405),(241,406),(101,407),(159,408),(104,409),(172,410),(112,411),(42,412),(205,413),(167,414),(196,415),(201,416),(199,417),(179,418),(158,419),(223,420),(103,421),(128,422),(158,423),(55,424),(68,425),(246,426),(199,427),(52,428),(77,429),(104,430),(22,431),(97,432),(246,433),(206,434),(29,435),(209,436),(80,437),(228,438),(136,439),(80,440),(113,441),(153,442),(167,443),(63,444),(238,445),(25,446),(243,447),(213,448),(232,449),(152,450),(50,451),(223,452),(87,453),(185,454),(136,455),(175,456),(94,457),(224,458),(45,459),(45,460),(212,461),(120,462),(51,463),(52,464),(62,465),(46,466),(32,467),(199,468),(51,469),(46,470),(91,471),(97,472),(42,473),(177,474),(54,475),(101,476),(250,477),(77,478),(25,479),(152,480),(172,481),(136,482),(94,483),(99,484),(80,485),(55,486),(148,487),(159,488),(189,489),(92,490),(122,491),(46,492),(152,493),(103,494),(167,495),(146,496),(241,497),(55,498),(122,499),(91,500);
/*!40000 ALTER TABLE `write_` ENABLE KEYS */;
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
