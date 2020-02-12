-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: bandara
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Table structure for table `airline`
--

DROP TABLE IF EXISTS `airline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airline` (
  `id_airline` varchar(3) NOT NULL,
  `nama_airline` varchar(20) NOT NULL,
  `asal_negara` varchar(20) NOT NULL,
  `email_cs` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_airline`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airline`
--

LOCK TABLES `airline` WRITE;
/*!40000 ALTER TABLE `airline` DISABLE KEYS */;
INSERT INTO `airline` VALUES ('AK','AirAsia Malaysia','Malaysia',NULL),('AR','ArmaraAirline','Indonesia','customercare@AR.com'),('CP','Stephen Air','Pacific Ocean','customer_care@CP.com'),('EM','Emirates Air','Dubai','customer.emirates@EM.com'),('GA','Garuda Indonesia','Indonesia','customer@garuda-indonesia.com'),('IR','Juanda Air','Indonesia','customer.relations@IR.com'),('JL','Japan Airlines','Jepang',NULL),('JS','Jisoo Airways','Korea','customer.relations@jisoo.com'),('JT','Lion Air','Indonesia',NULL),('LH','Lufthansa','Jerman','customer.relations@lufthansa.com'),('PC','Hoaba New Zealand','New Zealand','customer_care@PC.com'),('QR','Qatar Airways','Qatar',NULL),('QZ','AirAsia Indonesia','Indonesia',NULL),('RA','Padi Airline','Indonesia','customercare@padi.co.id'),('RI','AirAsia India','India',NULL),('RS','Rose Air','Korea',NULL),('SA','Soe Hok Gie Airline','Indonesia','customercare@SA.com'),('SJ','Sriwijaya Air','Indonesia',NULL),('SQ','Singapore Airlines','Singapore',NULL),('TM','GD Airline','Korea','customercare@TM.com');
/*!40000 ALTER TABLE `airline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kedatangan`
--

DROP TABLE IF EXISTS `kedatangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kedatangan` (
  `no_penerbangan` varchar(7) NOT NULL,
  `jenis_penerbangan` varchar(15) DEFAULT NULL,
  `waktu_berangkat` time DEFAULT NULL,
  `bandara_asal_nama` varchar(30) DEFAULT NULL,
  `bandara_asal_kota` varchar(30) DEFAULT NULL,
  `bandara_asal_negara` varchar(30) DEFAULT NULL,
  `bandara_tujuan_nama` varchar(30) DEFAULT NULL,
  `bandara_tujuan_kota` varchar(30) DEFAULT NULL,
  `bandara_tujuan_negara` varchar(30) DEFAULT NULL,
  `waktu_tiba` time DEFAULT NULL,
  `tipe_pesawat` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`no_penerbangan`),
  KEY `tipe_kedatangan` (`tipe_pesawat`),
  CONSTRAINT `tipe_kedatangan` FOREIGN KEY (`tipe_pesawat`) REFERENCES `pesawat` (`tipe_pesawat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kedatangan`
--

LOCK TABLES `kedatangan` WRITE;
/*!40000 ALTER TABLE `kedatangan` DISABLE KEYS */;
INSERT INTO `kedatangan` VALUES ('AR-400','Domestik','11:40:00','Ngurah Rai','Denpasar','Indonesia','Soekarno Hatta','Jakarta','Indonesia','12:42:30','B777 - 300ER - AR'),('CP-269','Internasional','14:20:42','Bikini Bottom','Bikini Bottom','Pacific Ocean','Soekarno Hatta','Jakarta','Indonesia','19:40:00','A340 - 600 - CP'),('GA-867','Internasional','14:10:02','Suvarnabhumi','Bangkok','Thailand','Soekarno Hatta','Jakarta','Indonesia','17:50:40','A319 - GA'),('GA-875','Internasional','11:46:15','Haneda','Tokyo','Jepang','Soekarno Hatta','Jakarta','Indonesia','17:43:13','B747 - 400 - GA'),('IR-810','Domestik','19:00:23','Kuala Namu','Medan','Indonesia','Soekarno Hatta','Jakarta','Indonesia','21:10:01','CRJ - 1000 - IR'),('JL-725','Internasional','10:45:00','Narita','Tokyo','Jepang','Soekarno Hatta','Jakarta','Indonesia','16:50:17','B787 - 10 - JL'),('JL-729','Internasional','17:45:08','Narita','Tokyo','Jepang','Soekarno Hatta','Jakarta','Indonesia','23:53:20','B747 - 8 - JL'),('JS-500','Internasional','17:00:12','Incheon','Seoul','Korea Selatan','Soekarno Hatta','Jakarta','Indonesia','22:30:31','A350 - 900 - JS'),('JT-152','Internasional','06:15:11','Changi','Singapore','Singapore','Soekarno Hatta','Jakarta','Indonesia','09:13:55','B737 MAX 8 - JT'),('PC-750','Internasional','06:55:07','Wellington','Wellington','New Zealand','Soekarno Hatta','Jakarta','Indonesia','17:40:12','A320 - PC'),('QZ-623','Domestik','10:20:21','Juanda','Surabaya','Indonesia','Soekarno Hatta','Jakarta','Indonesia','11:57:30','B777 - 200 - QZ'),('QZ-695','Domestik','08:35:21','Juanda','Surabaya','Indonesia','Soekarno Hatta','Jakarta','Indonesia','10:12:35','B787 - 10 - QZ'),('QZ-813','Domestik','12:05:43','Kuala Namu','Medan','Indonesia','Soekarno Hatta','Jakarta','Indonesia','14:42:24','A319 - QZ'),('RS-220','Internasional','14:00:42','Incheon','Seoul','Korea Selatan','Soekarno Hatta','Jakarta','Indonesia','19:37:03','B787 - 9 - RS'),('SA-815','Domestik','09:00:52','Kuala Namu','Medan','Indonesia','Soekarno Hatta','Jakarta','Indonesia','11:00:41','A340 - 350 - SA');
/*!40000 ALTER TABLE `kedatangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kerja_di`
--

DROP TABLE IF EXISTS `kerja_di`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kerja_di` (
  `id_airline` varchar(2) DEFAULT NULL,
  `id_pegawai` varchar(10) NOT NULL,
  KEY `id_airline_diairline` (`id_airline`),
  CONSTRAINT `id_airline_diairline` FOREIGN KEY (`id_airline`) REFERENCES `airline` (`id_airline`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kerja_di`
--

LOCK TABLES `kerja_di` WRITE;
/*!40000 ALTER TABLE `kerja_di` DISABLE KEYS */;
INSERT INTO `kerja_di` VALUES ('AK','AK01'),('AR','AR01'),('CP','CP01'),('EM','EM01'),('GA','GA01'),('IR','IR01'),('JL','JL01'),('JS','JS01'),('JT','JT01'),('LH','LH01'),('PC','PC01'),('QR','QR01'),('QZ','QZ01'),('RA','RA01'),('RI','RI01'),('RS','RS01'),('SA','SA01'),('SJ','SJ01'),('SQ','SQ01'),('TM','TM01'),('AK','AK02'),('AR','AR02'),('CP','CP02'),('EM','EM02'),('GA','GA02'),('IR','IR02'),('JL','JL02'),('JS','JS02'),('JT','JT02'),('LH','LH02'),('PC','PC02'),('QR','QR02'),('QZ','QZ02'),('RA','RA02'),('RI','RI02'),('RS','RS02'),('SA','SA02'),('SJ','SJ02'),('SQ','SQ02'),('TM','TM02'),('AK','AK03'),('AR','AR03'),('CP','CP03'),('EM','EM03'),('GA','GA03'),('IR','IR03'),('JL','JL03'),('JS','JS03'),('JT','JT03'),('LH','LH03'),('PC','PC03'),('QR','QR03'),('QZ','QZ03'),('RA','RA03'),('RI','RI03'),('RS','RS03'),('SA','SA03'),('SJ','SJ03'),('SQ','SQ03'),('TM','TM03'),('AK','AK04'),('AR','AR04'),('CP','CP04'),('EM','EM04'),('GA','GA04'),('IR','IR04'),('JL','JL04'),('JS','JS04'),('JT','JT04'),('LH','LH04'),('PC','PC04'),('QR','QR04'),('QZ','QZ04'),('RA','RA04'),('RI','RI04'),('RS','RS04'),('SA','SA04'),('SJ','SJ04'),('SQ','SQ04'),('TM','TM04'),('AK','AK05'),('AR','AR05'),('CP','CP05'),('EM','EM05'),('GA','GA05'),('IR','IR05'),('JL','JL05'),('JS','JS05'),('JT','JT05'),('LH','LH05'),('PC','PC05'),('QR','QR05'),('QZ','QZ05'),('RA','RA05'),('RI','RI05'),('RS','RS05'),('SA','SA05'),('SJ','SJ05'),('SQ','SQ05'),('TM','TM05');
/*!40000 ALTER TABLE `kerja_di` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lepas_landas`
--

DROP TABLE IF EXISTS `lepas_landas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lepas_landas` (
  `no_penerbangan` varchar(7) NOT NULL,
  `jenis_penerbangan` varchar(15) DEFAULT NULL,
  `waktu_berangkat` time DEFAULT NULL,
  `bandara_asal_nama` varchar(30) DEFAULT NULL,
  `bandara_asal_kota` varchar(30) DEFAULT NULL,
  `bandara_asal_negara` varchar(30) DEFAULT NULL,
  `bandara_tujuan_nama` varchar(30) DEFAULT NULL,
  `bandara_tujuan_kota` varchar(30) DEFAULT NULL,
  `bandara_tujuan_negara` varchar(30) DEFAULT NULL,
  `estimasi_waktu_tiba` time DEFAULT NULL,
  `tipe_pesawat` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`no_penerbangan`),
  KEY `tipe_lepas_landas` (`tipe_pesawat`),
  CONSTRAINT `tipe_lepas_landas` FOREIGN KEY (`tipe_pesawat`) REFERENCES `pesawat` (`tipe_pesawat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lepas_landas`
--

LOCK TABLES `lepas_landas` WRITE;
/*!40000 ALTER TABLE `lepas_landas` DISABLE KEYS */;
INSERT INTO `lepas_landas` VALUES ('GA-170','Internasional','02:00:00','Soekarno Hatta','Jakarta','Indonesia','Haneda','Tokyo','Jepang','09:05:00','B747 - 400 - GA'),('GA-750','Domestik','09:10:43','Soekarno Hatta','Jakarta','Indonesia','Ngurah Rai','Denpasar','Indonesia','10:20:00','A380 - 800 - GA'),('GA-780','Domestik','19:00:42','Soekarno Hatta','Jakarta','Indonesia','Ngurah Rai','Denpasar','Indonesia','20:00:00','A340 - 600 - GA'),('GA-911','Internasional','03:00:02','Soekarno Hatta','Jakarta','Indonesia','Incheon','Seoul','Korea','20:00:00','A320 - GA'),('IR-150','Domestik','05:10:35','Soekarno Hatta','Jakarta','Indonesia','Juanda','Surabaya','Indonesia','06:40:35','CRJ - 1000 - IR'),('JL-300','Internasional','05:00:00','Soekarno Hatta','Jakarta','Indonesia','Narita','Tokyo','Jepang','09:10:00','B787 - 10 - JL'),('JL-806','Internasional','07:00:00','Soekarno Hatta','Jakarta','Indonesia','Hiroshima','Hiroshima','Jepang','20:40:00','B737 - 800 - JL'),('JL-809','Internasional','07:20:00','Soekarno Hatta','Jakarta','Indonesia','Nagasaki','Nagasaki','Jepang','20:45:00','B737 - 300 - JL'),('JT-250','Domestik','13:00:05','Soekarno Hatta','Jakarta','Indonesia','Juanda','Surabaya','Indonesia','14:30:05','B737 - 800 - JT'),('JT-350','Domestik','14:00:20','Soekarno Hatta','Jakarta','Indonesia','Kuala Namu','Medan','Indonesia','16:15:00','B737 - 300 - JT'),('JT-354','Domestik','15:25:00','Soekarno Hatta','Jakarta','Indonesia','Minangkabau','Padang','Indonesia','17:10:00','A350 - 900 - JT'),('LH-240','Internasional','01:00:00','Soekarno Hatta','Jakarta','Indonesia','Frankfurt','Frankfurt','Jerman','18:00:00','B737 - 300 - LH'),('QR-955','Internasional','07:30:00','Soekarno Hatta','Jakarta','Indonesia','Moscow Donodevo','Moscow','Rusia','23:10:00','B747 - 400 - QR'),('QZ-220','Domestik','09:30:00','Soekarno Hatta','Jakarta','Indonesia','Kuala Namu','Medan','Indonesia','11:40:00','A319 - QZ'),('QZ-252','Internasional','16:35:00','Soekarno Hatta','Jakarta','Indonesia','Don Mueang','Bangkok','Thailand','20:15:00','B777 - 300 - QZ');
/*!40000 ALTER TABLE `lepas_landas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomor_telepon_penumpang`
--

DROP TABLE IF EXISTS `nomor_telepon_penumpang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nomor_telepon_penumpang` (
  `id_penumpang` varchar(50) DEFAULT NULL,
  `nomor_telp` varchar(20) DEFAULT NULL,
  KEY `nomornya_penumpang` (`id_penumpang`),
  CONSTRAINT `nomornya_penumpang` FOREIGN KEY (`id_penumpang`) REFERENCES `penumpang` (`id_penumpang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomor_telepon_penumpang`
--

LOCK TABLES `nomor_telepon_penumpang` WRITE;
/*!40000 ALTER TABLE `nomor_telepon_penumpang` DISABLE KEYS */;
INSERT INTO `nomor_telepon_penumpang` VALUES ('C93','082537495738'),('K67','083465829503'),('A37','082643485739'),('B51','081233234567'),('J91','082685467245'),('H52','089076547568'),('N03','083673793569'),('Z75','083579356789'),('U27','087765433456'),('L62','080098908768'),('D19','087765678945'),('X36','080988734567'),('V13','083456674356'),('G23','082345543456'),('K09','087756456356'),('B34','080989654345'),('H38','089988776543'),('X79','081233455677'),('K61','082323232346'),('D91','088876545678'),('J92','080123235467'),('T73','082345434565'),('P41','082341543456'),('K05','082342543456'),('U81','082343543456'),('T55','082344543456'),('E46','082346543456'),('P39','082347543456'),('J17','0823458543456'),('T88','082345843456'),('A46','082345943456'),('S94','087165433456'),('X41','087265433456'),('P49','087365433456'),('V73','087465433456'),('J90','087565433456'),('X38','087665433456'),('R72','087765433456'),('Z20','087865433456'),('G04','089695433456'),('J54','087965433456'),('D01','087065433456'),('J36','087465433456'),('X86','0873565433456'),('G58','0877325433456'),('X25','087735433456'),('H46','0877674433456'),('M66','087765233456'),('U51','087765733456'),('B45','087765483456'),('W09','0809188734567'),('Y91','0809828734567'),('Y95','0809883734567'),('P70','0809887434567'),('N89','0809887354567'),('H63','0809887346567'),('P00','0809887345767'),('F96','0809887345687'),('F12','080988734587'),('R27','080981734567'),('Y94','080982734567'),('M30','080983734567'),('I64','080984734567'),('F70','080985734567'),('J21','0809886734567'),('G02','080988734567'),('P94','080988834567'),('B30','0809887934567'),('Z98','0809887304567'),('H24','0809884734567'),('E25','0809887834567'),('L06','0835719356789'),('X53','0835792356789'),('G06','0835793356789'),('X07','0835793546789'),('A87','0835793565789'),('S45','0835793567689'),('J34','0835793567879'),('W46','0835793567898'),('K18','0835793567899'),('D16','083570356789'),('C60','083578356789'),('Q46','083576356789'),('C08','083575356789'),('N71','083574356789'),('C82','083573356789'),('I11','083572356789'),('W72','0835712356789'),('C89','083573156789'),('J41','0835793456789'),('B26','0835793256789'),('L66','0811233234567'),('K48','0812233234567'),('R60','0812333234567'),('W48','0812334234567'),('R02','0812332534567'),('Y09','0812332364567'),('K76','0812332347567'),('P53','0812332345867'),('D58','0812332345697');
/*!40000 ALTER TABLE `nomor_telepon_penumpang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai_email`
--

DROP TABLE IF EXISTS `pegawai_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai_email` (
  `id_airline` varchar(2) DEFAULT NULL,
  `email` varchar(26) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai_email`
--

LOCK TABLES `pegawai_email` WRITE;
/*!40000 ALTER TABLE `pegawai_email` DISABLE KEYS */;
INSERT INTO `pegawai_email` VALUES ('EM','01.emirates@EM.com'),('IR','01.realtions@IR.com'),('JL','01.realtions@JL.com'),('JT','01.realtions@JT.com'),('JS','01.relations@jisoo.com'),('LH','01.relations@lutfhansa.com'),('GA','01@garuda-indonesia.com'),('AK','01care@AK.com'),('AR','01care@AR.com'),('RA','01care@padi.co.id'),('SA','01care@SA.com'),('TM','01care@TM.com'),('CP','01_care@CP.com'),('PC','01_care@PC.com'),('QR','01_care@QR.com'),('QZ','01_care@QZ.com'),('RI','01_care@RI.com'),('RS','01_care@RS.com'),('SJ','01_care@SJ.com'),('SQ','01_care@SQ.com'),('EM','02.emirates@EM.com'),('IR','02.realtions@IR.com'),('JL','02.realtions@JL.com'),('JT','02.realtions@JT.com'),('JS','02.relations@jisoo.com'),('LH','02.relations@lutfhansa.com'),('GA','02@garuda-indonesia.com'),('AK','02care@AK.com'),('AR','02care@AR.com'),('RA','02care@padi.co.id'),('SA','02care@SA.com'),('TM','02care@TM.com'),('CP','02_care@CP.com'),('PC','02_care@PC.com'),('QR','02_care@QR.com'),('QZ','02_care@QZ.com'),('RI','02_care@RI.com'),('RS','02_care@RS.com'),('SJ','02_care@SJ.com'),('SQ','02_care@SQ.com'),('EM','03.emirates@EM.com'),('IR','03.realtions@IR.com'),('JL','03.realtions@JL.com'),('JT','03.realtions@JT.com'),('JS','03.relations@jisoo.com'),('LH','03.relations@lutfhansa.com'),('GA','03@garuda-indonesia.com'),('AK','03care@AK.com'),('AR','03care@AR.com'),('RA','03care@padi.co.id'),('SA','03care@SA.com'),('TM','03care@TM.com'),('CP','03_care@CP.com'),('PC','03_care@PC.com'),('QR','03_care@QR.com'),('QZ','03_care@QZ.com'),('RI','03_care@RI.com'),('RS','03_care@RS.com'),('SJ','03_care@SJ.com'),('SQ','03_care@SQ.com'),('EM','04.emirates@EM.com'),('IR','04.realtions@IR.com'),('JL','04.realtions@JL.com'),('JT','04.realtions@JT.com'),('JS','04.relations@jisoo.com'),('LH','04.relations@lutfhansa.com'),('GA','04@garuda-indonesia.com'),('AK','04care@AK.com'),('AR','04care@AR.com'),('RA','04care@padi.co.id'),('SA','04care@SA.com'),('TM','04care@TM.com'),('CP','04_care@CP.com'),('PC','04_care@PC.com'),('QR','04_care@QR.com'),('QZ','04_care@QZ.com'),('RI','04_care@RI.com'),('RS','04_care@RS.com'),('SJ','04_care@SJ.com'),('SQ','04_care@SQ.com'),('EM','05.emirates@EM.com'),('IR','05.realtions@IR.com'),('JL','05.realtions@JL.com'),('JT','05.realtions@JT.com'),('JS','05.relations@jisoo.com'),('LH','05.relations@lutfhansa.com'),('GA','05@garuda-indonesia.com'),('AK','05care@AK.com'),('AR','05care@AR.com'),('RA','05care@padi.co.id'),('SA','05care@SA.com'),('TM','05care@TM.com'),('CP','05_care@CP.com'),('PC','05_care@PC.com'),('QR','05_care@QR.com'),('QZ','05_care@QZ.com'),('RI','05_care@RI.com'),('RS','05_care@RS.com'),('SJ','05_care@SJ.com'),('SQ','05_care@SQ.com');
/*!40000 ALTER TABLE `pegawai_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai_id`
--

DROP TABLE IF EXISTS `pegawai_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai_id` (
  `id_pegawai` varchar(4) NOT NULL,
  `no_telepon` varchar(50) DEFAULT NULL,
  `email` varchar(26) DEFAULT NULL,
  `divisi` varchar(9) DEFAULT NULL,
  `pangkat` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai_id`
--

LOCK TABLES `pegawai_id` WRITE;
/*!40000 ALTER TABLE `pegawai_id` DISABLE KEYS */;
INSERT INTO `pegawai_id` VALUES ('AK01','248-175-5779','01care@AK.com','Services','Staff'),('AK02','393-453-4684','02care@AK.com','Services','Staff'),('AK03','418-309-8554','03care@AK.com','Services','Staff'),('AK04','785-274-4129','04care@AK.com','Services','Staff'),('AK05','245-264-7698','05care@AK.com','Services','Staff'),('AR01','935-264-6250','01care@AR.com','Eksternal','Kepala Divisi'),('AR02','932-843-8544','02care@AR.com','Eksternal','Kepala Divisi'),('AR03','194-905-2905','03care@AR.com','Eksternal','Kepala Divisi'),('AR04','200-604-6065','04care@AR.com','Eksternal','Kepala Divisi'),('AR05','405-199-3859','05care@AR.com','Eksternal','Kepala Divisi'),('CP01','353-464-1301','01_care@CP.com','Operating','Staff'),('CP02','746-157-4374','02_care@CP.com','Operating','Staff'),('CP03','467-204-7541','03_care@CP.com','Operating','Staff'),('CP04','304-650-1512','04_care@CP.com','Operating','Staff'),('CP05','957-761-1376','05_care@CP.com','Operating','Staff'),('EM01','679-563-8109','01.emirates@EM.com','Ticketing','Kepala Divisi'),('EM02','176-589-9534','02.emirates@EM.com','Ticketing','Kepala Divisi'),('EM03','843-483-8644','03.emirates@EM.com','Ticketing','Kepala Divisi'),('EM04','550-712-8960','04.emirates@EM.com','Ticketing','Kepala Divisi'),('EM05','703-360-6701','05.emirates@EM.com','Ticketing','Kepala Divisi'),('GA01','777-197-0416','01@garuda-indonesia.com','Services','Staff'),('GA02','500-816-6953','02@garuda-indonesia.com','Services','Staff'),('GA03','169-855-6931','03@garuda-indonesia.com','Services','Staff'),('GA04','444-999-2137','04@garuda-indonesia.com','Services','Staff'),('GA05','553-931-0966','05@garuda-indonesia.com','Services','Staff'),('IR01','113-596-0103','01.realtions@IR.com','Eksternal','Kepala Divisi'),('IR02','691-621-7023','02.realtions@IR.com','Eksternal','Kepala Divisi'),('IR03','826-960-9959','03.realtions@IR.com','Eksternal','Kepala Divisi'),('IR04','254-760-0323','04.realtions@IR.com','Eksternal','Kepala Divisi'),('IR05','877-892-0142','05.realtions@IR.com','Eksternal','Kepala Divisi'),('JL01','776-555-3153','01.realtions@JL.com','Operating','Staff'),('JL02','320-741-0315','02.realtions@JL.com','Operating','Staff'),('JL03','271-261-0617','03.realtions@JL.com','Operating','Staff'),('JL04','626-505-8906','04.realtions@JL.com','Operating','Staff'),('JL05','521-252-9529','05.realtions@JL.com','Operating','Staff'),('JS01','317-506-2235','01.relations@jisoo.com','Ticketing','Kepala Divisi'),('JS02','928-217-0255','02.relations@jisoo.com','Ticketing','Kepala Divisi'),('JS03','806-579-4558','03.relations@jisoo.com','Ticketing','Kepala Divisi'),('JS04','147-692-9875','04.relations@jisoo.com','Ticketing','Kepala Divisi'),('JS05','606-387-8887','05.relations@jisoo.com','Ticketing','Kepala Divisi'),('JT01','635-939-7179','01.realtions@JT.com','Services','Staff'),('JT02','220-724-2294','02.realtions@JT.com','Services','Staff'),('JT03','776-883-2169','03.realtions@JT.com','Services','Staff'),('JT04','921-417-4013','04.realtions@JT.com','Services','Staff'),('JT05','107-764-5137','05.realtions@JT.com','Services','Staff'),('LH01','493-249-8065','01.relations@lutfhansa.com','Eksternal','Kepala Divisi'),('LH02','678-576-3117','02.relations@lutfhansa.com','Eksternal','Kepala Divisi'),('LH03','606-692-4258','03.relations@lutfhansa.com','Eksternal','Kepala Divisi'),('LH04','413-853-8125','04.relations@lutfhansa.com','Eksternal','Kepala Divisi'),('LH05','975-904-1529','05.relations@lutfhansa.com','Eksternal','Kepala Divisi'),('PC01','910-299-8841','01_care@PC.com','Operating','Staff'),('PC02','352-266-9407','02_care@PC.com','Operating','Staff'),('PC03','510-339-7977','03_care@PC.com','Operating','Staff'),('PC04','982-669-6046','04_care@PC.com','Operating','Staff'),('PC05','543-238-5069','05_care@PC.com','Operating','Staff'),('QR01','843-218-0737','01_care@QR.com','Ticketing','Kepala Divisi'),('QR02','912-834-4604','02_care@QR.com','Ticketing','Kepala Divisi'),('QR03','760-222-5777','03_care@QR.com','Ticketing','Kepala Divisi'),('QR04','986-178-9603','04_care@QR.com','Ticketing','Kepala Divisi'),('QR05','720-874-8459','05_care@QR.com','Ticketing','Kepala Divisi'),('QZ01','848-489-1477','01_care@QZ.com','Services','Staff'),('QZ02','456-789-8148','02_care@QZ.com','Services','Staff'),('QZ03','557-446-4165','03_care@QZ.com','Services','Staff'),('QZ04','323-830-0292','04_care@QZ.com','Services','Staff'),('QZ05','219-461-3931','05_care@QZ.com','Services','Staff'),('RA01','620-549-6708','01care@padi.co.id','Eksternal','Kepala Divisi'),('RA02','138-596-1458','02care@padi.co.id','Eksternal','Kepala Divisi'),('RA03','554-679-1027','03care@padi.co.id','Eksternal','Kepala Divisi'),('RA04','283-884-5392','04care@padi.co.id','Eksternal','Kepala Divisi'),('RA05','408-855-0874','05care@padi.co.id','Eksternal','Kepala Divisi'),('RI01','961-606-0796','01_care@RI.com','Operating','Staff'),('RI02','829-491-6367','02_care@RI.com','Operating','Staff'),('RI03','912-262-6191','03_care@RI.com','Operating','Staff'),('RI04','723-735-4789','04_care@RI.com','Operating','Staff'),('RI05','892-275-0668','05_care@RI.com','Operating','Staff'),('RS01','454-680-1925','01_care@RS.com','Ticketing','Kepala Divisi'),('RS02','224-650-1657','02_care@RS.com','Ticketing','Kepala Divisi'),('RS03','725-541-8156','03_care@RS.com','Ticketing','Kepala Divisi'),('RS04','581-369-8389','04_care@RS.com','Ticketing','Kepala Divisi'),('RS05','327-630-6733','05_care@RS.com','Ticketing','Kepala Divisi'),('SA01','793-664-6853','01care@SA.com','Services','Staff'),('SA02','868-718-5486','02care@SA.com','Services','Staff'),('SA03','542-445-1895','03care@SA.com','Services','Staff'),('SA04','747-967-3285','04care@SA.com','Services','Staff'),('SA05','414-767-7717','05care@SA.com','Services','Staff'),('SJ01','454-797-3950','01_care@SJ.com','Eksternal','Kepala Divisi'),('SJ02','791-240-9515','02_care@SJ.com','Eksternal','Kepala Divisi'),('SJ03','750-792-5883','03_care@SJ.com','Eksternal','Kepala Divisi'),('SJ04','507-353-5068','04_care@SJ.com','Eksternal','Kepala Divisi'),('SJ05','961-123-4808','05_care@SJ.com','Eksternal','Kepala Divisi'),('SQ01','835-669-2676','01_care@SQ.com','Operating','Staff'),('SQ02','115-608-7254','02_care@SQ.com','Operating','Staff'),('SQ03','809-714-6534','03_care@SQ.com','Operating','Staff'),('SQ04','896-645-0296','04_care@SQ.com','Operating','Staff'),('SQ05','638-152-4251','05_care@SQ.com','Operating','Staff'),('TM01','609-209-7866','01care@TM.com','Ticketing','Kepala Divisi'),('TM02','913-918-3526','02care@TM.com','Ticketing','Kepala Divisi'),('TM03','520-953-8218','03care@TM.com','Ticketing','Kepala Divisi'),('TM04','213-695-2511','04care@TM.com','Ticketing','Kepala Divisi'),('TM05','874-462-8452','05care@TM.com','Ticketing','Kepala Divisi');
/*!40000 ALTER TABLE `pegawai_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai_telepon`
--

DROP TABLE IF EXISTS `pegawai_telepon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai_telepon` (
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_telepon` varchar(50) NOT NULL,
  PRIMARY KEY (`no_telepon`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai_telepon`
--

LOCK TABLES `pegawai_telepon` WRITE;
/*!40000 ALTER TABLE `pegawai_telepon` DISABLE KEYS */;
INSERT INTO `pegawai_telepon` VALUES ('Reggis Cowp','2 Hagan Drive','107-764-5137'),('Fayette Joice','7 Hauk Court','113-596-0103'),('Amata Ironmonger','3 Village Pass','115-608-7254'),('Viola Ellery','8 Roxbury Avenue','138-596-1458'),('Sharline Manuello','96784 Farwell Pass','147-692-9875'),('Renie Hanratty','575 Reinke Way','169-855-6931'),('Herminia MacAindreis','551 Kenwood Drive','176-589-9534'),('Claribel Childe','6713 David Pass','194-905-2905'),('Titus Phillp','954 Heath Trail','200-604-6065'),('Umeko Slidders','0879 Golf Terrace','213-695-2511'),('Cully Antunes','6005 Randy Lane','219-461-3931'),('Rickey Pidwell','4561 Maple Wood Court','220-724-2294'),('Cecilia Merle','64 Bowman Street','224-650-1657'),('Tiphany McCrow','4155 Oriole Way','245-264-7698'),('Goddard Whetson','14062 Sage Center','248-175-5779'),('Edik Gilson','1 Truax Park','254-760-0323'),('Bartolemo Sausman','25 Havey Parkway','271-261-0617'),('Kylynn Lancley','4 Sugar Place','283-884-5392'),('Weston Yakob','0888 Amoth Street','304-650-1512'),('Martie Parramore','030 Cherokee Place','317-506-2235'),('Jocelyne Dobbson','162 Lighthouse Bay Hill','320-741-0315'),('Graehme Gibbieson','166 Transport Trail','323-830-0292'),('Pablo Kubas','350 Pennsylvania Drive','327-630-6733'),('Tamiko Bellie','663 Parkside Trail','352-266-9407'),('Vin Yaneev','3 Columbus Way','353-464-1301'),('Sadie Lynam','41725 Pond Point','393-453-4684'),('Tades Rock','3 Golf Park','405-199-3859'),('Katherine Beckensall','2 Corry Street','408-855-0874'),('Elsinore Giamelli','373 Russell Place','413-853-8125'),('Ryley Kirsop','0 Onsgard Pass','414-767-7717'),('Lilith Nelius','14 Towne Park','418-309-8554'),('Shepperd MacCracken','53 Schlimgen Alley','444-999-2137'),('Glennie Pirolini','80 Dapin Drive','454-680-1925'),('Gayla Soppitt','119 Rusk Junction','454-797-3950'),('Nancey Swindin','88036 Superior Parkway','456-789-8148'),('Tawnya Aloway','5565 Vidon Lane','467-204-7541'),('Gavra Sagerson','3735 Ridgeview Circle','493-249-8065'),('Dulcy Leif','37408 Springview Drive','500-816-6953'),('Neala Anderer','69799 Loeprich Way','507-353-5068'),('Paola Bolmann','76 Mayer Crossing','510-339-7977'),('Ambrosi Michelotti','7 Southridge Crossing','520-953-8218'),('Yardley Saill','7 Nevada Center','521-252-9529'),('Ruthann Ervin','78 Anderson Drive','542-445-1895'),('Beatriz Mabbutt','5 Merry Junction','543-238-5069'),('Allix Guiet','0 Pennsylvania Plaza','550-712-8960'),('Bird Barnfather','883 Pawling Terrace','553-931-0966'),('Weber Leddie','664 Jackson Center','554-679-1027'),('Julia Redshaw','31435 Northview Court','557-446-4165'),('Rivi Blades','44625 Twin Pines Pass','581-369-8389'),('Theodor Semper','4 Park Meadow Parkway','606-387-8887'),('Natal Malyj','10 Morning Junction','606-692-4258'),('Ada Thresher','861 Norway Maple Road','609-209-7866'),('Hamlen Armytage','9 Valley Edge Junction','620-549-6708'),('Hedy Muffin','42 Moose Junction','626-505-8906'),('Geordie Macari','60567 Carioca Hill','635-939-7179'),('Estevan Beade','399 Prentice Junction','638-152-4251'),('Paxon Soppitt','492 Tomscot Place','678-576-3117'),('Hope Huddleston','8162 Dwight Point','679-563-8109'),('Gilbert Colchett','40467 Park Meadow Lane','691-621-7023'),('Jean Crassweller','20334 Montana Road','703-360-6701'),('Millicent Baversor','788 Northridge Avenue','720-874-8459'),('Angelika Roddam','30 Anzinger Street','723-735-4789'),('Justen Danielsson','20021 Independence Plaza','725-541-8156'),('Felix Pulver','9692 Transport Avenue','746-157-4374'),('Marcos Roose','577 Sundown Pass','747-967-3285'),('Ann Curnnokk','0799 Westerfield Junction','750-792-5883'),('Katalin Tinto','3 Holmberg Circle','760-222-5777'),('Otho Meekings','901 Eagan Place','776-555-3153'),('Dillon Gaven','6061 Kingsford Lane','776-883-2169'),('Leshia Stitcher','1293 Russell Center','777-197-0416'),('Claus Gaiter','2 Dunning Point','785-274-4129'),('King Digweed','74 Blackbird Plaza','791-240-9515'),('Jan Marciskewski','1103 Donald Circle','793-664-6853'),('Micky Emett','719 Briar Crest Trail','806-579-4558'),('Panchito Dodson','7 Randy Way','809-714-6534'),('Gertie Renwick','1834 Blaine Court','826-960-9959'),('Arlana Gouldeby','3 Oakridge Court','829-491-6367'),('Eve Gooders','98 Forest Run Court','835-669-2676'),('Amity Brinkworth','391 Brickson Park Park','843-218-0737'),('Vergil Measom','447 Hayes Terrace','843-483-8644'),('Mitchel Rabbage','18 Clarendon Court','848-489-1477'),('Ethel Bilverstone','62 Dawn Alley','868-718-5486'),('Yuma Douglass','9174 Maryland Terrace','874-462-8452'),('Eldon Cuxson','28 Blackbird Drive','877-892-0142'),('Bone McOmish','40 Northview Court','892-275-0668'),('Torrey Cranmore','99 Weeping Birch Park','896-645-0296'),('Ernest Philipsson','9 Dixon Avenue','910-299-8841'),('Toddy Tedman','546 Nobel Center','912-262-6191'),('Afton Dundendale','9 Lawn Pass','912-834-4604'),('Rene Sinclair','14960 Northfield Terrace','913-918-3526'),('Nerty Banat','5191 Ridge Oak Place','921-417-4013'),('Paulette Oxborough','45712 Novick Drive','928-217-0255'),('Rubie Gabites','4077 Judy Center','932-843-8544'),('Devlin Bloxsum','28 Cambridge Lane','935-264-6250'),('Isidro Creaney','31 Village Green Park','957-761-1376'),('Ellen Kilbey','97771 Brickson Park Lane','961-123-4808'),('Tabby Flowerden','3 Columbus Drive','961-606-0796'),('Flory Dunnan','7 Stephen Lane','975-904-1529'),('Derrick Karlolak','5123 Jana Circle','982-669-6046'),('Anette Toulmin','00616 Canary Place','986-178-9603');
/*!40000 ALTER TABLE `pegawai_telepon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penumpang`
--

DROP TABLE IF EXISTS `penumpang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penumpang` (
  `id_penumpang` varchar(50) NOT NULL,
  `nomor_passport` varchar(50) DEFAULT NULL,
  `email_penumpang` varchar(50) DEFAULT NULL,
  `asal_negara` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_penumpang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penumpang`
--

LOCK TABLES `penumpang` WRITE;
/*!40000 ALTER TABLE `penumpang` DISABLE KEYS */;
INSERT INTO `penumpang` VALUES ('A37','44088','oflynn2@imgur.com','Pakistan'),('A46','60218','gmaccaffreyu@vistaprint.com','China'),('A87','97340','cberndtssen23@booking.com','Bulgaria'),('B26',NULL,'wthomassen2i@google.ca','Taiwan'),('B30','30324','rorgel1v@nifty.com','China'),('B34','45753','lelgarf@creativecommons.org','Philippines'),('B45','01969','dbangs1d@biblegateway.com','Mauritius'),('B51','17095','whowes3@youtube.com','Norway'),('C08','51756','espeek2b@t-online.de','Portugal'),('C60',NULL,'megger29@themeforest.net','Serbia'),('C82','62436','mburnhams2d@google.co.uk','United States'),('C89','94374','mboom2g@google.fr','Brazil'),('C93',NULL,'jnucci0@sbwire.com','Russia'),('D01','44456','jdegoey15@miibeian.gov.cn','Vietnam'),('D16',NULL,'lrosenstock28@eventbrite.com','Czech Republic'),('D19',NULL,'mdahmela@live.com','United States'),('D58','07019','cmenichini2r@desdev.cn','Poland'),('D91','05189','wkelledyj@homestead.com','Greece'),('E25',NULL,'kerrol1y@alexa.com','Russia'),('E46','96774','tfoxwellq@amazon.de','Pakistan'),('F12','93983','dguess1m@smh.com.au','Indonesia'),('F70',NULL,'ddestoop1r@google.com.hk','Ireland'),('F96','74729','bghirardi1l@ed.gov','Nicaragua'),('G02',NULL,'mvanderson1t@blogtalkradio.com','Panama'),('G04','89534','echapleo13@parallels.com','Colombia'),('G06','23430','gkillner21@google.com.au','Sweden'),('G23',NULL,'bzanottid@japanpost.jp','Indonesia'),('G58','62614','jyouhill18@nasa.gov','Japan'),('H24','54136','asummerson1x@home.pl','Indonesia'),('H38','75880','ssmittong@instagram.com','United States'),('H46','65698','htremontana1a@tinyurl.com','Sweden'),('H52','39773','sdressell5@addthis.com','Brazil'),('H63','20397','lcostley1j@nature.com','Indonesia'),('I11','97081','jlessmare2e@gov.uk','Croatia'),('I64','43508','cgleeton1q@smugmug.com','Sri Lanka'),('J17','25998','cbuckles@gizmodo.com','Brazil'),('J21','15799','hkivits1s@techcrunch.com','Latvia'),('J34','08116','ldowrey25@miibeian.gov.cn','France'),('J36','23604','lkyteley16@quantcast.com','Czech Republic'),('J41',NULL,'beversley2h@icio.us','Philippines'),('J54','01218','yfuente14@statcounter.com','France'),('J90',NULL,'nmcpakez@wikipedia.org','France'),('J91',NULL,'cgladden4@yellowbook.com','Czech Republic'),('J92','81466','arubbensk@foxnews.com','Vietnam'),('K05','02949','mallsworthn@adobe.com','Vietnam'),('K09','37416','otapendene@vkontakte.ru','Venezuela'),('K18','82153','ykettles27@goo.gl','Luxembourg'),('K48','43399','lyerrington2k@symantec.com','Greece'),('K61','86425','gtorrii@hp.com','Afghanistan'),('K67','03849','agittins1@mediafire.com','France'),('K76',NULL,'jmenis2p@zimbio.com','Brazil'),('L06',NULL,'ljanca1z@wikia.com','Iran'),('L62','88899','alegallo9@narod.ru','China'),('L66','55008','ppannaman2j@tinyurl.com','Honduras'),('M30','30013','nmunsey1p@desdev.cn','Indonesia'),('M66',NULL,'igascoine1b@topsy.com','China'),('N03',NULL,'mvigurs6@deliciousdays.com','China'),('N71','24505','cduns2c@lycos.com','China'),('N89','37497','kmattusov1i@eventbrite.com','Indonesia'),('P00','09300','hhebblethwaite1k@ihg.com','United States'),('P39',NULL,'mscandwrightr@theguardian.com','Burkina Faso'),('P41','60840','gaffleckm@trellian.com','China'),('P49',NULL,'mfilshinx@flickr.com','Philippines'),('P53','69701','alambshine2q@mediafire.com','Indonesia'),('P70','48124','awillimott1h@marketwatch.com','Cameroon'),('P94',NULL,'rdeverale1u@china.com.cn','Argentina'),('Q46','55035','ahotchkin2a@zimbio.com','Republic of the Congo'),('R02',NULL,'cpratley2n@soundcloud.com','Philippines'),('R27',NULL,'rhryniewicz1n@fastcompany.com','China'),('R60','29633','eduferie2l@usgs.gov','Macedonia'),('R72','03720','ggonzalvo11@cafepress.com','France'),('S45','01244','rbranston24@ca.gov','Philippines'),('S94',NULL,'jmimmackv@meetup.com','Jamaica'),('T55','93721','ssmyliep@nydailynews.com','Denmark'),('T73','72238','kmassiel@ocn.ne.jp','Malaysia'),('T88',NULL,'ldufaurt@cdbaby.com','Peru'),('U27','70046','gtidmarsh8@goo.gl','China'),('U51','93625','acossor1c@comcast.net','Japan'),('U81',NULL,'fallseppo@51.la','Greece'),('V13',NULL,'eboadbyc@woothemes.com','Moldova'),('V73','67382','ljanuszewiczy@webnode.com','Finland'),('W09','20242','lwoolard1e@is.gd','Sweden'),('W46',NULL,'aspacey26@vkontakte.ru','China'),('W48','96967','ccino2m@posterous.com','France'),('W72','53934','dpollak2f@discuz.net','Russia'),('X07','69426','aanderl22@squidoo.com','Mongolia'),('X25','74296','ecorrett19@apple.com','Philippines'),('X36','31568','ghucknallb@geocities.jp','Mexico'),('X38','89550','bdan10@hubpages.com','United States'),('X41','47076','oarchellw@nationalgeographic.com','United States'),('X53','91989','mheiss20@army.mil','Indonesia'),('X79','11081','thillburnh@istockphoto.com','Dominican Republic'),('X86','42180','lmarns17@prweb.com','Fiji'),('Y09','62362','dmcdaid2o@slate.com','China'),('Y91','08375','hvanderveldt1f@fotki.com','Philippines'),('Y94','32014','kibbett1o@nationalgeographic.com','Poland'),('Y95',NULL,'njordanson1g@wired.com','Sweden'),('Z20','18929','pjeffery12@cisco.com','Ukraine'),('Z75','27795','jmcguinness7@cyberchimps.com','Venezuela'),('Z98','47103','gmiddleton1w@bravesites.com','Indonesia');
/*!40000 ALTER TABLE `penumpang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesawat`
--

DROP TABLE IF EXISTS `pesawat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesawat` (
  `tipe_pesawat` varchar(35) NOT NULL,
  `jmlkursi_ekonomi` int(11) DEFAULT NULL,
  `jmlkursi_bisnis` int(11) DEFAULT NULL,
  `jmlkursi_eksekutif` int(11) DEFAULT NULL,
  `jmlkursi_kelaspertama` int(11) DEFAULT NULL,
  `id_airline` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`tipe_pesawat`),
  KEY `tipe_id_pesawat` (`id_airline`),
  CONSTRAINT `tipe_id_pesawat` FOREIGN KEY (`id_airline`) REFERENCES `airline` (`id_airline`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesawat`
--

LOCK TABLES `pesawat` WRITE;
/*!40000 ALTER TABLE `pesawat` DISABLE KEYS */;
INSERT INTO `pesawat` VALUES ('A319 - GA',90,32,0,0,'GA'),('A319 - QZ',100,25,0,0,'QZ'),('A320 - GA',200,0,0,0,'GA'),('A320 - PC',180,0,0,0,'PC'),('A330 - 300 - RI',440,0,0,0,'RI'),('A340 - 300 - SA',261,19,0,0,'SA'),('A340 - 350 - SA',261,20,0,0,'SA'),('A340 - 600 - CP',213,32,44,8,'CP'),('A340 - 600 - GA',250,20,30,0,'GA'),('A350 - 1000 - SJ',281,46,0,0,'SJ'),('A350 - 900 - JS',187,24,42,0,'JS'),('A350 - 900 - JT',180,23,12,0,'JT'),('A380 - 800 - AK',333,38,60,12,'AK'),('A380 - 800 - GA',300,45,30,10,'GA'),('ATR72 - 600 - RA',70,0,0,0,'RA'),('B737 - 300 - JL',150,0,0,0,'JL'),('B737 - 300 - JT',170,0,0,0,'JT'),('B737 - 300 - LH',150,0,0,0,'LH'),('B737 - 800 - EM',150,0,12,0,'EM'),('B737 - 800 - JL',150,20,12,0,'JL'),('B737 - 800 - JT',160,0,0,0,'JT'),('B737 MAX 8 - JT',162,8,0,0,'JT'),('B747 - 400 - GA',273,10,6,0,'GA'),('B747 - 400 - QR',272,32,0,0,'QR'),('B747 - 8 - JL',276,85,0,0,'JL'),('B747 - 8 - TM',276,80,0,8,'TM'),('B777 - 200 - QZ',245,26,0,0,'QZ'),('B777 - 300 - QZ',240,23,0,0,'QZ'),('B777 - 300 - SQ',239,24,0,0,'SQ'),('B777 - 300ER - AR',268,0,42,8,'AR'),('B787 - 10 - JL',301,36,0,0,'JL'),('B787 - 10 - QZ',299,30,5,0,'QZ'),('B787 - 9 - RS',201,44,0,0,'RS'),('CRJ - 1000 - IR',84,0,12,0,'IR');
/*!40000 ALTER TABLE `pesawat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terlibat`
--

DROP TABLE IF EXISTS `terlibat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terlibat` (
  `no_penerbangan` varchar(30) NOT NULL,
  `id_pegawai` varchar(10) NOT NULL,
  `id_penumpang` varchar(10) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`no_penerbangan`,`id_pegawai`,`id_penumpang`),
  KEY `terbang_pegawai` (`id_pegawai`),
  CONSTRAINT `terbang_pegawai` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai_id` (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terlibat`
--

LOCK TABLES `terlibat` WRITE;
/*!40000 ALTER TABLE `terlibat` DISABLE KEYS */;
INSERT INTO `terlibat` VALUES ('AR-400','AR01','B26',9),('AR-400','AR02','C60',10),('CP-269','CP01','A37',6),('CP-269','CP02','A46',8),('CP-269','CP03','A87',4),('CP-269','CP04','B30',7),('GA-170','GA01','K61',9),('GA-170','GA02','K67',7),('GA-170','GA03','L62',5),('GA-170','GA04','L66',3),('GA-750','GA01','L06',3),('GA-750','GA05','K76',8),('GA-780','GA02','M66',9),('GA-780','GA03','N03',5),('GA-867','GA01','B34',9),('GA-867','GA02','B45',7),('GA-867','GA03','B51',8),('GA-867','GA04','C08',9),('GA-875','GA01','C89',8),('GA-875','GA02','B01',9),('GA-875','GA03','D58',8),('GA-875','GA05','C82',7),('GA-911','GA01','N89',9),('GA-911','GA02','P00',4),('GA-911','GA04','M30',8),('GA-911','GA05','N71',1),('IR-150','IR01','P39',7),('IR-150','IR02','P49',8),('IR-810','IR01','C93',10),('IR-810','IR02','D16',6),('JL-300','JL01','P41',7),('JL-300','JL02','P53',6),('JL-300','JL03','P70',7),('JL-300','JL04','Q46',6),('JL-725','JL01','D91',5),('JL-725','JL02','E46',8),('JL-725','JL03','F12',7),('JL-725','JL04','F96',8),('JL-729','JL01','G06',8),('JL-729','JL02','G58',9),('JL-729','JL03','H24',6),('JL-729','JL05','G04',6),('JL-806','JL01','R72',7),('JL-806','JL02','S45',7),('JL-806','JL03','T55',5),('JL-806','JL05','R60',7),('JL-809','JL01','U51',7),('JL-809','JL02','V73',3),('JL-809','JL04','T73',8),('JL-809','JL05','U27',9),('JS-500','JS01','H38',8),('JS-500','JS02','H46',6),('JS-500','JS03','H52',9),('JS-500','JS04','H63',5),('JT-152','JT01','I11',7),('JT-152','JT02','I64',10),('JT-152','JT03','J17',9),('JT-152','JT04','J21',7),('JT-250','JT01','P94',7),('JT-250','JT02','R02',7),('JT-350','JT03','R27',3),('JT-350','JT04','S94',9),('JT-354','JT01','U81',8),('JT-354','JT05','T88',5),('LH-240','LH01','W09',1),('LH-240','LH01','X36',7),('LH-240','LH02','W48',9),('LH-240','LH03','W72',4),('LH-240','LH04','X07',7),('LH-240','LH05','X25',8),('PC-750','PC01','J34',8),('PC-750','PC02','J36',7),('PC-750','PC03','J54',7),('PC-750','PC04','J92',7),('QR-955','QR01','X38',3),('QR-955','QR01','Y09',9),('QR-955','QR02','X41',9),('QR-955','QR03','X53',5),('QR-955','QR04','X79',8),('QR-955','QR05','X86',1),('QZ-220','QZ01','V13',4),('QZ-220','QZ02','W46',1),('QZ-220','QZ03','Y95',9),('QZ-252','QZ01','Z20',9),('QZ-252','QZ02','Z75',4),('QZ-252','QZ03','Z84',3),('QZ-252','QZ04','Y91',4),('QZ-252','QZ05','Y94',1),('QZ-623','QZ01','D19',8),('QZ-623','QZ02','E25',5),('QZ-695','QZ03','F70',9),('QZ-695','QZ04','G02',6),('QZ-813','QZ01','J41',9),('QZ-813','QZ05','G23',7),('RS-220','RS01','K05',10),('RS-220','RS02','K09',10),('RS-220','RS03','K18',8),('RS-220','RS04','K48',6),('SA-815','SA01','J90',8),('SA-815','SA02','J91',7);
/*!40000 ALTER TABLE `terlibat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiket_pesawat`
--

DROP TABLE IF EXISTS `tiket_pesawat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiket_pesawat` (
  `id_penumpang` varchar(10) NOT NULL,
  `no_penerbangan` varchar(30) NOT NULL,
  `no_kursi` varchar(5) DEFAULT NULL,
  `kelas_kursi` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_penumpang`,`no_penerbangan`),
  CONSTRAINT `tiket_penumpang` FOREIGN KEY (`id_penumpang`) REFERENCES `penumpang` (`id_penumpang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiket_pesawat`
--

LOCK TABLES `tiket_pesawat` WRITE;
/*!40000 ALTER TABLE `tiket_pesawat` DISABLE KEYS */;
INSERT INTO `tiket_pesawat` VALUES ('A37','CP-269','01C','Ekonomi'),('A46','CP-269','01D','Ekonomi'),('A87','CP-269','02A','Ekonomi'),('B26','AR-400','01A','Ekonomi'),('B30','CP-269','02B','Ekonomi'),('B34','GA-867','02C','Ekonomi'),('B45','GA-867','02D','Ekonomi'),('B51','GA-867','03A','Ekonomi'),('C08','GA-867','03B','Ekonomi'),('C60','AR-400','01B','Ekonomi'),('C82','GA-875','03C','Ekonomi'),('C89','GA-875','03D','Ekonomi'),('C93','IR-810','04C','Ekonomi'),('D01','GA-875','04A','Ekonomi'),('D16','IR-810','04D','Ekonomi'),('D19','QZ-623','05A','Ekonomi'),('D58','GA-875','04B','Ekonomi'),('D91','JL-725','05A','Ekonomi'),('E25','QZ-623','05B','Ekonomi'),('E46','JL-725','05B','Ekonomi'),('F12','JL-725','05C','Ekonomi'),('F70','QZ-695','05C','Ekonomi'),('F96','JL-725','05D','Ekonomi'),('G02','QZ-695','05D','Ekonomi'),('G04','JL-729','01A','Ekonomi'),('G06','JL-729','01B','Ekonomi'),('G23','QZ-813','01A','Ekonomi'),('G58','JL-729','01C','Ekonomi'),('H24','JL-729','01D','Ekonomi'),('H38','JS-500','02A','Ekonomi'),('H46','JS-500','02B','Ekonomi'),('H52','JS-500','02C','Ekonomi'),('H63','JS-500','02D','Ekonomi'),('I11','JT-152','03A','Ekonomi'),('I64','JT-152','03B','Ekonomi'),('J17','JT-152','03C','Ekonomi'),('J21','JT-152','03D','Ekonomi'),('J34','PC-750','04A','Ekonomi'),('J36','PC-750','04B','Ekonomi'),('J41','QZ-813','01B','Ekonomi'),('J54','PC-750','04C','Ekonomi'),('J90','SA-815','02C','Ekonomi'),('J91','SA-815','02D','Ekonomi'),('J92','PC-750','04D','Ekonomi'),('K05','RS-220','01C','Ekonomi'),('K09','RS-220','01D','Ekonomi'),('K18','RS-220','02A','Ekonomi'),('K48','RS-220','02B','Ekonomi'),('K61','GA-170','03A','Ekonomi'),('K67','GA-170','03B','Ekonomi'),('K76','GA-750','04A','Ekonomi'),('L06','GA-750','04B','Ekonomi'),('L62','GA-170','03C','Ekonomi'),('L66','GA-170','03D','Ekonomi'),('M30','GA-911','05A','Ekonomi'),('M66','GA-780','04C','Ekonomi'),('N03','GA-780','04D','Ekonomi'),('N71','GA-911','05B','Ekonomi'),('N89','GA-911','05C','Ekonomi'),('P00','GA-911','05D','Ekonomi'),('P39','IR-150','01A','Ekonomi'),('P41','JL-300','01C','Ekonomi'),('P49','IR-150','01B','Ekonomi'),('P53','JL-300','01D','Ekonomi'),('P70','JL-300','02A','Ekonomi'),('P94','JT-250','04C','Ekonomi'),('Q46','JL-300','02B','Ekonomi'),('R02','JT-250','04D','Ekonomi'),('R27','JT-350','05A','Ekonomi'),('R60','JL-806','02C','Ekonomi'),('R72','JL-806','02D','Ekonomi'),('S45','JL-806','03A','Ekonomi'),('S94','JT-350','05B','Ekonomi'),('T55','JL-806','03B','Ekonomi'),('T73','JL-809','03C','Ekonomi'),('T88','JT-354','05C','Ekonomi'),('U27','JL-809','03D','Ekonomi'),('U51','JL-809','04A','Ekonomi'),('U81','JT-354','05D','Ekonomi'),('V13','QZ-220','04A','Ekonomi'),('V73','JL-809','04B','Ekonomi'),('W09','LH-240','01A','Ekonomi'),('W46','QZ-220','04B','Ekonomi'),('W48','LH-240','01B','Ekonomi'),('W72','LH-240','01C','Ekonomi'),('X07','LH-240','01D','Ekonomi'),('X25','LH-240','02A','Ekonomi'),('X36','LH-240','02B','Ekonomi'),('X38','QR-955','02C','Ekonomi'),('X41','QR-955','02D','Ekonomi'),('X53','QR-955','03A','Ekonomi'),('X79','QR-955','03B','Ekonomi'),('X86','QR-955','03C','Ekonomi'),('Y09','QR-955','03D','Ekonomi'),('Y91','QZ-252','04D','Ekonomi'),('Y94','QZ-252','05A','Ekonomi'),('Y95','QZ-220','04C','Ekonomi'),('Z20','QZ-252','05B','Ekonomi'),('Z75','QZ-252','05C','Ekonomi'),('Z98','QZ-252','05D','Ekonomi');
/*!40000 ALTER TABLE `tiket_pesawat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-08 21:20:41
