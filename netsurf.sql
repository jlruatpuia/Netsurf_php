/*
Navicat MySQL Data Transfer

Source Server         : MySql_localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : netsurf

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-02-22 00:38:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bal_mas
-- ----------------------------
DROP TABLE IF EXISTS `bal_mas`;
CREATE TABLE `bal_mas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balDate` varchar(10) DEFAULT NULL,
  `balDesc` varchar(225) DEFAULT NULL,
  `drcr` varchar(45) DEFAULT NULL,
  `balAmount` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `Accepted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21965 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bal_mat
-- ----------------------------
DROP TABLE IF EXISTS `bal_mat`;
CREATE TABLE `bal_mat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balDate` varchar(10) DEFAULT NULL,
  `balDesc` varchar(225) DEFAULT NULL,
  `drcr` varchar(45) DEFAULT NULL,
  `balAmount` double DEFAULT NULL,
  `Accepted` tinyint(1) DEFAULT NULL,
  `Balance` double NOT NULL DEFAULT '0',
  `Remarks` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1359 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `BillID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerNo` varchar(45) NOT NULL,
  `PaymentType` varchar(45) NOT NULL,
  `PaidForMonth` varchar(45) NOT NULL,
  `PaidForYear` int(11) NOT NULL,
  `PaidWhen` varchar(45) NOT NULL,
  `PaidAmount` int(11) NOT NULL,
  `AcceptedDate` varchar(45) NOT NULL,
  `AcceptedBy` int(11) NOT NULL,
  `ReceivedFrom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BillID`),
  KEY `fk_cus_bill_idx` (`CustomerNo`)
) ENGINE=InnoDB AUTO_INCREMENT=16974 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for complaint
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `ComplaintID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerNo` varchar(45) NOT NULL,
  `Nature` varchar(255) NOT NULL DEFAULT '',
  `ComplainDate` varchar(45) NOT NULL,
  `Resolved` tinyint(4) DEFAULT NULL,
  `ResolvedBy` varchar(45) DEFAULT NULL,
  `ResolvedDate` varchar(45) DEFAULT NULL,
  `Remarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ComplaintID`)
) ENGINE=InnoDB AUTO_INCREMENT=10156 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerNo` varchar(45) NOT NULL,
  `CustomerName` varchar(45) NOT NULL,
  `Category` varchar(45) NOT NULL,
  `Sex` varchar(1) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PinNo` varchar(10) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `TelOff` varchar(45) DEFAULT NULL,
  `TelRes` varchar(45) DEFAULT NULL,
  `ContactPerson` varchar(45) DEFAULT NULL,
  `EmailPri` varchar(45) DEFAULT NULL,
  `EmailAlt` varchar(45) DEFAULT NULL,
  `PanNo` varchar(20) DEFAULT NULL,
  `Education` varchar(45) DEFAULT NULL,
  `EdnSpecify` varchar(45) DEFAULT NULL,
  `Occupation` varchar(45) DEFAULT NULL,
  `PlanSelected` varchar(45) NOT NULL,
  `Speed` varchar(45) DEFAULT NULL,
  `DeviceUsed` varchar(45) DEFAULT NULL,
  `Knowledge` varchar(45) DEFAULT NULL,
  `Photo` longblob,
  `Pending` tinyint(4) DEFAULT '0',
  `Material` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerNo_UNIQUE` (`CustomerNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2000 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for drcr
-- ----------------------------
DROP TABLE IF EXISTS `drcr`;
CREATE TABLE `drcr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `dtDate` varchar(45) NOT NULL,
  `DC` varchar(45) NOT NULL,
  `Amount` double NOT NULL,
  `Details` varchar(200) DEFAULT NULL,
  `Remarks` varchar(45) DEFAULT NULL,
  `Accepted` tinyint(4) NOT NULL,
  `Balance` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6798 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for installation
-- ----------------------------
DROP TABLE IF EXISTS `installation`;
CREATE TABLE `installation` (
  `InstID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerNo` varchar(45) NOT NULL,
  `IP_Radio` varchar(45) DEFAULT NULL,
  `IP_Router` varchar(45) DEFAULT NULL,
  `MAC_Radio` varchar(45) DEFAULT NULL,
  `MAC_Router` varchar(45) DEFAULT NULL,
  `IP_AP` varchar(45) DEFAULT NULL,
  `MAC_AP` varchar(45) DEFAULT NULL,
  `ID_AP` varchar(45) DEFAULT NULL,
  `Tariff` varchar(45) DEFAULT NULL,
  `ServiceType` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `InsDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`InstID`)
) ENGINE=InnoDB AUTO_INCREMENT=3134 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for issue
-- ----------------------------
DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue` (
  `IssueID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TransDate` varchar(45) NOT NULL,
  PRIMARY KEY (`IssueID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for otp
-- ----------------------------
DROP TABLE IF EXISTS `otp`;
CREATE TABLE `otp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerNo` varchar(45) NOT NULL,
  `PaymentDate` varchar(45) NOT NULL,
  `PaymentType` varchar(45) NOT NULL,
  `Amount` double NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1098 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for outgoing
-- ----------------------------
DROP TABLE IF EXISTS `outgoing`;
CREATE TABLE `outgoing` (
  `OutgoingID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`OutgoingID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for pet_cash
-- ----------------------------
DROP TABLE IF EXISTS `pet_cash`;
CREATE TABLE `pet_cash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balDate` varchar(10) DEFAULT NULL,
  `balDesc` varchar(45) DEFAULT NULL,
  `drcr` varchar(45) DEFAULT NULL,
  `balAmount` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `accepted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `PurchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PurchaseDate` varchar(45) NOT NULL,
  `InvoiceNo` int(11) NOT NULL,
  `Accepted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`PurchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for returns
-- ----------------------------
DROP TABLE IF EXISTS `returns`;
CREATE TABLE `returns` (
  `ReturnID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TransDate` varchar(45) NOT NULL,
  PRIMARY KEY (`ReturnID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for sales
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `SalesID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemID` int(11) NOT NULL,
  `Price` double NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `SoldDate` varchar(45) NOT NULL,
  `InvoiceNo` int(11) NOT NULL,
  `CustomerNo` varchar(45) DEFAULT NULL,
  `TransType` varchar(45) DEFAULT NULL,
  `Accepted` tinyint(4) DEFAULT NULL,
  `Description` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`SalesID`)
) ENGINE=InnoDB AUTO_INCREMENT=1535 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(45) NOT NULL,
  `Description` varchar(45) NOT NULL,
  `BuyingValue` double NOT NULL,
  `SellingValue` double DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for trans
-- ----------------------------
DROP TABLE IF EXISTS `trans`;
CREATE TABLE `trans` (
  `TransID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `IssuedQty` int(11) NOT NULL,
  `ReturnedQty` int(11) NOT NULL,
  `IssueDate` varchar(45) NOT NULL,
  `ReturnDate` varchar(45) NOT NULL,
  `Technician` varchar(45) DEFAULT NULL,
  `CustomerNo` varchar(45) DEFAULT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`TransID`)
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for uploaded
-- ----------------------------
DROP TABLE IF EXISTS `uploaded`;
CREATE TABLE `uploaded` (
  `UploadedID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerNo` varchar(45) NOT NULL,
  `PaymentType` varchar(45) NOT NULL,
  `PaidForMonth` varchar(45) NOT NULL,
  `PaidForYear` int(11) NOT NULL,
  `PaidWhen` varchar(11) NOT NULL,
  `PaidAmount` int(11) NOT NULL,
  `Accepted` tinyint(4) NOT NULL,
  `ReceivedFrom` varchar(255) DEFAULT NULL,
  `ReceivedBy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`UploadedID`),
  KEY `fk_cus_bill_idx` (`CustomerNo`)
) ENGINE=InnoDB AUTO_INCREMENT=17410 DEFAULT CHARSET=latin1;
