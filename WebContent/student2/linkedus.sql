CREATE DATABASE IF NOT EXISTS LINKEDUS;
USE LINKEDUS;

DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstName` varchar(50),
  `lastName` varchar(50),
  `telephone` varchar(20),
  `address` varchar(100),
  `summary` LONGTEXT,
  `expectedJob` varchar(100),
  `skills` LONGTEXT,
  `schoolName` varchar(100),
  `schoolStartMonth` varchar(10),
  `schoolStartYear` int(10),
  `schoolEndMonth` varchar(10),
  `schoolEndYear` int(10),
  `schoolDegree` varchar(100),
  `schoolMajor` varchar(100),
  `workCompanyName` varchar(100),
  `workJobTitle` varchar(100),
  `workStartMonth` varchar(10),
  `workStartYear` int(10),
  `workEndMonth` varchar(10),
  `workEndYear` int(10),
  `workJobResponsibility` LONGTEXT,
  `projectName` varchar(100),
  `projectDescription` LONGTEXT,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7;

DROP TABLE IF EXISTS `Company`;
CREATE TABLE `Company` (
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `telephone` varchar(20),
  `address` varchar(100),
  `contactName` varchar(20),
  PRIMARY KEY (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7;

DROP TABLE IF EXISTS `Job`;
CREATE TABLE `Job` (
  `jobID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `companyName` varchar(20),
  `jobTitle` varchar(50),
  `location` varchar(50),
  `jobDescription` LONGTEXT,
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB AUTO_INCREMENT=7;

DROP TABLE IF EXISTS `Admin`;
CREATE TABLE `Admin` (
  `adminID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50),
  `password` varchar(50),
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB AUTO_INCREMENT=7;



