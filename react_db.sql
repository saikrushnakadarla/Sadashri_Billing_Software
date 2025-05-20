CREATE DATABASE  IF NOT EXISTS `react_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `react_db`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: react_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `account_details`
--

DROP TABLE IF EXISTS `account_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_details` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `print_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_group` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `op_bal` decimal(15,2) DEFAULT NULL,
  `metal_balance` decimal(15,2) DEFAULT NULL,
  `dr_cr` enum('Dr','Cr') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pincode` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `anniversary` date DEFAULT NULL,
  `bank_account_no` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ifsc_code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gst_in` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aadhar_card` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pan_card` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `religion` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `images` varchar(450) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_details`
--

LOCK TABLES `account_details` WRITE;
/*!40000 ALTER TABLE `account_details` DISABLE KEYS */;
INSERT INTO `account_details` VALUES (2,'JOHN DOE','JOHN DOE','CUSTOMERS',1500.50,10.25,'Dr','123 Main Street','Suite 101','New York','100001','New York','NY01','1234567890','9876543210','Jane Doe','john.doe@example.com','2024-12-16','2024-12-16','123456789012','XYZ Bank','XYZB1234567','Main Branch','22AAAAA0000A1Z5','123456789012','ABCDE1234F','2025-05-06 05:12:05',NULL,NULL),(7,'PAVANI','PAVANI','CUSTOMERS',10000.00,2000.00,'Dr','h-no 5-47/2/d Chandrampet sircilla','Chandrampet','Rajanna Sircilla','505301','Telangana','21','9676704365','9676704365',NULL,'pavanimyana2000@gmail.com','2024-12-14','2024-12-14','1234567890123456','XYZ Bank','BOFA0001234','Los Angeles','123456789012345','123456789012','ABCDE1234F','2025-05-12 06:20:21','Hinduism','customer-1747030821061-136183372.png'),(9,'BHARGAV','BHARGAV','CUSTOMERS',NULL,NULL,NULL,'5-47','Sircilla','Sircilla','505301','Telangana','24','09676704365','9856321478',NULL,'bhargav@gmail.com','2024-12-17','2024-12-30','1234567890123456','XYZ Bank','BOFA0001234','Main Branch','123456789012345','123412341234','ABCDE1234F','2025-05-05 11:32:42',NULL,NULL),(12,'RAJU','RAJU','SUPPLIERS',NULL,NULL,NULL,'h-no 5-47/2/d Chandrampet sircilla','Chandrampet','Rajanna Sircilla','505301','Telangana','24','852147963','9856231471',NULL,'raju@gmail.com','2004-12-30','2024-01-09','1234567890123456','SBI','XYZB0001234','Main Branch','123456789012345','123412341234','ABCDE1234F','2025-05-05 11:38:46',NULL,NULL),(14,'RAVI','RAVI','Employee Compensation',NULL,NULL,NULL,'','','','','','','','6457893215',NULL,'','2024-12-16','2024-12-24','','','','','','','','2024-12-30 07:39:38',NULL,NULL),(18,'JOHN','JOHN','SUPPLIERS',NULL,NULL,NULL,'h-no 5-47/2/d Chandrampet sircilla','Chandrampet','Rajanna Sircilla','505301','Telangana','36','09676704365','7896541236',NULL,'pavanimyana2000@gmail.com','2024-12-30','2024-12-08','1234567890123456','Bank of America','BOFA0001234','Main Branch','123456789012345','123456789012','GKM1223333','2025-05-05 11:38:37',NULL,NULL),(30,'Ramu','Ramu','Employee Compensation',NULL,NULL,NULL,'','','','','','','','1234567890',NULL,'',NULL,NULL,'','','','','','','','2025-02-17 06:15:04',NULL,NULL),(32,'SATYA NARAYAN','SATYA NARAYAN','SUPPLIERS',NULL,NULL,NULL,'','','','','','','','9886939419',NULL,'',NULL,NULL,'','','','','','','','2025-02-20 12:04:21',NULL,NULL),(44,'SAI KRUSHNA ','SAI KRUSHNA ','CUSTOMERS',NULL,NULL,NULL,'','','','','','','','9381850288',NULL,'',NULL,NULL,'','','','','','','','2025-05-08 05:52:13','',NULL);
/*!40000 ALTER TABLE `account_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountgroup`
--

DROP TABLE IF EXISTS `accountgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountgroup` (
  `accountgroup_id` int NOT NULL AUTO_INCREMENT,
  `AccountsGroupName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`accountgroup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountgroup`
--

LOCK TABLES `accountgroup` WRITE;
/*!40000 ALTER TABLE `accountgroup` DISABLE KEYS */;
INSERT INTO `accountgroup` VALUES (1,'Capital Account'),(2,'Current Assets'),(3,'Current Liabilities'),(4,'Fixed Assets'),(5,'Investments'),(6,'Loans (Liability)'),(7,'Pre-Operative Expenses'),(8,'Profit & Loss'),(9,'Revenue Accounts'),(10,'Suspense Account'),(11,'Cash-in-hand'),(12,'Bank Accounts'),(13,'Securities & Deposits (Asset)'),(14,'Loans & Advances (Asset)'),(15,'Stock-in-hand'),(16,'Sundry Debtors'),(17,'Sundry Creditors'),(18,'Duties & Taxes'),(19,'Provisions/Expenses Payable'),(20,'Secured Loans'),(21,'Unsecured Loans'),(22,'Purchase'),(23,'Sale'),(24,'Expenses (Direct/Mfg.)'),(25,'Expenses (Indirect/Admn.)'),(26,'Income (Direct/Opr.)'),(27,'Income (Indirect)'),(28,'Bank O/D Account'),(29,'Reserves & Surplus'),(30,'SELF STOCK'),(31,'Broker'),(32,'CUSTOMERS'),(33,'SUPPLIERS'),(42,'Employee Compensation');
/*!40000 ALTER TABLE `accountgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assigned_repairdetails`
--

DROP TABLE IF EXISTS `assigned_repairdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigned_repairdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `repair_id` int DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purity` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `weight` decimal(10,3) DEFAULT NULL,
  `rate_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_repairdetails`
--

LOCK TABLES `assigned_repairdetails` WRITE;
/*!40000 ALTER TABLE `assigned_repairdetails` DISABLE KEYS */;
INSERT INTO `assigned_repairdetails` VALUES (28,48,'Gold','22K',1,5.000,'Rate per Qty',2000.00,2000.00,'2025-05-13 06:49:26'),(29,49,'Gold','22k',1,1.000,'Rate per Qty',500.00,500.00,'2025-05-13 06:53:38');
/*!40000 ALTER TABLE `assigned_repairdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_details`
--

DROP TABLE IF EXISTS `company_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pincode` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state_code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gst_no` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pan_no` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_account_no` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ifsc_code` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `branch` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_details`
--

LOCK TABLES `company_details` WRITE;
/*!40000 ALTER TABLE `company_details` DISABLE KEYS */;
INSERT INTO `company_details` VALUES (2,'ABC Pvt Ltd','123 Street','Suite 456','Mumbai','400001','Telangana','36','India','9876543210','022-12345678','https://www.abc.com','27ABCDE1234F1Z5','ABCDE1234F','HDFC Bank','1234567890','HDFC0001234','Fort','https://www.hdfcbank.com',NULL),(6,'iiiQbets','','','','','Telangana','36','','','','','','','','','','','','');
/*!40000 ALTER TABLE `company_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_rates`
--

DROP TABLE IF EXISTS `current_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current_rates` (
  `current_rates_id` int NOT NULL AUTO_INCREMENT,
  `rate_date` date NOT NULL,
  `rate_time` time NOT NULL,
  `rate_16crt` decimal(10,2) DEFAULT NULL,
  `rate_18crt` decimal(10,2) DEFAULT NULL,
  `rate_22crt` decimal(10,2) DEFAULT NULL,
  `rate_24crt` decimal(10,2) DEFAULT NULL,
  `silver_rate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`current_rates_id`),
  UNIQUE KEY `rate_date` (`rate_date`,`rate_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_rates`
--

LOCK TABLES `current_rates` WRITE;
/*!40000 ALTER TABLE `current_rates` DISABLE KEYS */;
INSERT INTO `current_rates` VALUES (1,'2025-04-26','16:28:09',5894.00,7466.00,9005.00,9824.00,107.00);
/*!40000 ALTER TABLE `current_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designmaster`
--

DROP TABLE IF EXISTS `designmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designmaster` (
  `design_id` int NOT NULL AUTO_INCREMENT,
  `metal` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `short_id` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `design_item` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `design_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wastage_percentage` decimal(5,2) DEFAULT NULL,
  `making_charge` decimal(10,2) DEFAULT NULL,
  `design_short_code` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `brand_category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mc_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`design_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designmaster`
--

LOCK TABLES `designmaster` WRITE;
/*!40000 ALTER TABLE `designmaster` DISABLE KEYS */;
INSERT INTO `designmaster` VALUES (3,'GOLD','G253','Ring','Wedding Ring','Elegant Gold Ring',5.50,1500.00,'EGR00005','Premium','Fixed','2024-12-04 15:47:18','2025-02-17 12:33:45'),(5,'GOLD','G253','Ring','Wedding Ring','Wedding Ring',5.50,1500.00,'RG001','Premium','fixed','2025-01-03 15:22:20','2025-02-17 12:33:55'),(6,'SILVER','','Anklets','','Bridal ',0.00,0.00,'','','','2025-01-04 04:22:38','2025-02-17 12:34:03'),(7,'SILVER','','Anklets','','Traditional',0.00,0.00,'','','','2025-01-04 04:22:53','2025-02-17 12:33:35'),(8,'GOLD','G253','Ring','Priyanka','Priyanka',10.00,100.00,'','','','2025-02-10 08:32:12','2025-02-17 12:33:24'),(10,'GOLD',NULL,NULL,NULL,'Gopi',NULL,NULL,NULL,NULL,NULL,'2025-03-27 07:57:26','2025-03-27 07:57:26'),(14,'DIAMOND',NULL,NULL,NULL,'Queen',NULL,NULL,NULL,NULL,NULL,'2025-03-28 09:17:40','2025-03-28 09:17:40');
/*!40000 ALTER TABLE `designmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estimate`
--

DROP TABLE IF EXISTS `estimate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estimate` (
  `estimate_id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `pcode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estimate_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opentag_id` int DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metal_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `design_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purity` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gross_weight` decimal(10,3) DEFAULT NULL,
  `stone_weight` decimal(10,3) DEFAULT NULL,
  `stone_price` decimal(10,2) DEFAULT NULL,
  `weight_bw` decimal(10,3) DEFAULT NULL,
  `va_on` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `va_percent` decimal(10,2) DEFAULT NULL,
  `wastage_weight` decimal(10,3) DEFAULT NULL,
  `total_weight_av` decimal(10,3) DEFAULT NULL,
  `mc_on` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mc_per_gram` decimal(10,2) DEFAULT NULL,
  `making_charges` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `rate_amt` int DEFAULT NULL,
  `tax_percent` decimal(5,2) DEFAULT NULL,
  `tax_amt` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `pricing` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pieace_cost` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `disscount_percentage` decimal(10,2) DEFAULT NULL,
  `disscount` decimal(10,2) DEFAULT NULL,
  `hm_charges` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `taxable_amount` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `net_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `original_total_price` decimal(10,2) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  PRIMARY KEY (`estimate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estimate`
--

LOCK TABLES `estimate` WRITE;
/*!40000 ALTER TABLE `estimate` DISABLE KEYS */;
INSERT INTO `estimate` VALUES (71,'2025-05-14','','EST001',56,'GBR001','138','GOLD BRACELETS','GOLD','Traditional','22 KT | 91.6HM','GOLD JEWELLERY','GOLD BRACELETS',15.000,0.000,0.00,15.000,'Gross Weight',5.00,0.750,15.750,'MC %',10.00,14182.88,9005.00,141829,3.00,4682.15,160753.78,'By Weight',NULL,0.00,0.00,60.00,156071.63,156071.63,4682.15,160753.78,'2025-05-14 12:45:21','2025-05-14 12:45:21',NULL,1),(72,'2025-05-14','','EST002',58,'GMS001','138','GOLD MANGALSUTRAS','GOLD','Bridal ','22 KT | 91.6HM','GOLD JEWELLERY','GOLD MANGALSUTRAS',30.000,0.000,0.00,30.000,'Gross Weight',5.00,1.500,31.500,'MC %',10.00,28365.75,9005.00,283658,3.00,9362.50,321445.75,'By Weight',NULL,0.00,0.00,60.00,312083.25,312083.25,9362.50,321445.75,'2025-05-14 12:46:12','2025-05-14 12:46:12',NULL,1),(73,'2025-05-17','','EST003',57,'GRN001','138','GOLD RINGS','GOLD','Elegant Gold Ring','98 %','GOLD JEWELLERY','GOLD RINGS',15.000,0.000,0.00,15.000,'Gross Weight',5.00,0.750,15.750,'MC %',10.00,0.00,0.00,0,3.00,1.80,61.80,'By Weight',NULL,0.00,0.00,60.00,60.00,60.00,1.80,61.80,'2025-05-17 11:49:52','2025-05-17 11:49:52',NULL,1),(74,'2025-05-17','','EST004',0,'RB001','138','','GOLD','','22 KT | 91.6HM','GOLD JEWELLERY','GOLD BRACELETS',10.000,1.000,0.00,9.000,'Gross Weight',5.00,0.500,9.500,'MC %',10.00,8554.75,9005.00,85548,3.00,2824.87,96987.12,'By Weight',NULL,0.00,0.00,60.00,94162.25,94162.25,2824.87,96987.12,'2025-05-17 12:34:50','2025-05-17 12:34:50',NULL,1);
/*!40000 ALTER TABLE `estimate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_schemes`
--

DROP TABLE IF EXISTS `member_schemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_schemes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheme_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `installments_paid` int DEFAULT '0',
  `duration_months` int DEFAULT '0',
  `paid_months` int DEFAULT '0',
  `pending_months` int DEFAULT '0',
  `pending_amount` decimal(10,2) DEFAULT '0.00',
  `paid_amount` decimal(10,2) DEFAULT '0.00',
  `schemes_total_amount` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_schemes`
--

LOCK TABLES `member_schemes` WRITE;
/*!40000 ALTER TABLE `member_schemes` DISABLE KEYS */;
INSERT INTO `member_schemes` VALUES (23,'INV006','Scheme1','Scheme1','Scheme1','Scheme1',0,0,0,0,0.00,5000.00,5000.00),(24,'INV001','Scheme1','Scheme1','Scheme1','Scheme1',0,0,0,0,0.00,5000.00,5000.00),(25,'INV004',NULL,'Scheme','Scheme','Scheme',0,0,0,0,0.00,2000.00,2000.00),(26,'INV001',NULL,'Pavani ','9676704365','Divine ',10,10,2,8,8000.00,2000.00,2000.00),(27,'INV004',NULL,'Scheme','Scheme','Scheme',0,0,0,0,0.00,5000.00,5000.00);
/*!40000 ALTER TABLE `member_schemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metaltype`
--

DROP TABLE IF EXISTS `metaltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metaltype` (
  `metal_type_id` int NOT NULL AUTO_INCREMENT,
  `metal_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hsn_code` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `default_purity` decimal(5,2) DEFAULT NULL,
  `default_purity_for_rate_entry` decimal(5,2) DEFAULT NULL,
  `default_purity_for_old_metal` decimal(5,2) DEFAULT NULL,
  `default_issue_purity` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`metal_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metaltype`
--

LOCK TABLES `metaltype` WRITE;
/*!40000 ALTER TABLE `metaltype` DISABLE KEYS */;
INSERT INTO `metaltype` VALUES (10,'GOLD','HSN001','',99.90,99.90,99.90,99.90,'2024-12-27 14:03:25','2025-02-17 12:28:00'),(11,'SILVER','HSN002','',99.90,99.50,99.50,99.50,'2024-12-27 14:03:48','2025-02-17 12:28:13'),(13,'DIAMOND','HSN004','',99.50,99.50,99.50,99.50,'2025-01-22 04:29:09','2025-02-17 12:28:27'),(19,'OTHERS','','',NULL,NULL,NULL,NULL,'2025-03-04 09:46:24','2025-03-04 09:46:24');
/*!40000 ALTER TABLE `metaltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offerstable`
--

DROP TABLE IF EXISTS `offerstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offerstable` (
  `offer_id` int NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(100) DEFAULT NULL,
  `discount_on` varchar(100) DEFAULT NULL,
  `discount_on_rate` decimal(10,2) DEFAULT NULL,
  `discount_percentage` varchar(50) DEFAULT NULL,
  `discount_percent_fixed` varchar(50) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `offer_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offerstable`
--

LOCK TABLES `offerstable` WRITE;
/*!40000 ALTER TABLE `offerstable` DISABLE KEYS */;
INSERT INTO `offerstable` VALUES (1,'Summer Offer','',120.00,'3','5','2025-04-01','2025-05-31','Unapplied');
/*!40000 ALTER TABLE `offerstable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `old_items`
--

DROP TABLE IF EXISTS `old_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `old_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsn_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gross` decimal(10,3) DEFAULT '0.000',
  `dust` decimal(10,3) DEFAULT '0.000',
  `ml_percent` decimal(10,2) DEFAULT '0.00',
  `net_wt` decimal(10,3) DEFAULT '0.000',
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `rate` decimal(10,2) DEFAULT '0.00',
  `total_amount` decimal(10,2) DEFAULT '0.00',
  `total_old_amount` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `old_items`
--

LOCK TABLES `old_items` WRITE;
/*!40000 ALTER TABLE `old_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `old_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opening_tags_entry`
--

DROP TABLE IF EXISTS `opening_tags_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opening_tags_entry` (
  `opentag_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `subcategory_id` int DEFAULT NULL,
  `sub_category` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Pricing` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Prefix` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Purity` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metal_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PCode_BarCode` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Gross_Weight` decimal(10,3) DEFAULT '0.000',
  `Stones_Weight` decimal(10,3) DEFAULT '0.000',
  `Stones_Price` decimal(10,2) DEFAULT '0.00',
  `Weight_BW` decimal(10,3) DEFAULT '0.000',
  `HUID_No` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Wastage_On` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Wastage_Percentage` decimal(10,2) DEFAULT NULL,
  `WastageWeight` decimal(10,3) DEFAULT '0.000',
  `MC_Per_Gram` decimal(10,2) DEFAULT NULL,
  `Making_Charges_On` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TotalWeight_AW` decimal(10,3) DEFAULT NULL,
  `Making_Charges` decimal(10,2) DEFAULT NULL,
  `Status` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Source` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Stock_Point` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `making_on` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dropdown` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selling_price` int DEFAULT NULL,
  `pcs` int DEFAULT NULL,
  `pieace_cost` decimal(10,2) DEFAULT NULL,
  `design_master` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_Name` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qr_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `added_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cut` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clarity` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stone_price_per_carat` decimal(10,2) DEFAULT NULL,
  `deduct_st_Wt` varchar(5) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MC_Per_Gram_Label` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pur_Gross_Weight` decimal(10,3) DEFAULT '0.000',
  `pur_Stones_Weight` decimal(10,3) DEFAULT '0.000',
  `pur_deduct_st_Wt` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pur_stone_price_per_carat` decimal(10,2) DEFAULT NULL,
  `pur_Stones_Price` decimal(10,2) DEFAULT '0.00',
  `pur_Weight_BW` decimal(10,3) DEFAULT NULL,
  `pur_Making_Charges_On` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pur_MC_Per_Gram` decimal(10,2) DEFAULT NULL,
  `pur_Making_Charges` decimal(10,2) DEFAULT NULL,
  `pur_Wastage_On` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pur_Wastage_Percentage` decimal(5,2) DEFAULT NULL,
  `pur_WastageWeight` decimal(10,3) DEFAULT NULL,
  `pur_TotalWeight_AW` decimal(10,3) DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `tag_weight` decimal(10,3) DEFAULT NULL,
  `size` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_general_ci,
  `item_prefix` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suffix` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pur_MC_Per_Gram_Label` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tax_percent` varchar(30) COLLATE utf8mb4_general_ci DEFAULT '0.00',
  `mrp_price` decimal(10,2) DEFAULT '0.00',
  `total_pcs_cost` decimal(10,2) DEFAULT '0.00',
  `pur_rate_cut` decimal(10,2) DEFAULT NULL,
  `pur_Purity` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pur_purityPercentage` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `printing_purity` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`opentag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opening_tags_entry`
--

LOCK TABLES `opening_tags_entry` WRITE;
/*!40000 ALTER TABLE `opening_tags_entry` DISABLE KEYS */;
INSERT INTO `opening_tags_entry` VALUES (56,138,74,'GOLD BRACELETS','By Weight','GBR','GOLD JEWELLERY','98 %','GOLD','GBR001',15.000,0.000,0.00,15.000,'','Gross Weight',5.00,0.750,10.00,'MC %',15.750,0.00,'Sold','Purchase','Display Floor1','','',0,1,0.00,'Traditional','','No','2025-04-09 16:20:08','','','',0.00,'Yes','MC%',15.000,0.000,'Yes',0.00,0.00,15.000,'MC %',0.00,0.00,'Gross Weight',0.00,0.000,15.000,12,0.000,'0','John Doe','PINV004','',NULL,NULL,NULL,'0.00',0.00,0.00,8036.00,'98 %','0','91.6HM'),(57,138,76,'GOLD RINGS','By Weight','GRN','GOLD JEWELLERY','98 %','GOLD','GRN001',15.000,0.000,0.00,15.000,'','Gross Weight',5.00,0.750,10.00,'MC %',15.750,0.00,'Reserved','Purchase','Display Floor1','','',0,1,0.00,'Elegant Gold Ring','','No','2025-04-09 16:20:20','','','',0.00,'Yes','MC%',15.000,0.000,'Yes',0.00,0.00,15.000,'MC %',0.00,0.00,'Gross Weight',0.00,0.000,15.000,12,0.000,'0','John Doe','PINV004','',NULL,NULL,NULL,'0.00',0.00,0.00,8036.00,'98 %','0','91.6HM'),(58,138,77,'GOLD MANGALSUTRAS','By Weight','GMS','GOLD JEWELLERY','98 %','GOLD','GMS001',30.000,0.000,0.00,30.000,'','Gross Weight',5.00,1.500,10.00,'MC %',31.500,0.00,'Available','Purchase','Display Floor1','','',0,1,0.00,'Bridal ','','No','2025-04-09 16:20:28','','','',0.00,'Yes','MC%',30.000,0.000,'Yes',0.00,0.00,30.000,'MC %',0.00,0.00,'Gross Weight',0.00,0.000,30.000,12,0.000,'0','John Doe','PINV004','',NULL,NULL,NULL,'0.00',0.00,0.00,8036.00,'95 %','0','91.6HM'),(59,138,78,'GOLD BANGLES','By Weight','GBS','GOLD JEWELLERY','98 %','GOLD','GBS001',35.000,0.000,0.00,35.000,'','Gross Weight',5.00,1.750,10.00,'MC %',36.750,0.00,'Available','Purchase','Display Floor1','','',0,1,0.00,'Traditional','','No','2025-04-09 16:20:42','','','',0.00,'Yes','MC%',35.000,0.000,'Yes',0.00,0.00,35.000,'MC %',0.00,0.00,'Gross Weight',0.00,0.000,35.000,12,0.000,'0','John Doe','PINV004','',NULL,NULL,NULL,'0.00',0.00,0.00,8036.00,'95 %','0','91.6HM'),(60,138,85,'GOLD NOSEPIN','By Weight','GNP','GOLD JEWELLERY','98 %','GOLD','GNP001',5.000,0.000,0.00,5.000,'HUD001','Gross Weight',0.00,0.000,0.00,'MC %',5.000,0.00,'Reserved','Purchase','Display Floor1','','',0,1,0.00,'Traditional','','No','2025-04-09 16:22:01',NULL,NULL,NULL,0.00,'Yes',NULL,5.000,0.000,'Yes',0.00,0.00,5.000,'MC %',0.00,0.00,'Gross Weight',0.00,0.000,5.000,12,0.000,'0','John Doe','PINV004',NULL,NULL,NULL,NULL,'0.00',0.00,0.00,8036.00,'95 %','0','91.6HM'),(61,140,79,'SILVER PHOTO FRAMES','By fixed','SFR','SILVER ARTICLES','98 %','SILVER','SFR001',0.000,0.000,0.00,0.000,'HUD001','Gross Weight',0.00,0.000,0.00,'MC / Gram',0.000,0.00,'Available','Purchase','Display Floor1','','',0,1,4500.00,'Traditional','','No','2025-04-09 16:23:10','','','',0.00,'Yes',NULL,0.000,0.000,'Yes',0.00,0.00,0.000,'MC / Gram',0.00,0.00,'Gross Weight',0.00,0.000,0.000,14,0.000,'0','John Doe','P123',NULL,NULL,NULL,NULL,'3 %',4635.00,22500.00,106.90,'95 %','0','80HM'),(62,140,79,'SILVER PHOTO FRAMES','By fixed','SFR','SILVER ARTICLES','98 %','SILVER','SFR002',0.000,0.000,0.00,0.000,'HUD001','Gross Weight',0.00,0.000,0.00,'MC / Gram',0.000,0.00,'Available','Purchase','Display Floor1','','',0,1,4500.00,'Traditional','','No','2025-04-09 16:23:10','','','',0.00,'Yes',NULL,0.000,0.000,'Yes',0.00,0.00,0.000,'MC / Gram',0.00,0.00,'Gross Weight',0.00,0.000,0.000,14,0.000,'0','John Doe','P123',NULL,NULL,NULL,NULL,'3 %',4635.00,22500.00,106.90,'95 %','0','80HM'),(63,140,79,'SILVER PHOTO FRAMES','By fixed','SFR','SILVER ARTICLES','98 %','SILVER','SFR003',0.000,0.000,0.00,0.000,'HUD001','Gross Weight',0.00,0.000,0.00,'MC / Gram',0.000,0.00,'Available','Purchase','Display Floor1','','',0,1,4500.00,'Traditional','','No','2025-04-09 16:23:10','','','',0.00,'Yes',NULL,0.000,0.000,'Yes',0.00,0.00,0.000,'MC / Gram',0.00,0.00,'Gross Weight',0.00,0.000,0.000,14,0.000,'0','John Doe','P123',NULL,NULL,NULL,NULL,'3 %',4635.00,22500.00,106.90,'95 %','0','80HM'),(64,140,79,'SILVER PHOTO FRAMES','By fixed','SFR','SILVER ARTICLES','98 %','SILVER','SFR004',0.000,0.000,0.00,0.000,'HUD001','Gross Weight',0.00,0.000,0.00,'MC / Gram',0.000,0.00,'Available','Purchase','Display Floor1','','',0,1,4500.00,'Traditional','','No','2025-04-09 16:23:10','','','',0.00,'Yes',NULL,0.000,0.000,'Yes',0.00,0.00,0.000,'MC / Gram',0.00,0.00,'Gross Weight',0.00,0.000,0.000,14,0.000,'0','John Doe','P123',NULL,NULL,NULL,NULL,'3 %',4635.00,22500.00,106.90,'95 %','0','80HM'),(65,140,79,'SILVER PHOTO FRAMES','By fixed','SFR','SILVER ARTICLES','98 %','SILVER','SFR005',0.000,0.000,0.00,0.000,'HUD001','Gross Weight',0.00,0.000,0.00,'MC / Gram',0.000,0.00,'Available','Purchase','Display Floor1','','',0,1,4500.00,'Traditional','','No','2025-04-09 16:23:10','','','',0.00,'Yes',NULL,0.000,0.000,'Yes',0.00,0.00,0.000,'MC / Gram',0.00,0.00,'Gross Weight',0.00,0.000,0.000,14,0.000,'0','John Doe','P123',NULL,NULL,NULL,NULL,'3 %',4635.00,22500.00,106.90,'95 %','0','80HM'),(66,139,83,'SILVER ANKLETS','By Weight','SAN','SILVER JEWELLERY','98 %','SILVER','SAN001',50.000,0.000,0.00,50.000,'','Gross Weight',5.00,2.500,100.00,'MC / Gram',52.500,5250.00,'Sold','Purchase','Display Floor1','','',0,1,0.00,'','','No','2025-04-10 13:59:16','','','',0.00,'Yes',NULL,50.000,0.000,'Yes',0.00,0.00,50.000,'MC / Gram',0.00,0.00,'Gross Weight',0.00,0.000,50.000,13,0.000,'0','John Doe','PINV004',NULL,NULL,NULL,NULL,'0',0.00,0.00,106.90,'95 %','0','80HM');
/*!40000 ALTER TABLE `opening_tags_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` date NOT NULL,
  `mode` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cheque_number` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receipt_no` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_amt` decimal(10,2) DEFAULT NULL,
  `discount_amt` decimal(10,2) DEFAULT '0.00',
  `cash_amt` decimal(10,2) DEFAULT '0.00',
  `remarks` text COLLATE utf8mb4_general_ci,
  `total_wt` decimal(10,3) DEFAULT '0.000',
  `paid_wt` decimal(10,3) DEFAULT '0.000',
  `bal_wt` decimal(10,3) DEFAULT '0.000',
  `rate` decimal(10,2) DEFAULT NULL,
  `category` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (23,'Receipt','2025-05-15','Cash',NULL,'RCP002','JOHN DOE','INV001',181568.00,50000.00,131568.00,NULL,0.000,0.000,0.000,NULL,'0','9876543210'),(24,'Receipt','2025-05-15','Cash','123','RCP003','JOHN DOE','ORD001',119606.00,50000.00,69606.00,'Paid',0.000,0.000,0.000,NULL,'0','9876543210'),(25,'Receipt','2025-05-16','Cash',NULL,'RCP004','JOHN DOE','ORD004',46438.00,1000.00,45438.00,NULL,0.000,0.000,0.000,NULL,'0','9876543210');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rbarcode` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metal_type_id` int DEFAULT NULL,
  `Category` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `design_id` int DEFAULT NULL,
  `design_master` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purity_id` int DEFAULT NULL,
  `purity` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item_prefix` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `short_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sale_account_head` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purchase_account_head` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_general_ci DEFAULT 'ACTIVE',
  `tax_slab` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tax_slab_id` int DEFAULT NULL,
  `hsn_code` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `maintain_tags` tinyint(1) DEFAULT '0',
  `op_qty` decimal(10,2) DEFAULT NULL,
  `op_value` decimal(10,2) DEFAULT NULL,
  `op_weight` decimal(10,2) DEFAULT NULL,
  `huid_no` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pur_qty` int DEFAULT NULL,
  `pur_weight` decimal(10,3) DEFAULT NULL,
  `avl_qty` int DEFAULT NULL,
  `avl_weight` decimal(10,3) DEFAULT NULL,
  `sale_qty` int DEFAULT NULL,
  `sale_weight` decimal(10,3) DEFAULT NULL,
  `bal_qty` int DEFAULT NULL,
  `bal_weight` decimal(10,3) DEFAULT NULL,
  `salereturn_qty` int DEFAULT NULL,
  `salereturn_weight` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (138,'GOLD JEWELLERY','RB001',NULL,'GOLD',NULL,'',NULL,'24K','','','Sales','Purchase','ACTIVE','03% GST',NULL,'711311',0,0.00,0.00,0.00,'',32,350.000,0,0.000,2,65.000,30,285.000,0,0.000),(139,'SILVER JEWELLERY','RB002',11,'SILVER',NULL,'',NULL,'24K','','','Sales','Purchase','ACTIVE','03% GST',NULL,'711311',0,0.00,0.00,0.00,'',30,750.000,0,0.000,2,150.000,28,600.000,0,0.000),(140,'SILVER ARTICLES','RB003',11,'SILVER',NULL,'',NULL,'24K','','','Sales','Purchase','ACTIVE','03% GST',NULL,'711411',0,0.00,0.00,0.00,'',10,0.000,0,0.000,5,NULL,5,NULL,NULL,NULL),(141,'DIAMOND JEWELLERY','RB004',13,'DIAMOND',NULL,'',NULL,'24K','','','Sales','Purchase','ACTIVE','03% GST',NULL,'711311',0,0.00,0.00,0.00,'',36,750.000,0,0.000,0,0.000,36,750.000,NULL,NULL),(143,'PACKAGING MATERIAL','RB005',19,'OTHERS',NULL,'',NULL,'24K','','','Sales','Purchase','ACTIVE','03% GST',NULL,'HSN001',0,0.00,0.00,0.00,'',0,0.000,NULL,NULL,NULL,NULL,0,0.000,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productstockentry_stone_details`
--

DROP TABLE IF EXISTS `productstockentry_stone_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productstockentry_stone_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subproductname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  `ratepergram` decimal(10,2) NOT NULL,
  `amount` int NOT NULL,
  `totalweight` decimal(10,2) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `c_weight` decimal(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productstockentry_stone_details`
--

LOCK TABLES `productstockentry_stone_details` WRITE;
/*!40000 ALTER TABLE `productstockentry_stone_details` DISABLE KEYS */;
INSERT INTO `productstockentry_stone_details` VALUES (20,'Diamond',2.00,1000.00,2000,2.00,2000.00,NULL),(21,'Diamond',2.00,1000.00,2000,2.00,2000.00,NULL),(22,'Pendant',2.00,1000.00,2000,2.00,2000.00,NULL),(23,'Pearl',2.00,1000.00,2000,2.00,2000.00,NULL),(24,'Rubi',1.00,2000.00,2000,1.00,2000.00,NULL);
/*!40000 ALTER TABLE `productstockentry_stone_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchasepayments`
--

DROP TABLE IF EXISTS `purchasepayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchasepayments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `mode` varchar(50) DEFAULT NULL,
  `cheque_number` varchar(50) DEFAULT NULL,
  `payment_no` varchar(50) DEFAULT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `invoice` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `rate_cut` decimal(10,2) DEFAULT NULL,
  `total_wt` decimal(10,3) DEFAULT NULL,
  `paid_wt` decimal(10,3) DEFAULT NULL,
  `bal_wt` decimal(10,3) DEFAULT NULL,
  `total_amt` decimal(12,2) DEFAULT NULL,
  `paid_amt` decimal(12,2) DEFAULT NULL,
  `bal_amt` decimal(12,2) DEFAULT NULL,
  `paid_by` varchar(45) DEFAULT NULL,
  `remarks` text,
  `rate_cut_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchasepayments`
--

LOCK TABLES `purchasepayments` WRITE;
/*!40000 ALTER TABLE `purchasepayments` DISABLE KEYS */;
INSERT INTO `purchasepayments` VALUES (6,'2025-05-06','Cash','123','PAY001','SATYA NARAYAN','PINV001','GOLD JEWELLERY',9005.00,50.000,2.221,47.779,450250.00,20000.00,430250.00,'By Amount','Paid',14,'2025-05-06 11:27:04'),(7,'2025-05-06','Cash','','PAY002','SATYA NARAYAN','PINV001','GOLD JEWELLERY',9005.00,47.779,11.105,36.674,430250.00,100000.00,330250.00,'By Amount','Paid',14,'2025-05-06 11:31:29');
/*!40000 ALTER TABLE `purchasepayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gst_in` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `Pricing` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metal_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rbarcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsn_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcs` int DEFAULT NULL,
  `gross_weight` decimal(10,3) DEFAULT '0.000',
  `stone_weight` decimal(10,3) DEFAULT '0.000',
  `deduct_st_Wt` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_weight` decimal(10,3) DEFAULT '0.000',
  `purity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purityPercentage` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pure_weight` decimal(10,3) DEFAULT NULL,
  `wastage_on` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wastage` decimal(10,2) DEFAULT NULL,
  `wastage_wt` decimal(10,3) DEFAULT '0.000',
  `Making_Charges_On` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Making_Charges_Value` decimal(10,2) DEFAULT NULL,
  `total_mc` decimal(10,2) DEFAULT '0.00',
  `total_pure_wt` decimal(10,3) DEFAULT '0.000',
  `paid_pure_weight` decimal(10,3) DEFAULT NULL,
  `balance_pure_weight` decimal(10,3) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `tax_slab` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_amt` decimal(10,2) DEFAULT NULL,
  `net_amt` decimal(10,2) DEFAULT NULL,
  `rate_cut` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_cut_wt` decimal(10,3) DEFAULT NULL,
  `rate_cut_amt` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `balance_amount` decimal(10,2) DEFAULT NULL,
  `hm_charges` decimal(10,2) DEFAULT NULL,
  `charges` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cut` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clarity` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carat_wt` decimal(10,3) DEFAULT NULL,
  `stone_price` decimal(10,2) DEFAULT NULL,
  `final_stone_amount` decimal(10,2) DEFAULT NULL,
  `paid_amt` decimal(10,2) DEFAULT NULL,
  `balance_after_receipt` decimal(10,2) DEFAULT NULL,
  `paid_wt` decimal(10,3) DEFAULT NULL,
  `balWt_after_payment` decimal(10,3) DEFAULT NULL,
  `paid_by` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bal_wt_amt` decimal(10,3) DEFAULT NULL,
  `other_charges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overall_total_wt` decimal(10,3) DEFAULT '0.000',
  `overall_paid_wt` decimal(10,3) DEFAULT '0.000',
  `overall_bal_wt` decimal(10,3) DEFAULT '0.000',
  `overall_taxableAmt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `overall_taxAmt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `overall_netAmt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `overall_hmCharges` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bal_tag_pcs` int DEFAULT NULL,
  `bal_tag_grossWeight` decimal(10,3) DEFAULT NULL,
  `tag_id` int DEFAULT NULL,
  `discount_amt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_amt` decimal(10,2) DEFAULT NULL,
  `claim_remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
INSERT INTO `purchases` VALUES (92,32,'9886939419','SATYA NARAYAN',NULL,'Cash','PINV001',NULL,'2025-05-06','2025-05-06',NULL,'By Weight',139,'SILVER JEWELLERY','SILVER','RB002','711311',10,200.000,0.000,'No',200.000,'Manual','100',200.000,'Pure Wt',5.00,10.000,'MC / Gram',100.00,21000.00,210.000,100.000,110.000,107.00,22470.00,'03% GST',1304.10,44774.10,'107.00',100.000,10700.00,0.00,10700.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Amount',110.000,'0',0.000,0.000,0.000,1083547.50,32506.43,1116053.93,0.00,NULL,NULL,21,'0',44774.10,NULL),(93,32,'9886939419','SATYA NARAYAN',NULL,'Cash','PINV001',NULL,'2025-05-06','2025-05-06',NULL,'By Weight',138,'GOLD JEWELLERY','GOLD','RB001','711311',10,100.000,0.000,'No',100.000,'Manual','100',100.000,'Pure Wt',5.00,5.000,'MC %',10.00,94552.50,105.000,50.000,55.000,9005.00,945525.00,'03% GST',31202.33,1071279.83,'9005.00',50.000,450250.00,0.00,450250.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Amount',55.000,'0',0.000,0.000,0.000,1083547.50,32506.43,1116053.93,0.00,NULL,NULL,20,'0',1071279.83,NULL),(94,32,'9886939419','SATYA NARAYAN',NULL,'Cash','PINV002',NULL,'2025-05-06','2025-05-06',NULL,'By Weight',141,'DIAMOND JEWELLERY','DIAMOND','RB004','711311',1,50.000,0.000,'No',50.000,'Manual','100',50.000,'Pure Wt',5.00,2.500,'MC %',10.00,47276.25,52.500,20.000,32.500,9005.00,472762.50,'03% GST',15601.16,535639.91,'9005.00',20.000,180100.00,0.00,180100.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Amount',32.500,'0',0.000,0.000,0.000,1015313.75,30459.41,1045773.16,0.00,NULL,NULL,22,'0',535639.91,NULL),(95,32,'9886939419','SATYA NARAYAN',NULL,'Cash','PINV002',NULL,'2025-05-06','2025-05-06',NULL,'By Weight',138,'GOLD JEWELLERY','GOLD','RB001','711311',2,50.000,0.000,'No',50.000,'Manual','100',50.000,'Pure Wt',NULL,0.000,'MC %',10.00,45025.00,50.000,0.000,50.000,9005.00,450250.00,'03% GST',14858.25,510133.25,'9005.00',0.000,0.00,0.00,0.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Weight',50.000,'0',0.000,0.000,0.000,1015313.75,30459.41,1045773.16,0.00,NULL,NULL,23,'0',510133.25,NULL),(96,18,'7896541236','JOHN','123456789012345','Cash','PINV003',NULL,'2025-05-06','2025-05-06',NULL,'By Weight',139,'SILVER JEWELLERY','SILVER','RB002','711311',10,250.000,0.000,'No',250.000,'Manual','100',250.000,'Pure Wt',NULL,0.000,'MC / Gram',100.00,25000.00,250.000,120.000,130.000,107.00,26750.00,'03% GST',1552.50,53302.50,'107.00',120.000,12840.00,0.00,12840.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Amount',130.000,'0',0.000,0.000,0.000,51750.00,1552.50,53302.50,0.00,NULL,NULL,24,'0',53302.50,NULL),(97,12,'9856231471','RAJU','123456789012345','Cash','PINV004',NULL,'2025-05-06','2025-05-06',NULL,'By Weight',138,'GOLD JEWELLERY','GOLD','RB001','711311',10,100.000,0.000,'No',100.000,'Manual','100',100.000,'Pure Wt',NULL,0.000,'MC %',10.00,90050.00,100.000,50.000,50.000,9005.00,900500.00,'03% GST',29716.50,1020266.50,'9005.00',50.000,450250.00,0.00,450250.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Amount',50.000,'0',0.000,0.000,0.000,1923150.00,57694.50,1980844.50,0.00,NULL,NULL,25,'0',1020266.50,NULL),(98,12,'9856231471','RAJU','123456789012345','Cash','PINV004',NULL,'2025-05-06','2025-05-06',NULL,'By Weight',139,'SILVER JEWELLERY','SILVER','RB002','711311',10,300.000,0.000,'No',300.000,'Manual','100',300.000,'Pure Wt',NULL,0.000,'MC / Gram',NULL,0.00,300.000,100.000,200.000,107.00,32100.00,'03% GST',963.00,33063.00,'107.00',100.000,10700.00,0.00,10700.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Amount',200.000,'0',0.000,0.000,0.000,1923150.00,57694.50,1980844.50,0.00,NULL,NULL,26,'0',33063.00,NULL),(99,12,'9856231471','RAJU','123456789012345','Cash','PINV004',NULL,'2025-05-06','2025-05-06',NULL,'By Weight',141,'DIAMOND JEWELLERY','DIAMOND','RB004','711311',5,100.000,0.000,'No',100.000,'Manual','100',100.000,'Pure Wt',NULL,0.000,'MC %',NULL,0.00,100.000,30.000,70.000,9005.00,900500.00,'03% GST',27015.00,927515.00,'9005.00',30.000,270150.00,0.00,270150.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Amount',70.000,'0',0.000,0.000,0.000,1923150.00,57694.50,1980844.50,0.00,NULL,NULL,27,'0',927515.00,NULL),(100,32,'9886939419','SATYA NARAYAN',NULL,'Cash','PINV005',NULL,'2025-05-09','2025-05-09',NULL,'By Weight',138,'GOLD JEWELLERY','GOLD','RB001','711311',10,100.000,0.000,'No',100.000,'Manual','100',100.000,'Pure Wt',NULL,0.000,'MC %',10.00,90050.00,100.000,50.000,50.000,9005.00,900500.00,'03% GST',29716.50,1020266.50,'9005.00',50.000,450250.00,0.00,450250.00,0.00,0.00,'0','0','0','0',0.000,0.00,0.00,NULL,0.00,NULL,0.000,'By Amount',50.000,'0',0.000,0.000,0.000,990550.00,29716.50,1020266.50,0.00,NULL,NULL,29,'0',1020266.50,NULL);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purity`
--

DROP TABLE IF EXISTS `purity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purity` (
  `purity_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metal` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purity_percentage` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purity` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `urd_purity` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_general_ci,
  `old_purity_desc` text COLLATE utf8mb4_general_ci,
  `cut_issue` text COLLATE utf8mb4_general_ci,
  `skin_print` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`purity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purity`
--

LOCK TABLES `purity` WRITE;
/*!40000 ALTER TABLE `purity` DISABLE KEYS */;
INSERT INTO `purity` VALUES (19,'22 KT','GOLD','91.6 %','91.6HM','91.6 %','91.6 %','91.6 %','91.6 %','91.6 %','2025-01-24 09:55:00','2025-04-11 04:19:44'),(20,'24 KT','GOLD','99.9 %','99.9 %','99.9 %','99.9 %','99.9 %','99.9 %','99.9 %','2025-01-24 09:56:09','2025-02-21 06:45:33'),(21,'18 KT','GOLD','76 %','76 %','76 %','76 %','76 %','76 % ','76 %','2025-01-24 09:56:53','2025-04-11 04:18:42'),(22,'14 KT','GOLD','60 %','60  %','60 %','60 %','60  %','60  %','60 %','2025-01-24 09:58:09','2025-04-11 04:19:14'),(23,'22 KT','SILVER','91.6 %','91.6HM','91.6 %','91.6 %','91.6 %','91.6 %','91.6 %','2025-01-24 10:00:05','2025-03-15 13:36:03'),(24,'80 HM','SILVER','80 %','80HM','','','','','','2025-02-12 10:03:31','2025-03-15 13:37:20'),(31,'90 HM','GOLD','90 %','90HM',NULL,NULL,NULL,NULL,NULL,'2025-02-19 06:03:06','2025-03-15 13:37:08'),(32,'92.5 HM','SILVER','92.5 %','92.5HM',NULL,NULL,NULL,NULL,NULL,'2025-03-08 08:31:11','2025-03-15 13:36:48');
/*!40000 ALTER TABLE `purity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratecuts`
--

DROP TABLE IF EXISTS `ratecuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratecuts` (
  `rate_cut_id` int NOT NULL AUTO_INCREMENT,
  `purchase_id` int DEFAULT NULL,
  `invoice` varchar(45) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `total_pure_wt` decimal(10,3) DEFAULT NULL,
  `rate_cut_wt` decimal(10,3) DEFAULT NULL,
  `rate_cut` decimal(10,2) DEFAULT NULL,
  `rate_cut_amt` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `balance_amount` decimal(10,2) DEFAULT NULL,
  `paid_wt` decimal(10,3) DEFAULT NULL,
  `bal_wt` decimal(10,3) DEFAULT NULL,
  `paid_by` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rate_cut_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratecuts`
--

LOCK TABLES `ratecuts` WRITE;
/*!40000 ALTER TABLE `ratecuts` DISABLE KEYS */;
INSERT INTO `ratecuts` VALUES (14,93,'PINV001','GOLD JEWELLERY',105.000,50.000,9005.00,450250.00,120000.00,330250.00,13.326,36.674,'By Amount','2025-05-06 09:39:00'),(15,92,'PINV001','SILVER JEWELLERY',210.000,100.000,107.00,10700.00,0.00,10700.00,0.000,100.000,'By Amount','2025-05-06 09:39:00'),(16,94,'PINV002','DIAMOND JEWELLERY',52.500,20.000,9005.00,180100.00,0.00,180100.00,0.000,20.000,'By Amount','2025-05-06 10:44:25'),(17,96,'PINV003','SILVER JEWELLERY',250.000,120.000,107.00,12840.00,0.00,12840.00,0.000,120.000,'By Amount','2025-05-06 11:04:59'),(18,97,'PINV004','GOLD JEWELLERY',100.000,50.000,9005.00,450250.00,0.00,450250.00,0.000,50.000,'By Amount','2025-05-06 11:16:02'),(19,98,'PINV004','SILVER JEWELLERY',300.000,100.000,107.00,10700.00,0.00,10700.00,0.000,100.000,'By Amount','2025-05-06 11:16:02'),(20,99,'PINV004','DIAMOND JEWELLERY',100.000,30.000,9005.00,270150.00,0.00,270150.00,0.000,30.000,'By Amount','2025-05-06 11:16:02'),(21,100,'PINV005','GOLD JEWELLERY',100.000,50.000,9005.00,450250.00,0.00,450250.00,0.000,50.000,'By Amount','2025-05-09 04:32:43');
/*!40000 ALTER TABLE `ratecuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `rates_id` int NOT NULL AUTO_INCREMENT,
  `rate_date` date NOT NULL,
  `rate_time` time NOT NULL,
  `rate_16crt` decimal(10,2) DEFAULT NULL,
  `rate_18crt` decimal(10,2) DEFAULT NULL,
  `rate_22crt` decimal(10,2) DEFAULT NULL,
  `rate_24crt` decimal(10,2) DEFAULT NULL,
  `silver_rate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`rates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,'2024-12-16','12:30:00',4500.50,4700.75,5000.25,5500.00,750.00),(2,'2024-12-16','12:30:00',4500.50,4700.75,5000.25,5500.00,750.00),(3,'2024-12-16','14:30:00',4500.50,4700.75,5000.25,5500.00,750.00),(4,'2024-12-16','14:30:00',4500.50,4700.75,5000.25,5500.00,750.00),(5,'2024-12-16','14:30:00',4500.50,4700.75,5000.25,5500.00,750.00),(6,'2024-12-16','06:40:42',70000.00,75000.00,77000.00,85000.00,1000.00),(7,'2024-12-16','06:41:10',70000.00,75000.00,77000.00,85000.00,1500.00),(8,'2024-12-18','01:42:40',6500.00,70000.00,7135.00,7784.00,1000.00),(9,'2024-12-18','03:20:53',70000.00,75000.00,77000.00,85000.00,1000.00),(10,'2024-12-19','09:27:40',4759.00,5838.00,7135.00,7784.00,999.00),(11,'2024-12-21','04:18:40',4773.00,5809.00,7100.00,7745.00,99.00),(12,'2024-12-22','03:32:51',4773.00,5809.00,7100.00,7745.00,99.00),(13,'2024-12-28','02:50:49',7000.00,7500.00,7700.00,8000.00,999.00),(14,'2024-12-30','03:44:08',5200.00,5850.00,7150.00,7800.00,92.50),(15,'2025-01-16','05:05:22',5374.55,6046.36,7390.00,8061.82,95.50),(16,'2025-01-16','05:11:14',5375.00,6046.00,7390.00,8062.00,95.50),(17,'2025-02-02','07:55:58',5200.00,5850.00,7150.00,7800.00,95.50),(18,'2025-02-02','10:35:14',5200.00,5850.00,7150.00,7800.00,95.50),(19,'2025-02-11','14:52:30',5825.00,6554.00,8010.00,8738.00,95.50),(20,'2025-02-13','09:33:04',5775.00,6496.00,7940.00,8662.00,106.90),(21,'2025-02-13','12:36:06',5811.00,6554.00,7990.00,8716.00,106.90),(22,'2025-02-17','15:19:58',5811.00,6554.00,7990.00,8716.00,106.90),(23,'2025-02-17','15:20:30',5775.00,6496.00,7940.00,8662.00,106.90),(24,'2025-02-18','11:37:42',5796.00,6521.00,7970.00,8695.00,106.90),(25,'2025-02-20','09:34:03',5844.00,6575.00,8036.00,8767.00,106.90),(26,'2025-03-18','10:54:29',5844.00,6575.00,8036.00,8767.00,106.90),(27,'2025-04-11','18:45:15',5279.00,6687.00,8066.00,8799.00,107.00),(28,'2025-04-15','14:38:32',5891.00,7462.00,9000.00,9818.00,107.00),(29,'2025-04-26','16:28:09',5894.00,7466.00,9005.00,9824.00,107.00);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipts` (
  `receipt_id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `mode` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cheque_number` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receipt_no` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `total_amt` decimal(10,2) NOT NULL,
  `discount_amt` decimal(10,2) DEFAULT NULL,
  `cash_amt` decimal(10,2) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`receipt_id`),
  UNIQUE KEY `receipt_no` (`receipt_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipts`
--

LOCK TABLES `receipts` WRITE;
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
INSERT INTO `receipts` VALUES (3,'2024-12-02','Cash',NULL,'R123456','John Doe',500.00,50.00,450.00,'Payment for services','2024-12-22 09:06:30'),(5,'2024-12-02','Cash','619865484653','R1234567','John Doe',500.00,50.00,450.00,'Payment for services','2024-12-22 09:06:30');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_details`
--

DROP TABLE IF EXISTS `repair_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pincode` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aadhar_card` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gst_in` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pan_card` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `terms` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `opentag_id` int DEFAULT NULL,
  `metal` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metal_type` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `design_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purity` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selling_purity` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `printing_purity` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `custom_purity` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pricing` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gross_weight` decimal(10,3) DEFAULT NULL,
  `stone_weight` decimal(10,3) DEFAULT NULL,
  `weight_bw` decimal(10,3) DEFAULT NULL,
  `stone_price` decimal(10,2) DEFAULT NULL,
  `va_on` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `va_percent` decimal(10,2) DEFAULT NULL,
  `wastage_weight` decimal(10,3) DEFAULT NULL,
  `total_weight_av` decimal(10,3) DEFAULT NULL,
  `mc_on` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mc_per_gram` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `making_charges` decimal(10,2) DEFAULT NULL,
  `disscount_percentage` decimal(10,2) DEFAULT NULL,
  `disscount` decimal(10,2) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `rate_24k` decimal(10,2) DEFAULT NULL,
  `rate_amt` decimal(10,2) DEFAULT NULL,
  `tax_percent` decimal(5,2) DEFAULT NULL,
  `tax_amt` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `cash_amount` decimal(10,2) DEFAULT NULL,
  `card_amount` decimal(10,2) DEFAULT NULL,
  `card_amt` decimal(10,2) DEFAULT NULL,
  `chq` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chq_amt` decimal(10,2) DEFAULT NULL,
  `online` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `online_amt` decimal(10,2) DEFAULT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `taxable_amount` decimal(10,2) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `net_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_image` longtext COLLATE utf8mb4_general_ci,
  `imagePreview` longtext COLLATE utf8mb4_general_ci,
  `assigning` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'pending',
  `worker_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `net_bill_amount` decimal(10,2) DEFAULT NULL,
  `paid_amt` decimal(10,2) DEFAULT NULL,
  `old_exchange_amt` decimal(10,2) DEFAULT NULL,
  `scheme_amt` decimal(10,2) DEFAULT NULL,
  `sale_return_amt` decimal(10,2) DEFAULT NULL,
  `receipts_amt` decimal(10,2) DEFAULT NULL,
  `bal_after_receipts` decimal(10,2) DEFAULT NULL,
  `bal_amt` decimal(10,2) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `original_total_price` decimal(10,2) DEFAULT NULL,
  `pieace_cost` decimal(10,2) DEFAULT NULL,
  `mrp_price` decimal(10,2) DEFAULT NULL,
  `hm_charges` decimal(10,2) DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sale_status` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `original_piece_taxable_amt` decimal(10,2) DEFAULT NULL,
  `piece_taxable_amt` decimal(10,2) DEFAULT NULL,
  `festival_discount` decimal(10,2) DEFAULT NULL,
  `time` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `advance_amt` decimal(10,2) DEFAULT NULL,
  `customerImage` varchar(450) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2439 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_details`
--

LOCK TABLES `repair_details` WRITE;
/*!40000 ALTER TABLE `repair_details` DISABLE KEYS */;
INSERT INTO `repair_details` VALUES (2411,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-14','INV001','GBR001',138,56,NULL,'GOLD BRACELETS','GOLD','Traditional','98 %','98 %','91.6HM',NULL,'By Weight','GOLD JEWELLERY','GOLD BRACELETS',15.000,0.000,15.000,0.00,'Gross Weight',5.00,0.750,15.750,'MC %','10.00',15163.34,NULL,NULL,9627.52,9824.00,151633.44,3.00,4986.66,171208.54,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sales',1,176279.53,5288.39,181567.92,'2025-05-15 11:25:56',NULL,NULL,'pending',NULL,NULL,NULL,181568.00,0.00,0.00,0.00,0.00,50000.00,131568.00,181568.00,NULL,NULL,NULL,NULL,61.80,NULL,0.00,60.00,NULL,'Delivered',0.00,0.00,634.90,'03:47 pm',NULL,NULL,NULL),(2412,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-14','INV001','SAN001',139,66,NULL,'SILVER ANKLETS','SILVER',NULL,'95 %','98 %','80HM',NULL,'By Weight','SILVER JEWELLERY','SILVER ANKLETS',50.000,0.000,50.000,0.00,'Gross Weight',5.00,2.500,52.500,'MC / Gram','100.00',5250.00,NULL,NULL,104.86,107.00,5505.15,3.00,301.73,10359.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sales',1,176279.53,5288.39,181567.92,'2025-05-15 11:25:56',NULL,NULL,'pending',NULL,NULL,NULL,181568.00,0.00,0.00,0.00,0.00,50000.00,131568.00,181568.00,NULL,NULL,NULL,NULL,61.80,NULL,0.00,60.00,NULL,'Delivered',0.00,0.00,757.50,'03:47 pm',NULL,NULL,NULL),(2413,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-14','INV002','RB001',138,NULL,NULL,'GOLD BANGLES','GOLD','Traditional','95 %','98 %','91.6HM',NULL,'By Weight','GOLD JEWELLERY',NULL,50.000,NULL,50.000,NULL,'Gross Weight',5.00,2.500,52.500,'MC %','10',50544.48,NULL,NULL,9627.52,9824.00,505444.80,3.00,16617.99,570550.94,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sales',1,553932.95,16617.99,570550.94,'2025-05-14 10:18:51',NULL,NULL,'pending',NULL,NULL,NULL,570551.00,0.00,0.00,0.00,0.00,0.00,0.00,570551.00,NULL,NULL,NULL,NULL,61.80,NULL,NULL,60.00,NULL,'Not Delivered',0.00,0.00,2116.33,'03:48 pm',NULL,NULL,NULL),(2414,32,'9886939419','SATYA NARAYAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cash','2025-05-14','INV003','RB002',139,NULL,NULL,'SILVER ANKLETS','SILVER','Bridal ','95 %','98 %','80HM',NULL,'By Weight','SILVER JEWELLERY',NULL,100.000,NULL,100.000,NULL,'Gross Weight',NULL,0.000,100.000,'MC / Gram','100',10000.00,NULL,NULL,104.86,107.00,10486.00,3.00,571.38,19617.38,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sales',1,47546.00,1426.38,48972.38,'2025-05-14 10:21:21',NULL,NULL,'pending',NULL,NULL,NULL,48972.00,0.00,0.00,0.00,0.00,0.00,0.00,48972.00,NULL,NULL,NULL,NULL,61.80,NULL,NULL,60.00,NULL,'Delivered',0.00,0.00,1500.00,'03:50 pm',NULL,NULL,NULL),(2415,32,'9886939419','SATYA NARAYAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Cash','2025-05-14','INV003','RB003',140,NULL,NULL,'SILVER PHOTO FRAMES','SILVER',NULL,'95 %','98 %','80HM',NULL,'By fixed','SILVER ARTICLES',NULL,NULL,NULL,0.000,NULL,'Gross Weight',NULL,0.000,0.000,'MC %',NULL,0.00,NULL,NULL,NULL,107.00,30000.00,3.00,855.00,29355.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Sales',5,47546.00,1426.38,48972.38,'2025-05-14 10:21:21',NULL,NULL,'pending',NULL,NULL,NULL,48972.00,0.00,0.00,0.00,0.00,0.00,0.00,48972.00,NULL,NULL,NULL,NULL,61.80,6000.00,6180.00,60.00,NULL,'Delivered',30000.00,28500.00,1500.00,'03:50 pm',NULL,NULL,NULL),(2416,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-14',NULL,'RB001',138,NULL,NULL,'GOLD RINGS','GOLD','Elegant Gold Ring','22 KT | 91.6HM',NULL,NULL,NULL,'By Weight','GOLD JEWELLERY',NULL,10.000,1.000,9.000,500.00,'Gross Weight',5.00,0.500,9.500,'MC %','10',8554.75,NULL,NULL,9005.00,NULL,85547.50,3.00,2839.87,97502.12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Orders',1,116122.25,3483.67,119605.92,'2025-05-15 11:35:31',NULL,NULL,'pending',NULL,NULL,NULL,119606.00,0.00,0.00,0.00,0.00,50000.00,69606.00,119606.00,NULL,'ORD001',NULL,NULL,NULL,NULL,NULL,60.00,NULL,'Not Delivered',0.00,0.00,NULL,'03:53 pm',0.00,'','2'),(2417,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-14',NULL,'RB002',139,NULL,NULL,'SILVER ANKLETS','SILVER','Traditional','22 KT | 91.6HM',NULL,NULL,NULL,'By Weight','SILVER JEWELLERY',NULL,100.000,NULL,100.000,NULL,'Gross Weight',NULL,0.000,100.000,'MC %','100',10700.00,NULL,NULL,107.00,NULL,10700.00,3.00,643.80,22103.80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Orders',NULL,116122.25,3483.67,119605.92,'2025-05-15 11:35:31',NULL,NULL,'pending',NULL,NULL,NULL,119606.00,0.00,0.00,0.00,0.00,50000.00,69606.00,119606.00,NULL,'ORD001',NULL,NULL,NULL,NULL,NULL,60.00,NULL,'Delivered',0.00,0.00,NULL,'03:53 pm',0.00,'',NULL),(2418,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-15','INV006','RB001',138,NULL,NULL,'GOLD MANGALSUTRAS','GOLD','Bridal ','22 KT | 91.6HM',NULL,NULL,NULL,'By Weight','GOLD JEWELLERY',NULL,30.000,NULL,30.000,NULL,'Gross Weight',NULL,0.000,30.000,'MC %','10',27015.00,NULL,NULL,9005.00,9824.00,270150.00,3.00,8881.64,304936.19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Orders',1,296054.55,8881.64,304936.19,'2025-05-15 09:19:34',NULL,NULL,'pending',NULL,NULL,NULL,304936.00,0.00,0.00,0.00,0.00,0.00,0.00,304936.00,NULL,'ORD002','Converted',NULL,306141.75,NULL,NULL,60.00,NULL,'Delivered',0.00,0.00,1170.45,'02:49 pm',0.00,'',NULL),(2419,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-14','INV004','RB002',139,NULL,NULL,'SILVER BANGLES','SILVER',NULL,'22 KT | 91.6HM',NULL,NULL,NULL,'By Weight','SILVER JEWELLERY',NULL,50.000,NULL,50.000,NULL,'Gross Weight',NULL,0.000,50.000,'MC / Gram','100',5000.00,NULL,NULL,107.00,NULL,5350.00,3.00,312.30,10722.30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Orders',1,10410.00,312.30,10722.30,'2025-05-14 10:24:24',NULL,NULL,'pending',NULL,NULL,NULL,10722.00,0.00,0.00,0.00,0.00,0.00,0.00,10722.00,NULL,'ORD003','Converted',NULL,NULL,NULL,NULL,60.00,NULL,'Delivered',0.00,0.00,NULL,'03:54 pm',0.00,'',NULL),(2420,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-14','INV004','RB002',139,NULL,NULL,'SILVER BANGLES','SILVER',NULL,'22 KT | 91.6HM',NULL,NULL,NULL,NULL,'SILVER JEWELLERY',NULL,50.000,NULL,50.000,NULL,'Gross Weight',NULL,0.000,50.000,'MC / Gram','100',5000.00,NULL,NULL,107.00,NULL,5350.00,3.00,312.30,10722.30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ConvertedInvoice',1,10410.00,312.30,10722.30,'2025-05-14 10:24:24',NULL,NULL,'pending',NULL,NULL,NULL,10722.00,0.00,0.00,0.00,NULL,0.00,0.00,10722.00,NULL,'ORD003','Converted',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL),(2421,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2025-05-13','INV005',NULL,NULL,NULL,NULL,'GOLD RINGS','GOLD',NULL,'22 KT',NULL,NULL,NULL,NULL,'GOLD  JEWELLERY','GOLD RINGS',12.000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3000.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ConvertedRepairInvoice',1,NULL,NULL,3000.00,'2025-05-14 10:25:51',NULL,NULL,'pending',NULL,NULL,NULL,3000.00,NULL,NULL,NULL,NULL,NULL,NULL,3000.00,NULL,'RPN001','Converted',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'03:55 pm',NULL,NULL,NULL),(2428,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-15','INV006','RB001',138,NULL,NULL,'GOLD MANGALSUTRAS','GOLD','Bridal ','22 KT | 91.6HM',NULL,NULL,NULL,'By Weight','GOLD JEWELLERY',NULL,30.000,NULL,30.000,NULL,'Gross Weight',NULL,0.000,30.000,'MC %','10',27015.00,NULL,NULL,9005.00,9824.00,270150.00,3.00,8881.64,304936.19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ConvertedInvoice',1,296054.55,8881.64,304936.19,'2025-05-15 09:19:34',NULL,NULL,'pending',NULL,NULL,NULL,304936.00,0.00,0.00,0.00,0.00,0.00,0.00,304936.00,NULL,'ORD002','Converted',NULL,306141.75,NULL,NULL,60.00,NULL,'Delivered',0.00,0.00,1170.45,'02:49 pm',NULL,NULL,NULL),(2429,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-16','INV007','GNP001',138,60,NULL,'GOLD NOSEPIN','GOLD','Traditional','22 KT | 91.6HM',NULL,NULL,NULL,'By Weight','GOLD JEWELLERY','GOLD NOSEPIN',5.000,0.000,5.000,0.00,'Gross Weight',0.00,0.000,5.000,'MC %',NULL,0.00,NULL,NULL,9005.00,NULL,45025.00,3.00,1352.55,46437.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Orders',1,45085.00,1352.55,46437.55,'2025-05-16 04:40:34',NULL,NULL,'pending',NULL,NULL,NULL,46438.00,0.00,0.00,0.00,0.00,1000.00,45438.00,46438.00,NULL,'ORD004','Converted',NULL,NULL,NULL,NULL,60.00,NULL,'Delivered',0.00,0.00,NULL,'06:03 pm',0.00,'',NULL),(2430,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-16','INV007','GNP001',138,60,NULL,'GOLD NOSEPIN','GOLD','Traditional','22 KT | 91.6HM',NULL,NULL,NULL,'By Weight','GOLD JEWELLERY','GOLD NOSEPIN',5.000,0.000,5.000,0.00,'Gross Weight',0.00,0.000,5.000,'MC %',NULL,0.00,NULL,NULL,9005.00,NULL,45025.00,3.00,1352.55,46437.55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ConvertedInvoice',1,45085.00,1352.55,46437.55,'2025-05-16 04:40:34',NULL,NULL,'pending',NULL,NULL,NULL,46438.00,0.00,0.00,0.00,0.00,1000.00,45438.00,46438.00,NULL,'ORD004','Converted',NULL,NULL,NULL,NULL,60.00,NULL,'Delivered',0.00,0.00,NULL,'10:10 am',NULL,NULL,NULL),(2438,2,'9876543210','JOHN DOE','john.doe@example.com','123 Main Street','Suite 101','New York','100001','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','Cash','2025-05-17','INV008',NULL,NULL,NULL,NULL,'GOLD NOSEPIN','GOLD',NULL,'22 KT','22 KT','22 KT',NULL,'By Weight','GOLD JEWELLERY','GOLD NOSEPIN',1.000,NULL,NULL,NULL,NULL,NULL,NULL,1.000,NULL,NULL,NULL,NULL,NULL,1000.00,NULL,1000.00,0.00,NULL,1000.00,1000.00,NULL,NULL,NULL,NULL,NULL,NULL,'ConvertedRepairInvoice',NULL,1000.00,0.00,1000.00,'2025-05-17 09:19:35',NULL,NULL,'pending',NULL,NULL,NULL,1000.00,1000.00,0.00,0.00,0.00,0.00,0.00,0.00,NULL,'RPN002','Converted',NULL,NULL,NULL,NULL,NULL,NULL,'Not Delivered',0.00,0.00,NULL,'02:49 pm',NULL,NULL,NULL);
/*!40000 ALTER TABLE `repair_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairdetails`
--

DROP TABLE IF EXISTS `repairdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repairdetails` (
  `repairdetails_id` int NOT NULL AUTO_INCREMENT,
  `repair_id` int DEFAULT NULL,
  `metal_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `weight` float DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `rate_type` enum('Per Qty','Per Weight') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `overall_weight` float DEFAULT NULL,
  `overall_qty` int DEFAULT NULL,
  `overall_total` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`repairdetails_id`),
  KEY `repair_id` (`repair_id`),
  CONSTRAINT `repairdetails_ibfk_1` FOREIGN KEY (`repair_id`) REFERENCES `repairs` (`repair_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairdetails`
--

LOCK TABLES `repairdetails` WRITE;
/*!40000 ALTER TABLE `repairdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `repairdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairs`
--

DROP TABLE IF EXISTS `repairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repairs` (
  `repair_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `staff` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metal` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `counter` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `metal_type` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `item` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `purity` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_category` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gross_weight` decimal(10,3) DEFAULT NULL,
  `pcs` int DEFAULT NULL,
  `estimated_dust` decimal(10,3) DEFAULT NULL,
  `estimated_amt` decimal(10,2) DEFAULT NULL,
  `extra_weight` decimal(10,3) DEFAULT NULL,
  `stone_value` decimal(10,2) DEFAULT NULL,
  `making_charge` decimal(10,2) DEFAULT NULL,
  `handling_charge` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `repair_no` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` longtext COLLATE utf8mb4_general_ci,
  `gross_wt_after_repair` decimal(10,2) DEFAULT NULL,
  `total_amt` decimal(10,2) DEFAULT NULL,
  `invoice` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_number` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`repair_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairs`
--

LOCK TABLES `repairs` WRITE;
/*!40000 ALTER TABLE `repairs` DISABLE KEYS */;
INSERT INTO `repairs` VALUES (48,2,'JOHN DOE','9876543210','john.doe@example.com','123 Main Street','Suite 101','','ADMIN','2025-05-16','','','1','Repair','2025-05-13','GOLD','GOLD RINGS','','Gold','22 KT','GOLD  JEWELLERY','GOLD RINGS',12.000,1,1.000,5000.00,0.000,0.00,1000.00,0.00,0.00,'New York','RPN001','Delivered to Customer','2025-05-14 10:25:51','data:image/avif;base64,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',16.00,3000.00,'Converted','INV005'),(49,2,'JOHN DOE','9876543210','john.doe@example.com','123 Main Street','Suite 101','','ADMIN','2025-05-16','','','1','Repair','2025-05-13','GOLD','GOLD NOSEPIN','','Gold','22 KT','GOLD JEWELLERY','GOLD NOSEPIN',5.000,1,0.500,2000.00,0.000,0.00,500.00,0.00,0.00,'New York','RPN002','Delivered to Customer','2025-05-17 09:19:35',NULL,5.50,1000.00,'Converted','INV008'),(50,7,'PAVANI','9676704365','pavanimyana2000@gmail.com','h-no 5-47/2/d Chandrampet sircilla','Chandrampet','','ADMIN','2025-05-17','','','12','Repair','2025-05-14','GOLD','Braclet','','Gold','22 KT','GOLD  JEWELLERY','Braclet',15.000,1,1.000,5000.00,0.000,0.00,0.00,0.00,0.00,'Rajanna Sircilla','RPN003','Pending','2025-05-14 09:46:19','data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEAAQABAAD/2wBDAAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8tMC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCj/wAARCAQABAADASIAAhEBAxEB/8QAHAABAAIDAQEBAAAAAAAAAAAAAAUGAwQHAgEI/8QASxAAAgIBAgMFBgIGCAUDAgYDAAECAwQFERIhMQYTQVFhFCJxgZGhMrEHFSNCUsEzQ2JygpLR8BYkU6LhY7LxJTQXNURzwtJ0g4T/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAwQFAgEG/8QAMxEBAAICAQMBBQcDBQEBAAAAAAECAxEEEiExQQUTIlHwFDJhcYGRobHB0RUjQuHxUjP/2gAMAwEAAhEDEQA/AP0qAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//2Q==',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `repairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Telangana','36'),(2,'Jammu and Kashmir','01'),(3,'Himachal Pradesh','02'),(4,'Punjab','03'),(5,'Chandigarh','04'),(6,'Uttarakhand','05'),(7,'Haryana','06'),(8,'Rajasthan','08'),(9,'Uttar Pradesh','09'),(10,'Bihar','10'),(11,'Sikkim','11'),(12,'Arunachal Pradesh','12'),(13,'Nagaland','13'),(14,'Manipur','14'),(15,'Mizoram','15'),(16,'Tripura','16'),(17,'Meghalaya','17'),(18,'Assam','18'),(19,'West Bengal','19'),(20,'Jharkhand','20'),(21,'Odisha','21'),(22,'Chattisgarh','22'),(23,'Madhya Pradesh','23'),(24,'Gujarat','24'),(25,'Maharashtra','27'),(26,'Karnataka','29'),(27,'Goa','30'),(28,'Kerala','32'),(29,'Tamil Nadu','33'),(30,'Andhra Pradesh','37');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stone_details`
--

DROP TABLE IF EXISTS `stone_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stone_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stoneName` varchar(100) NOT NULL,
  `cut` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `clarity` varchar(50) DEFAULT NULL,
  `stoneWt` decimal(10,3) DEFAULT NULL,
  `caratWt` decimal(10,3) DEFAULT NULL,
  `stonePrice` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `purchase_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stone_details`
--

LOCK TABLES `stone_details` WRITE;
/*!40000 ALTER TABLE `stone_details` DISABLE KEYS */;
INSERT INTO `stone_details` VALUES (1,'Rubi','','','',1.000,5.000,100.00,500.00,24),(2,'Rubi','','','',2.000,10.000,10.00,100.00,26),(3,'Rubi','','','',5.000,25.000,100.00,2500.00,28),(4,'Diamond','','','',4.000,20.000,200.00,4000.00,29),(5,'Rubi','','','',6.000,30.000,150.00,4500.00,3),(6,'Diamond','','','',10.000,50.000,150.00,7500.00,5),(7,'Rubi','','','',20.000,100.000,20.00,2000.00,15),(8,'Diamond','','','',10.000,50.000,100.00,5000.00,48);
/*!40000 ALTER TABLE `stone_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `subcategory_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `metal_type_id` int DEFAULT NULL,
  `metal_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purity` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_purity` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `printing_purity` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (74,138,10,'GOLD','GOLD BRACELETS','GOLD JEWELLERY','GBR','98 %','98 %','91.6HM',NULL),(75,138,10,'GOLD','GOLD CHAINS','GOLD JEWELLERY','GCH','98 %','98 %','91.6HM',NULL),(76,138,10,'GOLD','GOLD RINGS','GOLD JEWELLERY','GRN','98 %','98 %','91.6HM',NULL),(77,138,10,'GOLD','GOLD MANGALSUTRAS','GOLD JEWELLERY','GMS','95 %','98 %','91.6HM',NULL),(78,138,10,'GOLD','GOLD BANGLES','GOLD JEWELLERY','GBS','95 %','98 %','91.6HM',NULL),(79,140,11,'SILVER','SILVER PHOTO FRAMES','SILVER ARTICLES','SFR','95 %','98 %','80HM',NULL),(80,140,11,'SILVER','SILVER POOJA SETS','SILVER ARTICLES','SPS','95 %','98 %','80HM',NULL),(81,140,11,'SILVER','SILVER IDOLS','SILVER ARTICLES','SID','98 %','98 %','80HM',NULL),(82,141,NULL,'DIAMOND','DIAMOND RING','DIAMOND JEWELLERY','DRN','95 %','98 %','91.6HM',NULL),(83,139,11,'SILVER','SILVER ANKLETS','SILVER JEWELLERY','SAN','95 %','98 %','80HM',NULL),(84,139,NULL,'SILVER','SILVER RING','SILVER JEWELLERY','SRG','98 %','98 %','80HM',NULL),(85,138,NULL,'GOLD','GOLD NOSEPIN','GOLD JEWELLERY','GNP','95 %','98 %','91.6HM',NULL),(87,141,NULL,'DIAMOND','DIAMOND CHAIN','DIAMOND JEWELLERY','DCH','95 %','98 %','91.6HM',NULL),(89,141,NULL,'DIAMOND','DIAMOND NECKLACE','DIAMOND JEWELLERY','DNC','98 %','98 %','91.6HM',NULL),(92,139,NULL,'SILVER','SILVER CHAIN','SILVER JEWELLERY','SCH','90 %','98 %','80HM',NULL),(96,138,NULL,'GOLD','GOLD EARRINGS','GOLD JEWELLERY','GER','90 %','95 %','91.6HM',NULL),(97,139,NULL,'SILVER','SILVER BANGLES','SILVER JEWELLERY','SBG','90 %','95 %','80HM',NULL),(98,139,NULL,'SILVER','SILVER TOE RINGS','SILVER JEWELLERY','STR','90 %','92 %','80HM',NULL),(100,138,NULL,'GOLD','GOLD PENDANTS','GOLD JEWELLERY','GPN','95 %','95 %','91.6HM',NULL),(102,139,NULL,'SILVER','SILVER BRACELETS','SILVER JEWELLERY','SBR','92','95','80HM',NULL),(103,141,13,'DIAMOND','DIAMOND BRACELET','DIAMOND JEWELLERY','DBR','92 %','95 %','91.6HM',NULL),(122,143,19,'OTHERS','PHOTO FRAME','PACKAGING MATERIAL','PF','95','95','95','By fixed');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxslabs`
--

DROP TABLE IF EXISTS `taxslabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxslabs` (
  `tax_id` int NOT NULL AUTO_INCREMENT,
  `TaxSlabID` int NOT NULL,
  `TaxSlabName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `TaxationType` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `SGSTPercentage` float DEFAULT NULL,
  `CGSTPercentage` float DEFAULT NULL,
  `IGSTPercentage` float DEFAULT NULL,
  `TaxCategory` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxslabs`
--

LOCK TABLES `taxslabs` WRITE;
/*!40000 ALTER TABLE `taxslabs` DISABLE KEYS */;
INSERT INTO `taxslabs` VALUES (1,9,'03% GST','Taxable',1.5,1.5,3,'Goods'),(2,8,'18% GST','Taxable',9,9,18,'Goods'),(4,4,'12% GST','Taxable',6,6,12,'Goods'),(5,3,'05% GST','Taxable',2.5,2.5,5,'Goods'),(6,1,'Tax Free','Taxable',0,0,0,'Goods'),(7,2,'28%','Taxable',14,14,28,'Goods');
/*!40000 ALTER TABLE `taxslabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updated_values_table`
--

DROP TABLE IF EXISTS `updated_values_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `updated_values_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pcs` int DEFAULT NULL,
  `gross_weight` decimal(10,3) DEFAULT NULL,
  `bal_pcs` int DEFAULT NULL,
  `bal_gross_weight` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `tag_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updated_values_table`
--

LOCK TABLES `updated_values_table` WRITE;
/*!40000 ALTER TABLE `updated_values_table` DISABLE KEYS */;
INSERT INTO `updated_values_table` VALUES (4,'141',5,100.000,5,'100','2025-03-22 13:47:43',3),(5,'140',10,0.000,10,'0','2025-03-22 13:48:29',4),(6,'140',10,0.000,10,'0','2025-03-22 14:58:51',5),(7,'143',50,0.000,50,'0','2025-03-24 13:29:28',6),(8,'138',10,100.000,10,'100','2025-03-26 17:00:21',7),(9,'139',10,100.000,10,'100','2025-03-26 17:02:23',7),(12,'139',5,100.000,5,'100','2025-03-26 17:14:00',9),(17,'138',0,100.000,0,'100','2025-03-27 16:06:33',10),(18,'138',0,100.000,0,'100','2025-03-27 16:19:53',11),(19,'138',5,100.000,0,'0','2025-03-27 18:27:21',12),(20,'139',2,100.000,1,'50','2025-03-27 18:27:28',13),(21,'140',10,0.000,5,'0','2025-03-29 11:17:09',14),(22,'138',10,100.000,10,'100','2025-04-01 09:46:43',15),(23,'139',5,100.000,5,'100','2025-04-01 09:48:19',16),(25,'138',1,30.000,1,'30','2025-04-03 12:17:36',17),(26,'143',10,0.000,10,'0','2025-04-04 17:11:36',18),(27,'138',10,100.000,10,'100','2025-05-06 14:49:44',19),(28,'138',10,100.000,10,'100','2025-05-06 15:08:26',20),(29,'139',10,200.000,10,'200','2025-05-06 15:08:52',21),(30,'141',1,50.000,1,'50','2025-05-06 16:14:07',22),(31,'138',2,50.000,2,'50','2025-05-06 16:14:24',23),(32,'139',10,250.000,10,'250','2025-05-06 16:34:50',24),(33,'138',10,100.000,10,'100','2025-05-06 16:45:35',25),(34,'139',10,300.000,10,'300','2025-05-06 16:45:45',26),(35,'141',5,100.000,5,'100','2025-05-06 16:45:59',27),(36,'138',10,100.000,10,'100','2025-05-07 09:47:00',28),(37,'138',10,100.000,10,'100','2025-05-09 10:02:41',29);
/*!40000 ALTER TABLE `updated_values_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urd_purchase_details`
--

DROP TABLE IF EXISTS `urd_purchase_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `urd_purchase_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state_code` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aadhar_card` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gst_in` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pan_card` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `urdpurchase_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_id` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metal` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purity` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hsn_code` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gross` decimal(10,3) DEFAULT NULL,
  `dust` decimal(10,3) DEFAULT NULL,
  `touch_percent` decimal(5,2) DEFAULT NULL,
  `ml_percent` decimal(5,2) DEFAULT NULL,
  `eqt_wt` decimal(10,3) DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_general_ci,
  `rate` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urd_purchase_details`
--

LOCK TABLES `urd_purchase_details` WRITE;
/*!40000 ALTER TABLE `urd_purchase_details` DISABLE KEYS */;
INSERT INTO `urd_purchase_details` VALUES (29,2,'John Doe','9876543210','john.doe@example.com','123 Main Street','Suite 101','New York','New York','NY01','123456789012','22AAAAA0000A1Z5','ABCDE1234F','2025-02-19','URD001','','Braclet','GOLD','22 KT','',10.000,2.000,0.00,1.00,7.250,'Paid',7970.00,57782.50,'2025-02-19 09:58:04');
/*!40000 ALTER TABLE `urd_purchase_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `retype_password` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (17,'ADMIN','9876543210','admin@gmail.com','admin@123',NULL,'admin',NULL),(18,'PAVANI','9856741230','pavani@gmail.com','Pavani@123',NULL,'super admin',NULL),(19,'SAI','7412589630','sai@gmail.com','Sai@123',NULL,'Operator',NULL);
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

-- Dump completed on 2025-05-17 18:15:31
