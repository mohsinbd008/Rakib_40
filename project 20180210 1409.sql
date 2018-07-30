-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema test
--

CREATE DATABASE IF NOT EXISTS test;
USE test;

--
-- Definition of table `add_booking`
--

DROP TABLE IF EXISTS `add_booking`;
CREATE TABLE `add_booking` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `bus_no` varchar(45) NOT NULL,
  `seat_no` int(11) NOT NULL,
  `passenger_name` varchar(45) NOT NULL,
  `contact_no` varchar(45) NOT NULL,
  `departure_date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_booking`
--

/*!40000 ALTER TABLE `add_booking` DISABLE KEYS */;
INSERT INTO `add_booking` (`id`,`bus_no`,`seat_no`,`passenger_name`,`contact_no`,`departure_date`) VALUES 
 (10,'A1',1,'e','e','2018-02-07'),
 (11,'A1',2,'b','g','2018-02-08'),
 (12,'A1',3,'d','0242','2018-02-07');
/*!40000 ALTER TABLE `add_booking` ENABLE KEYS */;


--
-- Definition of table `schedeule_details`
--

DROP TABLE IF EXISTS `schedeule_details`;
CREATE TABLE `schedeule_details` (
  `bid` int(10) unsigned NOT NULL auto_increment,
  `bus_no` varchar(45) NOT NULL,
  `source` varchar(45) NOT NULL,
  `destination` varchar(45) NOT NULL,
  `total_seat` varchar(45) NOT NULL,
  `available_seat` int(11) NOT NULL default '0',
  `booked_seat` int(11) default NULL,
  `updated_date` date default NULL,
  `time` varchar(45) default NULL,
  PRIMARY KEY  USING BTREE (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedeule_details`
--

/*!40000 ALTER TABLE `schedeule_details` DISABLE KEYS */;
INSERT INTO `schedeule_details` (`bid`,`bus_no`,`source`,`destination`,`total_seat`,`available_seat`,`booked_seat`,`updated_date`,`time`) VALUES 
 (12,'A1','Dhaka','Khulna','50',47,3,'2018-02-07',''),
 (13,'A1','gtg','gfg','50',20,30,'2018-02-07',''),
 (14,'Mohanagor Probhati','Dhaka','Chittagong','1200',1000,200,'2018-02-11',NULL);
/*!40000 ALTER TABLE `schedeule_details` ENABLE KEYS */;


--
-- Definition of table `train_ticket`
--

DROP TABLE IF EXISTS `train_ticket`;
CREATE TABLE `train_ticket` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Train` varchar(45) default NULL,
  `Date1` varchar(20) NOT NULL,
  `From1` varchar(45) default NULL,
  `To1` varchar(45) default NULL,
  `Class` varchar(45) default NULL,
  `No_Adult` varchar(45) default NULL,
  `No_Child` varchar(45) default NULL,
  `Fare` varchar(45) default NULL,
  `Vat` varchar(45) default NULL,
  `Total` varchar(45) default NULL,
  `Ticket_No` int(10) unsigned default NULL,
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_ticket`
--

/*!40000 ALTER TABLE `train_ticket` DISABLE KEYS */;
INSERT INTO `train_ticket` (`id`,`Train`,`Date1`,`From1`,`To1`,`Class`,`No_Adult`,`No_Child`,`Fare`,`Vat`,`Total`,`Ticket_No`) VALUES 
 (1,'','12-11-2017','','','','1','1','','','',NULL),
 (2,'Mohanagor Probhati','23-11-2017','Dhaka','Chittagong','Standard','1','1','600','60','660',NULL),
 (3,'Joyontika Express','10-09-12','Dhaka','Sylhet','Standard','2','1','600','60','650',NULL),
 (4,'','','','','','','','','','',NULL),
 (5,'Mohanagor Probhati','2018-02-04','Dhaka','Chittagong','Standard','1','1','$320.23','$50.53','$370.76',NULL),
 (6,'Mohanagor Probhati','2018-02-05','Dhaka','Chittagong','Standard','1','1','$320.23','$50.53','$370.76',NULL),
 (7,'Mohanagor Probhati',' 2018-02-06','Dhaka','Chittagong','Standard','2','1','$640.46','$50.53','$690.99',NULL),
 (8,'Joyontika Express',' 2018-02-06','Dhaka','Chittagong','First Class','2','2','$700.00','$55.23','$1035.23',NULL),
 (9,'Joyontika Express',' 2018-02-07','Dhaka','Chittagong','First Class','2','2','$700.00','$55.23','$1035.23',NULL),
 (10,'Joyontika Express',' 2018-02-07','Dhaka','Chittagong','First Class','1','2','$700.00','$55.23','$1035.23',NULL),
 (11,'Mohanagor Probhati',' 2018-02-06','Dhaka','Chittagong','Standard','2','1','$640.46','$50.53','$690.99',1),
 (12,'Mohanagor Probhati','2018-02-04','Dhaka','Chittagong','Standard','2','1','$640.46','$50.53','$690.99',2),
 (13,'Mohanagor Probhati',' 2018-02-06','Dhaka','Chittagong','Standard','2','1','$640.46','$50.53','$690.99',3),
 (14,'Mohanagor Probhati',' 2018-02-06','Dhaka','Chittagong','Standard','2','2','$640.46','$50.53','$690.99',4),
 (15,'Mohanagor Probhati','2018-02-06','Dhaka','Chittagong','Standard','2','2','$640.46','$101.06','$1021.52',NULL),
 (16,'Joyontika Express','2018-02-06','Sylhet','Dhaka','First Class','2','2','$700.00','$55.23','$1035.23',NULL),
 (17,'Joyontika Express','2018-02-06','Sylhet','Dhaka','First Class','2','2','$700.00','$55.23','$1035.23',NULL),
 (18,'Joyontika Express','2018-02-06','Sylhet','Dhaka','First Class','2','2','$700.00','$55.23','$1035.23',NULL),
 (19,'Joyontika Express','2018-02-06','Sylhet','Dhaka','First Class','2','2','$700.00','$55.23','$1035.23',NULL);
/*!40000 ALTER TABLE `train_ticket` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
