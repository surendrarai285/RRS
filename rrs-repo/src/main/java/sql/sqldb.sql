/*
SQLyog - Free MySQL GUI v5.02
Host - 5.0.83-community-nt : Database - rmsdb
*********************************************************************
Server version : 5.0.83-community-nt
*/


create database if not exists `rmsdb`;

USE `rmsdb`;

/*Table structure for table `guest` */

DROP TABLE IF EXISTS `guest`;

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `first_name` varchar(80) default NULL,
  `last_name` varchar(80) default NULL,
  `member_since` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guest` */

/*Table structure for table `hosted_at` */

DROP TABLE IF EXISTS `hosted_at`;

CREATE TABLE `hosted_at` (
  `id` int(11) NOT NULL,
  `guest_id` int(11) default NULL,
  `occupied_room_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_hosted_at` (`guest_id`),
  KEY `FK_hosted` (`occupied_room_id`),
  CONSTRAINT `hosted_at_ibfk_2` FOREIGN KEY (`occupied_room_id`) REFERENCES `occupied_room` (`id`),
  CONSTRAINT `hosted_at_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hosted_at` */

/*Table structure for table `occupied_room` */

DROP TABLE IF EXISTS `occupied_room`;

CREATE TABLE `occupied_room` (
  `id` int(11) NOT NULL,
  `check_in` timestamp NULL default NULL,
  `check_out` timestamp NULL default NULL,
  `room_id` int(11) default NULL,
  `reservation_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_occupied_room` (`room_id`),
  KEY `FK_occupied` (`reservation_id`),
  CONSTRAINT `occupied_room_ibfk_2` FOREIGN KEY (`reservation_id`) REFERENCES `reservation` (`id`),
  CONSTRAINT `occupied_room_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `occupied_room` */

/*Table structure for table `reservation` */

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `date_in` date default NULL,
  `date_out` date default NULL,
  `made_by` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reservation` */

/*Table structure for table `reserved_room` */

DROP TABLE IF EXISTS `reserved_room`;

CREATE TABLE `reserved_room` (
  `id` int(11) NOT NULL,
  `number_of_rooms` int(11) default NULL,
  `status` varchar(20) default NULL,
  `room_type_id` int(11) default NULL,
  `reservation_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reserved_room` */

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `number` varchar(10) default NULL,
  `name` varchar(40) default NULL,
  `status` varchar(10) default NULL,
  `smoke` tinyint(1) default NULL,
  `room_type_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `room` */

/*Table structure for table `room_type` */

DROP TABLE IF EXISTS `room_type`;

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL,
  `description` varchar(80) default NULL,
  `max_capacity` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `room_type` */
