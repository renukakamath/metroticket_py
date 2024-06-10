/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - metrostation1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`metrostation1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `metrostation1`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`user_type`) values 
(1,'admin','admin','admin'),
(2,'kaloormetro','kaloormetro','staffsmetro'),
(3,'kaloorboat','kaloorboat','staffsboat'),
(4,'kaloorauto','kaloorauto','staffsauto'),
(5,'kaloorcar','kaloorcar','staffscar'),
(6,'kaloorbus','kaloorbus','staffsbus'),
(7,'mgmetro','mgmetro','staffsmetro'),
(8,'mgboat','mgboat','staffsboat'),
(9,'mgauto','mgauto','staffsauto'),
(10,'mgcar','mgcar','staffscar'),
(11,'mgbus','mgbus','staffsbus'),
(12,'aboat','aboat','staffsboat'),
(13,'ametro','ametro','staffsmetro'),
(14,'acar','acar','staffscar'),
(15,'abus','abus','staffsbus'),
(16,'Hai','hai','user'),
(17,'esmetro','esmetro','staffsmetro'),
(18,'esboat','esboat','staffsboat'),
(19,'esauto','esauto','staffsauto'),
(20,'escar','escar','staffscar'),
(21,'esbus','esbus','staffsbus'),
(22,'thboat','thboat','staffsboat'),
(23,'thmetro','thmetro','staffsmetro'),
(24,'thauto','thauto','staffsauto'),
(25,'thcar','thcar','staffscar'),
(26,'thbus','thbus','staffsbus'),
(27,'jboat','jboat','staffsboat'),
(28,'jmetro','jmetro','staffsmetro'),
(29,'jauto','jauto','staffsauto'),
(30,'jcar','jcar','staffscar'),
(31,'jbus','jbus','staffsbus'),
(32,'mhboat','mhboat','staffsboat'),
(33,'mhmetro','mhmetro','staffsmetro'),
(34,'mhcar','mhcar','staffscar'),
(35,'mhbus','mhbus','staffsbus'),
(36,'eboat','eboat','staffsboat'),
(37,'emetro','emetro','staffsmetro'),
(38,'eauto','eauto','staffsauto'),
(39,'ecar','ecar','staffscar'),
(40,'ebus','ebus','staffsbus');

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`pay_id`,`transaction_id`,`amount`,`date`) values 
(1,1,'0','2023-05-31'),
(2,2,'0','2023-05-31'),
(3,3,'0','2023-05-31'),
(4,4,'0','2023-05-31'),
(5,5,'0','2023-05-31'),
(6,6,'0','2023-05-31'),
(7,7,'0','2023-05-31'),
(8,8,'0','2023-05-31'),
(9,9,'0','2023-05-31'),
(10,10,'0','2023-05-31'),
(11,11,'0','2023-05-31'),
(12,12,'0','2023-05-31'),
(13,13,'0','2023-06-12');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `ftype` varchar(100) DEFAULT NULL,
  `fplace` varchar(100) DEFAULT NULL,
  `tplace` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`request_id`,`user_id`,`date`,`status`,`amount`,`ftype`,`fplace`,`tplace`) values 
(1,1,'2023-05-31','0','7087.4','0','Mg road ','Aluva');

/*Table structure for table `requestdetails` */

DROP TABLE IF EXISTS `requestdetails`;

CREATE TABLE `requestdetails` (
  `requestdetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) DEFAULT NULL,
  `fplaces` varchar(100) DEFAULT NULL,
  `tplaces` varchar(100) DEFAULT NULL,
  `rates` varchar(100) DEFAULT NULL,
  `types` varchar(100) DEFAULT NULL,
  `amounts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`requestdetails_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `requestdetails` */

insert  into `requestdetails`(`requestdetails_id`,`request_id`,`fplaces`,`tplaces`,`rates`,`types`,`amounts`) values 
(1,1,'Mg Road ','Kaloor','0','Metro','3610.7'),
(2,1,'Kaloor ','Aluva','0','Bus','3610.7');

/*Table structure for table `staffs` */

DROP TABLE IF EXISTS `staffs`;

CREATE TABLE `staffs` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `staffs` */

