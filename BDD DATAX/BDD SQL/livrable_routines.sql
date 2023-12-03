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
-- Temporary view structure for view `query2`
--

DROP TABLE IF EXISTS `query2`;
/*!50001 DROP VIEW IF EXISTS `query2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query2` AS SELECT 
 1 AS `Employee_ID`,
 1 AS `Name`,
 1 AS `First_name`,
 1 AS `Jobs_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query5`
--

DROP TABLE IF EXISTS `query5`;
/*!50001 DROP VIEW IF EXISTS `query5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query5` AS SELECT 
 1 AS `Region_name`,
 1 AS `Emission_per_region_2020`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query7`
--

DROP TABLE IF EXISTS `query7`;
/*!50001 DROP VIEW IF EXISTS `query7`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query7` AS SELECT 
 1 AS `Report_ID`,
 1 AS `Report_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query10`
--

DROP TABLE IF EXISTS `query10`;
/*!50001 DROP VIEW IF EXISTS `query10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query10` AS SELECT 
 1 AS `Employee_ID`,
 1 AS `Name`,
 1 AS `First_name`,
 1 AS `Productivity_per_Year`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query4`
--

DROP TABLE IF EXISTS `query4`;
/*!50001 DROP VIEW IF EXISTS `query4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query4` AS SELECT 
 1 AS `Report_ID`,
 1 AS `Report_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query3`
--

DROP TABLE IF EXISTS `query3`;
/*!50001 DROP VIEW IF EXISTS `query3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query3` AS SELECT 
 1 AS `COUNT(Sensor_ID)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query6`
--

DROP TABLE IF EXISTS `query6`;
/*!50001 DROP VIEW IF EXISTS `query6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query6` AS SELECT 
 1 AS `Sector_activity`,
 1 AS `Emission_per_sector`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query1`
--

DROP TABLE IF EXISTS `query1`;
/*!50001 DROP VIEW IF EXISTS `query1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query1` AS SELECT 
 1 AS `Agency_ID`,
 1 AS `City_name`,
 1 AS `Region_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query12`
--

DROP TABLE IF EXISTS `query12`;
/*!50001 DROP VIEW IF EXISTS `query12`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query12` AS SELECT 
 1 AS `Region_ID`,
 1 AS `Region_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query9`
--

DROP TABLE IF EXISTS `query9`;
/*!50001 DROP VIEW IF EXISTS `query9`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query9` AS SELECT 
 1 AS `Gas`,
 1 AS `Emission`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `query8`
--

DROP TABLE IF EXISTS `query8`;
/*!50001 DROP VIEW IF EXISTS `query8`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `query8` AS SELECT 
 1 AS `Employee_ID`,
 1 AS `Name`,
 1 AS `First_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `query2`
--

/*!50001 DROP VIEW IF EXISTS `query2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query2` AS select `agent`.`Employee_ID` AS `Employee_ID`,`agent`.`Name` AS `Name`,`agent`.`First_name` AS `First_name`,`agent`.`Jobs_type` AS `Jobs_Type` from ((`agent` join `agency` on((`agency`.`Agency_ID` = `agent`.`Agency_ID`))) join `city` on((`city`.`City_ID` = `agency`.`City_ID`))) where ((`agent`.`Jobs_type` = 'Technical agent') and (`city`.`City_name` = 'Bordeaux')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query5`
--

/*!50001 DROP VIEW IF EXISTS `query5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query5` AS select `region`.`Region_name` AS `Region_name`,sum(`technical_record`.`Recorded_data`) AS `Emission_per_region_2020` from (((((`technical_record` join `sensor` on((`sensor`.`Sensor_ID` = `technical_record`.`Sensor_ID`))) join `city` on((`city`.`City_ID` = `sensor`.`City_ID`))) join `region` on((`region`.`Region_ID` = `city`.`Region_ID`))) join `capture` on((`capture`.`Sensor_ID` = `sensor`.`Sensor_ID`))) join `gas` on((`gas`.`Gas_ID` = `capture`.`Gas_ID`))) where ((`technical_record`.`Recorded_date` between '2020-01-01' and '2020-12-31') and (`gas`.`Gas_type` = 'Effet de serre')) group by `region`.`Region_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query7`
--

/*!50001 DROP VIEW IF EXISTS `query7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query7` AS select distinct `report`.`Report_ID` AS `Report_ID`,`report`.`Report_date` AS `Report_date` from (((`report` join `enable_` on((`enable_`.`Report_ID` = `report`.`Report_ID`))) join `technical_record` on((`technical_record`.`Record_ID` = `enable_`.`Record_ID`))) join `gas` on((0 <> `gas`.`Gas_ID`))) where (`gas`.`Gas` = 'NH3') order by `report`.`Report_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query10`
--

/*!50001 DROP VIEW IF EXISTS `query10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query10` AS select `agent`.`Employee_ID` AS `Employee_ID`,`agent`.`Name` AS `Name`,`agent`.`First_name` AS `First_name`,(count(`write_`.`Employee_ID`) / timestampdiff(YEAR,`agent`.`Start_date`,curdate())) AS `Productivity_per_Year` from (((`agent` join `agency` on((`agency`.`Agency_ID` = `agent`.`Agency_ID`))) join `city` on((`city`.`City_ID` = `agency`.`City_ID`))) join `write_` on((`write_`.`Employee_ID` = `agent`.`Employee_ID`))) where ((`city`.`City_name` = 'Toulouse') and (`agent`.`Jobs_type` = 'Administrative agent')) group by `agent`.`Employee_ID`,`agent`.`Name`,`agent`.`First_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query4`
--

/*!50001 DROP VIEW IF EXISTS `query4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query4` AS select `report`.`Report_ID` AS `Report_ID`,`report`.`Report_date` AS `Report_date` from `report` where (`report`.`Report_date` between '2018-01-01' and '2022-12-31') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query3`
--

/*!50001 DROP VIEW IF EXISTS `query3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query3` AS select count(`sensor`.`Sensor_ID`) AS `COUNT(Sensor_ID)` from `sensor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query6`
--

/*!50001 DROP VIEW IF EXISTS `query6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query6` AS select `sector_activity`.`Sector_activity` AS `Sector_activity`,sum(`technical_record`.`Recorded_data`) AS `Emission_per_sector` from ((((`technical_record` join `sensor` on((`sensor`.`Sensor_ID` = `technical_record`.`Sensor_ID`))) join `sector_activity` on((`sector_activity`.`Sector_ID` = `sensor`.`Sector_ID`))) join `city` on((`city`.`City_ID` = `sensor`.`City_ID`))) join `region` on((`region`.`Region_ID` = `city`.`Region_ID`))) where (`region`.`Region_name` = 'Île-de-France') group by `sector_activity`.`Sector_activity` order by `Emission_per_sector` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query1`
--

/*!50001 DROP VIEW IF EXISTS `query1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query1` AS select `agency`.`Agency_ID` AS `Agency_ID`,`city`.`City_name` AS `City_name`,`region`.`Region_name` AS `Region_name` from ((`agency` join `city` on((`agency`.`City_ID` = `city`.`City_ID`))) join `region` on((`region`.`Region_ID` = `city`.`Region_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query12`
--

/*!50001 DROP VIEW IF EXISTS `query12`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query12` AS select `sensor`.`Region_ID` AS `Region_ID`,`sensor`.`Region_name` AS `Region_name` from ((select `region`.`Region_ID` AS `Region_ID`,`region`.`Region_name` AS `Region_name`,count(`sensor`.`Sensor_ID`) AS `Sensor_NB` from ((`city` join `region` on((`region`.`Region_ID` = `city`.`Region_ID`))) join `sensor` on((`sensor`.`City_ID` = `city`.`City_ID`))) group by `region`.`Region_ID` order by `region`.`Region_ID`) `sensor` join (select `region`.`Region_ID` AS `Region_ID`,count(`agency`.`Agency_ID`) AS `Agency_NB` from ((`city` join `region` on((`region`.`Region_ID` = `city`.`Region_ID`))) join `agency` on((`agency`.`City_ID` = `city`.`City_ID`))) group by `region`.`Region_ID` order by `region`.`Region_ID`) `agency` on((`sensor`.`Region_ID` = `agency`.`Region_ID`))) where (`agency`.`Agency_NB` > `sensor`.`Sensor_NB`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query9`
--

/*!50001 DROP VIEW IF EXISTS `query9`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query9` AS select `gas`.`Gas` AS `Gas`,sum(`technical_record`.`Recorded_data`) AS `Emission` from (((((`technical_record` join `gas` on((`gas`.`Gas_ID` = `technical_record`.`Gas_ID`))) join `sensor` on((`sensor`.`Sensor_ID` = `technical_record`.`Sensor_ID`))) join `sector_activity` on((`sector_activity`.`Sector_ID` = `sensor`.`Sector_ID`))) join `city` on((`city`.`City_ID` = `sensor`.`City_ID`))) join `region` on((`region`.`Region_ID` = `city`.`Region_ID`))) where ((`region`.`Region_name` = 'Île-de-France') and (`technical_record`.`Recorded_date` between '2020-01-01' and '2020-12-31')) group by `gas`.`Gas` order by `gas`.`Gas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `query8`
--

/*!50001 DROP VIEW IF EXISTS `query8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `query8` AS select distinct `agent`.`Employee_ID` AS `Employee_ID`,`agent`.`Name` AS `Name`,`agent`.`First_name` AS `First_name` from (((`agent` join `sensor` on((`sensor`.`Employee_ID` = `agent`.`Employee_ID`))) join `capture` on((`capture`.`Sensor_ID` = `sensor`.`Sensor_ID`))) join `gas` on((`gas`.`Gas_ID` = `capture`.`Gas_ID`))) where ((`gas`.`Gas_type` = 'Accidification') and (`agent`.`Active` = true)) order by `agent`.`Employee_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 22:01:14
