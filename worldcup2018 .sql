-- MySQL dump 10.17  Distrib 10.3.20-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: worldcup2018
-- ------------------------------------------------------
-- Server version	10.3.20-MariaDB-0ubuntu0.19.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bangxh`
--

DROP TABLE IF EXISTS `bangxh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bangxh` (
  `maqg` varchar(10) NOT NULL,
  `vong` varchar(20) NOT NULL,
  `sotran` int(11) DEFAULT NULL,
  `thang` int(11) DEFAULT NULL,
  `hoa` int(11) DEFAULT NULL,
  `thua` int(11) DEFAULT NULL,
  `diem` int(11) DEFAULT NULL,
  `hang` int(11) DEFAULT NULL,
  PRIMARY KEY (`maqg`,`vong`),
  CONSTRAINT `bxh_qg` FOREIGN KEY (`maqg`) REFERENCES `quocgia` (`maqg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangxh`
--

LOCK TABLES `bangxh` WRITE;
/*!40000 ALTER TABLE `bangxh` DISABLE KEYS */;
INSERT INTO `bangxh` VALUES ('arg','1-8',1,0,0,0,0,2),('arg','loai',3,1,1,1,4,2),('aus','loai',3,0,1,2,1,4),('bel','1-8',1,1,0,0,3,1),('bel','ban ket',1,0,0,0,0,2),('bel','loai',3,3,0,0,9,1),('bel','tranh hang 3',1,1,0,0,3,1),('bel','tu ket',1,1,0,0,3,1),('bra','1-8',1,1,0,0,3,1),('bra','loai',3,2,1,0,7,1),('bra','tu ket',1,0,0,0,0,2),('col','1-8',1,0,0,0,0,2),('col','loai',3,2,0,1,6,1),('cos','loai',3,0,1,2,1,4),('cro','1-8',1,1,0,0,3,1),('cro','ban ket',1,1,0,0,3,1),('cro','chung ket',1,0,0,0,0,2),('cro','loai',3,3,0,0,9,1),('cro','tu ket',1,1,0,0,3,1),('den','1-8',1,0,0,0,0,2),('den','loai',3,1,2,0,5,2),('egy','loai',3,0,0,3,0,4),('eng','1-8',1,1,0,0,3,1),('eng','ban ket',1,0,0,0,0,2),('eng','loai',3,2,0,1,6,2),('eng','tranh hang 3',1,0,0,0,0,2),('eng','tu ket',1,1,0,0,3,1),('fra','1-8',1,1,0,0,3,1),('fra','ban ket',1,1,0,0,3,1),('fra','chung ket',1,1,0,0,3,1),('fra','loai',3,2,1,0,7,1),('fra','tu ket',1,1,0,0,3,1),('ger','loai',3,1,0,2,3,4),('ice','loai',3,0,1,2,1,4),('ira','loai',3,1,1,1,4,3),('jap','1-8',1,0,0,0,0,2),('jap','loai',3,1,1,1,4,2),('kor','loai',3,1,0,2,3,3),('mex','1-8',1,0,0,0,0,2),('mex','loai',3,2,0,1,6,2),('mor','loai',3,0,1,2,1,4),('nig','loai',3,1,0,2,3,3),('pan','loai',3,0,0,3,0,4),('per','loai',3,1,0,2,3,3),('pol','loai',3,1,0,2,3,4),('por','1-8',1,0,0,0,0,2),('por','loai',3,1,2,0,5,2),('rus','1-8',1,1,0,0,3,1),('rus','loai',3,2,0,1,6,2),('rus','tu ket',1,0,0,0,0,2),('sau','loai',3,1,0,2,3,3),('sen','loai',3,1,1,1,4,3),('ser','loai',3,1,0,2,3,3),('spa','1-8',1,0,0,0,0,2),('spa','loai',3,1,2,0,5,1),('swe','1-8',1,1,0,0,3,1),('swe','loai',3,2,0,1,6,1),('swe','tu ket',1,0,0,0,0,2),('swi','1-8',1,0,0,0,0,2),('swi','loai',3,1,2,0,5,2),('tun','loai',3,1,0,2,3,3),('uru','1-8',1,1,0,0,3,1),('uru','loai',3,3,0,0,9,1),('uru','tu ket',1,0,0,0,0,2);
/*!40000 ALTER TABLE `bangxh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cauthu`
--

DROP TABLE IF EXISTS `cauthu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cauthu` (
  `mact` varchar(10) NOT NULL,
  `hoten` varchar(50) DEFAULT NULL,
  `vitri` varchar(30) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `maqg` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`mact`),
  KEY `ct_qg` (`maqg`),
  CONSTRAINT `ct_qg` FOREIGN KEY (`maqg`) REFERENCES `quocgia` (`maqg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cauthu`
--

LOCK TABLES `cauthu` WRITE;
/*!40000 ALTER TABLE `cauthu` DISABLE KEYS */;
INSERT INTO `cauthu` VALUES ('c57','Paolo Guerrero','tien dao','1989-11-10','per'),('ct1','Lionel Messi','tien dao','1987-06-24','arg'),('ct10','Essam El-Hadary','thu mon','1994-10-02','egy'),('ct11','Mohamed Salah','tien dao','1992-06-15','egy'),('ct12','Omar Gaber','hau ve','1992-01-20','egy'),('ct13','Fernando Muslera','thu mon','1986-06-16','uru'),('ct14','Luis Suarez','tien dao','1987-01-24','uru'),('ct15','Sebastian Coates','hau ve','1993-04-05','uru'),('ct16','Jonas Lossl','thu mon','1988-06-10','den'),('ct17','Simon Kjaer','hau ve','1990-10-03','den'),('ct18','William Kvist','tien ve','1989-12-03','den'),('ct19','Leonel Moreira','thu mon','1987-07-11','cos'),('ct2','Sergio Romero','thu mon','1991-05-01','arg'),('ct20','Ian Smith','hau ve','1992-09-09','cos'),('ct21','Joel Campbell','tien dao','1991-10-05','cos'),('ct22','Kari Arnason','hau ve','1990-02-07','ice'),('ct23','Aron Gunnarsson','tien ve','1992-11-27','ice'),('ct24','Jon Bodvarsson','tien dao','1994-02-18','ice'),('ct25','Lovre Kalinic','thu mon','1992-05-06','cro'),('ct26','Vedran Corluka','hau ve','1993-07-04','cro'),('ct27','Luka Modric','tien ve','1997-08-05','cro'),('ct28','Francis Uzoho','thu mon','1990-02-08','nig'),('ct29','Wilfred Ndidi','tien ve','1991-11-14','nig'),('ct3','Sergio Aguero','tien dao','1990-07-02','arg'),('ct30','Ahmed Musa','tien dao','1994-11-03','nig'),('ct31','Alisson','thu mon','1995-09-11','bra'),('ct32','Miranda','hau ve','1991-10-05','bra'),('ct33','Neymar','tien dao','1992-05-05','bra'),('ct34','Roman Burki','thu mon','1990-05-04','swe'),('ct35','Michael Lang','hau ve','1987-09-18','swe'),('ct36','Josip Drmic','tien dao','1994-10-01','swe'),('ct37','Anthony Lopes','thu mon','1995-11-06','por'),('ct38','Adrien Silva','tien ve','1990-04-21','por'),('ct39','Cristiano Ronaldo','tien dao','1992-02-20','por'),('ct4','Soslan Dzhanaev','thu mon','1989-08-11','rus'),('ct40','David De Gea','thu mon','1988-10-15','spa'),('ct41','Sergio Ramos','hau ve','1994-03-10','spa'),('ct42','Lucas Vazquez','tien dao','1995-02-03','spa'),('ct43','Mounir El Kajoui','thu mon','1992-06-05','mor'),('ct44','Achraf Hakimi','hau ve','1989-01-20','mor'),('ct45','Hakim Ziyech','tien dao','1991-12-20','mor'),('ct46','Alireza Beiranvand','thu mon','1992-11-28','ira'),('ct47','Ramin Rezaeian','hau ve','1990-12-12','ira'),('ct48','Alireza Jahanbakhsh','tien dao','1985-09-08','ira'),('ct49','Hugo Lloris','thu mon','1986-10-03','fra'),('ct5','Artem Dzyuba','tien dao','1988-06-24','rus'),('ct50','Raphael Varane','hau ve','1990-04-29','fra'),('ct51','Kylian Mbappe','tien dao','1991-05-05','fra'),('ct52','Brad Jones','thu mon','1988-07-03','aus'),('ct53','Aziz Behich','hau ve','1992-03-07','aus'),('ct54','Daniel Arzani','tien dao','1987-06-29','aus'),('ct55','Pedro Gallese','thu mon','1986-09-28','per'),('ct56','Luis Abram','hau ve','1993-09-14','per'),('ct58','Marko Dmitrovic','thu mon','1993-05-12','ser'),('ct59','Adem Ljajic','tien ve','1991-12-31','ser'),('ct6','Igor Smolnikov','hau ve','1992-06-06','rus'),('ct60','Aleksandar Mitrovic','tien dao','1986-01-31','ser'),('ct61','Manuel Neuer','thu mon','1986-07-07','ger'),('ct62','Thomas Muller','tien ve','1992-02-02','ger'),('ct63','Jonas Hector','hau ve','1988-09-09','ger'),('ct64','Carlos Salcedo','hau ve','1988-04-04','mex'),('ct65','Andres Guardado','tien ve','1994-11-21','mex'),('ct66','Javier Aquino','tien dao','1997-10-05','mex'),('ct67','Kristoffer Nordfeldt','thu mon','1989-01-01','swi'),('ct68','Filip Helander','hau ve','1993-04-24','swi'),('ct69','Ola Toivonen','tien dao','1989-08-16','swi'),('ct7','Mohammed Al-Owais','thu mon','1993-09-20','sau'),('ct70','Kim Seung-gyu','thu mon','1994-05-01','kor'),('ct71','Ki Sung-yueng','tien ve','1987-05-04','kor'),('ct72','Son Heung-min','tien dao','1992-08-07','kor'),('ct73','Phil Jones','hau ve','1988-07-16','eng'),('ct74','Eric Dier','tien ve','1990-10-23','eng'),('ct75','Harry Kane','tien dao','1993-12-26','eng'),('ct76','Simon Mignolet','thu mon','1992-12-14','bel'),('ct77','Romelu Lukaku','tien dao','1996-03-22','bel'),('ct78','Christian Benteke','tien dao','1990-07-29','bel'),('ct79','Azmahar Ariano','hau ve','1988-11-11','pan'),('ct8','Fahad Al-Muwallad','tien dao','1992-10-30','sau'),('ct80','Ricardo Avila','tien ve','1990-12-16','pan'),('ct81','Abdiel Arroyo','tien dao','1994-09-28','pan'),('ct82','Moez Hassen','thu mon','1993-11-29','tun'),('ct83','Hamdi Nagguez','hau ve','1992-10-30','tun'),('ct84','Anice Badri','tien dao','1986-02-03','tun'),('ct85','Lukasz Fabianski','thu mon','1987-08-23','pol'),('ct86','Pawel Dawidowicz','tien ve','1988-02-28','pol'),('ct87','Dawid Kownacki','tien dao','1991-07-31','pol'),('ct88','Lamine Gassama','hau ve','1992-01-02','sen'),('ct89','Badou Ndiaye','tien ve','1990-12-31','sen'),('ct9','Osama Hawsaw','hau ve','1993-12-23','sau'),('ct90','Keita Balde','tien dao','1986-12-03','sen'),('ct91','Eiji Kawashima','thu mon','1987-05-30','jap'),('ct92','Makoto Hasebe','tien ve','1990-09-23','jap'),('ct93','Yuya Osako','tien dao','1991-10-28','jap'),('ct94','Manuel Neuer','thu mon','1985-09-24','col'),('ct95','Mesut Ozil','tien ve','1990-03-25','col'),('ct96','Mario Gomez','tien dao','1992-03-26','col');
/*!40000 ALTER TABLE `cauthu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huanluyenvien`
--

DROP TABLE IF EXISTS `huanluyenvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huanluyenvien` (
  `mahlv` int(11) NOT NULL,
  `ngaysinhhlv` date DEFAULT NULL,
  `quoctich` varchar(30) DEFAULT NULL,
  `maqg` varchar(10) DEFAULT NULL,
  `tenhlv` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mahlv`),
  KEY `hlv_qg` (`maqg`),
  CONSTRAINT `hlv_qg` FOREIGN KEY (`maqg`) REFERENCES `quocgia` (`maqg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huanluyenvien`
--

LOCK TABLES `huanluyenvien` WRITE;
/*!40000 ALTER TABLE `huanluyenvien` DISABLE KEYS */;
INSERT INTO `huanluyenvien` VALUES (1,'1963-09-02','Russia','rus','Stanislav Cherchesov'),(2,'1968-06-07','Argentina','sau','Juan Antonio'),(3,'1955-11-16','Argentina','egy','Hector Cuper'),(4,'1947-03-03','Uruguay','uru','Oscar Tabarez'),(5,'1954-10-10','Portugal','por','Fernando Santos'),(6,'1966-08-28','Spain','spa','Julen Lopetegui'),(7,'1968-09-30','France','mor','Herve Renard'),(8,'1953-03-01','Portugal','ira','Carlos Queiroz'),(9,'1968-10-15','France','fra','Didier Deschamps'),(10,'1952-05-19','Netherlands','aus','Bert van Marwijk'),(11,'1958-02-10','Argentina','per','Ricardo Gareca'),(12,'1953-09-23','Norway','den','Age Hareide'),(13,'1960-03-13','Argentina','arg','Jorge Sampaoli'),(14,'1967-06-10','Iceland','ice','Heimir Hallgrimsson'),(15,'1966-10-26','Yugoslavia','cro','Zlatko Dalic'),(16,'1953-06-28','Germany','nig','Gernot Rohr'),(17,'1961-05-25','Brazil','bra','Tite'),(18,'1963-08-15','Yugoslavia','swi','Vladimir Petkovic'),(19,'1964-12-08','Costa','cos','Oscar Ramirez'),(20,'1974-03-04','Yugoslavia','ser','Mladen Krstajic'),(21,'1960-02-03','Germany','ger','Joachim Low'),(22,'1961-06-08','Colombia','mex','Juan Carlos Osorio'),(23,'1962-09-29','Sweden','swe','Janne Andersson'),(24,'1970-10-11','Korea','kor','Shin Tae Yong'),(25,'1973-07-13','Spain','bel','Roberto Martinez'),(26,'1956-02-03','Colombia','pan','Herman Dario Gomez'),(27,'1962-07-25','Tunisia','tun','Nabil Maaloul'),(28,'1970-09-03','England','eng','Gareth Southgate'),(29,'1957-10-23','Poland','pol','Adam Nawalka'),(30,'1976-03-24','Senegal','sen','Aliou Cisse'),(31,'1955-04-07','Japan','jap','Akira Nishino'),(32,'1949-09-03','Argentina','col','Jose Pekeman');
/*!40000 ALTER TABLE `huanluyenvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quocgia`
--

DROP TABLE IF EXISTS `quocgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quocgia` (
  `maqg` varchar(10) NOT NULL,
  `tenqg` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`maqg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quocgia`
--

LOCK TABLES `quocgia` WRITE;
/*!40000 ALTER TABLE `quocgia` DISABLE KEYS */;
INSERT INTO `quocgia` VALUES ('arg','argentina'),('aus','australia'),('bel','belgium'),('bra','brazil'),('col','colombia'),('cos','costa rica'),('cro','croatia'),('den','denmark'),('egy','egypt'),('eng','england'),('fra','france'),('ger','germany'),('ice','iceland'),('ira','iran'),('jap','japan'),('kor','korea republic'),('mex','mexico'),('mor','morocco'),('nig','nigeria'),('pan','panama'),('per','peru'),('pol','poland'),('por','portugal'),('rus','russia'),('sau','saudi arabia'),('sen','senegal'),('ser','serbia'),('spa','spain'),('swe','sweden'),('swi','switzerland'),('tun','tunisia'),('uru','uruguay');
/*!40000 ALTER TABLE `quocgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svd`
--

DROP TABLE IF EXISTS `svd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svd` (
  `masan` varchar(10) NOT NULL,
  `tensan` varchar(50) DEFAULT NULL,
  `diachi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`masan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svd`
--

LOCK TABLES `svd` WRITE;
/*!40000 ALTER TABLE `svd` DISABLE KEYS */;
INSERT INTO `svd` VALUES ('s1','Luzhniki Stadium','Moscow'),('s10','Mordovia Arena','Saransk'),('s11','Fisht Stadium','Sochi'),('s12','Volgograd Arena','Volgograd'),('s2','Ekaterinburg Arena','Ekaterinburg'),('s3','Kaliningrad Stadium','Kaliningrad'),('s4','Kaliningrad','Kazan'),('s5','Spartak Stadium','Moscow'),('s6','Nizhny Novgorod Stadium','Nizhny Novgorod'),('s7','Rostov Arena','Rostov on Don'),('s8','Saint Petersburg Stadium','Saint Petersburg'),('s9','Samara Arena','Samara');
/*!40000 ALTER TABLE `svd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trandau`
--

DROP TABLE IF EXISTS `trandau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trandau` (
  `matran` int(11) NOT NULL,
  `vong` varchar(20) DEFAULT NULL,
  `ngaytd` date DEFAULT NULL,
  `maqg1` varchar(10) DEFAULT NULL,
  `maqg2` varchar(10) DEFAULT NULL,
  `masan` varchar(10) DEFAULT NULL,
  `ketqua` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`matran`),
  KEY `td_svd` (`masan`),
  KEY `td_qg1` (`maqg1`),
  KEY `td_qg2` (`maqg2`),
  CONSTRAINT `td_qg1` FOREIGN KEY (`maqg1`) REFERENCES `quocgia` (`maqg`),
  CONSTRAINT `td_qg2` FOREIGN KEY (`maqg2`) REFERENCES `quocgia` (`maqg`),
  CONSTRAINT `td_svd` FOREIGN KEY (`masan`) REFERENCES `svd` (`masan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trandau`
--

LOCK TABLES `trandau` WRITE;
/*!40000 ALTER TABLE `trandau` DISABLE KEYS */;
INSERT INTO `trandau` VALUES (1,'loai','2018-06-14','rus','sau','s1','5-0'),(2,'loai','2018-06-15','egy','uru','s2','0-1'),(3,'loai','2018-06-15','mor','ira','s9','0-1'),(4,'loai','2018-06-16','por','spa','s3','3-3'),(5,'loai','2018-06-16','fra','aus','s4','2-1'),(6,'loai','2018-06-16','arg','ice','s10','1-1'),(7,'loai','2018-06-16','per','den','s7','0-1'),(8,'loai','2018-06-17','cro','nig','s12','2-0'),(9,'loai','2018-06-17','cos','ser','s5','0-1'),(10,'loai','2018-06-17','ger','mex','s1','0-1'),(11,'loai','2018-06-18','bra','swi','s9','1-1'),(12,'loai','2018-06-18','swe','kor','s10','1-0'),(13,'loai','2018-06-18','bel','pan','s5','3-0'),(14,'loai','2018-06-19','tun','eng','s2','1-2'),(15,'loai','2018-06-19','col','jap','s9','1-2'),(16,'loai','2018-06-19','pol','sen','s8','1-2'),(17,'loai','2018-06-20','rus','egy','s12','3-1'),(18,'loai','2018-06-20','por','mor','s4','1-0'),(19,'loai','2018-06-20','sau','uru','s8','1-0'),(20,'loai','2018-06-21','ira','spa','s1','0-1'),(21,'loai','2018-06-21','den','aus','s7','1-1'),(22,'loai','2018-06-21','fra','per','s11','1-0'),(23,'loai','2018-06-22','arg','cro','s1','0-3'),(24,'loai','2018-06-22','bra','cos','s8','2-0'),(25,'loai','2018-06-22','nig','ice','s3','2-0'),(26,'loai','2018-06-23','ser','swi','s9','1-2'),(27,'loai','2018-06-23','bel','tun','s5','5-2'),(28,'loai','2018-06-23','kor','mex','s10','1-2'),(29,'loai','2018-06-24','ger','swe','s11','2-1'),(30,'loai','2018-06-24','eng','pan','s6','6-1'),(31,'loai','2018-06-24','jap','sen','s9','2-2'),(32,'loai','2018-06-25','pol','col','s7','0-3'),(33,'loai','2018-06-25','sau','egy','s8','2-1'),(34,'loai','2018-06-25','uru','rus','s10','3-0'),(35,'loai','2018-06-26','ira','por','s5','1-1'),(36,'loai','2018-06-26','spa','mor','s12','2-2'),(37,'loai','2018-06-26','aus','per','s7','0-2'),(38,'loai','2018-06-26','den','fra','s4','0-0'),(39,'loai','2018-06-27','nig','arg','s7','1-2'),(40,'loai','2018-06-27','ice','cro','s12','1-2'),(41,'loai','2018-06-27','mex','swi','s3','0-3'),(42,'loai','2018-06-27','kor','ger','s5','2-0'),(43,'loai','2018-06-28','swi','cos','s9','2-2'),(44,'loai','2018-06-28','ser','bra','s2','0-2'),(45,'loai','2018-06-28','sen','col','s10','0-1'),(46,'loai','2018-06-28','jap','pol','s6','0-1'),(47,'loai','2018-06-29','eng','bel','s12','0-1'),(48,'loai','2018-06-29','pan','tun','s8','1-2'),(49,'1-8','2018-06-30','uru','por','s11','2-1'),(50,'1-8','2018-06-30','fra','arg','s4','4-3'),(51,'1-8','2018-07-02','bra','mex','s9','2-0'),(52,'1-8','2018-07-03','bel','jap','s7','3-2'),(53,'1-8','2018-07-01','spa','rus','s1','3-4'),(54,'1-8','2018-07-01','cro','den','s6','3-2'),(55,'1-8','2018-07-03','swe','swi','s8','1-0'),(56,'1-8','2018-07-04','col','eng','s5','3-4'),(57,'tu ket','2018-07-06','uru','fra','s6','0-2'),(58,'tu ket','2018-07-07','bra','bel','s4','1-2'),(59,'tu ket','2018-07-08','rus','cro','s11','3-4'),(60,'tu ket','2018-07-07','swe','eng','s9','0-2'),(61,'ban ket','2018-07-11','fra','bel','s8','1-0'),(62,'ban ket','2018-07-12','cro','eng','s1','2-1'),(63,'tranh hang 3','2018-07-14','bel','eng','s8','2-0'),(64,'chung ket','2018-07-15','fra','cro','s1','4-2');
/*!40000 ALTER TABLE `trandau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-15 23:40:56
