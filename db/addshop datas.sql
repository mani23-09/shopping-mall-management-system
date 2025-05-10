-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: addshop
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
-- Table structure for table `adshopd`
--

DROP TABLE IF EXISTS `adshopd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adshopd` (
  `ID` varchar(25) NOT NULL,
  `fno` int NOT NULL,
  `sname` varchar(45) NOT NULL,
  `rpm` float NOT NULL,
  `sss` varchar(45) NOT NULL,
  `bamo` float NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `sname_UNIQUE` (`sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adshopd`
--

LOCK TABLES `adshopd` WRITE;
/*!40000 ALTER TABLE `adshopd` DISABLE KEYS */;
INSERT INTO `adshopd` VALUES ('a',1,'karikada',4000,'occupaid',50000),('a01',7,'raja fish',23000,'occupaid',2300),('a02',1,'balzprints',10000,'occupaid',10000),('a04',1,'rajfurnitures',15000,'occupaid',2000),('a05',2,'itachi ninjas',12000,'occupaid',1000),('a06',1,'kingbazar',20000,'occupaid',2000),('a07',2,'maniroyals',22000,'occupaid',22000),('a08',2,'selvi_jewellery',15000,'occupaid',1000),('a09',2,'manicooldrinks',15000,'not-occupaid',1500),('a10',3,'madhantech',10000,'occupaid',1000),('a11',3,'poorvika mobiles',15000,'occupaid',1500),('a12',1,'madhancorriers',10000,'occupaid',1000),('a13',3,'rajcinimas',30000,'not-occupaid',3000),('a14',3,'royaks',30000,'not-occupaid',3000),('a15',4,'vikishowroom',25000,'not-occupaid',2000),('a16',4,'lamdatech',20000,'occupaid',3000),('a17',5,'tech1',30000,'occupaid',4000),('a18',6,'sabaribakkery',20000,'not-occupaid',20000),('a19',6,'sandymusic',30000,'occupaid',30000),('a20',7,'prabhusticks',12000,'occupaid',12000),('a21',7,'manitoys',12000,'occupaid',1000),('a22',5,'devahotal',52000,'occupaid',4000),('a23',8,'keasavanfruits',25000,'occupaid',25000),('a24',6,'solaidrinks',10000,'occupaid',10000),('a25',8,'singlepasanga',23000,'occupaid',1200),('a26',8,'balztoyz',25000,'occupaid',2000),('a27',6,'mahabooks',15000,'occupaid',1000),('a30',7,'anthoshop',15000,'occupaid',1000),('a39',7,'sivacools',30000,'occupaid',500),('a56',5,'sand gaffin',25000,'occupaid',3000),('a78',9,'kingtoys',23000,'occupaid',3000);
/*!40000 ALTER TABLE `adshopd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `id` varchar(45) NOT NULL,
  `ena` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gen` varchar(45) DEFAULT NULL,
  `edu` varchar(45) DEFAULT NULL,
  `qua` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `pno` varchar(45) DEFAULT NULL,
  `post` varchar(45) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `jodate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pno_UNIQUE` (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES ('ep01','alagesh','1990-06-11','male','ug','bsc','35,aiyanar street vnr','90 897 67 567','clerk',12000,'2023-01-08'),('ep02','mari.u','1995-09-26','male','ug','ba','23,ap paiyan street','23 456 09 100','clerk',15000,'2023-05-16'),('ep03','manibalz.c','2005-01-27','male','ug','deplamo','aiya street madhurai','34 345 10 201','clerk',15000,'2020-09-09'),('ep04','anthony','2000-07-12','male','pg','ba','aiyanar street madhurai','12 333 09 120','clerk',12000,'2023-03-02'),('ep05','selvi.c','2003-06-04','male','pg','mca','32,appanstreet gangai','23 456 35 323','servers',12000,'2022-12-14'),('ep06','sankar.c','2003-06-04','male','ug','bca','32,appanet gaangai','43 416 30 313','manager',35000,'2023-03-15'),('ep07','rani','1997-10-03','female','pg','MA','appaiya street vnr','78 890 98 123','manager',35000,'2019-08-08'),('ep08','deepan','2000-12-12','male','pg','ma','appaiya nnager madhurai','67 789 09 876','clerk',13000,'2020-09-09'),('ep10','balaji.c','2001-12-01','male','pg','ma','sopanpajar nager vnr','64 567 98 124','clerk',20000,'2021-09-25'),('ep11','arun','2000-03-03','male','pg','msc','R.s Nager','90 876 12 345','security',10000,'2022-09-09'),('ep12','bala','1998-04-04','male','ug','ba','allambatti','89 876 765 45','clerk',14000,'2022-09-09'),('ep13','murugan','1999-09-09','male','pg','msc','pandi_nager ,vnr','90 900 12 098','manager',15000,'2020-08-07'),('ep14','bhagath','1999-07-07','male','ug','bsc','allamabatii','89 789 90 678','security',10000,'2019-09-09'),('ep15','singh','1997-09-09','male','ug','ba','aiya street madhurai','90 890 12 345','clerk',19000,'2020-01-01'),('ep16','bhuvi','1997-02-02','male','ug','bsc','pandinager','09 876 54 321','clerk',17000,'2021-09-09'),('ep17','gopal','1998-08-08','male','ug','ba','indra_nager','90 890 23 345','clerk',19000,'2022-09-08'),('ep18','karthi','1997-07-07','male','pg','msc','pandi_panagrr,madhurai','90 879 12 445','manager',45000,'2020-01-01'),('ep19','kavin','1999-09-09','male','ug','bsc','koduvvalapatti','23 456 90 123','security',10000,'2021-02-02'),('ep20','sabari','2000-02-02','male','ug','ba','aathumadu','98 182 91 123','clerk',16000,'2020-03-03'),('ep21','sabariganesan','2004-05-11','male','ug','bca','allambatti','90 870 12 345','manager',50000,'2023-06-18'),('ep89','k.joe','2014-07-23','male','pg','msc','35,aiya st,mdu','89 900 89 988','manager',29000,'2035-10-23');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empatt`
--

DROP TABLE IF EXISTS `empatt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empatt` (
  `id` varchar(45) NOT NULL,
  `date1` varchar(45) NOT NULL,
  `msts` varchar(45) NOT NULL,
  `ests` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empatt`
--

LOCK TABLES `empatt` WRITE;
/*!40000 ALTER TABLE `empatt` DISABLE KEYS */;
INSERT INTO `empatt` VALUES ('ep01','2023-06-07','absent','present'),('ep02','2023-06-07','present','present'),('ep04','2023-06-07','present','present'),('ep05','2023-06-07','absent','present'),('ep06','2023-06-07','absent','present'),('ep07','2023-06-07','present','absent'),('ep08','2023-06-07','absent','present'),('ep09','2023-06-07','present','absent'),('ep10','2023-06-07','present','present'),('ep11','2023-05-07','present','absent'),('ep12','2023-06-07','absent','present'),('ep13','2023-06-07','absent','present'),('ep14','2023-06-07','present','absent'),('ep15','2023-06-07','absent','present'),('ep16','2023-06-07','present','present'),('ep17','2023-06-07','present','absent'),('ep18','2023-06-07','absent','present'),('ep19','2023-06-07','absent','present'),('ep20','2023-06-07','present','absent');
/*!40000 ALTER TABLE `empatt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pass`
--

DROP TABLE IF EXISTS `pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pass` (
  `id` varchar(45) NOT NULL,
  `usern` varchar(45) DEFAULT NULL,
  `passn` varchar(45) DEFAULT NULL,
  `passc` varchar(45) DEFAULT NULL,
  `pno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`usern`),
  UNIQUE KEY `password_UNIQUE` (`passn`),
  UNIQUE KEY `passc_UNIQUE` (`passc`),
  UNIQUE KEY `pno_UNIQUE` (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass`
--

LOCK TABLES `pass` WRITE;
/*!40000 ALTER TABLE `pass` DISABLE KEYS */;
INSERT INTO `pass` VALUES ('p1','balamani','Mani2003#@!23','Mani2003#@!23','9345668493');
/*!40000 ALTER TABLE `pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pass1`
--

DROP TABLE IF EXISTS `pass1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pass1` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pass1`
--

LOCK TABLES `pass1` WRITE;
/*!40000 ALTER TABLE `pass1` DISABLE KEYS */;
INSERT INTO `pass1` VALUES ('haritoys','hari2004');
/*!40000 ALTER TABLE `pass1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent` (
  `rno` int NOT NULL,
  `said` varchar(45) DEFAULT NULL,
  `ramo` float DEFAULT NULL,
  `rpm` float DEFAULT NULL,
  `rpy` float DEFAULT NULL,
  `rpd` varchar(34) DEFAULT NULL,
  PRIMARY KEY (`rno`),
  UNIQUE KEY `said_UNIQUE` (`said`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (1,'sa01',120000,10000,120000,'2025-10-10'),(2,'sa02',250000,25000,250000,'2023-09-09'),(3,'sa03',10000,10000,0,'2023-05-24'),(4,'sa04',7000,7000,84000,'2023-05-17'),(5,'sa05',8000,8000,0,'2023-05-16'),(6,'sa06',10000,10000,0,'2023-05-23'),(7,'sa07',300000,0,300000,'2023-05-16'),(8,'sa08',9000,9000,0,'2023-07-26'),(9,'sa09',10000,10000,0,'2023-06-15'),(10,'sa19',100000,0,100000,'2023-09-09'),(11,'sa11',10000,10000,0,'2023-06-15');
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopall`
--

DROP TABLE IF EXISTS `shopall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopall` (
  `sallid` varchar(5) NOT NULL,
  `sid` varchar(45) DEFAULT NULL,
  `tid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sallid`),
  KEY `Shop_id_idx` (`sid`),
  KEY `tenant_id_idx` (`tid`),
  CONSTRAINT `Shop_id` FOREIGN KEY (`sid`) REFERENCES `adshopd` (`ID`) ON UPDATE CASCADE,
  CONSTRAINT `tenant_id` FOREIGN KEY (`tid`) REFERENCES `tenant` (`tid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopall`
--

LOCK TABLES `shopall` WRITE;
/*!40000 ALTER TABLE `shopall` DISABLE KEYS */;
INSERT INTO `shopall` VALUES ('sa01','a01','t01'),('sa02','a01','t02'),('sa03','a02','t03'),('sa04','a05','t04'),('sa05','a07','t06'),('sa06','a09','t07'),('sa07','a11','t08'),('sa09','a08','t04'),('sa11','a19','t09'),('sa12','a08','t11'),('sa29','a02','t04');
/*!40000 ALTER TABLE `shopall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant` (
  `tid` varchar(45) NOT NULL,
  `tname` varchar(45) DEFAULT NULL,
  `tadd` varchar(45) DEFAULT NULL,
  `tpno` varchar(45) DEFAULT NULL,
  `trent` float DEFAULT NULL,
  `tfno` int DEFAULT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `tpno_UNIQUE` (`tpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES ('t01','mani','aathumadu','23 456 90 100',23000,2),('t02','anthony','allambatti','12 345 09 123',9000,1),('t03','thanges','bharathi street vnr','23 456 78 980',10000,2),('t04','vinoth','pandi nager','09 890 12 345',12000,2),('t06','mani.c','12,aiya strreet vnr','123 45 67 890',5000,3),('t07','johnwick.j','35/ac sanger nager chennai','76 879 11 234',7000,3),('t08','madhan','123,appaia street madhurai','09 900 12 123',12000,4),('t09','mala','23,vhansan nager','09 899 12 234',23000,4),('t10','alagesh','23,appa,nager,vnr','23 456 78 002',15000,2),('t11','inba','karupa samay vnr','90 890 12 345',20000,3),('t12','mani','adayar','12 345 67 909',15000,2),('t13','bharathi','kannan street','23 456 23 123',16000,3),('t14','balaji','kindi','90 871 23 123',20000,2),('t15','jai','karugi','98 789 90 789',12000,4),('t16','selva','andra nage','12 345 89 098',10000,3),('t17','kamala','pandibzzer','90 876 65 345',15000,4),('t18','rajini','pargar stret vnr','98 89 123 123',10000,4),('t19','bala','pindau nager ','97 965 18 109',15000,4),('t20','lann','baxer street','90 789 35 981',12000,5);
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-19 19:21:33