insert  into `staffs`(`staff_id`,`login_id`,`station_id`,`first_name`,`image`) values 
(1,2,1,'metro staff','static/qr_code/a07944a8-8123-4608-8162-d92967d7458e.png'),
(2,3,1,'boat  staff','static/qr_code/676d9be7-215d-4ec1-b806-99807bb74389.png'),
(3,4,1,'auto staff','static/qr_code/45e9e550-2ad1-4856-8881-cebb4f67413e.png'),
(4,5,1,'car staff','static/qr_code/18f7f669-6fdd-4825-a9c5-692a5e6b46e4.png'),
(5,6,1,'bus staff','static/qr_code/16080a2a-9f04-44a1-bfe9-ef5066d4fbf7.png'),
(6,7,2,'metro staff','static/qr_code/115ac267-5f02-41fd-a517-48891e578888.png'),
(7,8,2,'boat staff','static/qr_code/17d5a29a-4fa3-4165-a1c9-af9c3bf22beb.png'),
(8,9,2,'auto staff','static/qr_code/3fe739f7-eb4e-44cd-9423-642fd050aead.png'),
(9,10,2,'car staff','static/qr_code/6e496d76-3cf2-4a49-aa8e-7abcdb722b6f.png'),
(10,11,2,'bus staff','static/qr_code/69631f90-63e4-4055-927c-1c500ca1892b.png'),
(11,12,3,'boat staff','static/qr_code/d5ca0ae5-b273-46d8-9243-6fc65ba35713.png'),
(12,13,3,'metro staff','static/qr_code/2374eeb7-fd19-46a7-9c91-03e3a86bfc63.png'),
(13,14,3,' car staff','static/qr_code/426f0bd3-b0ea-4656-a7e6-bc82da6b46f9.png'),
(14,15,3,'bus staff','static/qr_code/c9c04103-cff8-4e56-b309-30946fdf1ebe.png'),
(15,17,4,'metro','static/qr_code/86b7f160-b69b-49b8-95bc-35874b8fae03.png'),
(16,18,4,'boat','static/qr_code/fc8b8d8e-12a3-4e69-8874-6db9c4d62e8a.png'),
(17,19,4,'auto','static/qr_code/e6f7528d-cc30-40a0-9026-cd8ac011565e.png'),
(18,20,4,'car','static/qr_code/fe3cde17-709d-4cb8-b01f-f5caace59d50.png'),
(19,21,4,'bus','static/qr_code/44dab95e-3602-4db0-aec8-31fd1f7f311d.png'),
(20,22,5,'boat','static/qr_code/d64ad3f1-6c74-4aae-a3d4-358994045195.png'),
(21,23,5,'metro','static/qr_code/aecfe7a4-6dad-4c2d-9b53-3da98fab0f72.png'),
(22,24,5,'auto','static/qr_code/0e7026f5-7ef7-4056-9614-6ab10067cbac.png'),
(23,25,5,'cat','static/qr_code/e753a529-bef3-4d4a-94ed-1a7231827a63.png'),
(24,26,5,'bus','static/qr_code/471b7a0a-0a28-4121-b6d1-c20a9e3b8611.png'),
(25,27,6,'boat','static/qr_code/771de8c6-d918-4db4-bde8-5f57cdaeedc0.png'),
(26,28,6,'metro','static/qr_code/3fdcfd06-6a83-4715-938f-1e6bd43e4a87.png'),
(27,29,6,'auto','static/qr_code/5f38f09c-9afc-4240-8a95-8b675d2621aa.png'),
(28,30,6,'car','static/qr_code/e5b4eb1b-6644-432f-9b53-35fa4f39237f.png'),
(29,31,6,'bus','static/qr_code/4d662847-2150-438c-88d5-d699ddfa64d4.png'),
(30,32,7,'boat','static/qr_code/74eb2816-36c8-4f76-9800-7710360de409.png'),
(31,33,7,'metro','static/qr_code/d2ab9153-34ad-45d6-932d-2a9b122baca1.png'),
(32,34,7,'car','static/qr_code/036baa89-c9a5-4908-91c3-51400ef0f1bf.png'),
(33,35,7,'bus','static/qr_code/843b7779-a7ef-411b-8f32-b305d79b7b3f.png'),
(34,36,8,'boat','static/qr_code/9c279c3c-05eb-4e47-b07a-9b29dfafb3c1.png'),
(35,37,8,'metro','static/qr_code/438feae1-5ad5-4117-b4e3-770affa3b32c.png'),
(36,38,8,'auto','static/qr_code/2ab539b3-0449-4138-80b1-b970ac1c5b86.png'),
(37,39,8,'car','static/qr_code/b91e9358-8da3-4a55-8da8-bb7154ab4133.png'),
(38,40,8,'bus','static/qr_code/ab725768-2c59-420a-b7ce-5d629cdf5ffe.png');

/*Table structure for table `stations` */

DROP TABLE IF EXISTS `stations`;

CREATE TABLE `stations` (
  `station_id` int(11) NOT NULL AUTO_INCREMENT,
  `station_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `stations` */

insert  into `stations`(`station_id`,`station_name`) values 
(1,'kaloor'),
(2,'mg road'),
(3,'aluva'),
(4,'Ernakulam south'),
(5,'Town hall'),
(6,'Jln stadium'),
(7,'Maharajas College'),
(8,'Edapally');

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `fromplace` varchar(1000) DEFAULT NULL,
  `toplace` varchar(1000) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `travelstatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

insert  into `transaction`(`transaction_id`,`user_id`,`amount`,`fromplace`,`toplace`,`date`,`status`,`travelstatus`) values 
(3,1,3610,'9.9921355','76.30190379999999','2023-05-31','out','complete'),
(4,1,134,'9.9921355','76.30190379999999','2023-05-31','out','complete'),
(5,1,134,'9.9921355','76.30190379999999','2023-05-31','out','complete'),
(6,1,134,'9.9921355','76.30190379999999','2023-05-31','out','complete'),
(10,1,3476,'10.1003709','76.35703819999999','2023-05-31','out','complete'),
(9,1,134,'10.1003709','76.35703819999999','2023-05-31','out','complete'),
(12,1,134,'9.9921355','76.30190379999999','2023-05-31','out','complete'),
(13,1,134,'9.9921355','76.30190379999999','2023-06-12','out','complete');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`user_id`,`login_id`,`first_name`,`last_name`,`email`,`address`,`phone`,`place`) values 
(1,16,'Hai','Hai','hai@gmail.com','Hello House ','1234567890','Ekm');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
