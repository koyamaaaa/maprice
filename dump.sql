-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 9b7dc9ff6eb8    Database: app_development
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2019-09-16 06:09:21','2019-09-16 06:09:21');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'キャッシュバック（¥28500~¥31500）','キャッシュバック（¥28500~¥31500）',1,'2019-09-21 03:25:22','2019-10-22 04:27:03'),(2,'auスマートバリューmine','au携帯電話とWiFiルーターの組み合わせで、auスマートフォンなどの利用料金が毎月最大で1,000円OFF',NULL,'2019-09-30 14:12:28','2019-10-22 06:45:03'),(3,'10000円キャッシュバック','10000円キャッシュバック',2,'2019-10-22 06:21:03','2019-10-22 06:21:03');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `data_capacities`
--

LOCK TABLES `data_capacities` WRITE;
/*!40000 ALTER TABLE `data_capacities` DISABLE KEYS */;
INSERT INTO `data_capacities` VALUES (1,'7GB','2019-09-21 03:15:41','2019-10-22 05:11:14'),(2,'無制限（3日10GB制限）','2019-10-22 05:11:36','2019-10-22 05:11:59');
/*!40000 ALTER TABLE `data_capacities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (3,'W06','2019-10-22 02:19:49','2019-10-22 02:19:49',1),(4,'WX05','2019-10-22 02:21:34','2019-10-22 02:21:34',1),(5,'HOME01','2019-10-22 02:22:04','2019-10-22 02:28:37',2),(6,'HOMEL02','2019-10-22 02:22:12','2019-10-22 02:28:45',2),(7,'HOMEL01/L01s','2019-10-22 02:22:27','2019-10-22 02:28:52',2);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `net_lines`
--

LOCK TABLES `net_lines` WRITE;
/*!40000 ALTER TABLE `net_lines` DISABLE KEYS */;
INSERT INTO `net_lines` VALUES (3,'WiMAX','2019-09-21 02:57:34','2019-10-22 03:03:42');
/*!40000 ALTER TABLE `net_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (2,'ギガ放題プラン','ギガ放題プラン','3年',152160,0,'#','2019-09-21 05:48:16','2019-10-22 05:26:44',1,2,3),(4,'7GBプラン','7GBプラン','3年',129924,0,'#','2019-09-24 14:41:00','2019-10-22 05:28:57',1,1,3),(5,'Flat ツープラス ギガ放題','Flat ツープラス ギガ放題','3年',145656,0,'#','2019-10-22 06:06:25','2019-10-26 08:48:15',2,2,3);
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `plans_campaigns`
--

LOCK TABLES `plans_campaigns` WRITE;
/*!40000 ALTER TABLE `plans_campaigns` DISABLE KEYS */;
INSERT INTO `plans_campaigns` VALUES (1,2,1,'2019-10-22 15:11:10','2019-10-22 15:11:10');
/*!40000 ALTER TABLE `plans_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `plans_devices`
--

LOCK TABLES `plans_devices` WRITE;
/*!40000 ALTER TABLE `plans_devices` DISABLE KEYS */;
INSERT INTO `plans_devices` VALUES (4,2,3,'2019-10-22 03:02:55','2019-10-22 03:02:55'),(5,2,4,'2019-10-22 03:02:55','2019-10-22 03:02:55'),(6,2,5,'2019-10-22 03:02:55','2019-10-22 03:02:55'),(7,2,6,'2019-10-22 03:02:55','2019-10-22 03:02:55'),(8,5,3,'2019-10-22 06:06:25','2019-10-22 06:06:25'),(9,5,4,'2019-10-22 06:06:25','2019-10-22 06:06:25'),(10,5,5,'2019-10-22 06:06:25','2019-10-22 06:06:25'),(11,5,6,'2019-10-22 06:06:25','2019-10-22 06:06:25');
/*!40000 ALTER TABLE `plans_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `plans_services`
--

LOCK TABLES `plans_services` WRITE;
/*!40000 ALTER TABLE `plans_services` DISABLE KEYS */;
INSERT INTO `plans_services` VALUES (1,4,1,'2019-10-22 05:59:23','2019-10-22 05:59:23'),(3,4,2,'2019-10-22 06:00:21','2019-10-22 06:00:21'),(4,2,1,'2019-10-22 06:04:44','2019-10-22 06:04:44'),(6,5,1,'2019-10-22 06:06:25','2019-10-22 06:06:25'),(7,5,2,'2019-10-22 06:06:25','2019-10-22 06:06:25'),(8,2,2,'2019-10-26 10:32:42','2019-10-26 10:32:42');
/*!40000 ALTER TABLE `plans_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'GMOとくとくBB','2019-09-20 11:27:14','2019-10-22 05:26:57'),(2,'So-net','2019-09-20 11:27:26','2019-10-22 05:27:18'),(3,'UQWiMAX','2019-09-21 02:30:19','2019-10-22 05:27:41'),(4,'BroadWiMAX','2019-09-21 02:31:41','2019-10-22 05:27:56'),(5,'BIGLOBE','2019-09-21 02:32:31','2019-10-22 06:46:34'),(6,'www','2019-09-21 02:33:36','2019-09-21 02:33:36'),(9,'gropu','2019-09-21 02:57:02','2019-09-21 02:57:02');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20190916070658'),('20190916070932'),('20190916072318'),('20190916080939'),('20190916081328'),('20190917131600'),('20190917131902'),('20190918124749'),('20190918125340'),('20190918130817'),('20190918132504'),('20190918133423'),('20190921014803'),('20190921033221'),('20190921055022'),('20190921055903'),('20190923041731'),('20190923044006'),('20190927111423'),('20191006040835'),('20191006121608'),('20191006122136'),('20191007133634'),('20191010133813'),('20191014141659'),('20191017133115'),('20191017140748'),('20191019160149'),('20191019160933'),('20191022020855'),('20191022053327'),('20191022060900'),('20191026110014');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'ポケットWiFi（モバイルWiFi）','2019-09-21 02:25:17','2019-10-22 02:27:24'),(2,'置くだけWiFi（Wi-Fi）','2019-10-22 02:28:28','2019-10-22 02:28:28');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'toru','$2a$10$E5.0qsIlaqcta.RR7QQsOOIN5XukDJh3jS6oD6fTJcNgomRkDhXpe','2019-10-13 12:33:35','2019-10-26 10:50:21','toru@gmail.com',NULL),(5,'hello','$2a$10$KwpMSLNePOtHLSeXPx6X9ewNSD00dlzWgIoKD1MkEZ7WDqEg0LdL6','2019-10-13 14:07:01','2019-10-26 03:27:26','hello@gmail.com',NULL),(6,'sample','$2a$10$e467SiWK5OeTbldbe5D85O3g6NnVHPFyuIGx4AW5W1buRxf1gUWLy','2019-10-26 03:29:15','2019-10-26 10:57:19','sample@sample.com','$2a$10$Iw3T/7gbaYNKO03adWBSpucesQ3B1O0ARObZkJ5dimRG1NAFJMP5i'),(9,'good','$2a$10$KlrXQZT/MC7RA5.TUhhz2OhswCoAVz9uJNczgMe8kQXOVQLe9lgbK','2019-10-26 10:29:27','2019-10-26 10:29:27','good@good.com',NULL),(10,'infoinfo','$2a$10$ubYDUVqXRstO9hCs.9SeF.5h773MIA8UovoCVO4rMZKElRSRietZS','2019-10-26 10:53:31','2019-10-26 10:53:31','info@info.com',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-27  4:04:55
