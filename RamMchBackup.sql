-- MySQL dump 10.13  Distrib 5.7.39, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.39

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
-- Current Database: `project`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `project` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `project`;

--
-- Table structure for table `adminm`
--

DROP TABLE IF EXISTS `adminm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminm` (
  `adminID` varchar(11) NOT NULL,
  `adminmeth` varchar(40) NOT NULL,
  PRIMARY KEY (`adminmeth`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminm`
--

LOCK TABLES `adminm` WRITE;
/*!40000 ALTER TABLE `adminm` DISABLE KEYS */;
INSERT INTO `adminm` VALUES ('234','Dermal'),('3434','injection');
/*!40000 ALTER TABLE `adminm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bodys`
--

DROP TABLE IF EXISTS `bodys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bodys` (
  `bodyID` varchar(11) NOT NULL,
  `bodysite` varchar(30) NOT NULL,
  PRIMARY KEY (`bodysite`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bodys`
--

LOCK TABLES `bodys` WRITE;
/*!40000 ALTER TABLE `bodys` DISABLE KEYS */;
INSERT INTO `bodys` VALUES ('789','Finger'),('y5656','head'),('5656Q','thigh'),('TY56','Upper Arm');
/*!40000 ALTER TABLE `bodys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counties` (
  `county` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counties`
--

LOCK TABLES `counties` WRITE;
/*!40000 ALTER TABLE `counties` DISABLE KEYS */;
INSERT INTO `counties` VALUES ('Baringo'),('Bomet'),('Bungoma'),('Busia'),('Elgeyo/Marakwet'),('Embu'),('Garissa'),('Homabay'),('Isiolo'),('Kajiado'),('Kakamega'),('Kericho'),('Kiambu'),('Kilifi'),('Kirinyaga'),('Kisii'),('Kisumu'),('Kitui'),('Kwale'),('Laikipia'),('Lamu'),('Machakos'),('Makueni'),('Mandera'),('Marsabit'),('Meru'),('Migori'),('Mombasa'),('Murang\'a'),('Nairobi'),('Nakuru'),('Nandi'),('Narok'),('Nyamira'),('Nyandarua'),('Nyeri'),('Samburu'),('Siaya'),('Taita Taveta'),('Tana River'),('Tharaka Nithi'),('Tranz Nzoia'),('Turkana'),('Uasin Gishu'),('Vihiga'),('Wajir'),('West Pokot');
/*!40000 ALTER TABLE `counties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devd`
--

DROP TABLE IF EXISTS `devd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `length` double NOT NULL,
  `head` double NOT NULL,
  `lang` varchar(2000) NOT NULL,
  `limbs` varchar(2000) NOT NULL,
  `dateE` date NOT NULL,
  `nextA` date NOT NULL,
  `dated` varchar(60) NOT NULL,
  `delb` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devd`
--

LOCK TABLES `devd` WRITE;
/*!40000 ALTER TABLE `devd` DISABLE KEYS */;
INSERT INTO `devd` VALUES (1,4500,2,46,34,'wwww','wwwww','2015-03-26','2015-05-01','Saturday        2015-03-28           11:07:34','ADMIN 1'),(2,4500,3,48,37,'ffff','ffffffff','2015-03-23','2015-03-26','Sunday        2015-03-29           07:46:45','ADMIN 1'),(3,4500,4,50,41,'wwwwwww','wwwwwwwww','2015-03-16','2015-03-23','Monday        2015-03-30           08:09:49','ADMIN 1'),(4,4550,4.2,62,4.9,'ok','ok','2015-02-02','2015-03-01','Monday        2015-03-30           08:52:22','ADMIN 1');
/*!40000 ALTER TABLE `devd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devt`
--

DROP TABLE IF EXISTS `devt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devt` (
  `child_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `length` double NOT NULL,
  `head` double NOT NULL,
  `lang` varchar(2000) NOT NULL,
  `limbs` varchar(2000) NOT NULL,
  `dateE` date NOT NULL,
  `nextA` date NOT NULL,
  PRIMARY KEY (`child_id`,`dateE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devt`
--

LOCK TABLES `devt` WRITE;
/*!40000 ALTER TABLE `devt` DISABLE KEYS */;
INSERT INTO `devt` VALUES (4550,2,46,34,'okk','okk','2015-03-01','2015-03-08'),(4550,2.5,49,37,'great','great','2015-03-08','2015-03-15'),(4550,3,53,40,'fine','fine','2015-03-15','2015-03-22'),(4550,3.6,55.7,42,'ok','ok','2015-03-22','2015-03-29'),(4550,4,59,45,'ok','ok','2015-03-29','2015-04-05'),(4550,5,78,87,'great','great','2025-03-24','2025-03-26'),(4550,8,9,6,'good','good','2025-03-26','2025-03-26'),(4560,2,46,34,'ok','ok','2015-03-03','2015-03-10'),(4560,2.5,49,37,'ok','ok.','2015-03-10','2025-03-27'),(4560,3,52,40,'ok','ok','2015-03-17','2015-03-24'),(4560,3.9,59,45,'k','k','2015-03-31','2015-04-08'),(4560,3.5,55.7,41,'ok','ok','2015-04-06','2015-04-28'),(4569,6,56,47,'hhhhh','hhhjk','2015-03-30','2015-03-31'),(4572,4,56,56,'HHH','HHH','2015-03-31','2015-04-06'),(4573,5,45,34,'hgfghf','JUHJHIG','2025-03-24','2025-03-24'),(4575,5,30,27,'Good','Good','2025-03-24','2025-03-27');
/*!40000 ALTER TABLE `devt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `famd`
--

DROP TABLE IF EXISTS `famd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `famd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child_id` int(11) NOT NULL,
  `guardian` varchar(6) NOT NULL,
  `ffname` varchar(35) NOT NULL,
  `flname` varchar(35) NOT NULL,
  `ftel` varchar(16) NOT NULL,
  `mfname` varchar(35) NOT NULL,
  `mlname` varchar(35) NOT NULL,
  `mtel` varchar(16) NOT NULL,
  `county` varchar(50) NOT NULL,
  `scounty` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `dated` varchar(60) NOT NULL,
  `delb` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `famd`
--

LOCK TABLES `famd` WRITE;
/*!40000 ALTER TABLE `famd` DISABLE KEYS */;
INSERT INTO `famd` VALUES (1,4528,'NO','null','null','    -   -   ','fred','fred','1212-121-212','Kericho','cher','ched','Saturday         2015-03-28       11:20:37','ADMIN 1'),(2,4500,'NO','James','John','0789-444-669','mary','joseph','0784-565-433','Kericho','yyyyyy','yyyyyyy','Saturday         2015-03-28       16:00:59','ADMIN 1'),(3,4530,'NO','cert','cert','3333-333-333','null','null','0','Kwale','mperu','yuli','Monday         2015-03-30       08:51:03','ADMIN 1');
/*!40000 ALTER TABLE `famd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family`
--

DROP TABLE IF EXISTS `family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `family` (
  `child_id` int(11) NOT NULL,
  `guardian` varchar(4) NOT NULL,
  `ffname` varchar(30) DEFAULT NULL,
  `flname` varchar(30) DEFAULT NULL,
  `ftel` varchar(40) DEFAULT NULL,
  `mfname` varchar(30) DEFAULT NULL,
  `mlname` varchar(30) DEFAULT NULL,
  `mtel` varchar(30) DEFAULT NULL,
  `county` varchar(40) NOT NULL,
  `scounty` varchar(40) NOT NULL,
  `village` varchar(50) NOT NULL,
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family`
--

LOCK TABLES `family` WRITE;
/*!40000 ALTER TABLE `family` DISABLE KEYS */;
INSERT INTO `family` VALUES (4518,'NO','Dell','Mack','4545-454-5  ','Gray','Matter','    -   -   ','Kisii','Mosocho','Boochi'),(4521,'YES','null','null','0789-444-669','Daisy','Makau','3333-333-333','Busia','Kilimu','Kiilu'),(4523,'NO','John','Mark','5456-355-464','null','null','    -   -   ','Embu','Meru','Buori'),(4524,'YES','Silas','Makau','0783-676-334','Rose','Makau','0784-464-743','Kiambu','Nyahe','Makuyu'),(4525,'NO','Raph','James','1111-111-111','null','null','    -   -   ','Isiolo','Teru','Juta'),(4526,'NO','Sam','Dan','1111-111-111','Jane','Mary','5433-333-334','Kilifi','Bao','Male'),(4527,'NO','Jae','dert','4444-444-444','tery','dert','7777-777-777','Isiolo','kiollop','uiol'),(4529,'NO','swerd','swas','2222-222-222','huli','huyi','5555-555-555','Baringo','ytyt','tyty'),(4531,'NO','fery','det','4444-444-444','rtyu','rty','2222-222-222','Kisii','keroka','keumbu'),(4532,'NO','fed','ned','2111-122-222','null','null','0','Kisii','hyu','hyu'),(4533,'NO','swer','qwerty','2111-122-222','werty','werty','2222-222-222','Kwale','weru','weru'),(4535,'NO','Sam','Smith','2222-222-222','Deat','Deat','    -   -   ','Lamu','lamu','lamu'),(4543,'NO','were','waer','2222-222-222','erty','erty','4444-444-444','Embu','tyu','typ'),(4544,'NO','Dan','Obonyo','0721-832-310','Lilly','Kerry','0720-336-286','Isiolo','Jabe','Kabe'),(4545,'YES','eeee','eeeeee','3333-333-333','tttttttttttttt','tttttttttt','8876876875','Busia','uyu','uyu'),(4546,'NO','were','sers','3333-333-333','free','free','4564-545-665','Embu','tyu','tyu'),(4547,'NO','Salim','Tream','1111-111-111','Sully','Creb','2222-222-222','Garissa','Deally','Frea'),(4548,'NO','Hughes','Ercick','1234567890','null','null','0','Kisumu','Rach','Kach'),(4549,'NO','null','null','0','Rachel','Deally','Crap','Busia','Mbale','Mumias'),(4550,'YES','null','null','0','delly','Dull','0722322323','Busia','rte','ere'),(4551,'NO','derdr','fredf','4545454554','hugo','hugo','7676675644','Busia','yuyiyuyi','juio'),(4552,'YES','Dan','Muller','6676767676','Jane','Daed','5656565656','Embu','tyui','tyui'),(4553,'NO','Fred','Mwai','4647467674','Gully','Gareth','4783477347','Embu','Mwea','Buuri'),(4554,'YES','Dety','Dan','3434343434','Jackline','Putosity','3434343433','Kilifi','Kwale','Elli'),(4555,'YES','null','null','0','Jude','Judy','8383737487','Kilifi','Muuri','Rety'),(4556,'YES','Julius','Malema','8784758475','null','null','0','Kisii','huyi','klop'),(4557,'YES','Fred','Akako','7873843847','null','null','0','Kitui','Kwanza','Hugo'),(4558,'YES','Henry','Tullo','8398349898','Faith','Lulley','4343434343','Embu','Kanja','Kumlo'),(4559,'YES','James','Kamla','8348374878','Hellen','Kapla','9932398983','Meru','Laikipy','Jullo'),(4560,'YES','Michin','Duke','4545455454','Chuke','Arya','3443454657','Lamu','Mpeke','guro'),(4561,'YES','Hugo','Chavez','4224434343','Martha','Tuco','3343434343','Garissa','Arga','Garba'),(4562,'NO','Jude','olio','3454564656','Grace','Salio','6336473647','Lamu','rere','yete'),(4563,'NO','Fally','Ipupa','3473647676','Mbiliah','Bell','6723627327','Makueni','Konza','Kulio'),(4564,'NO','null','null','0','dreth','fredyt','5656656656','Busia','music','fredy'),(4565,'NO','Try','Ryu','7878787676','gully','felly','8989898989','Busia','rere','fery'),(4566,'NO','Sael','Delly','6336736473','yuri','Zirdfg','5454565654','Laikipia','juita','kilu'),(4567,'YES','null','null','0','Jane','Yuri','4545545454','Kwale','Mui','Mwema'),(4568,'NO','weerr','dfgggg','4556677889','null','null','0','Kitui','drfr','ftgt'),(4569,'NO','yiuoikl;','dfghjkl','4567890667','thtghghg','ghghghgh','565565656','Meru','dfdfdfd','dfdfdfdfd'),(4570,'NO','Wycliff','Ombachi','0876544788','null','null','0','Kisii','bondo','vdt'),(4572,'NO','ghghgh','ghghh','7677676767','rtrtrt','rttrtt','5566666789','Embu','yui','yui'),(4573,'NO','null','null','0','uuyu','uyuyuy','8678687676','Baringo','uyy','uigug'),(4575,'NO','QWERTY','QWERTY','7678557657','ASDFG','ASDFG','7868787557','Embu','ASDF','ASDF'),(4576,'NO','xdrctfvgy','','','tgrfedrftg','hgfcdrgvf','0789756743','Garissa','mbtdex','hftvzwxtrdt');
/*!40000 ALTER TABLE `family` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immud`
--

DROP TABLE IF EXISTS `immud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `immud` (
  `child_id` int(11) NOT NULL,
  `vaccine` varchar(35) NOT NULL,
  `bodysite` varchar(35) NOT NULL,
  `adminmeth` varchar(35) NOT NULL,
  `dateg` date NOT NULL,
  `nextapp` date NOT NULL,
  `notes` varchar(2000) NOT NULL,
  `dated` varchar(60) NOT NULL,
  `delb` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immud`
--

LOCK TABLES `immud` WRITE;
/*!40000 ALTER TABLE `immud` DISABLE KEYS */;
INSERT INTO `immud` VALUES (4500,'BCG','Upper Arm','Dermal','2015-03-26','2015-03-31','wwwww','Saturday         2015-03-28       10:32:29','RAM'),(4500,'polio2','thighs','injection','2015-03-26','2015-04-14','sdsdd','Saturday         2015-03-28       10:48:31','RAM'),(4550,'BCG','thighs','Dermal','2015-03-28','2015-03-28','yyyy','Monday         2015-03-30       08:51:43','ADMIN 1');
/*!40000 ALTER TABLE `immud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immunizedata`
--

DROP TABLE IF EXISTS `immunizedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `immunizedata` (
  `child_id` int(11) NOT NULL,
  `vaccine` varchar(45) NOT NULL,
  `bodysite` varchar(45) NOT NULL,
  `adminmeth` varchar(45) NOT NULL,
  `dateg` date NOT NULL,
  `nextapp` date NOT NULL,
  `notes` varchar(2000) NOT NULL,
  PRIMARY KEY (`child_id`,`vaccine`,`dateg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immunizedata`
--

LOCK TABLES `immunizedata` WRITE;
/*!40000 ALTER TABLE `immunizedata` DISABLE KEYS */;
INSERT INTO `immunizedata` VALUES (4550,'BCG','Finger','Dermal','2025-03-26','2025-04-15','wsedrftgyh'),(4550,'Measles','thighs','injection','2015-03-28','2015-03-28','gg'),(4550,'opv10','Upper Arm','injection','2015-03-14','2015-03-21','ok'),(4550,'polio2','thigh','dermal','2015-03-21','2015-03-28','ok'),(4560,'BCG','Upper Arm','injection','2015-03-16','2015-03-23','fine'),(4560,'measles','Upper Arm','dermal','2015-03-23','2015-03-30','right'),(4560,'opv10','thigh','dermal','2015-03-09','2015-03-16','ok'),(4560,'Pneumo','Upper Arm','injection','2015-03-02','2015-03-09','ok'),(4569,'Measles','thigh','injection','2015-03-30','2015-04-06','ok'),(4572,'BCG','thigh','injection','2015-03-31','2015-04-21','ok'),(4573,'BCG','head','Dermal','2025-03-24','2025-03-24','GUYFYUDCYUFCEY'),(4575,'BCG','thigh','injection','2025-03-24','2025-03-31','QEQREQERQEQ');
/*!40000 ALTER TABLE `immunizedata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infod`
--

DROP TABLE IF EXISTS `infod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infod` (
  `child_id` int(11) NOT NULL,
  `fname` varchar(35) NOT NULL,
  `mname` varchar(35) NOT NULL,
  `lname` varchar(35) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `dob` date NOT NULL,
  `dfs` date NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `notes` varchar(2000) NOT NULL,
  `dated` varchar(100) DEFAULT NULL,
  `delb` varchar(35) NOT NULL,
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infod`
--

LOCK TABLES `infod` WRITE;
/*!40000 ALTER TABLE `infod` DISABLE KEYS */;
INSERT INTO `infod` VALUES (4518,' Cliff',' Ombachi',' Ombachi','Male','2015-03-23','2015-03-26',2,45,'fffff','2015-03-28 09:24:58','ADMIN 1'),(4519,'rael','faith','tune','Female','2015-03-09','2015-03-26',3,46,'dddddd','2015-03-28 09:24:58','ADMIN 1'),(4520,'chris','Mack','Apple','Male','2015-02-02','2015-03-26',3,45,'fffff','2015-03-28 09:24:58','ADMIN 1'),(4521,'James','Otieno','Odhiambo','Male','2015-02-19','2015-03-25',4,45,'dddd','2015-03-28 09:24:58','ADMIN 1'),(4522,'Jane','Kirwa','Chebet','Female','2015-02-26','2015-03-26',6,43,'Ok','2015-03-28 00:00:00','ADMIN 1'),(4523,' Susan',' Lewinsky',' Clinton','Female','2015-03-26','2015-03-26',4,46,'ddd','Saturday        2015-03-28           09:30:08','ADMIN 1'),(4524,'Gloria','Kemunto','Ochoki','Female','2015-02-09','2015-03-26',4,56,'gggg','Saturday        2015-03-28           09:30:33','ADMIN 1'),(4525,'Haelies','dert','frey','Male','2015-02-25','2015-03-26',3,45,'fdfd','Saturday        2015-03-28           10:02:55','ADMIN 1'),(4526,'brere','trey','deade','Male','2015-03-01','2015-03-26',4,56,'ftrh','Saturday        2015-03-28           10:05:35','ADMIN 1'),(4527,'saer','deas','red','Female','2015-03-23','2015-03-26',4,45,'ddd','Saturday        2015-03-28           10:08:13','RAM'),(4528,'heal','vead','freely','Male','2015-03-25','2015-03-25',3,45,'dfdf','Monday        2015-03-30           19:39:41','ADMIN 1'),(4535,'free','freeer','erer','Female','2015-02-19','2015-03-26',3,52,'eeded','Monday        2025-03-24           09:00:49','ADMIN 1'),(4565,'dugy','fredy','ggerty','Male','2015-02-26','2015-03-30',3,46,'klo','Monday        2015-03-30           08:28:19','ADMIN 1'),(4566,' Fred',' Dell',' Acer','Male','2015-03-02','2015-03-30',3,46,'ok','Monday        2015-03-30           08:40:39','ADMIN 1');
/*!40000 ALTER TABLE `infod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informationc`
--

DROP TABLE IF EXISTS `informationc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informationc` (
  `child_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `dfs` date NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `notes` varchar(2000) NOT NULL,
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4578 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informationc`
--

LOCK TABLES `informationc` WRITE;
/*!40000 ALTER TABLE `informationc` DISABLE KEYS */;
INSERT INTO `informationc` VALUES (4500,'Lilt','Kin','Kim','Female','2015-03-13','2015-03-04',4,67,'ok'),(4530,'feeer','gret','dere','Female','2015-02-08','2015-03-26',3.4,54,'dfd'),(4531,'heasrt','free','drere','Female','2015-02-20','2015-03-26',4.2,55,'fffff'),(4532,'jimmy','micah','gree','Male','2015-02-18','2015-03-26',3,47,'dddd'),(4533,'derey','nulr','dert','Male','2015-02-18','2015-03-26',3,53,'sssss'),(4534,'derg','huli','julo','Female','2015-02-20','2015-03-26',3,52,'dsds'),(4537,'deee','reeee','feee','Female','2015-03-16','2015-03-26',3.5,49,'ggg'),(4539,'dewd','dese','sere','Male','2015-03-17','2015-03-26',2.9,58,'hhh'),(4540,'frer','fret','fey','Female','2015-03-04','2015-03-26',3,47,'ccc'),(4541,'Luke',' james',' luke','Female','2015-03-25','2015-03-26',4.4,46.8,'fffff'),(4543,'Fred','Kitua','Kipla','Male','2015-03-18','2015-03-27',3,47,'dddd'),(4545,' Add',' Nell',' Crap','Male','2015-03-17','2015-03-27',3,46,'ddd'),(4546,'Gaet','bmj','Gally','Female','2015-03-18','2015-03-27',3,52,'dddddd'),(4547,' Duke',' Duces',' Dukes','Male','2015-03-27','2015-03-27',3,55,'uyuyuu'),(4549,'Rachel','Fred','Knight','Female','2015-03-01','2015-03-28',3.2,45,'ok'),(4550,' Dell',' Hapard',' Acer','Male','2015-03-11','2015-03-28',3,44,'fery'),(4551,' Sarah',' Judith',' Nark','Female','2015-03-09','2015-03-30',4,46,'ok'),(4552,'John','Janey','Create','Male','2015-03-23','2015-03-30',3,47,'ok'),(4553,'Read','ferd','dery','Female','2015-03-23','2015-03-30',3,34,'not ok'),(4554,'Cliff','Andy','dery','Male','2015-03-30','2015-03-30',2,48,'wghttyty'),(4555,'herty','qwerty','erty','Female','2015-02-02','2015-03-30',4,56,'ok'),(4556,'asley','deally','ashley','Male','2015-02-02','2015-03-30',5,47,'ok'),(4557,'ceady','seedy','feedy','Female','2015-02-04','2015-03-30',3,56,'ok'),(4558,'sael','nael','create','Female','2015-02-06','2015-03-30',3,58,'hhh'),(4559,'jery','jery','grety','Male','2015-02-07','2015-03-30',3,56,'frty'),(4560,'wedty','sael','dery','Male','2015-02-09','2015-03-30',3,55,'dededg'),(4561,'dude','jude','derty','Male','2015-02-11','2015-03-30',3,45,'geary'),(4562,'rael','kidd','kidd','Female','2015-02-13','2015-03-30',4,55,'ffrt'),(4563,'jude','judy','fred','Female','2015-02-17','2015-03-30',3,47,'fff'),(4564,'diana','dianny','fally','Female','2015-02-20','2015-03-30',3,55,'ffr'),(4567,' Dukel',' Machine',' Saet','Male','2015-03-11','2015-03-30',3,46,'ok'),(4568,' werr',' ddee',' edefr','Female','2015-03-30','2015-03-30',4,5,'dfgyh'),(4569,'fdytyu','yuiuiuo','ioipoipoip','Female','2015-03-01','2015-03-30',2,46,'ok'),(4570,' dsard',' vtdr',' tse','Female','2015-03-29','2015-03-30',9,65,'abnormal'),(4571,'David','David','John','Male','2015-03-23','2015-03-31',4,3,'ok'),(4572,'erere','erer','errr','Female','2015-03-01','2015-03-31',4,56,'ttt'),(4573,' yuyuy',' uyuyu',' uyuy','Male','2025-03-24','2025-03-24',7,8,'jgysuxyfs'),(4574,'Chela','msomi','kaswi','Female','2025-03-04','2025-03-24',3,8,'good'),(4575,'ABC','tY','om','Male','2025-03-24','2025-03-24',3,5,'FDS'),(4576,'hbgvfcdxrs','tgfgyuh','tgyuhniji','Male','2025-03-26','2025-03-26',5,8,'edtrfyuhn'),(4577,'gydujg','sfsgddhtg','ytguy','Male','2025-03-26','2025-03-26',6,9,'fgfj');
/*!40000 ALTER TABLE `informationc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logas`
--

DROP TABLE IF EXISTS `logas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logas` (
  `idl` int(11) NOT NULL AUTO_INCREMENT,
  `log` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dTimeIn` datetime NOT NULL,
  `dTimeOut` datetime DEFAULT NULL,
  PRIMARY KEY (`idl`)
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logas`
--

LOCK TABLES `logas` WRITE;
/*!40000 ALTER TABLE `logas` DISABLE KEYS */;
INSERT INTO `logas` VALUES (430,'ADMIN 1',4545,'2015-03-30 09:05:53','2015-03-30 09:06:14'),(431,'ADMIN 1',4545,'2015-03-30 09:06:30','2015-03-30 09:07:08'),(432,'ADMIN 1',4545,'2015-03-30 09:11:54','2015-03-30 09:12:05'),(433,'ADMIN 1',4545,'2015-03-30 09:45:29','2015-03-30 09:54:00'),(434,'ADMIN 1',4545,'2015-03-30 15:15:02','2015-03-30 15:15:13'),(435,'ADMIN 1',4545,'2015-03-30 15:16:45','2015-03-30 15:16:57'),(436,'ADMIN 1',4545,'2015-03-30 19:14:58','2015-03-30 19:15:12'),(437,'ADMIN 1',4545,'2015-03-30 19:27:26','2015-03-30 19:27:51'),(438,'ADMIN 1',4545,'2015-03-30 19:27:56','2015-03-30 19:40:24'),(439,'ADMIN 1',4545,'2015-03-30 20:48:01','2015-03-30 21:00:27'),(440,'sisi',9090,'2015-03-30 21:04:50','2015-03-30 21:08:23'),(441,'ADMIN 1',4545,'2015-03-30 21:08:25',NULL),(442,'ADMIN 1',4545,'2015-03-30 21:24:52','2015-03-30 21:22:22'),(443,'sisi',9090,'2015-03-30 21:47:47','2015-03-30 21:50:03'),(444,'ADMIN 1',4545,'2015-03-31 00:09:13','2015-03-31 00:10:18'),(445,'ADMIN 1',4545,'2015-03-31 00:25:29','2015-03-31 00:25:44'),(446,'ADMIN 1',4545,'2015-03-31 00:26:06','2015-03-31 00:27:24'),(447,'ADMIN 1',4545,'2015-03-31 06:31:47','2015-03-31 11:31:06'),(448,'ADMIN 1',4545,'2015-04-05 08:52:53','2015-04-05 08:53:54'),(449,'ADMIN 1',4545,'2015-04-06 07:47:09','2015-04-06 07:48:52'),(450,'ADMIN 1',4545,'2015-04-06 10:27:40','2015-04-06 10:27:54'),(451,'ADMIN 1',4545,'2015-04-06 10:35:03','2015-04-06 10:35:14'),(452,'ADMIN 1',4545,'2015-04-06 14:16:07',NULL),(453,'ADMIN 1',4545,'2015-04-07 22:51:24','2015-04-07 22:51:42'),(454,'ADMIN 1',4545,'2015-04-09 14:07:52','2015-04-09 14:08:21'),(455,'ADMIN 1',4545,'2015-04-09 14:40:56','2015-04-09 14:42:54'),(456,'ADMIN 1',4545,'2015-04-09 14:45:57','2015-04-09 14:47:27'),(457,'ADMIN 1',4545,'2015-04-10 07:00:30','2015-04-10 07:00:47'),(458,'ADMIN 1',4545,'2015-04-10 07:13:24','2015-04-10 07:13:54'),(459,'ADMIN 1',4545,'2015-04-10 07:14:51','2015-04-10 07:15:03'),(460,'ADMIN 1',4545,'2015-04-10 07:27:37','2015-04-10 07:27:53'),(461,'ADMIN 1',4545,'2025-03-24 08:59:14',NULL),(462,'ADMIN 1',4545,'2025-03-24 10:54:53',NULL),(463,'ADMIN 1',4545,'2025-03-24 11:00:05',NULL),(464,'ADMIN 1',4545,'2025-03-24 11:09:36',NULL),(465,'ADMIN 1',4545,'2025-03-24 11:14:18',NULL),(466,'ADMIN 1',4545,'2025-03-24 11:32:17','2025-03-24 11:33:36'),(467,'ADMIN 1',4545,'2025-03-24 11:34:12',NULL),(468,'ADMIN 1',4545,'2025-03-24 11:37:10',NULL),(469,'ADMIN 1',4545,'2025-03-24 11:39:28',NULL),(470,'ADMIN 1',4545,'2025-03-24 11:46:25',NULL),(471,'ADMIN 1',4545,'2025-03-24 12:01:38','2025-03-24 12:04:17'),(472,'ADMIN 1',4545,'2025-03-24 12:12:44',NULL),(473,'ADMIN 1',4545,'2025-03-24 12:19:08','2025-03-24 12:22:02'),(474,'ADMIN 1',4545,'2025-03-24 12:26:46',NULL),(475,'ADMIN 1',4545,'2025-03-24 12:32:47',NULL),(476,'ADMIN 1',4545,'2025-03-24 12:42:11',NULL),(477,'ADMIN 1',4545,'2025-03-24 12:43:28','2025-03-24 12:44:09'),(478,'ggg',59,'2025-03-24 12:46:13','2025-03-24 12:48:59'),(479,'ggg',59,'2025-03-24 12:51:54',NULL),(480,'ggg',59,'2025-03-24 12:51:54','2025-03-24 12:56:22'),(481,'ADMIN 1',4545,'2025-03-24 13:34:00',NULL),(482,'ADMIN 1',4545,'2025-03-24 13:39:05','2025-03-24 13:39:22'),(483,'ADMIN 1',4545,'2025-03-24 13:39:35','2025-03-24 13:56:12'),(484,'ADMIN 1',4545,'2025-03-24 13:56:22','2025-03-24 14:17:37'),(485,'hhhhh',6767,'2025-03-24 14:17:46',NULL),(486,'ggg',59,'2025-03-24 14:17:46','2025-03-24 14:19:03'),(487,'ADMIN 1',4545,'2025-03-24 19:46:34','2025-03-24 19:49:19'),(488,'ADMIN 1',4545,'2025-03-26 09:01:50',NULL),(489,'ADMIN 1',4545,'2025-03-26 09:08:50','2025-03-26 09:16:33'),(490,'ADMIN 1',4545,'2025-03-26 09:50:41',NULL),(491,'ADMIN 1',4545,'2025-03-28 13:27:10',NULL);
/*!40000 ALTER TABLE `logas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlev`
--

DROP TABLE IF EXISTS `userlev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlev` (
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlev`
--

LOCK TABLES `userlev` WRITE;
/*!40000 ALTER TABLE `userlev` DISABLE KEYS */;
INSERT INTO `userlev` VALUES ('Admin'),('Admin'),('User'),('User'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('User'),('Admin'),('User'),('User'),('Admin'),('User'),('Admin'),('User'),('User'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('User'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('User'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('User'),('User'),('User'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('User'),('User'),('User'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('User'),('User'),('User'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('User'),('User'),('User'),('User'),('User'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('User'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('Admin'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('User'),('User'),('Admin'),('Admin'),('Admin'),('Admin'),('Admin');
/*!40000 ALTER TABLE `userlev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Fname` varchar(40) NOT NULL,
  `Lname` varchar(40) NOT NULL,
  `email` varchar(35) NOT NULL DEFAULT 'admin@ram.com',
  `date` datetime NOT NULL DEFAULT '2015-03-06 10:05:53',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (59,'User','55555555','ggg','ggg','ggg@ggg.bbb','2015-03-24 14:46:05'),(123,'User','67676767','James','Leakey','admin@ram.com','2015-03-06 10:05:53'),(444,'User','555.rt67','dddd','dddd','ddd@ddd.ddd','2015-03-25 06:47:58'),(676,'User','12345678@a','rttrt','YUYUY','fff@fff.com','2025-03-24 14:15:10'),(777,'User','hhhh777@@','ppp','iii','hjhj@kkk.com','2015-03-24 15:39:24'),(1234,'Admin','admin4@123','Admin 4','RAM','www@www.www','2015-03-24 15:10:08'),(1278,'User','12345678@abc','Faith','Faith','fay@gmail.com','2025-03-24 09:06:40'),(2324,'User','123@wwwww','rrrr','rrrrr','www@ddd.kkk','2015-03-26 07:44:06'),(3333,'User','yyyy90##','hhh','jjj','yyy@lll.mmm','2015-03-24 15:39:24'),(4444,'User','333@wwww','eeee','eee','fff@fff.fff','2015-03-25 07:57:37'),(4545,'Admin','admin@123','MCH','ADMIN 1','wombachi213@gmail.com','2015-03-07 13:44:20'),(5656,'Admin','5656565656','MCH','ADMIN 2','admin@ram.com','2015-03-16 07:29:53'),(5678,'User','hsshsh@23','strfguhn','wsedtrfyuh','jnrhngng@dmail.com','2025-03-26 09:09:04'),(6667,'Admin','admin@1234','ADMIN 3','MCH','hjddh@sbhgs','2015-03-06 10:05:53'),(6767,'User','6767@user','ggggg','hhhhh','rrrr@jjjj.com','2015-03-24 07:37:06'),(7878,'User','wewe@hhh3','ggggggggg','rrrrrrr','ddd@ddd.ccc','2015-03-24 15:48:42'),(9090,'User','datadata1£','mimi','sisi','fhhgvjhcf@kmdjh.com','2015-03-30 21:00:27'),(9898,'User','@@@yty8787','ttt','jjj','gg@ggg.com','2015-03-24 15:48:42'),(22222,'User','laptopsddd11@','ddddd','dddddd','www@wwww.com','2015-03-26 15:02:45'),(99999,'User','hhhhh@4444','dddd','dddd','jjj@hhh.hhh','2015-03-26 08:26:25'),(656565,'User','564@@kkk','eee','jjj','trtrt@dhdh.com','2015-03-24 15:48:42'),(777777,'User','7777777777','eeeee','yyyy','ggg@kkk.jjj','2015-03-07 21:45:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccines`
--

DROP TABLE IF EXISTS `vaccines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaccines` (
  `vaccineID` varchar(11) NOT NULL,
  `vaccine` varchar(50) NOT NULL,
  PRIMARY KEY (`vaccine`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccines`
--

LOCK TABLES `vaccines` WRITE;
/*!40000 ALTER TABLE `vaccines` DISABLE KEYS */;
INSERT INTO `vaccines` VALUES ('4545','BCG'),('6767','Covid-19'),('YT56P','Measles'),('KLH76A','OPV10'),('WQ123T','Pneumo'),('PR34P','polio2'),('y677','yhhhhhh');
/*!40000 ALTER TABLE `vaccines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-28 13:28:31
