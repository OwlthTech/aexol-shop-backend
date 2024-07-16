-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: vendure_2024
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `fullName` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `streetLine1` varchar(255) NOT NULL,
  `streetLine2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `postalCode` varchar(255) NOT NULL DEFAULT '',
  `phoneNumber` varchar(255) NOT NULL DEFAULT '',
  `defaultShippingAddress` tinyint NOT NULL DEFAULT '0',
  `defaultBillingAddress` tinyint NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `customerId` int DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_dc34d382b493ade1f70e834c4d` (`customerId`),
  KEY `IDX_d87215343c3a3a67e6a0b7f3ea` (`countryId`),
  CONSTRAINT `FK_d87215343c3a3a67e6a0b7f3ea9` FOREIGN KEY (`countryId`) REFERENCES `region` (`id`),
  CONSTRAINT `FK_dc34d382b493ade1f70e834c4d3` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_154f5c538b1576ccc277b1ed63` (`emailAddress`),
  UNIQUE KEY `REL_1966e18ce6a39a82b19204704d` (`userId`),
  CONSTRAINT `FK_1966e18ce6a39a82b19204704d7` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('2024-05-06 15:54:40.230706','2024-05-06 15:54:40.000000',NULL,'Super','Admin','superadmin',1,1);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `mimeType` varchar(255) NOT NULL,
  `width` int NOT NULL DEFAULT '0',
  `height` int NOT NULL DEFAULT '0',
  `fileSize` int NOT NULL,
  `source` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `focalPoint` text,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES ('2024-05-06 11:29:53.691904','2024-05-06 11:29:53.691904','derick-david-409858-unsplash.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/b6/derick-david-409858-unsplash.jpg','preview/71/derick-david-409858-unsplash__preview.jpg',NULL,1),('2024-05-06 11:29:54.110596','2024-05-06 11:29:54.110596','kelly-sikkema-685291-unsplash.jpg','IMAGE','image/jpeg',1600,1067,47714,'source/5a/kelly-sikkema-685291-unsplash.jpg','preview/b8/kelly-sikkema-685291-unsplash__preview.jpg',NULL,2),('2024-05-06 11:29:54.278220','2024-05-06 11:29:54.278220','oscar-ivan-esquivel-arteaga-687447-unsplash.jpg','IMAGE','image/jpeg',1600,1071,76870,'source/0b/oscar-ivan-esquivel-arteaga-687447-unsplash.jpg','preview/a1/oscar-ivan-esquivel-arteaga-687447-unsplash__preview.jpg',NULL,3),('2024-05-06 11:29:54.385897','2024-05-06 11:29:54.385897','daniel-korpai-1302051-unsplash.jpg','IMAGE','image/jpeg',1280,1600,201064,'source/28/daniel-korpai-1302051-unsplash.jpg','preview/d2/daniel-korpai-1302051-unsplash__preview.jpg',NULL,4),('2024-05-06 11:29:54.490746','2024-05-06 11:29:54.490746','alexandru-acea-686569-unsplash.jpg','IMAGE','image/jpeg',1067,1600,71196,'source/e8/alexandru-acea-686569-unsplash.jpg','preview/9c/alexandru-acea-686569-unsplash__preview.jpg',NULL,5),('2024-05-06 11:29:54.648892','2024-05-06 11:29:54.648892','liam-briese-1128307-unsplash.jpg','IMAGE','image/jpeg',1600,1067,120523,'source/2e/liam-briese-1128307-unsplash.jpg','preview/58/liam-briese-1128307-unsplash__preview.jpg',NULL,6),('2024-05-06 11:29:54.850139','2024-05-06 11:29:54.850139','florian-olivo-1166419-unsplash.jpg','IMAGE','image/jpeg',1067,1600,73904,'source/63/florian-olivo-1166419-unsplash.jpg','preview/5a/florian-olivo-1166419-unsplash__preview.jpg',NULL,7),('2024-05-06 11:29:55.121164','2024-05-06 11:29:55.121164','vincent-botta-736919-unsplash.jpg','IMAGE','image/jpeg',1600,1200,87075,'source/59/vincent-botta-736919-unsplash.jpg','preview/96/vincent-botta-736919-unsplash__preview.jpg',NULL,8),('2024-05-06 11:29:55.402262','2024-05-06 11:29:55.402262','juan-gomez-674574-unsplash.jpg','IMAGE','image/jpeg',1600,1060,60470,'source/b8/juan-gomez-674574-unsplash.jpg','preview/09/juan-gomez-674574-unsplash__preview.jpg',NULL,9),('2024-05-06 11:29:55.501885','2024-05-06 11:29:55.501885','thomas-q-1229169-unsplash.jpg','IMAGE','image/jpeg',1600,1600,94113,'source/86/thomas-q-1229169-unsplash.jpg','preview/7b/thomas-q-1229169-unsplash__preview.jpg',NULL,10),('2024-05-06 11:29:55.578123','2024-05-06 11:29:55.578123','adam-birkett-239153-unsplash.jpg','IMAGE','image/jpeg',1067,1600,17676,'source/3c/adam-birkett-239153-unsplash.jpg','preview/64/adam-birkett-239153-unsplash__preview.jpg',NULL,11),('2024-05-06 11:29:55.656262','2024-05-06 11:29:55.656262','eniko-kis-663725-unsplash.jpg','IMAGE','image/jpeg',1600,1067,42943,'source/1d/eniko-kis-663725-unsplash.jpg','preview/b5/eniko-kis-663725-unsplash__preview.jpg',NULL,12),('2024-05-06 11:29:55.762883','2024-05-06 11:29:55.762883','brandi-redd-104140-unsplash.jpg','IMAGE','image/jpeg',1600,1110,91458,'source/21/brandi-redd-104140-unsplash.jpg','preview/9b/brandi-redd-104140-unsplash__preview.jpg',NULL,13),('2024-05-06 11:29:55.862456','2024-05-06 11:29:55.862456','jonathan-talbert-697262-unsplash.jpg','IMAGE','image/jpeg',1067,1600,103011,'source/69/jonathan-talbert-697262-unsplash.jpg','preview/3c/jonathan-talbert-697262-unsplash__preview.jpg',NULL,14),('2024-05-06 11:29:55.958109','2024-05-06 11:29:55.958109','zoltan-tasi-423051-unsplash.jpg','IMAGE','image/jpeg',1067,1600,49099,'source/92/zoltan-tasi-423051-unsplash.jpg','preview/21/zoltan-tasi-423051-unsplash__preview.jpg',NULL,15),('2024-05-06 11:29:56.056155','2024-05-06 11:29:56.056155','jakob-owens-274337-unsplash.jpg','IMAGE','image/jpeg',1600,1067,213089,'source/cf/jakob-owens-274337-unsplash.jpg','preview/5b/jakob-owens-274337-unsplash__preview.jpg',NULL,16),('2024-05-06 11:29:56.155584','2024-05-06 11:29:56.155584','patrick-brinksma-663044-unsplash.jpg','IMAGE','image/jpeg',1600,1067,190811,'source/0f/patrick-brinksma-663044-unsplash.jpg','preview/bc/patrick-brinksma-663044-unsplash__preview.jpg',NULL,17),('2024-05-06 11:29:56.242344','2024-05-06 11:29:56.242344','chuttersnap-324234-unsplash.jpg','IMAGE','image/jpeg',1600,1068,118442,'source/df/chuttersnap-324234-unsplash.jpg','preview/95/chuttersnap-324234-unsplash__preview.jpg',NULL,18),('2024-05-06 11:29:56.335327','2024-05-06 11:29:56.335327','robert-shunev-528016-unsplash.jpg','IMAGE','image/jpeg',1600,1067,36204,'source/9e/robert-shunev-528016-unsplash.jpg','preview/9d/robert-shunev-528016-unsplash__preview.jpg',NULL,19),('2024-05-06 11:29:56.413875','2024-05-06 11:29:56.413875','alexander-andrews-260988-unsplash.jpg','IMAGE','image/jpeg',1050,1600,65460,'source/f8/alexander-andrews-260988-unsplash.jpg','preview/ef/alexander-andrews-260988-unsplash__preview.jpg',NULL,20),('2024-05-06 11:29:56.497212','2024-05-06 11:29:56.497212','mikkel-bech-748940-unsplash.jpg','IMAGE','image/jpeg',1600,1130,62785,'source/29/mikkel-bech-748940-unsplash.jpg','preview/2f/mikkel-bech-748940-unsplash__preview.jpg',NULL,21),('2024-05-06 11:29:56.630135','2024-05-06 11:29:56.630135','stoica-ionela-530966-unsplash.jpg','IMAGE','image/jpeg',1600,1600,50995,'source/b1/stoica-ionela-530966-unsplash.jpg','preview/34/stoica-ionela-530966-unsplash__preview.jpg',NULL,22),('2024-05-06 11:29:56.728109','2024-05-06 11:29:56.728109','neonbrand-428982-unsplash.jpg','IMAGE','image/jpeg',1600,1332,169677,'source/3c/neonbrand-428982-unsplash.jpg','preview/4f/neonbrand-428982-unsplash__preview.jpg',NULL,23),('2024-05-06 11:29:56.817723','2024-05-06 11:29:56.817723','michael-guite-571169-unsplash.jpg','IMAGE','image/jpeg',1600,1067,240247,'source/ab/michael-guite-571169-unsplash.jpg','preview/96/michael-guite-571169-unsplash__preview.jpg',NULL,24),('2024-05-06 11:29:56.910201','2024-05-06 11:29:56.910201','max-tarkhov-737999-unsplash.jpg','IMAGE','image/jpeg',1600,1280,192508,'source/ed/max-tarkhov-737999-unsplash.jpg','preview/35/max-tarkhov-737999-unsplash__preview.jpg',NULL,25),('2024-05-06 11:29:56.988664','2024-05-06 11:29:56.988664','nik-shuliahin-619349-unsplash.jpg','IMAGE','image/jpeg',1600,1020,130437,'source/87/nik-shuliahin-619349-unsplash.jpg','preview/d6/nik-shuliahin-619349-unsplash__preview.jpg',NULL,26),('2024-05-06 11:29:57.093028','2024-05-06 11:29:57.093028','ben-hershey-574483-unsplash.jpg','IMAGE','image/jpeg',1600,1070,77118,'source/f3/ben-hershey-574483-unsplash.jpg','preview/30/ben-hershey-574483-unsplash__preview.jpg',NULL,27),('2024-05-06 11:29:57.202607','2024-05-06 11:29:57.202607','tommy-bebo-600358-unsplash.jpg','IMAGE','image/jpeg',1067,1600,262335,'source/ac/tommy-bebo-600358-unsplash.jpg','preview/0f/tommy-bebo-600358-unsplash__preview.jpg',NULL,28),('2024-05-06 11:29:57.280499','2024-05-06 11:29:57.280499','chuttersnap-584518-unsplash.jpg','IMAGE','image/jpeg',1600,1068,76330,'source/20/chuttersnap-584518-unsplash.jpg','preview/ed/chuttersnap-584518-unsplash__preview.jpg',NULL,29),('2024-05-06 11:29:57.593094','2024-05-06 11:29:57.593094','imani-clovis-234736-unsplash.jpg','IMAGE','image/jpeg',1600,1600,99111,'source/de/imani-clovis-234736-unsplash.jpg','preview/0f/imani-clovis-234736-unsplash__preview.jpg',NULL,30),('2024-05-06 11:29:57.859056','2024-05-06 11:29:57.859056','xavier-teo-469050-unsplash.jpg','IMAGE','image/jpeg',1200,1600,167599,'source/5c/xavier-teo-469050-unsplash.jpg','preview/3c/xavier-teo-469050-unsplash__preview.jpg',NULL,31),('2024-05-06 11:29:58.105634','2024-05-06 11:29:58.105634','thomas-serer-420833-unsplash.jpg','IMAGE','image/jpeg',1600,1223,78999,'source/55/thomas-serer-420833-unsplash.jpg','preview/a2/thomas-serer-420833-unsplash__preview.jpg',NULL,32),('2024-05-06 11:29:58.351396','2024-05-06 11:29:58.351396','nikolai-chernichenko-1299748-unsplash.jpg','IMAGE','image/jpeg',1600,1067,56282,'source/01/nikolai-chernichenko-1299748-unsplash.jpg','preview/00/nikolai-chernichenko-1299748-unsplash__preview.jpg',NULL,33),('2024-05-06 11:29:58.602286','2024-05-06 11:29:58.602286','mitch-lensink-256007-unsplash.jpg','IMAGE','image/jpeg',1600,1067,154988,'source/2b/mitch-lensink-256007-unsplash.jpg','preview/aa/mitch-lensink-256007-unsplash__preview.jpg',NULL,34),('2024-05-06 11:29:58.891128','2024-05-06 11:29:58.891128','charles-deluvio-695736-unsplash.jpg','IMAGE','image/jpeg',1600,1600,54419,'source/92/charles-deluvio-695736-unsplash.jpg','preview/78/charles-deluvio-695736-unsplash__preview.jpg',NULL,35),('2024-05-06 11:29:59.050567','2024-05-06 11:29:59.050567','natalia-y-345738-unsplash.jpg','IMAGE','image/jpeg',900,1600,97819,'source/17/natalia-y-345738-unsplash.jpg','preview/14/natalia-y-345738-unsplash__preview.jpg',NULL,36),('2024-05-06 11:29:59.167430','2024-05-06 11:29:59.167430','alex-rodriguez-santibanez-200278-unsplash.jpg','IMAGE','image/jpeg',1600,1067,176280,'source/ff/alex-rodriguez-santibanez-200278-unsplash.jpg','preview/5b/alex-rodriguez-santibanez-200278-unsplash__preview.jpg',NULL,37),('2024-05-06 11:29:59.268318','2024-05-06 11:29:59.268318','silvia-agrasar-227575-unsplash.jpg','IMAGE','image/jpeg',1600,1063,119654,'source/d5/silvia-agrasar-227575-unsplash.jpg','preview/29/silvia-agrasar-227575-unsplash__preview.jpg',NULL,38),('2024-05-06 11:29:59.370418','2024-05-06 11:29:59.370418','caleb-george-536388-unsplash.jpg','IMAGE','image/jpeg',1200,1600,184968,'source/f0/caleb-george-536388-unsplash.jpg','preview/6d/caleb-george-536388-unsplash__preview.jpg',NULL,39),('2024-05-06 11:29:59.472476','2024-05-06 11:29:59.472476','annie-spratt-78044-unsplash.jpg','IMAGE','image/jpeg',1115,1600,173536,'source/f1/annie-spratt-78044-unsplash.jpg','preview/81/annie-spratt-78044-unsplash__preview.jpg',NULL,40),('2024-05-06 11:29:59.568537','2024-05-06 11:29:59.568537','zoltan-kovacs-642412-unsplash.jpg','IMAGE','image/jpeg',1067,1600,72752,'source/e3/zoltan-kovacs-642412-unsplash.jpg','preview/88/zoltan-kovacs-642412-unsplash__preview.jpg',NULL,41),('2024-05-06 11:29:59.654925','2024-05-06 11:29:59.654925','mark-tegethoff-667351-unsplash.jpg','IMAGE','image/jpeg',1600,1200,79857,'source/e6/mark-tegethoff-667351-unsplash.jpg','preview/f3/mark-tegethoff-667351-unsplash__preview.jpg',NULL,42),('2024-05-06 11:29:59.743833','2024-05-06 11:29:59.743833','vincent-liu-525429-unsplash.jpg','IMAGE','image/jpeg',1600,1067,77358,'source/10/vincent-liu-525429-unsplash.jpg','preview/44/vincent-liu-525429-unsplash__preview.jpg',NULL,43),('2024-05-06 11:29:59.866959','2024-05-06 11:29:59.866959','neslihan-gunaydin-3493-unsplash.jpg','IMAGE','image/jpeg',1600,1067,152486,'source/01/neslihan-gunaydin-3493-unsplash.jpg','preview/7d/neslihan-gunaydin-3493-unsplash__preview.jpg',NULL,44),('2024-05-06 11:29:59.958468','2024-05-06 11:29:59.958468','florian-klauer-14840-unsplash.jpg','IMAGE','image/jpeg',800,1200,17149,'source/a9/florian-klauer-14840-unsplash.jpg','preview/ef/florian-klauer-14840-unsplash__preview.jpg',NULL,45),('2024-05-06 11:30:00.052025','2024-05-06 11:30:00.052025','nathan-fertig-249917-unsplash.jpg','IMAGE','image/jpeg',1600,1067,113855,'source/68/nathan-fertig-249917-unsplash.jpg','preview/69/nathan-fertig-249917-unsplash__preview.jpg',NULL,46),('2024-05-06 11:30:00.139851','2024-05-06 11:30:00.139851','paul-weaver-1120584-unsplash.jpg','IMAGE','image/jpeg',1600,1067,65612,'source/14/paul-weaver-1120584-unsplash.jpg','preview/3e/paul-weaver-1120584-unsplash__preview.jpg',NULL,47),('2024-05-06 11:30:00.242000','2024-05-06 11:30:00.242000','pierre-chatel-innocenti-483198-unsplash.jpg','IMAGE','image/jpeg',1600,1067,32036,'source/39/pierre-chatel-innocenti-483198-unsplash.jpg','preview/5f/pierre-chatel-innocenti-483198-unsplash__preview.jpg',NULL,48),('2024-05-06 11:30:00.328552','2024-05-06 11:30:00.328552','abel-y-costa-716024-unsplash.jpg','IMAGE','image/jpeg',1600,1067,103392,'source/46/abel-y-costa-716024-unsplash.jpg','preview/40/abel-y-costa-716024-unsplash__preview.jpg',NULL,49),('2024-05-06 11:30:00.432568','2024-05-06 11:30:00.432568','kari-shea-398668-unsplash.jpg','IMAGE','image/jpeg',1048,1500,181352,'source/4f/kari-shea-398668-unsplash.jpg','preview/3b/kari-shea-398668-unsplash__preview.jpg',NULL,50),('2024-05-06 11:30:00.522710','2024-05-06 11:30:00.522710','andres-jasso-220776-unsplash.jpg','IMAGE','image/jpeg',1600,1104,100927,'source/f1/andres-jasso-220776-unsplash.jpg','preview/09/andres-jasso-220776-unsplash__preview.jpg',NULL,51),('2024-05-06 11:30:00.608894','2024-05-06 11:30:00.608894','ruslan-bardash-351288-unsplash.jpg','IMAGE','image/jpeg',1067,1600,47113,'source/95/ruslan-bardash-351288-unsplash.jpg','preview/d0/ruslan-bardash-351288-unsplash__preview.jpg',NULL,52),('2024-05-06 11:30:00.717248','2024-05-06 11:30:00.717248','benjamin-voros-310026-unsplash.jpg','IMAGE','image/jpeg',1200,1600,218391,'source/7a/benjamin-voros-310026-unsplash.jpg','preview/72/benjamin-voros-310026-unsplash__preview.jpg',NULL,53),('2024-05-06 11:30:00.798864','2024-05-06 11:30:00.798864','jean-philippe-delberghe-1400011-unsplash.jpg','IMAGE','image/jpeg',1067,1600,64529,'source/94/jean-philippe-delberghe-1400011-unsplash.jpg','preview/b1/jean-philippe-delberghe-1400011-unsplash__preview.jpg',NULL,54),('2024-05-06 16:09:01.714479','2024-05-06 16:09:01.714479','derick-david-409858-unsplash__02.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/8b/derick-david-409858-unsplash__02.jpg','preview/3a/derick-david-409858-unsplash__02__preview.jpg',NULL,55),('2024-05-06 18:38:57.106144','2024-05-06 18:38:57.106144','derick-david-409858-unsplash__03.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/be/derick-david-409858-unsplash__03.jpg','preview/97/derick-david-409858-unsplash__03__preview.jpg',NULL,56),('2024-05-06 18:58:40.600909','2024-05-06 18:58:40.600909','derick-david-409858-unsplash__04.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/6b/derick-david-409858-unsplash__04.jpg','preview/5b/derick-david-409858-unsplash__04__preview.jpg',NULL,57),('2024-05-06 19:06:18.948760','2024-05-06 19:06:18.948760','derick-david-409858-unsplash__05.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/89/derick-david-409858-unsplash__05.jpg','preview/f3/derick-david-409858-unsplash__05__preview.jpg',NULL,58),('2024-05-06 19:08:07.123560','2024-05-06 19:08:07.123560','derick-david-409858-unsplash__06.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/5d/derick-david-409858-unsplash__06.jpg','preview/fa/derick-david-409858-unsplash__06__preview.jpg',NULL,59),('2024-05-06 19:24:29.967563','2024-05-06 19:24:29.967563','derick-david-409858-unsplash.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/b6/derick-david-409858-unsplash.jpg','preview/71/derick-david-409858-unsplash__preview.jpg',NULL,60),('2024-05-06 19:35:23.923311','2024-05-06 19:35:23.923311','derick-david-409858-unsplash__02.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/8b/derick-david-409858-unsplash__02.jpg','preview/3a/derick-david-409858-unsplash__02__preview.jpg',NULL,61),('2024-05-06 19:38:30.960727','2024-05-06 19:38:30.960727','derick-david-409858-unsplash__03.jpg','IMAGE','image/jpeg',1600,1200,44525,'source/be/derick-david-409858-unsplash__03.jpg','preview/97/derick-david-409858-unsplash__03__preview.jpg',NULL,62);
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_channels_channel`
--

DROP TABLE IF EXISTS `asset_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_channels_channel` (
  `assetId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`assetId`,`channelId`),
  KEY `IDX_dc4e7435f9f5e9e6436bebd33b` (`assetId`),
  KEY `IDX_16ca9151a5153f1169da5b7b7e` (`channelId`),
  CONSTRAINT `FK_16ca9151a5153f1169da5b7b7e3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_dc4e7435f9f5e9e6436bebd33bb` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_channels_channel`
--

LOCK TABLES `asset_channels_channel` WRITE;
/*!40000 ALTER TABLE `asset_channels_channel` DISABLE KEYS */;
INSERT INTO `asset_channels_channel` VALUES (60,1),(61,1),(62,1);
/*!40000 ALTER TABLE `asset_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_tags_tag`
--

DROP TABLE IF EXISTS `asset_tags_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_tags_tag` (
  `assetId` int NOT NULL,
  `tagId` int NOT NULL,
  PRIMARY KEY (`assetId`,`tagId`),
  KEY `IDX_9e412b00d4c6cee1a4b3d92071` (`assetId`),
  KEY `IDX_fb5e800171ffbe9823f2cc727f` (`tagId`),
  CONSTRAINT `FK_9e412b00d4c6cee1a4b3d920716` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fb5e800171ffbe9823f2cc727fd` FOREIGN KEY (`tagId`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_tags_tag`
--

LOCK TABLES `asset_tags_tag` WRITE;
/*!40000 ALTER TABLE `asset_tags_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_tags_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_method`
--

DROP TABLE IF EXISTS `authentication_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `identifier` varchar(255) DEFAULT NULL,
  `passwordHash` varchar(255) DEFAULT NULL,
  `verificationToken` varchar(255) DEFAULT NULL,
  `passwordResetToken` varchar(255) DEFAULT NULL,
  `identifierChangeToken` varchar(255) DEFAULT NULL,
  `pendingIdentifier` varchar(255) DEFAULT NULL,
  `strategy` varchar(255) DEFAULT NULL,
  `externalIdentifier` varchar(255) DEFAULT NULL,
  `metadata` text,
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_00cbe87bc0d4e36758d61bd31d` (`userId`),
  KEY `IDX_a23445b2c942d8dfcae15b8de2` (`type`),
  CONSTRAINT `FK_00cbe87bc0d4e36758d61bd31d6` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_method`
--

LOCK TABLES `authentication_method` WRITE;
/*!40000 ALTER TABLE `authentication_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentication_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `defaultLanguageCode` varchar(255) NOT NULL,
  `availableLanguageCodes` text,
  `defaultCurrencyCode` varchar(255) NOT NULL,
  `availableCurrencyCodes` text,
  `trackInventory` tinyint NOT NULL DEFAULT '1',
  `outOfStockThreshold` int NOT NULL DEFAULT '0',
  `pricesIncludeTax` tinyint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `sellerId` int DEFAULT NULL,
  `defaultTaxZoneId` int DEFAULT NULL,
  `defaultShippingZoneId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_06127ac6c6d913f4320759971d` (`code`),
  UNIQUE KEY `IDX_842699fce4f3470a7d06d89de8` (`token`),
  KEY `IDX_af2116c7e176b6b88dceceeb74` (`sellerId`),
  KEY `IDX_afe9f917a1c82b9e9e69f7c612` (`defaultTaxZoneId`),
  KEY `IDX_c9ca2f58d4517460435cbd8b4c` (`defaultShippingZoneId`),
  CONSTRAINT `FK_af2116c7e176b6b88dceceeb74b` FOREIGN KEY (`sellerId`) REFERENCES `seller` (`id`),
  CONSTRAINT `FK_afe9f917a1c82b9e9e69f7c6129` FOREIGN KEY (`defaultTaxZoneId`) REFERENCES `zone` (`id`),
  CONSTRAINT `FK_c9ca2f58d4517460435cbd8b4c9` FOREIGN KEY (`defaultShippingZoneId`) REFERENCES `zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES ('2024-05-06 08:46:25.843174','2024-05-06 11:29:53.000000','__default_channel__','vyzodl3me4c6fiey7gm5','','en','en','USD','USD',1,0,0,1,1,2,2);
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `isRoot` tinyint NOT NULL DEFAULT '0',
  `position` int NOT NULL,
  `isPrivate` tinyint NOT NULL DEFAULT '0',
  `filters` text NOT NULL,
  `inheritFilters` tinyint NOT NULL DEFAULT '1',
  `id` int NOT NULL AUTO_INCREMENT,
  `parentId` int DEFAULT NULL,
  `featuredAssetId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7256fef1bb42f1b38156b7449f` (`featuredAssetId`),
  KEY `FK_4257b61275144db89fa0f5dc059` (`parentId`),
  CONSTRAINT `FK_4257b61275144db89fa0f5dc059` FOREIGN KEY (`parentId`) REFERENCES `collection` (`id`),
  CONSTRAINT `FK_7256fef1bb42f1b38156b7449f5` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_asset`
--

DROP TABLE IF EXISTS `collection_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `assetId` int NOT NULL,
  `position` int NOT NULL,
  `collectionId` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `IDX_51da53b26522dc0525762d2de8` (`assetId`),
  KEY `IDX_1ed9e48dfbf74b5fcbb35d3d68` (`collectionId`),
  CONSTRAINT `FK_1ed9e48dfbf74b5fcbb35d3d686` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_51da53b26522dc0525762d2de8e` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_asset`
--

LOCK TABLES `collection_asset` WRITE;
/*!40000 ALTER TABLE `collection_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_channels_channel`
--

DROP TABLE IF EXISTS `collection_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_channels_channel` (
  `collectionId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`collectionId`,`channelId`),
  KEY `IDX_cdbf33ffb5d451916125152008` (`collectionId`),
  KEY `IDX_7216ab24077cf5cbece7857dbb` (`channelId`),
  CONSTRAINT `FK_7216ab24077cf5cbece7857dbbd` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_cdbf33ffb5d4519161251520083` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_channels_channel`
--

LOCK TABLES `collection_channels_channel` WRITE;
/*!40000 ALTER TABLE `collection_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_closure`
--

DROP TABLE IF EXISTS `collection_closure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_closure` (
  `id_ancestor` int NOT NULL,
  `id_descendant` int NOT NULL,
  PRIMARY KEY (`id_ancestor`,`id_descendant`),
  KEY `IDX_c309f8cd152bbeaea08491e0c6` (`id_ancestor`),
  KEY `IDX_457784c710f8ac9396010441f6` (`id_descendant`),
  CONSTRAINT `FK_457784c710f8ac9396010441f6c` FOREIGN KEY (`id_descendant`) REFERENCES `collection` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_c309f8cd152bbeaea08491e0c66` FOREIGN KEY (`id_ancestor`) REFERENCES `collection` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_closure`
--

LOCK TABLES `collection_closure` WRITE;
/*!40000 ALTER TABLE `collection_closure` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_closure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_product_variants_product_variant`
--

DROP TABLE IF EXISTS `collection_product_variants_product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_product_variants_product_variant` (
  `collectionId` int NOT NULL,
  `productVariantId` int NOT NULL,
  PRIMARY KEY (`collectionId`,`productVariantId`),
  KEY `IDX_6faa7b72422d9c4679e2f186ad` (`collectionId`),
  KEY `IDX_fb05887e2867365f236d7dd95e` (`productVariantId`),
  CONSTRAINT `FK_6faa7b72422d9c4679e2f186ad1` FOREIGN KEY (`collectionId`) REFERENCES `collection` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_fb05887e2867365f236d7dd95ee` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_product_variants_product_variant`
--

LOCK TABLES `collection_product_variants_product_variant` WRITE;
/*!40000 ALTER TABLE `collection_product_variants_product_variant` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_product_variants_product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_translation`
--

DROP TABLE IF EXISTS `collection_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9f9da7d94b0278ea0f7831e1fc` (`slug`),
  KEY `IDX_e329f9036210d75caa1d8f2154` (`baseId`),
  CONSTRAINT `FK_e329f9036210d75caa1d8f2154a` FOREIGN KEY (`baseId`) REFERENCES `collection` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_translation`
--

LOCK TABLES `collection_translation` WRITE;
/*!40000 ALTER TABLE `collection_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_3f62b42ed23958b120c235f74d` (`userId`),
  CONSTRAINT `FK_3f62b42ed23958b120c235f74df` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_channels_channel`
--

DROP TABLE IF EXISTS `customer_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_channels_channel` (
  `customerId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`customerId`,`channelId`),
  KEY `IDX_a842c9fe8cd4c8ff31402d172d` (`customerId`),
  KEY `IDX_dc9f69207a8867f83b0fd257e3` (`channelId`),
  CONSTRAINT `FK_a842c9fe8cd4c8ff31402d172d7` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_dc9f69207a8867f83b0fd257e30` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_channels_channel`
--

LOCK TABLES `customer_channels_channel` WRITE;
/*!40000 ALTER TABLE `customer_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_groups_customer_group`
--

DROP TABLE IF EXISTS `customer_groups_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_groups_customer_group` (
  `customerId` int NOT NULL,
  `customerGroupId` int NOT NULL,
  PRIMARY KEY (`customerId`,`customerGroupId`),
  KEY `IDX_b823a3c8bf3b78d3ed68736485` (`customerId`),
  KEY `IDX_85feea3f0e5e82133605f78db0` (`customerGroupId`),
  CONSTRAINT `FK_85feea3f0e5e82133605f78db02` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`),
  CONSTRAINT `FK_b823a3c8bf3b78d3ed68736485c` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_groups_customer_group`
--

LOCK TABLES `customer_groups_customer_group` WRITE;
/*!40000 ALTER TABLE `customer_groups_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_groups_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facet`
--

DROP TABLE IF EXISTS `facet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facet` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `isPrivate` tinyint NOT NULL DEFAULT '0',
  `code` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_0c9a5d053fdf4ebb5f0490b40f` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facet`
--

LOCK TABLES `facet` WRITE;
/*!40000 ALTER TABLE `facet` DISABLE KEYS */;
INSERT INTO `facet` VALUES ('2024-05-06 11:29:53.727174','2024-05-06 11:29:53.727174',0,'category',1),('2024-05-06 11:29:53.790271','2024-05-06 11:29:53.790271',0,'brand',2),('2024-05-06 11:29:57.320637','2024-05-06 11:29:57.320637',0,'color',3),('2024-05-06 11:29:58.942447','2024-05-06 11:29:58.942447',0,'plant-type',4);
/*!40000 ALTER TABLE `facet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facet_channels_channel`
--

DROP TABLE IF EXISTS `facet_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facet_channels_channel` (
  `facetId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`facetId`,`channelId`),
  KEY `IDX_ca796020c6d097e251e5d6d2b0` (`facetId`),
  KEY `IDX_2a8ea404d05bf682516184db7d` (`channelId`),
  CONSTRAINT `FK_2a8ea404d05bf682516184db7d3` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ca796020c6d097e251e5d6d2b02` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facet_channels_channel`
--

LOCK TABLES `facet_channels_channel` WRITE;
/*!40000 ALTER TABLE `facet_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `facet_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facet_translation`
--

DROP TABLE IF EXISTS `facet_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facet_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_eaea53f44bf9e97790d38a3d68` (`baseId`),
  CONSTRAINT `FK_eaea53f44bf9e97790d38a3d68f` FOREIGN KEY (`baseId`) REFERENCES `facet` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facet_translation`
--

LOCK TABLES `facet_translation` WRITE;
/*!40000 ALTER TABLE `facet_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `facet_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facet_value`
--

DROP TABLE IF EXISTS `facet_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facet_value` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `facetId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_d101dc2265a7341be3d94968c5` (`facetId`),
  CONSTRAINT `FK_d101dc2265a7341be3d94968c5b` FOREIGN KEY (`facetId`) REFERENCES `facet` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facet_value`
--

LOCK TABLES `facet_value` WRITE;
/*!40000 ALTER TABLE `facet_value` DISABLE KEYS */;
INSERT INTO `facet_value` VALUES ('2024-05-06 16:09:01.784118','2024-05-06 16:09:01.784118','electronics',1,1);
/*!40000 ALTER TABLE `facet_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facet_value_channels_channel`
--

DROP TABLE IF EXISTS `facet_value_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facet_value_channels_channel` (
  `facetValueId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`facetValueId`,`channelId`),
  KEY `IDX_ad690c1b05596d7f52e52ffeed` (`facetValueId`),
  KEY `IDX_e1d54c0b9db3e2eb17faaf5919` (`channelId`),
  CONSTRAINT `FK_ad690c1b05596d7f52e52ffeedd` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_e1d54c0b9db3e2eb17faaf5919c` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facet_value_channels_channel`
--

LOCK TABLES `facet_value_channels_channel` WRITE;
/*!40000 ALTER TABLE `facet_value_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `facet_value_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facet_value_translation`
--

DROP TABLE IF EXISTS `facet_value_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facet_value_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3d6e45823b65de808a66cb1423` (`baseId`),
  CONSTRAINT `FK_3d6e45823b65de808a66cb1423b` FOREIGN KEY (`baseId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facet_value_translation`
--

LOCK TABLES `facet_value_translation` WRITE;
/*!40000 ALTER TABLE `facet_value_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `facet_value_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fulfillment`
--

DROP TABLE IF EXISTS `fulfillment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fulfillment` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `state` varchar(255) NOT NULL,
  `trackingCode` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(255) NOT NULL,
  `handlerCode` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fulfillment`
--

LOCK TABLES `fulfillment` WRITE;
/*!40000 ALTER TABLE `fulfillment` DISABLE KEYS */;
/*!40000 ALTER TABLE `fulfillment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_settings`
--

DROP TABLE IF EXISTS `global_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_settings` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `availableLanguages` text NOT NULL,
  `trackInventory` tinyint NOT NULL DEFAULT '1',
  `outOfStockThreshold` int NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_settings`
--

LOCK TABLES `global_settings` WRITE;
/*!40000 ALTER TABLE `global_settings` DISABLE KEYS */;
INSERT INTO `global_settings` VALUES ('2024-05-06 19:18:45.286701','2024-05-06 19:18:45.286701','en',1,0,1);
/*!40000 ALTER TABLE `global_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_entry`
--

DROP TABLE IF EXISTS `history_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history_entry` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `type` varchar(255) NOT NULL,
  `isPublic` tinyint NOT NULL,
  `data` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `discriminator` varchar(255) NOT NULL,
  `administratorId` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_92f8c334ef06275f9586fd0183` (`administratorId`),
  KEY `IDX_43ac602f839847fdb91101f30e` (`customerId`),
  KEY `IDX_3a05127e67435b4d2332ded7c9` (`orderId`),
  KEY `IDX_f3a761f6bcfabb474b11e1e51f` (`discriminator`),
  CONSTRAINT `FK_3a05127e67435b4d2332ded7c9e` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_43ac602f839847fdb91101f30ec` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_92f8c334ef06275f9586fd01832` FOREIGN KEY (`administratorId`) REFERENCES `administrator` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_entry`
--

LOCK TABLES `history_entry` WRITE;
/*!40000 ALTER TABLE `history_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `history_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_record`
--

DROP TABLE IF EXISTS `job_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_record` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `queueName` varchar(255) NOT NULL,
  `data` text,
  `state` varchar(255) NOT NULL,
  `progress` int NOT NULL,
  `result` text,
  `error` varchar(255) DEFAULT NULL,
  `startedAt` datetime(6) DEFAULT NULL,
  `settledAt` datetime(6) DEFAULT NULL,
  `isSettled` tinyint NOT NULL,
  `retries` int NOT NULL,
  `attempts` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_record`
--

LOCK TABLES `job_record` WRITE;
/*!40000 ALTER TABLE `job_record` DISABLE KEYS */;
INSERT INTO `job_record` VALUES ('2024-05-06 19:24:29.411303','2024-05-06 19:24:29.411303','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:24:23.881Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,1),('2024-05-06 19:24:29.518228','2024-05-06 19:24:29.518228','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:24:23.881Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,2),('2024-05-06 19:24:29.614502','2024-05-06 19:24:29.614502','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:24:23.881Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,3),('2024-05-06 19:35:23.259911','2024-05-06 19:35:23.259911','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:35:18.150Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,4),('2024-05-06 19:35:23.391962','2024-05-06 19:35:23.391962','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:35:18.150Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,5),('2024-05-06 19:35:23.502088','2024-05-06 19:35:23.502088','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:35:18.150Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,6),('2024-05-06 19:38:30.406707','2024-05-06 19:38:30.406707','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:38:25.745Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,7),('2024-05-06 19:38:30.513486','2024-05-06 19:38:30.513486','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:38:25.745Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,8),('2024-05-06 19:38:30.625018','2024-05-06 19:38:30.625018','update-search-index','{\"type\":\"reindex\",\"ctx\":{\"_apiType\":\"admin\",\"_channel\":{\"token\":\"vyzodl3me4c6fiey7gm5\",\"createdAt\":\"2024-05-06T08:46:25.843Z\",\"updatedAt\":\"2024-05-06T11:29:53.000Z\",\"code\":\"__default_channel__\",\"description\":\"\",\"defaultLanguageCode\":\"en\",\"availableLanguageCodes\":[\"en\"],\"defaultCurrencyCode\":\"USD\",\"availableCurrencyCodes\":[\"USD\"],\"trackInventory\":true,\"outOfStockThreshold\":0,\"pricesIncludeTax\":false,\"id\":1,\"sellerId\":1,\"defaultShippingZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2},\"defaultTaxZone\":{\"createdAt\":\"2024-05-06T11:29:48.705Z\",\"updatedAt\":\"2024-05-06T11:29:48.705Z\",\"name\":\"Europe\",\"id\":2}},\"_session\":{\"user\":{\"id\":1,\"identifier\":\"superadmin\",\"verified\":true,\"channelPermissions\":[]},\"id\":\"__dummy_session_id__\",\"token\":\"__dummy_session_token__\",\"expires\":\"2025-05-07T01:38:25.745Z\",\"cacheExpiry\":31557600000},\"_languageCode\":\"en\",\"_currencyCode\":\"USD\",\"_isAuthorized\":true,\"_authorizedAsOwnerOnly\":false}}','PENDING',0,NULL,NULL,NULL,NULL,0,0,0,9);
/*!40000 ALTER TABLE `job_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_record_buffer`
--

DROP TABLE IF EXISTS `job_record_buffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_record_buffer` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `bufferId` varchar(255) NOT NULL,
  `job` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_record_buffer`
--

LOCK TABLES `job_record_buffer` WRITE;
/*!40000 ALTER TABLE `job_record_buffer` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_record_buffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `type` varchar(255) NOT NULL DEFAULT 'Regular',
  `code` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `orderPlacedAt` datetime DEFAULT NULL,
  `couponCodes` text NOT NULL,
  `shippingAddress` text NOT NULL,
  `billingAddress` text NOT NULL,
  `currencyCode` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `aggregateOrderId` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `taxZoneId` int DEFAULT NULL,
  `subTotal` int NOT NULL,
  `subTotalWithTax` int NOT NULL,
  `shipping` int NOT NULL DEFAULT '0',
  `shippingWithTax` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_729b3eea7ce540930dbb706949` (`code`),
  KEY `IDX_73a78d7df09541ac5eba620d18` (`aggregateOrderId`),
  KEY `IDX_124456e637cca7a415897dce65` (`customerId`),
  CONSTRAINT `FK_124456e637cca7a415897dce659` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_73a78d7df09541ac5eba620d181` FOREIGN KEY (`aggregateOrderId`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_channels_channel`
--

DROP TABLE IF EXISTS `order_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_channels_channel` (
  `orderId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`orderId`,`channelId`),
  KEY `IDX_0d8e5c204480204a60e151e485` (`orderId`),
  KEY `IDX_d0d16db872499e83b15999f8c7` (`channelId`),
  CONSTRAINT `FK_0d8e5c204480204a60e151e4853` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_d0d16db872499e83b15999f8c7a` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_channels_channel`
--

LOCK TABLES `order_channels_channel` WRITE;
/*!40000 ALTER TABLE `order_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_fulfillments_fulfillment`
--

DROP TABLE IF EXISTS `order_fulfillments_fulfillment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_fulfillments_fulfillment` (
  `orderId` int NOT NULL,
  `fulfillmentId` int NOT NULL,
  PRIMARY KEY (`orderId`,`fulfillmentId`),
  KEY `IDX_f80d84d525af2ffe974e7e8ca2` (`orderId`),
  KEY `IDX_4add5a5796e1582dec2877b289` (`fulfillmentId`),
  CONSTRAINT `FK_4add5a5796e1582dec2877b2898` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_f80d84d525af2ffe974e7e8ca29` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_fulfillments_fulfillment`
--

LOCK TABLES `order_fulfillments_fulfillment` WRITE;
/*!40000 ALTER TABLE `order_fulfillments_fulfillment` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_fulfillments_fulfillment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `quantity` int NOT NULL,
  `orderPlacedQuantity` int NOT NULL DEFAULT '0',
  `listPriceIncludesTax` tinyint NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `sellerChannelId` int DEFAULT NULL,
  `shippingLineId` int DEFAULT NULL,
  `productVariantId` int NOT NULL,
  `initialListPrice` int DEFAULT NULL,
  `listPrice` int NOT NULL,
  `taxCategoryId` int DEFAULT NULL,
  `featuredAssetId` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6901d8715f5ebadd764466f7bd` (`sellerChannelId`),
  KEY `IDX_dc9ac68b47da7b62249886affb` (`shippingLineId`),
  KEY `IDX_cbcd22193eda94668e84d33f18` (`productVariantId`),
  KEY `IDX_77be94ce9ec650446617946227` (`taxCategoryId`),
  KEY `IDX_9f065453910ea77d4be8e92618` (`featuredAssetId`),
  KEY `IDX_239cfca2a55b98b90b6bef2e44` (`orderId`),
  CONSTRAINT `FK_239cfca2a55b98b90b6bef2e44f` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6901d8715f5ebadd764466f7bde` FOREIGN KEY (`sellerChannelId`) REFERENCES `channel` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_77be94ce9ec6504466179462275` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`),
  CONSTRAINT `FK_9f065453910ea77d4be8e92618f` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`),
  CONSTRAINT `FK_cbcd22193eda94668e84d33f185` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`),
  CONSTRAINT `FK_dc9ac68b47da7b62249886affba` FOREIGN KEY (`shippingLineId`) REFERENCES `shipping_line` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line_reference`
--

DROP TABLE IF EXISTS `order_line_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_line_reference` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `quantity` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `fulfillmentId` int DEFAULT NULL,
  `modificationId` int DEFAULT NULL,
  `orderLineId` int NOT NULL,
  `refundId` int DEFAULT NULL,
  `discriminator` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7d57857922dfc7303604697dbe` (`orderLineId`),
  KEY `IDX_06b02fb482b188823e419d37bd` (`fulfillmentId`),
  KEY `IDX_22b818af8722746fb9f206068c` (`modificationId`),
  KEY `IDX_30019aa65b17fe9ee962893199` (`refundId`),
  KEY `IDX_49a8632be8cef48b076446b8b9` (`discriminator`),
  CONSTRAINT `FK_06b02fb482b188823e419d37bd4` FOREIGN KEY (`fulfillmentId`) REFERENCES `fulfillment` (`id`),
  CONSTRAINT `FK_22b818af8722746fb9f206068c2` FOREIGN KEY (`modificationId`) REFERENCES `order_modification` (`id`),
  CONSTRAINT `FK_30019aa65b17fe9ee9628931991` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`),
  CONSTRAINT `FK_7d57857922dfc7303604697dbe9` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line_reference`
--

LOCK TABLES `order_line_reference` WRITE;
/*!40000 ALTER TABLE `order_line_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_modification`
--

DROP TABLE IF EXISTS `order_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_modification` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `note` varchar(255) NOT NULL,
  `shippingAddressChange` text,
  `billingAddressChange` text,
  `id` int NOT NULL AUTO_INCREMENT,
  `priceChange` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `paymentId` int DEFAULT NULL,
  `refundId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_ad2991fa2933ed8b7f86a71633` (`paymentId`),
  UNIQUE KEY `REL_cb66b63b6e97613013795eadbd` (`refundId`),
  KEY `IDX_1df5bc14a47ef24d2e681f4559` (`orderId`),
  CONSTRAINT `FK_1df5bc14a47ef24d2e681f45598` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_ad2991fa2933ed8b7f86a716338` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`),
  CONSTRAINT `FK_cb66b63b6e97613013795eadbd5` FOREIGN KEY (`refundId`) REFERENCES `refund` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_modification`
--

LOCK TABLES `order_modification` WRITE;
/*!40000 ALTER TABLE `order_modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_promotions_promotion`
--

DROP TABLE IF EXISTS `order_promotions_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_promotions_promotion` (
  `orderId` int NOT NULL,
  `promotionId` int NOT NULL,
  PRIMARY KEY (`orderId`,`promotionId`),
  KEY `IDX_67be0e40122ab30a62a9817efe` (`orderId`),
  KEY `IDX_2c26b988769c0e3b0120bdef31` (`promotionId`),
  CONSTRAINT `FK_2c26b988769c0e3b0120bdef31b` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_67be0e40122ab30a62a9817efe0` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_promotions_promotion`
--

LOCK TABLES `order_promotions_promotion` WRITE;
/*!40000 ALTER TABLE `order_promotions_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_promotions_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `method` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `errorMessage` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `orderId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_d09d285fe1645cd2f0db811e29` (`orderId`),
  CONSTRAINT `FK_d09d285fe1645cd2f0db811e293` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint NOT NULL,
  `checker` text,
  `handler` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES ('2024-05-06 16:09:01.286813','2024-05-06 16:09:01.286813','standard-payment',1,NULL,'{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}',1),('2024-05-06 18:38:56.829958','2024-05-06 18:38:56.829958','standard-payment',1,NULL,'{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}',2),('2024-05-06 18:58:40.396498','2024-05-06 18:58:40.396498','standard-payment',1,NULL,'{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}',3),('2024-05-06 19:06:18.663995','2024-05-06 19:06:18.663995','standard-payment',1,NULL,'{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}',4),('2024-05-06 19:08:06.899740','2024-05-06 19:08:06.899740','standard-payment',1,NULL,'{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}',5),('2024-05-06 19:24:29.751760','2024-05-06 19:24:29.751760','standard-payment',1,NULL,'{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}',6),('2024-05-06 19:35:23.673889','2024-05-06 19:35:23.673889','standard-payment',1,NULL,'{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}',7),('2024-05-06 19:38:30.749683','2024-05-06 19:38:30.749683','standard-payment',1,NULL,'{\"code\":\"dummy-payment-handler\",\"args\":[{\"name\":\"automaticSettle\",\"value\":\"false\"}]}',8);
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method_channels_channel`
--

DROP TABLE IF EXISTS `payment_method_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method_channels_channel` (
  `paymentMethodId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`paymentMethodId`,`channelId`),
  KEY `IDX_5bcb569635ce5407eb3f264487` (`paymentMethodId`),
  KEY `IDX_c00e36f667d35031087b382e61` (`channelId`),
  CONSTRAINT `FK_5bcb569635ce5407eb3f264487d` FOREIGN KEY (`paymentMethodId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_c00e36f667d35031087b382e61b` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method_channels_channel`
--

LOCK TABLES `payment_method_channels_channel` WRITE;
/*!40000 ALTER TABLE `payment_method_channels_channel` DISABLE KEYS */;
INSERT INTO `payment_method_channels_channel` VALUES (6,1),(7,1),(8,1);
/*!40000 ALTER TABLE `payment_method_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method_translation`
--

DROP TABLE IF EXISTS `payment_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_66187f782a3e71b9e0f5b50b68` (`baseId`),
  CONSTRAINT `FK_66187f782a3e71b9e0f5b50b68b` FOREIGN KEY (`baseId`) REFERENCES `payment_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method_translation`
--

LOCK TABLES `payment_method_translation` WRITE;
/*!40000 ALTER TABLE `payment_method_translation` DISABLE KEYS */;
INSERT INTO `payment_method_translation` VALUES ('2024-05-06 19:24:29.743778','2024-05-06 19:24:29.000000','en','Standard Payment','',1,6),('2024-05-06 19:35:23.662714','2024-05-06 19:35:23.000000','en','Standard Payment','',2,7),('2024-05-06 19:38:30.744603','2024-05-06 19:38:30.000000','en','Standard Payment','',3,8);
/*!40000 ALTER TABLE `payment_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint NOT NULL DEFAULT '1',
  `id` int NOT NULL AUTO_INCREMENT,
  `featuredAssetId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_91a19e6613534949a4ce6e76ff` (`featuredAssetId`),
  CONSTRAINT `FK_91a19e6613534949a4ce6e76ff8` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('2024-05-06 11:29:53.823718','2024-05-06 11:29:53.823718',NULL,1,1,1),('2024-05-06 11:29:54.125039','2024-05-06 11:29:54.125039',NULL,1,2,2),('2024-05-06 11:29:54.304411','2024-05-06 11:29:54.304411',NULL,1,3,3),('2024-05-06 11:29:54.414468','2024-05-06 11:29:54.414468',NULL,1,4,4),('2024-05-06 11:29:54.501373','2024-05-06 11:29:54.501373',NULL,1,5,5),('2024-05-06 11:29:54.673163','2024-05-06 11:29:54.673163',NULL,1,6,6),('2024-05-06 11:29:54.877318','2024-05-06 11:29:54.877318',NULL,1,7,7),('2024-05-06 11:29:55.145520','2024-05-06 11:29:55.145520',NULL,1,8,8),('2024-05-06 11:29:55.412517','2024-05-06 11:29:55.412517',NULL,1,9,9),('2024-05-06 11:29:55.511989','2024-05-06 11:29:55.511989',NULL,1,10,10),('2024-05-06 11:29:55.588873','2024-05-06 11:29:55.588873',NULL,1,11,11),('2024-05-06 11:29:55.695937','2024-05-06 11:29:55.695937',NULL,1,12,12),('2024-05-06 11:29:55.788714','2024-05-06 11:29:55.788714',NULL,1,13,13),('2024-05-06 11:29:55.889435','2024-05-06 11:29:55.889435',NULL,1,14,14),('2024-05-06 11:29:55.981511','2024-05-06 11:29:55.981511',NULL,1,15,15),('2024-05-06 11:29:56.080028','2024-05-06 11:29:56.080028',NULL,1,16,16),('2024-05-06 11:29:56.177670','2024-05-06 11:29:56.177670',NULL,1,17,17),('2024-05-06 11:29:56.253026','2024-05-06 11:29:56.253026',NULL,1,18,18),('2024-05-06 11:29:56.346674','2024-05-06 11:29:56.346674',NULL,1,19,19),('2024-05-06 11:29:56.436407','2024-05-06 11:29:56.436407',NULL,1,20,20),('2024-05-06 11:29:56.551453','2024-05-06 11:29:56.551453',NULL,1,21,21),('2024-05-06 11:29:56.653426','2024-05-06 11:29:56.653426',NULL,1,22,22),('2024-05-06 11:29:56.738142','2024-05-06 11:29:56.738142',NULL,1,23,23),('2024-05-06 11:29:56.827602','2024-05-06 11:29:56.827602',NULL,1,24,24),('2024-05-06 11:29:56.921681','2024-05-06 11:29:56.921681',NULL,1,25,25),('2024-05-06 11:29:57.014098','2024-05-06 11:29:57.014098',NULL,1,26,26),('2024-05-06 11:29:57.121752','2024-05-06 11:29:57.121752',NULL,1,27,27),('2024-05-06 11:29:57.216516','2024-05-06 11:29:57.216516',NULL,1,28,28),('2024-05-06 11:29:57.365255','2024-05-06 11:29:57.365255',NULL,1,29,29),('2024-05-06 11:29:57.621529','2024-05-06 11:29:57.621529',NULL,1,30,30),('2024-05-06 11:29:57.886258','2024-05-06 11:29:57.886258',NULL,1,31,31),('2024-05-06 11:29:58.116915','2024-05-06 11:29:58.116915',NULL,1,32,32),('2024-05-06 11:29:58.363136','2024-05-06 11:29:58.363136',NULL,1,33,33),('2024-05-06 11:29:58.629120','2024-05-06 11:29:58.629120',NULL,1,34,34),('2024-05-06 11:29:58.977585','2024-05-06 11:29:58.977585',NULL,1,35,35),('2024-05-06 11:29:59.075007','2024-05-06 11:29:59.075007',NULL,1,36,36),('2024-05-06 11:29:59.183446','2024-05-06 11:29:59.183446',NULL,1,37,37),('2024-05-06 11:29:59.279884','2024-05-06 11:29:59.279884',NULL,1,38,38),('2024-05-06 11:29:59.382267','2024-05-06 11:29:59.382267',NULL,1,39,39),('2024-05-06 11:29:59.485018','2024-05-06 11:29:59.485018',NULL,1,40,40),('2024-05-06 11:29:59.580536','2024-05-06 11:29:59.580536',NULL,1,41,41),('2024-05-06 11:29:59.667352','2024-05-06 11:29:59.667352',NULL,1,42,42),('2024-05-06 11:29:59.786262','2024-05-06 11:29:59.786262',NULL,1,43,43),('2024-05-06 11:29:59.885017','2024-05-06 11:29:59.885017',NULL,1,44,44),('2024-05-06 11:29:59.971887','2024-05-06 11:29:59.971887',NULL,1,45,45),('2024-05-06 11:30:00.062509','2024-05-06 11:30:00.062509',NULL,1,46,46),('2024-05-06 11:30:00.167553','2024-05-06 11:30:00.167553',NULL,1,47,47),('2024-05-06 11:30:00.252325','2024-05-06 11:30:00.252325',NULL,1,48,48),('2024-05-06 11:30:00.357315','2024-05-06 11:30:00.357315',NULL,1,49,49),('2024-05-06 11:30:00.443930','2024-05-06 11:30:00.443930',NULL,1,50,50),('2024-05-06 11:30:00.533448','2024-05-06 11:30:00.533448',NULL,1,51,51),('2024-05-06 11:30:00.624166','2024-05-06 11:30:00.624166',NULL,1,52,52),('2024-05-06 11:30:00.729361','2024-05-06 11:30:00.729361',NULL,1,53,53),('2024-05-06 11:30:00.809468','2024-05-06 11:30:00.809468',NULL,1,54,54);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_asset`
--

DROP TABLE IF EXISTS `product_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `assetId` int NOT NULL,
  `position` int NOT NULL,
  `productId` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `IDX_5888ac17b317b93378494a1062` (`assetId`),
  KEY `IDX_0d1294f5c22a56da7845ebab72` (`productId`),
  CONSTRAINT `FK_0d1294f5c22a56da7845ebab72c` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5888ac17b317b93378494a10620` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_asset`
--

LOCK TABLES `product_asset` WRITE;
/*!40000 ALTER TABLE `product_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_channels_channel`
--

DROP TABLE IF EXISTS `product_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_channels_channel` (
  `productId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`productId`,`channelId`),
  KEY `IDX_26d12be3b5fec6c4adb1d79284` (`productId`),
  KEY `IDX_a51dfbd87c330c075c39832b6e` (`channelId`),
  CONSTRAINT `FK_26d12be3b5fec6c4adb1d792844` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_a51dfbd87c330c075c39832b6e7` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_channels_channel`
--

LOCK TABLES `product_channels_channel` WRITE;
/*!40000 ALTER TABLE `product_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_facet_values_facet_value`
--

DROP TABLE IF EXISTS `product_facet_values_facet_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_facet_values_facet_value` (
  `productId` int NOT NULL,
  `facetValueId` int NOT NULL,
  PRIMARY KEY (`productId`,`facetValueId`),
  KEY `IDX_6a0558e650d75ae639ff38e413` (`productId`),
  KEY `IDX_06e7d73673ee630e8ec50d0b29` (`facetValueId`),
  CONSTRAINT `FK_06e7d73673ee630e8ec50d0b29f` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_6a0558e650d75ae639ff38e413a` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_facet_values_facet_value`
--

LOCK TABLES `product_facet_values_facet_value` WRITE;
/*!40000 ALTER TABLE `product_facet_values_facet_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_facet_values_facet_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option`
--

DROP TABLE IF EXISTS `product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_option` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `groupId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_a6debf9198e2fbfa006aa10d71` (`groupId`),
  CONSTRAINT `FK_a6debf9198e2fbfa006aa10d710` FOREIGN KEY (`groupId`) REFERENCES `product_option_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option`
--

LOCK TABLES `product_option` WRITE;
/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_group`
--

DROP TABLE IF EXISTS `product_option_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_option_group` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_a6e91739227bf4d442f23c52c7` (`productId`),
  CONSTRAINT `FK_a6e91739227bf4d442f23c52c75` FOREIGN KEY (`productId`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_group`
--

LOCK TABLES `product_option_group` WRITE;
/*!40000 ALTER TABLE `product_option_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_group_translation`
--

DROP TABLE IF EXISTS `product_option_group_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_option_group_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_93751abc1451972c02e033b766` (`baseId`),
  CONSTRAINT `FK_93751abc1451972c02e033b766c` FOREIGN KEY (`baseId`) REFERENCES `product_option_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_group_translation`
--

LOCK TABLES `product_option_group_translation` WRITE;
/*!40000 ALTER TABLE `product_option_group_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option_group_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_option_translation`
--

DROP TABLE IF EXISTS `product_option_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_option_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_a79a443c1f7841f3851767faa6` (`baseId`),
  CONSTRAINT `FK_a79a443c1f7841f3851767faa6d` FOREIGN KEY (`baseId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_option_translation`
--

LOCK TABLES `product_option_translation` WRITE;
/*!40000 ALTER TABLE `product_option_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_option_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_translation`
--

DROP TABLE IF EXISTS `product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_f4a2ec16ba86d277b6faa0b67b` (`slug`),
  KEY `IDX_7dbc75cb4e8b002620c4dbfdac` (`baseId`),
  CONSTRAINT `FK_7dbc75cb4e8b002620c4dbfdac5` FOREIGN KEY (`baseId`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_translation`
--

LOCK TABLES `product_translation` WRITE;
/*!40000 ALTER TABLE `product_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant`
--

DROP TABLE IF EXISTS `product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `enabled` tinyint NOT NULL DEFAULT '1',
  `sku` varchar(255) NOT NULL,
  `outOfStockThreshold` int NOT NULL DEFAULT '0',
  `useGlobalOutOfStockThreshold` tinyint NOT NULL DEFAULT '1',
  `trackInventory` varchar(255) NOT NULL DEFAULT 'INHERIT',
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `featuredAssetId` int DEFAULT NULL,
  `taxCategoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_0e6f516053cf982b537836e21c` (`featuredAssetId`),
  KEY `IDX_e38dca0d82fd64c7cf8aac8b8e` (`taxCategoryId`),
  KEY `IDX_6e420052844edf3a5506d863ce` (`productId`),
  CONSTRAINT `FK_0e6f516053cf982b537836e21cf` FOREIGN KEY (`featuredAssetId`) REFERENCES `asset` (`id`) ON DELETE SET NULL,
  CONSTRAINT `FK_6e420052844edf3a5506d863ce6` FOREIGN KEY (`productId`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_e38dca0d82fd64c7cf8aac8b8ef` FOREIGN KEY (`taxCategoryId`) REFERENCES `tax_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant`
--

LOCK TABLES `product_variant` WRITE;
/*!40000 ALTER TABLE `product_variant` DISABLE KEYS */;
INSERT INTO `product_variant` VALUES ('2024-05-06 11:29:53.933907','2024-05-06 11:29:53.933907',NULL,1,'L2201308',0,1,'INHERIT',1,1,NULL,1),('2024-05-06 11:29:53.983573','2024-05-06 11:29:53.983573',NULL,1,'L2201508',0,1,'INHERIT',2,1,NULL,1),('2024-05-06 11:29:54.017234','2024-05-06 11:29:54.017234',NULL,1,'L2201316',0,1,'INHERIT',3,1,NULL,1),('2024-05-06 11:29:54.050748','2024-05-06 11:29:54.050748',NULL,1,'L2201516',0,1,'INHERIT',4,1,NULL,1),('2024-05-06 11:29:54.182902','2024-05-06 11:29:54.182902',NULL,1,'TBL200032',0,1,'INHERIT',5,2,NULL,1),('2024-05-06 11:29:54.216846','2024-05-06 11:29:54.216846',NULL,1,'TBL200128',0,1,'INHERIT',6,2,NULL,1),('2024-05-06 11:29:54.320213','2024-05-06 11:29:54.320213',NULL,1,'834444',0,1,'INHERIT',7,3,NULL,1),('2024-05-06 11:29:54.432793','2024-05-06 11:29:54.432793',NULL,1,'LU32J590UQUXEN',0,1,'INHERIT',8,4,NULL,1),('2024-05-06 11:29:54.552706','2024-05-06 11:29:54.552706',NULL,1,'C24F390',0,1,'INHERIT',9,5,NULL,1),('2024-05-06 11:29:54.591136','2024-05-06 11:29:54.591136',NULL,1,'C27F390',0,1,'INHERIT',10,5,NULL,1),('2024-05-06 11:29:54.734798','2024-05-06 11:29:54.734798',NULL,1,'CMK32GX4M2AC04',0,1,'INHERIT',11,6,NULL,1),('2024-05-06 11:29:54.767249','2024-05-06 11:29:54.767249',NULL,1,'CMK32GX4M2AC08',0,1,'INHERIT',12,6,NULL,1),('2024-05-06 11:29:54.797888','2024-05-06 11:29:54.797888',NULL,1,'CMK32GX4M2AC16',0,1,'INHERIT',13,6,NULL,1),('2024-05-06 11:29:54.960843','2024-05-06 11:29:54.960843',NULL,1,'CGS480VR1063',0,1,'INHERIT',14,7,NULL,1),('2024-05-06 11:29:54.991753','2024-05-06 11:29:54.991753',NULL,1,'CGS480VR1064',0,1,'INHERIT',15,7,NULL,1),('2024-05-06 11:29:55.023507','2024-05-06 11:29:55.023507',NULL,1,'CGS480VR1065',0,1,'INHERIT',16,7,NULL,1),('2024-05-06 11:29:55.061124','2024-05-06 11:29:55.061124',NULL,1,'CGS480VR1066',0,1,'INHERIT',17,7,NULL,1),('2024-05-06 11:29:55.220737','2024-05-06 11:29:55.220737',NULL,1,'IHD455T1',0,1,'INHERIT',18,8,NULL,1),('2024-05-06 11:29:55.254935','2024-05-06 11:29:55.254935',NULL,1,'IHD455T2',0,1,'INHERIT',19,8,NULL,1),('2024-05-06 11:29:55.285455','2024-05-06 11:29:55.285455',NULL,1,'IHD455T3',0,1,'INHERIT',20,8,NULL,1),('2024-05-06 11:29:55.315389','2024-05-06 11:29:55.315389',NULL,1,'IHD455T4',0,1,'INHERIT',21,8,NULL,1),('2024-05-06 11:29:55.347290','2024-05-06 11:29:55.347290',NULL,1,'IHD455T6',0,1,'INHERIT',22,8,NULL,1),('2024-05-06 11:29:55.438557','2024-05-06 11:29:55.438557',NULL,1,'A4TKLA45535',0,1,'INHERIT',23,9,NULL,1),('2024-05-06 11:29:55.528359','2024-05-06 11:29:55.528359',NULL,1,'A23334x30',0,1,'INHERIT',24,10,NULL,1),('2024-05-06 11:29:55.603361','2024-05-06 11:29:55.603361',NULL,1,'USBCIN01.5MI',0,1,'INHERIT',25,11,NULL,1),('2024-05-06 11:29:55.712005','2024-05-06 11:29:55.712005',NULL,1,'IC22MWDD',0,1,'INHERIT',26,12,NULL,1),('2024-05-06 11:29:55.807117','2024-05-06 11:29:55.807117',NULL,1,'B0012UUP02',0,1,'INHERIT',27,13,NULL,1),('2024-05-06 11:29:55.907061','2024-05-06 11:29:55.907061',NULL,1,'B00AFC9099',0,1,'INHERIT',28,14,NULL,1),('2024-05-06 11:29:56.001274','2024-05-06 11:29:56.001274',NULL,1,'B00XI87KV8',0,1,'INHERIT',29,15,NULL,1),('2024-05-06 11:29:56.093938','2024-05-06 11:29:56.093938',NULL,1,'B07K1330LL',0,1,'INHERIT',30,16,NULL,1),('2024-05-06 11:29:56.192094','2024-05-06 11:29:56.192094',NULL,1,'B07D990021',0,1,'INHERIT',31,17,NULL,1),('2024-05-06 11:29:56.277293','2024-05-06 11:29:56.277293',NULL,1,'B07D33B334',0,1,'INHERIT',32,18,NULL,1),('2024-05-06 11:29:56.362301','2024-05-06 11:29:56.362301',NULL,1,'B07D75V44S',0,1,'INHERIT',33,19,NULL,1),('2024-05-06 11:29:56.451712','2024-05-06 11:29:56.451712',NULL,1,'B07D78JTLR',0,1,'INHERIT',34,20,NULL,1),('2024-05-06 11:29:56.569145','2024-05-06 11:29:56.569145',NULL,1,'RB000844334',0,1,'INHERIT',35,21,NULL,1),('2024-05-06 11:29:56.667845','2024-05-06 11:29:56.667845',NULL,1,'B07CNGXVXT',0,1,'INHERIT',36,22,NULL,1),('2024-05-06 11:29:56.758705','2024-05-06 11:29:56.758705',NULL,1,'B000ZYLPPU',0,1,'INHERIT',37,23,NULL,1),('2024-05-06 11:29:56.843127','2024-05-06 11:29:56.843127',NULL,1,'2000023510',0,1,'INHERIT',38,24,NULL,1),('2024-05-06 11:29:56.936040','2024-05-06 11:29:56.936040',NULL,1,'799872520',0,1,'INHERIT',39,25,NULL,1),('2024-05-06 11:29:57.036516','2024-05-06 11:29:57.036516',NULL,1,'SC3137-056',0,1,'INHERIT',40,26,NULL,1),('2024-05-06 11:29:57.140561','2024-05-06 11:29:57.140561',NULL,1,'WRT11752P',0,1,'INHERIT',41,27,NULL,1),('2024-05-06 11:29:57.232180','2024-05-06 11:29:57.232180',NULL,1,'WTB1418XB06',0,1,'INHERIT',42,28,NULL,1),('2024-05-06 11:29:57.437728','2024-05-06 11:29:57.437728',NULL,1,'RS0040',0,1,'INHERIT',43,29,NULL,1),('2024-05-06 11:29:57.471476','2024-05-06 11:29:57.471476',NULL,1,'RS0042',0,1,'INHERIT',44,29,NULL,1),('2024-05-06 11:29:57.502226','2024-05-06 11:29:57.502226',NULL,1,'RS0044',0,1,'INHERIT',45,29,NULL,1),('2024-05-06 11:29:57.532434','2024-05-06 11:29:57.532434',NULL,1,'RS0046',0,1,'INHERIT',46,29,NULL,1),('2024-05-06 11:29:57.694190','2024-05-06 11:29:57.694190',NULL,1,'AR4561-40',0,1,'INHERIT',47,30,NULL,1),('2024-05-06 11:29:57.725400','2024-05-06 11:29:57.725400',NULL,1,'AR4561-42',0,1,'INHERIT',48,30,NULL,1),('2024-05-06 11:29:57.761381','2024-05-06 11:29:57.761381',NULL,1,'AR4561-44',0,1,'INHERIT',49,30,NULL,1),('2024-05-06 11:29:57.793189','2024-05-06 11:29:57.793189',NULL,1,'AR4561-46',0,1,'INHERIT',50,30,NULL,1),('2024-05-06 11:29:57.957855','2024-05-06 11:29:57.957855',NULL,1,'AO7893-40',0,1,'INHERIT',51,31,NULL,1),('2024-05-06 11:29:57.990999','2024-05-06 11:29:57.990999',NULL,1,'AO7893-42',0,1,'INHERIT',52,31,NULL,1),('2024-05-06 11:29:58.024643','2024-05-06 11:29:58.024643',NULL,1,'AO7893-44',0,1,'INHERIT',53,31,NULL,1),('2024-05-06 11:29:58.054832','2024-05-06 11:29:58.054832',NULL,1,'AO7893-46',0,1,'INHERIT',54,31,NULL,1),('2024-05-06 11:29:58.198008','2024-05-06 11:29:58.198008',NULL,1,'F3578640',0,1,'INHERIT',55,32,NULL,1),('2024-05-06 11:29:58.229911','2024-05-06 11:29:58.229911',NULL,1,'F3578642',0,1,'INHERIT',56,32,NULL,1),('2024-05-06 11:29:58.259528','2024-05-06 11:29:58.259528',NULL,1,'F3578644',0,1,'INHERIT',57,32,NULL,1),('2024-05-06 11:29:58.293695','2024-05-06 11:29:58.293695',NULL,1,'F3578646',0,1,'INHERIT',58,32,NULL,1),('2024-05-06 11:29:58.429112','2024-05-06 11:29:58.429112',NULL,1,'F3633340',0,1,'INHERIT',59,33,NULL,1),('2024-05-06 11:29:58.472568','2024-05-06 11:29:58.472568',NULL,1,'F3633342',0,1,'INHERIT',60,33,NULL,1),('2024-05-06 11:29:58.507422','2024-05-06 11:29:58.507422',NULL,1,'F3633344',0,1,'INHERIT',61,33,NULL,1),('2024-05-06 11:29:58.540815','2024-05-06 11:29:58.540815',NULL,1,'F3633346',0,1,'INHERIT',62,33,NULL,1),('2024-05-06 11:29:58.715724','2024-05-06 11:29:58.715724',NULL,1,'CAS23340',0,1,'INHERIT',63,34,NULL,1),('2024-05-06 11:29:58.752958','2024-05-06 11:29:58.752958',NULL,1,'CAS23342',0,1,'INHERIT',64,34,NULL,1),('2024-05-06 11:29:58.788715','2024-05-06 11:29:58.788715',NULL,1,'CAS23344',0,1,'INHERIT',65,34,NULL,1),('2024-05-06 11:29:58.822475','2024-05-06 11:29:58.822475',NULL,1,'CAS23346',0,1,'INHERIT',66,34,NULL,1),('2024-05-06 11:29:58.993249','2024-05-06 11:29:58.993249',NULL,1,'SC011001',0,1,'INHERIT',67,35,NULL,1),('2024-05-06 11:29:59.092751','2024-05-06 11:29:59.092751',NULL,1,'A58477',0,1,'INHERIT',68,36,NULL,1),('2024-05-06 11:29:59.201047','2024-05-06 11:29:59.201047',NULL,1,'A44223',0,1,'INHERIT',69,37,NULL,1),('2024-05-06 11:29:59.297051','2024-05-06 11:29:59.297051',NULL,1,'A44352',0,1,'INHERIT',70,38,NULL,1),('2024-05-06 11:29:59.399713','2024-05-06 11:29:59.399713',NULL,1,'A04851',0,1,'INHERIT',71,39,NULL,1),('2024-05-06 11:29:59.501948','2024-05-06 11:29:59.501948',NULL,1,'A08593',0,1,'INHERIT',72,40,NULL,1),('2024-05-06 11:29:59.596744','2024-05-06 11:29:59.596744',NULL,1,'ROR00221',0,1,'INHERIT',73,41,NULL,1),('2024-05-06 11:29:59.682441','2024-05-06 11:29:59.682441',NULL,1,'B01MXFLUSV',0,1,'INHERIT',74,42,NULL,1),('2024-05-06 11:29:59.802684','2024-05-06 11:29:59.802684',NULL,1,'GL34LLW11',0,1,'INHERIT',75,43,NULL,1),('2024-05-06 11:29:59.906062','2024-05-06 11:29:59.906062',NULL,1,'4058NB/09',0,1,'INHERIT',76,44,NULL,1),('2024-05-06 11:29:59.989335','2024-05-06 11:29:59.989335',NULL,1,'34-BC82444',0,1,'INHERIT',77,45,NULL,1),('2024-05-06 11:30:00.080033','2024-05-06 11:30:00.080033',NULL,1,'CH00001-12',0,1,'INHERIT',78,46,NULL,1),('2024-05-06 11:30:00.185578','2024-05-06 11:30:00.185578',NULL,1,'CH00001-02',0,1,'INHERIT',79,47,NULL,1),('2024-05-06 11:30:00.269500','2024-05-06 11:30:00.269500',NULL,1,'B45809LSW',0,1,'INHERIT',80,48,NULL,1),('2024-05-06 11:30:00.374212','2024-05-06 11:30:00.374212',NULL,1,'304.096.29',0,1,'INHERIT',81,49,NULL,1),('2024-05-06 11:30:00.462000','2024-05-06 11:30:00.462000',NULL,1,'404.068.14',0,1,'INHERIT',82,50,NULL,1),('2024-05-06 11:30:00.551738','2024-05-06 11:30:00.551738',NULL,1,'003.600.02',0,1,'INHERIT',83,51,NULL,1),('2024-05-06 11:30:00.642798','2024-05-06 11:30:00.642798',NULL,1,'202.493.30',0,1,'INHERIT',84,52,NULL,1),('2024-05-06 11:30:00.748524','2024-05-06 11:30:00.748524',NULL,1,'404.290.14',0,1,'INHERIT',85,53,NULL,1),('2024-05-06 11:30:00.889102','2024-05-06 11:30:00.889102',NULL,1,'404.038.96',0,1,'INHERIT',86,54,NULL,1),('2024-05-06 11:30:00.936388','2024-05-06 11:30:00.936388',NULL,1,'404.038.96',0,1,'INHERIT',87,54,NULL,1),('2024-05-06 11:30:00.965235','2024-05-06 11:30:00.965235',NULL,1,'404.038.96',0,1,'INHERIT',88,54,NULL,1);
/*!40000 ALTER TABLE `product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_asset`
--

DROP TABLE IF EXISTS `product_variant_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_asset` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `assetId` int NOT NULL,
  `position` int NOT NULL,
  `productVariantId` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `IDX_10b5a2e3dee0e30b1e26c32f5c` (`assetId`),
  KEY `IDX_fa21412afac15a2304f3eb35fe` (`productVariantId`),
  CONSTRAINT `FK_10b5a2e3dee0e30b1e26c32f5c7` FOREIGN KEY (`assetId`) REFERENCES `asset` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_fa21412afac15a2304f3eb35feb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_asset`
--

LOCK TABLES `product_variant_asset` WRITE;
/*!40000 ALTER TABLE `product_variant_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variant_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_channels_channel`
--

DROP TABLE IF EXISTS `product_variant_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_channels_channel` (
  `productVariantId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`productVariantId`,`channelId`),
  KEY `IDX_beeb2b3cd800e589f2213ae99d` (`productVariantId`),
  KEY `IDX_d194bff171b62357688a5d0f55` (`channelId`),
  CONSTRAINT `FK_beeb2b3cd800e589f2213ae99d6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_d194bff171b62357688a5d0f559` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_channels_channel`
--

LOCK TABLES `product_variant_channels_channel` WRITE;
/*!40000 ALTER TABLE `product_variant_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variant_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_facet_values_facet_value`
--

DROP TABLE IF EXISTS `product_variant_facet_values_facet_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_facet_values_facet_value` (
  `productVariantId` int NOT NULL,
  `facetValueId` int NOT NULL,
  PRIMARY KEY (`productVariantId`,`facetValueId`),
  KEY `IDX_69567bc225b6bbbd732d6c5455` (`productVariantId`),
  KEY `IDX_0d641b761ed1dce4ef3cd33d55` (`facetValueId`),
  CONSTRAINT `FK_0d641b761ed1dce4ef3cd33d559` FOREIGN KEY (`facetValueId`) REFERENCES `facet_value` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_69567bc225b6bbbd732d6c5455b` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_facet_values_facet_value`
--

LOCK TABLES `product_variant_facet_values_facet_value` WRITE;
/*!40000 ALTER TABLE `product_variant_facet_values_facet_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variant_facet_values_facet_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_options_product_option`
--

DROP TABLE IF EXISTS `product_variant_options_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_options_product_option` (
  `productVariantId` int NOT NULL,
  `productOptionId` int NOT NULL,
  PRIMARY KEY (`productVariantId`,`productOptionId`),
  KEY `IDX_526f0131260eec308a3bd2b61b` (`productVariantId`),
  KEY `IDX_e96a71affe63c97f7fa2f076da` (`productOptionId`),
  CONSTRAINT `FK_526f0131260eec308a3bd2b61b6` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_e96a71affe63c97f7fa2f076dac` FOREIGN KEY (`productOptionId`) REFERENCES `product_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_options_product_option`
--

LOCK TABLES `product_variant_options_product_option` WRITE;
/*!40000 ALTER TABLE `product_variant_options_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variant_options_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_price`
--

DROP TABLE IF EXISTS `product_variant_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_price` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `currencyCode` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `channelId` int DEFAULT NULL,
  `price` int NOT NULL,
  `variantId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_e6126cd268aea6e9b31d89af9a` (`variantId`),
  CONSTRAINT `FK_e6126cd268aea6e9b31d89af9ab` FOREIGN KEY (`variantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_price`
--

LOCK TABLES `product_variant_price` WRITE;
/*!40000 ALTER TABLE `product_variant_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variant_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant_translation`
--

DROP TABLE IF EXISTS `product_variant_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_420f4d6fb75d38b9dca79bc43b` (`baseId`),
  CONSTRAINT `FK_420f4d6fb75d38b9dca79bc43b4` FOREIGN KEY (`baseId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant_translation`
--

LOCK TABLES `product_variant_translation` WRITE;
/*!40000 ALTER TABLE `product_variant_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variant_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `startsAt` datetime DEFAULT NULL,
  `endsAt` datetime DEFAULT NULL,
  `couponCode` varchar(255) DEFAULT NULL,
  `perCustomerUsageLimit` int DEFAULT NULL,
  `usageLimit` int DEFAULT NULL,
  `enabled` tinyint NOT NULL,
  `conditions` text NOT NULL,
  `actions` text NOT NULL,
  `priorityScore` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_channels_channel`
--

DROP TABLE IF EXISTS `promotion_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_channels_channel` (
  `promotionId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`promotionId`,`channelId`),
  KEY `IDX_6d9e2c39ab12391aaa374bcdaa` (`promotionId`),
  KEY `IDX_0eaaf0f4b6c69afde1e88ffb52` (`channelId`),
  CONSTRAINT `FK_0eaaf0f4b6c69afde1e88ffb52d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_6d9e2c39ab12391aaa374bcdaa4` FOREIGN KEY (`promotionId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_channels_channel`
--

LOCK TABLES `promotion_channels_channel` WRITE;
/*!40000 ALTER TABLE `promotion_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_translation`
--

DROP TABLE IF EXISTS `promotion_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1cc009e9ab2263a35544064561` (`baseId`),
  CONSTRAINT `FK_1cc009e9ab2263a35544064561b` FOREIGN KEY (`baseId`) REFERENCES `promotion` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_translation`
--

LOCK TABLES `promotion_translation` WRITE;
/*!40000 ALTER TABLE `promotion_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund`
--

DROP TABLE IF EXISTS `refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `method` varchar(255) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `metadata` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `paymentId` int NOT NULL,
  `items` int NOT NULL,
  `shipping` int NOT NULL,
  `adjustment` int NOT NULL,
  `total` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1c6932a756108788a361e7d440` (`paymentId`),
  CONSTRAINT `FK_1c6932a756108788a361e7d4404` FOREIGN KEY (`paymentId`) REFERENCES `payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund`
--

LOCK TABLES `refund` WRITE;
/*!40000 ALTER TABLE `refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `parentId` int DEFAULT NULL,
  `discriminator` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ed0c8098ce6809925a437f42ae` (`parentId`),
  CONSTRAINT `FK_ed0c8098ce6809925a437f42aec` FOREIGN KEY (`parentId`) REFERENCES `region` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=1985 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES ('2024-05-06 16:08:56.520207','2024-05-06 16:08:56.520207','AF','country',1,1,NULL,'Country'),('2024-05-06 16:08:56.549588','2024-05-06 16:08:56.549588','AX','country',1,2,NULL,'Country'),('2024-05-06 16:08:56.571154','2024-05-06 16:08:56.571154','AL','country',1,3,NULL,'Country'),('2024-05-06 16:08:56.599477','2024-05-06 16:08:56.599477','DZ','country',1,4,NULL,'Country'),('2024-05-06 16:08:56.621118','2024-05-06 16:08:56.621118','AS','country',1,5,NULL,'Country'),('2024-05-06 16:08:56.640842','2024-05-06 16:08:56.640842','AD','country',1,6,NULL,'Country'),('2024-05-06 16:08:56.659807','2024-05-06 16:08:56.659807','AO','country',1,7,NULL,'Country'),('2024-05-06 16:08:56.682733','2024-05-06 16:08:56.682733','AI','country',1,8,NULL,'Country'),('2024-05-06 16:08:56.703516','2024-05-06 16:08:56.703516','AG','country',1,9,NULL,'Country'),('2024-05-06 16:08:56.719612','2024-05-06 16:08:56.719612','AR','country',1,10,NULL,'Country'),('2024-05-06 16:08:56.736786','2024-05-06 16:08:56.736786','AM','country',1,11,NULL,'Country'),('2024-05-06 16:08:56.751445','2024-05-06 16:08:56.751445','AW','country',1,12,NULL,'Country'),('2024-05-06 16:08:56.778811','2024-05-06 16:08:56.778811','AU','country',1,13,NULL,'Country'),('2024-05-06 16:08:56.793057','2024-05-06 16:08:56.793057','AT','country',1,14,NULL,'Country'),('2024-05-06 16:08:56.813504','2024-05-06 16:08:56.813504','AZ','country',1,15,NULL,'Country'),('2024-05-06 16:08:56.833318','2024-05-06 16:08:56.833318','BS','country',1,16,NULL,'Country'),('2024-05-06 16:08:56.847905','2024-05-06 16:08:56.847905','BH','country',1,17,NULL,'Country'),('2024-05-06 16:08:56.874148','2024-05-06 16:08:56.874148','BD','country',1,18,NULL,'Country'),('2024-05-06 16:08:56.887377','2024-05-06 16:08:56.887377','BB','country',1,19,NULL,'Country'),('2024-05-06 16:08:56.907788','2024-05-06 16:08:56.907788','BY','country',1,20,NULL,'Country'),('2024-05-06 16:08:56.927819','2024-05-06 16:08:56.927819','BE','country',1,21,NULL,'Country'),('2024-05-06 16:08:56.948551','2024-05-06 16:08:56.948551','BZ','country',1,22,NULL,'Country'),('2024-05-06 16:08:56.962778','2024-05-06 16:08:56.962778','BJ','country',1,23,NULL,'Country'),('2024-05-06 16:08:56.976804','2024-05-06 16:08:56.976804','BM','country',1,24,NULL,'Country'),('2024-05-06 16:08:56.992354','2024-05-06 16:08:56.992354','BT','country',1,25,NULL,'Country'),('2024-05-06 16:08:57.006272','2024-05-06 16:08:57.006272','BO','country',1,26,NULL,'Country'),('2024-05-06 16:08:57.019161','2024-05-06 16:08:57.019161','BQ','country',1,27,NULL,'Country'),('2024-05-06 16:08:57.031206','2024-05-06 16:08:57.031206','BA','country',1,28,NULL,'Country'),('2024-05-06 16:08:57.048074','2024-05-06 16:08:57.048074','BW','country',1,29,NULL,'Country'),('2024-05-06 16:08:57.061307','2024-05-06 16:08:57.061307','BV','country',1,30,NULL,'Country'),('2024-05-06 16:08:57.080695','2024-05-06 16:08:57.080695','BR','country',1,31,NULL,'Country'),('2024-05-06 16:08:57.097549','2024-05-06 16:08:57.097549','IO','country',1,32,NULL,'Country'),('2024-05-06 16:08:57.112952','2024-05-06 16:08:57.112952','BN','country',1,33,NULL,'Country'),('2024-05-06 16:08:57.134196','2024-05-06 16:08:57.134196','BG','country',1,34,NULL,'Country'),('2024-05-06 16:08:57.155552','2024-05-06 16:08:57.155552','BF','country',1,35,NULL,'Country'),('2024-05-06 16:08:57.168997','2024-05-06 16:08:57.168997','BI','country',1,36,NULL,'Country'),('2024-05-06 16:08:57.183872','2024-05-06 16:08:57.183872','CV','country',1,37,NULL,'Country'),('2024-05-06 16:08:57.197962','2024-05-06 16:08:57.197962','KH','country',1,38,NULL,'Country'),('2024-05-06 16:08:57.211760','2024-05-06 16:08:57.211760','CM','country',1,39,NULL,'Country'),('2024-05-06 16:08:57.224781','2024-05-06 16:08:57.224781','CA','country',1,40,NULL,'Country'),('2024-05-06 16:08:57.242286','2024-05-06 16:08:57.242286','KY','country',1,41,NULL,'Country'),('2024-05-06 16:08:57.264879','2024-05-06 16:08:57.264879','CF','country',1,42,NULL,'Country'),('2024-05-06 16:08:57.286313','2024-05-06 16:08:57.286313','TD','country',1,43,NULL,'Country'),('2024-05-06 16:08:57.307062','2024-05-06 16:08:57.307062','CL','country',1,44,NULL,'Country'),('2024-05-06 16:08:57.321156','2024-05-06 16:08:57.321156','CN','country',1,45,NULL,'Country'),('2024-05-06 16:08:57.352856','2024-05-06 16:08:57.352856','CX','country',1,46,NULL,'Country'),('2024-05-06 16:08:57.373656','2024-05-06 16:08:57.373656','CC','country',1,47,NULL,'Country'),('2024-05-06 16:08:57.405471','2024-05-06 16:08:57.405471','CO','country',1,48,NULL,'Country'),('2024-05-06 16:08:57.422215','2024-05-06 16:08:57.422215','KM','country',1,49,NULL,'Country'),('2024-05-06 16:08:57.448486','2024-05-06 16:08:57.448486','CG','country',1,50,NULL,'Country'),('2024-05-06 16:08:57.460676','2024-05-06 16:08:57.460676','CD','country',1,51,NULL,'Country'),('2024-05-06 16:08:57.472672','2024-05-06 16:08:57.472672','CK','country',1,52,NULL,'Country'),('2024-05-06 16:08:57.484365','2024-05-06 16:08:57.484365','CR','country',1,53,NULL,'Country'),('2024-05-06 16:08:57.500850','2024-05-06 16:08:57.500850','CI','country',1,54,NULL,'Country'),('2024-05-06 16:08:57.518301','2024-05-06 16:08:57.518301','HR','country',1,55,NULL,'Country'),('2024-05-06 16:08:57.532007','2024-05-06 16:08:57.532007','CU','country',1,56,NULL,'Country'),('2024-05-06 16:08:57.544762','2024-05-06 16:08:57.544762','CW','country',1,57,NULL,'Country'),('2024-05-06 16:08:57.559027','2024-05-06 16:08:57.559027','CY','country',1,58,NULL,'Country'),('2024-05-06 16:08:57.572074','2024-05-06 16:08:57.572074','CZ','country',1,59,NULL,'Country'),('2024-05-06 16:08:57.590581','2024-05-06 16:08:57.590581','DK','country',1,60,NULL,'Country'),('2024-05-06 16:08:57.605693','2024-05-06 16:08:57.605693','DJ','country',1,61,NULL,'Country'),('2024-05-06 16:08:57.618757','2024-05-06 16:08:57.618757','DM','country',1,62,NULL,'Country'),('2024-05-06 16:08:57.632219','2024-05-06 16:08:57.632219','DO','country',1,63,NULL,'Country'),('2024-05-06 16:08:57.646754','2024-05-06 16:08:57.646754','EC','country',1,64,NULL,'Country'),('2024-05-06 16:08:57.663343','2024-05-06 16:08:57.663343','EG','country',1,65,NULL,'Country'),('2024-05-06 16:08:57.686327','2024-05-06 16:08:57.686327','SV','country',1,66,NULL,'Country'),('2024-05-06 16:08:57.700583','2024-05-06 16:08:57.700583','GQ','country',1,67,NULL,'Country'),('2024-05-06 16:08:57.713093','2024-05-06 16:08:57.713093','ER','country',1,68,NULL,'Country'),('2024-05-06 16:08:57.728757','2024-05-06 16:08:57.728757','EE','country',1,69,NULL,'Country'),('2024-05-06 16:08:57.742361','2024-05-06 16:08:57.742361','SZ','country',1,70,NULL,'Country'),('2024-05-06 16:08:57.760049','2024-05-06 16:08:57.760049','ET','country',1,71,NULL,'Country'),('2024-05-06 16:08:57.784260','2024-05-06 16:08:57.784260','FK','country',1,72,NULL,'Country'),('2024-05-06 16:08:57.803095','2024-05-06 16:08:57.803095','FO','country',1,73,NULL,'Country'),('2024-05-06 16:08:57.826088','2024-05-06 16:08:57.826088','FJ','country',1,74,NULL,'Country'),('2024-05-06 16:08:57.844932','2024-05-06 16:08:57.844932','FI','country',1,75,NULL,'Country'),('2024-05-06 16:08:57.870786','2024-05-06 16:08:57.870786','FR','country',1,76,NULL,'Country'),('2024-05-06 16:08:57.888573','2024-05-06 16:08:57.888573','GF','country',1,77,NULL,'Country'),('2024-05-06 16:08:57.905204','2024-05-06 16:08:57.905204','PF','country',1,78,NULL,'Country'),('2024-05-06 16:08:57.927162','2024-05-06 16:08:57.927162','TF','country',1,79,NULL,'Country'),('2024-05-06 16:08:57.942923','2024-05-06 16:08:57.942923','GA','country',1,80,NULL,'Country'),('2024-05-06 16:08:57.956675','2024-05-06 16:08:57.956675','GM','country',1,81,NULL,'Country'),('2024-05-06 16:08:57.974234','2024-05-06 16:08:57.974234','GE','country',1,82,NULL,'Country'),('2024-05-06 16:08:57.987904','2024-05-06 16:08:57.987904','DE','country',1,83,NULL,'Country'),('2024-05-06 16:08:58.000242','2024-05-06 16:08:58.000242','GH','country',1,84,NULL,'Country'),('2024-05-06 16:08:58.013191','2024-05-06 16:08:58.013191','GI','country',1,85,NULL,'Country'),('2024-05-06 16:08:58.026709','2024-05-06 16:08:58.026709','GR','country',1,86,NULL,'Country'),('2024-05-06 16:08:58.041471','2024-05-06 16:08:58.041471','GL','country',1,87,NULL,'Country'),('2024-05-06 16:08:58.063424','2024-05-06 16:08:58.063424','GD','country',1,88,NULL,'Country'),('2024-05-06 16:08:58.081672','2024-05-06 16:08:58.081672','GP','country',1,89,NULL,'Country'),('2024-05-06 16:08:58.096969','2024-05-06 16:08:58.096969','GU','country',1,90,NULL,'Country'),('2024-05-06 16:08:58.118891','2024-05-06 16:08:58.118891','GT','country',1,91,NULL,'Country'),('2024-05-06 16:08:58.134440','2024-05-06 16:08:58.134440','GG','country',1,92,NULL,'Country'),('2024-05-06 16:08:58.151470','2024-05-06 16:08:58.151470','GN','country',1,93,NULL,'Country'),('2024-05-06 16:08:58.168728','2024-05-06 16:08:58.168728','GW','country',1,94,NULL,'Country'),('2024-05-06 16:08:58.186322','2024-05-06 16:08:58.186322','GY','country',1,95,NULL,'Country'),('2024-05-06 16:08:58.207954','2024-05-06 16:08:58.207954','HT','country',1,96,NULL,'Country'),('2024-05-06 16:08:58.223274','2024-05-06 16:08:58.223274','HM','country',1,97,NULL,'Country'),('2024-05-06 16:08:58.246865','2024-05-06 16:08:58.246865','VA','country',1,98,NULL,'Country'),('2024-05-06 16:08:58.264711','2024-05-06 16:08:58.264711','HN','country',1,99,NULL,'Country'),('2024-05-06 16:08:58.283999','2024-05-06 16:08:58.283999','HK','country',1,100,NULL,'Country'),('2024-05-06 16:08:58.305446','2024-05-06 16:08:58.305446','HU','country',1,101,NULL,'Country'),('2024-05-06 16:08:58.332666','2024-05-06 16:08:58.332666','IS','country',1,102,NULL,'Country'),('2024-05-06 16:08:58.347798','2024-05-06 16:08:58.347798','IN','country',1,103,NULL,'Country'),('2024-05-06 16:08:58.368463','2024-05-06 16:08:58.368463','ID','country',1,104,NULL,'Country'),('2024-05-06 16:08:58.388766','2024-05-06 16:08:58.388766','IR','country',1,105,NULL,'Country'),('2024-05-06 16:08:58.404296','2024-05-06 16:08:58.404296','IQ','country',1,106,NULL,'Country'),('2024-05-06 16:08:58.416112','2024-05-06 16:08:58.416112','IE','country',1,107,NULL,'Country'),('2024-05-06 16:08:58.432967','2024-05-06 16:08:58.432967','IM','country',1,108,NULL,'Country'),('2024-05-06 16:08:58.450365','2024-05-06 16:08:58.450365','IL','country',1,109,NULL,'Country'),('2024-05-06 16:08:58.472593','2024-05-06 16:08:58.472593','IT','country',1,110,NULL,'Country'),('2024-05-06 16:08:58.486529','2024-05-06 16:08:58.486529','JM','country',1,111,NULL,'Country'),('2024-05-06 16:08:58.500965','2024-05-06 16:08:58.500965','JP','country',1,112,NULL,'Country'),('2024-05-06 16:08:58.520743','2024-05-06 16:08:58.520743','JE','country',1,113,NULL,'Country'),('2024-05-06 16:08:58.534481','2024-05-06 16:08:58.534481','JO','country',1,114,NULL,'Country'),('2024-05-06 16:08:58.550420','2024-05-06 16:08:58.550420','KZ','country',1,115,NULL,'Country'),('2024-05-06 16:08:58.564256','2024-05-06 16:08:58.564256','KE','country',1,116,NULL,'Country'),('2024-05-06 16:08:58.576724','2024-05-06 16:08:58.576724','KI','country',1,117,NULL,'Country'),('2024-05-06 16:08:58.599902','2024-05-06 16:08:58.599902','KP','country',1,118,NULL,'Country'),('2024-05-06 16:08:58.620250','2024-05-06 16:08:58.620250','KR','country',1,119,NULL,'Country'),('2024-05-06 16:08:58.631651','2024-05-06 16:08:58.631651','KW','country',1,120,NULL,'Country'),('2024-05-06 16:08:58.643639','2024-05-06 16:08:58.643639','KG','country',1,121,NULL,'Country'),('2024-05-06 16:08:58.657805','2024-05-06 16:08:58.657805','LA','country',1,122,NULL,'Country'),('2024-05-06 16:08:58.678779','2024-05-06 16:08:58.678779','LV','country',1,123,NULL,'Country'),('2024-05-06 16:08:58.691325','2024-05-06 16:08:58.691325','LB','country',1,124,NULL,'Country'),('2024-05-06 16:08:58.706786','2024-05-06 16:08:58.706786','LS','country',1,125,NULL,'Country'),('2024-05-06 16:08:58.720611','2024-05-06 16:08:58.720611','LR','country',1,126,NULL,'Country'),('2024-05-06 16:08:58.734764','2024-05-06 16:08:58.734764','LY','country',1,127,NULL,'Country'),('2024-05-06 16:08:58.750615','2024-05-06 16:08:58.750615','LI','country',1,128,NULL,'Country'),('2024-05-06 16:08:58.767488','2024-05-06 16:08:58.767488','LT','country',1,129,NULL,'Country'),('2024-05-06 16:08:58.782912','2024-05-06 16:08:58.782912','LU','country',1,130,NULL,'Country'),('2024-05-06 16:08:58.797632','2024-05-06 16:08:58.797632','MO','country',1,131,NULL,'Country'),('2024-05-06 16:08:58.811272','2024-05-06 16:08:58.811272','MK','country',1,132,NULL,'Country'),('2024-05-06 16:08:58.825165','2024-05-06 16:08:58.825165','MG','country',1,133,NULL,'Country'),('2024-05-06 16:08:58.840477','2024-05-06 16:08:58.840477','MW','country',1,134,NULL,'Country'),('2024-05-06 16:08:58.856144','2024-05-06 16:08:58.856144','MY','country',1,135,NULL,'Country'),('2024-05-06 16:08:58.870531','2024-05-06 16:08:58.870531','MV','country',1,136,NULL,'Country'),('2024-05-06 16:08:58.885641','2024-05-06 16:08:58.885641','ML','country',1,137,NULL,'Country'),('2024-05-06 16:08:58.905608','2024-05-06 16:08:58.905608','MT','country',1,138,NULL,'Country'),('2024-05-06 16:08:58.926731','2024-05-06 16:08:58.926731','MH','country',1,139,NULL,'Country'),('2024-05-06 16:08:58.941236','2024-05-06 16:08:58.941236','MQ','country',1,140,NULL,'Country'),('2024-05-06 16:08:58.959824','2024-05-06 16:08:58.959824','MR','country',1,141,NULL,'Country'),('2024-05-06 16:08:58.973047','2024-05-06 16:08:58.973047','MU','country',1,142,NULL,'Country'),('2024-05-06 16:08:58.987341','2024-05-06 16:08:58.987341','YT','country',1,143,NULL,'Country'),('2024-05-06 16:08:59.001898','2024-05-06 16:08:59.001898','MX','country',1,144,NULL,'Country'),('2024-05-06 16:08:59.021244','2024-05-06 16:08:59.021244','FM','country',1,145,NULL,'Country'),('2024-05-06 16:08:59.037646','2024-05-06 16:08:59.037646','MD','country',1,146,NULL,'Country'),('2024-05-06 16:08:59.056381','2024-05-06 16:08:59.056381','MC','country',1,147,NULL,'Country'),('2024-05-06 16:08:59.074781','2024-05-06 16:08:59.074781','MN','country',1,148,NULL,'Country'),('2024-05-06 16:08:59.089671','2024-05-06 16:08:59.089671','ME','country',1,149,NULL,'Country'),('2024-05-06 16:08:59.104171','2024-05-06 16:08:59.104171','MS','country',1,150,NULL,'Country'),('2024-05-06 16:08:59.119556','2024-05-06 16:08:59.119556','MA','country',1,151,NULL,'Country'),('2024-05-06 16:08:59.134244','2024-05-06 16:08:59.134244','MZ','country',1,152,NULL,'Country'),('2024-05-06 16:08:59.145066','2024-05-06 16:08:59.145066','MM','country',1,153,NULL,'Country'),('2024-05-06 16:08:59.155820','2024-05-06 16:08:59.155820','NA','country',1,154,NULL,'Country'),('2024-05-06 16:08:59.167644','2024-05-06 16:08:59.167644','NR','country',1,155,NULL,'Country'),('2024-05-06 16:08:59.178986','2024-05-06 16:08:59.178986','NP','country',1,156,NULL,'Country'),('2024-05-06 16:08:59.192222','2024-05-06 16:08:59.192222','NL','country',1,157,NULL,'Country'),('2024-05-06 16:08:59.204523','2024-05-06 16:08:59.204523','NC','country',1,158,NULL,'Country'),('2024-05-06 16:08:59.218470','2024-05-06 16:08:59.218470','NZ','country',1,159,NULL,'Country'),('2024-05-06 16:08:59.232243','2024-05-06 16:08:59.232243','NI','country',1,160,NULL,'Country'),('2024-05-06 16:08:59.247570','2024-05-06 16:08:59.247570','NE','country',1,161,NULL,'Country'),('2024-05-06 16:08:59.259249','2024-05-06 16:08:59.259249','NG','country',1,162,NULL,'Country'),('2024-05-06 16:08:59.272687','2024-05-06 16:08:59.272687','NU','country',1,163,NULL,'Country'),('2024-05-06 16:08:59.287781','2024-05-06 16:08:59.287781','NF','country',1,164,NULL,'Country'),('2024-05-06 16:08:59.301706','2024-05-06 16:08:59.301706','MP','country',1,165,NULL,'Country'),('2024-05-06 16:08:59.315331','2024-05-06 16:08:59.315331','NO','country',1,166,NULL,'Country'),('2024-05-06 16:08:59.327857','2024-05-06 16:08:59.327857','OM','country',1,167,NULL,'Country'),('2024-05-06 16:08:59.341105','2024-05-06 16:08:59.341105','PK','country',1,168,NULL,'Country'),('2024-05-06 16:08:59.352076','2024-05-06 16:08:59.352076','PW','country',1,169,NULL,'Country'),('2024-05-06 16:08:59.367614','2024-05-06 16:08:59.367614','PS','country',1,170,NULL,'Country'),('2024-05-06 16:08:59.379561','2024-05-06 16:08:59.379561','PA','country',1,171,NULL,'Country'),('2024-05-06 16:08:59.391732','2024-05-06 16:08:59.391732','PG','country',1,172,NULL,'Country'),('2024-05-06 16:08:59.402722','2024-05-06 16:08:59.402722','PY','country',1,173,NULL,'Country'),('2024-05-06 16:08:59.421073','2024-05-06 16:08:59.421073','PE','country',1,174,NULL,'Country'),('2024-05-06 16:08:59.436399','2024-05-06 16:08:59.436399','PH','country',1,175,NULL,'Country'),('2024-05-06 16:08:59.454417','2024-05-06 16:08:59.454417','PN','country',1,176,NULL,'Country'),('2024-05-06 16:08:59.470732','2024-05-06 16:08:59.470732','PL','country',1,177,NULL,'Country'),('2024-05-06 16:08:59.488033','2024-05-06 16:08:59.488033','PT','country',1,178,NULL,'Country'),('2024-05-06 16:08:59.502683','2024-05-06 16:08:59.502683','PR','country',1,179,NULL,'Country'),('2024-05-06 16:08:59.515377','2024-05-06 16:08:59.515377','QA','country',1,180,NULL,'Country'),('2024-05-06 16:08:59.531297','2024-05-06 16:08:59.531297','RE','country',1,181,NULL,'Country'),('2024-05-06 16:08:59.545895','2024-05-06 16:08:59.545895','RO','country',1,182,NULL,'Country'),('2024-05-06 16:08:59.560748','2024-05-06 16:08:59.560748','RU','country',1,183,NULL,'Country'),('2024-05-06 16:08:59.577994','2024-05-06 16:08:59.577994','RW','country',1,184,NULL,'Country'),('2024-05-06 16:08:59.592198','2024-05-06 16:08:59.592198','BL','country',1,185,NULL,'Country'),('2024-05-06 16:08:59.604660','2024-05-06 16:08:59.604660','SH','country',1,186,NULL,'Country'),('2024-05-06 16:08:59.622167','2024-05-06 16:08:59.622167','KN','country',1,187,NULL,'Country'),('2024-05-06 16:08:59.639151','2024-05-06 16:08:59.639151','LC','country',1,188,NULL,'Country'),('2024-05-06 16:08:59.671342','2024-05-06 16:08:59.671342','MF','country',1,189,NULL,'Country'),('2024-05-06 16:08:59.692079','2024-05-06 16:08:59.692079','PM','country',1,190,NULL,'Country'),('2024-05-06 16:08:59.706424','2024-05-06 16:08:59.706424','VC','country',1,191,NULL,'Country'),('2024-05-06 16:08:59.719595','2024-05-06 16:08:59.719595','WS','country',1,192,NULL,'Country'),('2024-05-06 16:08:59.736047','2024-05-06 16:08:59.736047','SM','country',1,193,NULL,'Country'),('2024-05-06 16:08:59.782936','2024-05-06 16:08:59.782936','ST','country',1,194,NULL,'Country'),('2024-05-06 16:08:59.799669','2024-05-06 16:08:59.799669','SA','country',1,195,NULL,'Country'),('2024-05-06 16:08:59.816776','2024-05-06 16:08:59.816776','SN','country',1,196,NULL,'Country'),('2024-05-06 16:08:59.832864','2024-05-06 16:08:59.832864','RS','country',1,197,NULL,'Country'),('2024-05-06 16:08:59.849373','2024-05-06 16:08:59.849373','SC','country',1,198,NULL,'Country'),('2024-05-06 16:08:59.865496','2024-05-06 16:08:59.865496','SL','country',1,199,NULL,'Country'),('2024-05-06 16:08:59.882957','2024-05-06 16:08:59.882957','SG','country',1,200,NULL,'Country'),('2024-05-06 16:08:59.905239','2024-05-06 16:08:59.905239','SX','country',1,201,NULL,'Country'),('2024-05-06 16:08:59.920718','2024-05-06 16:08:59.920718','SK','country',1,202,NULL,'Country'),('2024-05-06 16:08:59.942582','2024-05-06 16:08:59.942582','SI','country',1,203,NULL,'Country'),('2024-05-06 16:08:59.963291','2024-05-06 16:08:59.963291','SB','country',1,204,NULL,'Country'),('2024-05-06 16:08:59.978708','2024-05-06 16:08:59.978708','SO','country',1,205,NULL,'Country'),('2024-05-06 16:08:59.989556','2024-05-06 16:08:59.989556','ZA','country',1,206,NULL,'Country'),('2024-05-06 16:09:00.000164','2024-05-06 16:09:00.000164','GS','country',1,207,NULL,'Country'),('2024-05-06 16:09:00.012277','2024-05-06 16:09:00.012277','SS','country',1,208,NULL,'Country'),('2024-05-06 16:09:00.025155','2024-05-06 16:09:00.025155','ES','country',1,209,NULL,'Country'),('2024-05-06 16:09:00.037469','2024-05-06 16:09:00.037469','LK','country',1,210,NULL,'Country'),('2024-05-06 16:09:00.050326','2024-05-06 16:09:00.050326','SD','country',1,211,NULL,'Country'),('2024-05-06 16:09:00.066127','2024-05-06 16:09:00.066127','SR','country',1,212,NULL,'Country'),('2024-05-06 16:09:00.077619','2024-05-06 16:09:00.077619','SJ','country',1,213,NULL,'Country'),('2024-05-06 16:09:00.094381','2024-05-06 16:09:00.094381','SE','country',1,214,NULL,'Country'),('2024-05-06 16:09:00.127803','2024-05-06 16:09:00.127803','CH','country',1,215,NULL,'Country'),('2024-05-06 16:09:00.141959','2024-05-06 16:09:00.141959','SY','country',1,216,NULL,'Country'),('2024-05-06 16:09:00.198632','2024-05-06 16:09:00.198632','TW','country',1,217,NULL,'Country'),('2024-05-06 16:09:00.214769','2024-05-06 16:09:00.214769','TJ','country',1,218,NULL,'Country'),('2024-05-06 16:09:00.227728','2024-05-06 16:09:00.227728','TZ','country',1,219,NULL,'Country'),('2024-05-06 16:09:00.241032','2024-05-06 16:09:00.241032','TH','country',1,220,NULL,'Country'),('2024-05-06 16:09:00.261524','2024-05-06 16:09:00.261524','TL','country',1,221,NULL,'Country'),('2024-05-06 16:09:00.279818','2024-05-06 16:09:00.279818','TG','country',1,222,NULL,'Country'),('2024-05-06 16:09:00.294699','2024-05-06 16:09:00.294699','TK','country',1,223,NULL,'Country'),('2024-05-06 16:09:00.315343','2024-05-06 16:09:00.315343','TO','country',1,224,NULL,'Country'),('2024-05-06 16:09:00.329367','2024-05-06 16:09:00.329367','TT','country',1,225,NULL,'Country'),('2024-05-06 16:09:00.344849','2024-05-06 16:09:00.344849','TN','country',1,226,NULL,'Country'),('2024-05-06 16:09:00.369285','2024-05-06 16:09:00.369285','TR','country',1,227,NULL,'Country'),('2024-05-06 16:09:00.381788','2024-05-06 16:09:00.381788','TM','country',1,228,NULL,'Country'),('2024-05-06 16:09:00.396289','2024-05-06 16:09:00.396289','TC','country',1,229,NULL,'Country'),('2024-05-06 16:09:00.419187','2024-05-06 16:09:00.419187','TV','country',1,230,NULL,'Country'),('2024-05-06 16:09:00.430852','2024-05-06 16:09:00.430852','UG','country',1,231,NULL,'Country'),('2024-05-06 16:09:00.441471','2024-05-06 16:09:00.441471','UA','country',1,232,NULL,'Country'),('2024-05-06 16:09:00.452343','2024-05-06 16:09:00.452343','AE','country',1,233,NULL,'Country'),('2024-05-06 16:09:00.463790','2024-05-06 16:09:00.463790','GB','country',1,234,NULL,'Country'),('2024-05-06 16:09:00.476270','2024-05-06 16:09:00.476270','US','country',1,235,NULL,'Country'),('2024-05-06 16:09:00.488480','2024-05-06 16:09:00.488480','UM','country',1,236,NULL,'Country'),('2024-05-06 16:09:00.499896','2024-05-06 16:09:00.499896','UY','country',1,237,NULL,'Country'),('2024-05-06 16:09:00.510471','2024-05-06 16:09:00.510471','UZ','country',1,238,NULL,'Country'),('2024-05-06 16:09:00.524930','2024-05-06 16:09:00.524930','VU','country',1,239,NULL,'Country'),('2024-05-06 16:09:00.538678','2024-05-06 16:09:00.538678','VE','country',1,240,NULL,'Country'),('2024-05-06 16:09:00.550688','2024-05-06 16:09:00.550688','VN','country',1,241,NULL,'Country'),('2024-05-06 16:09:00.563440','2024-05-06 16:09:00.563440','VG','country',1,242,NULL,'Country'),('2024-05-06 16:09:00.576601','2024-05-06 16:09:00.576601','VI','country',1,243,NULL,'Country'),('2024-05-06 16:09:00.591062','2024-05-06 16:09:00.591062','WF','country',1,244,NULL,'Country'),('2024-05-06 16:09:00.607437','2024-05-06 16:09:00.607437','EH','country',1,245,NULL,'Country'),('2024-05-06 16:09:00.620104','2024-05-06 16:09:00.620104','YE','country',1,246,NULL,'Country'),('2024-05-06 16:09:00.637158','2024-05-06 16:09:00.637158','ZM','country',1,247,NULL,'Country'),('2024-05-06 16:09:00.649690','2024-05-06 16:09:00.649690','ZW','country',1,248,NULL,'Country'),('2024-05-06 18:38:51.654619','2024-05-06 18:38:51.654619','AF','country',1,249,NULL,'Country'),('2024-05-06 18:38:51.674510','2024-05-06 18:38:51.674510','AX','country',1,250,NULL,'Country'),('2024-05-06 18:38:51.697392','2024-05-06 18:38:51.697392','AL','country',1,251,NULL,'Country'),('2024-05-06 18:38:51.721656','2024-05-06 18:38:51.721656','DZ','country',1,252,NULL,'Country'),('2024-05-06 18:38:51.738495','2024-05-06 18:38:51.738495','AS','country',1,253,NULL,'Country'),('2024-05-06 18:38:51.756248','2024-05-06 18:38:51.756248','AD','country',1,254,NULL,'Country'),('2024-05-06 18:38:51.770872','2024-05-06 18:38:51.770872','AO','country',1,255,NULL,'Country'),('2024-05-06 18:38:51.784834','2024-05-06 18:38:51.784834','AI','country',1,256,NULL,'Country'),('2024-05-06 18:38:51.813030','2024-05-06 18:38:51.813030','AG','country',1,257,NULL,'Country'),('2024-05-06 18:38:51.827957','2024-05-06 18:38:51.827957','AR','country',1,258,NULL,'Country'),('2024-05-06 18:38:51.850296','2024-05-06 18:38:51.850296','AM','country',1,259,NULL,'Country'),('2024-05-06 18:38:51.877180','2024-05-06 18:38:51.877180','AW','country',1,260,NULL,'Country'),('2024-05-06 18:38:51.897900','2024-05-06 18:38:51.897900','AU','country',1,261,NULL,'Country'),('2024-05-06 18:38:51.919730','2024-05-06 18:38:51.919730','AT','country',1,262,NULL,'Country'),('2024-05-06 18:38:51.933844','2024-05-06 18:38:51.933844','AZ','country',1,263,NULL,'Country'),('2024-05-06 18:38:51.949372','2024-05-06 18:38:51.949372','BS','country',1,264,NULL,'Country'),('2024-05-06 18:38:51.965225','2024-05-06 18:38:51.965225','BH','country',1,265,NULL,'Country'),('2024-05-06 18:38:51.979398','2024-05-06 18:38:51.979398','BD','country',1,266,NULL,'Country'),('2024-05-06 18:38:51.991178','2024-05-06 18:38:51.991178','BB','country',1,267,NULL,'Country'),('2024-05-06 18:38:52.004015','2024-05-06 18:38:52.004015','BY','country',1,268,NULL,'Country'),('2024-05-06 18:38:52.025014','2024-05-06 18:38:52.025014','BE','country',1,269,NULL,'Country'),('2024-05-06 18:38:52.041627','2024-05-06 18:38:52.041627','BZ','country',1,270,NULL,'Country'),('2024-05-06 18:38:52.059838','2024-05-06 18:38:52.059838','BJ','country',1,271,NULL,'Country'),('2024-05-06 18:38:52.080535','2024-05-06 18:38:52.080535','BM','country',1,272,NULL,'Country'),('2024-05-06 18:38:52.097219','2024-05-06 18:38:52.097219','BT','country',1,273,NULL,'Country'),('2024-05-06 18:38:52.114829','2024-05-06 18:38:52.114829','BO','country',1,274,NULL,'Country'),('2024-05-06 18:38:52.135270','2024-05-06 18:38:52.135270','BQ','country',1,275,NULL,'Country'),('2024-05-06 18:38:52.149210','2024-05-06 18:38:52.149210','BA','country',1,276,NULL,'Country'),('2024-05-06 18:38:52.162759','2024-05-06 18:38:52.162759','BW','country',1,277,NULL,'Country'),('2024-05-06 18:38:52.180721','2024-05-06 18:38:52.180721','BV','country',1,278,NULL,'Country'),('2024-05-06 18:38:52.196552','2024-05-06 18:38:52.196552','BR','country',1,279,NULL,'Country'),('2024-05-06 18:38:52.217320','2024-05-06 18:38:52.217320','IO','country',1,280,NULL,'Country'),('2024-05-06 18:38:52.237146','2024-05-06 18:38:52.237146','BN','country',1,281,NULL,'Country'),('2024-05-06 18:38:52.251193','2024-05-06 18:38:52.251193','BG','country',1,282,NULL,'Country'),('2024-05-06 18:38:52.266577','2024-05-06 18:38:52.266577','BF','country',1,283,NULL,'Country'),('2024-05-06 18:38:52.290282','2024-05-06 18:38:52.290282','BI','country',1,284,NULL,'Country'),('2024-05-06 18:38:52.308805','2024-05-06 18:38:52.308805','CV','country',1,285,NULL,'Country'),('2024-05-06 18:38:52.327174','2024-05-06 18:38:52.327174','KH','country',1,286,NULL,'Country'),('2024-05-06 18:38:52.348490','2024-05-06 18:38:52.348490','CM','country',1,287,NULL,'Country'),('2024-05-06 18:38:52.363814','2024-05-06 18:38:52.363814','CA','country',1,288,NULL,'Country'),('2024-05-06 18:38:52.377268','2024-05-06 18:38:52.377268','KY','country',1,289,NULL,'Country'),('2024-05-06 18:38:52.396511','2024-05-06 18:38:52.396511','CF','country',1,290,NULL,'Country'),('2024-05-06 18:38:52.411548','2024-05-06 18:38:52.411548','TD','country',1,291,NULL,'Country'),('2024-05-06 18:38:52.425584','2024-05-06 18:38:52.425584','CL','country',1,292,NULL,'Country'),('2024-05-06 18:38:52.447458','2024-05-06 18:38:52.447458','CN','country',1,293,NULL,'Country'),('2024-05-06 18:38:52.463006','2024-05-06 18:38:52.463006','CX','country',1,294,NULL,'Country'),('2024-05-06 18:38:52.478337','2024-05-06 18:38:52.478337','CC','country',1,295,NULL,'Country'),('2024-05-06 18:38:52.495918','2024-05-06 18:38:52.495918','CO','country',1,296,NULL,'Country'),('2024-05-06 18:38:52.520092','2024-05-06 18:38:52.520092','KM','country',1,297,NULL,'Country'),('2024-05-06 18:38:52.533872','2024-05-06 18:38:52.533872','CG','country',1,298,NULL,'Country'),('2024-05-06 18:38:52.551082','2024-05-06 18:38:52.551082','CD','country',1,299,NULL,'Country'),('2024-05-06 18:38:52.569343','2024-05-06 18:38:52.569343','CK','country',1,300,NULL,'Country'),('2024-05-06 18:38:52.583811','2024-05-06 18:38:52.583811','CR','country',1,301,NULL,'Country'),('2024-05-06 18:38:52.596847','2024-05-06 18:38:52.596847','CI','country',1,302,NULL,'Country'),('2024-05-06 18:38:52.610629','2024-05-06 18:38:52.610629','HR','country',1,303,NULL,'Country'),('2024-05-06 18:38:52.625305','2024-05-06 18:38:52.625305','CU','country',1,304,NULL,'Country'),('2024-05-06 18:38:52.637925','2024-05-06 18:38:52.637925','CW','country',1,305,NULL,'Country'),('2024-05-06 18:38:52.649615','2024-05-06 18:38:52.649615','CY','country',1,306,NULL,'Country'),('2024-05-06 18:38:52.662078','2024-05-06 18:38:52.662078','CZ','country',1,307,NULL,'Country'),('2024-05-06 18:38:52.674359','2024-05-06 18:38:52.674359','DK','country',1,308,NULL,'Country'),('2024-05-06 18:38:52.686183','2024-05-06 18:38:52.686183','DJ','country',1,309,NULL,'Country'),('2024-05-06 18:38:52.701207','2024-05-06 18:38:52.701207','DM','country',1,310,NULL,'Country'),('2024-05-06 18:38:52.713794','2024-05-06 18:38:52.713794','DO','country',1,311,NULL,'Country'),('2024-05-06 18:38:52.726590','2024-05-06 18:38:52.726590','EC','country',1,312,NULL,'Country'),('2024-05-06 18:38:52.738918','2024-05-06 18:38:52.738918','EG','country',1,313,NULL,'Country'),('2024-05-06 18:38:52.755080','2024-05-06 18:38:52.755080','SV','country',1,314,NULL,'Country'),('2024-05-06 18:38:52.768829','2024-05-06 18:38:52.768829','GQ','country',1,315,NULL,'Country'),('2024-05-06 18:38:52.784109','2024-05-06 18:38:52.784109','ER','country',1,316,NULL,'Country'),('2024-05-06 18:38:52.798339','2024-05-06 18:38:52.798339','EE','country',1,317,NULL,'Country'),('2024-05-06 18:38:52.814447','2024-05-06 18:38:52.814447','SZ','country',1,318,NULL,'Country'),('2024-05-06 18:38:52.838186','2024-05-06 18:38:52.838186','ET','country',1,319,NULL,'Country'),('2024-05-06 18:38:52.865849','2024-05-06 18:38:52.865849','FK','country',1,320,NULL,'Country'),('2024-05-06 18:38:52.885553','2024-05-06 18:38:52.885553','FO','country',1,321,NULL,'Country'),('2024-05-06 18:38:52.900661','2024-05-06 18:38:52.900661','FJ','country',1,322,NULL,'Country'),('2024-05-06 18:38:52.917751','2024-05-06 18:38:52.917751','FI','country',1,323,NULL,'Country'),('2024-05-06 18:38:52.937315','2024-05-06 18:38:52.937315','FR','country',1,324,NULL,'Country'),('2024-05-06 18:38:52.953125','2024-05-06 18:38:52.953125','GF','country',1,325,NULL,'Country'),('2024-05-06 18:38:52.965515','2024-05-06 18:38:52.965515','PF','country',1,326,NULL,'Country'),('2024-05-06 18:38:52.978998','2024-05-06 18:38:52.978998','TF','country',1,327,NULL,'Country'),('2024-05-06 18:38:52.992223','2024-05-06 18:38:52.992223','GA','country',1,328,NULL,'Country'),('2024-05-06 18:38:53.004980','2024-05-06 18:38:53.004980','GM','country',1,329,NULL,'Country'),('2024-05-06 18:38:53.027643','2024-05-06 18:38:53.027643','GE','country',1,330,NULL,'Country'),('2024-05-06 18:38:53.045084','2024-05-06 18:38:53.045084','DE','country',1,331,NULL,'Country'),('2024-05-06 18:38:53.062042','2024-05-06 18:38:53.062042','GH','country',1,332,NULL,'Country'),('2024-05-06 18:38:53.077988','2024-05-06 18:38:53.077988','GI','country',1,333,NULL,'Country'),('2024-05-06 18:38:53.095807','2024-05-06 18:38:53.095807','GR','country',1,334,NULL,'Country'),('2024-05-06 18:38:53.111541','2024-05-06 18:38:53.111541','GL','country',1,335,NULL,'Country'),('2024-05-06 18:38:53.131143','2024-05-06 18:38:53.131143','GD','country',1,336,NULL,'Country'),('2024-05-06 18:38:53.146797','2024-05-06 18:38:53.146797','GP','country',1,337,NULL,'Country'),('2024-05-06 18:38:53.161434','2024-05-06 18:38:53.161434','GU','country',1,338,NULL,'Country'),('2024-05-06 18:38:53.177632','2024-05-06 18:38:53.177632','GT','country',1,339,NULL,'Country'),('2024-05-06 18:38:53.197210','2024-05-06 18:38:53.197210','GG','country',1,340,NULL,'Country'),('2024-05-06 18:38:53.209422','2024-05-06 18:38:53.209422','GN','country',1,341,NULL,'Country'),('2024-05-06 18:38:53.224508','2024-05-06 18:38:53.224508','GW','country',1,342,NULL,'Country'),('2024-05-06 18:38:53.238301','2024-05-06 18:38:53.238301','GY','country',1,343,NULL,'Country'),('2024-05-06 18:38:53.250994','2024-05-06 18:38:53.250994','HT','country',1,344,NULL,'Country'),('2024-05-06 18:38:53.264068','2024-05-06 18:38:53.264068','HM','country',1,345,NULL,'Country'),('2024-05-06 18:38:53.279027','2024-05-06 18:38:53.279027','VA','country',1,346,NULL,'Country'),('2024-05-06 18:38:53.291092','2024-05-06 18:38:53.291092','HN','country',1,347,NULL,'Country'),('2024-05-06 18:38:53.303610','2024-05-06 18:38:53.303610','HK','country',1,348,NULL,'Country'),('2024-05-06 18:38:53.315205','2024-05-06 18:38:53.315205','HU','country',1,349,NULL,'Country'),('2024-05-06 18:38:53.327646','2024-05-06 18:38:53.327646','IS','country',1,350,NULL,'Country'),('2024-05-06 18:38:53.340413','2024-05-06 18:38:53.340413','IN','country',1,351,NULL,'Country'),('2024-05-06 18:38:53.353763','2024-05-06 18:38:53.353763','ID','country',1,352,NULL,'Country'),('2024-05-06 18:38:53.371528','2024-05-06 18:38:53.371528','IR','country',1,353,NULL,'Country'),('2024-05-06 18:38:53.384072','2024-05-06 18:38:53.384072','IQ','country',1,354,NULL,'Country'),('2024-05-06 18:38:53.396482','2024-05-06 18:38:53.396482','IE','country',1,355,NULL,'Country'),('2024-05-06 18:38:53.410439','2024-05-06 18:38:53.410439','IM','country',1,356,NULL,'Country'),('2024-05-06 18:38:53.423063','2024-05-06 18:38:53.423063','IL','country',1,357,NULL,'Country'),('2024-05-06 18:38:53.436306','2024-05-06 18:38:53.436306','IT','country',1,358,NULL,'Country'),('2024-05-06 18:38:53.448811','2024-05-06 18:38:53.448811','JM','country',1,359,NULL,'Country'),('2024-05-06 18:38:53.461147','2024-05-06 18:38:53.461147','JP','country',1,360,NULL,'Country'),('2024-05-06 18:38:53.476198','2024-05-06 18:38:53.476198','JE','country',1,361,NULL,'Country'),('2024-05-06 18:38:53.489295','2024-05-06 18:38:53.489295','JO','country',1,362,NULL,'Country'),('2024-05-06 18:38:53.504377','2024-05-06 18:38:53.504377','KZ','country',1,363,NULL,'Country'),('2024-05-06 18:38:53.528884','2024-05-06 18:38:53.528884','KE','country',1,364,NULL,'Country'),('2024-05-06 18:38:53.554366','2024-05-06 18:38:53.554366','KI','country',1,365,NULL,'Country'),('2024-05-06 18:38:53.569484','2024-05-06 18:38:53.569484','KP','country',1,366,NULL,'Country'),('2024-05-06 18:38:53.605058','2024-05-06 18:38:53.605058','KR','country',1,367,NULL,'Country'),('2024-05-06 18:38:53.620816','2024-05-06 18:38:53.620816','KW','country',1,368,NULL,'Country'),('2024-05-06 18:38:53.637871','2024-05-06 18:38:53.637871','KG','country',1,369,NULL,'Country'),('2024-05-06 18:38:53.658356','2024-05-06 18:38:53.658356','LA','country',1,370,NULL,'Country'),('2024-05-06 18:38:53.674498','2024-05-06 18:38:53.674498','LV','country',1,371,NULL,'Country'),('2024-05-06 18:38:53.688635','2024-05-06 18:38:53.688635','LB','country',1,372,NULL,'Country'),('2024-05-06 18:38:53.712889','2024-05-06 18:38:53.712889','LS','country',1,373,NULL,'Country'),('2024-05-06 18:38:53.762899','2024-05-06 18:38:53.762899','LR','country',1,374,NULL,'Country'),('2024-05-06 18:38:53.782622','2024-05-06 18:38:53.782622','LY','country',1,375,NULL,'Country'),('2024-05-06 18:38:53.797956','2024-05-06 18:38:53.797956','LI','country',1,376,NULL,'Country'),('2024-05-06 18:38:53.813473','2024-05-06 18:38:53.813473','LT','country',1,377,NULL,'Country'),('2024-05-06 18:38:53.824871','2024-05-06 18:38:53.824871','LU','country',1,378,NULL,'Country'),('2024-05-06 18:38:53.840565','2024-05-06 18:38:53.840565','MO','country',1,379,NULL,'Country'),('2024-05-06 18:38:53.862179','2024-05-06 18:38:53.862179','MK','country',1,380,NULL,'Country'),('2024-05-06 18:38:53.877740','2024-05-06 18:38:53.877740','MG','country',1,381,NULL,'Country'),('2024-05-06 18:38:53.892563','2024-05-06 18:38:53.892563','MW','country',1,382,NULL,'Country'),('2024-05-06 18:38:53.908905','2024-05-06 18:38:53.908905','MY','country',1,383,NULL,'Country'),('2024-05-06 18:38:53.933382','2024-05-06 18:38:53.933382','MV','country',1,384,NULL,'Country'),('2024-05-06 18:38:53.974200','2024-05-06 18:38:53.974200','ML','country',1,385,NULL,'Country'),('2024-05-06 18:38:53.996440','2024-05-06 18:38:53.996440','MT','country',1,386,NULL,'Country'),('2024-05-06 18:38:54.016105','2024-05-06 18:38:54.016105','MH','country',1,387,NULL,'Country'),('2024-05-06 18:38:54.036710','2024-05-06 18:38:54.036710','MQ','country',1,388,NULL,'Country'),('2024-05-06 18:38:54.058682','2024-05-06 18:38:54.058682','MR','country',1,389,NULL,'Country'),('2024-05-06 18:38:54.080984','2024-05-06 18:38:54.080984','MU','country',1,390,NULL,'Country'),('2024-05-06 18:38:54.098995','2024-05-06 18:38:54.098995','YT','country',1,391,NULL,'Country'),('2024-05-06 18:38:54.116633','2024-05-06 18:38:54.116633','MX','country',1,392,NULL,'Country'),('2024-05-06 18:38:54.130665','2024-05-06 18:38:54.130665','FM','country',1,393,NULL,'Country'),('2024-05-06 18:38:54.149280','2024-05-06 18:38:54.149280','MD','country',1,394,NULL,'Country'),('2024-05-06 18:38:54.169757','2024-05-06 18:38:54.169757','MC','country',1,395,NULL,'Country'),('2024-05-06 18:38:54.186465','2024-05-06 18:38:54.186465','MN','country',1,396,NULL,'Country'),('2024-05-06 18:38:54.203756','2024-05-06 18:38:54.203756','ME','country',1,397,NULL,'Country'),('2024-05-06 18:38:54.218577','2024-05-06 18:38:54.218577','MS','country',1,398,NULL,'Country'),('2024-05-06 18:38:54.232860','2024-05-06 18:38:54.232860','MA','country',1,399,NULL,'Country'),('2024-05-06 18:38:54.248314','2024-05-06 18:38:54.248314','MZ','country',1,400,NULL,'Country'),('2024-05-06 18:38:54.264660','2024-05-06 18:38:54.264660','MM','country',1,401,NULL,'Country'),('2024-05-06 18:38:54.281144','2024-05-06 18:38:54.281144','NA','country',1,402,NULL,'Country'),('2024-05-06 18:38:54.298468','2024-05-06 18:38:54.298468','NR','country',1,403,NULL,'Country'),('2024-05-06 18:38:54.311547','2024-05-06 18:38:54.311547','NP','country',1,404,NULL,'Country'),('2024-05-06 18:38:54.323541','2024-05-06 18:38:54.323541','NL','country',1,405,NULL,'Country'),('2024-05-06 18:38:54.335980','2024-05-06 18:38:54.335980','NC','country',1,406,NULL,'Country'),('2024-05-06 18:38:54.350791','2024-05-06 18:38:54.350791','NZ','country',1,407,NULL,'Country'),('2024-05-06 18:38:54.367171','2024-05-06 18:38:54.367171','NI','country',1,408,NULL,'Country'),('2024-05-06 18:38:54.383627','2024-05-06 18:38:54.383627','NE','country',1,409,NULL,'Country'),('2024-05-06 18:38:54.403481','2024-05-06 18:38:54.403481','NG','country',1,410,NULL,'Country'),('2024-05-06 18:38:54.419468','2024-05-06 18:38:54.419468','NU','country',1,411,NULL,'Country'),('2024-05-06 18:38:54.435700','2024-05-06 18:38:54.435700','NF','country',1,412,NULL,'Country'),('2024-05-06 18:38:54.448535','2024-05-06 18:38:54.448535','MP','country',1,413,NULL,'Country'),('2024-05-06 18:38:54.465179','2024-05-06 18:38:54.465179','NO','country',1,414,NULL,'Country'),('2024-05-06 18:38:54.479885','2024-05-06 18:38:54.479885','OM','country',1,415,NULL,'Country'),('2024-05-06 18:38:54.495574','2024-05-06 18:38:54.495574','PK','country',1,416,NULL,'Country'),('2024-05-06 18:38:54.528966','2024-05-06 18:38:54.528966','PW','country',1,417,NULL,'Country'),('2024-05-06 18:38:54.545219','2024-05-06 18:38:54.545219','PS','country',1,418,NULL,'Country'),('2024-05-06 18:38:54.567460','2024-05-06 18:38:54.567460','PA','country',1,419,NULL,'Country'),('2024-05-06 18:38:54.583221','2024-05-06 18:38:54.583221','PG','country',1,420,NULL,'Country'),('2024-05-06 18:38:54.598296','2024-05-06 18:38:54.598296','PY','country',1,421,NULL,'Country'),('2024-05-06 18:38:54.625753','2024-05-06 18:38:54.625753','PE','country',1,422,NULL,'Country'),('2024-05-06 18:38:54.643956','2024-05-06 18:38:54.643956','PH','country',1,423,NULL,'Country'),('2024-05-06 18:38:54.672660','2024-05-06 18:38:54.672660','PN','country',1,424,NULL,'Country'),('2024-05-06 18:38:54.759800','2024-05-06 18:38:54.759800','PL','country',1,425,NULL,'Country'),('2024-05-06 18:38:54.802106','2024-05-06 18:38:54.802106','PT','country',1,426,NULL,'Country'),('2024-05-06 18:38:54.814033','2024-05-06 18:38:54.814033','PR','country',1,427,NULL,'Country'),('2024-05-06 18:38:54.826886','2024-05-06 18:38:54.826886','QA','country',1,428,NULL,'Country'),('2024-05-06 18:38:54.841822','2024-05-06 18:38:54.841822','RE','country',1,429,NULL,'Country'),('2024-05-06 18:38:54.855839','2024-05-06 18:38:54.855839','RO','country',1,430,NULL,'Country'),('2024-05-06 18:38:54.871092','2024-05-06 18:38:54.871092','RU','country',1,431,NULL,'Country'),('2024-05-06 18:38:54.886699','2024-05-06 18:38:54.886699','RW','country',1,432,NULL,'Country'),('2024-05-06 18:38:54.898642','2024-05-06 18:38:54.898642','BL','country',1,433,NULL,'Country'),('2024-05-06 18:38:54.913539','2024-05-06 18:38:54.913539','SH','country',1,434,NULL,'Country'),('2024-05-06 18:38:54.926843','2024-05-06 18:38:54.926843','KN','country',1,435,NULL,'Country'),('2024-05-06 18:38:54.940956','2024-05-06 18:38:54.940956','LC','country',1,436,NULL,'Country'),('2024-05-06 18:38:54.956799','2024-05-06 18:38:54.956799','MF','country',1,437,NULL,'Country'),('2024-05-06 18:38:54.972800','2024-05-06 18:38:54.972800','PM','country',1,438,NULL,'Country'),('2024-05-06 18:38:54.997585','2024-05-06 18:38:54.997585','VC','country',1,439,NULL,'Country'),('2024-05-06 18:38:55.012364','2024-05-06 18:38:55.012364','WS','country',1,440,NULL,'Country'),('2024-05-06 18:38:55.025753','2024-05-06 18:38:55.025753','SM','country',1,441,NULL,'Country'),('2024-05-06 18:38:55.044935','2024-05-06 18:38:55.044935','ST','country',1,442,NULL,'Country'),('2024-05-06 18:38:55.057175','2024-05-06 18:38:55.057175','SA','country',1,443,NULL,'Country'),('2024-05-06 18:38:55.075452','2024-05-06 18:38:55.075452','SN','country',1,444,NULL,'Country'),('2024-05-06 18:38:55.097715','2024-05-06 18:38:55.097715','RS','country',1,445,NULL,'Country'),('2024-05-06 18:38:55.122165','2024-05-06 18:38:55.122165','SC','country',1,446,NULL,'Country'),('2024-05-06 18:38:55.138371','2024-05-06 18:38:55.138371','SL','country',1,447,NULL,'Country'),('2024-05-06 18:38:55.160882','2024-05-06 18:38:55.160882','SG','country',1,448,NULL,'Country'),('2024-05-06 18:38:55.180547','2024-05-06 18:38:55.180547','SX','country',1,449,NULL,'Country'),('2024-05-06 18:38:55.197692','2024-05-06 18:38:55.197692','SK','country',1,450,NULL,'Country'),('2024-05-06 18:38:55.213113','2024-05-06 18:38:55.213113','SI','country',1,451,NULL,'Country'),('2024-05-06 18:38:55.229455','2024-05-06 18:38:55.229455','SB','country',1,452,NULL,'Country'),('2024-05-06 18:38:55.246520','2024-05-06 18:38:55.246520','SO','country',1,453,NULL,'Country'),('2024-05-06 18:38:55.264526','2024-05-06 18:38:55.264526','ZA','country',1,454,NULL,'Country'),('2024-05-06 18:38:55.281935','2024-05-06 18:38:55.281935','GS','country',1,455,NULL,'Country'),('2024-05-06 18:38:55.295124','2024-05-06 18:38:55.295124','SS','country',1,456,NULL,'Country'),('2024-05-06 18:38:55.313670','2024-05-06 18:38:55.313670','ES','country',1,457,NULL,'Country'),('2024-05-06 18:38:55.329112','2024-05-06 18:38:55.329112','LK','country',1,458,NULL,'Country'),('2024-05-06 18:38:55.347180','2024-05-06 18:38:55.347180','SD','country',1,459,NULL,'Country'),('2024-05-06 18:38:55.369164','2024-05-06 18:38:55.369164','SR','country',1,460,NULL,'Country'),('2024-05-06 18:38:55.387554','2024-05-06 18:38:55.387554','SJ','country',1,461,NULL,'Country'),('2024-05-06 18:38:55.408214','2024-05-06 18:38:55.408214','SE','country',1,462,NULL,'Country'),('2024-05-06 18:38:55.434580','2024-05-06 18:38:55.434580','CH','country',1,463,NULL,'Country'),('2024-05-06 18:38:55.459313','2024-05-06 18:38:55.459313','SY','country',1,464,NULL,'Country'),('2024-05-06 18:38:55.475640','2024-05-06 18:38:55.475640','TW','country',1,465,NULL,'Country'),('2024-05-06 18:38:55.490341','2024-05-06 18:38:55.490341','TJ','country',1,466,NULL,'Country'),('2024-05-06 18:38:55.510640','2024-05-06 18:38:55.510640','TZ','country',1,467,NULL,'Country'),('2024-05-06 18:38:55.528582','2024-05-06 18:38:55.528582','TH','country',1,468,NULL,'Country'),('2024-05-06 18:38:55.551250','2024-05-06 18:38:55.551250','TL','country',1,469,NULL,'Country'),('2024-05-06 18:38:55.587961','2024-05-06 18:38:55.587961','TG','country',1,470,NULL,'Country'),('2024-05-06 18:38:55.609935','2024-05-06 18:38:55.609935','TK','country',1,471,NULL,'Country'),('2024-05-06 18:38:55.626359','2024-05-06 18:38:55.626359','TO','country',1,472,NULL,'Country'),('2024-05-06 18:38:55.642236','2024-05-06 18:38:55.642236','TT','country',1,473,NULL,'Country'),('2024-05-06 18:38:55.655316','2024-05-06 18:38:55.655316','TN','country',1,474,NULL,'Country'),('2024-05-06 18:38:55.671039','2024-05-06 18:38:55.671039','TR','country',1,475,NULL,'Country'),('2024-05-06 18:38:55.684310','2024-05-06 18:38:55.684310','TM','country',1,476,NULL,'Country'),('2024-05-06 18:38:55.698198','2024-05-06 18:38:55.698198','TC','country',1,477,NULL,'Country'),('2024-05-06 18:38:55.712698','2024-05-06 18:38:55.712698','TV','country',1,478,NULL,'Country'),('2024-05-06 18:38:55.731969','2024-05-06 18:38:55.731969','UG','country',1,479,NULL,'Country'),('2024-05-06 18:38:55.748777','2024-05-06 18:38:55.748777','UA','country',1,480,NULL,'Country'),('2024-05-06 18:38:55.764047','2024-05-06 18:38:55.764047','AE','country',1,481,NULL,'Country'),('2024-05-06 18:38:55.778687','2024-05-06 18:38:55.778687','GB','country',1,482,NULL,'Country'),('2024-05-06 18:38:55.792356','2024-05-06 18:38:55.792356','US','country',1,483,NULL,'Country'),('2024-05-06 18:38:55.827693','2024-05-06 18:38:55.827693','UM','country',1,484,NULL,'Country'),('2024-05-06 18:38:55.850218','2024-05-06 18:38:55.850218','UY','country',1,485,NULL,'Country'),('2024-05-06 18:38:55.867378','2024-05-06 18:38:55.867378','UZ','country',1,486,NULL,'Country'),('2024-05-06 18:38:55.885433','2024-05-06 18:38:55.885433','VU','country',1,487,NULL,'Country'),('2024-05-06 18:38:55.907327','2024-05-06 18:38:55.907327','VE','country',1,488,NULL,'Country'),('2024-05-06 18:38:55.923452','2024-05-06 18:38:55.923452','VN','country',1,489,NULL,'Country'),('2024-05-06 18:38:55.939456','2024-05-06 18:38:55.939456','VG','country',1,490,NULL,'Country'),('2024-05-06 18:38:55.954625','2024-05-06 18:38:55.954625','VI','country',1,491,NULL,'Country'),('2024-05-06 18:38:55.971550','2024-05-06 18:38:55.971550','WF','country',1,492,NULL,'Country'),('2024-05-06 18:38:55.986076','2024-05-06 18:38:55.986076','EH','country',1,493,NULL,'Country'),('2024-05-06 18:38:56.006599','2024-05-06 18:38:56.006599','YE','country',1,494,NULL,'Country'),('2024-05-06 18:38:56.024728','2024-05-06 18:38:56.024728','ZM','country',1,495,NULL,'Country'),('2024-05-06 18:38:56.039262','2024-05-06 18:38:56.039262','ZW','country',1,496,NULL,'Country'),('2024-05-06 18:58:35.146803','2024-05-06 18:58:35.146803','AF','country',1,497,NULL,'Country'),('2024-05-06 18:58:35.174858','2024-05-06 18:58:35.174858','AX','country',1,498,NULL,'Country'),('2024-05-06 18:58:35.195381','2024-05-06 18:58:35.195381','AL','country',1,499,NULL,'Country'),('2024-05-06 18:58:35.216222','2024-05-06 18:58:35.216222','DZ','country',1,500,NULL,'Country'),('2024-05-06 18:58:35.249883','2024-05-06 18:58:35.249883','AS','country',1,501,NULL,'Country'),('2024-05-06 18:58:35.265135','2024-05-06 18:58:35.265135','AD','country',1,502,NULL,'Country'),('2024-05-06 18:58:35.291897','2024-05-06 18:58:35.291897','AO','country',1,503,NULL,'Country'),('2024-05-06 18:58:35.315719','2024-05-06 18:58:35.315719','AI','country',1,504,NULL,'Country'),('2024-05-06 18:58:35.341431','2024-05-06 18:58:35.341431','AG','country',1,505,NULL,'Country'),('2024-05-06 18:58:35.365784','2024-05-06 18:58:35.365784','AR','country',1,506,NULL,'Country'),('2024-05-06 18:58:35.382784','2024-05-06 18:58:35.382784','AM','country',1,507,NULL,'Country'),('2024-05-06 18:58:35.402669','2024-05-06 18:58:35.402669','AW','country',1,508,NULL,'Country'),('2024-05-06 18:58:35.417600','2024-05-06 18:58:35.417600','AU','country',1,509,NULL,'Country'),('2024-05-06 18:58:35.437008','2024-05-06 18:58:35.437008','AT','country',1,510,NULL,'Country'),('2024-05-06 18:58:35.450918','2024-05-06 18:58:35.450918','AZ','country',1,511,NULL,'Country'),('2024-05-06 18:58:35.482708','2024-05-06 18:58:35.482708','BS','country',1,512,NULL,'Country'),('2024-05-06 18:58:35.501569','2024-05-06 18:58:35.501569','BH','country',1,513,NULL,'Country'),('2024-05-06 18:58:35.521510','2024-05-06 18:58:35.521510','BD','country',1,514,NULL,'Country'),('2024-05-06 18:58:35.540119','2024-05-06 18:58:35.540119','BB','country',1,515,NULL,'Country'),('2024-05-06 18:58:35.563086','2024-05-06 18:58:35.563086','BY','country',1,516,NULL,'Country'),('2024-05-06 18:58:35.584700','2024-05-06 18:58:35.584700','BE','country',1,517,NULL,'Country'),('2024-05-06 18:58:35.603256','2024-05-06 18:58:35.603256','BZ','country',1,518,NULL,'Country'),('2024-05-06 18:58:35.633611','2024-05-06 18:58:35.633611','BJ','country',1,519,NULL,'Country'),('2024-05-06 18:58:35.647661','2024-05-06 18:58:35.647661','BM','country',1,520,NULL,'Country'),('2024-05-06 18:58:35.661829','2024-05-06 18:58:35.661829','BT','country',1,521,NULL,'Country'),('2024-05-06 18:58:35.676998','2024-05-06 18:58:35.676998','BO','country',1,522,NULL,'Country'),('2024-05-06 18:58:35.690965','2024-05-06 18:58:35.690965','BQ','country',1,523,NULL,'Country'),('2024-05-06 18:58:35.707287','2024-05-06 18:58:35.707287','BA','country',1,524,NULL,'Country'),('2024-05-06 18:58:35.721035','2024-05-06 18:58:35.721035','BW','country',1,525,NULL,'Country'),('2024-05-06 18:58:35.733866','2024-05-06 18:58:35.733866','BV','country',1,526,NULL,'Country'),('2024-05-06 18:58:35.752289','2024-05-06 18:58:35.752289','BR','country',1,527,NULL,'Country'),('2024-05-06 18:58:35.769414','2024-05-06 18:58:35.769414','IO','country',1,528,NULL,'Country'),('2024-05-06 18:58:35.786211','2024-05-06 18:58:35.786211','BN','country',1,529,NULL,'Country'),('2024-05-06 18:58:35.801377','2024-05-06 18:58:35.801377','BG','country',1,530,NULL,'Country'),('2024-05-06 18:58:35.819023','2024-05-06 18:58:35.819023','BF','country',1,531,NULL,'Country'),('2024-05-06 18:58:35.836044','2024-05-06 18:58:35.836044','BI','country',1,532,NULL,'Country'),('2024-05-06 18:58:35.853172','2024-05-06 18:58:35.853172','CV','country',1,533,NULL,'Country'),('2024-05-06 18:58:35.875574','2024-05-06 18:58:35.875574','KH','country',1,534,NULL,'Country'),('2024-05-06 18:58:35.894066','2024-05-06 18:58:35.894066','CM','country',1,535,NULL,'Country'),('2024-05-06 18:58:35.908405','2024-05-06 18:58:35.908405','CA','country',1,536,NULL,'Country'),('2024-05-06 18:58:35.923934','2024-05-06 18:58:35.923934','KY','country',1,537,NULL,'Country'),('2024-05-06 18:58:35.939045','2024-05-06 18:58:35.939045','CF','country',1,538,NULL,'Country'),('2024-05-06 18:58:35.953835','2024-05-06 18:58:35.953835','TD','country',1,539,NULL,'Country'),('2024-05-06 18:58:35.970484','2024-05-06 18:58:35.970484','CL','country',1,540,NULL,'Country'),('2024-05-06 18:58:35.984475','2024-05-06 18:58:35.984475','CN','country',1,541,NULL,'Country'),('2024-05-06 18:58:35.998352','2024-05-06 18:58:35.998352','CX','country',1,542,NULL,'Country'),('2024-05-06 18:58:36.012248','2024-05-06 18:58:36.012248','CC','country',1,543,NULL,'Country'),('2024-05-06 18:58:36.029711','2024-05-06 18:58:36.029711','CO','country',1,544,NULL,'Country'),('2024-05-06 18:58:36.045190','2024-05-06 18:58:36.045190','KM','country',1,545,NULL,'Country'),('2024-05-06 18:58:36.061929','2024-05-06 18:58:36.061929','CG','country',1,546,NULL,'Country'),('2024-05-06 18:58:36.076482','2024-05-06 18:58:36.076482','CD','country',1,547,NULL,'Country'),('2024-05-06 18:58:36.090429','2024-05-06 18:58:36.090429','CK','country',1,548,NULL,'Country'),('2024-05-06 18:58:36.103549','2024-05-06 18:58:36.103549','CR','country',1,549,NULL,'Country'),('2024-05-06 18:58:36.119593','2024-05-06 18:58:36.119593','CI','country',1,550,NULL,'Country'),('2024-05-06 18:58:36.134095','2024-05-06 18:58:36.134095','HR','country',1,551,NULL,'Country'),('2024-05-06 18:58:36.147101','2024-05-06 18:58:36.147101','CU','country',1,552,NULL,'Country'),('2024-05-06 18:58:36.161659','2024-05-06 18:58:36.161659','CW','country',1,553,NULL,'Country'),('2024-05-06 18:58:36.176444','2024-05-06 18:58:36.176444','CY','country',1,554,NULL,'Country'),('2024-05-06 18:58:36.189334','2024-05-06 18:58:36.189334','CZ','country',1,555,NULL,'Country'),('2024-05-06 18:58:36.202359','2024-05-06 18:58:36.202359','DK','country',1,556,NULL,'Country'),('2024-05-06 18:58:36.216283','2024-05-06 18:58:36.216283','DJ','country',1,557,NULL,'Country'),('2024-05-06 18:58:36.229951','2024-05-06 18:58:36.229951','DM','country',1,558,NULL,'Country'),('2024-05-06 18:58:36.244782','2024-05-06 18:58:36.244782','DO','country',1,559,NULL,'Country'),('2024-05-06 18:58:36.258168','2024-05-06 18:58:36.258168','EC','country',1,560,NULL,'Country'),('2024-05-06 18:58:36.272026','2024-05-06 18:58:36.272026','EG','country',1,561,NULL,'Country'),('2024-05-06 18:58:36.284689','2024-05-06 18:58:36.284689','SV','country',1,562,NULL,'Country'),('2024-05-06 18:58:36.298619','2024-05-06 18:58:36.298619','GQ','country',1,563,NULL,'Country'),('2024-05-06 18:58:36.311093','2024-05-06 18:58:36.311093','ER','country',1,564,NULL,'Country'),('2024-05-06 18:58:36.325952','2024-05-06 18:58:36.325952','EE','country',1,565,NULL,'Country'),('2024-05-06 18:58:36.357828','2024-05-06 18:58:36.357828','SZ','country',1,566,NULL,'Country'),('2024-05-06 18:58:36.375806','2024-05-06 18:58:36.375806','ET','country',1,567,NULL,'Country'),('2024-05-06 18:58:36.390512','2024-05-06 18:58:36.390512','FK','country',1,568,NULL,'Country'),('2024-05-06 18:58:36.408930','2024-05-06 18:58:36.408930','FO','country',1,569,NULL,'Country'),('2024-05-06 18:58:36.422511','2024-05-06 18:58:36.422511','FJ','country',1,570,NULL,'Country'),('2024-05-06 18:58:36.435813','2024-05-06 18:58:36.435813','FI','country',1,571,NULL,'Country'),('2024-05-06 18:58:36.451549','2024-05-06 18:58:36.451549','FR','country',1,572,NULL,'Country'),('2024-05-06 18:58:36.467931','2024-05-06 18:58:36.467931','GF','country',1,573,NULL,'Country'),('2024-05-06 18:58:36.480021','2024-05-06 18:58:36.480021','PF','country',1,574,NULL,'Country'),('2024-05-06 18:58:36.491671','2024-05-06 18:58:36.491671','TF','country',1,575,NULL,'Country'),('2024-05-06 18:58:36.503189','2024-05-06 18:58:36.503189','GA','country',1,576,NULL,'Country'),('2024-05-06 18:58:36.515711','2024-05-06 18:58:36.515711','GM','country',1,577,NULL,'Country'),('2024-05-06 18:58:36.529327','2024-05-06 18:58:36.529327','GE','country',1,578,NULL,'Country'),('2024-05-06 18:58:36.541437','2024-05-06 18:58:36.541437','DE','country',1,579,NULL,'Country'),('2024-05-06 18:58:36.553897','2024-05-06 18:58:36.553897','GH','country',1,580,NULL,'Country'),('2024-05-06 18:58:36.566097','2024-05-06 18:58:36.566097','GI','country',1,581,NULL,'Country'),('2024-05-06 18:58:36.578598','2024-05-06 18:58:36.578598','GR','country',1,582,NULL,'Country'),('2024-05-06 18:58:36.592029','2024-05-06 18:58:36.592029','GL','country',1,583,NULL,'Country'),('2024-05-06 18:58:36.604961','2024-05-06 18:58:36.604961','GD','country',1,584,NULL,'Country'),('2024-05-06 18:58:36.617393','2024-05-06 18:58:36.617393','GP','country',1,585,NULL,'Country'),('2024-05-06 18:58:36.631748','2024-05-06 18:58:36.631748','GU','country',1,586,NULL,'Country'),('2024-05-06 18:58:36.645513','2024-05-06 18:58:36.645513','GT','country',1,587,NULL,'Country'),('2024-05-06 18:58:36.660257','2024-05-06 18:58:36.660257','GG','country',1,588,NULL,'Country'),('2024-05-06 18:58:36.673406','2024-05-06 18:58:36.673406','GN','country',1,589,NULL,'Country'),('2024-05-06 18:58:36.688601','2024-05-06 18:58:36.688601','GW','country',1,590,NULL,'Country'),('2024-05-06 18:58:36.701109','2024-05-06 18:58:36.701109','GY','country',1,591,NULL,'Country'),('2024-05-06 18:58:36.715080','2024-05-06 18:58:36.715080','HT','country',1,592,NULL,'Country'),('2024-05-06 18:58:36.728201','2024-05-06 18:58:36.728201','HM','country',1,593,NULL,'Country'),('2024-05-06 18:58:36.741696','2024-05-06 18:58:36.741696','VA','country',1,594,NULL,'Country'),('2024-05-06 18:58:36.756048','2024-05-06 18:58:36.756048','HN','country',1,595,NULL,'Country'),('2024-05-06 18:58:36.771244','2024-05-06 18:58:36.771244','HK','country',1,596,NULL,'Country'),('2024-05-06 18:58:36.784478','2024-05-06 18:58:36.784478','HU','country',1,597,NULL,'Country'),('2024-05-06 18:58:36.798133','2024-05-06 18:58:36.798133','IS','country',1,598,NULL,'Country'),('2024-05-06 18:58:36.825180','2024-05-06 18:58:36.825180','IN','country',1,599,NULL,'Country'),('2024-05-06 18:58:36.840284','2024-05-06 18:58:36.840284','ID','country',1,600,NULL,'Country'),('2024-05-06 18:58:36.858286','2024-05-06 18:58:36.858286','IR','country',1,601,NULL,'Country'),('2024-05-06 18:58:36.876834','2024-05-06 18:58:36.876834','IQ','country',1,602,NULL,'Country'),('2024-05-06 18:58:36.891966','2024-05-06 18:58:36.891966','IE','country',1,603,NULL,'Country'),('2024-05-06 18:58:36.912960','2024-05-06 18:58:36.912960','IM','country',1,604,NULL,'Country'),('2024-05-06 18:58:36.932755','2024-05-06 18:58:36.932755','IL','country',1,605,NULL,'Country'),('2024-05-06 18:58:36.950100','2024-05-06 18:58:36.950100','IT','country',1,606,NULL,'Country'),('2024-05-06 18:58:36.965328','2024-05-06 18:58:36.965328','JM','country',1,607,NULL,'Country'),('2024-05-06 18:58:36.979722','2024-05-06 18:58:36.979722','JP','country',1,608,NULL,'Country'),('2024-05-06 18:58:36.993577','2024-05-06 18:58:36.993577','JE','country',1,609,NULL,'Country'),('2024-05-06 18:58:37.008368','2024-05-06 18:58:37.008368','JO','country',1,610,NULL,'Country'),('2024-05-06 18:58:37.041441','2024-05-06 18:58:37.041441','KZ','country',1,611,NULL,'Country'),('2024-05-06 18:58:37.055434','2024-05-06 18:58:37.055434','KE','country',1,612,NULL,'Country'),('2024-05-06 18:58:37.068016','2024-05-06 18:58:37.068016','KI','country',1,613,NULL,'Country'),('2024-05-06 18:58:37.085759','2024-05-06 18:58:37.085759','KP','country',1,614,NULL,'Country'),('2024-05-06 18:58:37.099645','2024-05-06 18:58:37.099645','KR','country',1,615,NULL,'Country'),('2024-05-06 18:58:37.128573','2024-05-06 18:58:37.128573','KW','country',1,616,NULL,'Country'),('2024-05-06 18:58:37.140702','2024-05-06 18:58:37.140702','KG','country',1,617,NULL,'Country'),('2024-05-06 18:58:37.151720','2024-05-06 18:58:37.151720','LA','country',1,618,NULL,'Country'),('2024-05-06 18:58:37.165078','2024-05-06 18:58:37.165078','LV','country',1,619,NULL,'Country'),('2024-05-06 18:58:37.178108','2024-05-06 18:58:37.178108','LB','country',1,620,NULL,'Country'),('2024-05-06 18:58:37.195737','2024-05-06 18:58:37.195737','LS','country',1,621,NULL,'Country'),('2024-05-06 18:58:37.213234','2024-05-06 18:58:37.213234','LR','country',1,622,NULL,'Country'),('2024-05-06 18:58:37.229536','2024-05-06 18:58:37.229536','LY','country',1,623,NULL,'Country'),('2024-05-06 18:58:37.244397','2024-05-06 18:58:37.244397','LI','country',1,624,NULL,'Country'),('2024-05-06 18:58:37.258999','2024-05-06 18:58:37.258999','LT','country',1,625,NULL,'Country'),('2024-05-06 18:58:37.277157','2024-05-06 18:58:37.277157','LU','country',1,626,NULL,'Country'),('2024-05-06 18:58:37.293509','2024-05-06 18:58:37.293509','MO','country',1,627,NULL,'Country'),('2024-05-06 18:58:37.309427','2024-05-06 18:58:37.309427','MK','country',1,628,NULL,'Country'),('2024-05-06 18:58:37.327479','2024-05-06 18:58:37.327479','MG','country',1,629,NULL,'Country'),('2024-05-06 18:58:37.343841','2024-05-06 18:58:37.343841','MW','country',1,630,NULL,'Country'),('2024-05-06 18:58:37.360528','2024-05-06 18:58:37.360528','MY','country',1,631,NULL,'Country'),('2024-05-06 18:58:37.375784','2024-05-06 18:58:37.375784','MV','country',1,632,NULL,'Country'),('2024-05-06 18:58:37.391673','2024-05-06 18:58:37.391673','ML','country',1,633,NULL,'Country'),('2024-05-06 18:58:37.407492','2024-05-06 18:58:37.407492','MT','country',1,634,NULL,'Country'),('2024-05-06 18:58:37.423525','2024-05-06 18:58:37.423525','MH','country',1,635,NULL,'Country'),('2024-05-06 18:58:37.438481','2024-05-06 18:58:37.438481','MQ','country',1,636,NULL,'Country'),('2024-05-06 18:58:37.451381','2024-05-06 18:58:37.451381','MR','country',1,637,NULL,'Country'),('2024-05-06 18:58:37.475379','2024-05-06 18:58:37.475379','MU','country',1,638,NULL,'Country'),('2024-05-06 18:58:37.490585','2024-05-06 18:58:37.490585','YT','country',1,639,NULL,'Country'),('2024-05-06 18:58:37.509691','2024-05-06 18:58:37.509691','MX','country',1,640,NULL,'Country'),('2024-05-06 18:58:37.523915','2024-05-06 18:58:37.523915','FM','country',1,641,NULL,'Country'),('2024-05-06 18:58:37.540297','2024-05-06 18:58:37.540297','MD','country',1,642,NULL,'Country'),('2024-05-06 18:58:37.556405','2024-05-06 18:58:37.556405','MC','country',1,643,NULL,'Country'),('2024-05-06 18:58:37.572887','2024-05-06 18:58:37.572887','MN','country',1,644,NULL,'Country'),('2024-05-06 18:58:37.587786','2024-05-06 18:58:37.587786','ME','country',1,645,NULL,'Country'),('2024-05-06 18:58:37.601892','2024-05-06 18:58:37.601892','MS','country',1,646,NULL,'Country'),('2024-05-06 18:58:37.617424','2024-05-06 18:58:37.617424','MA','country',1,647,NULL,'Country'),('2024-05-06 18:58:37.638837','2024-05-06 18:58:37.638837','MZ','country',1,648,NULL,'Country'),('2024-05-06 18:58:37.651721','2024-05-06 18:58:37.651721','MM','country',1,649,NULL,'Country'),('2024-05-06 18:58:37.664304','2024-05-06 18:58:37.664304','NA','country',1,650,NULL,'Country'),('2024-05-06 18:58:37.682918','2024-05-06 18:58:37.682918','NR','country',1,651,NULL,'Country'),('2024-05-06 18:58:37.698580','2024-05-06 18:58:37.698580','NP','country',1,652,NULL,'Country'),('2024-05-06 18:58:37.711670','2024-05-06 18:58:37.711670','NL','country',1,653,NULL,'Country'),('2024-05-06 18:58:37.728687','2024-05-06 18:58:37.728687','NC','country',1,654,NULL,'Country'),('2024-05-06 18:58:37.745949','2024-05-06 18:58:37.745949','NZ','country',1,655,NULL,'Country'),('2024-05-06 18:58:37.760217','2024-05-06 18:58:37.760217','NI','country',1,656,NULL,'Country'),('2024-05-06 18:58:37.772782','2024-05-06 18:58:37.772782','NE','country',1,657,NULL,'Country'),('2024-05-06 18:58:37.785888','2024-05-06 18:58:37.785888','NG','country',1,658,NULL,'Country'),('2024-05-06 18:58:37.799033','2024-05-06 18:58:37.799033','NU','country',1,659,NULL,'Country'),('2024-05-06 18:58:37.813559','2024-05-06 18:58:37.813559','NF','country',1,660,NULL,'Country'),('2024-05-06 18:58:37.826341','2024-05-06 18:58:37.826341','MP','country',1,661,NULL,'Country'),('2024-05-06 18:58:37.840488','2024-05-06 18:58:37.840488','NO','country',1,662,NULL,'Country'),('2024-05-06 18:58:37.855467','2024-05-06 18:58:37.855467','OM','country',1,663,NULL,'Country'),('2024-05-06 18:58:37.873897','2024-05-06 18:58:37.873897','PK','country',1,664,NULL,'Country'),('2024-05-06 18:58:37.891570','2024-05-06 18:58:37.891570','PW','country',1,665,NULL,'Country'),('2024-05-06 18:58:37.909301','2024-05-06 18:58:37.909301','PS','country',1,666,NULL,'Country'),('2024-05-06 18:58:37.933853','2024-05-06 18:58:37.933853','PA','country',1,667,NULL,'Country'),('2024-05-06 18:58:37.959016','2024-05-06 18:58:37.959016','PG','country',1,668,NULL,'Country'),('2024-05-06 18:58:37.977479','2024-05-06 18:58:37.977479','PY','country',1,669,NULL,'Country'),('2024-05-06 18:58:37.997449','2024-05-06 18:58:37.997449','PE','country',1,670,NULL,'Country'),('2024-05-06 18:58:38.016941','2024-05-06 18:58:38.016941','PH','country',1,671,NULL,'Country'),('2024-05-06 18:58:38.047812','2024-05-06 18:58:38.047812','PN','country',1,672,NULL,'Country'),('2024-05-06 18:58:38.064750','2024-05-06 18:58:38.064750','PL','country',1,673,NULL,'Country'),('2024-05-06 18:58:38.082713','2024-05-06 18:58:38.082713','PT','country',1,674,NULL,'Country'),('2024-05-06 18:58:38.098891','2024-05-06 18:58:38.098891','PR','country',1,675,NULL,'Country'),('2024-05-06 18:58:38.123862','2024-05-06 18:58:38.123862','QA','country',1,676,NULL,'Country'),('2024-05-06 18:58:38.140872','2024-05-06 18:58:38.140872','RE','country',1,677,NULL,'Country'),('2024-05-06 18:58:38.159678','2024-05-06 18:58:38.159678','RO','country',1,678,NULL,'Country'),('2024-05-06 18:58:38.174948','2024-05-06 18:58:38.174948','RU','country',1,679,NULL,'Country'),('2024-05-06 18:58:38.196263','2024-05-06 18:58:38.196263','RW','country',1,680,NULL,'Country'),('2024-05-06 18:58:38.215732','2024-05-06 18:58:38.215732','BL','country',1,681,NULL,'Country'),('2024-05-06 18:58:38.240610','2024-05-06 18:58:38.240610','SH','country',1,682,NULL,'Country'),('2024-05-06 18:58:38.263703','2024-05-06 18:58:38.263703','KN','country',1,683,NULL,'Country'),('2024-05-06 18:58:38.287657','2024-05-06 18:58:38.287657','LC','country',1,684,NULL,'Country'),('2024-05-06 18:58:38.315834','2024-05-06 18:58:38.315834','MF','country',1,685,NULL,'Country'),('2024-05-06 18:58:38.334818','2024-05-06 18:58:38.334818','PM','country',1,686,NULL,'Country'),('2024-05-06 18:58:38.352250','2024-05-06 18:58:38.352250','VC','country',1,687,NULL,'Country'),('2024-05-06 18:58:38.370692','2024-05-06 18:58:38.370692','WS','country',1,688,NULL,'Country'),('2024-05-06 18:58:38.389254','2024-05-06 18:58:38.389254','SM','country',1,689,NULL,'Country'),('2024-05-06 18:58:38.427631','2024-05-06 18:58:38.427631','ST','country',1,690,NULL,'Country'),('2024-05-06 18:58:38.449549','2024-05-06 18:58:38.449549','SA','country',1,691,NULL,'Country'),('2024-05-06 18:58:38.480230','2024-05-06 18:58:38.480230','SN','country',1,692,NULL,'Country'),('2024-05-06 18:58:38.497925','2024-05-06 18:58:38.497925','RS','country',1,693,NULL,'Country'),('2024-05-06 18:58:38.515542','2024-05-06 18:58:38.515542','SC','country',1,694,NULL,'Country'),('2024-05-06 18:58:38.530520','2024-05-06 18:58:38.530520','SL','country',1,695,NULL,'Country'),('2024-05-06 18:58:38.544293','2024-05-06 18:58:38.544293','SG','country',1,696,NULL,'Country'),('2024-05-06 18:58:38.558532','2024-05-06 18:58:38.558532','SX','country',1,697,NULL,'Country'),('2024-05-06 18:58:38.577473','2024-05-06 18:58:38.577473','SK','country',1,698,NULL,'Country'),('2024-05-06 18:58:38.595613','2024-05-06 18:58:38.595613','SI','country',1,699,NULL,'Country'),('2024-05-06 18:58:38.611788','2024-05-06 18:58:38.611788','SB','country',1,700,NULL,'Country'),('2024-05-06 18:58:38.628200','2024-05-06 18:58:38.628200','SO','country',1,701,NULL,'Country'),('2024-05-06 18:58:38.643915','2024-05-06 18:58:38.643915','ZA','country',1,702,NULL,'Country'),('2024-05-06 18:58:38.676284','2024-05-06 18:58:38.676284','GS','country',1,703,NULL,'Country'),('2024-05-06 18:58:38.692407','2024-05-06 18:58:38.692407','SS','country',1,704,NULL,'Country'),('2024-05-06 18:58:38.714924','2024-05-06 18:58:38.714924','ES','country',1,705,NULL,'Country'),('2024-05-06 18:58:38.732451','2024-05-06 18:58:38.732451','LK','country',1,706,NULL,'Country'),('2024-05-06 18:58:38.755647','2024-05-06 18:58:38.755647','SD','country',1,707,NULL,'Country'),('2024-05-06 18:58:38.770272','2024-05-06 18:58:38.770272','SR','country',1,708,NULL,'Country'),('2024-05-06 18:58:38.784416','2024-05-06 18:58:38.784416','SJ','country',1,709,NULL,'Country'),('2024-05-06 18:58:38.805965','2024-05-06 18:58:38.805965','SE','country',1,710,NULL,'Country'),('2024-05-06 18:58:38.825132','2024-05-06 18:58:38.825132','CH','country',1,711,NULL,'Country'),('2024-05-06 18:58:38.840953','2024-05-06 18:58:38.840953','SY','country',1,712,NULL,'Country'),('2024-05-06 18:58:38.853819','2024-05-06 18:58:38.853819','TW','country',1,713,NULL,'Country'),('2024-05-06 18:58:38.873433','2024-05-06 18:58:38.873433','TJ','country',1,714,NULL,'Country'),('2024-05-06 18:58:38.888038','2024-05-06 18:58:38.888038','TZ','country',1,715,NULL,'Country'),('2024-05-06 18:58:38.909347','2024-05-06 18:58:38.909347','TH','country',1,716,NULL,'Country'),('2024-05-06 18:58:38.938942','2024-05-06 18:58:38.938942','TL','country',1,717,NULL,'Country'),('2024-05-06 18:58:38.955324','2024-05-06 18:58:38.955324','TG','country',1,718,NULL,'Country'),('2024-05-06 18:58:38.970302','2024-05-06 18:58:38.970302','TK','country',1,719,NULL,'Country'),('2024-05-06 18:58:39.009280','2024-05-06 18:58:39.009280','TO','country',1,720,NULL,'Country'),('2024-05-06 18:58:39.048122','2024-05-06 18:58:39.048122','TT','country',1,721,NULL,'Country'),('2024-05-06 18:58:39.080600','2024-05-06 18:58:39.080600','TN','country',1,722,NULL,'Country'),('2024-05-06 18:58:39.098966','2024-05-06 18:58:39.098966','TR','country',1,723,NULL,'Country'),('2024-05-06 18:58:39.122686','2024-05-06 18:58:39.122686','TM','country',1,724,NULL,'Country'),('2024-05-06 18:58:39.138674','2024-05-06 18:58:39.138674','TC','country',1,725,NULL,'Country'),('2024-05-06 18:58:39.151400','2024-05-06 18:58:39.151400','TV','country',1,726,NULL,'Country'),('2024-05-06 18:58:39.165734','2024-05-06 18:58:39.165734','UG','country',1,727,NULL,'Country'),('2024-05-06 18:58:39.180182','2024-05-06 18:58:39.180182','UA','country',1,728,NULL,'Country'),('2024-05-06 18:58:39.199954','2024-05-06 18:58:39.199954','AE','country',1,729,NULL,'Country'),('2024-05-06 18:58:39.215460','2024-05-06 18:58:39.215460','GB','country',1,730,NULL,'Country'),('2024-05-06 18:58:39.227000','2024-05-06 18:58:39.227000','US','country',1,731,NULL,'Country'),('2024-05-06 18:58:39.239199','2024-05-06 18:58:39.239199','UM','country',1,732,NULL,'Country'),('2024-05-06 18:58:39.251268','2024-05-06 18:58:39.251268','UY','country',1,733,NULL,'Country'),('2024-05-06 18:58:39.264091','2024-05-06 18:58:39.264091','UZ','country',1,734,NULL,'Country'),('2024-05-06 18:58:39.276969','2024-05-06 18:58:39.276969','VU','country',1,735,NULL,'Country'),('2024-05-06 18:58:39.295602','2024-05-06 18:58:39.295602','VE','country',1,736,NULL,'Country'),('2024-05-06 18:58:39.311259','2024-05-06 18:58:39.311259','VN','country',1,737,NULL,'Country'),('2024-05-06 18:58:39.329545','2024-05-06 18:58:39.329545','VG','country',1,738,NULL,'Country'),('2024-05-06 18:58:39.343067','2024-05-06 18:58:39.343067','VI','country',1,739,NULL,'Country'),('2024-05-06 18:58:39.357223','2024-05-06 18:58:39.357223','WF','country',1,740,NULL,'Country'),('2024-05-06 18:58:39.374924','2024-05-06 18:58:39.374924','EH','country',1,741,NULL,'Country'),('2024-05-06 18:58:39.388768','2024-05-06 18:58:39.388768','YE','country',1,742,NULL,'Country'),('2024-05-06 18:58:39.400624','2024-05-06 18:58:39.400624','ZM','country',1,743,NULL,'Country'),('2024-05-06 18:58:39.415226','2024-05-06 18:58:39.415226','ZW','country',1,744,NULL,'Country'),('2024-05-06 19:06:12.368186','2024-05-06 19:06:12.368186','AF','country',1,745,NULL,'Country'),('2024-05-06 19:06:12.389577','2024-05-06 19:06:12.389577','AX','country',1,746,NULL,'Country'),('2024-05-06 19:06:12.427000','2024-05-06 19:06:12.427000','AL','country',1,747,NULL,'Country'),('2024-05-06 19:06:12.450632','2024-05-06 19:06:12.450632','DZ','country',1,748,NULL,'Country'),('2024-05-06 19:06:12.469967','2024-05-06 19:06:12.469967','AS','country',1,749,NULL,'Country'),('2024-05-06 19:06:12.505324','2024-05-06 19:06:12.505324','AD','country',1,750,NULL,'Country'),('2024-05-06 19:06:12.521854','2024-05-06 19:06:12.521854','AO','country',1,751,NULL,'Country'),('2024-05-06 19:06:12.541708','2024-05-06 19:06:12.541708','AI','country',1,752,NULL,'Country'),('2024-05-06 19:06:12.557461','2024-05-06 19:06:12.557461','AG','country',1,753,NULL,'Country'),('2024-05-06 19:06:12.571575','2024-05-06 19:06:12.571575','AR','country',1,754,NULL,'Country'),('2024-05-06 19:06:12.584700','2024-05-06 19:06:12.584700','AM','country',1,755,NULL,'Country'),('2024-05-06 19:06:12.600495','2024-05-06 19:06:12.600495','AW','country',1,756,NULL,'Country'),('2024-05-06 19:06:12.613199','2024-05-06 19:06:12.613199','AU','country',1,757,NULL,'Country'),('2024-05-06 19:06:12.626246','2024-05-06 19:06:12.626246','AT','country',1,758,NULL,'Country'),('2024-05-06 19:06:12.639841','2024-05-06 19:06:12.639841','AZ','country',1,759,NULL,'Country'),('2024-05-06 19:06:12.653556','2024-05-06 19:06:12.653556','BS','country',1,760,NULL,'Country'),('2024-05-06 19:06:12.667161','2024-05-06 19:06:12.667161','BH','country',1,761,NULL,'Country'),('2024-05-06 19:06:12.680873','2024-05-06 19:06:12.680873','BD','country',1,762,NULL,'Country'),('2024-05-06 19:06:12.694560','2024-05-06 19:06:12.694560','BB','country',1,763,NULL,'Country'),('2024-05-06 19:06:12.707237','2024-05-06 19:06:12.707237','BY','country',1,764,NULL,'Country'),('2024-05-06 19:06:12.723065','2024-05-06 19:06:12.723065','BE','country',1,765,NULL,'Country'),('2024-05-06 19:06:12.748900','2024-05-06 19:06:12.748900','BZ','country',1,766,NULL,'Country'),('2024-05-06 19:06:12.767466','2024-05-06 19:06:12.767466','BJ','country',1,767,NULL,'Country'),('2024-05-06 19:06:12.785562','2024-05-06 19:06:12.785562','BM','country',1,768,NULL,'Country'),('2024-05-06 19:06:12.805721','2024-05-06 19:06:12.805721','BT','country',1,769,NULL,'Country'),('2024-05-06 19:06:12.819635','2024-05-06 19:06:12.819635','BO','country',1,770,NULL,'Country'),('2024-05-06 19:06:12.832150','2024-05-06 19:06:12.832150','BQ','country',1,771,NULL,'Country'),('2024-05-06 19:06:12.849816','2024-05-06 19:06:12.849816','BA','country',1,772,NULL,'Country'),('2024-05-06 19:06:12.872460','2024-05-06 19:06:12.872460','BW','country',1,773,NULL,'Country'),('2024-05-06 19:06:12.894177','2024-05-06 19:06:12.894177','BV','country',1,774,NULL,'Country'),('2024-05-06 19:06:12.911867','2024-05-06 19:06:12.911867','BR','country',1,775,NULL,'Country'),('2024-05-06 19:06:12.929263','2024-05-06 19:06:12.929263','IO','country',1,776,NULL,'Country'),('2024-05-06 19:06:12.946024','2024-05-06 19:06:12.946024','BN','country',1,777,NULL,'Country'),('2024-05-06 19:06:12.963311','2024-05-06 19:06:12.963311','BG','country',1,778,NULL,'Country'),('2024-05-06 19:06:12.982836','2024-05-06 19:06:12.982836','BF','country',1,779,NULL,'Country'),('2024-05-06 19:06:13.004298','2024-05-06 19:06:13.004298','BI','country',1,780,NULL,'Country'),('2024-05-06 19:06:13.025601','2024-05-06 19:06:13.025601','CV','country',1,781,NULL,'Country'),('2024-05-06 19:06:13.041960','2024-05-06 19:06:13.041960','KH','country',1,782,NULL,'Country'),('2024-05-06 19:06:13.055245','2024-05-06 19:06:13.055245','CM','country',1,783,NULL,'Country'),('2024-05-06 19:06:13.072210','2024-05-06 19:06:13.072210','CA','country',1,784,NULL,'Country'),('2024-05-06 19:06:13.088348','2024-05-06 19:06:13.088348','KY','country',1,785,NULL,'Country'),('2024-05-06 19:06:13.104693','2024-05-06 19:06:13.104693','CF','country',1,786,NULL,'Country'),('2024-05-06 19:06:13.122729','2024-05-06 19:06:13.122729','TD','country',1,787,NULL,'Country'),('2024-05-06 19:06:13.135508','2024-05-06 19:06:13.135508','CL','country',1,788,NULL,'Country'),('2024-05-06 19:06:13.151356','2024-05-06 19:06:13.151356','CN','country',1,789,NULL,'Country'),('2024-05-06 19:06:13.167352','2024-05-06 19:06:13.167352','CX','country',1,790,NULL,'Country'),('2024-05-06 19:06:13.183213','2024-05-06 19:06:13.183213','CC','country',1,791,NULL,'Country'),('2024-05-06 19:06:13.199225','2024-05-06 19:06:13.199225','CO','country',1,792,NULL,'Country'),('2024-05-06 19:06:13.218386','2024-05-06 19:06:13.218386','KM','country',1,793,NULL,'Country'),('2024-05-06 19:06:13.243456','2024-05-06 19:06:13.243456','CG','country',1,794,NULL,'Country'),('2024-05-06 19:06:13.260965','2024-05-06 19:06:13.260965','CD','country',1,795,NULL,'Country'),('2024-05-06 19:06:13.277912','2024-05-06 19:06:13.277912','CK','country',1,796,NULL,'Country'),('2024-05-06 19:06:13.309939','2024-05-06 19:06:13.309939','CR','country',1,797,NULL,'Country'),('2024-05-06 19:06:13.328699','2024-05-06 19:06:13.328699','CI','country',1,798,NULL,'Country'),('2024-05-06 19:06:13.342701','2024-05-06 19:06:13.342701','HR','country',1,799,NULL,'Country'),('2024-05-06 19:06:13.355753','2024-05-06 19:06:13.355753','CU','country',1,800,NULL,'Country'),('2024-05-06 19:06:13.373639','2024-05-06 19:06:13.373639','CW','country',1,801,NULL,'Country'),('2024-05-06 19:06:13.387763','2024-05-06 19:06:13.387763','CY','country',1,802,NULL,'Country'),('2024-05-06 19:06:13.400140','2024-05-06 19:06:13.400140','CZ','country',1,803,NULL,'Country'),('2024-05-06 19:06:13.417006','2024-05-06 19:06:13.417006','DK','country',1,804,NULL,'Country'),('2024-05-06 19:06:13.443611','2024-05-06 19:06:13.443611','DJ','country',1,805,NULL,'Country'),('2024-05-06 19:06:13.460664','2024-05-06 19:06:13.460664','DM','country',1,806,NULL,'Country'),('2024-05-06 19:06:13.488542','2024-05-06 19:06:13.488542','DO','country',1,807,NULL,'Country'),('2024-05-06 19:06:13.510182','2024-05-06 19:06:13.510182','EC','country',1,808,NULL,'Country'),('2024-05-06 19:06:13.529277','2024-05-06 19:06:13.529277','EG','country',1,809,NULL,'Country'),('2024-05-06 19:06:13.547388','2024-05-06 19:06:13.547388','SV','country',1,810,NULL,'Country'),('2024-05-06 19:06:13.566694','2024-05-06 19:06:13.566694','GQ','country',1,811,NULL,'Country'),('2024-05-06 19:06:13.584053','2024-05-06 19:06:13.584053','ER','country',1,812,NULL,'Country'),('2024-05-06 19:06:13.604577','2024-05-06 19:06:13.604577','EE','country',1,813,NULL,'Country'),('2024-05-06 19:06:13.621258','2024-05-06 19:06:13.621258','SZ','country',1,814,NULL,'Country'),('2024-05-06 19:06:13.639076','2024-05-06 19:06:13.639076','ET','country',1,815,NULL,'Country'),('2024-05-06 19:06:13.658611','2024-05-06 19:06:13.658611','FK','country',1,816,NULL,'Country'),('2024-05-06 19:06:13.683620','2024-05-06 19:06:13.683620','FO','country',1,817,NULL,'Country'),('2024-05-06 19:06:13.699554','2024-05-06 19:06:13.699554','FJ','country',1,818,NULL,'Country'),('2024-05-06 19:06:13.726930','2024-05-06 19:06:13.726930','FI','country',1,819,NULL,'Country'),('2024-05-06 19:06:13.744666','2024-05-06 19:06:13.744666','FR','country',1,820,NULL,'Country'),('2024-05-06 19:06:13.767391','2024-05-06 19:06:13.767391','GF','country',1,821,NULL,'Country'),('2024-05-06 19:06:13.784835','2024-05-06 19:06:13.784835','PF','country',1,822,NULL,'Country'),('2024-05-06 19:06:13.798330','2024-05-06 19:06:13.798330','TF','country',1,823,NULL,'Country'),('2024-05-06 19:06:13.811301','2024-05-06 19:06:13.811301','GA','country',1,824,NULL,'Country'),('2024-05-06 19:06:13.827623','2024-05-06 19:06:13.827623','GM','country',1,825,NULL,'Country'),('2024-05-06 19:06:13.846001','2024-05-06 19:06:13.846001','GE','country',1,826,NULL,'Country'),('2024-05-06 19:06:13.861656','2024-05-06 19:06:13.861656','DE','country',1,827,NULL,'Country'),('2024-05-06 19:06:13.877506','2024-05-06 19:06:13.877506','GH','country',1,828,NULL,'Country'),('2024-05-06 19:06:13.893195','2024-05-06 19:06:13.893195','GI','country',1,829,NULL,'Country'),('2024-05-06 19:06:13.908734','2024-05-06 19:06:13.908734','GR','country',1,830,NULL,'Country'),('2024-05-06 19:06:13.926645','2024-05-06 19:06:13.926645','GL','country',1,831,NULL,'Country'),('2024-05-06 19:06:13.955774','2024-05-06 19:06:13.955774','GD','country',1,832,NULL,'Country'),('2024-05-06 19:06:13.973872','2024-05-06 19:06:13.973872','GP','country',1,833,NULL,'Country'),('2024-05-06 19:06:13.996123','2024-05-06 19:06:13.996123','GU','country',1,834,NULL,'Country'),('2024-05-06 19:06:14.016684','2024-05-06 19:06:14.016684','GT','country',1,835,NULL,'Country'),('2024-05-06 19:06:14.037934','2024-05-06 19:06:14.037934','GG','country',1,836,NULL,'Country'),('2024-05-06 19:06:14.068373','2024-05-06 19:06:14.068373','GN','country',1,837,NULL,'Country'),('2024-05-06 19:06:14.085767','2024-05-06 19:06:14.085767','GW','country',1,838,NULL,'Country'),('2024-05-06 19:06:14.100623','2024-05-06 19:06:14.100623','GY','country',1,839,NULL,'Country'),('2024-05-06 19:06:14.120046','2024-05-06 19:06:14.120046','HT','country',1,840,NULL,'Country'),('2024-05-06 19:06:14.147151','2024-05-06 19:06:14.147151','HM','country',1,841,NULL,'Country'),('2024-05-06 19:06:14.169895','2024-05-06 19:06:14.169895','VA','country',1,842,NULL,'Country'),('2024-05-06 19:06:14.192503','2024-05-06 19:06:14.192503','HN','country',1,843,NULL,'Country'),('2024-05-06 19:06:14.210563','2024-05-06 19:06:14.210563','HK','country',1,844,NULL,'Country'),('2024-05-06 19:06:14.228644','2024-05-06 19:06:14.228644','HU','country',1,845,NULL,'Country'),('2024-05-06 19:06:14.279352','2024-05-06 19:06:14.279352','IS','country',1,846,NULL,'Country'),('2024-05-06 19:06:14.296480','2024-05-06 19:06:14.296480','IN','country',1,847,NULL,'Country'),('2024-05-06 19:06:14.315203','2024-05-06 19:06:14.315203','ID','country',1,848,NULL,'Country'),('2024-05-06 19:06:14.346162','2024-05-06 19:06:14.346162','IR','country',1,849,NULL,'Country'),('2024-05-06 19:06:14.377778','2024-05-06 19:06:14.377778','IQ','country',1,850,NULL,'Country'),('2024-05-06 19:06:14.399209','2024-05-06 19:06:14.399209','IE','country',1,851,NULL,'Country'),('2024-05-06 19:06:14.417032','2024-05-06 19:06:14.417032','IM','country',1,852,NULL,'Country'),('2024-05-06 19:06:14.437984','2024-05-06 19:06:14.437984','IL','country',1,853,NULL,'Country'),('2024-05-06 19:06:14.454790','2024-05-06 19:06:14.454790','IT','country',1,854,NULL,'Country'),('2024-05-06 19:06:14.470624','2024-05-06 19:06:14.470624','JM','country',1,855,NULL,'Country'),('2024-05-06 19:06:14.484879','2024-05-06 19:06:14.484879','JP','country',1,856,NULL,'Country'),('2024-05-06 19:06:14.501109','2024-05-06 19:06:14.501109','JE','country',1,857,NULL,'Country'),('2024-05-06 19:06:14.517431','2024-05-06 19:06:14.517431','JO','country',1,858,NULL,'Country'),('2024-05-06 19:06:14.536774','2024-05-06 19:06:14.536774','KZ','country',1,859,NULL,'Country'),('2024-05-06 19:06:14.558434','2024-05-06 19:06:14.558434','KE','country',1,860,NULL,'Country'),('2024-05-06 19:06:14.575156','2024-05-06 19:06:14.575156','KI','country',1,861,NULL,'Country'),('2024-05-06 19:06:14.602604','2024-05-06 19:06:14.602604','KP','country',1,862,NULL,'Country'),('2024-05-06 19:06:14.616048','2024-05-06 19:06:14.616048','KR','country',1,863,NULL,'Country'),('2024-05-06 19:06:14.630992','2024-05-06 19:06:14.630992','KW','country',1,864,NULL,'Country'),('2024-05-06 19:06:14.648260','2024-05-06 19:06:14.648260','KG','country',1,865,NULL,'Country'),('2024-05-06 19:06:14.673003','2024-05-06 19:06:14.673003','LA','country',1,866,NULL,'Country'),('2024-05-06 19:06:14.708127','2024-05-06 19:06:14.708127','LV','country',1,867,NULL,'Country'),('2024-05-06 19:06:14.728213','2024-05-06 19:06:14.728213','LB','country',1,868,NULL,'Country'),('2024-05-06 19:06:14.747826','2024-05-06 19:06:14.747826','LS','country',1,869,NULL,'Country'),('2024-05-06 19:06:14.776613','2024-05-06 19:06:14.776613','LR','country',1,870,NULL,'Country'),('2024-05-06 19:06:14.801240','2024-05-06 19:06:14.801240','LY','country',1,871,NULL,'Country'),('2024-05-06 19:06:14.820952','2024-05-06 19:06:14.820952','LI','country',1,872,NULL,'Country'),('2024-05-06 19:06:14.838389','2024-05-06 19:06:14.838389','LT','country',1,873,NULL,'Country'),('2024-05-06 19:06:14.857301','2024-05-06 19:06:14.857301','LU','country',1,874,NULL,'Country'),('2024-05-06 19:06:14.884567','2024-05-06 19:06:14.884567','MO','country',1,875,NULL,'Country'),('2024-05-06 19:06:14.907968','2024-05-06 19:06:14.907968','MK','country',1,876,NULL,'Country'),('2024-05-06 19:06:14.924539','2024-05-06 19:06:14.924539','MG','country',1,877,NULL,'Country'),('2024-05-06 19:06:14.939784','2024-05-06 19:06:14.939784','MW','country',1,878,NULL,'Country'),('2024-05-06 19:06:14.957711','2024-05-06 19:06:14.957711','MY','country',1,879,NULL,'Country'),('2024-05-06 19:06:14.976417','2024-05-06 19:06:14.976417','MV','country',1,880,NULL,'Country'),('2024-05-06 19:06:14.998261','2024-05-06 19:06:14.998261','ML','country',1,881,NULL,'Country'),('2024-05-06 19:06:15.032137','2024-05-06 19:06:15.032137','MT','country',1,882,NULL,'Country'),('2024-05-06 19:06:15.048719','2024-05-06 19:06:15.048719','MH','country',1,883,NULL,'Country'),('2024-05-06 19:06:15.066400','2024-05-06 19:06:15.066400','MQ','country',1,884,NULL,'Country'),('2024-05-06 19:06:15.084402','2024-05-06 19:06:15.084402','MR','country',1,885,NULL,'Country'),('2024-05-06 19:06:15.101749','2024-05-06 19:06:15.101749','MU','country',1,886,NULL,'Country'),('2024-05-06 19:06:15.125073','2024-05-06 19:06:15.125073','YT','country',1,887,NULL,'Country'),('2024-05-06 19:06:15.142034','2024-05-06 19:06:15.142034','MX','country',1,888,NULL,'Country'),('2024-05-06 19:06:15.158747','2024-05-06 19:06:15.158747','FM','country',1,889,NULL,'Country'),('2024-05-06 19:06:15.177604','2024-05-06 19:06:15.177604','MD','country',1,890,NULL,'Country'),('2024-05-06 19:06:15.203177','2024-05-06 19:06:15.203177','MC','country',1,891,NULL,'Country'),('2024-05-06 19:06:15.221100','2024-05-06 19:06:15.221100','MN','country',1,892,NULL,'Country'),('2024-05-06 19:06:15.238645','2024-05-06 19:06:15.238645','ME','country',1,893,NULL,'Country'),('2024-05-06 19:06:15.256987','2024-05-06 19:06:15.256987','MS','country',1,894,NULL,'Country'),('2024-05-06 19:06:15.273524','2024-05-06 19:06:15.273524','MA','country',1,895,NULL,'Country'),('2024-05-06 19:06:15.290207','2024-05-06 19:06:15.290207','MZ','country',1,896,NULL,'Country'),('2024-05-06 19:06:15.307254','2024-05-06 19:06:15.307254','MM','country',1,897,NULL,'Country'),('2024-05-06 19:06:15.324817','2024-05-06 19:06:15.324817','NA','country',1,898,NULL,'Country'),('2024-05-06 19:06:15.342057','2024-05-06 19:06:15.342057','NR','country',1,899,NULL,'Country'),('2024-05-06 19:06:15.360891','2024-05-06 19:06:15.360891','NP','country',1,900,NULL,'Country'),('2024-05-06 19:06:15.377225','2024-05-06 19:06:15.377225','NL','country',1,901,NULL,'Country'),('2024-05-06 19:06:15.392599','2024-05-06 19:06:15.392599','NC','country',1,902,NULL,'Country'),('2024-05-06 19:06:15.408588','2024-05-06 19:06:15.408588','NZ','country',1,903,NULL,'Country'),('2024-05-06 19:06:15.432169','2024-05-06 19:06:15.432169','NI','country',1,904,NULL,'Country'),('2024-05-06 19:06:15.456049','2024-05-06 19:06:15.456049','NE','country',1,905,NULL,'Country'),('2024-05-06 19:06:15.470098','2024-05-06 19:06:15.470098','NG','country',1,906,NULL,'Country'),('2024-05-06 19:06:15.483483','2024-05-06 19:06:15.483483','NU','country',1,907,NULL,'Country'),('2024-05-06 19:06:15.495164','2024-05-06 19:06:15.495164','NF','country',1,908,NULL,'Country'),('2024-05-06 19:06:15.507258','2024-05-06 19:06:15.507258','MP','country',1,909,NULL,'Country'),('2024-05-06 19:06:15.520701','2024-05-06 19:06:15.520701','NO','country',1,910,NULL,'Country'),('2024-05-06 19:06:15.536770','2024-05-06 19:06:15.536770','OM','country',1,911,NULL,'Country'),('2024-05-06 19:06:15.549304','2024-05-06 19:06:15.549304','PK','country',1,912,NULL,'Country'),('2024-05-06 19:06:15.561638','2024-05-06 19:06:15.561638','PW','country',1,913,NULL,'Country'),('2024-05-06 19:06:15.580150','2024-05-06 19:06:15.580150','PS','country',1,914,NULL,'Country'),('2024-05-06 19:06:15.597593','2024-05-06 19:06:15.597593','PA','country',1,915,NULL,'Country'),('2024-05-06 19:06:15.617131','2024-05-06 19:06:15.617131','PG','country',1,916,NULL,'Country'),('2024-05-06 19:06:15.634823','2024-05-06 19:06:15.634823','PY','country',1,917,NULL,'Country'),('2024-05-06 19:06:15.658118','2024-05-06 19:06:15.658118','PE','country',1,918,NULL,'Country'),('2024-05-06 19:06:15.679905','2024-05-06 19:06:15.679905','PH','country',1,919,NULL,'Country'),('2024-05-06 19:06:15.705360','2024-05-06 19:06:15.705360','PN','country',1,920,NULL,'Country'),('2024-05-06 19:06:15.722232','2024-05-06 19:06:15.722232','PL','country',1,921,NULL,'Country'),('2024-05-06 19:06:15.741809','2024-05-06 19:06:15.741809','PT','country',1,922,NULL,'Country'),('2024-05-06 19:06:15.757669','2024-05-06 19:06:15.757669','PR','country',1,923,NULL,'Country'),('2024-05-06 19:06:15.774651','2024-05-06 19:06:15.774651','QA','country',1,924,NULL,'Country'),('2024-05-06 19:06:15.787555','2024-05-06 19:06:15.787555','RE','country',1,925,NULL,'Country'),('2024-05-06 19:06:15.813761','2024-05-06 19:06:15.813761','RO','country',1,926,NULL,'Country'),('2024-05-06 19:06:15.830804','2024-05-06 19:06:15.830804','RU','country',1,927,NULL,'Country'),('2024-05-06 19:06:15.847725','2024-05-06 19:06:15.847725','RW','country',1,928,NULL,'Country'),('2024-05-06 19:06:15.864938','2024-05-06 19:06:15.864938','BL','country',1,929,NULL,'Country'),('2024-05-06 19:06:15.880210','2024-05-06 19:06:15.880210','SH','country',1,930,NULL,'Country'),('2024-05-06 19:06:15.908529','2024-05-06 19:06:15.908529','KN','country',1,931,NULL,'Country'),('2024-05-06 19:06:15.929098','2024-05-06 19:06:15.929098','LC','country',1,932,NULL,'Country'),('2024-05-06 19:06:15.959440','2024-05-06 19:06:15.959440','MF','country',1,933,NULL,'Country'),('2024-05-06 19:06:15.991966','2024-05-06 19:06:15.991966','PM','country',1,934,NULL,'Country'),('2024-05-06 19:06:16.011429','2024-05-06 19:06:16.011429','VC','country',1,935,NULL,'Country'),('2024-05-06 19:06:16.048639','2024-05-06 19:06:16.048639','WS','country',1,936,NULL,'Country'),('2024-05-06 19:06:16.071665','2024-05-06 19:06:16.071665','SM','country',1,937,NULL,'Country'),('2024-05-06 19:06:16.121524','2024-05-06 19:06:16.121524','ST','country',1,938,NULL,'Country'),('2024-05-06 19:06:16.138815','2024-05-06 19:06:16.138815','SA','country',1,939,NULL,'Country'),('2024-05-06 19:06:16.156964','2024-05-06 19:06:16.156964','SN','country',1,940,NULL,'Country'),('2024-05-06 19:06:16.208453','2024-05-06 19:06:16.208453','RS','country',1,941,NULL,'Country'),('2024-05-06 19:06:16.233521','2024-05-06 19:06:16.233521','SC','country',1,942,NULL,'Country'),('2024-05-06 19:06:16.268276','2024-05-06 19:06:16.268276','SL','country',1,943,NULL,'Country'),('2024-05-06 19:06:16.289788','2024-05-06 19:06:16.289788','SG','country',1,944,NULL,'Country'),('2024-05-06 19:06:16.304586','2024-05-06 19:06:16.304586','SX','country',1,945,NULL,'Country'),('2024-05-06 19:06:16.325898','2024-05-06 19:06:16.325898','SK','country',1,946,NULL,'Country'),('2024-05-06 19:06:16.351727','2024-05-06 19:06:16.351727','SI','country',1,947,NULL,'Country'),('2024-05-06 19:06:16.371678','2024-05-06 19:06:16.371678','SB','country',1,948,NULL,'Country'),('2024-05-06 19:06:16.408238','2024-05-06 19:06:16.408238','SO','country',1,949,NULL,'Country'),('2024-05-06 19:06:16.426041','2024-05-06 19:06:16.426041','ZA','country',1,950,NULL,'Country'),('2024-05-06 19:06:16.465736','2024-05-06 19:06:16.465736','GS','country',1,951,NULL,'Country'),('2024-05-06 19:06:16.486875','2024-05-06 19:06:16.486875','SS','country',1,952,NULL,'Country'),('2024-05-06 19:06:16.505056','2024-05-06 19:06:16.505056','ES','country',1,953,NULL,'Country'),('2024-05-06 19:06:16.525847','2024-05-06 19:06:16.525847','LK','country',1,954,NULL,'Country'),('2024-05-06 19:06:16.543248','2024-05-06 19:06:16.543248','SD','country',1,955,NULL,'Country'),('2024-05-06 19:06:16.576700','2024-05-06 19:06:16.576700','SR','country',1,956,NULL,'Country'),('2024-05-06 19:06:16.609328','2024-05-06 19:06:16.609328','SJ','country',1,957,NULL,'Country'),('2024-05-06 19:06:16.635564','2024-05-06 19:06:16.635564','SE','country',1,958,NULL,'Country'),('2024-05-06 19:06:16.667198','2024-05-06 19:06:16.667198','CH','country',1,959,NULL,'Country'),('2024-05-06 19:06:16.693088','2024-05-06 19:06:16.693088','SY','country',1,960,NULL,'Country'),('2024-05-06 19:06:16.710636','2024-05-06 19:06:16.710636','TW','country',1,961,NULL,'Country'),('2024-05-06 19:06:16.729832','2024-05-06 19:06:16.729832','TJ','country',1,962,NULL,'Country'),('2024-05-06 19:06:16.749992','2024-05-06 19:06:16.749992','TZ','country',1,963,NULL,'Country'),('2024-05-06 19:06:16.780880','2024-05-06 19:06:16.780880','TH','country',1,964,NULL,'Country'),('2024-05-06 19:06:16.795267','2024-05-06 19:06:16.795267','TL','country',1,965,NULL,'Country'),('2024-05-06 19:06:16.810278','2024-05-06 19:06:16.810278','TG','country',1,966,NULL,'Country'),('2024-05-06 19:06:16.823263','2024-05-06 19:06:16.823263','TK','country',1,967,NULL,'Country'),('2024-05-06 19:06:16.838876','2024-05-06 19:06:16.838876','TO','country',1,968,NULL,'Country'),('2024-05-06 19:06:16.852149','2024-05-06 19:06:16.852149','TT','country',1,969,NULL,'Country'),('2024-05-06 19:06:16.868293','2024-05-06 19:06:16.868293','TN','country',1,970,NULL,'Country'),('2024-05-06 19:06:16.880792','2024-05-06 19:06:16.880792','TR','country',1,971,NULL,'Country'),('2024-05-06 19:06:16.897609','2024-05-06 19:06:16.897609','TM','country',1,972,NULL,'Country'),('2024-05-06 19:06:16.911708','2024-05-06 19:06:16.911708','TC','country',1,973,NULL,'Country'),('2024-05-06 19:06:16.930738','2024-05-06 19:06:16.930738','TV','country',1,974,NULL,'Country'),('2024-05-06 19:06:16.945222','2024-05-06 19:06:16.945222','UG','country',1,975,NULL,'Country'),('2024-05-06 19:06:16.957364','2024-05-06 19:06:16.957364','UA','country',1,976,NULL,'Country'),('2024-05-06 19:06:16.975754','2024-05-06 19:06:16.975754','AE','country',1,977,NULL,'Country'),('2024-05-06 19:06:17.004929','2024-05-06 19:06:17.004929','GB','country',1,978,NULL,'Country'),('2024-05-06 19:06:17.023797','2024-05-06 19:06:17.023797','US','country',1,979,NULL,'Country'),('2024-05-06 19:06:17.044188','2024-05-06 19:06:17.044188','UM','country',1,980,NULL,'Country'),('2024-05-06 19:06:17.079235','2024-05-06 19:06:17.079235','UY','country',1,981,NULL,'Country'),('2024-05-06 19:06:17.097999','2024-05-06 19:06:17.097999','UZ','country',1,982,NULL,'Country'),('2024-05-06 19:06:17.145141','2024-05-06 19:06:17.145141','VU','country',1,983,NULL,'Country'),('2024-05-06 19:06:17.162447','2024-05-06 19:06:17.162447','VE','country',1,984,NULL,'Country'),('2024-05-06 19:06:17.184534','2024-05-06 19:06:17.184534','VN','country',1,985,NULL,'Country'),('2024-05-06 19:06:17.206207','2024-05-06 19:06:17.206207','VG','country',1,986,NULL,'Country'),('2024-05-06 19:06:17.223722','2024-05-06 19:06:17.223722','VI','country',1,987,NULL,'Country'),('2024-05-06 19:06:17.240358','2024-05-06 19:06:17.240358','WF','country',1,988,NULL,'Country'),('2024-05-06 19:06:17.260534','2024-05-06 19:06:17.260534','EH','country',1,989,NULL,'Country'),('2024-05-06 19:06:17.279247','2024-05-06 19:06:17.279247','YE','country',1,990,NULL,'Country'),('2024-05-06 19:06:17.300664','2024-05-06 19:06:17.300664','ZM','country',1,991,NULL,'Country'),('2024-05-06 19:06:17.336749','2024-05-06 19:06:17.336749','ZW','country',1,992,NULL,'Country'),('2024-05-06 19:07:59.570060','2024-05-06 19:07:59.570060','AF','country',1,993,NULL,'Country'),('2024-05-06 19:07:59.590373','2024-05-06 19:07:59.590373','AX','country',1,994,NULL,'Country'),('2024-05-06 19:07:59.611283','2024-05-06 19:07:59.611283','AL','country',1,995,NULL,'Country'),('2024-05-06 19:07:59.631819','2024-05-06 19:07:59.631819','DZ','country',1,996,NULL,'Country'),('2024-05-06 19:07:59.649268','2024-05-06 19:07:59.649268','AS','country',1,997,NULL,'Country'),('2024-05-06 19:07:59.682733','2024-05-06 19:07:59.682733','AD','country',1,998,NULL,'Country'),('2024-05-06 19:07:59.700643','2024-05-06 19:07:59.700643','AO','country',1,999,NULL,'Country'),('2024-05-06 19:07:59.715559','2024-05-06 19:07:59.715559','AI','country',1,1000,NULL,'Country'),('2024-05-06 19:07:59.731599','2024-05-06 19:07:59.731599','AG','country',1,1001,NULL,'Country'),('2024-05-06 19:07:59.748500','2024-05-06 19:07:59.748500','AR','country',1,1002,NULL,'Country'),('2024-05-06 19:07:59.770029','2024-05-06 19:07:59.770029','AM','country',1,1003,NULL,'Country'),('2024-05-06 19:07:59.796771','2024-05-06 19:07:59.796771','AW','country',1,1004,NULL,'Country'),('2024-05-06 19:07:59.813917','2024-05-06 19:07:59.813917','AU','country',1,1005,NULL,'Country'),('2024-05-06 19:07:59.829293','2024-05-06 19:07:59.829293','AT','country',1,1006,NULL,'Country'),('2024-05-06 19:07:59.845034','2024-05-06 19:07:59.845034','AZ','country',1,1007,NULL,'Country'),('2024-05-06 19:07:59.862256','2024-05-06 19:07:59.862256','BS','country',1,1008,NULL,'Country'),('2024-05-06 19:07:59.878359','2024-05-06 19:07:59.878359','BH','country',1,1009,NULL,'Country'),('2024-05-06 19:07:59.893734','2024-05-06 19:07:59.893734','BD','country',1,1010,NULL,'Country'),('2024-05-06 19:07:59.908834','2024-05-06 19:07:59.908834','BB','country',1,1011,NULL,'Country'),('2024-05-06 19:07:59.933570','2024-05-06 19:07:59.933570','BY','country',1,1012,NULL,'Country'),('2024-05-06 19:07:59.947534','2024-05-06 19:07:59.947534','BE','country',1,1013,NULL,'Country'),('2024-05-06 19:07:59.961894','2024-05-06 19:07:59.961894','BZ','country',1,1014,NULL,'Country'),('2024-05-06 19:07:59.980936','2024-05-06 19:07:59.980936','BJ','country',1,1015,NULL,'Country'),('2024-05-06 19:07:59.999365','2024-05-06 19:07:59.999365','BM','country',1,1016,NULL,'Country'),('2024-05-06 19:08:00.021219','2024-05-06 19:08:00.021219','BT','country',1,1017,NULL,'Country'),('2024-05-06 19:08:00.045326','2024-05-06 19:08:00.045326','BO','country',1,1018,NULL,'Country'),('2024-05-06 19:08:00.067259','2024-05-06 19:08:00.067259','BQ','country',1,1019,NULL,'Country'),('2024-05-06 19:08:00.082123','2024-05-06 19:08:00.082123','BA','country',1,1020,NULL,'Country'),('2024-05-06 19:08:00.095092','2024-05-06 19:08:00.095092','BW','country',1,1021,NULL,'Country'),('2024-05-06 19:08:00.111771','2024-05-06 19:08:00.111771','BV','country',1,1022,NULL,'Country'),('2024-05-06 19:08:00.124889','2024-05-06 19:08:00.124889','BR','country',1,1023,NULL,'Country'),('2024-05-06 19:08:00.138153','2024-05-06 19:08:00.138153','IO','country',1,1024,NULL,'Country'),('2024-05-06 19:08:00.151261','2024-05-06 19:08:00.151261','BN','country',1,1025,NULL,'Country'),('2024-05-06 19:08:00.166463','2024-05-06 19:08:00.166463','BG','country',1,1026,NULL,'Country'),('2024-05-06 19:08:00.182311','2024-05-06 19:08:00.182311','BF','country',1,1027,NULL,'Country'),('2024-05-06 19:08:00.195807','2024-05-06 19:08:00.195807','BI','country',1,1028,NULL,'Country'),('2024-05-06 19:08:00.209079','2024-05-06 19:08:00.209079','CV','country',1,1029,NULL,'Country'),('2024-05-06 19:08:00.222589','2024-05-06 19:08:00.222589','KH','country',1,1030,NULL,'Country'),('2024-05-06 19:08:00.235389','2024-05-06 19:08:00.235389','CM','country',1,1031,NULL,'Country'),('2024-05-06 19:08:00.248500','2024-05-06 19:08:00.248500','CA','country',1,1032,NULL,'Country'),('2024-05-06 19:08:00.261721','2024-05-06 19:08:00.261721','KY','country',1,1033,NULL,'Country'),('2024-05-06 19:08:00.280343','2024-05-06 19:08:00.280343','CF','country',1,1034,NULL,'Country'),('2024-05-06 19:08:00.295032','2024-05-06 19:08:00.295032','TD','country',1,1035,NULL,'Country'),('2024-05-06 19:08:00.307409','2024-05-06 19:08:00.307409','CL','country',1,1036,NULL,'Country'),('2024-05-06 19:08:00.321576','2024-05-06 19:08:00.321576','CN','country',1,1037,NULL,'Country'),('2024-05-06 19:08:00.335655','2024-05-06 19:08:00.335655','CX','country',1,1038,NULL,'Country'),('2024-05-06 19:08:00.349343','2024-05-06 19:08:00.349343','CC','country',1,1039,NULL,'Country'),('2024-05-06 19:08:00.379679','2024-05-06 19:08:00.379679','CO','country',1,1040,NULL,'Country'),('2024-05-06 19:08:00.395675','2024-05-06 19:08:00.395675','KM','country',1,1041,NULL,'Country'),('2024-05-06 19:08:00.408086','2024-05-06 19:08:00.408086','CG','country',1,1042,NULL,'Country'),('2024-05-06 19:08:00.422877','2024-05-06 19:08:00.422877','CD','country',1,1043,NULL,'Country'),('2024-05-06 19:08:00.435964','2024-05-06 19:08:00.435964','CK','country',1,1044,NULL,'Country'),('2024-05-06 19:08:00.448759','2024-05-06 19:08:00.448759','CR','country',1,1045,NULL,'Country'),('2024-05-06 19:08:00.462549','2024-05-06 19:08:00.462549','CI','country',1,1046,NULL,'Country'),('2024-05-06 19:08:00.476156','2024-05-06 19:08:00.476156','HR','country',1,1047,NULL,'Country'),('2024-05-06 19:08:00.488512','2024-05-06 19:08:00.488512','CU','country',1,1048,NULL,'Country'),('2024-05-06 19:08:00.504413','2024-05-06 19:08:00.504413','CW','country',1,1049,NULL,'Country'),('2024-05-06 19:08:00.518275','2024-05-06 19:08:00.518275','CY','country',1,1050,NULL,'Country'),('2024-05-06 19:08:00.533755','2024-05-06 19:08:00.533755','CZ','country',1,1051,NULL,'Country'),('2024-05-06 19:08:00.560745','2024-05-06 19:08:00.560745','DK','country',1,1052,NULL,'Country'),('2024-05-06 19:08:00.578677','2024-05-06 19:08:00.578677','DJ','country',1,1053,NULL,'Country'),('2024-05-06 19:08:00.598501','2024-05-06 19:08:00.598501','DM','country',1,1054,NULL,'Country'),('2024-05-06 19:08:00.613520','2024-05-06 19:08:00.613520','DO','country',1,1055,NULL,'Country'),('2024-05-06 19:08:00.647053','2024-05-06 19:08:00.647053','EC','country',1,1056,NULL,'Country'),('2024-05-06 19:08:00.664833','2024-05-06 19:08:00.664833','EG','country',1,1057,NULL,'Country'),('2024-05-06 19:08:00.684691','2024-05-06 19:08:00.684691','SV','country',1,1058,NULL,'Country'),('2024-05-06 19:08:00.699320','2024-05-06 19:08:00.699320','GQ','country',1,1059,NULL,'Country'),('2024-05-06 19:08:00.713445','2024-05-06 19:08:00.713445','ER','country',1,1060,NULL,'Country'),('2024-05-06 19:08:00.726508','2024-05-06 19:08:00.726508','EE','country',1,1061,NULL,'Country'),('2024-05-06 19:08:00.740201','2024-05-06 19:08:00.740201','SZ','country',1,1062,NULL,'Country'),('2024-05-06 19:08:00.754593','2024-05-06 19:08:00.754593','ET','country',1,1063,NULL,'Country'),('2024-05-06 19:08:00.767688','2024-05-06 19:08:00.767688','FK','country',1,1064,NULL,'Country'),('2024-05-06 19:08:00.780653','2024-05-06 19:08:00.780653','FO','country',1,1065,NULL,'Country'),('2024-05-06 19:08:00.795039','2024-05-06 19:08:00.795039','FJ','country',1,1066,NULL,'Country'),('2024-05-06 19:08:00.809685','2024-05-06 19:08:00.809685','FI','country',1,1067,NULL,'Country'),('2024-05-06 19:08:00.822328','2024-05-06 19:08:00.822328','FR','country',1,1068,NULL,'Country'),('2024-05-06 19:08:00.843834','2024-05-06 19:08:00.843834','GF','country',1,1069,NULL,'Country'),('2024-05-06 19:08:00.857417','2024-05-06 19:08:00.857417','PF','country',1,1070,NULL,'Country'),('2024-05-06 19:08:00.875200','2024-05-06 19:08:00.875200','TF','country',1,1071,NULL,'Country'),('2024-05-06 19:08:00.892470','2024-05-06 19:08:00.892470','GA','country',1,1072,NULL,'Country'),('2024-05-06 19:08:00.909224','2024-05-06 19:08:00.909224','GM','country',1,1073,NULL,'Country'),('2024-05-06 19:08:00.931713','2024-05-06 19:08:00.931713','GE','country',1,1074,NULL,'Country'),('2024-05-06 19:08:00.950562','2024-05-06 19:08:00.950562','DE','country',1,1075,NULL,'Country'),('2024-05-06 19:08:00.970016','2024-05-06 19:08:00.970016','GH','country',1,1076,NULL,'Country'),('2024-05-06 19:08:00.987138','2024-05-06 19:08:00.987138','GI','country',1,1077,NULL,'Country'),('2024-05-06 19:08:01.004025','2024-05-06 19:08:01.004025','GR','country',1,1078,NULL,'Country'),('2024-05-06 19:08:01.016859','2024-05-06 19:08:01.016859','GL','country',1,1079,NULL,'Country'),('2024-05-06 19:08:01.030779','2024-05-06 19:08:01.030779','GD','country',1,1080,NULL,'Country'),('2024-05-06 19:08:01.049526','2024-05-06 19:08:01.049526','GP','country',1,1081,NULL,'Country'),('2024-05-06 19:08:01.068215','2024-05-06 19:08:01.068215','GU','country',1,1082,NULL,'Country'),('2024-05-06 19:08:01.098890','2024-05-06 19:08:01.098890','GT','country',1,1083,NULL,'Country'),('2024-05-06 19:08:01.112947','2024-05-06 19:08:01.112947','GG','country',1,1084,NULL,'Country'),('2024-05-06 19:08:01.128259','2024-05-06 19:08:01.128259','GN','country',1,1085,NULL,'Country'),('2024-05-06 19:08:01.148387','2024-05-06 19:08:01.148387','GW','country',1,1086,NULL,'Country'),('2024-05-06 19:08:01.173898','2024-05-06 19:08:01.173898','GY','country',1,1087,NULL,'Country'),('2024-05-06 19:08:01.202433','2024-05-06 19:08:01.202433','HT','country',1,1088,NULL,'Country'),('2024-05-06 19:08:01.241720','2024-05-06 19:08:01.241720','HM','country',1,1089,NULL,'Country'),('2024-05-06 19:08:01.260183','2024-05-06 19:08:01.260183','VA','country',1,1090,NULL,'Country'),('2024-05-06 19:08:01.277608','2024-05-06 19:08:01.277608','HN','country',1,1091,NULL,'Country'),('2024-05-06 19:08:01.296801','2024-05-06 19:08:01.296801','HK','country',1,1092,NULL,'Country'),('2024-05-06 19:08:01.318215','2024-05-06 19:08:01.318215','HU','country',1,1093,NULL,'Country'),('2024-05-06 19:08:01.337142','2024-05-06 19:08:01.337142','IS','country',1,1094,NULL,'Country'),('2024-05-06 19:08:01.355465','2024-05-06 19:08:01.355465','IN','country',1,1095,NULL,'Country'),('2024-05-06 19:08:01.385464','2024-05-06 19:08:01.385464','ID','country',1,1096,NULL,'Country'),('2024-05-06 19:08:01.419100','2024-05-06 19:08:01.419100','IR','country',1,1097,NULL,'Country'),('2024-05-06 19:08:01.453623','2024-05-06 19:08:01.453623','IQ','country',1,1098,NULL,'Country'),('2024-05-06 19:08:01.478698','2024-05-06 19:08:01.478698','IE','country',1,1099,NULL,'Country'),('2024-05-06 19:08:01.524598','2024-05-06 19:08:01.524598','IM','country',1,1100,NULL,'Country'),('2024-05-06 19:08:01.570272','2024-05-06 19:08:01.570272','IL','country',1,1101,NULL,'Country'),('2024-05-06 19:08:01.589070','2024-05-06 19:08:01.589070','IT','country',1,1102,NULL,'Country'),('2024-05-06 19:08:01.608453','2024-05-06 19:08:01.608453','JM','country',1,1103,NULL,'Country'),('2024-05-06 19:08:01.628733','2024-05-06 19:08:01.628733','JP','country',1,1104,NULL,'Country'),('2024-05-06 19:08:01.664020','2024-05-06 19:08:01.664020','JE','country',1,1105,NULL,'Country'),('2024-05-06 19:08:01.688770','2024-05-06 19:08:01.688770','JO','country',1,1106,NULL,'Country'),('2024-05-06 19:08:01.728824','2024-05-06 19:08:01.728824','KZ','country',1,1107,NULL,'Country'),('2024-05-06 19:08:01.745311','2024-05-06 19:08:01.745311','KE','country',1,1108,NULL,'Country'),('2024-05-06 19:08:01.765606','2024-05-06 19:08:01.765606','KI','country',1,1109,NULL,'Country'),('2024-05-06 19:08:01.785262','2024-05-06 19:08:01.785262','KP','country',1,1110,NULL,'Country'),('2024-05-06 19:08:01.813604','2024-05-06 19:08:01.813604','KR','country',1,1111,NULL,'Country'),('2024-05-06 19:08:01.846694','2024-05-06 19:08:01.846694','KW','country',1,1112,NULL,'Country'),('2024-05-06 19:08:01.870543','2024-05-06 19:08:01.870543','KG','country',1,1113,NULL,'Country'),('2024-05-06 19:08:01.927502','2024-05-06 19:08:01.927502','LA','country',1,1114,NULL,'Country'),('2024-05-06 19:08:01.968076','2024-05-06 19:08:01.968076','LV','country',1,1115,NULL,'Country'),('2024-05-06 19:08:01.992492','2024-05-06 19:08:01.992492','LB','country',1,1116,NULL,'Country'),('2024-05-06 19:08:02.029349','2024-05-06 19:08:02.029349','LS','country',1,1117,NULL,'Country'),('2024-05-06 19:08:02.076462','2024-05-06 19:08:02.076462','LR','country',1,1118,NULL,'Country'),('2024-05-06 19:08:02.112139','2024-05-06 19:08:02.112139','LY','country',1,1119,NULL,'Country'),('2024-05-06 19:08:02.137486','2024-05-06 19:08:02.137486','LI','country',1,1120,NULL,'Country'),('2024-05-06 19:08:02.160891','2024-05-06 19:08:02.160891','LT','country',1,1121,NULL,'Country'),('2024-05-06 19:08:02.188453','2024-05-06 19:08:02.188453','LU','country',1,1122,NULL,'Country'),('2024-05-06 19:08:02.228370','2024-05-06 19:08:02.228370','MO','country',1,1123,NULL,'Country'),('2024-05-06 19:08:02.266697','2024-05-06 19:08:02.266697','MK','country',1,1124,NULL,'Country'),('2024-05-06 19:08:02.291544','2024-05-06 19:08:02.291544','MG','country',1,1125,NULL,'Country'),('2024-05-06 19:08:02.319201','2024-05-06 19:08:02.319201','MW','country',1,1126,NULL,'Country'),('2024-05-06 19:08:02.344020','2024-05-06 19:08:02.344020','MY','country',1,1127,NULL,'Country'),('2024-05-06 19:08:02.379109','2024-05-06 19:08:02.379109','MV','country',1,1128,NULL,'Country'),('2024-05-06 19:08:02.445383','2024-05-06 19:08:02.445383','ML','country',1,1129,NULL,'Country'),('2024-05-06 19:08:02.466167','2024-05-06 19:08:02.466167','MT','country',1,1130,NULL,'Country'),('2024-05-06 19:08:02.499695','2024-05-06 19:08:02.499695','MH','country',1,1131,NULL,'Country'),('2024-05-06 19:08:02.538095','2024-05-06 19:08:02.538095','MQ','country',1,1132,NULL,'Country'),('2024-05-06 19:08:02.562696','2024-05-06 19:08:02.562696','MR','country',1,1133,NULL,'Country'),('2024-05-06 19:08:02.586716','2024-05-06 19:08:02.586716','MU','country',1,1134,NULL,'Country'),('2024-05-06 19:08:02.608469','2024-05-06 19:08:02.608469','YT','country',1,1135,NULL,'Country'),('2024-05-06 19:08:02.632734','2024-05-06 19:08:02.632734','MX','country',1,1136,NULL,'Country'),('2024-05-06 19:08:02.649631','2024-05-06 19:08:02.649631','FM','country',1,1137,NULL,'Country'),('2024-05-06 19:08:02.676552','2024-05-06 19:08:02.676552','MD','country',1,1138,NULL,'Country'),('2024-05-06 19:08:02.696910','2024-05-06 19:08:02.696910','MC','country',1,1139,NULL,'Country'),('2024-05-06 19:08:02.726605','2024-05-06 19:08:02.726605','MN','country',1,1140,NULL,'Country'),('2024-05-06 19:08:02.771639','2024-05-06 19:08:02.771639','ME','country',1,1141,NULL,'Country'),('2024-05-06 19:08:02.826452','2024-05-06 19:08:02.826452','MS','country',1,1142,NULL,'Country'),('2024-05-06 19:08:02.847316','2024-05-06 19:08:02.847316','MA','country',1,1143,NULL,'Country'),('2024-05-06 19:08:02.873069','2024-05-06 19:08:02.873069','MZ','country',1,1144,NULL,'Country'),('2024-05-06 19:08:02.908206','2024-05-06 19:08:02.908206','MM','country',1,1145,NULL,'Country'),('2024-05-06 19:08:02.939882','2024-05-06 19:08:02.939882','NA','country',1,1146,NULL,'Country'),('2024-05-06 19:08:02.983343','2024-05-06 19:08:02.983343','NR','country',1,1147,NULL,'Country'),('2024-05-06 19:08:03.010484','2024-05-06 19:08:03.010484','NP','country',1,1148,NULL,'Country'),('2024-05-06 19:08:03.041605','2024-05-06 19:08:03.041605','NL','country',1,1149,NULL,'Country'),('2024-05-06 19:08:03.079576','2024-05-06 19:08:03.079576','NC','country',1,1150,NULL,'Country'),('2024-05-06 19:08:03.107201','2024-05-06 19:08:03.107201','NZ','country',1,1151,NULL,'Country'),('2024-05-06 19:08:03.146153','2024-05-06 19:08:03.146153','NI','country',1,1152,NULL,'Country'),('2024-05-06 19:08:03.177376','2024-05-06 19:08:03.177376','NE','country',1,1153,NULL,'Country'),('2024-05-06 19:08:03.201420','2024-05-06 19:08:03.201420','NG','country',1,1154,NULL,'Country'),('2024-05-06 19:08:03.227387','2024-05-06 19:08:03.227387','NU','country',1,1155,NULL,'Country'),('2024-05-06 19:08:03.251946','2024-05-06 19:08:03.251946','NF','country',1,1156,NULL,'Country'),('2024-05-06 19:08:03.270924','2024-05-06 19:08:03.270924','MP','country',1,1157,NULL,'Country'),('2024-05-06 19:08:03.303443','2024-05-06 19:08:03.303443','NO','country',1,1158,NULL,'Country'),('2024-05-06 19:08:03.328505','2024-05-06 19:08:03.328505','OM','country',1,1159,NULL,'Country'),('2024-05-06 19:08:03.351908','2024-05-06 19:08:03.351908','PK','country',1,1160,NULL,'Country'),('2024-05-06 19:08:03.384251','2024-05-06 19:08:03.384251','PW','country',1,1161,NULL,'Country'),('2024-05-06 19:08:03.415825','2024-05-06 19:08:03.415825','PS','country',1,1162,NULL,'Country'),('2024-05-06 19:08:03.437364','2024-05-06 19:08:03.437364','PA','country',1,1163,NULL,'Country'),('2024-05-06 19:08:03.464779','2024-05-06 19:08:03.464779','PG','country',1,1164,NULL,'Country'),('2024-05-06 19:08:03.494525','2024-05-06 19:08:03.494525','PY','country',1,1165,NULL,'Country'),('2024-05-06 19:08:03.529402','2024-05-06 19:08:03.529402','PE','country',1,1166,NULL,'Country'),('2024-05-06 19:08:03.559116','2024-05-06 19:08:03.559116','PH','country',1,1167,NULL,'Country'),('2024-05-06 19:08:03.626358','2024-05-06 19:08:03.626358','PN','country',1,1168,NULL,'Country'),('2024-05-06 19:08:03.656187','2024-05-06 19:08:03.656187','PL','country',1,1169,NULL,'Country'),('2024-05-06 19:08:03.680389','2024-05-06 19:08:03.680389','PT','country',1,1170,NULL,'Country'),('2024-05-06 19:08:03.703319','2024-05-06 19:08:03.703319','PR','country',1,1171,NULL,'Country'),('2024-05-06 19:08:03.740237','2024-05-06 19:08:03.740237','QA','country',1,1172,NULL,'Country'),('2024-05-06 19:08:03.758650','2024-05-06 19:08:03.758650','RE','country',1,1173,NULL,'Country'),('2024-05-06 19:08:03.771962','2024-05-06 19:08:03.771962','RO','country',1,1174,NULL,'Country'),('2024-05-06 19:08:03.793111','2024-05-06 19:08:03.793111','RU','country',1,1175,NULL,'Country'),('2024-05-06 19:08:03.853275','2024-05-06 19:08:03.853275','RW','country',1,1176,NULL,'Country'),('2024-05-06 19:08:03.897144','2024-05-06 19:08:03.897144','BL','country',1,1177,NULL,'Country'),('2024-05-06 19:08:03.925955','2024-05-06 19:08:03.925955','SH','country',1,1178,NULL,'Country'),('2024-05-06 19:08:03.944712','2024-05-06 19:08:03.944712','KN','country',1,1179,NULL,'Country'),('2024-05-06 19:08:03.966909','2024-05-06 19:08:03.966909','LC','country',1,1180,NULL,'Country'),('2024-05-06 19:08:03.991458','2024-05-06 19:08:03.991458','MF','country',1,1181,NULL,'Country'),('2024-05-06 19:08:04.023546','2024-05-06 19:08:04.023546','PM','country',1,1182,NULL,'Country'),('2024-05-06 19:08:04.057856','2024-05-06 19:08:04.057856','VC','country',1,1183,NULL,'Country'),('2024-05-06 19:08:04.090251','2024-05-06 19:08:04.090251','WS','country',1,1184,NULL,'Country'),('2024-05-06 19:08:04.119293','2024-05-06 19:08:04.119293','SM','country',1,1185,NULL,'Country'),('2024-05-06 19:08:04.146757','2024-05-06 19:08:04.146757','ST','country',1,1186,NULL,'Country'),('2024-05-06 19:08:04.167510','2024-05-06 19:08:04.167510','SA','country',1,1187,NULL,'Country'),('2024-05-06 19:08:04.199210','2024-05-06 19:08:04.199210','SN','country',1,1188,NULL,'Country'),('2024-05-06 19:08:04.223313','2024-05-06 19:08:04.223313','RS','country',1,1189,NULL,'Country'),('2024-05-06 19:08:04.245751','2024-05-06 19:08:04.245751','SC','country',1,1190,NULL,'Country'),('2024-05-06 19:08:04.275386','2024-05-06 19:08:04.275386','SL','country',1,1191,NULL,'Country'),('2024-05-06 19:08:04.317266','2024-05-06 19:08:04.317266','SG','country',1,1192,NULL,'Country'),('2024-05-06 19:08:04.343947','2024-05-06 19:08:04.343947','SX','country',1,1193,NULL,'Country'),('2024-05-06 19:08:04.395295','2024-05-06 19:08:04.395295','SK','country',1,1194,NULL,'Country'),('2024-05-06 19:08:04.425570','2024-05-06 19:08:04.425570','SI','country',1,1195,NULL,'Country'),('2024-05-06 19:08:04.457577','2024-05-06 19:08:04.457577','SB','country',1,1196,NULL,'Country'),('2024-05-06 19:08:04.478050','2024-05-06 19:08:04.478050','SO','country',1,1197,NULL,'Country'),('2024-05-06 19:08:04.496275','2024-05-06 19:08:04.496275','ZA','country',1,1198,NULL,'Country'),('2024-05-06 19:08:04.528173','2024-05-06 19:08:04.528173','GS','country',1,1199,NULL,'Country'),('2024-05-06 19:08:04.553720','2024-05-06 19:08:04.553720','SS','country',1,1200,NULL,'Country'),('2024-05-06 19:08:04.583331','2024-05-06 19:08:04.583331','ES','country',1,1201,NULL,'Country'),('2024-05-06 19:08:04.601045','2024-05-06 19:08:04.601045','LK','country',1,1202,NULL,'Country'),('2024-05-06 19:08:04.615168','2024-05-06 19:08:04.615168','SD','country',1,1203,NULL,'Country'),('2024-05-06 19:08:04.633358','2024-05-06 19:08:04.633358','SR','country',1,1204,NULL,'Country'),('2024-05-06 19:08:04.653236','2024-05-06 19:08:04.653236','SJ','country',1,1205,NULL,'Country'),('2024-05-06 19:08:04.672791','2024-05-06 19:08:04.672791','SE','country',1,1206,NULL,'Country'),('2024-05-06 19:08:04.705511','2024-05-06 19:08:04.705511','CH','country',1,1207,NULL,'Country'),('2024-05-06 19:08:04.725458','2024-05-06 19:08:04.725458','SY','country',1,1208,NULL,'Country'),('2024-05-06 19:08:04.746372','2024-05-06 19:08:04.746372','TW','country',1,1209,NULL,'Country'),('2024-05-06 19:08:04.762752','2024-05-06 19:08:04.762752','TJ','country',1,1210,NULL,'Country'),('2024-05-06 19:08:04.791879','2024-05-06 19:08:04.791879','TZ','country',1,1211,NULL,'Country'),('2024-05-06 19:08:04.807823','2024-05-06 19:08:04.807823','TH','country',1,1212,NULL,'Country'),('2024-05-06 19:08:04.822999','2024-05-06 19:08:04.822999','TL','country',1,1213,NULL,'Country'),('2024-05-06 19:08:04.836713','2024-05-06 19:08:04.836713','TG','country',1,1214,NULL,'Country'),('2024-05-06 19:08:04.853652','2024-05-06 19:08:04.853652','TK','country',1,1215,NULL,'Country'),('2024-05-06 19:08:04.871483','2024-05-06 19:08:04.871483','TO','country',1,1216,NULL,'Country'),('2024-05-06 19:08:04.889613','2024-05-06 19:08:04.889613','TT','country',1,1217,NULL,'Country'),('2024-05-06 19:08:04.903296','2024-05-06 19:08:04.903296','TN','country',1,1218,NULL,'Country'),('2024-05-06 19:08:04.918666','2024-05-06 19:08:04.918666','TR','country',1,1219,NULL,'Country'),('2024-05-06 19:08:04.939911','2024-05-06 19:08:04.939911','TM','country',1,1220,NULL,'Country'),('2024-05-06 19:08:04.951385','2024-05-06 19:08:04.951385','TC','country',1,1221,NULL,'Country'),('2024-05-06 19:08:04.967902','2024-05-06 19:08:04.967902','TV','country',1,1222,NULL,'Country'),('2024-05-06 19:08:04.991081','2024-05-06 19:08:04.991081','UG','country',1,1223,NULL,'Country'),('2024-05-06 19:08:05.011805','2024-05-06 19:08:05.011805','UA','country',1,1224,NULL,'Country'),('2024-05-06 19:08:05.031870','2024-05-06 19:08:05.031870','AE','country',1,1225,NULL,'Country'),('2024-05-06 19:08:05.044410','2024-05-06 19:08:05.044410','GB','country',1,1226,NULL,'Country'),('2024-05-06 19:08:05.058770','2024-05-06 19:08:05.058770','US','country',1,1227,NULL,'Country'),('2024-05-06 19:08:05.072300','2024-05-06 19:08:05.072300','UM','country',1,1228,NULL,'Country'),('2024-05-06 19:08:05.084107','2024-05-06 19:08:05.084107','UY','country',1,1229,NULL,'Country'),('2024-05-06 19:08:05.097406','2024-05-06 19:08:05.097406','UZ','country',1,1230,NULL,'Country'),('2024-05-06 19:08:05.115281','2024-05-06 19:08:05.115281','VU','country',1,1231,NULL,'Country'),('2024-05-06 19:08:05.137464','2024-05-06 19:08:05.137464','VE','country',1,1232,NULL,'Country'),('2024-05-06 19:08:05.152784','2024-05-06 19:08:05.152784','VN','country',1,1233,NULL,'Country'),('2024-05-06 19:08:05.172219','2024-05-06 19:08:05.172219','VG','country',1,1234,NULL,'Country'),('2024-05-06 19:08:05.187540','2024-05-06 19:08:05.187540','VI','country',1,1235,NULL,'Country'),('2024-05-06 19:08:05.201514','2024-05-06 19:08:05.201514','WF','country',1,1236,NULL,'Country'),('2024-05-06 19:08:05.216096','2024-05-06 19:08:05.216096','EH','country',1,1237,NULL,'Country'),('2024-05-06 19:08:05.232148','2024-05-06 19:08:05.232148','YE','country',1,1238,NULL,'Country'),('2024-05-06 19:08:05.249690','2024-05-06 19:08:05.249690','ZM','country',1,1239,NULL,'Country'),('2024-05-06 19:08:05.263881','2024-05-06 19:08:05.263881','ZW','country',1,1240,NULL,'Country'),('2024-05-06 19:24:23.912283','2024-05-06 19:24:23.912283','AF','country',1,1241,NULL,'Country'),('2024-05-06 19:24:23.959489','2024-05-06 19:24:23.959489','AX','country',1,1242,NULL,'Country'),('2024-05-06 19:24:23.984366','2024-05-06 19:24:23.984366','AL','country',1,1243,NULL,'Country'),('2024-05-06 19:24:24.035012','2024-05-06 19:24:24.035012','DZ','country',1,1244,NULL,'Country'),('2024-05-06 19:24:24.066738','2024-05-06 19:24:24.066738','AS','country',1,1245,NULL,'Country'),('2024-05-06 19:24:24.091210','2024-05-06 19:24:24.091210','AD','country',1,1246,NULL,'Country'),('2024-05-06 19:24:24.112864','2024-05-06 19:24:24.112864','AO','country',1,1247,NULL,'Country'),('2024-05-06 19:24:24.130546','2024-05-06 19:24:24.130546','AI','country',1,1248,NULL,'Country'),('2024-05-06 19:24:24.148212','2024-05-06 19:24:24.148212','AG','country',1,1249,NULL,'Country'),('2024-05-06 19:24:24.168280','2024-05-06 19:24:24.168280','AR','country',1,1250,NULL,'Country'),('2024-05-06 19:24:24.196775','2024-05-06 19:24:24.196775','AM','country',1,1251,NULL,'Country'),('2024-05-06 19:24:24.218109','2024-05-06 19:24:24.218109','AW','country',1,1252,NULL,'Country'),('2024-05-06 19:24:24.243056','2024-05-06 19:24:24.243056','AU','country',1,1253,NULL,'Country'),('2024-05-06 19:24:24.262560','2024-05-06 19:24:24.262560','AT','country',1,1254,NULL,'Country'),('2024-05-06 19:24:24.282473','2024-05-06 19:24:24.282473','AZ','country',1,1255,NULL,'Country'),('2024-05-06 19:24:24.300574','2024-05-06 19:24:24.300574','BS','country',1,1256,NULL,'Country'),('2024-05-06 19:24:24.314938','2024-05-06 19:24:24.314938','BH','country',1,1257,NULL,'Country'),('2024-05-06 19:24:24.329372','2024-05-06 19:24:24.329372','BD','country',1,1258,NULL,'Country'),('2024-05-06 19:24:24.347237','2024-05-06 19:24:24.347237','BB','country',1,1259,NULL,'Country'),('2024-05-06 19:24:24.363912','2024-05-06 19:24:24.363912','BY','country',1,1260,NULL,'Country'),('2024-05-06 19:24:24.385750','2024-05-06 19:24:24.385750','BE','country',1,1261,NULL,'Country'),('2024-05-06 19:24:24.407661','2024-05-06 19:24:24.407661','BZ','country',1,1262,NULL,'Country'),('2024-05-06 19:24:24.443881','2024-05-06 19:24:24.443881','BJ','country',1,1263,NULL,'Country'),('2024-05-06 19:24:24.460651','2024-05-06 19:24:24.460651','BM','country',1,1264,NULL,'Country'),('2024-05-06 19:24:24.477963','2024-05-06 19:24:24.477963','BT','country',1,1265,NULL,'Country'),('2024-05-06 19:24:24.501705','2024-05-06 19:24:24.501705','BO','country',1,1266,NULL,'Country'),('2024-05-06 19:24:24.519604','2024-05-06 19:24:24.519604','BQ','country',1,1267,NULL,'Country'),('2024-05-06 19:24:24.539741','2024-05-06 19:24:24.539741','BA','country',1,1268,NULL,'Country'),('2024-05-06 19:24:24.559793','2024-05-06 19:24:24.559793','BW','country',1,1269,NULL,'Country'),('2024-05-06 19:24:24.578163','2024-05-06 19:24:24.578163','BV','country',1,1270,NULL,'Country'),('2024-05-06 19:24:24.605922','2024-05-06 19:24:24.605922','BR','country',1,1271,NULL,'Country'),('2024-05-06 19:24:24.629686','2024-05-06 19:24:24.629686','IO','country',1,1272,NULL,'Country'),('2024-05-06 19:24:24.653004','2024-05-06 19:24:24.653004','BN','country',1,1273,NULL,'Country'),('2024-05-06 19:24:24.671304','2024-05-06 19:24:24.671304','BG','country',1,1274,NULL,'Country'),('2024-05-06 19:24:24.690753','2024-05-06 19:24:24.690753','BF','country',1,1275,NULL,'Country'),('2024-05-06 19:24:24.707878','2024-05-06 19:24:24.707878','BI','country',1,1276,NULL,'Country'),('2024-05-06 19:24:24.724583','2024-05-06 19:24:24.724583','CV','country',1,1277,NULL,'Country'),('2024-05-06 19:24:24.740915','2024-05-06 19:24:24.740915','KH','country',1,1278,NULL,'Country'),('2024-05-06 19:24:24.755682','2024-05-06 19:24:24.755682','CM','country',1,1279,NULL,'Country'),('2024-05-06 19:24:24.772824','2024-05-06 19:24:24.772824','CA','country',1,1280,NULL,'Country'),('2024-05-06 19:24:24.791943','2024-05-06 19:24:24.791943','KY','country',1,1281,NULL,'Country'),('2024-05-06 19:24:24.813104','2024-05-06 19:24:24.813104','CF','country',1,1282,NULL,'Country'),('2024-05-06 19:24:24.832141','2024-05-06 19:24:24.832141','TD','country',1,1283,NULL,'Country'),('2024-05-06 19:24:24.850062','2024-05-06 19:24:24.850062','CL','country',1,1284,NULL,'Country'),('2024-05-06 19:24:24.872264','2024-05-06 19:24:24.872264','CN','country',1,1285,NULL,'Country'),('2024-05-06 19:24:24.891225','2024-05-06 19:24:24.891225','CX','country',1,1286,NULL,'Country'),('2024-05-06 19:24:24.909236','2024-05-06 19:24:24.909236','CC','country',1,1287,NULL,'Country'),('2024-05-06 19:24:24.929121','2024-05-06 19:24:24.929121','CO','country',1,1288,NULL,'Country'),('2024-05-06 19:24:24.948968','2024-05-06 19:24:24.948968','KM','country',1,1289,NULL,'Country'),('2024-05-06 19:24:24.977337','2024-05-06 19:24:24.977337','CG','country',1,1290,NULL,'Country'),('2024-05-06 19:24:24.994145','2024-05-06 19:24:24.994145','CD','country',1,1291,NULL,'Country'),('2024-05-06 19:24:25.020139','2024-05-06 19:24:25.020139','CK','country',1,1292,NULL,'Country'),('2024-05-06 19:24:25.034154','2024-05-06 19:24:25.034154','CR','country',1,1293,NULL,'Country'),('2024-05-06 19:24:25.052047','2024-05-06 19:24:25.052047','CI','country',1,1294,NULL,'Country'),('2024-05-06 19:24:25.066337','2024-05-06 19:24:25.066337','HR','country',1,1295,NULL,'Country'),('2024-05-06 19:24:25.086807','2024-05-06 19:24:25.086807','CU','country',1,1296,NULL,'Country'),('2024-05-06 19:24:25.103886','2024-05-06 19:24:25.103886','CW','country',1,1297,NULL,'Country'),('2024-05-06 19:24:25.121687','2024-05-06 19:24:25.121687','CY','country',1,1298,NULL,'Country'),('2024-05-06 19:24:25.146425','2024-05-06 19:24:25.146425','CZ','country',1,1299,NULL,'Country'),('2024-05-06 19:24:25.176043','2024-05-06 19:24:25.176043','DK','country',1,1300,NULL,'Country'),('2024-05-06 19:24:25.194995','2024-05-06 19:24:25.194995','DJ','country',1,1301,NULL,'Country'),('2024-05-06 19:24:25.212462','2024-05-06 19:24:25.212462','DM','country',1,1302,NULL,'Country'),('2024-05-06 19:24:25.234615','2024-05-06 19:24:25.234615','DO','country',1,1303,NULL,'Country'),('2024-05-06 19:24:25.247816','2024-05-06 19:24:25.247816','EC','country',1,1304,NULL,'Country'),('2024-05-06 19:24:25.266864','2024-05-06 19:24:25.266864','EG','country',1,1305,NULL,'Country'),('2024-05-06 19:24:25.286692','2024-05-06 19:24:25.286692','SV','country',1,1306,NULL,'Country'),('2024-05-06 19:24:25.304710','2024-05-06 19:24:25.304710','GQ','country',1,1307,NULL,'Country'),('2024-05-06 19:24:25.323325','2024-05-06 19:24:25.323325','ER','country',1,1308,NULL,'Country'),('2024-05-06 19:24:25.340862','2024-05-06 19:24:25.340862','EE','country',1,1309,NULL,'Country'),('2024-05-06 19:24:25.356566','2024-05-06 19:24:25.356566','SZ','country',1,1310,NULL,'Country'),('2024-05-06 19:24:25.379543','2024-05-06 19:24:25.379543','ET','country',1,1311,NULL,'Country'),('2024-05-06 19:24:25.392268','2024-05-06 19:24:25.392268','FK','country',1,1312,NULL,'Country'),('2024-05-06 19:24:25.411113','2024-05-06 19:24:25.411113','FO','country',1,1313,NULL,'Country'),('2024-05-06 19:24:25.428522','2024-05-06 19:24:25.428522','FJ','country',1,1314,NULL,'Country'),('2024-05-06 19:24:25.447124','2024-05-06 19:24:25.447124','FI','country',1,1315,NULL,'Country'),('2024-05-06 19:24:25.474383','2024-05-06 19:24:25.474383','FR','country',1,1316,NULL,'Country'),('2024-05-06 19:24:25.491439','2024-05-06 19:24:25.491439','GF','country',1,1317,NULL,'Country'),('2024-05-06 19:24:25.506998','2024-05-06 19:24:25.506998','PF','country',1,1318,NULL,'Country'),('2024-05-06 19:24:25.523567','2024-05-06 19:24:25.523567','TF','country',1,1319,NULL,'Country'),('2024-05-06 19:24:25.540666','2024-05-06 19:24:25.540666','GA','country',1,1320,NULL,'Country'),('2024-05-06 19:24:25.556817','2024-05-06 19:24:25.556817','GM','country',1,1321,NULL,'Country'),('2024-05-06 19:24:25.571051','2024-05-06 19:24:25.571051','GE','country',1,1322,NULL,'Country'),('2024-05-06 19:24:25.585022','2024-05-06 19:24:25.585022','DE','country',1,1323,NULL,'Country'),('2024-05-06 19:24:25.599161','2024-05-06 19:24:25.599161','GH','country',1,1324,NULL,'Country'),('2024-05-06 19:24:25.616834','2024-05-06 19:24:25.616834','GI','country',1,1325,NULL,'Country'),('2024-05-06 19:24:25.632057','2024-05-06 19:24:25.632057','GR','country',1,1326,NULL,'Country'),('2024-05-06 19:24:25.645558','2024-05-06 19:24:25.645558','GL','country',1,1327,NULL,'Country'),('2024-05-06 19:24:25.658116','2024-05-06 19:24:25.658116','GD','country',1,1328,NULL,'Country'),('2024-05-06 19:24:25.675000','2024-05-06 19:24:25.675000','GP','country',1,1329,NULL,'Country'),('2024-05-06 19:24:25.690596','2024-05-06 19:24:25.690596','GU','country',1,1330,NULL,'Country'),('2024-05-06 19:24:25.708732','2024-05-06 19:24:25.708732','GT','country',1,1331,NULL,'Country'),('2024-05-06 19:24:25.725863','2024-05-06 19:24:25.725863','GG','country',1,1332,NULL,'Country'),('2024-05-06 19:24:25.741775','2024-05-06 19:24:25.741775','GN','country',1,1333,NULL,'Country'),('2024-05-06 19:24:25.757029','2024-05-06 19:24:25.757029','GW','country',1,1334,NULL,'Country'),('2024-05-06 19:24:25.772244','2024-05-06 19:24:25.772244','GY','country',1,1335,NULL,'Country'),('2024-05-06 19:24:25.787546','2024-05-06 19:24:25.787546','HT','country',1,1336,NULL,'Country'),('2024-05-06 19:24:25.799690','2024-05-06 19:24:25.799690','HM','country',1,1337,NULL,'Country'),('2024-05-06 19:24:25.816142','2024-05-06 19:24:25.816142','VA','country',1,1338,NULL,'Country'),('2024-05-06 19:24:25.834287','2024-05-06 19:24:25.834287','HN','country',1,1339,NULL,'Country'),('2024-05-06 19:24:25.850680','2024-05-06 19:24:25.850680','HK','country',1,1340,NULL,'Country'),('2024-05-06 19:24:25.883335','2024-05-06 19:24:25.883335','HU','country',1,1341,NULL,'Country'),('2024-05-06 19:24:25.906175','2024-05-06 19:24:25.906175','IS','country',1,1342,NULL,'Country'),('2024-05-06 19:24:25.928845','2024-05-06 19:24:25.928845','IN','country',1,1343,NULL,'Country'),('2024-05-06 19:24:25.948375','2024-05-06 19:24:25.948375','ID','country',1,1344,NULL,'Country'),('2024-05-06 19:24:25.967742','2024-05-06 19:24:25.967742','IR','country',1,1345,NULL,'Country'),('2024-05-06 19:24:25.988247','2024-05-06 19:24:25.988247','IQ','country',1,1346,NULL,'Country'),('2024-05-06 19:24:26.020451','2024-05-06 19:24:26.020451','IE','country',1,1347,NULL,'Country'),('2024-05-06 19:24:26.039051','2024-05-06 19:24:26.039051','IM','country',1,1348,NULL,'Country'),('2024-05-06 19:24:26.056776','2024-05-06 19:24:26.056776','IL','country',1,1349,NULL,'Country'),('2024-05-06 19:24:26.081746','2024-05-06 19:24:26.081746','IT','country',1,1350,NULL,'Country'),('2024-05-06 19:24:26.100731','2024-05-06 19:24:26.100731','JM','country',1,1351,NULL,'Country'),('2024-05-06 19:24:26.119534','2024-05-06 19:24:26.119534','JP','country',1,1352,NULL,'Country'),('2024-05-06 19:24:26.144604','2024-05-06 19:24:26.144604','JE','country',1,1353,NULL,'Country'),('2024-05-06 19:24:26.160018','2024-05-06 19:24:26.160018','JO','country',1,1354,NULL,'Country'),('2024-05-06 19:24:26.179160','2024-05-06 19:24:26.179160','KZ','country',1,1355,NULL,'Country'),('2024-05-06 19:24:26.195178','2024-05-06 19:24:26.195178','KE','country',1,1356,NULL,'Country'),('2024-05-06 19:24:26.214351','2024-05-06 19:24:26.214351','KI','country',1,1357,NULL,'Country'),('2024-05-06 19:24:26.250999','2024-05-06 19:24:26.250999','KP','country',1,1358,NULL,'Country'),('2024-05-06 19:24:26.272421','2024-05-06 19:24:26.272421','KR','country',1,1359,NULL,'Country'),('2024-05-06 19:24:26.295771','2024-05-06 19:24:26.295771','KW','country',1,1360,NULL,'Country'),('2024-05-06 19:24:26.314423','2024-05-06 19:24:26.314423','KG','country',1,1361,NULL,'Country'),('2024-05-06 19:24:26.333015','2024-05-06 19:24:26.333015','LA','country',1,1362,NULL,'Country'),('2024-05-06 19:24:26.350119','2024-05-06 19:24:26.350119','LV','country',1,1363,NULL,'Country'),('2024-05-06 19:24:26.370328','2024-05-06 19:24:26.370328','LB','country',1,1364,NULL,'Country'),('2024-05-06 19:24:26.393673','2024-05-06 19:24:26.393673','LS','country',1,1365,NULL,'Country'),('2024-05-06 19:24:26.410062','2024-05-06 19:24:26.410062','LR','country',1,1366,NULL,'Country'),('2024-05-06 19:24:26.426347','2024-05-06 19:24:26.426347','LY','country',1,1367,NULL,'Country'),('2024-05-06 19:24:26.445131','2024-05-06 19:24:26.445131','LI','country',1,1368,NULL,'Country'),('2024-05-06 19:24:26.463080','2024-05-06 19:24:26.463080','LT','country',1,1369,NULL,'Country'),('2024-05-06 19:24:26.478575','2024-05-06 19:24:26.478575','LU','country',1,1370,NULL,'Country'),('2024-05-06 19:24:26.494539','2024-05-06 19:24:26.494539','MO','country',1,1371,NULL,'Country'),('2024-05-06 19:24:26.512526','2024-05-06 19:24:26.512526','MK','country',1,1372,NULL,'Country'),('2024-05-06 19:24:26.532392','2024-05-06 19:24:26.532392','MG','country',1,1373,NULL,'Country'),('2024-05-06 19:24:26.549246','2024-05-06 19:24:26.549246','MW','country',1,1374,NULL,'Country'),('2024-05-06 19:24:26.571472','2024-05-06 19:24:26.571472','MY','country',1,1375,NULL,'Country'),('2024-05-06 19:24:26.593953','2024-05-06 19:24:26.593953','MV','country',1,1376,NULL,'Country'),('2024-05-06 19:24:26.611153','2024-05-06 19:24:26.611153','ML','country',1,1377,NULL,'Country'),('2024-05-06 19:24:26.630951','2024-05-06 19:24:26.630951','MT','country',1,1378,NULL,'Country'),('2024-05-06 19:24:26.651344','2024-05-06 19:24:26.651344','MH','country',1,1379,NULL,'Country'),('2024-05-06 19:24:26.669163','2024-05-06 19:24:26.669163','MQ','country',1,1380,NULL,'Country'),('2024-05-06 19:24:26.699007','2024-05-06 19:24:26.699007','MR','country',1,1381,NULL,'Country'),('2024-05-06 19:24:26.720041','2024-05-06 19:24:26.720041','MU','country',1,1382,NULL,'Country'),('2024-05-06 19:24:26.749214','2024-05-06 19:24:26.749214','YT','country',1,1383,NULL,'Country'),('2024-05-06 19:24:26.766719','2024-05-06 19:24:26.766719','MX','country',1,1384,NULL,'Country'),('2024-05-06 19:24:26.787842','2024-05-06 19:24:26.787842','FM','country',1,1385,NULL,'Country'),('2024-05-06 19:24:26.824744','2024-05-06 19:24:26.824744','MD','country',1,1386,NULL,'Country'),('2024-05-06 19:24:26.839801','2024-05-06 19:24:26.839801','MC','country',1,1387,NULL,'Country'),('2024-05-06 19:24:26.862735','2024-05-06 19:24:26.862735','MN','country',1,1388,NULL,'Country'),('2024-05-06 19:24:26.886209','2024-05-06 19:24:26.886209','ME','country',1,1389,NULL,'Country'),('2024-05-06 19:24:26.902253','2024-05-06 19:24:26.902253','MS','country',1,1390,NULL,'Country'),('2024-05-06 19:24:26.919245','2024-05-06 19:24:26.919245','MA','country',1,1391,NULL,'Country'),('2024-05-06 19:24:26.946956','2024-05-06 19:24:26.946956','MZ','country',1,1392,NULL,'Country'),('2024-05-06 19:24:26.972806','2024-05-06 19:24:26.972806','MM','country',1,1393,NULL,'Country'),('2024-05-06 19:24:26.991006','2024-05-06 19:24:26.991006','NA','country',1,1394,NULL,'Country'),('2024-05-06 19:24:27.008615','2024-05-06 19:24:27.008615','NR','country',1,1395,NULL,'Country'),('2024-05-06 19:24:27.029032','2024-05-06 19:24:27.029032','NP','country',1,1396,NULL,'Country'),('2024-05-06 19:24:27.049702','2024-05-06 19:24:27.049702','NL','country',1,1397,NULL,'Country'),('2024-05-06 19:24:27.068509','2024-05-06 19:24:27.068509','NC','country',1,1398,NULL,'Country'),('2024-05-06 19:24:27.094225','2024-05-06 19:24:27.094225','NZ','country',1,1399,NULL,'Country'),('2024-05-06 19:24:27.113210','2024-05-06 19:24:27.113210','NI','country',1,1400,NULL,'Country'),('2024-05-06 19:24:27.134303','2024-05-06 19:24:27.134303','NE','country',1,1401,NULL,'Country'),('2024-05-06 19:24:27.153909','2024-05-06 19:24:27.153909','NG','country',1,1402,NULL,'Country'),('2024-05-06 19:24:27.178231','2024-05-06 19:24:27.178231','NU','country',1,1403,NULL,'Country'),('2024-05-06 19:24:27.202794','2024-05-06 19:24:27.202794','NF','country',1,1404,NULL,'Country'),('2024-05-06 19:24:27.230367','2024-05-06 19:24:27.230367','MP','country',1,1405,NULL,'Country'),('2024-05-06 19:24:27.250507','2024-05-06 19:24:27.250507','NO','country',1,1406,NULL,'Country'),('2024-05-06 19:24:27.269366','2024-05-06 19:24:27.269366','OM','country',1,1407,NULL,'Country'),('2024-05-06 19:24:27.302461','2024-05-06 19:24:27.302461','PK','country',1,1408,NULL,'Country'),('2024-05-06 19:24:27.330887','2024-05-06 19:24:27.330887','PW','country',1,1409,NULL,'Country'),('2024-05-06 19:24:27.349872','2024-05-06 19:24:27.349872','PS','country',1,1410,NULL,'Country'),('2024-05-06 19:24:27.376553','2024-05-06 19:24:27.376553','PA','country',1,1411,NULL,'Country'),('2024-05-06 19:24:27.394631','2024-05-06 19:24:27.394631','PG','country',1,1412,NULL,'Country'),('2024-05-06 19:24:27.412352','2024-05-06 19:24:27.412352','PY','country',1,1413,NULL,'Country'),('2024-05-06 19:24:27.443301','2024-05-06 19:24:27.443301','PE','country',1,1414,NULL,'Country'),('2024-05-06 19:24:27.462216','2024-05-06 19:24:27.462216','PH','country',1,1415,NULL,'Country'),('2024-05-06 19:24:27.495261','2024-05-06 19:24:27.495261','PN','country',1,1416,NULL,'Country'),('2024-05-06 19:24:27.517073','2024-05-06 19:24:27.517073','PL','country',1,1417,NULL,'Country'),('2024-05-06 19:24:27.538485','2024-05-06 19:24:27.538485','PT','country',1,1418,NULL,'Country'),('2024-05-06 19:24:27.556130','2024-05-06 19:24:27.556130','PR','country',1,1419,NULL,'Country'),('2024-05-06 19:24:27.572715','2024-05-06 19:24:27.572715','QA','country',1,1420,NULL,'Country'),('2024-05-06 19:24:27.605291','2024-05-06 19:24:27.605291','RE','country',1,1421,NULL,'Country'),('2024-05-06 19:24:27.624418','2024-05-06 19:24:27.624418','RO','country',1,1422,NULL,'Country'),('2024-05-06 19:24:27.644660','2024-05-06 19:24:27.644660','RU','country',1,1423,NULL,'Country'),('2024-05-06 19:24:27.665410','2024-05-06 19:24:27.665410','RW','country',1,1424,NULL,'Country'),('2024-05-06 19:24:27.706054','2024-05-06 19:24:27.706054','BL','country',1,1425,NULL,'Country'),('2024-05-06 19:24:27.733732','2024-05-06 19:24:27.733732','SH','country',1,1426,NULL,'Country'),('2024-05-06 19:24:27.771485','2024-05-06 19:24:27.771485','KN','country',1,1427,NULL,'Country'),('2024-05-06 19:24:27.799581','2024-05-06 19:24:27.799581','LC','country',1,1428,NULL,'Country'),('2024-05-06 19:24:27.819803','2024-05-06 19:24:27.819803','MF','country',1,1429,NULL,'Country'),('2024-05-06 19:24:27.848180','2024-05-06 19:24:27.848180','PM','country',1,1430,NULL,'Country'),('2024-05-06 19:24:27.871480','2024-05-06 19:24:27.871480','VC','country',1,1431,NULL,'Country'),('2024-05-06 19:24:27.889335','2024-05-06 19:24:27.889335','WS','country',1,1432,NULL,'Country'),('2024-05-06 19:24:27.907656','2024-05-06 19:24:27.907656','SM','country',1,1433,NULL,'Country'),('2024-05-06 19:24:27.945602','2024-05-06 19:24:27.945602','ST','country',1,1434,NULL,'Country'),('2024-05-06 19:24:27.962249','2024-05-06 19:24:27.962249','SA','country',1,1435,NULL,'Country'),('2024-05-06 19:24:27.986449','2024-05-06 19:24:27.986449','SN','country',1,1436,NULL,'Country'),('2024-05-06 19:24:28.003058','2024-05-06 19:24:28.003058','RS','country',1,1437,NULL,'Country'),('2024-05-06 19:24:28.022771','2024-05-06 19:24:28.022771','SC','country',1,1438,NULL,'Country'),('2024-05-06 19:24:28.041875','2024-05-06 19:24:28.041875','SL','country',1,1439,NULL,'Country'),('2024-05-06 19:24:28.065029','2024-05-06 19:24:28.065029','SG','country',1,1440,NULL,'Country'),('2024-05-06 19:24:28.093968','2024-05-06 19:24:28.093968','SX','country',1,1441,NULL,'Country'),('2024-05-06 19:24:28.114513','2024-05-06 19:24:28.114513','SK','country',1,1442,NULL,'Country'),('2024-05-06 19:24:28.133362','2024-05-06 19:24:28.133362','SI','country',1,1443,NULL,'Country'),('2024-05-06 19:24:28.149813','2024-05-06 19:24:28.149813','SB','country',1,1444,NULL,'Country'),('2024-05-06 19:24:28.188285','2024-05-06 19:24:28.188285','SO','country',1,1445,NULL,'Country'),('2024-05-06 19:24:28.214058','2024-05-06 19:24:28.214058','ZA','country',1,1446,NULL,'Country'),('2024-05-06 19:24:28.235342','2024-05-06 19:24:28.235342','GS','country',1,1447,NULL,'Country'),('2024-05-06 19:24:28.252251','2024-05-06 19:24:28.252251','SS','country',1,1448,NULL,'Country'),('2024-05-06 19:24:28.267829','2024-05-06 19:24:28.267829','ES','country',1,1449,NULL,'Country'),('2024-05-06 19:24:28.286232','2024-05-06 19:24:28.286232','LK','country',1,1450,NULL,'Country'),('2024-05-06 19:24:28.307463','2024-05-06 19:24:28.307463','SD','country',1,1451,NULL,'Country'),('2024-05-06 19:24:28.326788','2024-05-06 19:24:28.326788','SR','country',1,1452,NULL,'Country'),('2024-05-06 19:24:28.342949','2024-05-06 19:24:28.342949','SJ','country',1,1453,NULL,'Country'),('2024-05-06 19:24:28.366160','2024-05-06 19:24:28.366160','SE','country',1,1454,NULL,'Country'),('2024-05-06 19:24:28.395090','2024-05-06 19:24:28.395090','CH','country',1,1455,NULL,'Country'),('2024-05-06 19:24:28.416740','2024-05-06 19:24:28.416740','SY','country',1,1456,NULL,'Country'),('2024-05-06 19:24:28.442505','2024-05-06 19:24:28.442505','TW','country',1,1457,NULL,'Country'),('2024-05-06 19:24:28.459442','2024-05-06 19:24:28.459442','TJ','country',1,1458,NULL,'Country'),('2024-05-06 19:24:28.475693','2024-05-06 19:24:28.475693','TZ','country',1,1459,NULL,'Country'),('2024-05-06 19:24:28.493774','2024-05-06 19:24:28.493774','TH','country',1,1460,NULL,'Country'),('2024-05-06 19:24:28.509706','2024-05-06 19:24:28.509706','TL','country',1,1461,NULL,'Country'),('2024-05-06 19:24:28.529031','2024-05-06 19:24:28.529031','TG','country',1,1462,NULL,'Country'),('2024-05-06 19:24:28.544988','2024-05-06 19:24:28.544988','TK','country',1,1463,NULL,'Country'),('2024-05-06 19:24:28.560806','2024-05-06 19:24:28.560806','TO','country',1,1464,NULL,'Country'),('2024-05-06 19:24:28.588213','2024-05-06 19:24:28.588213','TT','country',1,1465,NULL,'Country'),('2024-05-06 19:24:28.604744','2024-05-06 19:24:28.604744','TN','country',1,1466,NULL,'Country'),('2024-05-06 19:24:28.622234','2024-05-06 19:24:28.622234','TR','country',1,1467,NULL,'Country'),('2024-05-06 19:24:28.638123','2024-05-06 19:24:28.638123','TM','country',1,1468,NULL,'Country'),('2024-05-06 19:24:28.659513','2024-05-06 19:24:28.659513','TC','country',1,1469,NULL,'Country'),('2024-05-06 19:24:28.682964','2024-05-06 19:24:28.682964','TV','country',1,1470,NULL,'Country'),('2024-05-06 19:24:28.699387','2024-05-06 19:24:28.699387','UG','country',1,1471,NULL,'Country'),('2024-05-06 19:24:28.712851','2024-05-06 19:24:28.712851','UA','country',1,1472,NULL,'Country'),('2024-05-06 19:24:28.728753','2024-05-06 19:24:28.728753','AE','country',1,1473,NULL,'Country'),('2024-05-06 19:24:28.742331','2024-05-06 19:24:28.742331','GB','country',1,1474,NULL,'Country'),('2024-05-06 19:24:28.758175','2024-05-06 19:24:28.758175','US','country',1,1475,NULL,'Country'),('2024-05-06 19:24:28.773909','2024-05-06 19:24:28.773909','UM','country',1,1476,NULL,'Country'),('2024-05-06 19:24:28.789473','2024-05-06 19:24:28.789473','UY','country',1,1477,NULL,'Country'),('2024-05-06 19:24:28.817070','2024-05-06 19:24:28.817070','UZ','country',1,1478,NULL,'Country'),('2024-05-06 19:24:28.839236','2024-05-06 19:24:28.839236','VU','country',1,1479,NULL,'Country'),('2024-05-06 19:24:28.856025','2024-05-06 19:24:28.856025','VE','country',1,1480,NULL,'Country'),('2024-05-06 19:24:28.873328','2024-05-06 19:24:28.873328','VN','country',1,1481,NULL,'Country'),('2024-05-06 19:24:28.887397','2024-05-06 19:24:28.887397','VG','country',1,1482,NULL,'Country'),('2024-05-06 19:24:28.904075','2024-05-06 19:24:28.904075','VI','country',1,1483,NULL,'Country'),('2024-05-06 19:24:28.924100','2024-05-06 19:24:28.924100','WF','country',1,1484,NULL,'Country'),('2024-05-06 19:24:28.940231','2024-05-06 19:24:28.940231','EH','country',1,1485,NULL,'Country'),('2024-05-06 19:24:28.956377','2024-05-06 19:24:28.956377','YE','country',1,1486,NULL,'Country'),('2024-05-06 19:24:28.978427','2024-05-06 19:24:28.978427','ZM','country',1,1487,NULL,'Country'),('2024-05-06 19:24:28.996621','2024-05-06 19:24:28.996621','ZW','country',1,1488,NULL,'Country'),('2024-05-06 19:35:18.179181','2024-05-06 19:35:18.179181','AF','country',1,1489,NULL,'Country'),('2024-05-06 19:35:18.203709','2024-05-06 19:35:18.203709','AX','country',1,1490,NULL,'Country'),('2024-05-06 19:35:18.223042','2024-05-06 19:35:18.223042','AL','country',1,1491,NULL,'Country'),('2024-05-06 19:35:18.264918','2024-05-06 19:35:18.264918','DZ','country',1,1492,NULL,'Country'),('2024-05-06 19:35:18.292713','2024-05-06 19:35:18.292713','AS','country',1,1493,NULL,'Country'),('2024-05-06 19:35:18.312174','2024-05-06 19:35:18.312174','AD','country',1,1494,NULL,'Country'),('2024-05-06 19:35:18.331803','2024-05-06 19:35:18.331803','AO','country',1,1495,NULL,'Country'),('2024-05-06 19:35:18.351086','2024-05-06 19:35:18.351086','AI','country',1,1496,NULL,'Country'),('2024-05-06 19:35:18.375640','2024-05-06 19:35:18.375640','AG','country',1,1497,NULL,'Country'),('2024-05-06 19:35:18.399289','2024-05-06 19:35:18.399289','AR','country',1,1498,NULL,'Country'),('2024-05-06 19:35:18.422552','2024-05-06 19:35:18.422552','AM','country',1,1499,NULL,'Country'),('2024-05-06 19:35:18.439618','2024-05-06 19:35:18.439618','AW','country',1,1500,NULL,'Country'),('2024-05-06 19:35:18.456607','2024-05-06 19:35:18.456607','AU','country',1,1501,NULL,'Country'),('2024-05-06 19:35:18.472679','2024-05-06 19:35:18.472679','AT','country',1,1502,NULL,'Country'),('2024-05-06 19:35:18.491997','2024-05-06 19:35:18.491997','AZ','country',1,1503,NULL,'Country'),('2024-05-06 19:35:18.511348','2024-05-06 19:35:18.511348','BS','country',1,1504,NULL,'Country'),('2024-05-06 19:35:18.528651','2024-05-06 19:35:18.528651','BH','country',1,1505,NULL,'Country'),('2024-05-06 19:35:18.546664','2024-05-06 19:35:18.546664','BD','country',1,1506,NULL,'Country'),('2024-05-06 19:35:18.567295','2024-05-06 19:35:18.567295','BB','country',1,1507,NULL,'Country'),('2024-05-06 19:35:18.598514','2024-05-06 19:35:18.598514','BY','country',1,1508,NULL,'Country'),('2024-05-06 19:35:18.618712','2024-05-06 19:35:18.618712','BE','country',1,1509,NULL,'Country'),('2024-05-06 19:35:18.635281','2024-05-06 19:35:18.635281','BZ','country',1,1510,NULL,'Country'),('2024-05-06 19:35:18.652981','2024-05-06 19:35:18.652981','BJ','country',1,1511,NULL,'Country'),('2024-05-06 19:35:18.675321','2024-05-06 19:35:18.675321','BM','country',1,1512,NULL,'Country'),('2024-05-06 19:35:18.694082','2024-05-06 19:35:18.694082','BT','country',1,1513,NULL,'Country'),('2024-05-06 19:35:18.719478','2024-05-06 19:35:18.719478','BO','country',1,1514,NULL,'Country'),('2024-05-06 19:35:18.743390','2024-05-06 19:35:18.743390','BQ','country',1,1515,NULL,'Country'),('2024-05-06 19:35:18.763856','2024-05-06 19:35:18.763856','BA','country',1,1516,NULL,'Country'),('2024-05-06 19:35:18.801747','2024-05-06 19:35:18.801747','BW','country',1,1517,NULL,'Country'),('2024-05-06 19:35:18.829167','2024-05-06 19:35:18.829167','BV','country',1,1518,NULL,'Country'),('2024-05-06 19:35:18.854240','2024-05-06 19:35:18.854240','BR','country',1,1519,NULL,'Country'),('2024-05-06 19:35:18.881262','2024-05-06 19:35:18.881262','IO','country',1,1520,NULL,'Country'),('2024-05-06 19:35:18.904969','2024-05-06 19:35:18.904969','BN','country',1,1521,NULL,'Country'),('2024-05-06 19:35:18.934502','2024-05-06 19:35:18.934502','BG','country',1,1522,NULL,'Country'),('2024-05-06 19:35:18.957946','2024-05-06 19:35:18.957946','BF','country',1,1523,NULL,'Country'),('2024-05-06 19:35:18.998835','2024-05-06 19:35:18.998835','BI','country',1,1524,NULL,'Country'),('2024-05-06 19:35:19.018518','2024-05-06 19:35:19.018518','CV','country',1,1525,NULL,'Country'),('2024-05-06 19:35:19.036648','2024-05-06 19:35:19.036648','KH','country',1,1526,NULL,'Country'),('2024-05-06 19:35:19.053782','2024-05-06 19:35:19.053782','CM','country',1,1527,NULL,'Country'),('2024-05-06 19:35:19.067349','2024-05-06 19:35:19.067349','CA','country',1,1528,NULL,'Country'),('2024-05-06 19:35:19.082034','2024-05-06 19:35:19.082034','KY','country',1,1529,NULL,'Country'),('2024-05-06 19:35:19.096613','2024-05-06 19:35:19.096613','CF','country',1,1530,NULL,'Country'),('2024-05-06 19:35:19.110043','2024-05-06 19:35:19.110043','TD','country',1,1531,NULL,'Country'),('2024-05-06 19:35:19.132020','2024-05-06 19:35:19.132020','CL','country',1,1532,NULL,'Country'),('2024-05-06 19:35:19.163205','2024-05-06 19:35:19.163205','CN','country',1,1533,NULL,'Country'),('2024-05-06 19:35:19.191365','2024-05-06 19:35:19.191365','CX','country',1,1534,NULL,'Country'),('2024-05-06 19:35:19.211010','2024-05-06 19:35:19.211010','CC','country',1,1535,NULL,'Country'),('2024-05-06 19:35:19.229904','2024-05-06 19:35:19.229904','CO','country',1,1536,NULL,'Country'),('2024-05-06 19:35:19.259781','2024-05-06 19:35:19.259781','KM','country',1,1537,NULL,'Country'),('2024-05-06 19:35:19.277098','2024-05-06 19:35:19.277098','CG','country',1,1538,NULL,'Country'),('2024-05-06 19:35:19.294698','2024-05-06 19:35:19.294698','CD','country',1,1539,NULL,'Country'),('2024-05-06 19:35:19.311161','2024-05-06 19:35:19.311161','CK','country',1,1540,NULL,'Country'),('2024-05-06 19:35:19.327916','2024-05-06 19:35:19.327916','CR','country',1,1541,NULL,'Country'),('2024-05-06 19:35:19.346196','2024-05-06 19:35:19.346196','CI','country',1,1542,NULL,'Country'),('2024-05-06 19:35:19.370289','2024-05-06 19:35:19.370289','HR','country',1,1543,NULL,'Country'),('2024-05-06 19:35:19.390529','2024-05-06 19:35:19.390529','CU','country',1,1544,NULL,'Country'),('2024-05-06 19:35:19.408941','2024-05-06 19:35:19.408941','CW','country',1,1545,NULL,'Country'),('2024-05-06 19:35:19.425414','2024-05-06 19:35:19.425414','CY','country',1,1546,NULL,'Country'),('2024-05-06 19:35:19.441439','2024-05-06 19:35:19.441439','CZ','country',1,1547,NULL,'Country'),('2024-05-06 19:35:19.474575','2024-05-06 19:35:19.474575','DK','country',1,1548,NULL,'Country'),('2024-05-06 19:35:19.494882','2024-05-06 19:35:19.494882','DJ','country',1,1549,NULL,'Country'),('2024-05-06 19:35:19.507519','2024-05-06 19:35:19.507519','DM','country',1,1550,NULL,'Country'),('2024-05-06 19:35:19.523460','2024-05-06 19:35:19.523460','DO','country',1,1551,NULL,'Country'),('2024-05-06 19:35:19.536865','2024-05-06 19:35:19.536865','EC','country',1,1552,NULL,'Country'),('2024-05-06 19:35:19.549384','2024-05-06 19:35:19.549384','EG','country',1,1553,NULL,'Country'),('2024-05-06 19:35:19.564598','2024-05-06 19:35:19.564598','SV','country',1,1554,NULL,'Country'),('2024-05-06 19:35:19.577299','2024-05-06 19:35:19.577299','GQ','country',1,1555,NULL,'Country'),('2024-05-06 19:35:19.591052','2024-05-06 19:35:19.591052','ER','country',1,1556,NULL,'Country'),('2024-05-06 19:35:19.607791','2024-05-06 19:35:19.607791','EE','country',1,1557,NULL,'Country'),('2024-05-06 19:35:19.625724','2024-05-06 19:35:19.625724','SZ','country',1,1558,NULL,'Country'),('2024-05-06 19:35:19.638294','2024-05-06 19:35:19.638294','ET','country',1,1559,NULL,'Country'),('2024-05-06 19:35:19.654796','2024-05-06 19:35:19.654796','FK','country',1,1560,NULL,'Country'),('2024-05-06 19:35:19.677886','2024-05-06 19:35:19.677886','FO','country',1,1561,NULL,'Country'),('2024-05-06 19:35:19.691816','2024-05-06 19:35:19.691816','FJ','country',1,1562,NULL,'Country'),('2024-05-06 19:35:19.705701','2024-05-06 19:35:19.705701','FI','country',1,1563,NULL,'Country'),('2024-05-06 19:35:19.720882','2024-05-06 19:35:19.720882','FR','country',1,1564,NULL,'Country'),('2024-05-06 19:35:19.736176','2024-05-06 19:35:19.736176','GF','country',1,1565,NULL,'Country'),('2024-05-06 19:35:19.751912','2024-05-06 19:35:19.751912','PF','country',1,1566,NULL,'Country'),('2024-05-06 19:35:19.765543','2024-05-06 19:35:19.765543','TF','country',1,1567,NULL,'Country'),('2024-05-06 19:35:19.780105','2024-05-06 19:35:19.780105','GA','country',1,1568,NULL,'Country'),('2024-05-06 19:35:19.794582','2024-05-06 19:35:19.794582','GM','country',1,1569,NULL,'Country'),('2024-05-06 19:35:19.813146','2024-05-06 19:35:19.813146','GE','country',1,1570,NULL,'Country'),('2024-05-06 19:35:19.835734','2024-05-06 19:35:19.835734','DE','country',1,1571,NULL,'Country'),('2024-05-06 19:35:19.848225','2024-05-06 19:35:19.848225','GH','country',1,1572,NULL,'Country'),('2024-05-06 19:35:19.865869','2024-05-06 19:35:19.865869','GI','country',1,1573,NULL,'Country'),('2024-05-06 19:35:19.885257','2024-05-06 19:35:19.885257','GR','country',1,1574,NULL,'Country'),('2024-05-06 19:35:19.905749','2024-05-06 19:35:19.905749','GL','country',1,1575,NULL,'Country'),('2024-05-06 19:35:19.934664','2024-05-06 19:35:19.934664','GD','country',1,1576,NULL,'Country'),('2024-05-06 19:35:19.950417','2024-05-06 19:35:19.950417','GP','country',1,1577,NULL,'Country'),('2024-05-06 19:35:19.971367','2024-05-06 19:35:19.971367','GU','country',1,1578,NULL,'Country'),('2024-05-06 19:35:19.994185','2024-05-06 19:35:19.994185','GT','country',1,1579,NULL,'Country'),('2024-05-06 19:35:20.030061','2024-05-06 19:35:20.030061','GG','country',1,1580,NULL,'Country'),('2024-05-06 19:35:20.050859','2024-05-06 19:35:20.050859','GN','country',1,1581,NULL,'Country'),('2024-05-06 19:35:20.079688','2024-05-06 19:35:20.079688','GW','country',1,1582,NULL,'Country'),('2024-05-06 19:35:20.096897','2024-05-06 19:35:20.096897','GY','country',1,1583,NULL,'Country'),('2024-05-06 19:35:20.112362','2024-05-06 19:35:20.112362','HT','country',1,1584,NULL,'Country'),('2024-05-06 19:35:20.131301','2024-05-06 19:35:20.131301','HM','country',1,1585,NULL,'Country'),('2024-05-06 19:35:20.148331','2024-05-06 19:35:20.148331','VA','country',1,1586,NULL,'Country'),('2024-05-06 19:35:20.167289','2024-05-06 19:35:20.167289','HN','country',1,1587,NULL,'Country'),('2024-05-06 19:35:20.208582','2024-05-06 19:35:20.208582','HK','country',1,1588,NULL,'Country'),('2024-05-06 19:35:20.226334','2024-05-06 19:35:20.226334','HU','country',1,1589,NULL,'Country'),('2024-05-06 19:35:20.247375','2024-05-06 19:35:20.247375','IS','country',1,1590,NULL,'Country'),('2024-05-06 19:35:20.260871','2024-05-06 19:35:20.260871','IN','country',1,1591,NULL,'Country'),('2024-05-06 19:35:20.279980','2024-05-06 19:35:20.279980','ID','country',1,1592,NULL,'Country'),('2024-05-06 19:35:20.294140','2024-05-06 19:35:20.294140','IR','country',1,1593,NULL,'Country'),('2024-05-06 19:35:20.319761','2024-05-06 19:35:20.319761','IQ','country',1,1594,NULL,'Country'),('2024-05-06 19:35:20.337867','2024-05-06 19:35:20.337867','IE','country',1,1595,NULL,'Country'),('2024-05-06 19:35:20.350820','2024-05-06 19:35:20.350820','IM','country',1,1596,NULL,'Country'),('2024-05-06 19:35:20.366320','2024-05-06 19:35:20.366320','IL','country',1,1597,NULL,'Country'),('2024-05-06 19:35:20.377713','2024-05-06 19:35:20.377713','IT','country',1,1598,NULL,'Country'),('2024-05-06 19:35:20.398636','2024-05-06 19:35:20.398636','JM','country',1,1599,NULL,'Country'),('2024-05-06 19:35:20.418649','2024-05-06 19:35:20.418649','JP','country',1,1600,NULL,'Country'),('2024-05-06 19:35:20.434663','2024-05-06 19:35:20.434663','JE','country',1,1601,NULL,'Country'),('2024-05-06 19:35:20.450286','2024-05-06 19:35:20.450286','JO','country',1,1602,NULL,'Country'),('2024-05-06 19:35:20.466051','2024-05-06 19:35:20.466051','KZ','country',1,1603,NULL,'Country'),('2024-05-06 19:35:20.481399','2024-05-06 19:35:20.481399','KE','country',1,1604,NULL,'Country'),('2024-05-06 19:35:20.499090','2024-05-06 19:35:20.499090','KI','country',1,1605,NULL,'Country'),('2024-05-06 19:35:20.512181','2024-05-06 19:35:20.512181','KP','country',1,1606,NULL,'Country'),('2024-05-06 19:35:20.528423','2024-05-06 19:35:20.528423','KR','country',1,1607,NULL,'Country'),('2024-05-06 19:35:20.542881','2024-05-06 19:35:20.542881','KW','country',1,1608,NULL,'Country'),('2024-05-06 19:35:20.554992','2024-05-06 19:35:20.554992','KG','country',1,1609,NULL,'Country'),('2024-05-06 19:35:20.581639','2024-05-06 19:35:20.581639','LA','country',1,1610,NULL,'Country'),('2024-05-06 19:35:20.601794','2024-05-06 19:35:20.601794','LV','country',1,1611,NULL,'Country'),('2024-05-06 19:35:20.633254','2024-05-06 19:35:20.633254','LB','country',1,1612,NULL,'Country'),('2024-05-06 19:35:20.648561','2024-05-06 19:35:20.648561','LS','country',1,1613,NULL,'Country'),('2024-05-06 19:35:20.663765','2024-05-06 19:35:20.663765','LR','country',1,1614,NULL,'Country'),('2024-05-06 19:35:20.674612','2024-05-06 19:35:20.674612','LY','country',1,1615,NULL,'Country'),('2024-05-06 19:35:20.687698','2024-05-06 19:35:20.687698','LI','country',1,1616,NULL,'Country'),('2024-05-06 19:35:20.700304','2024-05-06 19:35:20.700304','LT','country',1,1617,NULL,'Country'),('2024-05-06 19:35:20.712491','2024-05-06 19:35:20.712491','LU','country',1,1618,NULL,'Country'),('2024-05-06 19:35:20.726288','2024-05-06 19:35:20.726288','MO','country',1,1619,NULL,'Country'),('2024-05-06 19:35:20.742755','2024-05-06 19:35:20.742755','MK','country',1,1620,NULL,'Country'),('2024-05-06 19:35:20.760474','2024-05-06 19:35:20.760474','MG','country',1,1621,NULL,'Country'),('2024-05-06 19:35:20.773736','2024-05-06 19:35:20.773736','MW','country',1,1622,NULL,'Country'),('2024-05-06 19:35:20.785343','2024-05-06 19:35:20.785343','MY','country',1,1623,NULL,'Country'),('2024-05-06 19:35:20.798394','2024-05-06 19:35:20.798394','MV','country',1,1624,NULL,'Country'),('2024-05-06 19:35:20.813464','2024-05-06 19:35:20.813464','ML','country',1,1625,NULL,'Country'),('2024-05-06 19:35:20.826079','2024-05-06 19:35:20.826079','MT','country',1,1626,NULL,'Country'),('2024-05-06 19:35:20.840189','2024-05-06 19:35:20.840189','MH','country',1,1627,NULL,'Country'),('2024-05-06 19:35:20.857559','2024-05-06 19:35:20.857559','MQ','country',1,1628,NULL,'Country'),('2024-05-06 19:35:20.871290','2024-05-06 19:35:20.871290','MR','country',1,1629,NULL,'Country'),('2024-05-06 19:35:20.882362','2024-05-06 19:35:20.882362','MU','country',1,1630,NULL,'Country'),('2024-05-06 19:35:20.896142','2024-05-06 19:35:20.896142','YT','country',1,1631,NULL,'Country'),('2024-05-06 19:35:20.910261','2024-05-06 19:35:20.910261','MX','country',1,1632,NULL,'Country'),('2024-05-06 19:35:20.922750','2024-05-06 19:35:20.922750','FM','country',1,1633,NULL,'Country'),('2024-05-06 19:35:20.934844','2024-05-06 19:35:20.934844','MD','country',1,1634,NULL,'Country'),('2024-05-06 19:35:20.948849','2024-05-06 19:35:20.948849','MC','country',1,1635,NULL,'Country'),('2024-05-06 19:35:20.960716','2024-05-06 19:35:20.960716','MN','country',1,1636,NULL,'Country'),('2024-05-06 19:35:20.974966','2024-05-06 19:35:20.974966','ME','country',1,1637,NULL,'Country'),('2024-05-06 19:35:20.987833','2024-05-06 19:35:20.987833','MS','country',1,1638,NULL,'Country'),('2024-05-06 19:35:20.999916','2024-05-06 19:35:20.999916','MA','country',1,1639,NULL,'Country'),('2024-05-06 19:35:21.014740','2024-05-06 19:35:21.014740','MZ','country',1,1640,NULL,'Country'),('2024-05-06 19:35:21.027062','2024-05-06 19:35:21.027062','MM','country',1,1641,NULL,'Country'),('2024-05-06 19:35:21.039198','2024-05-06 19:35:21.039198','NA','country',1,1642,NULL,'Country'),('2024-05-06 19:35:21.053862','2024-05-06 19:35:21.053862','NR','country',1,1643,NULL,'Country'),('2024-05-06 19:35:21.071816','2024-05-06 19:35:21.071816','NP','country',1,1644,NULL,'Country'),('2024-05-06 19:35:21.084731','2024-05-06 19:35:21.084731','NL','country',1,1645,NULL,'Country'),('2024-05-06 19:35:21.099041','2024-05-06 19:35:21.099041','NC','country',1,1646,NULL,'Country'),('2024-05-06 19:35:21.112949','2024-05-06 19:35:21.112949','NZ','country',1,1647,NULL,'Country'),('2024-05-06 19:35:21.126091','2024-05-06 19:35:21.126091','NI','country',1,1648,NULL,'Country'),('2024-05-06 19:35:21.143557','2024-05-06 19:35:21.143557','NE','country',1,1649,NULL,'Country'),('2024-05-06 19:35:21.161720','2024-05-06 19:35:21.161720','NG','country',1,1650,NULL,'Country'),('2024-05-06 19:35:21.177571','2024-05-06 19:35:21.177571','NU','country',1,1651,NULL,'Country'),('2024-05-06 19:35:21.189703','2024-05-06 19:35:21.189703','NF','country',1,1652,NULL,'Country'),('2024-05-06 19:35:21.203904','2024-05-06 19:35:21.203904','MP','country',1,1653,NULL,'Country'),('2024-05-06 19:35:21.218276','2024-05-06 19:35:21.218276','NO','country',1,1654,NULL,'Country'),('2024-05-06 19:35:21.234008','2024-05-06 19:35:21.234008','OM','country',1,1655,NULL,'Country'),('2024-05-06 19:35:21.258868','2024-05-06 19:35:21.258868','PK','country',1,1656,NULL,'Country'),('2024-05-06 19:35:21.272143','2024-05-06 19:35:21.272143','PW','country',1,1657,NULL,'Country'),('2024-05-06 19:35:21.291230','2024-05-06 19:35:21.291230','PS','country',1,1658,NULL,'Country'),('2024-05-06 19:35:21.317878','2024-05-06 19:35:21.317878','PA','country',1,1659,NULL,'Country'),('2024-05-06 19:35:21.340877','2024-05-06 19:35:21.340877','PG','country',1,1660,NULL,'Country'),('2024-05-06 19:35:21.360575','2024-05-06 19:35:21.360575','PY','country',1,1661,NULL,'Country'),('2024-05-06 19:35:21.390461','2024-05-06 19:35:21.390461','PE','country',1,1662,NULL,'Country'),('2024-05-06 19:35:21.408466','2024-05-06 19:35:21.408466','PH','country',1,1663,NULL,'Country'),('2024-05-06 19:35:21.429580','2024-05-06 19:35:21.429580','PN','country',1,1664,NULL,'Country'),('2024-05-06 19:35:21.455152','2024-05-06 19:35:21.455152','PL','country',1,1665,NULL,'Country'),('2024-05-06 19:35:21.472157','2024-05-06 19:35:21.472157','PT','country',1,1666,NULL,'Country'),('2024-05-06 19:35:21.491830','2024-05-06 19:35:21.491830','PR','country',1,1667,NULL,'Country'),('2024-05-06 19:35:21.507139','2024-05-06 19:35:21.507139','QA','country',1,1668,NULL,'Country'),('2024-05-06 19:35:21.519033','2024-05-06 19:35:21.519033','RE','country',1,1669,NULL,'Country'),('2024-05-06 19:35:21.535142','2024-05-06 19:35:21.535142','RO','country',1,1670,NULL,'Country'),('2024-05-06 19:35:21.551072','2024-05-06 19:35:21.551072','RU','country',1,1671,NULL,'Country'),('2024-05-06 19:35:21.566786','2024-05-06 19:35:21.566786','RW','country',1,1672,NULL,'Country'),('2024-05-06 19:35:21.577849','2024-05-06 19:35:21.577849','BL','country',1,1673,NULL,'Country'),('2024-05-06 19:35:21.590435','2024-05-06 19:35:21.590435','SH','country',1,1674,NULL,'Country'),('2024-05-06 19:35:21.603130','2024-05-06 19:35:21.603130','KN','country',1,1675,NULL,'Country'),('2024-05-06 19:35:21.622576','2024-05-06 19:35:21.622576','LC','country',1,1676,NULL,'Country'),('2024-05-06 19:35:21.659629','2024-05-06 19:35:21.659629','MF','country',1,1677,NULL,'Country'),('2024-05-06 19:35:21.674151','2024-05-06 19:35:21.674151','PM','country',1,1678,NULL,'Country'),('2024-05-06 19:35:21.686556','2024-05-06 19:35:21.686556','VC','country',1,1679,NULL,'Country'),('2024-05-06 19:35:21.705625','2024-05-06 19:35:21.705625','WS','country',1,1680,NULL,'Country'),('2024-05-06 19:35:21.723137','2024-05-06 19:35:21.723137','SM','country',1,1681,NULL,'Country'),('2024-05-06 19:35:21.740360','2024-05-06 19:35:21.740360','ST','country',1,1682,NULL,'Country'),('2024-05-06 19:35:21.767946','2024-05-06 19:35:21.767946','SA','country',1,1683,NULL,'Country'),('2024-05-06 19:35:21.783904','2024-05-06 19:35:21.783904','SN','country',1,1684,NULL,'Country'),('2024-05-06 19:35:21.801265','2024-05-06 19:35:21.801265','RS','country',1,1685,NULL,'Country'),('2024-05-06 19:35:21.814247','2024-05-06 19:35:21.814247','SC','country',1,1686,NULL,'Country'),('2024-05-06 19:35:21.839241','2024-05-06 19:35:21.839241','SL','country',1,1687,NULL,'Country'),('2024-05-06 19:35:21.851617','2024-05-06 19:35:21.851617','SG','country',1,1688,NULL,'Country'),('2024-05-06 19:35:21.866886','2024-05-06 19:35:21.866886','SX','country',1,1689,NULL,'Country'),('2024-05-06 19:35:21.879513','2024-05-06 19:35:21.879513','SK','country',1,1690,NULL,'Country'),('2024-05-06 19:35:21.892888','2024-05-06 19:35:21.892888','SI','country',1,1691,NULL,'Country'),('2024-05-06 19:35:21.905424','2024-05-06 19:35:21.905424','SB','country',1,1692,NULL,'Country'),('2024-05-06 19:35:21.920292','2024-05-06 19:35:21.920292','SO','country',1,1693,NULL,'Country'),('2024-05-06 19:35:21.933247','2024-05-06 19:35:21.933247','ZA','country',1,1694,NULL,'Country'),('2024-05-06 19:35:21.944684','2024-05-06 19:35:21.944684','GS','country',1,1695,NULL,'Country'),('2024-05-06 19:35:21.956659','2024-05-06 19:35:21.956659','SS','country',1,1696,NULL,'Country'),('2024-05-06 19:35:21.972264','2024-05-06 19:35:21.972264','ES','country',1,1697,NULL,'Country'),('2024-05-06 19:35:21.990741','2024-05-06 19:35:21.990741','LK','country',1,1698,NULL,'Country'),('2024-05-06 19:35:22.006707','2024-05-06 19:35:22.006707','SD','country',1,1699,NULL,'Country'),('2024-05-06 19:35:22.031335','2024-05-06 19:35:22.031335','SR','country',1,1700,NULL,'Country'),('2024-05-06 19:35:22.046690','2024-05-06 19:35:22.046690','SJ','country',1,1701,NULL,'Country'),('2024-05-06 19:35:22.062851','2024-05-06 19:35:22.062851','SE','country',1,1702,NULL,'Country'),('2024-05-06 19:35:22.077752','2024-05-06 19:35:22.077752','CH','country',1,1703,NULL,'Country'),('2024-05-06 19:35:22.096187','2024-05-06 19:35:22.096187','SY','country',1,1704,NULL,'Country'),('2024-05-06 19:35:22.117219','2024-05-06 19:35:22.117219','TW','country',1,1705,NULL,'Country'),('2024-05-06 19:35:22.140016','2024-05-06 19:35:22.140016','TJ','country',1,1706,NULL,'Country'),('2024-05-06 19:35:22.155780','2024-05-06 19:35:22.155780','TZ','country',1,1707,NULL,'Country'),('2024-05-06 19:35:22.173966','2024-05-06 19:35:22.173966','TH','country',1,1708,NULL,'Country'),('2024-05-06 19:35:22.192208','2024-05-06 19:35:22.192208','TL','country',1,1709,NULL,'Country'),('2024-05-06 19:35:22.204932','2024-05-06 19:35:22.204932','TG','country',1,1710,NULL,'Country'),('2024-05-06 19:35:22.230704','2024-05-06 19:35:22.230704','TK','country',1,1711,NULL,'Country'),('2024-05-06 19:35:22.245417','2024-05-06 19:35:22.245417','TO','country',1,1712,NULL,'Country'),('2024-05-06 19:35:22.261753','2024-05-06 19:35:22.261753','TT','country',1,1713,NULL,'Country'),('2024-05-06 19:35:22.297904','2024-05-06 19:35:22.297904','TN','country',1,1714,NULL,'Country'),('2024-05-06 19:35:22.315914','2024-05-06 19:35:22.315914','TR','country',1,1715,NULL,'Country'),('2024-05-06 19:35:22.329716','2024-05-06 19:35:22.329716','TM','country',1,1716,NULL,'Country'),('2024-05-06 19:35:22.342645','2024-05-06 19:35:22.342645','TC','country',1,1717,NULL,'Country'),('2024-05-06 19:35:22.357933','2024-05-06 19:35:22.357933','TV','country',1,1718,NULL,'Country'),('2024-05-06 19:35:22.390704','2024-05-06 19:35:22.390704','UG','country',1,1719,NULL,'Country'),('2024-05-06 19:35:22.411546','2024-05-06 19:35:22.411546','UA','country',1,1720,NULL,'Country'),('2024-05-06 19:35:22.428094','2024-05-06 19:35:22.428094','AE','country',1,1721,NULL,'Country'),('2024-05-06 19:35:22.446201','2024-05-06 19:35:22.446201','GB','country',1,1722,NULL,'Country'),('2024-05-06 19:35:22.463125','2024-05-06 19:35:22.463125','US','country',1,1723,NULL,'Country'),('2024-05-06 19:35:22.479395','2024-05-06 19:35:22.479395','UM','country',1,1724,NULL,'Country'),('2024-05-06 19:35:22.497759','2024-05-06 19:35:22.497759','UY','country',1,1725,NULL,'Country'),('2024-05-06 19:35:22.514900','2024-05-06 19:35:22.514900','UZ','country',1,1726,NULL,'Country'),('2024-05-06 19:35:22.533605','2024-05-06 19:35:22.533605','VU','country',1,1727,NULL,'Country'),('2024-05-06 19:35:22.555233','2024-05-06 19:35:22.555233','VE','country',1,1728,NULL,'Country'),('2024-05-06 19:35:22.578802','2024-05-06 19:35:22.578802','VN','country',1,1729,NULL,'Country'),('2024-05-06 19:35:22.599099','2024-05-06 19:35:22.599099','VG','country',1,1730,NULL,'Country'),('2024-05-06 19:35:22.617004','2024-05-06 19:35:22.617004','VI','country',1,1731,NULL,'Country'),('2024-05-06 19:35:22.632786','2024-05-06 19:35:22.632786','WF','country',1,1732,NULL,'Country'),('2024-05-06 19:35:22.647045','2024-05-06 19:35:22.647045','EH','country',1,1733,NULL,'Country'),('2024-05-06 19:35:22.661856','2024-05-06 19:35:22.661856','YE','country',1,1734,NULL,'Country'),('2024-05-06 19:35:22.677379','2024-05-06 19:35:22.677379','ZM','country',1,1735,NULL,'Country'),('2024-05-06 19:35:22.698566','2024-05-06 19:35:22.698566','ZW','country',1,1736,NULL,'Country'),('2024-05-06 19:38:25.770367','2024-05-06 19:38:25.770367','AF','country',1,1737,NULL,'Country'),('2024-05-06 19:38:25.788548','2024-05-06 19:38:25.788548','AX','country',1,1738,NULL,'Country'),('2024-05-06 19:38:25.807467','2024-05-06 19:38:25.807467','AL','country',1,1739,NULL,'Country'),('2024-05-06 19:38:25.822900','2024-05-06 19:38:25.822900','DZ','country',1,1740,NULL,'Country'),('2024-05-06 19:38:25.837598','2024-05-06 19:38:25.837598','AS','country',1,1741,NULL,'Country'),('2024-05-06 19:38:25.851956','2024-05-06 19:38:25.851956','AD','country',1,1742,NULL,'Country'),('2024-05-06 19:38:25.868776','2024-05-06 19:38:25.868776','AO','country',1,1743,NULL,'Country'),('2024-05-06 19:38:25.883340','2024-05-06 19:38:25.883340','AI','country',1,1744,NULL,'Country'),('2024-05-06 19:38:25.902178','2024-05-06 19:38:25.902178','AG','country',1,1745,NULL,'Country'),('2024-05-06 19:38:25.918393','2024-05-06 19:38:25.918393','AR','country',1,1746,NULL,'Country'),('2024-05-06 19:38:25.935229','2024-05-06 19:38:25.935229','AM','country',1,1747,NULL,'Country'),('2024-05-06 19:38:25.948819','2024-05-06 19:38:25.948819','AW','country',1,1748,NULL,'Country'),('2024-05-06 19:38:25.962827','2024-05-06 19:38:25.962827','AU','country',1,1749,NULL,'Country'),('2024-05-06 19:38:25.979703','2024-05-06 19:38:25.979703','AT','country',1,1750,NULL,'Country'),('2024-05-06 19:38:25.995141','2024-05-06 19:38:25.995141','AZ','country',1,1751,NULL,'Country'),('2024-05-06 19:38:26.010139','2024-05-06 19:38:26.010139','BS','country',1,1752,NULL,'Country'),('2024-05-06 19:38:26.023830','2024-05-06 19:38:26.023830','BH','country',1,1753,NULL,'Country'),('2024-05-06 19:38:26.039949','2024-05-06 19:38:26.039949','BD','country',1,1754,NULL,'Country'),('2024-05-06 19:38:26.054369','2024-05-06 19:38:26.054369','BB','country',1,1755,NULL,'Country'),('2024-05-06 19:38:26.067316','2024-05-06 19:38:26.067316','BY','country',1,1756,NULL,'Country'),('2024-05-06 19:38:26.080870','2024-05-06 19:38:26.080870','BE','country',1,1757,NULL,'Country'),('2024-05-06 19:38:26.098065','2024-05-06 19:38:26.098065','BZ','country',1,1758,NULL,'Country'),('2024-05-06 19:38:26.112934','2024-05-06 19:38:26.112934','BJ','country',1,1759,NULL,'Country'),('2024-05-06 19:38:26.126491','2024-05-06 19:38:26.126491','BM','country',1,1760,NULL,'Country'),('2024-05-06 19:38:26.139128','2024-05-06 19:38:26.139128','BT','country',1,1761,NULL,'Country'),('2024-05-06 19:38:26.151796','2024-05-06 19:38:26.151796','BO','country',1,1762,NULL,'Country'),('2024-05-06 19:38:26.164744','2024-05-06 19:38:26.164744','BQ','country',1,1763,NULL,'Country'),('2024-05-06 19:38:26.183373','2024-05-06 19:38:26.183373','BA','country',1,1764,NULL,'Country'),('2024-05-06 19:38:26.198350','2024-05-06 19:38:26.198350','BW','country',1,1765,NULL,'Country'),('2024-05-06 19:38:26.215693','2024-05-06 19:38:26.215693','BV','country',1,1766,NULL,'Country'),('2024-05-06 19:38:26.233258','2024-05-06 19:38:26.233258','BR','country',1,1767,NULL,'Country'),('2024-05-06 19:38:26.249739','2024-05-06 19:38:26.249739','IO','country',1,1768,NULL,'Country'),('2024-05-06 19:38:26.265133','2024-05-06 19:38:26.265133','BN','country',1,1769,NULL,'Country'),('2024-05-06 19:38:26.278055','2024-05-06 19:38:26.278055','BG','country',1,1770,NULL,'Country'),('2024-05-06 19:38:26.291252','2024-05-06 19:38:26.291252','BF','country',1,1771,NULL,'Country'),('2024-05-06 19:38:26.307535','2024-05-06 19:38:26.307535','BI','country',1,1772,NULL,'Country'),('2024-05-06 19:38:26.323242','2024-05-06 19:38:26.323242','CV','country',1,1773,NULL,'Country'),('2024-05-06 19:38:26.335547','2024-05-06 19:38:26.335547','KH','country',1,1774,NULL,'Country'),('2024-05-06 19:38:26.353040','2024-05-06 19:38:26.353040','CM','country',1,1775,NULL,'Country'),('2024-05-06 19:38:26.368739','2024-05-06 19:38:26.368739','CA','country',1,1776,NULL,'Country'),('2024-05-06 19:38:26.382537','2024-05-06 19:38:26.382537','KY','country',1,1777,NULL,'Country'),('2024-05-06 19:38:26.396219','2024-05-06 19:38:26.396219','CF','country',1,1778,NULL,'Country'),('2024-05-06 19:38:26.410776','2024-05-06 19:38:26.410776','TD','country',1,1779,NULL,'Country'),('2024-05-06 19:38:26.424245','2024-05-06 19:38:26.424245','CL','country',1,1780,NULL,'Country'),('2024-05-06 19:38:26.446071','2024-05-06 19:38:26.446071','CN','country',1,1781,NULL,'Country'),('2024-05-06 19:38:26.461568','2024-05-06 19:38:26.461568','CX','country',1,1782,NULL,'Country'),('2024-05-06 19:38:26.479462','2024-05-06 19:38:26.479462','CC','country',1,1783,NULL,'Country'),('2024-05-06 19:38:26.496303','2024-05-06 19:38:26.496303','CO','country',1,1784,NULL,'Country'),('2024-05-06 19:38:26.515507','2024-05-06 19:38:26.515507','KM','country',1,1785,NULL,'Country'),('2024-05-06 19:38:26.528497','2024-05-06 19:38:26.528497','CG','country',1,1786,NULL,'Country'),('2024-05-06 19:38:26.541313','2024-05-06 19:38:26.541313','CD','country',1,1787,NULL,'Country'),('2024-05-06 19:38:26.554934','2024-05-06 19:38:26.554934','CK','country',1,1788,NULL,'Country'),('2024-05-06 19:38:26.568656','2024-05-06 19:38:26.568656','CR','country',1,1789,NULL,'Country'),('2024-05-06 19:38:26.583668','2024-05-06 19:38:26.583668','CI','country',1,1790,NULL,'Country'),('2024-05-06 19:38:26.598785','2024-05-06 19:38:26.598785','HR','country',1,1791,NULL,'Country'),('2024-05-06 19:38:26.613132','2024-05-06 19:38:26.613132','CU','country',1,1792,NULL,'Country'),('2024-05-06 19:38:26.626269','2024-05-06 19:38:26.626269','CW','country',1,1793,NULL,'Country'),('2024-05-06 19:38:26.638380','2024-05-06 19:38:26.638380','CY','country',1,1794,NULL,'Country'),('2024-05-06 19:38:26.650525','2024-05-06 19:38:26.650525','CZ','country',1,1795,NULL,'Country'),('2024-05-06 19:38:26.664885','2024-05-06 19:38:26.664885','DK','country',1,1796,NULL,'Country'),('2024-05-06 19:38:26.679078','2024-05-06 19:38:26.679078','DJ','country',1,1797,NULL,'Country'),('2024-05-06 19:38:26.691955','2024-05-06 19:38:26.691955','DM','country',1,1798,NULL,'Country'),('2024-05-06 19:38:26.705158','2024-05-06 19:38:26.705158','DO','country',1,1799,NULL,'Country'),('2024-05-06 19:38:26.719070','2024-05-06 19:38:26.719070','EC','country',1,1800,NULL,'Country'),('2024-05-06 19:38:26.731875','2024-05-06 19:38:26.731875','EG','country',1,1801,NULL,'Country'),('2024-05-06 19:38:26.760004','2024-05-06 19:38:26.760004','SV','country',1,1802,NULL,'Country'),('2024-05-06 19:38:26.773385','2024-05-06 19:38:26.773385','GQ','country',1,1803,NULL,'Country'),('2024-05-06 19:38:26.786031','2024-05-06 19:38:26.786031','ER','country',1,1804,NULL,'Country'),('2024-05-06 19:38:26.803294','2024-05-06 19:38:26.803294','EE','country',1,1805,NULL,'Country'),('2024-05-06 19:38:26.818319','2024-05-06 19:38:26.818319','SZ','country',1,1806,NULL,'Country'),('2024-05-06 19:38:26.836646','2024-05-06 19:38:26.836646','ET','country',1,1807,NULL,'Country'),('2024-05-06 19:38:26.853899','2024-05-06 19:38:26.853899','FK','country',1,1808,NULL,'Country'),('2024-05-06 19:38:26.870759','2024-05-06 19:38:26.870759','FO','country',1,1809,NULL,'Country'),('2024-05-06 19:38:26.889598','2024-05-06 19:38:26.889598','FJ','country',1,1810,NULL,'Country'),('2024-05-06 19:38:26.909683','2024-05-06 19:38:26.909683','FI','country',1,1811,NULL,'Country'),('2024-05-06 19:38:26.925378','2024-05-06 19:38:26.925378','FR','country',1,1812,NULL,'Country'),('2024-05-06 19:38:26.939019','2024-05-06 19:38:26.939019','GF','country',1,1813,NULL,'Country'),('2024-05-06 19:38:26.953487','2024-05-06 19:38:26.953487','PF','country',1,1814,NULL,'Country'),('2024-05-06 19:38:26.967539','2024-05-06 19:38:26.967539','TF','country',1,1815,NULL,'Country'),('2024-05-06 19:38:26.984268','2024-05-06 19:38:26.984268','GA','country',1,1816,NULL,'Country'),('2024-05-06 19:38:26.998212','2024-05-06 19:38:26.998212','GM','country',1,1817,NULL,'Country'),('2024-05-06 19:38:27.021363','2024-05-06 19:38:27.021363','GE','country',1,1818,NULL,'Country'),('2024-05-06 19:38:27.037752','2024-05-06 19:38:27.037752','DE','country',1,1819,NULL,'Country'),('2024-05-06 19:38:27.054176','2024-05-06 19:38:27.054176','GH','country',1,1820,NULL,'Country'),('2024-05-06 19:38:27.068049','2024-05-06 19:38:27.068049','GI','country',1,1821,NULL,'Country'),('2024-05-06 19:38:27.083639','2024-05-06 19:38:27.083639','GR','country',1,1822,NULL,'Country'),('2024-05-06 19:38:27.101181','2024-05-06 19:38:27.101181','GL','country',1,1823,NULL,'Country'),('2024-05-06 19:38:27.123830','2024-05-06 19:38:27.123830','GD','country',1,1824,NULL,'Country'),('2024-05-06 19:38:27.138617','2024-05-06 19:38:27.138617','GP','country',1,1825,NULL,'Country'),('2024-05-06 19:38:27.152286','2024-05-06 19:38:27.152286','GU','country',1,1826,NULL,'Country'),('2024-05-06 19:38:27.165514','2024-05-06 19:38:27.165514','GT','country',1,1827,NULL,'Country'),('2024-05-06 19:38:27.177364','2024-05-06 19:38:27.177364','GG','country',1,1828,NULL,'Country'),('2024-05-06 19:38:27.192707','2024-05-06 19:38:27.192707','GN','country',1,1829,NULL,'Country'),('2024-05-06 19:38:27.208609','2024-05-06 19:38:27.208609','GW','country',1,1830,NULL,'Country'),('2024-05-06 19:38:27.222106','2024-05-06 19:38:27.222106','GY','country',1,1831,NULL,'Country'),('2024-05-06 19:38:27.235842','2024-05-06 19:38:27.235842','HT','country',1,1832,NULL,'Country'),('2024-05-06 19:38:27.249515','2024-05-06 19:38:27.249515','HM','country',1,1833,NULL,'Country'),('2024-05-06 19:38:27.263343','2024-05-06 19:38:27.263343','VA','country',1,1834,NULL,'Country'),('2024-05-06 19:38:27.279765','2024-05-06 19:38:27.279765','HN','country',1,1835,NULL,'Country'),('2024-05-06 19:38:27.293547','2024-05-06 19:38:27.293547','HK','country',1,1836,NULL,'Country'),('2024-05-06 19:38:27.305217','2024-05-06 19:38:27.305217','HU','country',1,1837,NULL,'Country'),('2024-05-06 19:38:27.318366','2024-05-06 19:38:27.318366','IS','country',1,1838,NULL,'Country'),('2024-05-06 19:38:27.330648','2024-05-06 19:38:27.330648','IN','country',1,1839,NULL,'Country'),('2024-05-06 19:38:27.345617','2024-05-06 19:38:27.345617','ID','country',1,1840,NULL,'Country'),('2024-05-06 19:38:27.359747','2024-05-06 19:38:27.359747','IR','country',1,1841,NULL,'Country'),('2024-05-06 19:38:27.375735','2024-05-06 19:38:27.375735','IQ','country',1,1842,NULL,'Country'),('2024-05-06 19:38:27.388531','2024-05-06 19:38:27.388531','IE','country',1,1843,NULL,'Country'),('2024-05-06 19:38:27.401269','2024-05-06 19:38:27.401269','IM','country',1,1844,NULL,'Country'),('2024-05-06 19:38:27.414774','2024-05-06 19:38:27.414774','IL','country',1,1845,NULL,'Country'),('2024-05-06 19:38:27.428025','2024-05-06 19:38:27.428025','IT','country',1,1846,NULL,'Country'),('2024-05-06 19:38:27.439988','2024-05-06 19:38:27.439988','JM','country',1,1847,NULL,'Country'),('2024-05-06 19:38:27.455026','2024-05-06 19:38:27.455026','JP','country',1,1848,NULL,'Country'),('2024-05-06 19:38:27.472419','2024-05-06 19:38:27.472419','JE','country',1,1849,NULL,'Country'),('2024-05-06 19:38:27.501184','2024-05-06 19:38:27.501184','JO','country',1,1850,NULL,'Country'),('2024-05-06 19:38:27.514213','2024-05-06 19:38:27.514213','KZ','country',1,1851,NULL,'Country'),('2024-05-06 19:38:27.527592','2024-05-06 19:38:27.527592','KE','country',1,1852,NULL,'Country'),('2024-05-06 19:38:27.539437','2024-05-06 19:38:27.539437','KI','country',1,1853,NULL,'Country'),('2024-05-06 19:38:27.553631','2024-05-06 19:38:27.553631','KP','country',1,1854,NULL,'Country'),('2024-05-06 19:38:27.566469','2024-05-06 19:38:27.566469','KR','country',1,1855,NULL,'Country'),('2024-05-06 19:38:27.579607','2024-05-06 19:38:27.579607','KW','country',1,1856,NULL,'Country'),('2024-05-06 19:38:27.590760','2024-05-06 19:38:27.590760','KG','country',1,1857,NULL,'Country'),('2024-05-06 19:38:27.602664','2024-05-06 19:38:27.602664','LA','country',1,1858,NULL,'Country'),('2024-05-06 19:38:27.615730','2024-05-06 19:38:27.615730','LV','country',1,1859,NULL,'Country'),('2024-05-06 19:38:27.628375','2024-05-06 19:38:27.628375','LB','country',1,1860,NULL,'Country'),('2024-05-06 19:38:27.644573','2024-05-06 19:38:27.644573','LS','country',1,1861,NULL,'Country'),('2024-05-06 19:38:27.658756','2024-05-06 19:38:27.658756','LR','country',1,1862,NULL,'Country'),('2024-05-06 19:38:27.671847','2024-05-06 19:38:27.671847','LY','country',1,1863,NULL,'Country'),('2024-05-06 19:38:27.685431','2024-05-06 19:38:27.685431','LI','country',1,1864,NULL,'Country'),('2024-05-06 19:38:27.700492','2024-05-06 19:38:27.700492','LT','country',1,1865,NULL,'Country'),('2024-05-06 19:38:27.734838','2024-05-06 19:38:27.734838','LU','country',1,1866,NULL,'Country'),('2024-05-06 19:38:27.755178','2024-05-06 19:38:27.755178','MO','country',1,1867,NULL,'Country'),('2024-05-06 19:38:27.767504','2024-05-06 19:38:27.767504','MK','country',1,1868,NULL,'Country'),('2024-05-06 19:38:27.782373','2024-05-06 19:38:27.782373','MG','country',1,1869,NULL,'Country'),('2024-05-06 19:38:27.793123','2024-05-06 19:38:27.793123','MW','country',1,1870,NULL,'Country'),('2024-05-06 19:38:27.805181','2024-05-06 19:38:27.805181','MY','country',1,1871,NULL,'Country'),('2024-05-06 19:38:27.815736','2024-05-06 19:38:27.815736','MV','country',1,1872,NULL,'Country'),('2024-05-06 19:38:27.829686','2024-05-06 19:38:27.829686','ML','country',1,1873,NULL,'Country'),('2024-05-06 19:38:27.840946','2024-05-06 19:38:27.840946','MT','country',1,1874,NULL,'Country'),('2024-05-06 19:38:27.860507','2024-05-06 19:38:27.860507','MH','country',1,1875,NULL,'Country'),('2024-05-06 19:38:27.872823','2024-05-06 19:38:27.872823','MQ','country',1,1876,NULL,'Country'),('2024-05-06 19:38:27.887727','2024-05-06 19:38:27.887727','MR','country',1,1877,NULL,'Country'),('2024-05-06 19:38:27.901298','2024-05-06 19:38:27.901298','MU','country',1,1878,NULL,'Country'),('2024-05-06 19:38:27.919080','2024-05-06 19:38:27.919080','YT','country',1,1879,NULL,'Country'),('2024-05-06 19:38:27.935926','2024-05-06 19:38:27.935926','MX','country',1,1880,NULL,'Country'),('2024-05-06 19:38:27.948643','2024-05-06 19:38:27.948643','FM','country',1,1881,NULL,'Country'),('2024-05-06 19:38:27.960669','2024-05-06 19:38:27.960669','MD','country',1,1882,NULL,'Country'),('2024-05-06 19:38:27.972131','2024-05-06 19:38:27.972131','MC','country',1,1883,NULL,'Country'),('2024-05-06 19:38:27.984029','2024-05-06 19:38:27.984029','MN','country',1,1884,NULL,'Country'),('2024-05-06 19:38:27.997510','2024-05-06 19:38:27.997510','ME','country',1,1885,NULL,'Country'),('2024-05-06 19:38:28.012794','2024-05-06 19:38:28.012794','MS','country',1,1886,NULL,'Country'),('2024-05-06 19:38:28.029370','2024-05-06 19:38:28.029370','MA','country',1,1887,NULL,'Country'),('2024-05-06 19:38:28.044615','2024-05-06 19:38:28.044615','MZ','country',1,1888,NULL,'Country'),('2024-05-06 19:38:28.060265','2024-05-06 19:38:28.060265','MM','country',1,1889,NULL,'Country'),('2024-05-06 19:38:28.075506','2024-05-06 19:38:28.075506','NA','country',1,1890,NULL,'Country'),('2024-05-06 19:38:28.096928','2024-05-06 19:38:28.096928','NR','country',1,1891,NULL,'Country'),('2024-05-06 19:38:28.115162','2024-05-06 19:38:28.115162','NP','country',1,1892,NULL,'Country'),('2024-05-06 19:38:28.136187','2024-05-06 19:38:28.136187','NL','country',1,1893,NULL,'Country'),('2024-05-06 19:38:28.151152','2024-05-06 19:38:28.151152','NC','country',1,1894,NULL,'Country'),('2024-05-06 19:38:28.164172','2024-05-06 19:38:28.164172','NZ','country',1,1895,NULL,'Country'),('2024-05-06 19:38:28.176171','2024-05-06 19:38:28.176171','NI','country',1,1896,NULL,'Country'),('2024-05-06 19:38:28.189426','2024-05-06 19:38:28.189426','NE','country',1,1897,NULL,'Country'),('2024-05-06 19:38:28.205794','2024-05-06 19:38:28.205794','NG','country',1,1898,NULL,'Country'),('2024-05-06 19:38:28.222643','2024-05-06 19:38:28.222643','NU','country',1,1899,NULL,'Country'),('2024-05-06 19:38:28.236807','2024-05-06 19:38:28.236807','NF','country',1,1900,NULL,'Country'),('2024-05-06 19:38:28.253267','2024-05-06 19:38:28.253267','MP','country',1,1901,NULL,'Country'),('2024-05-06 19:38:28.270645','2024-05-06 19:38:28.270645','NO','country',1,1902,NULL,'Country'),('2024-05-06 19:38:28.287721','2024-05-06 19:38:28.287721','OM','country',1,1903,NULL,'Country'),('2024-05-06 19:38:28.300759','2024-05-06 19:38:28.300759','PK','country',1,1904,NULL,'Country'),('2024-05-06 19:38:28.313584','2024-05-06 19:38:28.313584','PW','country',1,1905,NULL,'Country'),('2024-05-06 19:38:28.325627','2024-05-06 19:38:28.325627','PS','country',1,1906,NULL,'Country'),('2024-05-06 19:38:28.342158','2024-05-06 19:38:28.342158','PA','country',1,1907,NULL,'Country'),('2024-05-06 19:38:28.354848','2024-05-06 19:38:28.354848','PG','country',1,1908,NULL,'Country'),('2024-05-06 19:38:28.367793','2024-05-06 19:38:28.367793','PY','country',1,1909,NULL,'Country'),('2024-05-06 19:38:28.380661','2024-05-06 19:38:28.380661','PE','country',1,1910,NULL,'Country'),('2024-05-06 19:38:28.394633','2024-05-06 19:38:28.394633','PH','country',1,1911,NULL,'Country'),('2024-05-06 19:38:28.419228','2024-05-06 19:38:28.419228','PN','country',1,1912,NULL,'Country'),('2024-05-06 19:38:28.437153','2024-05-06 19:38:28.437153','PL','country',1,1913,NULL,'Country'),('2024-05-06 19:38:28.452397','2024-05-06 19:38:28.452397','PT','country',1,1914,NULL,'Country'),('2024-05-06 19:38:28.468407','2024-05-06 19:38:28.468407','PR','country',1,1915,NULL,'Country'),('2024-05-06 19:38:28.484353','2024-05-06 19:38:28.484353','QA','country',1,1916,NULL,'Country'),('2024-05-06 19:38:28.500092','2024-05-06 19:38:28.500092','RE','country',1,1917,NULL,'Country'),('2024-05-06 19:38:28.515126','2024-05-06 19:38:28.515126','RO','country',1,1918,NULL,'Country'),('2024-05-06 19:38:28.534103','2024-05-06 19:38:28.534103','RU','country',1,1919,NULL,'Country'),('2024-05-06 19:38:28.548955','2024-05-06 19:38:28.548955','RW','country',1,1920,NULL,'Country'),('2024-05-06 19:38:28.584875','2024-05-06 19:38:28.584875','BL','country',1,1921,NULL,'Country'),('2024-05-06 19:38:28.613138','2024-05-06 19:38:28.613138','SH','country',1,1922,NULL,'Country'),('2024-05-06 19:38:28.631745','2024-05-06 19:38:28.631745','KN','country',1,1923,NULL,'Country'),('2024-05-06 19:38:28.661381','2024-05-06 19:38:28.661381','LC','country',1,1924,NULL,'Country'),('2024-05-06 19:38:28.677754','2024-05-06 19:38:28.677754','MF','country',1,1925,NULL,'Country'),('2024-05-06 19:38:28.689533','2024-05-06 19:38:28.689533','PM','country',1,1926,NULL,'Country'),('2024-05-06 19:38:28.719755','2024-05-06 19:38:28.719755','VC','country',1,1927,NULL,'Country'),('2024-05-06 19:38:28.738424','2024-05-06 19:38:28.738424','WS','country',1,1928,NULL,'Country'),('2024-05-06 19:38:28.753553','2024-05-06 19:38:28.753553','SM','country',1,1929,NULL,'Country'),('2024-05-06 19:38:28.776217','2024-05-06 19:38:28.776217','ST','country',1,1930,NULL,'Country'),('2024-05-06 19:38:28.816122','2024-05-06 19:38:28.816122','SA','country',1,1931,NULL,'Country'),('2024-05-06 19:38:28.848662','2024-05-06 19:38:28.848662','SN','country',1,1932,NULL,'Country'),('2024-05-06 19:38:28.872004','2024-05-06 19:38:28.872004','RS','country',1,1933,NULL,'Country'),('2024-05-06 19:38:28.893860','2024-05-06 19:38:28.893860','SC','country',1,1934,NULL,'Country'),('2024-05-06 19:38:28.921150','2024-05-06 19:38:28.921150','SL','country',1,1935,NULL,'Country'),('2024-05-06 19:38:28.950192','2024-05-06 19:38:28.950192','SG','country',1,1936,NULL,'Country'),('2024-05-06 19:38:29.005189','2024-05-06 19:38:29.005189','SX','country',1,1937,NULL,'Country'),('2024-05-06 19:38:29.034350','2024-05-06 19:38:29.034350','SK','country',1,1938,NULL,'Country'),('2024-05-06 19:38:29.060151','2024-05-06 19:38:29.060151','SI','country',1,1939,NULL,'Country'),('2024-05-06 19:38:29.079953','2024-05-06 19:38:29.079953','SB','country',1,1940,NULL,'Country'),('2024-05-06 19:38:29.101893','2024-05-06 19:38:29.101893','SO','country',1,1941,NULL,'Country'),('2024-05-06 19:38:29.122644','2024-05-06 19:38:29.122644','ZA','country',1,1942,NULL,'Country'),('2024-05-06 19:38:29.138324','2024-05-06 19:38:29.138324','GS','country',1,1943,NULL,'Country'),('2024-05-06 19:38:29.172369','2024-05-06 19:38:29.172369','SS','country',1,1944,NULL,'Country'),('2024-05-06 19:38:29.192794','2024-05-06 19:38:29.192794','ES','country',1,1945,NULL,'Country'),('2024-05-06 19:38:29.212604','2024-05-06 19:38:29.212604','LK','country',1,1946,NULL,'Country'),('2024-05-06 19:38:29.232027','2024-05-06 19:38:29.232027','SD','country',1,1947,NULL,'Country'),('2024-05-06 19:38:29.251619','2024-05-06 19:38:29.251619','SR','country',1,1948,NULL,'Country'),('2024-05-06 19:38:29.264812','2024-05-06 19:38:29.264812','SJ','country',1,1949,NULL,'Country'),('2024-05-06 19:38:29.282354','2024-05-06 19:38:29.282354','SE','country',1,1950,NULL,'Country'),('2024-05-06 19:38:29.296892','2024-05-06 19:38:29.296892','CH','country',1,1951,NULL,'Country'),('2024-05-06 19:38:29.317211','2024-05-06 19:38:29.317211','SY','country',1,1952,NULL,'Country'),('2024-05-06 19:38:29.335256','2024-05-06 19:38:29.335256','TW','country',1,1953,NULL,'Country'),('2024-05-06 19:38:29.358001','2024-05-06 19:38:29.358001','TJ','country',1,1954,NULL,'Country'),('2024-05-06 19:38:29.377713','2024-05-06 19:38:29.377713','TZ','country',1,1955,NULL,'Country'),('2024-05-06 19:38:29.390919','2024-05-06 19:38:29.390919','TH','country',1,1956,NULL,'Country'),('2024-05-06 19:38:29.410288','2024-05-06 19:38:29.410288','TL','country',1,1957,NULL,'Country'),('2024-05-06 19:38:29.431188','2024-05-06 19:38:29.431188','TG','country',1,1958,NULL,'Country'),('2024-05-06 19:38:29.448965','2024-05-06 19:38:29.448965','TK','country',1,1959,NULL,'Country'),('2024-05-06 19:38:29.466999','2024-05-06 19:38:29.466999','TO','country',1,1960,NULL,'Country'),('2024-05-06 19:38:29.483666','2024-05-06 19:38:29.483666','TT','country',1,1961,NULL,'Country'),('2024-05-06 19:38:29.497604','2024-05-06 19:38:29.497604','TN','country',1,1962,NULL,'Country'),('2024-05-06 19:38:29.525770','2024-05-06 19:38:29.525770','TR','country',1,1963,NULL,'Country'),('2024-05-06 19:38:29.541225','2024-05-06 19:38:29.541225','TM','country',1,1964,NULL,'Country'),('2024-05-06 19:38:29.557432','2024-05-06 19:38:29.557432','TC','country',1,1965,NULL,'Country'),('2024-05-06 19:38:29.571385','2024-05-06 19:38:29.571385','TV','country',1,1966,NULL,'Country'),('2024-05-06 19:38:29.586175','2024-05-06 19:38:29.586175','UG','country',1,1967,NULL,'Country'),('2024-05-06 19:38:29.599224','2024-05-06 19:38:29.599224','UA','country',1,1968,NULL,'Country'),('2024-05-06 19:38:29.611667','2024-05-06 19:38:29.611667','AE','country',1,1969,NULL,'Country'),('2024-05-06 19:38:29.626324','2024-05-06 19:38:29.626324','GB','country',1,1970,NULL,'Country'),('2024-05-06 19:38:29.645215','2024-05-06 19:38:29.645215','US','country',1,1971,NULL,'Country'),('2024-05-06 19:38:29.661144','2024-05-06 19:38:29.661144','UM','country',1,1972,NULL,'Country'),('2024-05-06 19:38:29.679800','2024-05-06 19:38:29.679800','UY','country',1,1973,NULL,'Country'),('2024-05-06 19:38:29.693879','2024-05-06 19:38:29.693879','UZ','country',1,1974,NULL,'Country'),('2024-05-06 19:38:29.709653','2024-05-06 19:38:29.709653','VU','country',1,1975,NULL,'Country'),('2024-05-06 19:38:29.726959','2024-05-06 19:38:29.726959','VE','country',1,1976,NULL,'Country'),('2024-05-06 19:38:29.740837','2024-05-06 19:38:29.740837','VN','country',1,1977,NULL,'Country'),('2024-05-06 19:38:29.754388','2024-05-06 19:38:29.754388','VG','country',1,1978,NULL,'Country'),('2024-05-06 19:38:29.773910','2024-05-06 19:38:29.773910','VI','country',1,1979,NULL,'Country'),('2024-05-06 19:38:29.787630','2024-05-06 19:38:29.787630','WF','country',1,1980,NULL,'Country'),('2024-05-06 19:38:29.799634','2024-05-06 19:38:29.799634','EH','country',1,1981,NULL,'Country'),('2024-05-06 19:38:29.812437','2024-05-06 19:38:29.812437','YE','country',1,1982,NULL,'Country'),('2024-05-06 19:38:29.829838','2024-05-06 19:38:29.829838','ZM','country',1,1983,NULL,'Country'),('2024-05-06 19:38:29.858981','2024-05-06 19:38:29.858981','ZW','country',1,1984,NULL,'Country');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_translation`
--

DROP TABLE IF EXISTS `region_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1afd722b943c81310705fc3e61` (`baseId`),
  CONSTRAINT `FK_1afd722b943c81310705fc3e612` FOREIGN KEY (`baseId`) REFERENCES `region` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=745 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_translation`
--

LOCK TABLES `region_translation` WRITE;
/*!40000 ALTER TABLE `region_translation` DISABLE KEYS */;
INSERT INTO `region_translation` VALUES ('2024-05-06 19:24:23.891468','2024-05-06 19:24:23.000000','en','Afghanistan',1,1241),('2024-05-06 19:24:23.936099','2024-05-06 19:24:23.000000','en','Åland Islands',2,1242),('2024-05-06 19:24:23.977738','2024-05-06 19:24:23.000000','en','Albania',3,1243),('2024-05-06 19:24:24.026402','2024-05-06 19:24:24.000000','en','Algeria',4,1244),('2024-05-06 19:24:24.059108','2024-05-06 19:24:24.000000','en','American Samoa',5,1245),('2024-05-06 19:24:24.083369','2024-05-06 19:24:24.000000','en','Andorra',6,1246),('2024-05-06 19:24:24.105329','2024-05-06 19:24:24.000000','en','Angola',7,1247),('2024-05-06 19:24:24.124628','2024-05-06 19:24:24.000000','en','Anguilla',8,1248),('2024-05-06 19:24:24.142140','2024-05-06 19:24:24.000000','en','Antigua and Barbuda',9,1249),('2024-05-06 19:24:24.159461','2024-05-06 19:24:24.000000','en','Argentina',10,1250),('2024-05-06 19:24:24.190203','2024-05-06 19:24:24.000000','en','Armenia',11,1251),('2024-05-06 19:24:24.211501','2024-05-06 19:24:24.000000','en','Aruba',12,1252),('2024-05-06 19:24:24.233104','2024-05-06 19:24:24.000000','en','Australia',13,1253),('2024-05-06 19:24:24.255784','2024-05-06 19:24:24.000000','en','Austria',14,1254),('2024-05-06 19:24:24.277173','2024-05-06 19:24:24.000000','en','Azerbaijan',15,1255),('2024-05-06 19:24:24.294877','2024-05-06 19:24:24.000000','en','Bahamas',16,1256),('2024-05-06 19:24:24.309596','2024-05-06 19:24:24.000000','en','Bahrain',17,1257),('2024-05-06 19:24:24.323718','2024-05-06 19:24:24.000000','en','Bangladesh',18,1258),('2024-05-06 19:24:24.341348','2024-05-06 19:24:24.000000','en','Barbados',19,1259),('2024-05-06 19:24:24.358452','2024-05-06 19:24:24.000000','en','Belarus',20,1260),('2024-05-06 19:24:24.379208','2024-05-06 19:24:24.000000','en','Belgium',21,1261),('2024-05-06 19:24:24.399514','2024-05-06 19:24:24.000000','en','Belize',22,1262),('2024-05-06 19:24:24.437429','2024-05-06 19:24:24.000000','en','Benin',23,1263),('2024-05-06 19:24:24.455079','2024-05-06 19:24:24.000000','en','Bermuda',24,1264),('2024-05-06 19:24:24.471622','2024-05-06 19:24:24.000000','en','Bhutan',25,1265),('2024-05-06 19:24:24.494712','2024-05-06 19:24:24.000000','en','Bolivia (Plurinational State of)',26,1266),('2024-05-06 19:24:24.512887','2024-05-06 19:24:24.000000','en','Bonaire, Sint Eustatius and Saba',27,1267),('2024-05-06 19:24:24.532810','2024-05-06 19:24:24.000000','en','Bosnia and Herzegovina',28,1268),('2024-05-06 19:24:24.552964','2024-05-06 19:24:24.000000','en','Botswana',29,1269),('2024-05-06 19:24:24.571481','2024-05-06 19:24:24.000000','en','Bouvet Island',30,1270),('2024-05-06 19:24:24.590120','2024-05-06 19:24:24.000000','en','Brazil',31,1271),('2024-05-06 19:24:24.620955','2024-05-06 19:24:24.000000','en','British Indian Ocean Territory',32,1272),('2024-05-06 19:24:24.642316','2024-05-06 19:24:24.000000','en','Brunei Darussalam',33,1273),('2024-05-06 19:24:24.664483','2024-05-06 19:24:24.000000','en','Bulgaria',34,1274),('2024-05-06 19:24:24.685968','2024-05-06 19:24:24.000000','en','Burkina Faso',35,1275),('2024-05-06 19:24:24.702065','2024-05-06 19:24:24.000000','en','Burundi',36,1276),('2024-05-06 19:24:24.719050','2024-05-06 19:24:24.000000','en','Cabo Verde',37,1277),('2024-05-06 19:24:24.736182','2024-05-06 19:24:24.000000','en','Cambodia',38,1278),('2024-05-06 19:24:24.749014','2024-05-06 19:24:24.000000','en','Cameroon',39,1279),('2024-05-06 19:24:24.766709','2024-05-06 19:24:24.000000','en','Canada',40,1280),('2024-05-06 19:24:24.784742','2024-05-06 19:24:24.000000','en','Cayman Islands',41,1281),('2024-05-06 19:24:24.806958','2024-05-06 19:24:24.000000','en','Central African Republic',42,1282),('2024-05-06 19:24:24.825667','2024-05-06 19:24:24.000000','en','Chad',43,1283),('2024-05-06 19:24:24.843944','2024-05-06 19:24:24.000000','en','Chile',44,1284),('2024-05-06 19:24:24.861881','2024-05-06 19:24:24.000000','en','China',45,1285),('2024-05-06 19:24:24.884864','2024-05-06 19:24:24.000000','en','Christmas Island',46,1286),('2024-05-06 19:24:24.902142','2024-05-06 19:24:24.000000','en','Cocos (Keeling) Islands',47,1287),('2024-05-06 19:24:24.921213','2024-05-06 19:24:24.000000','en','Colombia',48,1288),('2024-05-06 19:24:24.941423','2024-05-06 19:24:24.000000','en','Comoros',49,1289),('2024-05-06 19:24:24.960148','2024-05-06 19:24:24.000000','en','Congo',50,1290),('2024-05-06 19:24:24.988544','2024-05-06 19:24:24.000000','en','Congo (Democratic Republic of the)',51,1291),('2024-05-06 19:24:25.015072','2024-05-06 19:24:25.000000','en','Cook Islands',52,1292),('2024-05-06 19:24:25.028685','2024-05-06 19:24:25.000000','en','Costa Rica',53,1293),('2024-05-06 19:24:25.044809','2024-05-06 19:24:25.000000','en','Côte d\'Ivoire',54,1294),('2024-05-06 19:24:25.060901','2024-05-06 19:24:25.000000','en','Croatia',55,1295),('2024-05-06 19:24:25.081762','2024-05-06 19:24:25.000000','en','Cuba',56,1296),('2024-05-06 19:24:25.096907','2024-05-06 19:24:25.000000','en','Curaçao',57,1297),('2024-05-06 19:24:25.115107','2024-05-06 19:24:25.000000','en','Cyprus',58,1298),('2024-05-06 19:24:25.133343','2024-05-06 19:24:25.000000','en','Czechia',59,1299),('2024-05-06 19:24:25.169062','2024-05-06 19:24:25.000000','en','Denmark',60,1300),('2024-05-06 19:24:25.187799','2024-05-06 19:24:25.000000','en','Djibouti',61,1301),('2024-05-06 19:24:25.206044','2024-05-06 19:24:25.000000','en','Dominica',62,1302),('2024-05-06 19:24:25.224494','2024-05-06 19:24:25.000000','en','Dominican Republic',63,1303),('2024-05-06 19:24:25.243300','2024-05-06 19:24:25.000000','en','Ecuador',64,1304),('2024-05-06 19:24:25.258842','2024-05-06 19:24:25.000000','en','Egypt',65,1305),('2024-05-06 19:24:25.280837','2024-05-06 19:24:25.000000','en','El Salvador',66,1306),('2024-05-06 19:24:25.295691','2024-05-06 19:24:25.000000','en','Equatorial Guinea',67,1307),('2024-05-06 19:24:25.316648','2024-05-06 19:24:25.000000','en','Eritrea',68,1308),('2024-05-06 19:24:25.334711','2024-05-06 19:24:25.000000','en','Estonia',69,1309),('2024-05-06 19:24:25.351107','2024-05-06 19:24:25.000000','en','Eswatini',70,1310),('2024-05-06 19:24:25.374285','2024-05-06 19:24:25.000000','en','Ethiopia',71,1311),('2024-05-06 19:24:25.387630','2024-05-06 19:24:25.000000','en','Falkland Islands (Malvinas)',72,1312),('2024-05-06 19:24:25.404682','2024-05-06 19:24:25.000000','en','Faroe Islands',73,1313),('2024-05-06 19:24:25.422531','2024-05-06 19:24:25.000000','en','Fiji',74,1314),('2024-05-06 19:24:25.440268','2024-05-06 19:24:25.000000','en','Finland',75,1315),('2024-05-06 19:24:25.468887','2024-05-06 19:24:25.000000','en','France',76,1316),('2024-05-06 19:24:25.486254','2024-05-06 19:24:25.000000','en','French Guiana',77,1317),('2024-05-06 19:24:25.501864','2024-05-06 19:24:25.000000','en','French Polynesia',78,1318),('2024-05-06 19:24:25.517848','2024-05-06 19:24:25.000000','en','French Southern Territories',79,1319),('2024-05-06 19:24:25.534468','2024-05-06 19:24:25.000000','en','Gabon',80,1320),('2024-05-06 19:24:25.551852','2024-05-06 19:24:25.000000','en','Gambia',81,1321),('2024-05-06 19:24:25.565070','2024-05-06 19:24:25.000000','en','Georgia',82,1322),('2024-05-06 19:24:25.579952','2024-05-06 19:24:25.000000','en','Germany',83,1323),('2024-05-06 19:24:25.593711','2024-05-06 19:24:25.000000','en','Ghana',84,1324),('2024-05-06 19:24:25.610762','2024-05-06 19:24:25.000000','en','Gibraltar',85,1325),('2024-05-06 19:24:25.626439','2024-05-06 19:24:25.000000','en','Greece',86,1326),('2024-05-06 19:24:25.641182','2024-05-06 19:24:25.000000','en','Greenland',87,1327),('2024-05-06 19:24:25.652999','2024-05-06 19:24:25.000000','en','Grenada',88,1328),('2024-05-06 19:24:25.669078','2024-05-06 19:24:25.000000','en','Guadeloupe',89,1329),('2024-05-06 19:24:25.685272','2024-05-06 19:24:25.000000','en','Guam',90,1330),('2024-05-06 19:24:25.703000','2024-05-06 19:24:25.000000','en','Guatemala',91,1331),('2024-05-06 19:24:25.720005','2024-05-06 19:24:25.000000','en','Guernsey',92,1332),('2024-05-06 19:24:25.736321','2024-05-06 19:24:25.000000','en','Guinea',93,1333),('2024-05-06 19:24:25.751653','2024-05-06 19:24:25.000000','en','Guinea-Bissau',94,1334),('2024-05-06 19:24:25.767729','2024-05-06 19:24:25.000000','en','Guyana',95,1335),('2024-05-06 19:24:25.782293','2024-05-06 19:24:25.000000','en','Haiti',96,1336),('2024-05-06 19:24:25.795001','2024-05-06 19:24:25.000000','en','Heard Island and McDonald Islands',97,1337),('2024-05-06 19:24:25.810424','2024-05-06 19:24:25.000000','en','Holy See',98,1338),('2024-05-06 19:24:25.828286','2024-05-06 19:24:25.000000','en','Honduras',99,1339),('2024-05-06 19:24:25.844677','2024-05-06 19:24:25.000000','en','Hong Kong',100,1340),('2024-05-06 19:24:25.876759','2024-05-06 19:24:25.000000','en','Hungary',101,1341),('2024-05-06 19:24:25.899607','2024-05-06 19:24:25.000000','en','Iceland',102,1342),('2024-05-06 19:24:25.921313','2024-05-06 19:24:25.000000','en','India',103,1343),('2024-05-06 19:24:25.941776','2024-05-06 19:24:25.000000','en','Indonesia',104,1344),('2024-05-06 19:24:25.961572','2024-05-06 19:24:25.000000','en','Iran (Islamic Republic of)',105,1345),('2024-05-06 19:24:25.982270','2024-05-06 19:24:25.000000','en','Iraq',106,1346),('2024-05-06 19:24:26.006165','2024-05-06 19:24:26.000000','en','Ireland',107,1347),('2024-05-06 19:24:26.033335','2024-05-06 19:24:26.000000','en','Isle of Man',108,1348),('2024-05-06 19:24:26.049953','2024-05-06 19:24:26.000000','en','Israel',109,1349),('2024-05-06 19:24:26.068106','2024-05-06 19:24:26.000000','en','Italy',110,1350),('2024-05-06 19:24:26.094604','2024-05-06 19:24:26.000000','en','Jamaica',111,1351),('2024-05-06 19:24:26.113080','2024-05-06 19:24:26.000000','en','Japan',112,1352),('2024-05-06 19:24:26.136484','2024-05-06 19:24:26.000000','en','Jersey',113,1353),('2024-05-06 19:24:26.154468','2024-05-06 19:24:26.000000','en','Jordan',114,1354),('2024-05-06 19:24:26.173520','2024-05-06 19:24:26.000000','en','Kazakhstan',115,1355),('2024-05-06 19:24:26.188980','2024-05-06 19:24:26.000000','en','Kenya',116,1356),('2024-05-06 19:24:26.208880','2024-05-06 19:24:26.000000','en','Kiribati',117,1357),('2024-05-06 19:24:26.241338','2024-05-06 19:24:26.000000','en','Korea (Democratic People\'s Republic of)',118,1358),('2024-05-06 19:24:26.264001','2024-05-06 19:24:26.000000','en','Korea (Republic of)',119,1359),('2024-05-06 19:24:26.288374','2024-05-06 19:24:26.000000','en','Kuwait',120,1360),('2024-05-06 19:24:26.307376','2024-05-06 19:24:26.000000','en','Kyrgyzstan',121,1361),('2024-05-06 19:24:26.325799','2024-05-06 19:24:26.000000','en','Lao People\'s Democratic Republic',122,1362),('2024-05-06 19:24:26.343915','2024-05-06 19:24:26.000000','en','Latvia',123,1363),('2024-05-06 19:24:26.361826','2024-05-06 19:24:26.000000','en','Lebanon',124,1364),('2024-05-06 19:24:26.387918','2024-05-06 19:24:26.000000','en','Lesotho',125,1365),('2024-05-06 19:24:26.403129','2024-05-06 19:24:26.000000','en','Liberia',126,1366),('2024-05-06 19:24:26.420753','2024-05-06 19:24:26.000000','en','Libya',127,1367),('2024-05-06 19:24:26.440013','2024-05-06 19:24:26.000000','en','Liechtenstein',128,1368),('2024-05-06 19:24:26.456056','2024-05-06 19:24:26.000000','en','Lithuania',129,1369),('2024-05-06 19:24:26.472762','2024-05-06 19:24:26.000000','en','Luxembourg',130,1370),('2024-05-06 19:24:26.488783','2024-05-06 19:24:26.000000','en','Macao',131,1371),('2024-05-06 19:24:26.506748','2024-05-06 19:24:26.000000','en','Macedonia (the former Yugoslav Republic of)',132,1372),('2024-05-06 19:24:26.525869','2024-05-06 19:24:26.000000','en','Madagascar',133,1373),('2024-05-06 19:24:26.543395','2024-05-06 19:24:26.000000','en','Malawi',134,1374),('2024-05-06 19:24:26.562744','2024-05-06 19:24:26.000000','en','Malaysia',135,1375),('2024-05-06 19:24:26.587380','2024-05-06 19:24:26.000000','en','Maldives',136,1376),('2024-05-06 19:24:26.604482','2024-05-06 19:24:26.000000','en','Mali',137,1377),('2024-05-06 19:24:26.623720','2024-05-06 19:24:26.000000','en','Malta',138,1378),('2024-05-06 19:24:26.644700','2024-05-06 19:24:26.000000','en','Marshall Islands',139,1379),('2024-05-06 19:24:26.663263','2024-05-06 19:24:26.000000','en','Martinique',140,1380),('2024-05-06 19:24:26.682870','2024-05-06 19:24:26.000000','en','Mauritania',141,1381),('2024-05-06 19:24:26.713516','2024-05-06 19:24:26.000000','en','Mauritius',142,1382),('2024-05-06 19:24:26.735734','2024-05-06 19:24:26.000000','en','Mayotte',143,1383),('2024-05-06 19:24:26.761022','2024-05-06 19:24:26.000000','en','Mexico',144,1384),('2024-05-06 19:24:26.781775','2024-05-06 19:24:26.000000','en','Micronesia (Federated States of)',145,1385),('2024-05-06 19:24:26.813217','2024-05-06 19:24:26.000000','en','Moldova (Republic of)',146,1386),('2024-05-06 19:24:26.834803','2024-05-06 19:24:26.000000','en','Monaco',147,1387),('2024-05-06 19:24:26.848873','2024-05-06 19:24:26.000000','en','Mongolia',148,1388),('2024-05-06 19:24:26.878531','2024-05-06 19:24:26.000000','en','Montenegro',149,1389),('2024-05-06 19:24:26.896151','2024-05-06 19:24:26.000000','en','Montserrat',150,1390),('2024-05-06 19:24:26.913664','2024-05-06 19:24:26.000000','en','Morocco',151,1391),('2024-05-06 19:24:26.929870','2024-05-06 19:24:26.000000','en','Mozambique',152,1392),('2024-05-06 19:24:26.960539','2024-05-06 19:24:26.000000','en','Myanmar',153,1393),('2024-05-06 19:24:26.983767','2024-05-06 19:24:26.000000','en','Namibia',154,1394),('2024-05-06 19:24:27.002838','2024-05-06 19:24:27.000000','en','Nauru',155,1395),('2024-05-06 19:24:27.022261','2024-05-06 19:24:27.000000','en','Nepal',156,1396),('2024-05-06 19:24:27.042080','2024-05-06 19:24:27.000000','en','Netherlands',157,1397),('2024-05-06 19:24:27.062040','2024-05-06 19:24:27.000000','en','New Caledonia',158,1398),('2024-05-06 19:24:27.081582','2024-05-06 19:24:27.000000','en','New Zealand',159,1399),('2024-05-06 19:24:27.106922','2024-05-06 19:24:27.000000','en','Nicaragua',160,1400),('2024-05-06 19:24:27.126888','2024-05-06 19:24:27.000000','en','Niger',161,1401),('2024-05-06 19:24:27.147783','2024-05-06 19:24:27.000000','en','Nigeria',162,1402),('2024-05-06 19:24:27.167533','2024-05-06 19:24:27.000000','en','Niue',163,1403),('2024-05-06 19:24:27.195616','2024-05-06 19:24:27.000000','en','Norfolk Island',164,1404),('2024-05-06 19:24:27.215885','2024-05-06 19:24:27.000000','en','Northern Mariana Islands',165,1405),('2024-05-06 19:24:27.243177','2024-05-06 19:24:27.000000','en','Norway',166,1406),('2024-05-06 19:24:27.263157','2024-05-06 19:24:27.000000','en','Oman',167,1407),('2024-05-06 19:24:27.291293','2024-05-06 19:24:27.000000','en','Pakistan',168,1408),('2024-05-06 19:24:27.323127','2024-05-06 19:24:27.000000','en','Palau',169,1409),('2024-05-06 19:24:27.344083','2024-05-06 19:24:27.000000','en','Palestine, State of',170,1410),('2024-05-06 19:24:27.368826','2024-05-06 19:24:27.000000','en','Panama',171,1411),('2024-05-06 19:24:27.388440','2024-05-06 19:24:27.000000','en','Papua New Guinea',172,1412),('2024-05-06 19:24:27.405301','2024-05-06 19:24:27.000000','en','Paraguay',173,1413),('2024-05-06 19:24:27.436952','2024-05-06 19:24:27.000000','en','Peru',174,1414),('2024-05-06 19:24:27.456406','2024-05-06 19:24:27.000000','en','Philippines',175,1415),('2024-05-06 19:24:27.471344','2024-05-06 19:24:27.000000','en','Pitcairn',176,1416),('2024-05-06 19:24:27.510075','2024-05-06 19:24:27.000000','en','Poland',177,1417),('2024-05-06 19:24:27.532787','2024-05-06 19:24:27.000000','en','Portugal',178,1418),('2024-05-06 19:24:27.550066','2024-05-06 19:24:27.000000','en','Puerto Rico',179,1419),('2024-05-06 19:24:27.566099','2024-05-06 19:24:27.000000','en','Qatar',180,1420),('2024-05-06 19:24:27.585418','2024-05-06 19:24:27.000000','en','Réunion',181,1421),('2024-05-06 19:24:27.618035','2024-05-06 19:24:27.000000','en','Romania',182,1422),('2024-05-06 19:24:27.636297','2024-05-06 19:24:27.000000','en','Russian Federation',183,1423),('2024-05-06 19:24:27.659470','2024-05-06 19:24:27.000000','en','Rwanda',184,1424),('2024-05-06 19:24:27.700008','2024-05-06 19:24:27.000000','en','Saint Barthélemy',185,1425),('2024-05-06 19:24:27.728045','2024-05-06 19:24:27.000000','en','Saint Helena, Ascension and Tristan da Cunha',186,1426),('2024-05-06 19:24:27.763583','2024-05-06 19:24:27.000000','en','Saint Kitts and Nevis',187,1427),('2024-05-06 19:24:27.788357','2024-05-06 19:24:27.000000','en','Saint Lucia',188,1428),('2024-05-06 19:24:27.813031','2024-05-06 19:24:27.000000','en','Saint Martin (French part)',189,1429),('2024-05-06 19:24:27.841800','2024-05-06 19:24:27.000000','en','Saint Pierre and Miquelon',190,1430),('2024-05-06 19:24:27.864519','2024-05-06 19:24:27.000000','en','Saint Vincent and the Grenadines',191,1431),('2024-05-06 19:24:27.883388','2024-05-06 19:24:27.000000','en','Samoa',192,1432),('2024-05-06 19:24:27.901608','2024-05-06 19:24:27.000000','en','San Marino',193,1433),('2024-05-06 19:24:27.938014','2024-05-06 19:24:27.000000','en','Sao Tome and Principe',194,1434),('2024-05-06 19:24:27.956479','2024-05-06 19:24:27.000000','en','Saudi Arabia',195,1435),('2024-05-06 19:24:27.980144','2024-05-06 19:24:27.000000','en','Senegal',196,1436),('2024-05-06 19:24:27.997588','2024-05-06 19:24:28.000000','en','Serbia',197,1437),('2024-05-06 19:24:28.016227','2024-05-06 19:24:28.000000','en','Seychelles',198,1438),('2024-05-06 19:24:28.035630','2024-05-06 19:24:28.000000','en','Sierra Leone',199,1439),('2024-05-06 19:24:28.050453','2024-05-06 19:24:28.000000','en','Singapore',200,1440),('2024-05-06 19:24:28.088309','2024-05-06 19:24:28.000000','en','Sint Maarten (Dutch part)',201,1441),('2024-05-06 19:24:28.104904','2024-05-06 19:24:28.000000','en','Slovakia',202,1442),('2024-05-06 19:24:28.128297','2024-05-06 19:24:28.000000','en','Slovenia',203,1443),('2024-05-06 19:24:28.142588','2024-05-06 19:24:28.000000','en','Solomon Islands',204,1444),('2024-05-06 19:24:28.161775','2024-05-06 19:24:28.000000','en','Somalia',205,1445),('2024-05-06 19:24:28.200175','2024-05-06 19:24:28.000000','en','South Africa',206,1446),('2024-05-06 19:24:28.222532','2024-05-06 19:24:28.000000','en','South Georgia and the South Sandwich Islands',207,1447),('2024-05-06 19:24:28.247090','2024-05-06 19:24:28.000000','en','South Sudan',208,1448),('2024-05-06 19:24:28.261354','2024-05-06 19:24:28.000000','en','Spain',209,1449),('2024-05-06 19:24:28.280868','2024-05-06 19:24:28.000000','en','Sri Lanka',210,1450),('2024-05-06 19:24:28.298545','2024-05-06 19:24:28.000000','en','Sudan',211,1451),('2024-05-06 19:24:28.320791','2024-05-06 19:24:28.000000','en','Suriname',212,1452),('2024-05-06 19:24:28.337069','2024-05-06 19:24:28.000000','en','Svalbard and Jan Mayen',213,1453),('2024-05-06 19:24:28.360881','2024-05-06 19:24:28.000000','en','Sweden',214,1454),('2024-05-06 19:24:28.388177','2024-05-06 19:24:28.000000','en','Switzerland',215,1455),('2024-05-06 19:24:28.409307','2024-05-06 19:24:28.000000','en','Syrian Arab Republic',216,1456),('2024-05-06 19:24:28.436780','2024-05-06 19:24:28.000000','en','Taiwan, Province of China',217,1457),('2024-05-06 19:24:28.453821','2024-05-06 19:24:28.000000','en','Tajikistan',218,1458),('2024-05-06 19:24:28.470310','2024-05-06 19:24:28.000000','en','Tanzania, United Republic of',219,1459),('2024-05-06 19:24:28.487292','2024-05-06 19:24:28.000000','en','Thailand',220,1460),('2024-05-06 19:24:28.503586','2024-05-06 19:24:28.000000','en','Timor-Leste',221,1461),('2024-05-06 19:24:28.522869','2024-05-06 19:24:28.000000','en','Togo',222,1462),('2024-05-06 19:24:28.538922','2024-05-06 19:24:28.000000','en','Tokelau',223,1463),('2024-05-06 19:24:28.555679','2024-05-06 19:24:28.000000','en','Tonga',224,1464),('2024-05-06 19:24:28.573914','2024-05-06 19:24:28.000000','en','Trinidad and Tobago',225,1465),('2024-05-06 19:24:28.599047','2024-05-06 19:24:28.000000','en','Tunisia',226,1466),('2024-05-06 19:24:28.615959','2024-05-06 19:24:28.000000','en','Turkey',227,1467),('2024-05-06 19:24:28.633190','2024-05-06 19:24:28.000000','en','Turkmenistan',228,1468),('2024-05-06 19:24:28.652191','2024-05-06 19:24:28.000000','en','Turks and Caicos Islands',229,1469),('2024-05-06 19:24:28.675572','2024-05-06 19:24:28.000000','en','Tuvalu',230,1470),('2024-05-06 19:24:28.693146','2024-05-06 19:24:28.000000','en','Uganda',231,1471),('2024-05-06 19:24:28.707994','2024-05-06 19:24:28.000000','en','Ukraine',232,1472),('2024-05-06 19:24:28.723466','2024-05-06 19:24:28.000000','en','United Arab Emirates',233,1473),('2024-05-06 19:24:28.737220','2024-05-06 19:24:28.000000','en','United Kingdom',234,1474),('2024-05-06 19:24:28.752294','2024-05-06 19:24:28.000000','en','United States of America',235,1475),('2024-05-06 19:24:28.768295','2024-05-06 19:24:28.000000','en','United States Minor Outlying Islands',236,1476),('2024-05-06 19:24:28.784066','2024-05-06 19:24:28.000000','en','Uruguay',237,1477),('2024-05-06 19:24:28.798671','2024-05-06 19:24:28.000000','en','Uzbekistan',238,1478),('2024-05-06 19:24:28.833604','2024-05-06 19:24:28.000000','en','Vanuatu',239,1479),('2024-05-06 19:24:28.850694','2024-05-06 19:24:28.000000','en','Venezuela (Bolivarian Republic of)',240,1480),('2024-05-06 19:24:28.868081','2024-05-06 19:24:28.000000','en','Viet Nam',241,1481),('2024-05-06 19:24:28.882622','2024-05-06 19:24:28.000000','en','Virgin Islands (British)',242,1482),('2024-05-06 19:24:28.897862','2024-05-06 19:24:28.000000','en','Virgin Islands (U.S.)',243,1483),('2024-05-06 19:24:28.918012','2024-05-06 19:24:28.000000','en','Wallis and Futuna',244,1484),('2024-05-06 19:24:28.934757','2024-05-06 19:24:28.000000','en','Western Sahara',245,1485),('2024-05-06 19:24:28.950043','2024-05-06 19:24:28.000000','en','Yemen',246,1486),('2024-05-06 19:24:28.969540','2024-05-06 19:24:28.000000','en','Zambia',247,1487),('2024-05-06 19:24:28.991167','2024-05-06 19:24:28.000000','en','Zimbabwe',248,1488),('2024-05-06 19:35:18.166450','2024-05-06 19:35:18.000000','en','Afghanistan',249,1489),('2024-05-06 19:35:18.198326','2024-05-06 19:35:18.000000','en','Åland Islands',250,1490),('2024-05-06 19:35:18.216704','2024-05-06 19:35:18.000000','en','Albania',251,1491),('2024-05-06 19:35:18.255682','2024-05-06 19:35:18.000000','en','Algeria',252,1492),('2024-05-06 19:35:18.284233','2024-05-06 19:35:18.000000','en','American Samoa',253,1493),('2024-05-06 19:35:18.305919','2024-05-06 19:35:18.000000','en','Andorra',254,1494),('2024-05-06 19:35:18.324603','2024-05-06 19:35:18.000000','en','Angola',255,1495),('2024-05-06 19:35:18.344424','2024-05-06 19:35:18.000000','en','Anguilla',256,1496),('2024-05-06 19:35:18.368399','2024-05-06 19:35:18.000000','en','Antigua and Barbuda',257,1497),('2024-05-06 19:35:18.391811','2024-05-06 19:35:18.000000','en','Argentina',258,1498),('2024-05-06 19:35:18.416640','2024-05-06 19:35:18.000000','en','Armenia',259,1499),('2024-05-06 19:35:18.431730','2024-05-06 19:35:18.000000','en','Aruba',260,1500),('2024-05-06 19:35:18.451425','2024-05-06 19:35:18.000000','en','Australia',261,1501),('2024-05-06 19:35:18.467371','2024-05-06 19:35:18.000000','en','Austria',262,1502),('2024-05-06 19:35:18.486625','2024-05-06 19:35:18.000000','en','Azerbaijan',263,1503),('2024-05-06 19:35:18.504497','2024-05-06 19:35:18.000000','en','Bahamas',264,1504),('2024-05-06 19:35:18.522992','2024-05-06 19:35:18.000000','en','Bahrain',265,1505),('2024-05-06 19:35:18.540532','2024-05-06 19:35:18.000000','en','Bangladesh',266,1506),('2024-05-06 19:35:18.561528','2024-05-06 19:35:18.000000','en','Barbados',267,1507),('2024-05-06 19:35:18.591993','2024-05-06 19:35:18.000000','en','Belarus',268,1508),('2024-05-06 19:35:18.611668','2024-05-06 19:35:18.000000','en','Belgium',269,1509),('2024-05-06 19:35:18.629436','2024-05-06 19:35:18.000000','en','Belize',270,1510),('2024-05-06 19:35:18.646819','2024-05-06 19:35:18.000000','en','Benin',271,1511),('2024-05-06 19:35:18.666028','2024-05-06 19:35:18.000000','en','Bermuda',272,1512),('2024-05-06 19:35:18.687562','2024-05-06 19:35:18.000000','en','Bhutan',273,1513),('2024-05-06 19:35:18.711757','2024-05-06 19:35:18.000000','en','Bolivia (Plurinational State of)',274,1514),('2024-05-06 19:35:18.736448','2024-05-06 19:35:18.000000','en','Bonaire, Sint Eustatius and Saba',275,1515),('2024-05-06 19:35:18.757770','2024-05-06 19:35:18.000000','en','Bosnia and Herzegovina',276,1516),('2024-05-06 19:35:18.778981','2024-05-06 19:35:18.000000','en','Botswana',277,1517),('2024-05-06 19:35:18.816626','2024-05-06 19:35:18.000000','en','Bouvet Island',278,1518),('2024-05-06 19:35:18.846778','2024-05-06 19:35:18.000000','en','Brazil',279,1519),('2024-05-06 19:35:18.870041','2024-05-06 19:35:18.000000','en','British Indian Ocean Territory',280,1520),('2024-05-06 19:35:18.896860','2024-05-06 19:35:18.000000','en','Brunei Darussalam',281,1521),('2024-05-06 19:35:18.925367','2024-05-06 19:35:18.000000','en','Bulgaria',282,1522),('2024-05-06 19:35:18.951340','2024-05-06 19:35:18.000000','en','Burkina Faso',283,1523),('2024-05-06 19:35:18.989642','2024-05-06 19:35:19.000000','en','Burundi',284,1524),('2024-05-06 19:35:19.012227','2024-05-06 19:35:19.000000','en','Cabo Verde',285,1525),('2024-05-06 19:35:19.028244','2024-05-06 19:35:19.000000','en','Cambodia',286,1526),('2024-05-06 19:35:19.047879','2024-05-06 19:35:19.000000','en','Cameroon',287,1527),('2024-05-06 19:35:19.062427','2024-05-06 19:35:19.000000','en','Canada',288,1528),('2024-05-06 19:35:19.076092','2024-05-06 19:35:19.000000','en','Cayman Islands',289,1529),('2024-05-06 19:35:19.091505','2024-05-06 19:35:19.000000','en','Central African Republic',290,1530),('2024-05-06 19:35:19.105127','2024-05-06 19:35:19.000000','en','Chad',291,1531),('2024-05-06 19:35:19.126986','2024-05-06 19:35:19.000000','en','Chile',292,1532),('2024-05-06 19:35:19.142896','2024-05-06 19:35:19.000000','en','China',293,1533),('2024-05-06 19:35:19.183652','2024-05-06 19:35:19.000000','en','Christmas Island',294,1534),('2024-05-06 19:35:19.205141','2024-05-06 19:35:19.000000','en','Cocos (Keeling) Islands',295,1535),('2024-05-06 19:35:19.223173','2024-05-06 19:35:19.000000','en','Colombia',296,1536),('2024-05-06 19:35:19.250928','2024-05-06 19:35:19.000000','en','Comoros',297,1537),('2024-05-06 19:35:19.270698','2024-05-06 19:35:19.000000','en','Congo',298,1538),('2024-05-06 19:35:19.288251','2024-05-06 19:35:19.000000','en','Congo (Democratic Republic of the)',299,1539),('2024-05-06 19:35:19.305726','2024-05-06 19:35:19.000000','en','Cook Islands',300,1540),('2024-05-06 19:35:19.322312','2024-05-06 19:35:19.000000','en','Costa Rica',301,1541),('2024-05-06 19:35:19.338644','2024-05-06 19:35:19.000000','en','Côte d\'Ivoire',302,1542),('2024-05-06 19:35:19.358110','2024-05-06 19:35:19.000000','en','Croatia',303,1543),('2024-05-06 19:35:19.381738','2024-05-06 19:35:19.000000','en','Cuba',304,1544),('2024-05-06 19:35:19.402850','2024-05-06 19:35:19.000000','en','Curaçao',305,1545),('2024-05-06 19:35:19.419313','2024-05-06 19:35:19.000000','en','Cyprus',306,1546),('2024-05-06 19:35:19.435449','2024-05-06 19:35:19.000000','en','Czechia',307,1547),('2024-05-06 19:35:19.469442','2024-05-06 19:35:19.000000','en','Denmark',308,1548),('2024-05-06 19:35:19.489870','2024-05-06 19:35:19.000000','en','Djibouti',309,1549),('2024-05-06 19:35:19.503075','2024-05-06 19:35:19.000000','en','Dominica',310,1550),('2024-05-06 19:35:19.518465','2024-05-06 19:35:19.000000','en','Dominican Republic',311,1551),('2024-05-06 19:35:19.532419','2024-05-06 19:35:19.000000','en','Ecuador',312,1552),('2024-05-06 19:35:19.544702','2024-05-06 19:35:19.000000','en','Egypt',313,1553),('2024-05-06 19:35:19.558960','2024-05-06 19:35:19.000000','en','El Salvador',314,1554),('2024-05-06 19:35:19.573092','2024-05-06 19:35:19.000000','en','Equatorial Guinea',315,1555),('2024-05-06 19:35:19.586178','2024-05-06 19:35:19.000000','en','Eritrea',316,1556),('2024-05-06 19:35:19.601809','2024-05-06 19:35:19.000000','en','Estonia',317,1557),('2024-05-06 19:35:19.615938','2024-05-06 19:35:19.000000','en','Eswatini',318,1558),('2024-05-06 19:35:19.633413','2024-05-06 19:35:19.000000','en','Ethiopia',319,1559),('2024-05-06 19:35:19.648083','2024-05-06 19:35:19.000000','en','Falkland Islands (Malvinas)',320,1560),('2024-05-06 19:35:19.673748','2024-05-06 19:35:19.000000','en','Faroe Islands',321,1561),('2024-05-06 19:35:19.685949','2024-05-06 19:35:19.000000','en','Fiji',322,1562),('2024-05-06 19:35:19.700781','2024-05-06 19:35:19.000000','en','Finland',323,1563),('2024-05-06 19:35:19.715318','2024-05-06 19:35:19.000000','en','France',324,1564),('2024-05-06 19:35:19.731051','2024-05-06 19:35:19.000000','en','French Guiana',325,1565),('2024-05-06 19:35:19.746969','2024-05-06 19:35:19.000000','en','French Polynesia',326,1566),('2024-05-06 19:35:19.760480','2024-05-06 19:35:19.000000','en','French Southern Territories',327,1567),('2024-05-06 19:35:19.774180','2024-05-06 19:35:19.000000','en','Gabon',328,1568),('2024-05-06 19:35:19.788901','2024-05-06 19:35:19.000000','en','Gambia',329,1569),('2024-05-06 19:35:19.806528','2024-05-06 19:35:19.000000','en','Georgia',330,1570),('2024-05-06 19:35:19.823887','2024-05-06 19:35:19.000000','en','Germany',331,1571),('2024-05-06 19:35:19.843948','2024-05-06 19:35:19.000000','en','Ghana',332,1572),('2024-05-06 19:35:19.859537','2024-05-06 19:35:19.000000','en','Gibraltar',333,1573),('2024-05-06 19:35:19.878226','2024-05-06 19:35:19.000000','en','Greece',334,1574),('2024-05-06 19:35:19.899820','2024-05-06 19:35:19.000000','en','Greenland',335,1575),('2024-05-06 19:35:19.918360','2024-05-06 19:35:19.000000','en','Grenada',336,1576),('2024-05-06 19:35:19.943664','2024-05-06 19:35:19.000000','en','Guadeloupe',337,1577),('2024-05-06 19:35:19.965463','2024-05-06 19:35:19.000000','en','Guam',338,1578),('2024-05-06 19:35:19.987307','2024-05-06 19:35:19.000000','en','Guatemala',339,1579),('2024-05-06 19:35:20.017319','2024-05-06 19:35:20.000000','en','Guernsey',340,1580),('2024-05-06 19:35:20.044893','2024-05-06 19:35:20.000000','en','Guinea',341,1581),('2024-05-06 19:35:20.075107','2024-05-06 19:35:20.000000','en','Guinea-Bissau',342,1582),('2024-05-06 19:35:20.088711','2024-05-06 19:35:20.000000','en','Guyana',343,1583),('2024-05-06 19:35:20.106206','2024-05-06 19:35:20.000000','en','Haiti',344,1584),('2024-05-06 19:35:20.122824','2024-05-06 19:35:20.000000','en','Heard Island and McDonald Islands',345,1585),('2024-05-06 19:35:20.142844','2024-05-06 19:35:20.000000','en','Holy See',346,1586),('2024-05-06 19:35:20.159260','2024-05-06 19:35:20.000000','en','Honduras',347,1587),('2024-05-06 19:35:20.202232','2024-05-06 19:35:20.000000','en','Hong Kong',348,1588),('2024-05-06 19:35:20.220444','2024-05-06 19:35:20.000000','en','Hungary',349,1589),('2024-05-06 19:35:20.243281','2024-05-06 19:35:20.000000','en','Iceland',350,1590),('2024-05-06 19:35:20.256117','2024-05-06 19:35:20.000000','en','India',351,1591),('2024-05-06 19:35:20.275521','2024-05-06 19:35:20.000000','en','Indonesia',352,1592),('2024-05-06 19:35:20.289834','2024-05-06 19:35:20.000000','en','Iran (Islamic Republic of)',353,1593),('2024-05-06 19:35:20.312319','2024-05-06 19:35:20.000000','en','Iraq',354,1594),('2024-05-06 19:35:20.333671','2024-05-06 19:35:20.000000','en','Ireland',355,1595),('2024-05-06 19:35:20.345308','2024-05-06 19:35:20.000000','en','Isle of Man',356,1596),('2024-05-06 19:35:20.362139','2024-05-06 19:35:20.000000','en','Israel',357,1597),('2024-05-06 19:35:20.373475','2024-05-06 19:35:20.000000','en','Italy',358,1598),('2024-05-06 19:35:20.393515','2024-05-06 19:35:20.000000','en','Jamaica',359,1599),('2024-05-06 19:35:20.413300','2024-05-06 19:35:20.000000','en','Japan',360,1600),('2024-05-06 19:35:20.428629','2024-05-06 19:35:20.000000','en','Jersey',361,1601),('2024-05-06 19:35:20.444236','2024-05-06 19:35:20.000000','en','Jordan',362,1602),('2024-05-06 19:35:20.460870','2024-05-06 19:35:20.000000','en','Kazakhstan',363,1603),('2024-05-06 19:35:20.474457','2024-05-06 19:35:20.000000','en','Kenya',364,1604),('2024-05-06 19:35:20.492457','2024-05-06 19:35:20.000000','en','Kiribati',365,1605),('2024-05-06 19:35:20.507606','2024-05-06 19:35:20.000000','en','Korea (Democratic People\'s Republic of)',366,1606),('2024-05-06 19:35:20.523101','2024-05-06 19:35:20.000000','en','Korea (Republic of)',367,1607),('2024-05-06 19:35:20.536696','2024-05-06 19:35:20.000000','en','Kuwait',368,1608),('2024-05-06 19:35:20.550178','2024-05-06 19:35:20.000000','en','Kyrgyzstan',369,1609),('2024-05-06 19:35:20.576217','2024-05-06 19:35:20.000000','en','Lao People\'s Democratic Republic',370,1610),('2024-05-06 19:35:20.596229','2024-05-06 19:35:20.000000','en','Latvia',371,1611),('2024-05-06 19:35:20.628163','2024-05-06 19:35:20.000000','en','Lebanon',372,1612),('2024-05-06 19:35:20.643211','2024-05-06 19:35:20.000000','en','Lesotho',373,1613),('2024-05-06 19:35:20.659376','2024-05-06 19:35:20.000000','en','Liberia',374,1614),('2024-05-06 19:35:20.670849','2024-05-06 19:35:20.000000','en','Libya',375,1615),('2024-05-06 19:35:20.681551','2024-05-06 19:35:20.000000','en','Liechtenstein',376,1616),('2024-05-06 19:35:20.695698','2024-05-06 19:35:20.000000','en','Lithuania',377,1617),('2024-05-06 19:35:20.708136','2024-05-06 19:35:20.000000','en','Luxembourg',378,1618),('2024-05-06 19:35:20.720907','2024-05-06 19:35:20.000000','en','Macao',379,1619),('2024-05-06 19:35:20.738679','2024-05-06 19:35:20.000000','en','Macedonia (the former Yugoslav Republic of)',380,1620),('2024-05-06 19:35:20.751995','2024-05-06 19:35:20.000000','en','Madagascar',381,1621),('2024-05-06 19:35:20.768581','2024-05-06 19:35:20.000000','en','Malawi',382,1622),('2024-05-06 19:35:20.780814','2024-05-06 19:35:20.000000','en','Malaysia',383,1623),('2024-05-06 19:35:20.794060','2024-05-06 19:35:20.000000','en','Maldives',384,1624),('2024-05-06 19:35:20.808257','2024-05-06 19:35:20.000000','en','Mali',385,1625),('2024-05-06 19:35:20.820949','2024-05-06 19:35:20.000000','en','Malta',386,1626),('2024-05-06 19:35:20.835340','2024-05-06 19:35:20.000000','en','Marshall Islands',387,1627),('2024-05-06 19:35:20.851605','2024-05-06 19:35:20.000000','en','Martinique',388,1628),('2024-05-06 19:35:20.866289','2024-05-06 19:35:20.000000','en','Mauritania',389,1629),('2024-05-06 19:35:20.878394','2024-05-06 19:35:20.000000','en','Mauritius',390,1630),('2024-05-06 19:35:20.891625','2024-05-06 19:35:20.000000','en','Mayotte',391,1631),('2024-05-06 19:35:20.905024','2024-05-06 19:35:20.000000','en','Mexico',392,1632),('2024-05-06 19:35:20.918583','2024-05-06 19:35:20.000000','en','Micronesia (Federated States of)',393,1633),('2024-05-06 19:35:20.930077','2024-05-06 19:35:20.000000','en','Moldova (Republic of)',394,1634),('2024-05-06 19:35:20.944677','2024-05-06 19:35:20.000000','en','Monaco',395,1635),('2024-05-06 19:35:20.956562','2024-05-06 19:35:20.000000','en','Mongolia',396,1636),('2024-05-06 19:35:20.970227','2024-05-06 19:35:20.000000','en','Montenegro',397,1637),('2024-05-06 19:35:20.983215','2024-05-06 19:35:20.000000','en','Montserrat',398,1638),('2024-05-06 19:35:20.995768','2024-05-06 19:35:21.000000','en','Morocco',399,1639),('2024-05-06 19:35:21.009998','2024-05-06 19:35:21.000000','en','Mozambique',400,1640),('2024-05-06 19:35:21.022359','2024-05-06 19:35:21.000000','en','Myanmar',401,1641),('2024-05-06 19:35:21.034966','2024-05-06 19:35:21.000000','en','Namibia',402,1642),('2024-05-06 19:35:21.048947','2024-05-06 19:35:21.000000','en','Nauru',403,1643),('2024-05-06 19:35:21.063263','2024-05-06 19:35:21.000000','en','Nepal',404,1644),('2024-05-06 19:35:21.080002','2024-05-06 19:35:21.000000','en','Netherlands',405,1645),('2024-05-06 19:35:21.094721','2024-05-06 19:35:21.000000','en','New Caledonia',406,1646),('2024-05-06 19:35:21.107736','2024-05-06 19:35:21.000000','en','New Zealand',407,1647),('2024-05-06 19:35:21.120952','2024-05-06 19:35:21.000000','en','Nicaragua',408,1648),('2024-05-06 19:35:21.139064','2024-05-06 19:35:21.000000','en','Niger',409,1649),('2024-05-06 19:35:21.154347','2024-05-06 19:35:21.000000','en','Nigeria',410,1650),('2024-05-06 19:35:21.172305','2024-05-06 19:35:21.000000','en','Niue',411,1651),('2024-05-06 19:35:21.185421','2024-05-06 19:35:21.000000','en','Norfolk Island',412,1652),('2024-05-06 19:35:21.197290','2024-05-06 19:35:21.000000','en','Northern Mariana Islands',413,1653),('2024-05-06 19:35:21.214178','2024-05-06 19:35:21.000000','en','Norway',414,1654),('2024-05-06 19:35:21.228682','2024-05-06 19:35:21.000000','en','Oman',415,1655),('2024-05-06 19:35:21.246355','2024-05-06 19:35:21.000000','en','Pakistan',416,1656),('2024-05-06 19:35:21.267753','2024-05-06 19:35:21.000000','en','Palau',417,1657),('2024-05-06 19:35:21.284032','2024-05-06 19:35:21.000000','en','Palestine, State of',418,1658),('2024-05-06 19:35:21.309483','2024-05-06 19:35:21.000000','en','Panama',419,1659),('2024-05-06 19:35:21.336017','2024-05-06 19:35:21.000000','en','Papua New Guinea',420,1660),('2024-05-06 19:35:21.355348','2024-05-06 19:35:21.000000','en','Paraguay',421,1661),('2024-05-06 19:35:21.384562','2024-05-06 19:35:21.000000','en','Peru',422,1662),('2024-05-06 19:35:21.402788','2024-05-06 19:35:21.000000','en','Philippines',423,1663),('2024-05-06 19:35:21.420853','2024-05-06 19:35:21.000000','en','Pitcairn',424,1664),('2024-05-06 19:35:21.438260','2024-05-06 19:35:21.000000','en','Poland',425,1665),('2024-05-06 19:35:21.467156','2024-05-06 19:35:21.000000','en','Portugal',426,1666),('2024-05-06 19:35:21.485541','2024-05-06 19:35:21.000000','en','Puerto Rico',427,1667),('2024-05-06 19:35:21.501150','2024-05-06 19:35:21.000000','en','Qatar',428,1668),('2024-05-06 19:35:21.514732','2024-05-06 19:35:21.000000','en','Réunion',429,1669),('2024-05-06 19:35:21.528614','2024-05-06 19:35:21.000000','en','Romania',430,1670),('2024-05-06 19:35:21.544550','2024-05-06 19:35:21.000000','en','Russian Federation',431,1671),('2024-05-06 19:35:21.560466','2024-05-06 19:35:21.000000','en','Rwanda',432,1672),('2024-05-06 19:35:21.573859','2024-05-06 19:35:21.000000','en','Saint Barthélemy',433,1673),('2024-05-06 19:35:21.586107','2024-05-06 19:35:21.000000','en','Saint Helena, Ascension and Tristan da Cunha',434,1674),('2024-05-06 19:35:21.598803','2024-05-06 19:35:21.000000','en','Saint Kitts and Nevis',435,1675),('2024-05-06 19:35:21.617967','2024-05-06 19:35:21.000000','en','Saint Lucia',436,1676),('2024-05-06 19:35:21.652502','2024-05-06 19:35:21.000000','en','Saint Martin (French part)',437,1677),('2024-05-06 19:35:21.668866','2024-05-06 19:35:21.000000','en','Saint Pierre and Miquelon',438,1678),('2024-05-06 19:35:21.681652','2024-05-06 19:35:21.000000','en','Saint Vincent and the Grenadines',439,1679),('2024-05-06 19:35:21.698912','2024-05-06 19:35:21.000000','en','Samoa',440,1680),('2024-05-06 19:35:21.718309','2024-05-06 19:35:21.000000','en','San Marino',441,1681),('2024-05-06 19:35:21.733727','2024-05-06 19:35:21.000000','en','Sao Tome and Principe',442,1682),('2024-05-06 19:35:21.763554','2024-05-06 19:35:21.000000','en','Saudi Arabia',443,1683),('2024-05-06 19:35:21.778614','2024-05-06 19:35:21.000000','en','Senegal',444,1684),('2024-05-06 19:35:21.796824','2024-05-06 19:35:21.000000','en','Serbia',445,1685),('2024-05-06 19:35:21.810007','2024-05-06 19:35:21.000000','en','Seychelles',446,1686),('2024-05-06 19:35:21.830996','2024-05-06 19:35:21.000000','en','Sierra Leone',447,1687),('2024-05-06 19:35:21.847048','2024-05-06 19:35:21.000000','en','Singapore',448,1688),('2024-05-06 19:35:21.861167','2024-05-06 19:35:21.000000','en','Sint Maarten (Dutch part)',449,1689),('2024-05-06 19:35:21.874729','2024-05-06 19:35:21.000000','en','Slovakia',450,1690),('2024-05-06 19:35:21.887982','2024-05-06 19:35:21.000000','en','Slovenia',451,1691),('2024-05-06 19:35:21.900661','2024-05-06 19:35:21.000000','en','Solomon Islands',452,1692),('2024-05-06 19:35:21.915223','2024-05-06 19:35:21.000000','en','Somalia',453,1693),('2024-05-06 19:35:21.928839','2024-05-06 19:35:21.000000','en','South Africa',454,1694),('2024-05-06 19:35:21.940587','2024-05-06 19:35:21.000000','en','South Georgia and the South Sandwich Islands',455,1695),('2024-05-06 19:35:21.952306','2024-05-06 19:35:21.000000','en','South Sudan',456,1696),('2024-05-06 19:35:21.967618','2024-05-06 19:35:21.000000','en','Spain',457,1697),('2024-05-06 19:35:21.982716','2024-05-06 19:35:21.000000','en','Sri Lanka',458,1698),('2024-05-06 19:35:22.001258','2024-05-06 19:35:22.000000','en','Sudan',459,1699),('2024-05-06 19:35:22.026360','2024-05-06 19:35:22.000000','en','Suriname',460,1700),('2024-05-06 19:35:22.041667','2024-05-06 19:35:22.000000','en','Svalbard and Jan Mayen',461,1701),('2024-05-06 19:35:22.057952','2024-05-06 19:35:22.000000','en','Sweden',462,1702),('2024-05-06 19:35:22.072658','2024-05-06 19:35:22.000000','en','Switzerland',463,1703),('2024-05-06 19:35:22.090583','2024-05-06 19:35:22.000000','en','Syrian Arab Republic',464,1704),('2024-05-06 19:35:22.109463','2024-05-06 19:35:22.000000','en','Taiwan, Province of China',465,1705),('2024-05-06 19:35:22.129087','2024-05-06 19:35:22.000000','en','Tajikistan',466,1706),('2024-05-06 19:35:22.150048','2024-05-06 19:35:22.000000','en','Tanzania, United Republic of',467,1707),('2024-05-06 19:35:22.167044','2024-05-06 19:35:22.000000','en','Thailand',468,1708),('2024-05-06 19:35:22.187245','2024-05-06 19:35:22.000000','en','Timor-Leste',469,1709),('2024-05-06 19:35:22.200671','2024-05-06 19:35:22.000000','en','Togo',470,1710),('2024-05-06 19:35:22.225673','2024-05-06 19:35:22.000000','en','Tokelau',471,1711),('2024-05-06 19:35:22.240587','2024-05-06 19:35:22.000000','en','Tonga',472,1712),('2024-05-06 19:35:22.256757','2024-05-06 19:35:22.000000','en','Trinidad and Tobago',473,1713),('2024-05-06 19:35:22.282408','2024-05-06 19:35:22.000000','en','Tunisia',474,1714),('2024-05-06 19:35:22.310779','2024-05-06 19:35:22.000000','en','Turkey',475,1715),('2024-05-06 19:35:22.325073','2024-05-06 19:35:22.000000','en','Turkmenistan',476,1716),('2024-05-06 19:35:22.338028','2024-05-06 19:35:22.000000','en','Turks and Caicos Islands',477,1717),('2024-05-06 19:35:22.352047','2024-05-06 19:35:22.000000','en','Tuvalu',478,1718),('2024-05-06 19:35:22.377357','2024-05-06 19:35:22.000000','en','Uganda',479,1719),('2024-05-06 19:35:22.403940','2024-05-06 19:35:22.000000','en','Ukraine',480,1720),('2024-05-06 19:35:22.423111','2024-05-06 19:35:22.000000','en','United Arab Emirates',481,1721),('2024-05-06 19:35:22.440166','2024-05-06 19:35:22.000000','en','United Kingdom',482,1722),('2024-05-06 19:35:22.457242','2024-05-06 19:35:22.000000','en','United States of America',483,1723),('2024-05-06 19:35:22.473759','2024-05-06 19:35:22.000000','en','United States Minor Outlying Islands',484,1724),('2024-05-06 19:35:22.491207','2024-05-06 19:35:22.000000','en','Uruguay',485,1725),('2024-05-06 19:35:22.508773','2024-05-06 19:35:22.000000','en','Uzbekistan',486,1726),('2024-05-06 19:35:22.526894','2024-05-06 19:35:22.000000','en','Vanuatu',487,1727),('2024-05-06 19:35:22.549209','2024-05-06 19:35:22.000000','en','Venezuela (Bolivarian Republic of)',488,1728),('2024-05-06 19:35:22.572810','2024-05-06 19:35:22.000000','en','Viet Nam',489,1729),('2024-05-06 19:35:22.592813','2024-05-06 19:35:22.000000','en','Virgin Islands (British)',490,1730),('2024-05-06 19:35:22.609131','2024-05-06 19:35:22.000000','en','Virgin Islands (U.S.)',491,1731),('2024-05-06 19:35:22.627302','2024-05-06 19:35:22.000000','en','Wallis and Futuna',492,1732),('2024-05-06 19:35:22.642364','2024-05-06 19:35:22.000000','en','Western Sahara',493,1733),('2024-05-06 19:35:22.656787','2024-05-06 19:35:22.000000','en','Yemen',494,1734),('2024-05-06 19:35:22.672589','2024-05-06 19:35:22.000000','en','Zambia',495,1735),('2024-05-06 19:35:22.691897','2024-05-06 19:35:22.000000','en','Zimbabwe',496,1736),('2024-05-06 19:38:25.759650','2024-05-06 19:38:25.000000','en','Afghanistan',497,1737),('2024-05-06 19:38:25.783666','2024-05-06 19:38:25.000000','en','Åland Islands',498,1738),('2024-05-06 19:38:25.798228','2024-05-06 19:38:25.000000','en','Albania',499,1739),('2024-05-06 19:38:25.817095','2024-05-06 19:38:25.000000','en','Algeria',500,1740),('2024-05-06 19:38:25.832104','2024-05-06 19:38:25.000000','en','American Samoa',501,1741),('2024-05-06 19:38:25.847029','2024-05-06 19:38:25.000000','en','Andorra',502,1742),('2024-05-06 19:38:25.863963','2024-05-06 19:38:25.000000','en','Angola',503,1743),('2024-05-06 19:38:25.877664','2024-05-06 19:38:25.000000','en','Anguilla',504,1744),('2024-05-06 19:38:25.897145','2024-05-06 19:38:25.000000','en','Antigua and Barbuda',505,1745),('2024-05-06 19:38:25.911196','2024-05-06 19:38:25.000000','en','Argentina',506,1746),('2024-05-06 19:38:25.929734','2024-05-06 19:38:25.000000','en','Armenia',507,1747),('2024-05-06 19:38:25.944230','2024-05-06 19:38:25.000000','en','Aruba',508,1748),('2024-05-06 19:38:25.958053','2024-05-06 19:38:25.000000','en','Australia',509,1749),('2024-05-06 19:38:25.971382','2024-05-06 19:38:25.000000','en','Austria',510,1750),('2024-05-06 19:38:25.989831','2024-05-06 19:38:25.000000','en','Azerbaijan',511,1751),('2024-05-06 19:38:26.004051','2024-05-06 19:38:26.000000','en','Bahamas',512,1752),('2024-05-06 19:38:26.018272','2024-05-06 19:38:26.000000','en','Bahrain',513,1753),('2024-05-06 19:38:26.033358','2024-05-06 19:38:26.000000','en','Bangladesh',514,1754),('2024-05-06 19:38:26.049186','2024-05-06 19:38:26.000000','en','Barbados',515,1755),('2024-05-06 19:38:26.062628','2024-05-06 19:38:26.000000','en','Belarus',516,1756),('2024-05-06 19:38:26.076733','2024-05-06 19:38:26.000000','en','Belgium',517,1757),('2024-05-06 19:38:26.093184','2024-05-06 19:38:26.000000','en','Belize',518,1758),('2024-05-06 19:38:26.107432','2024-05-06 19:38:26.000000','en','Benin',519,1759),('2024-05-06 19:38:26.121196','2024-05-06 19:38:26.000000','en','Bermuda',520,1760),('2024-05-06 19:38:26.134682','2024-05-06 19:38:26.000000','en','Bhutan',521,1761),('2024-05-06 19:38:26.147041','2024-05-06 19:38:26.000000','en','Bolivia (Plurinational State of)',522,1762),('2024-05-06 19:38:26.160216','2024-05-06 19:38:26.000000','en','Bonaire, Sint Eustatius and Saba',523,1763),('2024-05-06 19:38:26.175995','2024-05-06 19:38:26.000000','en','Bosnia and Herzegovina',524,1764),('2024-05-06 19:38:26.192861','2024-05-06 19:38:26.000000','en','Botswana',525,1765),('2024-05-06 19:38:26.206923','2024-05-06 19:38:26.000000','en','Bouvet Island',526,1766),('2024-05-06 19:38:26.227014','2024-05-06 19:38:26.000000','en','Brazil',527,1767),('2024-05-06 19:38:26.244808','2024-05-06 19:38:26.000000','en','British Indian Ocean Territory',528,1768),('2024-05-06 19:38:26.260562','2024-05-06 19:38:26.000000','en','Brunei Darussalam',529,1769),('2024-05-06 19:38:26.272424','2024-05-06 19:38:26.000000','en','Bulgaria',530,1770),('2024-05-06 19:38:26.286562','2024-05-06 19:38:26.000000','en','Burkina Faso',531,1771),('2024-05-06 19:38:26.301776','2024-05-06 19:38:26.000000','en','Burundi',532,1772),('2024-05-06 19:38:26.318903','2024-05-06 19:38:26.000000','en','Cabo Verde',533,1773),('2024-05-06 19:38:26.331033','2024-05-06 19:38:26.000000','en','Cambodia',534,1774),('2024-05-06 19:38:26.343722','2024-05-06 19:38:26.000000','en','Cameroon',535,1775),('2024-05-06 19:38:26.364008','2024-05-06 19:38:26.000000','en','Canada',536,1776),('2024-05-06 19:38:26.378005','2024-05-06 19:38:26.000000','en','Cayman Islands',537,1777),('2024-05-06 19:38:26.391619','2024-05-06 19:38:26.000000','en','Central African Republic',538,1778),('2024-05-06 19:38:26.405997','2024-05-06 19:38:26.000000','en','Chad',539,1779),('2024-05-06 19:38:26.418719','2024-05-06 19:38:26.000000','en','Chile',540,1780),('2024-05-06 19:38:26.432921','2024-05-06 19:38:26.000000','en','China',541,1781),('2024-05-06 19:38:26.456393','2024-05-06 19:38:26.000000','en','Christmas Island',542,1782),('2024-05-06 19:38:26.474350','2024-05-06 19:38:26.000000','en','Cocos (Keeling) Islands',543,1783),('2024-05-06 19:38:26.488261','2024-05-06 19:38:26.000000','en','Colombia',544,1784),('2024-05-06 19:38:26.505413','2024-05-06 19:38:26.000000','en','Comoros',545,1785),('2024-05-06 19:38:26.523792','2024-05-06 19:38:26.000000','en','Congo',546,1786),('2024-05-06 19:38:26.536780','2024-05-06 19:38:26.000000','en','Congo (Democratic Republic of the)',547,1787),('2024-05-06 19:38:26.550352','2024-05-06 19:38:26.000000','en','Cook Islands',548,1788),('2024-05-06 19:38:26.563588','2024-05-06 19:38:26.000000','en','Costa Rica',549,1789),('2024-05-06 19:38:26.576766','2024-05-06 19:38:26.000000','en','Côte d\'Ivoire',550,1790),('2024-05-06 19:38:26.593705','2024-05-06 19:38:26.000000','en','Croatia',551,1791),('2024-05-06 19:38:26.607729','2024-05-06 19:38:26.000000','en','Cuba',552,1792),('2024-05-06 19:38:26.622118','2024-05-06 19:38:26.000000','en','Curaçao',553,1793),('2024-05-06 19:38:26.633863','2024-05-06 19:38:26.000000','en','Cyprus',554,1794),('2024-05-06 19:38:26.646200','2024-05-06 19:38:26.000000','en','Czechia',555,1795),('2024-05-06 19:38:26.660400','2024-05-06 19:38:26.000000','en','Denmark',556,1796),('2024-05-06 19:38:26.674906','2024-05-06 19:38:26.000000','en','Djibouti',557,1797),('2024-05-06 19:38:26.686970','2024-05-06 19:38:26.000000','en','Dominica',558,1798),('2024-05-06 19:38:26.701162','2024-05-06 19:38:26.000000','en','Dominican Republic',559,1799),('2024-05-06 19:38:26.714650','2024-05-06 19:38:26.000000','en','Ecuador',560,1800),('2024-05-06 19:38:26.727252','2024-05-06 19:38:26.000000','en','Egypt',561,1801),('2024-05-06 19:38:26.753997','2024-05-06 19:38:26.000000','en','El Salvador',562,1802),('2024-05-06 19:38:26.768750','2024-05-06 19:38:26.000000','en','Equatorial Guinea',563,1803),('2024-05-06 19:38:26.781874','2024-05-06 19:38:26.000000','en','Eritrea',564,1804),('2024-05-06 19:38:26.794912','2024-05-06 19:38:26.000000','en','Estonia',565,1805),('2024-05-06 19:38:26.812516','2024-05-06 19:38:26.000000','en','Eswatini',566,1806),('2024-05-06 19:38:26.829555','2024-05-06 19:38:26.000000','en','Ethiopia',567,1807),('2024-05-06 19:38:26.847179','2024-05-06 19:38:26.000000','en','Falkland Islands (Malvinas)',568,1808),('2024-05-06 19:38:26.865314','2024-05-06 19:38:26.000000','en','Faroe Islands',569,1809),('2024-05-06 19:38:26.882209','2024-05-06 19:38:26.000000','en','Fiji',570,1810),('2024-05-06 19:38:26.903939','2024-05-06 19:38:26.000000','en','Finland',571,1811),('2024-05-06 19:38:26.919877','2024-05-06 19:38:26.000000','en','France',572,1812),('2024-05-06 19:38:26.934231','2024-05-06 19:38:26.000000','en','French Guiana',573,1813),('2024-05-06 19:38:26.948694','2024-05-06 19:38:26.000000','en','French Polynesia',574,1814),('2024-05-06 19:38:26.963248','2024-05-06 19:38:26.000000','en','French Southern Territories',575,1815),('2024-05-06 19:38:26.979472','2024-05-06 19:38:26.000000','en','Gabon',576,1816),('2024-05-06 19:38:26.993304','2024-05-06 19:38:26.000000','en','Gambia',577,1817),('2024-05-06 19:38:27.011312','2024-05-06 19:38:27.000000','en','Georgia',578,1818),('2024-05-06 19:38:27.032215','2024-05-06 19:38:27.000000','en','Germany',579,1819),('2024-05-06 19:38:27.048172','2024-05-06 19:38:27.000000','en','Ghana',580,1820),('2024-05-06 19:38:27.063180','2024-05-06 19:38:27.000000','en','Gibraltar',581,1821),('2024-05-06 19:38:27.077598','2024-05-06 19:38:27.000000','en','Greece',582,1822),('2024-05-06 19:38:27.095233','2024-05-06 19:38:27.000000','en','Greenland',583,1823),('2024-05-06 19:38:27.113624','2024-05-06 19:38:27.000000','en','Grenada',584,1824),('2024-05-06 19:38:27.134168','2024-05-06 19:38:27.000000','en','Guadeloupe',585,1825),('2024-05-06 19:38:27.147816','2024-05-06 19:38:27.000000','en','Guam',586,1826),('2024-05-06 19:38:27.161098','2024-05-06 19:38:27.000000','en','Guatemala',587,1827),('2024-05-06 19:38:27.172747','2024-05-06 19:38:27.000000','en','Guernsey',588,1828),('2024-05-06 19:38:27.186827','2024-05-06 19:38:27.000000','en','Guinea',589,1829),('2024-05-06 19:38:27.202810','2024-05-06 19:38:27.000000','en','Guinea-Bissau',590,1830),('2024-05-06 19:38:27.217545','2024-05-06 19:38:27.000000','en','Guyana',591,1831),('2024-05-06 19:38:27.230366','2024-05-06 19:38:27.000000','en','Haiti',592,1832),('2024-05-06 19:38:27.244271','2024-05-06 19:38:27.000000','en','Heard Island and McDonald Islands',593,1833),('2024-05-06 19:38:27.258842','2024-05-06 19:38:27.000000','en','Holy See',594,1834),('2024-05-06 19:38:27.274170','2024-05-06 19:38:27.000000','en','Honduras',595,1835),('2024-05-06 19:38:27.287567','2024-05-06 19:38:27.000000','en','Hong Kong',596,1836),('2024-05-06 19:38:27.301066','2024-05-06 19:38:27.000000','en','Hungary',597,1837),('2024-05-06 19:38:27.312999','2024-05-06 19:38:27.000000','en','Iceland',598,1838),('2024-05-06 19:38:27.325713','2024-05-06 19:38:27.000000','en','India',599,1839),('2024-05-06 19:38:27.339203','2024-05-06 19:38:27.000000','en','Indonesia',600,1840),('2024-05-06 19:38:27.353472','2024-05-06 19:38:27.000000','en','Iran (Islamic Republic of)',601,1841),('2024-05-06 19:38:27.370948','2024-05-06 19:38:27.000000','en','Iraq',602,1842),('2024-05-06 19:38:27.383698','2024-05-06 19:38:27.000000','en','Ireland',603,1843),('2024-05-06 19:38:27.396637','2024-05-06 19:38:27.000000','en','Isle of Man',604,1844),('2024-05-06 19:38:27.410084','2024-05-06 19:38:27.000000','en','Israel',605,1845),('2024-05-06 19:38:27.422806','2024-05-06 19:38:27.000000','en','Italy',606,1846),('2024-05-06 19:38:27.435290','2024-05-06 19:38:27.000000','en','Jamaica',607,1847),('2024-05-06 19:38:27.449501','2024-05-06 19:38:27.000000','en','Japan',608,1848),('2024-05-06 19:38:27.465810','2024-05-06 19:38:27.000000','en','Jersey',609,1849),('2024-05-06 19:38:27.491248','2024-05-06 19:38:27.000000','en','Jordan',610,1850),('2024-05-06 19:38:27.510017','2024-05-06 19:38:27.000000','en','Kazakhstan',611,1851),('2024-05-06 19:38:27.523159','2024-05-06 19:38:27.000000','en','Kenya',612,1852),('2024-05-06 19:38:27.535087','2024-05-06 19:38:27.000000','en','Kiribati',613,1853),('2024-05-06 19:38:27.549197','2024-05-06 19:38:27.000000','en','Korea (Democratic People\'s Republic of)',614,1854),('2024-05-06 19:38:27.561601','2024-05-06 19:38:27.000000','en','Korea (Republic of)',615,1855),('2024-05-06 19:38:27.575341','2024-05-06 19:38:27.000000','en','Kuwait',616,1856),('2024-05-06 19:38:27.586709','2024-05-06 19:38:27.000000','en','Kyrgyzstan',617,1857),('2024-05-06 19:38:27.598366','2024-05-06 19:38:27.000000','en','Lao People\'s Democratic Republic',618,1858),('2024-05-06 19:38:27.610266','2024-05-06 19:38:27.000000','en','Latvia',619,1859),('2024-05-06 19:38:27.623712','2024-05-06 19:38:27.000000','en','Lebanon',620,1860),('2024-05-06 19:38:27.639097','2024-05-06 19:38:27.000000','en','Lesotho',621,1861),('2024-05-06 19:38:27.653631','2024-05-06 19:38:27.000000','en','Liberia',622,1862),('2024-05-06 19:38:27.667115','2024-05-06 19:38:27.000000','en','Libya',623,1863),('2024-05-06 19:38:27.681394','2024-05-06 19:38:27.000000','en','Liechtenstein',624,1864),('2024-05-06 19:38:27.696283','2024-05-06 19:38:27.000000','en','Lithuania',625,1865),('2024-05-06 19:38:27.709909','2024-05-06 19:38:27.000000','en','Luxembourg',626,1866),('2024-05-06 19:38:27.749866','2024-05-06 19:38:27.000000','en','Macao',627,1867),('2024-05-06 19:38:27.762874','2024-05-06 19:38:27.000000','en','Macedonia (the former Yugoslav Republic of)',628,1868),('2024-05-06 19:38:27.778087','2024-05-06 19:38:27.000000','en','Madagascar',629,1869),('2024-05-06 19:38:27.789182','2024-05-06 19:38:27.000000','en','Malawi',630,1870),('2024-05-06 19:38:27.801051','2024-05-06 19:38:27.000000','en','Malaysia',631,1871),('2024-05-06 19:38:27.811658','2024-05-06 19:38:27.000000','en','Maldives',632,1872),('2024-05-06 19:38:27.824906','2024-05-06 19:38:27.000000','en','Mali',633,1873),('2024-05-06 19:38:27.836654','2024-05-06 19:38:27.000000','en','Malta',634,1874),('2024-05-06 19:38:27.856044','2024-05-06 19:38:27.000000','en','Marshall Islands',635,1875),('2024-05-06 19:38:27.868101','2024-05-06 19:38:27.000000','en','Martinique',636,1876),('2024-05-06 19:38:27.883310','2024-05-06 19:38:27.000000','en','Mauritania',637,1877),('2024-05-06 19:38:27.896421','2024-05-06 19:38:27.000000','en','Mauritius',638,1878),('2024-05-06 19:38:27.912970','2024-05-06 19:38:27.000000','en','Mayotte',639,1879),('2024-05-06 19:38:27.931445','2024-05-06 19:38:27.000000','en','Mexico',640,1880),('2024-05-06 19:38:27.943829','2024-05-06 19:38:27.000000','en','Micronesia (Federated States of)',641,1881),('2024-05-06 19:38:27.956318','2024-05-06 19:38:27.000000','en','Moldova (Republic of)',642,1882),('2024-05-06 19:38:27.968071','2024-05-06 19:38:27.000000','en','Monaco',643,1883),('2024-05-06 19:38:27.979639','2024-05-06 19:38:27.000000','en','Mongolia',644,1884),('2024-05-06 19:38:27.992165','2024-05-06 19:38:27.000000','en','Montenegro',645,1885),('2024-05-06 19:38:28.006198','2024-05-06 19:38:28.000000','en','Montserrat',646,1886),('2024-05-06 19:38:28.022968','2024-05-06 19:38:28.000000','en','Morocco',647,1887),('2024-05-06 19:38:28.039459','2024-05-06 19:38:28.000000','en','Mozambique',648,1888),('2024-05-06 19:38:28.054483','2024-05-06 19:38:28.000000','en','Myanmar',649,1889),('2024-05-06 19:38:28.069566','2024-05-06 19:38:28.000000','en','Namibia',650,1890),('2024-05-06 19:38:28.090497','2024-05-06 19:38:28.000000','en','Nauru',651,1891),('2024-05-06 19:38:28.106708','2024-05-06 19:38:28.000000','en','Nepal',652,1892),('2024-05-06 19:38:28.126571','2024-05-06 19:38:28.000000','en','Netherlands',653,1893),('2024-05-06 19:38:28.146617','2024-05-06 19:38:28.000000','en','New Caledonia',654,1894),('2024-05-06 19:38:28.159430','2024-05-06 19:38:28.000000','en','New Zealand',655,1895),('2024-05-06 19:38:28.171836','2024-05-06 19:38:28.000000','en','Nicaragua',656,1896),('2024-05-06 19:38:28.183967','2024-05-06 19:38:28.000000','en','Niger',657,1897),('2024-05-06 19:38:28.200943','2024-05-06 19:38:28.000000','en','Nigeria',658,1898),('2024-05-06 19:38:28.214348','2024-05-06 19:38:28.000000','en','Niue',659,1899),('2024-05-06 19:38:28.232045','2024-05-06 19:38:28.000000','en','Norfolk Island',660,1900),('2024-05-06 19:38:28.246863','2024-05-06 19:38:28.000000','en','Northern Mariana Islands',661,1901),('2024-05-06 19:38:28.264817','2024-05-06 19:38:28.000000','en','Norway',662,1902),('2024-05-06 19:38:28.281366','2024-05-06 19:38:28.000000','en','Oman',663,1903),('2024-05-06 19:38:28.296252','2024-05-06 19:38:28.000000','en','Pakistan',664,1904),('2024-05-06 19:38:28.309309','2024-05-06 19:38:28.000000','en','Palau',665,1905),('2024-05-06 19:38:28.321288','2024-05-06 19:38:28.000000','en','Palestine, State of',666,1906),('2024-05-06 19:38:28.335305','2024-05-06 19:38:28.000000','en','Panama',667,1907),('2024-05-06 19:38:28.350552','2024-05-06 19:38:28.000000','en','Papua New Guinea',668,1908),('2024-05-06 19:38:28.363270','2024-05-06 19:38:28.000000','en','Paraguay',669,1909),('2024-05-06 19:38:28.376212','2024-05-06 19:38:28.000000','en','Peru',670,1910),('2024-05-06 19:38:28.390045','2024-05-06 19:38:28.000000','en','Philippines',671,1911),('2024-05-06 19:38:28.403589','2024-05-06 19:38:28.000000','en','Pitcairn',672,1912),('2024-05-06 19:38:28.431276','2024-05-06 19:38:28.000000','en','Poland',673,1913),('2024-05-06 19:38:28.447701','2024-05-06 19:38:28.000000','en','Portugal',674,1914),('2024-05-06 19:38:28.462687','2024-05-06 19:38:28.000000','en','Puerto Rico',675,1915),('2024-05-06 19:38:28.479194','2024-05-06 19:38:28.000000','en','Qatar',676,1916),('2024-05-06 19:38:28.495222','2024-05-06 19:38:28.000000','en','Réunion',677,1917),('2024-05-06 19:38:28.509772','2024-05-06 19:38:28.000000','en','Romania',678,1918),('2024-05-06 19:38:28.528356','2024-05-06 19:38:28.000000','en','Russian Federation',679,1919),('2024-05-06 19:38:28.544566','2024-05-06 19:38:28.000000','en','Rwanda',680,1920),('2024-05-06 19:38:28.571436','2024-05-06 19:38:28.000000','en','Saint Barthélemy',681,1921),('2024-05-06 19:38:28.607018','2024-05-06 19:38:28.000000','en','Saint Helena, Ascension and Tristan da Cunha',682,1922),('2024-05-06 19:38:28.625301','2024-05-06 19:38:28.000000','en','Saint Kitts and Nevis',683,1923),('2024-05-06 19:38:28.649288','2024-05-06 19:38:28.000000','en','Saint Lucia',684,1924),('2024-05-06 19:38:28.670319','2024-05-06 19:38:28.000000','en','Saint Martin (French part)',685,1925),('2024-05-06 19:38:28.685127','2024-05-06 19:38:28.000000','en','Saint Pierre and Miquelon',686,1926),('2024-05-06 19:38:28.701860','2024-05-06 19:38:28.000000','en','Saint Vincent and the Grenadines',687,1927),('2024-05-06 19:38:28.732727','2024-05-06 19:38:28.000000','en','Samoa',688,1928),('2024-05-06 19:38:28.748132','2024-05-06 19:38:28.000000','en','San Marino',689,1929),('2024-05-06 19:38:28.767859','2024-05-06 19:38:28.000000','en','Sao Tome and Principe',690,1930),('2024-05-06 19:38:28.808091','2024-05-06 19:38:28.000000','en','Saudi Arabia',691,1931),('2024-05-06 19:38:28.842329','2024-05-06 19:38:28.000000','en','Senegal',692,1932),('2024-05-06 19:38:28.861739','2024-05-06 19:38:28.000000','en','Serbia',693,1933),('2024-05-06 19:38:28.887391','2024-05-06 19:38:28.000000','en','Seychelles',694,1934),('2024-05-06 19:38:28.914834','2024-05-06 19:38:28.000000','en','Sierra Leone',695,1935),('2024-05-06 19:38:28.942025','2024-05-06 19:38:28.000000','en','Singapore',696,1936),('2024-05-06 19:38:28.996499','2024-05-06 19:38:29.000000','en','Sint Maarten (Dutch part)',697,1937),('2024-05-06 19:38:29.019175','2024-05-06 19:38:29.000000','en','Slovakia',698,1938),('2024-05-06 19:38:29.046764','2024-05-06 19:38:29.000000','en','Slovenia',699,1939),('2024-05-06 19:38:29.069691','2024-05-06 19:38:29.000000','en','Solomon Islands',700,1940),('2024-05-06 19:38:29.095314','2024-05-06 19:38:29.000000','en','Somalia',701,1941),('2024-05-06 19:38:29.116505','2024-05-06 19:38:29.000000','en','South Africa',702,1942),('2024-05-06 19:38:29.133588','2024-05-06 19:38:29.000000','en','South Georgia and the South Sandwich Islands',703,1943),('2024-05-06 19:38:29.162704','2024-05-06 19:38:29.000000','en','South Sudan',704,1944),('2024-05-06 19:38:29.186164','2024-05-06 19:38:29.000000','en','Spain',705,1945),('2024-05-06 19:38:29.205913','2024-05-06 19:38:29.000000','en','Sri Lanka',706,1946),('2024-05-06 19:38:29.226782','2024-05-06 19:38:29.000000','en','Sudan',707,1947),('2024-05-06 19:38:29.245750','2024-05-06 19:38:29.000000','en','Suriname',708,1948),('2024-05-06 19:38:29.260187','2024-05-06 19:38:29.000000','en','Svalbard and Jan Mayen',709,1949),('2024-05-06 19:38:29.276611','2024-05-06 19:38:29.000000','en','Sweden',710,1950),('2024-05-06 19:38:29.292118','2024-05-06 19:38:29.000000','en','Switzerland',711,1951),('2024-05-06 19:38:29.310560','2024-05-06 19:38:29.000000','en','Syrian Arab Republic',712,1952),('2024-05-06 19:38:29.325941','2024-05-06 19:38:29.000000','en','Taiwan, Province of China',713,1953),('2024-05-06 19:38:29.352883','2024-05-06 19:38:29.000000','en','Tajikistan',714,1954),('2024-05-06 19:38:29.368919','2024-05-06 19:38:29.000000','en','Tanzania, United Republic of',715,1955),('2024-05-06 19:38:29.386383','2024-05-06 19:38:29.000000','en','Thailand',716,1956),('2024-05-06 19:38:29.405253','2024-05-06 19:38:29.000000','en','Timor-Leste',717,1957),('2024-05-06 19:38:29.424896','2024-05-06 19:38:29.000000','en','Togo',718,1958),('2024-05-06 19:38:29.443130','2024-05-06 19:38:29.000000','en','Tokelau',719,1959),('2024-05-06 19:38:29.460119','2024-05-06 19:38:29.000000','en','Tonga',720,1960),('2024-05-06 19:38:29.478840','2024-05-06 19:38:29.000000','en','Trinidad and Tobago',721,1961),('2024-05-06 19:38:29.493106','2024-05-06 19:38:29.000000','en','Tunisia',722,1962),('2024-05-06 19:38:29.513399','2024-05-06 19:38:29.000000','en','Turkey',723,1963),('2024-05-06 19:38:29.536521','2024-05-06 19:38:29.000000','en','Turkmenistan',724,1964),('2024-05-06 19:38:29.552173','2024-05-06 19:38:29.000000','en','Turks and Caicos Islands',725,1965),('2024-05-06 19:38:29.566442','2024-05-06 19:38:29.000000','en','Tuvalu',726,1966),('2024-05-06 19:38:29.581358','2024-05-06 19:38:29.000000','en','Uganda',727,1967),('2024-05-06 19:38:29.594749','2024-05-06 19:38:29.000000','en','Ukraine',728,1968),('2024-05-06 19:38:29.606712','2024-05-06 19:38:29.000000','en','United Arab Emirates',729,1969),('2024-05-06 19:38:29.621696','2024-05-06 19:38:29.000000','en','United Kingdom',730,1970),('2024-05-06 19:38:29.639492','2024-05-06 19:38:29.000000','en','United States of America',731,1971),('2024-05-06 19:38:29.655171','2024-05-06 19:38:29.000000','en','United States Minor Outlying Islands',732,1972),('2024-05-06 19:38:29.674358','2024-05-06 19:38:29.000000','en','Uruguay',733,1973),('2024-05-06 19:38:29.688504','2024-05-06 19:38:29.000000','en','Uzbekistan',734,1974),('2024-05-06 19:38:29.704281','2024-05-06 19:38:29.000000','en','Vanuatu',735,1975),('2024-05-06 19:38:29.722026','2024-05-06 19:38:29.000000','en','Venezuela (Bolivarian Republic of)',736,1976),('2024-05-06 19:38:29.736196','2024-05-06 19:38:29.000000','en','Viet Nam',737,1977),('2024-05-06 19:38:29.749951','2024-05-06 19:38:29.000000','en','Virgin Islands (British)',738,1978),('2024-05-06 19:38:29.769075','2024-05-06 19:38:29.000000','en','Virgin Islands (U.S.)',739,1979),('2024-05-06 19:38:29.782942','2024-05-06 19:38:29.000000','en','Wallis and Futuna',740,1980),('2024-05-06 19:38:29.795435','2024-05-06 19:38:29.000000','en','Western Sahara',741,1981),('2024-05-06 19:38:29.808637','2024-05-06 19:38:29.000000','en','Yemen',742,1982),('2024-05-06 19:38:29.820611','2024-05-06 19:38:29.000000','en','Zambia',743,1983),('2024-05-06 19:38:29.839214','2024-05-06 19:38:29.000000','en','Zimbabwe',744,1984);
/*!40000 ALTER TABLE `region_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('2024-05-06 15:54:40.200396','2024-05-06 15:54:40.200396','__super_admin_role__','SuperAdmin','Authenticated,SuperAdmin,UpdateGlobalSettings,CreateCatalog,ReadCatalog,UpdateCatalog,DeleteCatalog,CreateSettings,ReadSettings,UpdateSettings,DeleteSettings,CreateAdministrator,ReadAdministrator,UpdateAdministrator,DeleteAdministrator,CreateAsset,ReadAsset,UpdateAsset,DeleteAsset,CreateChannel,ReadChannel,UpdateChannel,DeleteChannel,CreateCollection,ReadCollection,UpdateCollection,DeleteCollection,CreateCountry,ReadCountry,UpdateCountry,DeleteCountry,CreateCustomer,ReadCustomer,UpdateCustomer,DeleteCustomer,CreateCustomerGroup,ReadCustomerGroup,UpdateCustomerGroup,DeleteCustomerGroup,CreateFacet,ReadFacet,UpdateFacet,DeleteFacet,CreateOrder,ReadOrder,UpdateOrder,DeleteOrder,CreatePaymentMethod,ReadPaymentMethod,UpdatePaymentMethod,DeletePaymentMethod,CreateProduct,ReadProduct,UpdateProduct,DeleteProduct,CreatePromotion,ReadPromotion,UpdatePromotion,DeletePromotion,CreateShippingMethod,ReadShippingMethod,UpdateShippingMethod,DeleteShippingMethod,CreateTag,ReadTag,UpdateTag,DeleteTag,CreateTaxCategory,ReadTaxCategory,UpdateTaxCategory,DeleteTaxCategory,CreateTaxRate,ReadTaxRate,UpdateTaxRate,DeleteTaxRate,CreateSeller,ReadSeller,UpdateSeller,DeleteSeller,CreateStockLocation,ReadStockLocation,UpdateStockLocation,DeleteStockLocation,CreateSystem,ReadSystem,UpdateSystem,DeleteSystem,CreateZone,ReadZone,UpdateZone,DeleteZone',1),('2024-05-06 15:54:40.214546','2024-05-06 15:54:40.214546','__customer_role__','Customer','Authenticated',2);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_channels_channel`
--

DROP TABLE IF EXISTS `role_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_channels_channel` (
  `roleId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`roleId`,`channelId`),
  KEY `IDX_bfd2a03e9988eda6a9d1176011` (`roleId`),
  KEY `IDX_e09dfee62b158307404202b43a` (`channelId`),
  CONSTRAINT `FK_bfd2a03e9988eda6a9d11760119` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_e09dfee62b158307404202b43a5` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_channels_channel`
--

LOCK TABLES `role_channels_channel` WRITE;
/*!40000 ALTER TABLE `role_channels_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_index_item`
--

DROP TABLE IF EXISTS `search_index_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_index_item` (
  `languageCode` varchar(255) NOT NULL,
  `enabled` tinyint NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productVariantName` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `facetIds` text NOT NULL,
  `facetValueIds` text NOT NULL,
  `collectionIds` text NOT NULL,
  `collectionSlugs` text NOT NULL,
  `channelIds` text NOT NULL,
  `productPreview` varchar(255) NOT NULL,
  `productPreviewFocalPoint` text,
  `productVariantPreview` varchar(255) NOT NULL,
  `productVariantPreviewFocalPoint` text,
  `inStock` tinyint NOT NULL DEFAULT '1',
  `productInStock` tinyint NOT NULL DEFAULT '1',
  `productVariantId` int NOT NULL,
  `channelId` int NOT NULL,
  `productId` int NOT NULL,
  `productAssetId` int DEFAULT NULL,
  `productVariantAssetId` int DEFAULT NULL,
  `price` int NOT NULL,
  `priceWithTax` int NOT NULL,
  PRIMARY KEY (`languageCode`,`productVariantId`,`channelId`),
  FULLTEXT KEY `IDX_6fb55742e13e8082954d0436dc` (`productName`),
  FULLTEXT KEY `IDX_d8791f444a8bf23fe4c1bc020c` (`productVariantName`),
  FULLTEXT KEY `IDX_9a5a6a556f75c4ac7bfdd03410` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_index_item`
--

LOCK TABLES `search_index_item` WRITE;
/*!40000 ALTER TABLE `search_index_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_index_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES ('2024-05-06 08:46:25.814677','2024-05-06 08:46:25.814677',NULL,'Default Seller',1);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `invalidated` tinyint NOT NULL,
  `authenticationStrategy` varchar(255) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `activeOrderId` int DEFAULT NULL,
  `activeChannelId` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_232f8e85d7633bd6ddfad42169` (`token`),
  KEY `IDX_7a75399a4f4ffa48ee02e98c05` (`activeOrderId`),
  KEY `IDX_eb87ef1e234444728138302263` (`activeChannelId`),
  KEY `IDX_3d2f174ef04fb312fdebd0ddc5` (`userId`),
  KEY `IDX_e5598363000cab9d9116bd5835` (`type`),
  CONSTRAINT `FK_3d2f174ef04fb312fdebd0ddc53` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_7a75399a4f4ffa48ee02e98c059` FOREIGN KEY (`activeOrderId`) REFERENCES `order` (`id`),
  CONSTRAINT `FK_eb87ef1e234444728138302263b` FOREIGN KEY (`activeChannelId`) REFERENCES `channel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('2024-05-06 19:23:39.848004','2024-05-06 19:23:40.000000','e18014527ce66e2b1157465dcbfe7c32451b9070ced2070a687eb602b42051fb','2025-05-07 01:23:40',0,NULL,1,NULL,1,'AnonymousSession',NULL);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_line`
--

DROP TABLE IF EXISTS `shipping_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_line` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `listPriceIncludesTax` tinyint NOT NULL,
  `adjustments` text NOT NULL,
  `taxLines` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `shippingMethodId` int NOT NULL,
  `listPrice` int NOT NULL,
  `orderId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_e2e7642e1e88167c1dfc827fdf` (`shippingMethodId`),
  KEY `IDX_c9f34a440d490d1b66f6829b86` (`orderId`),
  CONSTRAINT `FK_c9f34a440d490d1b66f6829b86c` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_e2e7642e1e88167c1dfc827fdf3` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_line`
--

LOCK TABLES `shipping_line` WRITE;
/*!40000 ALTER TABLE `shipping_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `checker` text NOT NULL,
  `calculator` text NOT NULL,
  `fulfillmentHandlerCode` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
INSERT INTO `shipping_method` VALUES ('2024-05-06 16:09:01.200245','2024-05-06 16:09:01.200245',NULL,'standard-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',1),('2024-05-06 16:09:01.253678','2024-05-06 16:09:01.253678',NULL,'express-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',2),('2024-05-06 18:38:56.774099','2024-05-06 18:38:56.774099',NULL,'standard-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',3),('2024-05-06 18:38:56.799679','2024-05-06 18:38:56.799679',NULL,'express-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',4),('2024-05-06 18:58:40.346797','2024-05-06 18:58:40.346797',NULL,'standard-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',5),('2024-05-06 18:58:40.373292','2024-05-06 18:58:40.373292',NULL,'express-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',6),('2024-05-06 19:06:18.591222','2024-05-06 19:06:18.591222',NULL,'standard-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',7),('2024-05-06 19:06:18.627332','2024-05-06 19:06:18.627332',NULL,'express-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',8),('2024-05-06 19:08:06.821577','2024-05-06 19:08:06.821577',NULL,'standard-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',9),('2024-05-06 19:08:06.860356','2024-05-06 19:08:06.860356',NULL,'express-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',10),('2024-05-06 19:24:29.672008','2024-05-06 19:24:29.672008',NULL,'standard-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',11),('2024-05-06 19:24:29.715488','2024-05-06 19:24:29.715488',NULL,'express-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',12),('2024-05-06 19:35:23.585820','2024-05-06 19:35:23.585820',NULL,'standard-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',13),('2024-05-06 19:35:23.628010','2024-05-06 19:35:23.628010',NULL,'express-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',14),('2024-05-06 19:38:30.699355','2024-05-06 19:38:30.699355',NULL,'standard-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"500\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',15),('2024-05-06 19:38:30.722266','2024-05-06 19:38:30.722266',NULL,'express-shipping','{\"code\":\"default-shipping-eligibility-checker\",\"args\":[{\"name\":\"orderMinimum\",\"value\":\"0\"}]}','{\"code\":\"default-shipping-calculator\",\"args\":[{\"name\":\"rate\",\"value\":\"1000\"},{\"name\":\"includesTax\",\"value\":\"auto\"},{\"name\":\"taxRate\",\"value\":\"0\"}]}','manual-fulfillment',16);
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method_channels_channel`
--

DROP TABLE IF EXISTS `shipping_method_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method_channels_channel` (
  `shippingMethodId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`shippingMethodId`,`channelId`),
  KEY `IDX_f0a17b94aa5a162f0d422920eb` (`shippingMethodId`),
  KEY `IDX_f2b98dfb56685147bed509acc3` (`channelId`),
  CONSTRAINT `FK_f0a17b94aa5a162f0d422920eb2` FOREIGN KEY (`shippingMethodId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_f2b98dfb56685147bed509acc3d` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method_channels_channel`
--

LOCK TABLES `shipping_method_channels_channel` WRITE;
/*!40000 ALTER TABLE `shipping_method_channels_channel` DISABLE KEYS */;
INSERT INTO `shipping_method_channels_channel` VALUES (11,1),(12,1),(13,1),(14,1),(15,1),(16,1);
/*!40000 ALTER TABLE `shipping_method_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method_translation`
--

DROP TABLE IF EXISTS `shipping_method_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method_translation` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `languageCode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `id` int NOT NULL AUTO_INCREMENT,
  `baseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_85ec26c71067ebc84adcd98d1a` (`baseId`),
  CONSTRAINT `FK_85ec26c71067ebc84adcd98d1a5` FOREIGN KEY (`baseId`) REFERENCES `shipping_method` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method_translation`
--

LOCK TABLES `shipping_method_translation` WRITE;
/*!40000 ALTER TABLE `shipping_method_translation` DISABLE KEYS */;
INSERT INTO `shipping_method_translation` VALUES ('2024-05-06 19:24:29.660267','2024-05-06 19:24:29.000000','en','Standard Shipping','',1,11),('2024-05-06 19:24:29.708392','2024-05-06 19:24:29.000000','en','Express Shipping','',2,12),('2024-05-06 19:35:23.563439','2024-05-06 19:35:23.000000','en','Standard Shipping','',3,13),('2024-05-06 19:35:23.623071','2024-05-06 19:35:23.000000','en','Express Shipping','',4,14),('2024-05-06 19:38:30.693646','2024-05-06 19:38:30.000000','en','Standard Shipping','',5,15),('2024-05-06 19:38:30.717622','2024-05-06 19:38:30.000000','en','Express Shipping','',6,16);
/*!40000 ALTER TABLE `shipping_method_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_level`
--

DROP TABLE IF EXISTS `stock_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_level` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `stockOnHand` int NOT NULL,
  `stockAllocated` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `productVariantId` int NOT NULL,
  `stockLocationId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_7fc20486b8cfd33dc84c96e168` (`productVariantId`,`stockLocationId`),
  KEY `IDX_9950eae3180f39c71978748bd0` (`productVariantId`),
  KEY `IDX_984c48572468c69661a0b7b049` (`stockLocationId`),
  CONSTRAINT `FK_984c48572468c69661a0b7b0494` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_9950eae3180f39c71978748bd08` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_level`
--

LOCK TABLES `stock_level` WRITE;
/*!40000 ALTER TABLE `stock_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_location`
--

DROP TABLE IF EXISTS `stock_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_location` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_location`
--

LOCK TABLES `stock_location` WRITE;
/*!40000 ALTER TABLE `stock_location` DISABLE KEYS */;
INSERT INTO `stock_location` VALUES ('2024-05-06 15:54:40.260463','2024-05-06 15:54:40.260463','Default Stock Location','The default stock location',1);
/*!40000 ALTER TABLE `stock_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_location_channels_channel`
--

DROP TABLE IF EXISTS `stock_location_channels_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_location_channels_channel` (
  `stockLocationId` int NOT NULL,
  `channelId` int NOT NULL,
  PRIMARY KEY (`stockLocationId`,`channelId`),
  KEY `IDX_39513fd02a573c848d23bee587` (`stockLocationId`),
  KEY `IDX_ff8150fe54e56a900d5712671a` (`channelId`),
  CONSTRAINT `FK_39513fd02a573c848d23bee587d` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ff8150fe54e56a900d5712671a0` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_location_channels_channel`
--

LOCK TABLES `stock_location_channels_channel` WRITE;
/*!40000 ALTER TABLE `stock_location_channels_channel` DISABLE KEYS */;
INSERT INTO `stock_location_channels_channel` VALUES (1,1);
/*!40000 ALTER TABLE `stock_location_channels_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_movement`
--

DROP TABLE IF EXISTS `stock_movement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_movement` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `type` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `stockLocationId` int NOT NULL,
  `discriminator` varchar(255) NOT NULL,
  `productVariantId` int DEFAULT NULL,
  `orderLineId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_e65ba3882557cab4febb54809b` (`productVariantId`),
  KEY `IDX_a2fe7172eeae9f1cca86f8f573` (`stockLocationId`),
  KEY `IDX_d2c8d5fca981cc820131f81aa8` (`orderLineId`),
  KEY `IDX_94e15d5f12d355d117390131ac` (`discriminator`),
  CONSTRAINT `FK_a2fe7172eeae9f1cca86f8f573a` FOREIGN KEY (`stockLocationId`) REFERENCES `stock_location` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_d2c8d5fca981cc820131f81aa83` FOREIGN KEY (`orderLineId`) REFERENCES `order_line` (`id`),
  CONSTRAINT `FK_e65ba3882557cab4febb54809bb` FOREIGN KEY (`productVariantId`) REFERENCES `product_variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_movement`
--

LOCK TABLES `stock_movement` WRITE;
/*!40000 ALTER TABLE `stock_movement` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_movement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surcharge`
--

DROP TABLE IF EXISTS `surcharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surcharge` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `description` varchar(255) NOT NULL,
  `listPriceIncludesTax` tinyint NOT NULL,
  `sku` varchar(255) NOT NULL,
  `taxLines` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `listPrice` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `orderModificationId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_154eb685f9b629033bd266df7f` (`orderId`),
  KEY `IDX_a49c5271c39cc8174a0535c808` (`orderModificationId`),
  CONSTRAINT `FK_154eb685f9b629033bd266df7fa` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_a49c5271c39cc8174a0535c8088` FOREIGN KEY (`orderModificationId`) REFERENCES `order_modification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surcharge`
--

LOCK TABLES `surcharge` WRITE;
/*!40000 ALTER TABLE `surcharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `surcharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `value` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_category`
--

DROP TABLE IF EXISTS `tax_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_category` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `isDefault` tinyint NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_category`
--

LOCK TABLES `tax_category` WRITE;
/*!40000 ALTER TABLE `tax_category` DISABLE KEYS */;
INSERT INTO `tax_category` VALUES ('2024-05-06 11:29:53.258421','2024-05-06 11:29:53.258421','Standard Tax',0,1),('2024-05-06 11:29:53.326012','2024-05-06 11:29:53.326012','Reduced Tax',0,2),('2024-05-06 11:29:53.395497','2024-05-06 11:29:53.395497','Zero Tax',0,3),('2024-05-06 16:09:00.911907','2024-05-06 16:09:00.911907','Standard Tax',0,4),('2024-05-06 16:09:00.977953','2024-05-06 16:09:00.977953','Reduced Tax',0,5),('2024-05-06 16:09:01.078270','2024-05-06 16:09:01.078270','Zero Tax',0,6),('2024-05-06 18:38:56.469006','2024-05-06 18:38:56.469006','Standard Tax',0,7),('2024-05-06 18:38:56.588753','2024-05-06 18:38:56.588753','Reduced Tax',0,8),('2024-05-06 18:38:56.681628','2024-05-06 18:38:56.681628','Zero Tax',0,9),('2024-05-06 18:58:40.016331','2024-05-06 18:58:40.016331','Standard Tax',0,10),('2024-05-06 18:58:40.125076','2024-05-06 18:58:40.125076','Reduced Tax',0,11),('2024-05-06 18:58:40.222455','2024-05-06 18:58:40.222455','Zero Tax',0,12),('2024-05-06 19:06:18.194317','2024-05-06 19:06:18.194317','Standard Tax',0,13),('2024-05-06 19:06:18.307804','2024-05-06 19:06:18.307804','Reduced Tax',0,14),('2024-05-06 19:06:18.443108','2024-05-06 19:06:18.443108','Zero Tax',0,15),('2024-05-06 19:08:06.390096','2024-05-06 19:08:06.390096','Standard Tax',0,16),('2024-05-06 19:08:06.543259','2024-05-06 19:08:06.543259','Reduced Tax',0,17),('2024-05-06 19:08:06.687005','2024-05-06 19:08:06.687005','Zero Tax',0,18),('2024-05-06 19:24:29.358415','2024-05-06 19:24:29.358415','Standard Tax',0,19),('2024-05-06 19:24:29.461723','2024-05-06 19:24:29.461723','Reduced Tax',0,20),('2024-05-06 19:24:29.568352','2024-05-06 19:24:29.568352','Zero Tax',0,21),('2024-05-06 19:35:23.197057','2024-05-06 19:35:23.197057','Standard Tax',0,22),('2024-05-06 19:35:23.342082','2024-05-06 19:35:23.342082','Reduced Tax',0,23),('2024-05-06 19:35:23.450065','2024-05-06 19:35:23.450065','Zero Tax',0,24),('2024-05-06 19:38:30.360155','2024-05-06 19:38:30.360155','Standard Tax',0,25),('2024-05-06 19:38:30.462760','2024-05-06 19:38:30.462760','Reduced Tax',0,26),('2024-05-06 19:38:30.574951','2024-05-06 19:38:30.574951','Zero Tax',0,27);
/*!40000 ALTER TABLE `tax_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rate`
--

DROP TABLE IF EXISTS `tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_rate` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `enabled` tinyint NOT NULL,
  `value` decimal(5,2) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `categoryId` int DEFAULT NULL,
  `zoneId` int DEFAULT NULL,
  `customerGroupId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7ee3306d7638aa85ca90d67219` (`categoryId`),
  KEY `IDX_9872fc7de2f4e532fd3230d191` (`zoneId`),
  KEY `IDX_8b5ab52fc8887c1a769b9276ca` (`customerGroupId`),
  CONSTRAINT `FK_7ee3306d7638aa85ca90d672198` FOREIGN KEY (`categoryId`) REFERENCES `tax_category` (`id`),
  CONSTRAINT `FK_8b5ab52fc8887c1a769b9276caf` FOREIGN KEY (`customerGroupId`) REFERENCES `customer_group` (`id`),
  CONSTRAINT `FK_9872fc7de2f4e532fd3230d1915` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rate`
--

LOCK TABLES `tax_rate` WRITE;
/*!40000 ALTER TABLE `tax_rate` DISABLE KEYS */;
INSERT INTO `tax_rate` VALUES ('2024-05-06 19:24:29.368014','2024-05-06 19:24:29.368014','Standard Tax Asia',1,20.00,1,19,1,NULL),('2024-05-06 19:24:29.397060','2024-05-06 19:24:29.397060','Standard Tax Europe',1,20.00,2,19,2,NULL),('2024-05-06 19:24:29.416851','2024-05-06 19:24:29.416851','Standard Tax Africa',1,20.00,3,19,3,NULL),('2024-05-06 19:24:29.428998','2024-05-06 19:24:29.428998','Standard Tax Oceania',1,20.00,4,19,4,NULL),('2024-05-06 19:24:29.446281','2024-05-06 19:24:29.446281','Standard Tax Americas',1,20.00,5,19,5,NULL),('2024-05-06 19:24:29.480662','2024-05-06 19:24:29.480662','Reduced Tax Asia',1,10.00,6,20,1,NULL),('2024-05-06 19:24:29.496536','2024-05-06 19:24:29.496536','Reduced Tax Europe',1,10.00,7,20,2,NULL),('2024-05-06 19:24:29.522646','2024-05-06 19:24:29.522646','Reduced Tax Africa',1,10.00,8,20,3,NULL),('2024-05-06 19:24:29.538913','2024-05-06 19:24:29.538913','Reduced Tax Oceania',1,10.00,9,20,4,NULL),('2024-05-06 19:24:29.551160','2024-05-06 19:24:29.551160','Reduced Tax Americas',1,10.00,10,20,5,NULL),('2024-05-06 19:24:29.576576','2024-05-06 19:24:29.576576','Zero Tax Asia',1,0.00,11,21,1,NULL),('2024-05-06 19:24:29.600607','2024-05-06 19:24:29.600607','Zero Tax Europe',1,0.00,12,21,2,NULL),('2024-05-06 19:24:29.616569','2024-05-06 19:24:29.616569','Zero Tax Africa',1,0.00,13,21,3,NULL),('2024-05-06 19:24:29.629450','2024-05-06 19:24:29.629450','Zero Tax Oceania',1,0.00,14,21,4,NULL),('2024-05-06 19:24:29.641551','2024-05-06 19:24:29.641551','Zero Tax Americas',1,0.00,15,21,5,NULL),('2024-05-06 19:35:23.213056','2024-05-06 19:35:23.213056','Standard Tax Asia',1,20.00,16,22,1,NULL),('2024-05-06 19:35:23.237657','2024-05-06 19:35:23.237657','Standard Tax Europe',1,20.00,17,22,2,NULL),('2024-05-06 19:35:23.267154','2024-05-06 19:35:23.267154','Standard Tax Africa',1,20.00,18,22,3,NULL),('2024-05-06 19:35:23.298691','2024-05-06 19:35:23.298691','Standard Tax Oceania',1,20.00,19,22,4,NULL),('2024-05-06 19:35:23.319276','2024-05-06 19:35:23.319276','Standard Tax Americas',1,20.00,20,22,5,NULL),('2024-05-06 19:35:23.356369','2024-05-06 19:35:23.356369','Reduced Tax Asia',1,10.00,21,23,1,NULL),('2024-05-06 19:35:23.375428','2024-05-06 19:35:23.375428','Reduced Tax Europe',1,10.00,22,23,2,NULL),('2024-05-06 19:35:23.397337','2024-05-06 19:35:23.397337','Reduced Tax Africa',1,10.00,23,23,3,NULL),('2024-05-06 19:35:23.414642','2024-05-06 19:35:23.414642','Reduced Tax Oceania',1,10.00,24,23,4,NULL),('2024-05-06 19:35:23.432563','2024-05-06 19:35:23.432563','Reduced Tax Americas',1,10.00,25,23,5,NULL),('2024-05-06 19:35:23.460644','2024-05-06 19:35:23.460644','Zero Tax Asia',1,0.00,26,24,1,NULL),('2024-05-06 19:35:23.485484','2024-05-06 19:35:23.485484','Zero Tax Europe',1,0.00,27,24,2,NULL),('2024-05-06 19:35:23.507696','2024-05-06 19:35:23.507696','Zero Tax Africa',1,0.00,28,24,3,NULL),('2024-05-06 19:35:23.525131','2024-05-06 19:35:23.525131','Zero Tax Oceania',1,0.00,29,24,4,NULL),('2024-05-06 19:35:23.545469','2024-05-06 19:35:23.545469','Zero Tax Americas',1,0.00,30,24,5,NULL),('2024-05-06 19:38:30.369043','2024-05-06 19:38:30.369043','Standard Tax Asia',1,20.00,31,25,1,NULL),('2024-05-06 19:38:30.386230','2024-05-06 19:38:30.386230','Standard Tax Europe',1,20.00,32,25,2,NULL),('2024-05-06 19:38:30.412541','2024-05-06 19:38:30.412541','Standard Tax Africa',1,20.00,33,25,3,NULL),('2024-05-06 19:38:30.427217','2024-05-06 19:38:30.427217','Standard Tax Oceania',1,20.00,34,25,4,NULL),('2024-05-06 19:38:30.444033','2024-05-06 19:38:30.444033','Standard Tax Americas',1,20.00,35,25,5,NULL),('2024-05-06 19:38:30.478824','2024-05-06 19:38:30.478824','Reduced Tax Asia',1,10.00,36,26,1,NULL),('2024-05-06 19:38:30.498355','2024-05-06 19:38:30.498355','Reduced Tax Europe',1,10.00,37,26,2,NULL),('2024-05-06 19:38:30.516959','2024-05-06 19:38:30.516959','Reduced Tax Africa',1,10.00,38,26,3,NULL),('2024-05-06 19:38:30.536160','2024-05-06 19:38:30.536160','Reduced Tax Oceania',1,10.00,39,26,4,NULL),('2024-05-06 19:38:30.561887','2024-05-06 19:38:30.561887','Reduced Tax Americas',1,10.00,40,26,5,NULL),('2024-05-06 19:38:30.583753','2024-05-06 19:38:30.583753','Zero Tax Asia',1,0.00,41,27,1,NULL),('2024-05-06 19:38:30.597452','2024-05-06 19:38:30.597452','Zero Tax Europe',1,0.00,42,27,2,NULL),('2024-05-06 19:38:30.630005','2024-05-06 19:38:30.630005','Zero Tax Africa',1,0.00,43,27,3,NULL),('2024-05-06 19:38:30.658678','2024-05-06 19:38:30.658678','Zero Tax Oceania',1,0.00,44,27,4,NULL),('2024-05-06 19:38:30.673488','2024-05-06 19:38:30.673488','Zero Tax Americas',1,0.00,45,27,5,NULL);
/*!40000 ALTER TABLE `tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deletedAt` datetime DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `verified` tinyint NOT NULL DEFAULT '0',
  `lastLogin` datetime DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2024-05-06 08:46:26.332135','2024-05-06 11:23:12.000000',NULL,'superadmin',1,'2024-05-06 11:23:13',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles_role`
--

DROP TABLE IF EXISTS `user_roles_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles_role` (
  `userId` int NOT NULL,
  `roleId` int NOT NULL,
  PRIMARY KEY (`userId`,`roleId`),
  KEY `IDX_5f9286e6c25594c6b88c108db7` (`userId`),
  KEY `IDX_4be2f7adf862634f5f803d246b` (`roleId`),
  CONSTRAINT `FK_4be2f7adf862634f5f803d246b8` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_5f9286e6c25594c6b88c108db77` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles_role`
--

LOCK TABLES `user_roles_role` WRITE;
/*!40000 ALTER TABLE `user_roles_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone` (
  `createdAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone`
--

LOCK TABLES `zone` WRITE;
/*!40000 ALTER TABLE `zone` DISABLE KEYS */;
INSERT INTO `zone` VALUES ('2024-05-06 11:29:48.665281','2024-05-06 11:29:48.665281','Asia',1),('2024-05-06 11:29:48.705064','2024-05-06 11:29:48.705064','Europe',2),('2024-05-06 11:29:48.761783','2024-05-06 11:29:48.761783','Africa',3),('2024-05-06 11:29:48.794862','2024-05-06 11:29:48.794862','Oceania',4),('2024-05-06 11:29:48.857349','2024-05-06 11:29:48.857349','Americas',5);
/*!40000 ALTER TABLE `zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_members_region`
--

DROP TABLE IF EXISTS `zone_members_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone_members_region` (
  `zoneId` int NOT NULL,
  `regionId` int NOT NULL,
  PRIMARY KEY (`zoneId`,`regionId`),
  KEY `IDX_433f45158e4e2b2a2f344714b2` (`zoneId`),
  KEY `IDX_b45b65256486a15a104e17d495` (`regionId`),
  CONSTRAINT `FK_433f45158e4e2b2a2f344714b22` FOREIGN KEY (`zoneId`) REFERENCES `zone` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_b45b65256486a15a104e17d495c` FOREIGN KEY (`regionId`) REFERENCES `region` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_members_region`
--

LOCK TABLES `zone_members_region` WRITE;
/*!40000 ALTER TABLE `zone_members_region` DISABLE KEYS */;
INSERT INTO `zone_members_region` VALUES (1,1241),(1,1251),(1,1255),(1,1257),(1,1258),(1,1265),(1,1273),(1,1278),(1,1285),(1,1298),(1,1322),(1,1340),(1,1343),(1,1344),(1,1345),(1,1346),(1,1349),(1,1352),(1,1354),(1,1355),(1,1358),(1,1359),(1,1360),(1,1361),(1,1362),(1,1364),(1,1371),(1,1375),(1,1376),(1,1388),(1,1393),(1,1396),(1,1407),(1,1408),(1,1410),(1,1415),(1,1420),(1,1435),(1,1440),(1,1450),(1,1456),(1,1457),(1,1458),(1,1460),(1,1461),(1,1467),(1,1468),(1,1473),(1,1478),(1,1481),(1,1486),(1,1489),(1,1499),(1,1503),(1,1505),(1,1506),(1,1513),(1,1521),(1,1526),(1,1533),(1,1546),(1,1570),(1,1588),(1,1591),(1,1592),(1,1593),(1,1594),(1,1597),(1,1600),(1,1602),(1,1603),(1,1606),(1,1607),(1,1608),(1,1609),(1,1610),(1,1612),(1,1619),(1,1623),(1,1624),(1,1636),(1,1641),(1,1644),(1,1655),(1,1656),(1,1658),(1,1663),(1,1668),(1,1683),(1,1688),(1,1698),(1,1704),(1,1705),(1,1706),(1,1708),(1,1709),(1,1715),(1,1716),(1,1721),(1,1726),(1,1729),(1,1734),(1,1737),(1,1747),(1,1751),(1,1753),(1,1754),(1,1761),(1,1769),(1,1774),(1,1781),(1,1794),(1,1818),(1,1836),(1,1839),(1,1840),(1,1841),(1,1842),(1,1845),(1,1848),(1,1850),(1,1851),(1,1854),(1,1855),(1,1856),(1,1857),(1,1858),(1,1860),(1,1867),(1,1871),(1,1872),(1,1884),(1,1889),(1,1892),(1,1903),(1,1904),(1,1906),(1,1911),(1,1916),(1,1931),(1,1936),(1,1946),(1,1952),(1,1953),(1,1954),(1,1956),(1,1957),(1,1963),(1,1964),(1,1969),(1,1974),(1,1977),(1,1982),(2,1242),(2,1243),(2,1246),(2,1254),(2,1260),(2,1261),(2,1268),(2,1274),(2,1295),(2,1299),(2,1300),(2,1309),(2,1313),(2,1315),(2,1316),(2,1323),(2,1325),(2,1326),(2,1332),(2,1338),(2,1341),(2,1342),(2,1347),(2,1348),(2,1350),(2,1353),(2,1363),(2,1368),(2,1369),(2,1370),(2,1372),(2,1378),(2,1386),(2,1387),(2,1389),(2,1397),(2,1406),(2,1417),(2,1418),(2,1422),(2,1423),(2,1433),(2,1437),(2,1442),(2,1443),(2,1449),(2,1453),(2,1454),(2,1455),(2,1472),(2,1474),(2,1490),(2,1491),(2,1494),(2,1502),(2,1508),(2,1509),(2,1516),(2,1522),(2,1543),(2,1547),(2,1548),(2,1557),(2,1561),(2,1563),(2,1564),(2,1571),(2,1573),(2,1574),(2,1580),(2,1586),(2,1589),(2,1590),(2,1595),(2,1596),(2,1598),(2,1601),(2,1611),(2,1616),(2,1617),(2,1618),(2,1620),(2,1626),(2,1634),(2,1635),(2,1637),(2,1645),(2,1654),(2,1665),(2,1666),(2,1670),(2,1671),(2,1681),(2,1685),(2,1690),(2,1691),(2,1697),(2,1701),(2,1702),(2,1703),(2,1720),(2,1722),(2,1738),(2,1739),(2,1742),(2,1750),(2,1756),(2,1757),(2,1764),(2,1770),(2,1791),(2,1795),(2,1796),(2,1805),(2,1809),(2,1811),(2,1812),(2,1819),(2,1821),(2,1822),(2,1828),(2,1834),(2,1837),(2,1838),(2,1843),(2,1844),(2,1846),(2,1849),(2,1859),(2,1864),(2,1865),(2,1866),(2,1868),(2,1874),(2,1882),(2,1883),(2,1885),(2,1893),(2,1902),(2,1913),(2,1914),(2,1918),(2,1919),(2,1929),(2,1933),(2,1938),(2,1939),(2,1945),(2,1949),(2,1950),(2,1951),(2,1968),(2,1970),(3,1244),(3,1247),(3,1263),(3,1269),(3,1272),(3,1275),(3,1276),(3,1277),(3,1279),(3,1282),(3,1283),(3,1289),(3,1290),(3,1291),(3,1294),(3,1301),(3,1305),(3,1307),(3,1308),(3,1310),(3,1311),(3,1319),(3,1320),(3,1321),(3,1324),(3,1333),(3,1334),(3,1356),(3,1365),(3,1366),(3,1367),(3,1373),(3,1374),(3,1377),(3,1381),(3,1382),(3,1383),(3,1391),(3,1392),(3,1394),(3,1401),(3,1402),(3,1421),(3,1424),(3,1426),(3,1434),(3,1436),(3,1438),(3,1439),(3,1445),(3,1446),(3,1448),(3,1451),(3,1459),(3,1462),(3,1466),(3,1471),(3,1485),(3,1487),(3,1488),(3,1492),(3,1495),(3,1511),(3,1517),(3,1520),(3,1523),(3,1524),(3,1525),(3,1527),(3,1530),(3,1531),(3,1537),(3,1538),(3,1539),(3,1542),(3,1549),(3,1553),(3,1555),(3,1556),(3,1558),(3,1559),(3,1567),(3,1568),(3,1569),(3,1572),(3,1581),(3,1582),(3,1604),(3,1613),(3,1614),(3,1615),(3,1621),(3,1622),(3,1625),(3,1629),(3,1630),(3,1631),(3,1639),(3,1640),(3,1642),(3,1649),(3,1650),(3,1669),(3,1672),(3,1674),(3,1682),(3,1684),(3,1686),(3,1687),(3,1693),(3,1694),(3,1696),(3,1699),(3,1707),(3,1710),(3,1714),(3,1719),(3,1733),(3,1735),(3,1736),(3,1740),(3,1743),(3,1759),(3,1765),(3,1768),(3,1771),(3,1772),(3,1773),(3,1775),(3,1778),(3,1779),(3,1785),(3,1786),(3,1787),(3,1790),(3,1797),(3,1801),(3,1803),(3,1804),(3,1806),(3,1807),(3,1815),(3,1816),(3,1817),(3,1820),(3,1829),(3,1830),(3,1852),(3,1861),(3,1862),(3,1863),(3,1869),(3,1870),(3,1873),(3,1877),(3,1878),(3,1879),(3,1887),(3,1888),(3,1890),(3,1897),(3,1898),(3,1917),(3,1920),(3,1922),(3,1930),(3,1932),(3,1934),(3,1935),(3,1941),(3,1942),(3,1944),(3,1947),(3,1955),(3,1958),(3,1962),(3,1967),(3,1981),(3,1983),(3,1984),(4,1245),(4,1253),(4,1286),(4,1287),(4,1292),(4,1314),(4,1318),(4,1330),(4,1337),(4,1357),(4,1379),(4,1385),(4,1395),(4,1398),(4,1399),(4,1403),(4,1404),(4,1405),(4,1409),(4,1412),(4,1416),(4,1432),(4,1444),(4,1463),(4,1464),(4,1470),(4,1476),(4,1479),(4,1484),(4,1493),(4,1501),(4,1534),(4,1535),(4,1540),(4,1562),(4,1566),(4,1578),(4,1585),(4,1605),(4,1627),(4,1633),(4,1643),(4,1646),(4,1647),(4,1651),(4,1652),(4,1653),(4,1657),(4,1660),(4,1664),(4,1680),(4,1692),(4,1711),(4,1712),(4,1718),(4,1724),(4,1727),(4,1732),(4,1741),(4,1749),(4,1782),(4,1783),(4,1788),(4,1810),(4,1814),(4,1826),(4,1833),(4,1853),(4,1875),(4,1881),(4,1891),(4,1894),(4,1895),(4,1899),(4,1900),(4,1901),(4,1905),(4,1908),(4,1912),(4,1928),(4,1940),(4,1959),(4,1960),(4,1966),(4,1972),(4,1975),(4,1980),(5,1248),(5,1249),(5,1250),(5,1252),(5,1256),(5,1259),(5,1262),(5,1264),(5,1266),(5,1267),(5,1270),(5,1271),(5,1280),(5,1281),(5,1284),(5,1288),(5,1293),(5,1296),(5,1297),(5,1302),(5,1303),(5,1304),(5,1306),(5,1312),(5,1317),(5,1327),(5,1328),(5,1329),(5,1331),(5,1335),(5,1336),(5,1339),(5,1351),(5,1380),(5,1384),(5,1390),(5,1400),(5,1411),(5,1413),(5,1414),(5,1419),(5,1425),(5,1427),(5,1428),(5,1429),(5,1430),(5,1431),(5,1441),(5,1447),(5,1452),(5,1465),(5,1469),(5,1475),(5,1477),(5,1480),(5,1482),(5,1483),(5,1496),(5,1497),(5,1498),(5,1500),(5,1504),(5,1507),(5,1510),(5,1512),(5,1514),(5,1515),(5,1518),(5,1519),(5,1528),(5,1529),(5,1532),(5,1536),(5,1541),(5,1544),(5,1545),(5,1550),(5,1551),(5,1552),(5,1554),(5,1560),(5,1565),(5,1575),(5,1576),(5,1577),(5,1579),(5,1583),(5,1584),(5,1587),(5,1599),(5,1628),(5,1632),(5,1638),(5,1648),(5,1659),(5,1661),(5,1662),(5,1667),(5,1673),(5,1675),(5,1676),(5,1677),(5,1678),(5,1679),(5,1689),(5,1695),(5,1700),(5,1713),(5,1717),(5,1723),(5,1725),(5,1728),(5,1730),(5,1731),(5,1744),(5,1745),(5,1746),(5,1748),(5,1752),(5,1755),(5,1758),(5,1760),(5,1762),(5,1763),(5,1766),(5,1767),(5,1776),(5,1777),(5,1780),(5,1784),(5,1789),(5,1792),(5,1793),(5,1798),(5,1799),(5,1800),(5,1802),(5,1808),(5,1813),(5,1823),(5,1824),(5,1825),(5,1827),(5,1831),(5,1832),(5,1835),(5,1847),(5,1876),(5,1880),(5,1886),(5,1896),(5,1907),(5,1909),(5,1910),(5,1915),(5,1921),(5,1923),(5,1924),(5,1925),(5,1926),(5,1927),(5,1937),(5,1943),(5,1948),(5,1961),(5,1965),(5,1971),(5,1973),(5,1976),(5,1978),(5,1979);
/*!40000 ALTER TABLE `zone_members_region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-06 19:48:40
