-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 05, 2019 at 02:52 PM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.17-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tSbyAj5Oqx`
--

-- --------------------------------------------------------

--
-- Table structure for table `FactTable_01`
--
drop table FactTable_01;
CREATE TABLE `FactTable_01` (
  `K1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `F1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `F3` datetime DEFAULT NULL,
  `F4` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `K4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `F6` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `F7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `F8` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `F9` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `K2_01` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `K2_02` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `K3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `F10` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `FactTable_01`
--
ALTER TABLE `FactTable_01` ADD PRIMARY KEY (`K1`);


drop table RefTable_01;
CREATE TABLE `RefTable_01` (
  `K2` varchar(200) PRIMARY KEY 
) ;


drop table FactTable_02;
CREATE TABLE `FactTable_02` (
  `F11` varchar(200) NOT NULL,
  `K1` varchar(50)  ,
  `F12` BLOB  ,
  FOREIGN KEY (K1) 
  REFERENCES FactTable_01(K1) 
  
) ;


drop table RefTable_02;
CREATE TABLE `RefTable_02` (
  K4 Varchar(200) PRIMARY KEY 
) ;

drop table FactTable_02;
CREATE TABLE `FactTable_02` (
	K5	Varchar(50)	Unique Key NOT NULL,
	K6	Varchar(50)	NOT NULL,
	F13	Varchar(200) NOT NULL,
	F14	Varchar(200) 	NOT NULL,
	F15	Date 	NOT NULL,
	F16	Date 	NOT NULL,
	F17	Varchar(1500)  	 Unique Key NOT NULL,
	K2	Varchar( 200) 	NOT NULL,
	F18	Varchar(200) 	NOT NULL,
	F19	Varchar(200) 	NOT NULL,
	F20	Varchar(2000) 	NOT NULL,
  FOREIGN KEY (K2) 
  REFERENCES RefTable_01(K2) ,
  FOREIGN KEY (K6) 
  REFERENCES RefTable_03(K6) 

  ) ;


drop table RefTable_03;
CREATE TABLE `RefTable_03` (
	K6	Varchar(50)	PRIMARY KEY NOT NULL,
	F21	Blob	,
	F22	Date 	NOT NULL,
	K4	Varchar( 200)	NOT NULL,
	F23	Varchar(200)	NOT NULL,
	F24	Varchar(4000) 	,
  FOREIGN KEY (K4) 
  REFERENCES RefTable_02(K4) 
);


drop table RefTable_04;
CREATE TABLE `RefTable_04` (
	K8	Varchar(20) 

);


drop table FactTable_04;
CREATE TABLE `FactTable_04` (
K7	Varchar(50)	Primary Key not null,
K1	Varchar(50)	Not null,
F25	Varchar(4000) ,	
F26	Date	Not Null,
K4	Varchar(200),	 
K8	Varchar(20),	
K2	Varchar(200),
F27	SMALLINT	 ,

  FOREIGN KEY (K1) 
  REFERENCES FactTable_01(K1)    ,
  FOREIGN KEY (K2) 
  REFERENCES RefTable_01(K2) ,
  FOREIGN KEY (K4) 
  REFERENCES RefTable_02(K4) ,
  FOREIGN KEY (K8) 
  REFERENCES RefTable_04(K8) 

);

DROP TABLE FactTable_05;
CREATE TABLE `FactTable_05` (
K1	Varchar(50),
K7	Varchar(50),
F28	  DateTime 
);

DROP TABLE FactTable_05;
CREATE TABLE `FactTable_05` (
K1	Varchar(50)  not null,
K10	Varchar(200)  not null,
F30	Varchar(200) not null,
K2	Varchar(200)   not null,
K4	Varchar(200)   not null,
K8	Varchar(20)  not null,
F33	Varchar(20) ,
F34	Integer,

  FOREIGN KEY (K1) 
  REFERENCES FactTable_01(K1) ,
  FOREIGN KEY (K2) 
  REFERENCES RefTable_01(K2) ,
  FOREIGN KEY (K4) 
  REFERENCES RefTable_02(K4) ,
  FOREIGN KEY (K8) 
  REFERENCES RefTable_04(K8) 
);
