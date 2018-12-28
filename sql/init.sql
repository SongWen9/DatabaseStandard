/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.24-0ubuntu0.16.04.1 : Database - standard_seminar_system
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`standard_seminar_system` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `standard_seminar_system`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL COMMENT '账号',
  `password` varchar(20) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`account`,`password`) values (1,'admin','admin');

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `klass_seminar_id` bigint(20) unsigned NOT NULL COMMENT '讨论课（某班级）id',
  `team_id` bigint(20) unsigned NOT NULL COMMENT '队伍id',
  `team_order` tinyint(4) unsigned NOT NULL COMMENT '该队伍顺序',
  `is_present` tinyint(4) unsigned NOT NULL COMMENT '是否正在进行，0不是，1是',
  `report_name` varchar(50) DEFAULT NULL COMMENT '提交的报告文件名',
  `report_url` varchar(500) DEFAULT NULL COMMENT '提交的报告文件位置',
  `ppt_name` varchar(50) DEFAULT NULL COMMENT '提交的PPT文件名',
  `ppt_url` varchar(500) DEFAULT NULL COMMENT '提交的PPT文件位置',
  PRIMARY KEY (`id`),
  KEY `idx_team_id` (`team_id`),
  KEY `idx_klass_seminar_id` (`klass_seminar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

/*Data for the table `attendance` */

insert  into `attendance`(`id`,`klass_seminar_id`,`team_id`,`team_order`,`is_present`,`report_name`,`report_url`,`ppt_name`,`ppt_url`) values (1,9,18,1,0,NULL,NULL,NULL,NULL),(2,9,21,2,0,NULL,NULL,NULL,NULL),(3,9,20,3,0,NULL,NULL,NULL,NULL),(4,9,7,4,0,NULL,NULL,NULL,NULL),(5,9,6,5,0,NULL,NULL,NULL,NULL),(6,9,14,6,0,NULL,NULL,NULL,NULL),(7,10,3,1,0,NULL,NULL,NULL,NULL),(8,10,9,2,0,NULL,NULL,NULL,NULL),(9,10,5,3,0,NULL,NULL,NULL,NULL),(10,10,15,4,0,NULL,NULL,NULL,NULL),(11,10,17,5,0,NULL,NULL,NULL,NULL),(12,10,16,6,0,NULL,NULL,NULL,NULL),(13,11,22,1,0,NULL,NULL,NULL,NULL),(14,11,23,2,0,NULL,NULL,NULL,NULL),(15,11,24,3,0,NULL,NULL,NULL,NULL),(16,11,25,4,0,NULL,NULL,NULL,NULL),(17,11,26,5,0,NULL,NULL,NULL,NULL),(18,11,27,6,0,NULL,NULL,NULL,NULL),(19,12,19,1,0,NULL,NULL,NULL,NULL),(20,12,12,2,0,NULL,NULL,NULL,NULL),(21,12,8,3,0,NULL,NULL,NULL,NULL),(22,12,17,4,0,NULL,NULL,NULL,NULL),(23,12,6,5,0,NULL,NULL,NULL,NULL),(24,12,10,6,0,NULL,NULL,NULL,NULL),(25,13,3,1,0,NULL,NULL,NULL,NULL),(26,13,11,3,0,NULL,NULL,NULL,NULL),(27,14,26,1,0,NULL,NULL,NULL,NULL),(28,14,27,2,0,NULL,NULL,NULL,NULL),(29,14,23,3,0,NULL,NULL,NULL,NULL),(30,14,25,4,0,NULL,NULL,NULL,NULL),(31,14,22,5,0,NULL,NULL,NULL,NULL),(32,26,6,5,0,NULL,NULL,NULL,NULL),(33,26,18,1,0,NULL,NULL,NULL,NULL),(34,26,14,2,0,NULL,NULL,NULL,NULL),(35,26,12,3,0,NULL,NULL,NULL,NULL),(36,26,17,4,0,NULL,NULL,NULL,NULL),(37,26,6,5,0,NULL,NULL,NULL,NULL),(38,26,8,6,0,NULL,NULL,NULL,NULL),(39,27,11,1,0,NULL,NULL,NULL,NULL),(40,27,3,2,0,NULL,NULL,NULL,NULL),(41,27,16,3,0,NULL,NULL,NULL,NULL),(42,27,9,4,0,NULL,NULL,NULL,NULL),(43,27,2,5,0,NULL,NULL,NULL,NULL),(44,27,13,6,0,NULL,NULL,NULL,NULL),(45,28,22,1,0,NULL,NULL,NULL,NULL),(46,28,23,2,0,NULL,NULL,NULL,NULL),(47,28,24,3,0,NULL,NULL,NULL,NULL),(48,28,25,4,0,NULL,NULL,NULL,NULL),(49,28,26,5,0,NULL,NULL,NULL,NULL),(50,28,26,6,0,NULL,NULL,NULL,NULL),(51,29,27,1,0,NULL,NULL,NULL,NULL),(52,29,9,2,0,NULL,NULL,NULL,NULL),(53,29,13,3,0,NULL,NULL,NULL,NULL),(54,29,8,4,0,NULL,NULL,NULL,NULL),(55,29,16,5,0,NULL,NULL,NULL,NULL),(56,29,21,6,0,NULL,NULL,NULL,NULL),(57,30,22,1,0,NULL,NULL,NULL,NULL),(58,30,17,2,0,NULL,NULL,NULL,NULL),(59,30,20,3,0,NULL,NULL,NULL,NULL),(60,30,7,4,0,NULL,NULL,NULL,NULL),(61,30,19,5,0,NULL,NULL,NULL,NULL),(62,30,10,6,0,NULL,NULL,NULL,NULL),(63,21,17,1,0,NULL,NULL,NULL,NULL),(64,21,8,2,0,NULL,NULL,NULL,NULL),(65,21,18,3,0,NULL,NULL,NULL,NULL),(66,21,19,4,0,NULL,NULL,NULL,NULL),(67,21,6,5,0,NULL,NULL,NULL,NULL),(68,21,7,6,0,NULL,NULL,NULL,NULL),(69,22,16,1,0,NULL,NULL,NULL,NULL),(70,22,3,2,0,NULL,NULL,NULL,NULL),(71,22,11,3,0,NULL,NULL,NULL,NULL),(72,22,15,4,0,NULL,NULL,NULL,NULL),(73,23,22,1,0,NULL,NULL,NULL,NULL),(74,23,23,2,0,NULL,NULL,NULL,NULL),(75,23,24,3,0,NULL,NULL,NULL,NULL),(76,23,25,4,0,NULL,NULL,NULL,NULL),(77,23,26,5,0,NULL,NULL,NULL,NULL),(78,23,27,6,0,NULL,NULL,NULL,NULL),(79,24,27,1,0,NULL,NULL,NULL,NULL),(80,24,9,2,0,NULL,NULL,NULL,NULL),(81,24,11,3,0,NULL,NULL,NULL,NULL),(82,24,21,4,0,NULL,NULL,NULL,NULL),(83,24,13,5,0,NULL,NULL,NULL,NULL),(84,24,26,6,0,NULL,NULL,NULL,NULL),(85,25,16,1,0,NULL,NULL,NULL,NULL),(86,25,20,2,0,NULL,NULL,NULL,NULL),(87,25,22,3,0,NULL,NULL,NULL,NULL),(88,25,8,4,0,NULL,NULL,NULL,NULL),(89,25,19,5,0,NULL,NULL,NULL,NULL),(90,25,6,6,0,NULL,NULL,NULL,NULL),(91,31,20,2,0,NULL,NULL,NULL,NULL),(92,31,19,5,0,NULL,NULL,NULL,NULL),(93,31,21,3,0,NULL,NULL,NULL,NULL),(94,31,10,4,0,NULL,NULL,NULL,NULL),(95,32,4,1,0,NULL,NULL,NULL,NULL),(96,32,15,2,0,NULL,NULL,NULL,NULL),(97,32,5,6,0,NULL,NULL,NULL,NULL),(98,33,22,1,0,NULL,NULL,NULL,NULL),(99,33,23,2,0,NULL,NULL,NULL,NULL),(100,33,24,3,0,NULL,NULL,NULL,NULL),(101,33,25,4,0,NULL,NULL,NULL,NULL),(102,33,26,5,0,NULL,NULL,NULL,NULL),(103,33,27,6,0,NULL,NULL,NULL,NULL),(104,34,20,1,0,NULL,NULL,NULL,NULL),(105,34,10,2,0,NULL,NULL,NULL,NULL),(106,34,14,3,0,NULL,NULL,NULL,NULL),(107,34,21,4,0,NULL,NULL,NULL,NULL),(108,34,12,5,0,NULL,NULL,NULL,NULL),(109,37,4,1,0,NULL,NULL,NULL,NULL),(110,37,9,2,0,NULL,NULL,NULL,NULL),(111,37,2,3,0,NULL,NULL,NULL,NULL),(112,37,5,4,0,NULL,NULL,NULL,NULL),(113,37,13,5,0,NULL,NULL,NULL,NULL),(114,37,15,6,0,NULL,NULL,NULL,NULL),(115,38,27,1,0,NULL,NULL,NULL,NULL),(116,38,22,2,0,NULL,NULL,NULL,NULL),(117,38,25,3,0,NULL,NULL,NULL,NULL),(118,35,25,1,0,NULL,NULL,NULL,NULL),(119,35,17,2,0,NULL,NULL,NULL,NULL),(120,35,4,3,0,NULL,NULL,NULL,NULL),(121,35,21,4,0,NULL,NULL,NULL,NULL),(122,35,23,6,0,NULL,NULL,NULL,NULL),(123,35,10,5,0,NULL,NULL,NULL,NULL),(124,35,7,7,0,NULL,NULL,NULL,NULL),(125,36,3,1,0,NULL,NULL,NULL,NULL),(126,36,15,2,0,NULL,NULL,NULL,NULL),(127,36,18,3,0,NULL,NULL,NULL,NULL),(128,36,14,4,0,NULL,NULL,NULL,NULL),(129,36,12,5,0,NULL,NULL,NULL,NULL),(130,36,2,6,0,NULL,NULL,NULL,NULL),(131,17,23,2,0,NULL,NULL,NULL,NULL),(132,17,24,3,0,NULL,NULL,NULL,NULL),(133,17,27,1,0,NULL,NULL,NULL,NULL),(134,20,25,1,0,NULL,NULL,NULL,NULL),(135,20,22,2,0,NULL,NULL,NULL,NULL),(136,20,26,3,0,NULL,NULL,NULL,NULL),(137,39,6,2,0,NULL,NULL,NULL,NULL),(138,39,14,5,0,NULL,NULL,NULL,NULL),(139,39,11,4,0,NULL,NULL,NULL,NULL),(140,39,2,6,0,NULL,NULL,NULL,NULL),(141,39,25,1,0,NULL,NULL,NULL,NULL),(142,39,26,3,0,NULL,NULL,NULL,NULL),(143,40,18,1,0,NULL,NULL,NULL,NULL),(144,40,12,4,0,NULL,NULL,NULL,NULL),(145,40,15,6,0,NULL,NULL,NULL,NULL),(146,40,3,2,0,NULL,NULL,NULL,NULL),(147,40,4,5,0,NULL,NULL,NULL,NULL),(148,40,23,3,1,NULL,NULL,NULL,NULL),(149,15,6,6,0,NULL,NULL,NULL,NULL),(150,15,7,5,0,NULL,NULL,NULL,NULL),(151,15,14,4,0,NULL,NULL,NULL,NULL),(152,15,18,3,0,NULL,NULL,NULL,NULL),(153,15,19,2,0,NULL,NULL,NULL,NULL),(154,16,16,3,0,NULL,NULL,NULL,NULL),(155,16,15,4,0,NULL,NULL,NULL,NULL),(156,16,9,2,0,NULL,NULL,NULL,NULL),(157,18,8,6,0,NULL,NULL,NULL,NULL),(158,18,20,5,0,NULL,NULL,NULL,NULL),(159,18,18,4,0,NULL,NULL,NULL,NULL),(160,18,10,3,0,NULL,NULL,NULL,NULL),(161,18,21,2,0,NULL,NULL,NULL,NULL),(162,18,12,1,0,NULL,NULL,NULL,NULL),(163,19,2,6,0,NULL,NULL,NULL,NULL),(164,19,9,2,0,NULL,NULL,NULL,NULL),(165,19,13,4,0,NULL,NULL,NULL,NULL),(166,19,3,1,0,NULL,NULL,NULL,NULL),(167,19,5,7,0,NULL,NULL,NULL,NULL),(168,19,11,5,0,NULL,NULL,NULL,NULL);

/*Table structure for table `conflict_course_strategy` */

DROP TABLE IF EXISTS `conflict_course_strategy`;

CREATE TABLE `conflict_course_strategy` (
  `id` bigint(20) unsigned NOT NULL,
  `course_id` bigint(20) unsigned NOT NULL COMMENT '冲突课程',
  PRIMARY KEY (`id`,`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `conflict_course_strategy` */

insert  into `conflict_course_strategy`(`id`,`course_id`) values (1,17),(1,20),(2,18),(2,19);

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint(20) unsigned NOT NULL COMMENT '教师id',
  `course_name` varchar(30) NOT NULL COMMENT '课程名称',
  `introduction` varchar(500) DEFAULT NULL COMMENT '课程介绍',
  `presentation_percentage` tinyint(4) unsigned NOT NULL COMMENT '展示分数占比',
  `question_percentage` tinyint(4) unsigned NOT NULL COMMENT '提问分数占比',
  `report_percentage` tinyint(4) unsigned NOT NULL COMMENT '报告分数占比',
  `team_start_time` datetime NOT NULL COMMENT '开始组队时间',
  `team_end_time` datetime NOT NULL COMMENT '截止组队时间',
  `team_main_course_id` bigint(20) unsigned DEFAULT NULL COMMENT '共享分组，主课程id',
  `seminar_main_course_id` bigint(20) unsigned DEFAULT NULL COMMENT '共享讨论课，主课程id',
  PRIMARY KEY (`id`),
  KEY `idx_teacher_id` (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`id`,`teacher_id`,`course_name`,`introduction`,`presentation_percentage`,`question_percentage`,`report_percentage`,`team_start_time`,`team_end_time`,`team_main_course_id`,`seminar_main_course_id`) values (16,3,'OOAD','面向对象分析与设计',40,30,30,'2018-09-15 00:00:21','2018-09-26 00:00:06',NULL,NULL),(17,3,'J2EE','javaEE',40,30,30,'2018-09-15 20:47:47','2018-09-26 20:48:00',16,NULL),(18,4,'SE','软件工程',40,30,30,'2018-12-19 20:52:03','2018-12-19 20:52:06',16,NULL),(19,5,'SE','软件工程',40,30,30,'2018-12-19 20:54:19','2018-12-19 20:54:21',16,NULL),(20,6,'.NET','刀奈特',40,30,30,'2018-12-19 20:55:53','2018-12-19 20:55:56',NULL,NULL);

/*Table structure for table `course_member_limit_strategy` */

DROP TABLE IF EXISTS `course_member_limit_strategy`;

CREATE TABLE `course_member_limit_strategy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) unsigned NOT NULL COMMENT '课程id',
  `min_member` tinyint(4) unsigned DEFAULT NULL COMMENT '队伍中选该课程最少人数',
  `max_member` tinyint(4) unsigned DEFAULT NULL COMMENT '队伍中选该课程最多人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `course_member_limit_strategy` */

insert  into `course_member_limit_strategy`(`id`,`course_id`,`min_member`,`max_member`) values (1,17,3,5),(2,20,3,5);

/*Table structure for table `klass` */

DROP TABLE IF EXISTS `klass`;

CREATE TABLE `klass` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) unsigned NOT NULL COMMENT '课程id',
  `grade` int(10) unsigned NOT NULL COMMENT '年级',
  `klass_serial` tinyint(4) unsigned NOT NULL COMMENT '班级序号',
  `klass_time` varchar(20) NOT NULL COMMENT '上课时间',
  `klass_location` varchar(20) NOT NULL COMMENT '上课地点',
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `klass` */

insert  into `klass`(`id`,`course_id`,`grade`,`klass_serial`,`klass_time`,`klass_location`) values (21,16,2016,1,'上午1,2节','海韵'),(22,16,2016,2,'上午3,4节','海韵'),(23,16,2016,3,'下午5,6节','海韵'),(24,17,2016,1,'晚上9,10节','海韵'),(25,18,2016,1,'上午1,2节','海韵'),(26,18,2016,2,'上午3,4节','海韵'),(27,19,2016,1,'上午3,4节','海韵'),(28,20,2016,1,'上午3,4节','海韵');

/*Table structure for table `klass_round` */

DROP TABLE IF EXISTS `klass_round`;

CREATE TABLE `klass_round` (
  `klass_id` bigint(20) unsigned NOT NULL COMMENT '课程id',
  `round_id` bigint(20) unsigned NOT NULL COMMENT '轮次id',
  `enroll_number` tinyint(3) unsigned DEFAULT NULL COMMENT '某班级，某轮次队伍报名次数限制',
  PRIMARY KEY (`klass_id`,`round_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `klass_round` */

insert  into `klass_round`(`klass_id`,`round_id`,`enroll_number`) values (21,3,1),(21,4,1),(21,5,1),(21,6,1),(21,7,1),(21,8,1),(22,3,1),(22,4,1),(22,5,1),(22,6,1),(22,7,1),(22,8,1),(23,3,2),(23,4,2),(23,5,2),(23,6,1),(23,7,1),(23,8,1);

/*Table structure for table `klass_seminar` */

DROP TABLE IF EXISTS `klass_seminar`;

CREATE TABLE `klass_seminar` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `klass_id` bigint(20) unsigned NOT NULL COMMENT '班级id',
  `seminar_id` bigint(20) unsigned NOT NULL COMMENT '讨论课id\n',
  `report_ddl` datetime DEFAULT NULL COMMENT '报告截止时间',
  `status` tinyint(4) NOT NULL COMMENT '讨论课所处状态，未开始0，正在进行1，已结束2，暂停3',
  PRIMARY KEY (`id`),
  KEY `idx_klass_id` (`klass_id`),
  KEY `idx_seminar_id` (`seminar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

/*Data for the table `klass_seminar` */

insert  into `klass_seminar`(`id`,`klass_id`,`seminar_id`,`report_ddl`,`status`) values (9,21,5,'2018-11-16 12:00:00',0),(10,22,5,'2018-11-16 12:00:00',0),(11,23,5,'2018-11-16 12:00:00',0),(12,21,6,'2018-11-30 12:00:00',0),(13,22,6,'2018-11-30 12:00:00',0),(14,23,6,'2018-11-30 12:00:00',0),(15,21,7,'2018-12-21 00:00:00',0),(16,22,7,'2018-12-21 00:00:00',0),(17,23,7,'2018-12-21 00:00:00',0),(18,21,8,'2018-12-21 00:00:00',0),(19,22,8,'2018-12-21 00:00:00',0),(20,23,8,'2018-12-21 00:00:00',0),(21,21,10,'2018-09-28 00:00:00',0),(22,22,10,'2018-09-28 00:00:00',0),(23,23,10,'2018-09-28 00:00:00',0),(24,24,11,'2018-10-01 00:00:00',0),(25,24,12,'2018-10-14 00:00:00',0),(26,21,9,'2018-10-26 00:00:00',0),(27,22,9,'2018-10-26 00:00:00',0),(28,23,9,'2018-10-26 00:00:00',0),(29,24,13,'2018-11-07 00:00:00',0),(30,24,14,'2018-11-07 00:00:00',0),(31,21,15,'2018-11-04 00:00:00',0),(32,22,15,'2018-11-04 00:00:00',0),(33,23,15,'2018-11-04 00:00:00',0),(34,21,16,'2018-10-13 00:00:00',0),(35,24,17,'2018-10-23 00:00:00',0),(36,24,18,'2018-10-30 00:00:00',0),(37,22,16,'2018-10-12 00:00:00',0),(38,23,16,'2018-10-12 00:00:00',0),(39,24,19,'2018-11-25 00:00:00',0),(40,24,20,'2018-12-16 00:00:00',0);

/*Table structure for table `klass_student` */

DROP TABLE IF EXISTS `klass_student`;

CREATE TABLE `klass_student` (
  `klass_id` bigint(20) unsigned NOT NULL COMMENT '班级id',
  `student_id` bigint(20) unsigned NOT NULL COMMENT '学生id',
  `course_id` bigint(20) unsigned NOT NULL COMMENT '课程id',
  `team_id` bigint(20) unsigned DEFAULT NULL COMMENT '队伍id',
  PRIMARY KEY (`klass_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `klass_student` */

insert  into `klass_student`(`klass_id`,`student_id`,`course_id`,`team_id`) values (21,103,16,NULL),(21,104,16,NULL),(21,105,16,NULL),(21,106,16,NULL),(21,107,16,NULL),(21,108,16,NULL),(21,109,16,NULL),(21,110,16,NULL),(21,111,16,NULL),(21,112,16,NULL),(21,113,16,NULL),(21,114,16,NULL),(21,115,16,NULL),(21,116,16,NULL),(21,117,16,NULL),(21,118,16,NULL),(21,119,16,NULL),(21,120,16,NULL),(21,121,16,NULL),(21,122,16,NULL),(21,123,16,NULL),(21,124,16,NULL),(21,125,16,NULL),(21,126,16,NULL),(21,127,16,NULL),(21,128,16,NULL),(21,129,16,NULL),(21,130,16,NULL),(21,131,16,NULL),(21,132,16,NULL),(21,133,16,NULL),(21,134,16,NULL),(21,135,16,NULL),(21,136,16,NULL),(21,137,16,NULL),(21,138,16,NULL),(21,139,16,NULL),(21,140,16,NULL),(21,141,16,NULL),(21,142,16,NULL),(21,143,16,NULL),(21,144,16,NULL),(21,145,16,NULL),(21,146,16,NULL),(21,147,16,NULL),(21,148,16,NULL),(21,149,16,NULL),(21,150,16,NULL),(21,151,16,NULL),(21,152,16,NULL),(21,153,16,NULL),(21,154,16,NULL),(21,155,16,NULL),(21,156,16,NULL),(21,157,16,NULL),(22,158,16,NULL),(22,159,16,NULL),(22,160,16,NULL),(22,161,16,NULL),(22,162,16,NULL),(22,163,16,NULL),(22,164,16,NULL),(22,165,16,NULL),(22,166,16,NULL),(22,167,16,NULL),(22,168,16,NULL),(22,169,16,NULL),(22,170,16,NULL),(22,171,16,NULL),(22,172,16,NULL),(22,173,16,NULL),(22,174,16,NULL),(22,175,16,NULL),(22,176,16,NULL),(22,177,16,NULL),(22,178,16,NULL),(22,179,16,NULL),(22,180,16,NULL),(22,181,16,NULL),(22,182,16,NULL),(22,183,16,NULL),(22,184,16,NULL),(22,185,16,NULL),(22,186,16,NULL),(22,187,16,NULL),(22,188,16,NULL),(22,189,16,NULL),(22,190,16,NULL),(22,191,16,NULL),(22,192,16,NULL),(22,193,16,NULL),(22,194,16,NULL),(22,195,16,NULL),(22,196,16,NULL),(22,197,16,NULL),(22,198,16,NULL),(22,199,16,NULL),(22,200,16,NULL),(22,201,16,NULL),(22,202,16,NULL),(23,203,16,NULL),(23,204,16,NULL),(23,205,16,NULL),(23,206,16,NULL),(23,207,16,NULL),(23,208,16,NULL),(23,209,16,NULL),(23,210,16,NULL),(23,211,16,NULL),(23,212,16,NULL),(23,213,16,NULL),(23,214,16,NULL),(23,215,16,NULL),(23,216,16,NULL),(23,217,16,NULL),(23,218,16,NULL),(23,219,16,NULL),(23,220,16,NULL),(23,221,16,NULL),(23,222,16,NULL),(23,223,16,NULL),(23,224,16,NULL),(23,225,16,NULL),(23,226,16,NULL),(23,227,16,NULL),(23,228,16,NULL),(23,229,16,NULL),(23,230,16,NULL),(23,231,16,NULL),(24,103,17,NULL),(24,104,17,NULL),(24,105,17,NULL),(24,107,17,NULL),(24,108,17,NULL),(24,109,17,NULL),(24,110,17,NULL),(24,111,17,NULL),(24,113,17,NULL),(24,115,17,NULL),(24,116,17,NULL),(24,117,17,NULL),(24,118,17,NULL),(24,119,17,NULL),(24,120,17,NULL),(24,121,17,NULL),(24,123,17,NULL),(24,124,17,NULL),(24,125,17,NULL),(24,128,17,NULL),(24,129,17,NULL),(24,130,17,NULL),(24,132,17,NULL),(24,133,17,NULL),(24,134,17,NULL),(24,135,17,NULL),(24,136,17,NULL),(24,139,17,NULL),(24,140,17,NULL),(24,141,17,NULL),(24,142,17,NULL),(24,143,17,NULL),(24,144,17,NULL),(24,145,17,NULL),(24,146,17,NULL),(24,147,17,NULL),(24,148,17,NULL),(24,149,17,NULL),(24,150,17,NULL),(24,151,17,NULL),(24,152,17,NULL),(24,154,17,NULL),(24,155,17,NULL),(24,156,17,NULL),(24,157,17,NULL),(24,158,17,NULL),(24,160,17,NULL),(24,161,17,NULL),(24,163,17,NULL),(24,164,17,NULL),(24,165,17,NULL),(24,167,17,NULL),(24,168,17,NULL),(24,169,17,NULL),(24,173,17,NULL),(24,174,17,NULL),(24,175,17,NULL),(24,177,17,NULL),(24,178,17,NULL),(24,180,17,NULL),(24,181,17,NULL),(24,182,17,NULL),(24,184,17,NULL),(24,186,17,NULL),(24,187,17,NULL),(24,188,17,NULL),(24,189,17,NULL),(24,190,17,NULL),(24,191,17,NULL),(24,192,17,NULL),(24,193,17,NULL),(24,195,17,NULL),(24,196,17,NULL),(24,197,17,NULL),(24,198,17,NULL),(24,200,17,NULL),(24,202,17,NULL),(24,203,17,NULL),(24,204,17,NULL),(24,205,17,NULL),(24,206,17,NULL),(24,207,17,NULL),(24,208,17,NULL),(24,209,17,NULL),(24,210,17,NULL),(24,211,17,NULL),(24,212,17,NULL),(24,213,17,NULL),(24,215,17,NULL),(24,217,17,NULL),(24,218,17,NULL),(24,219,17,NULL),(24,220,17,NULL),(24,222,17,NULL),(24,223,17,NULL),(24,224,17,NULL),(24,225,17,NULL),(24,226,17,NULL),(24,227,17,NULL),(24,228,17,NULL),(24,229,17,NULL),(24,230,17,NULL),(24,231,17,NULL),(25,103,18,NULL),(25,105,18,NULL),(25,107,18,NULL),(25,108,18,NULL),(25,109,18,NULL),(25,110,18,NULL),(25,111,18,NULL),(25,112,18,NULL),(25,113,18,NULL),(25,119,18,NULL),(25,121,18,NULL),(25,128,18,NULL),(25,129,18,NULL),(25,132,18,NULL),(25,133,18,NULL),(25,134,18,NULL),(25,136,18,NULL),(25,138,18,NULL),(25,139,18,NULL),(25,140,18,NULL),(25,141,18,NULL),(25,144,18,NULL),(25,147,18,NULL),(25,148,18,NULL),(25,150,18,NULL),(25,151,18,NULL),(25,152,18,NULL),(25,154,18,NULL),(25,155,18,NULL),(25,156,18,NULL),(25,157,18,NULL),(25,158,18,NULL),(25,159,18,NULL),(25,160,18,NULL),(25,161,18,NULL),(25,164,18,NULL),(25,165,18,NULL),(25,166,18,NULL),(25,167,18,NULL),(25,170,18,NULL),(25,171,18,NULL),(25,174,18,NULL),(25,176,18,NULL),(25,177,18,NULL),(25,180,18,NULL),(25,181,18,NULL),(25,182,18,NULL),(25,183,18,NULL),(25,185,18,NULL),(25,186,18,NULL),(25,187,18,NULL),(25,188,18,NULL),(25,190,18,NULL),(25,191,18,NULL),(25,192,18,NULL),(25,193,18,NULL),(25,195,18,NULL),(25,199,18,NULL),(25,201,18,NULL),(25,202,18,NULL),(26,104,18,NULL),(26,114,18,NULL),(26,115,18,NULL),(26,116,18,NULL),(26,117,18,NULL),(26,118,18,NULL),(26,120,18,NULL),(26,122,18,NULL),(26,123,18,NULL),(26,124,18,NULL),(26,125,18,NULL),(26,126,18,NULL),(26,127,18,NULL),(26,130,18,NULL),(26,131,18,NULL),(26,135,18,NULL),(26,137,18,NULL),(26,142,18,NULL),(26,143,18,NULL),(26,145,18,NULL),(26,146,18,NULL),(26,149,18,NULL),(26,153,18,NULL),(26,163,18,NULL),(26,168,18,NULL),(26,169,18,NULL),(26,172,18,NULL),(26,173,18,NULL),(26,175,18,NULL),(26,178,18,NULL),(26,179,18,NULL),(26,184,18,NULL),(26,189,18,NULL),(26,194,18,NULL),(26,196,18,NULL),(26,197,18,NULL),(26,198,18,NULL),(26,200,18,NULL),(27,203,19,NULL),(27,204,19,NULL),(27,205,19,NULL),(27,206,19,NULL),(27,207,19,NULL),(27,208,19,NULL),(27,209,19,NULL),(27,210,19,NULL),(27,211,19,NULL),(27,212,19,NULL),(27,213,19,NULL),(27,214,19,NULL),(27,215,19,NULL),(27,216,19,NULL),(27,217,19,NULL),(27,218,19,NULL),(27,219,19,NULL),(27,220,19,NULL),(27,221,19,NULL),(27,222,19,NULL),(27,223,19,NULL),(27,224,19,NULL),(27,225,19,NULL),(27,226,19,NULL),(27,227,19,NULL),(27,228,19,NULL),(27,229,19,NULL),(27,230,19,NULL),(27,231,19,NULL),(28,166,20,NULL),(28,171,20,NULL),(28,179,20,NULL),(28,183,20,NULL),(28,185,20,NULL),(28,201,20,NULL),(28,214,20,NULL),(28,216,20,NULL),(28,221,20,NULL);

/*Table structure for table `klass_team` */

DROP TABLE IF EXISTS `klass_team`;

CREATE TABLE `klass_team` (
  `klass_id` bigint(20) unsigned NOT NULL COMMENT '班级id',
  `team_id` bigint(20) unsigned NOT NULL COMMENT '队伍id',
  PRIMARY KEY (`klass_id`,`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `klass_team` */

insert  into `klass_team`(`klass_id`,`team_id`) values (21,6),(21,7),(21,8),(21,10),(21,12),(21,14),(21,17),(21,18),(21,19),(21,20),(21,21),(22,2),(22,3),(22,4),(22,5),(22,9),(22,11),(22,13),(22,15),(22,16),(23,22),(23,23),(23,24),(23,25),(23,26),(23,27),(24,2),(24,3),(24,4),(24,6),(24,7),(24,8),(24,9),(24,10),(24,11),(24,12),(24,13),(24,14),(24,15),(24,16),(24,17),(24,18),(24,19),(24,20),(24,21),(24,22),(24,23),(24,25),(24,26),(24,27),(25,3),(25,4),(25,5),(25,7),(25,8),(25,9),(25,11),(25,12),(25,15),(25,16),(25,19),(25,20),(25,21),(26,2),(26,6),(26,10),(26,13),(26,14),(26,17),(26,18),(27,22),(27,23),(27,24),(27,25),(27,26),(27,27);

/*Table structure for table `member_limit_strategy` */

DROP TABLE IF EXISTS `member_limit_strategy`;

CREATE TABLE `member_limit_strategy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `min_member` tinyint(4) unsigned DEFAULT NULL COMMENT '最少人数',
  `max_member` tinyint(4) unsigned DEFAULT NULL COMMENT '最多人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `member_limit_strategy` */

insert  into `member_limit_strategy`(`id`,`min_member`,`max_member`) values (1,3,5);

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `klass_seminar_id` bigint(20) unsigned NOT NULL,
  `attendance_id` bigint(20) unsigned NOT NULL COMMENT '问题所针对的发言id',
  `team_id` bigint(20) unsigned NOT NULL COMMENT '提问小组的id',
  `student_id` bigint(20) unsigned NOT NULL COMMENT '提问学生的id',
  `is_selected` tinyint(4) unsigned NOT NULL COMMENT '是否被选中',
  `score` decimal(4,1) DEFAULT NULL COMMENT '提问分数',
  PRIMARY KEY (`id`),
  KEY `idx_team_id` (`team_id`),
  KEY `idx_klass_seminar_id` (`klass_seminar_id`),
  KEY `idx_attendance_id` (`attendance_id`),
  KEY `idx_student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;

/*Data for the table `question` */

insert  into `question`(`id`,`klass_seminar_id`,`attendance_id`,`team_id`,`student_id`,`is_selected`,`score`) values (1,26,33,6,122,1,'4.0'),(2,26,33,7,156,1,'4.0'),(3,26,34,7,156,1,'5.0'),(4,26,33,8,108,1,'4.0'),(5,26,34,8,108,1,'5.0'),(6,26,33,17,135,1,'5.0'),(7,26,33,18,142,1,'4.0'),(8,26,33,19,113,1,'4.0'),(9,26,33,21,141,1,'4.0'),(10,26,33,10,116,1,'4.0'),(11,26,33,12,150,1,'4.0'),(12,26,33,14,126,1,'4.0'),(13,26,34,14,126,1,'4.0'),(14,27,39,16,176,1,'4.0'),(15,27,40,16,176,1,'4.0'),(16,27,41,16,176,1,'4.0'),(17,27,39,9,187,1,'3.0'),(18,27,40,9,187,1,'4.0'),(19,27,39,11,190,1,'4.0'),(20,27,40,11,190,1,'5.0'),(21,27,41,11,190,1,'5.0'),(22,27,39,2,197,1,'4.0'),(23,27,39,3,160,1,'3.0'),(24,27,40,3,160,1,'4.0'),(25,27,39,5,183,1,'4.0'),(26,27,40,5,183,1,'5.0'),(27,27,41,5,183,1,'4.0'),(28,28,45,22,211,1,'4.0'),(29,28,45,23,207,1,'4.0'),(30,28,46,23,207,1,'5.0'),(31,28,45,24,221,1,'4.0'),(32,28,46,24,221,1,'5.0'),(33,28,47,25,208,1,'4.0'),(34,28,48,25,208,1,'5.0'),(35,28,49,26,206,1,'5.0'),(36,28,46,27,205,1,'4.0'),(37,21,63,6,122,1,'5.0'),(38,21,64,6,145,1,'4.0'),(39,21,64,7,156,1,'4.0'),(40,21,63,8,112,1,'4.0'),(41,21,65,8,108,1,'4.0'),(42,21,66,8,110,1,'5.0'),(43,21,65,20,129,1,'5.0'),(44,21,67,20,129,1,'5.0'),(45,21,67,17,135,1,'5.0'),(46,21,68,18,142,1,'4.0'),(47,21,68,19,113,1,'5.0'),(48,21,64,21,141,1,'4.0'),(49,21,66,21,141,1,'4.0'),(50,21,68,21,141,1,'5.0'),(51,21,63,14,126,1,'5.0'),(52,21,64,14,126,1,'5.0'),(53,21,66,14,126,1,'4.0'),(54,22,69,16,176,1,'3.0'),(55,22,70,9,108,1,'5.0'),(56,22,71,11,190,1,'5.0'),(57,22,70,2,197,1,'3.0'),(58,22,70,3,160,1,'4.0'),(59,22,72,3,160,1,'4.0'),(60,23,73,22,211,1,'5.0'),(61,23,73,23,207,1,'5.0'),(62,23,75,23,207,1,'5.0'),(63,23,77,23,207,1,'4.0'),(64,23,78,24,221,1,'5.0'),(65,23,74,25,208,1,'3.0'),(66,23,75,25,208,1,'4.0'),(67,23,77,25,208,1,'5.0'),(68,23,78,26,206,1,'4.0'),(69,23,76,27,205,1,'4.0'),(70,31,91,8,108,1,'5.0'),(71,31,91,20,128,1,'4.0'),(72,31,91,17,120,1,'3.0'),(73,31,91,19,113,1,'5.0'),(74,31,91,21,133,1,'5.0'),(75,31,91,10,118,1,'3.0'),(76,31,92,17,120,1,'4.0'),(77,32,95,16,159,1,'5.0'),(78,32,95,11,188,1,'5.0'),(79,32,95,13,178,1,'5.0'),(80,32,95,3,202,1,'5.0'),(81,32,96,4,192,1,'5.0'),(82,33,98,22,209,1,'5.0'),(83,33,99,23,207,1,'5.0'),(84,33,98,24,214,1,'4.0'),(85,33,98,25,212,1,'5.0'),(86,33,98,26,206,1,'5.0'),(87,33,98,27,203,1,'4.0'),(88,9,1,6,122,1,'4.0'),(89,9,1,17,135,1,'4.0'),(90,9,2,17,135,1,'4.0'),(91,9,1,18,142,1,'4.0'),(92,9,2,18,142,1,'5.0'),(93,9,1,19,113,1,'5.0'),(94,9,1,21,141,1,'5.0'),(95,9,1,10,116,1,'5.0'),(96,9,1,14,126,1,'4.0'),(97,10,7,16,176,1,'5.0'),(98,10,7,9,187,1,'5.0'),(99,10,7,2,197,1,'4.0'),(100,10,7,3,160,1,'4.0'),(101,11,13,22,211,1,'3.0'),(102,11,14,22,211,1,'4.0'),(103,11,13,23,207,1,'5.0'),(104,11,13,24,221,1,'4.0'),(105,11,13,25,208,1,'5.0'),(106,11,13,26,206,1,'5.0'),(107,11,13,27,205,1,'4.0'),(108,12,19,6,122,1,'5.0'),(109,12,19,8,108,1,'4.0'),(110,12,19,17,135,1,'4.0'),(111,12,20,17,135,1,'5.0'),(112,12,21,17,135,1,'4.0'),(113,12,19,21,141,1,'4.0'),(114,12,19,12,150,1,'4.0'),(115,12,20,12,150,1,'3.0'),(116,14,27,22,211,1,'4.0'),(117,14,27,23,207,1,'4.0'),(118,14,27,25,208,1,'4.0'),(119,14,27,26,206,1,'4.0'),(120,24,79,6,127,1,'4.0'),(121,24,80,17,135,1,'3.0'),(122,24,81,14,126,1,'3.0'),(123,24,82,16,176,1,'4.0'),(124,24,83,11,190,1,'4.0'),(125,24,79,3,160,1,'4.0'),(126,24,81,3,160,1,'4.0'),(127,24,82,22,211,1,'4.0'),(128,24,84,22,211,1,'4.0'),(129,24,84,22,211,1,'5.0'),(130,24,79,23,207,1,'5.0'),(131,24,82,23,207,1,'5.0'),(132,24,83,27,205,1,'5.0'),(133,25,85,15,182,1,'4.0'),(134,25,86,22,211,1,'5.0'),(135,25,87,26,206,1,'5.0'),(136,25,88,26,206,1,'4.0'),(137,25,89,27,205,1,'5.0'),(138,17,131,23,215,1,'5.0'),(144,40,143,17,120,1,'5.0'),(145,40,143,18,142,1,'5.0'),(146,40,143,21,141,1,'5.0'),(147,40,143,12,147,1,'4.0'),(148,40,143,14,153,1,'5.0'),(149,40,143,16,159,1,'4.0'),(150,40,143,3,158,1,'5.0'),(151,40,143,4,170,1,'5.0'),(152,40,143,22,209,1,'4.0'),(153,40,143,26,206,1,'5.0'),(154,40,143,27,205,1,'5.0'),(155,39,137,6,145,1,'4.0'),(156,39,137,17,137,1,'3.0'),(157,39,137,19,157,1,'4.0'),(158,39,137,21,138,1,'4.0'),(159,39,137,16,159,1,'4.0'),(160,39,137,2,172,1,'4.0'),(161,39,137,3,160,1,'4.0'),(162,39,137,26,206,1,'4.0'),(163,39,137,27,205,1,'4.0'),(164,29,51,7,156,1,'3.0'),(165,29,52,8,108,1,'4.0'),(166,29,53,8,108,1,'3.0'),(167,29,51,17,135,1,'5.0'),(168,29,52,17,135,1,'4.0'),(169,29,53,18,142,1,'4.0'),(170,29,53,19,113,1,'4.0'),(171,29,51,21,141,1,'4.0'),(172,29,54,14,126,1,'3.0'),(173,29,52,16,176,1,'5.0'),(174,29,54,9,187,1,'2.0'),(175,29,55,2,197,1,'5.0'),(176,29,56,3,160,1,'4.0'),(177,29,55,22,221,1,'4.0'),(178,29,54,23,207,1,'4.0'),(179,29,52,26,206,1,'5.0'),(180,29,54,27,205,1,'4.0'),(181,30,57,17,135,1,'5.0'),(182,30,58,19,113,1,'4.0'),(183,30,59,21,141,1,'3.0'),(184,30,60,10,116,1,'5.0'),(185,30,61,12,150,1,'4.0'),(186,30,62,14,126,1,'4.0'),(187,30,57,16,176,1,'4.0'),(188,30,58,16,176,1,'3.0'),(189,30,59,11,190,1,'5.0'),(190,30,60,13,163,1,'4.0'),(191,30,57,15,182,1,'3.0'),(192,30,58,2,197,1,'4.0'),(193,30,59,22,211,1,'4.0'),(194,30,60,23,207,1,'5.0'),(195,30,57,23,207,1,'5.0'),(196,30,58,24,208,1,'5.0'),(197,30,59,26,206,1,'4.0'),(198,30,57,27,205,1,'5.0'),(199,30,58,27,205,1,'4.0'),(200,18,162,8,108,1,'0.0'),(201,18,162,20,128,1,'5.0'),(202,18,162,18,142,1,'4.0'),(203,18,162,10,116,1,'5.0'),(204,18,162,21,141,1,'5.0'),(205,18,162,6,145,1,'5.0'),(206,18,162,7,156,1,'0.0'),(207,18,162,17,137,1,'5.0'),(208,18,162,19,113,1,'5.0'),(209,18,162,12,150,1,'0.0'),(210,18,162,14,153,1,'5.0'),(211,18,161,20,128,1,'4.0'),(212,18,161,21,141,1,'5.0'),(213,18,161,10,116,1,'4.0'),(214,18,161,14,153,1,'5.0'),(215,18,161,21,141,1,'5.0'),(216,18,160,21,141,1,'5.0'),(217,19,166,9,187,1,'4.0'),(218,19,166,13,163,1,'5.0'),(219,19,166,5,166,1,'4.0'),(220,19,164,9,187,1,'5.0'),(221,20,134,23,207,1,'5.0'),(222,20,134,24,214,1,'4.0'),(223,20,134,26,206,1,'4.0'),(224,20,134,27,205,1,'5.0'),(225,20,135,26,206,1,'5.0'),(226,20,135,27,205,1,'5.0'),(227,15,153,6,145,1,'3.0'),(228,15,153,7,156,1,'5.0'),(229,15,153,8,108,1,'5.0'),(230,15,153,17,137,1,'5.0'),(231,15,153,21,141,1,'5.0'),(232,15,153,10,116,1,'4.0'),(233,15,153,12,150,1,'5.0'),(234,15,152,6,145,1,'5.0'),(235,15,152,8,108,1,'5.0'),(236,15,152,21,141,1,'5.0'),(237,15,152,12,150,1,'5.0'),(238,15,152,14,153,1,'5.0'),(239,15,153,14,153,1,'4.0'),(240,15,151,6,145,1,'5.0'),(241,15,151,21,141,1,'5.0'),(242,15,151,12,150,1,'5.0'),(243,16,156,16,159,1,'5.0'),(244,16,154,16,159,1,'5.0'),(245,16,155,16,159,1,'5.0'),(246,16,156,9,187,1,'5.0'),(247,16,156,11,188,1,'5.0'),(248,16,154,11,188,1,'5.0'),(249,16,155,11,188,1,'5.0'),(250,16,156,2,172,1,'5.0'),(251,16,154,2,172,1,'5.0'),(252,16,156,3,158,1,'5.0'),(253,16,154,3,158,1,'5.0'),(254,16,155,3,158,1,'5.0'),(255,17,131,22,209,1,'5.0'),(256,17,131,23,207,1,'5.0'),(257,17,132,23,207,1,'5.0'),(258,17,133,23,207,1,'5.0'),(259,17,131,25,212,1,'5.0'),(260,17,131,26,206,1,'5.0'),(261,17,131,27,205,1,'5.0'),(262,34,104,7,156,1,'3.0'),(263,34,105,20,129,1,'5.0'),(264,34,106,20,129,1,'5.0'),(265,34,104,17,135,1,'5.0'),(266,34,106,18,142,1,'4.0'),(267,34,107,21,141,1,'4.0'),(268,34,107,10,116,1,'4.0'),(269,37,109,16,176,1,'5.0'),(270,37,110,16,176,1,'5.0'),(271,37,110,11,190,1,'4.0'),(272,37,111,13,163,1,'5.0'),(273,37,112,15,182,1,'5.0'),(274,37,113,2,197,1,'4.0'),(275,37,113,3,160,1,'5.0'),(276,37,112,3,160,1,'4.0'),(277,37,114,4,192,1,'4.0'),(278,38,115,22,211,1,'5.0'),(279,38,116,22,211,1,'4.0'),(280,38,117,23,207,1,'5.0'),(281,38,115,23,207,1,'4.0'),(282,38,116,24,221,1,'5.0'),(283,38,117,24,221,1,'4.0'),(284,38,115,25,208,1,'3.0'),(285,38,116,26,206,1,'5.0'),(286,38,115,27,205,1,'5.0'),(287,38,116,27,205,1,'5.0'),(288,38,117,27,205,1,'5.0'),(289,35,118,20,129,1,'5.0'),(290,35,119,20,129,1,'5.0'),(291,35,120,17,135,1,'4.0'),(292,35,121,18,142,1,'5.0'),(293,35,122,21,141,1,'4.0'),(294,35,123,11,190,1,'4.0'),(295,35,124,11,190,1,'4.0'),(296,35,123,23,207,1,'4.0'),(297,35,122,26,206,1,'5.0'),(298,35,121,27,205,1,'4.0'),(299,36,125,6,122,1,'4.0'),(300,36,126,7,156,1,'3.0'),(301,36,127,17,135,1,'3.0'),(302,36,128,21,141,1,'4.0'),(303,36,128,12,150,1,'5.0'),(304,36,129,12,150,1,'4.0'),(305,36,130,14,126,1,'4.0'),(306,36,129,16,176,1,'4.0'),(307,36,128,11,190,1,'4.0'),(308,36,127,2,197,1,'4.0'),(309,36,126,25,208,1,'5.0'),(310,36,127,26,206,1,'4.0'),(311,36,128,27,205,1,'4.0');

/*Table structure for table `round` */

DROP TABLE IF EXISTS `round`;

CREATE TABLE `round` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) unsigned NOT NULL COMMENT '课程id',
  `round_serial` tinyint(4) unsigned NOT NULL COMMENT '轮次序号',
  `presentation_score_method` tinyint(4) unsigned NOT NULL COMMENT '本轮展示分数计算方法',
  `report_score_method` tinyint(4) unsigned NOT NULL COMMENT '本轮报告分数计算方法',
  `question_score_method` tinyint(4) unsigned NOT NULL COMMENT '本轮提问分数计算方法',
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `round` */

insert  into `round`(`id`,`course_id`,`round_serial`,`presentation_score_method`,`report_score_method`,`question_score_method`) values (3,16,1,0,0,0),(4,16,2,0,0,0),(5,16,3,0,0,0),(6,16,4,0,0,0),(7,17,1,0,0,0),(8,17,2,0,0,0);

/*Table structure for table `round_score` */

DROP TABLE IF EXISTS `round_score`;

CREATE TABLE `round_score` (
  `round_id` bigint(20) unsigned NOT NULL COMMENT '轮次id',
  `team_id` bigint(20) unsigned NOT NULL COMMENT '小组id',
  `total_score` decimal(4,1) DEFAULT NULL COMMENT '总成绩',
  `presentation_score` decimal(4,1) DEFAULT NULL COMMENT '展示成绩',
  `question_score` decimal(4,1) DEFAULT NULL COMMENT '提问成绩',
  `report_score` decimal(4,1) DEFAULT NULL COMMENT '报告成绩',
  PRIMARY KEY (`round_id`,`team_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `round_score` */

insert  into `round_score`(`round_id`,`team_id`,`total_score`,`presentation_score`,`question_score`,`report_score`) values (3,2,'2.8','4.0','4.0','0.0'),(3,3,'4.7','5.0','5.0','4.0'),(3,4,'2.4','3.0','4.0','0.0'),(3,5,'2.5','4.0','0.0','3.0'),(3,6,'4.7','5.0','5.0','4.0'),(3,7,'4.1','5.0','4.0','3.0'),(3,8,'3.6','3.0','5.0','3.0'),(3,9,'5.0','5.0','5.0','5.0'),(3,10,'3.2','5.0','4.0','0.0'),(3,11,'4.6','4.0','5.0','5.0'),(3,12,'2.1','3.0','0.0','3.0'),(3,13,'4.6','4.0','5.0','5.0'),(3,14,'4.6','4.0','5.0','5.0'),(3,15,'3.1','4.0','5.0','0.0'),(3,16,'4.3','4.0','5.0','4.0'),(3,17,'4.6','4.0','5.0','5.0'),(3,18,'3.6','3.0','4.0','4.0'),(3,19,'3.5','2.0','5.0','4.0'),(3,20,'4.3','4.0','5.0','4.0'),(3,21,'3.1','4.0','5.0','0.0'),(3,22,'4.6','4.0','5.0','5.0'),(3,23,'4.6','4.0','5.0','5.0'),(3,24,'4.6','4.0','5.0','5.0'),(3,25,'4.6','4.0','5.0','5.0'),(3,26,'4.8','4.5','5.0','5.0'),(3,27,'4.7','5.0','5.0','4.0'),(4,2,'3.3','3.0','4.0','3.0'),(4,3,'3.9','3.0','5.0','4.0'),(4,4,'4.6','4.0','5.0','5.0'),(4,5,'4.3','4.0','5.0','4.0'),(4,6,'4.3','5.0','4.0','3.5'),(4,7,'4.6','5.0','5.0','3.5'),(4,8,'3.1','4.0','5.0','0.0'),(4,9,'4.0','4.0','4.0','4.0'),(4,10,'4.7','5.0','4.0','5.0'),(4,11,'4.6','4.0','5.0','5.0'),(4,12,'4.0','4.0','4.0','4.0'),(4,13,'4.2','4.0','5.0','3.5'),(4,14,'4.4','5.0','4.0','4.0'),(4,15,'3.2','5.0','0.0','4.0'),(4,16,'4.4','5.0','5.0','3.0'),(4,17,'4.7','5.0','5.0','4.0'),(4,18,'4.4','5.0','4.0','4.0'),(4,19,'4.3','4.0','5.0','4.0'),(4,20,'4.0','4.0','4.0','4.0'),(4,21,'4.7','5.0','5.0','4.0'),(4,22,'4.6','4.0','5.0','5.0'),(4,23,'4.9','5.0','5.0','4.5'),(4,24,'4.7','4.5','5.0','4.5'),(4,25,'4.7','4.5','5.0','4.5'),(4,26,'4.7','4.5','5.0','4.5'),(4,27,'4.5','4.5','4.0','5.0'),(5,2,'4.4','5.0','4.0','4.0'),(5,3,'4.4','5.0','4.0','4.0'),(5,4,'0.0','0.0','0.0','0.0'),(5,5,'2.8','4.0','0.0','4.0'),(5,6,'4.7','5.0','5.0','4.0'),(5,7,'2.5','4.0','0.0','3.0'),(5,8,'4.4','5.0','4.0','4.0'),(5,9,'4.7','5.0','5.0','4.0'),(5,10,'4.6','4.0','5.0','5.0'),(5,11,'2.7','4.5','0.0','3.0'),(5,12,'4.0','4.0','4.0','4.0'),(5,13,'2.8','4.0','0.0','4.0'),(5,14,'4.0','4.0','4.0','4.0'),(5,15,'2.8','4.0','0.0','4.0'),(5,16,'4.3','4.0','5.0','4.0'),(5,17,'4.6','4.0','5.0','5.0'),(5,18,'4.3','4.0','5.0','4.0'),(5,19,'4.6','4.0','5.0','5.0'),(5,20,'2.8','4.0','0.0','4.0'),(5,21,'4.7','5.0','5.0','4.0'),(5,22,'4.5','4.5','4.0','5.0'),(5,23,'4.5','4.5','5.0','4.0'),(5,24,'3.8','3.5','4.0','4.0'),(5,25,'4.7','4.5','5.0','4.5'),(5,26,'5.0','5.0','5.0','5.0'),(5,27,'4.3','4.3','4.0','4.5'),(6,2,'5.0','5.0','5.0','5.0'),(6,3,'5.0','5.0','5.0','5.0'),(6,4,'1.6','4.0','0.0','0.0'),(6,5,'3.6','3.0','4.0','4.0'),(6,6,'4.7','5.0','5.0','4.0'),(6,7,'3.9','3.0','5.0','4.0'),(6,8,'4.2','3.0','5.0','5.0'),(6,9,'5.0','5.0','5.0','5.0'),(6,10,'5.0','5.0','5.0','5.0'),(6,11,'4.3','4.0','5.0','4.0'),(6,12,'4.5','4.0','5.0','4.5'),(6,13,'4.6','4.0','5.0','5.0'),(6,14,'5.0','5.0','5.0','5.0'),(6,15,'3.1','4.0','0.0','5.0'),(6,16,'4.3','4.0','5.0','4.0'),(6,17,'5.0','5.0','5.0','5.0'),(6,18,'4.0','4.0','4.0','4.0'),(6,19,'4.2','3.0','5.0','5.0'),(6,20,'4.3','4.0','5.0','4.0'),(6,21,'4.9','5.0','5.0','4.5'),(6,22,'5.0','5.0','5.0','5.0'),(6,23,'5.0','5.0','5.0','5.0'),(6,24,'4.3','4.0','4.0','5.0'),(6,25,'4.7','5.0','5.0','4.0'),(6,26,'5.0','5.0','5.0','5.0'),(6,27,'5.0','5.0','5.0','5.0'),(7,2,'4.4','5.0','4.0','4.0'),(7,3,'3.6','3.0','4.0','4.0'),(7,4,'2.6','5.0','0.0','2.0'),(7,6,'4.4','5.0','4.0','4.0'),(7,7,'3.7','4.0','3.0','4.0'),(7,8,'2.8','4.0','0.0','4.0'),(7,9,'2.8','4.0','0.0','4.0'),(7,10,'3.2','5.0','0.0','4.0'),(7,11,'4.0','4.0','4.0','4.0'),(7,12,'4.0','4.0','5.0','3.0'),(7,13,'2.4','3.0','0.0','4.0'),(7,14,'3.6','3.0','4.0','4.0'),(7,15,'2.4','3.0','4.0','0.0'),(7,16,'4.0','4.0','4.0','4.0'),(7,17,'4.0','4.0','4.0','4.0'),(7,18,'4.9','5.0','5.0','4.5'),(7,19,'1.2','3.0','0.0','0.0'),(7,20,'4.1','3.5','5.0','4.0'),(7,21,'4.0','4.0','4.0','4.0'),(7,22,'4.5','4.0','5.0','4.5'),(7,23,'4.5','4.0','5.0','4.5'),(7,25,'4.7','5.0','5.0','4.0'),(7,26,'4.7','5.0','5.0','4.0'),(7,27,'4.5','4.0','5.0','4.5'),(8,2,'4.3','4.0','5.0','4.0'),(8,3,'5.0','5.0','5.0','5.0'),(8,4,'4.7','5.0','5.0','4.0'),(8,6,'4.0','4.0','4.0','4.0'),(8,7,'2.9','2.0','3.0','4.0'),(8,8,'3.6','3.0','4.0','4.0'),(8,9,'3.4','4.0','2.0','4.0'),(8,10,'4.7','5.0','5.0','4.0'),(8,11,'3.1','4.0','5.0','0.0'),(8,12,'4.0','4.0','4.0','4.0'),(8,13,'4.3','4.0','4.0','5.0'),(8,14,'3.9','3.0','5.0','4.0'),(8,15,'3.4','4.0','3.0','3.0'),(8,16,'4.6','4.0','5.0','5.0'),(8,17,'4.7','5.0','5.0','4.0'),(8,18,'4.7','5.0','5.0','4.0'),(8,19,'4.0','4.0','4.0','4.0'),(8,20,'2.1','3.0','0.0','3.0'),(8,21,'4.3','4.0','5.0','4.0'),(8,22,'4.4','5.0','4.0','4.0'),(8,23,'3.5','5.0','5.0','0.0'),(8,25,'4.6','4.0','5.0','5.0'),(8,26,'4.7','5.0','5.0','4.0'),(8,27,'5.0','5.0','5.0','5.0');

/*Table structure for table `seminar` */

DROP TABLE IF EXISTS `seminar`;

CREATE TABLE `seminar` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint(20) unsigned NOT NULL COMMENT '课程id',
  `round_id` bigint(20) unsigned NOT NULL COMMENT '轮次id',
  `seminar_name` varchar(30) NOT NULL COMMENT '讨论课名称',
  `introduction` varchar(500) DEFAULT NULL COMMENT '讨论课介绍',
  `max_team` tinyint(4) unsigned NOT NULL COMMENT '报名讨论课最多组数',
  `is_visible` tinyint(4) unsigned NOT NULL COMMENT '是否可见',
  `seminar_serial` tinyint(4) unsigned NOT NULL COMMENT '讨论课序号',
  `enroll_start_time` datetime DEFAULT NULL COMMENT '讨论课报名开始时间',
  `enroll_end_time` datetime DEFAULT NULL COMMENT '讨论课报名截止时间',
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`),
  KEY `idx_round_id` (`round_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `seminar` */

insert  into `seminar`(`id`,`course_id`,`round_id`,`seminar_name`,`introduction`,`max_team`,`is_visible`,`seminar_serial`,`enroll_start_time`,`enroll_end_time`) values (5,16,5,'对象模型设计','对象模型设计\r\n\r\n所有小组请课前提前准备，课堂讨论每个小组15分钟\r\n\r\n课后提交书面报告，书面报告应该是一份完整对象模型和关系模型的设计说明书。课后以作业方式提交设计报告，文件以组号命名， PDF格式',7,1,5,'2018-09-01 21:40:14','2018-11-16 12:00:00'),(6,16,5,'Controller层API设计','Controller的api的详细设计\r\n\r\n所有小组请课前提前准备，课堂讨论每个小组15分钟\r\n\r\n课后提交书面报告，书面报告应该是一份完整API设计说明书。课后以作业方式提交设计报告，文件以组号命名， PDF格式，可以提交在线链接\r\n\r\n本次讨论课供报名竞选Controller层标准组的小组报名，每个小组只能竞选一个标准组名额。\r\n\r\n不想竞选的小组请报名第五次讨论课',6,1,6,'2018-09-01 21:41:36','2018-11-30 12:00:00'),(7,16,6,'讨论课七','系统Controller层、Service层、DAO层和Entity的详细设计，包括Package的设计，类图，Sequence Diagram（能体现设计的部分），Deployment Diagram',6,1,7,'2018-09-01 08:58:35','2018-12-21 00:00:00'),(8,16,6,'详细设计','系统Controller层、Service层、DAO层和Entity的详细设计，包括Package的设计，类图，Sequence Diagram（能体现设计的部分），Deployment Diagram',6,1,8,'2018-09-01 08:58:35','2018-12-21 00:00:00'),(9,16,4,'界面设计','界面导航图和所有界面原型设计\r\n\r\n所有小组请课前提前准备，课堂讨论每个小组15分钟\r\n\r\n课后提交书面报告，书面报告应该是一份完整界面设计说明书。课后以作业方式提交设计报告，文件以组号命名， PDF格式',6,1,3,'2018-09-15 11:35:00','2018-10-11 11:35:16'),(10,16,3,'用例分析','题目为课堂管理系统的用例分析，包括分辨Actors、Use Cases划分和撰写用例。课后发言小组提交书面报告，书面报告应该是一份完整的用例设计。课后以作业方式提交设计报告，文件以组号命名，PDF格式',6,1,1,'2018-09-01 11:49:42','2018-09-27 00:00:00'),(11,17,7,'JavaEE与其他脚本平台比较','本次讨论课一共可容纳5个小组，每个小组15分钟，其中10分钟陈述，5分钟讨论 报名参加讨论课一的小组请按照以下格式撰写标题： 序号：小组编号， 如1-1组想在第4个发言，则发帖标题为4:1-1 PPT请以回复方式发在自己的帖子后面',5,1,1,'2018-09-01 11:56:52','2018-09-30 00:00:00'),(12,17,7,'POJO和依赖注入对于系统设计和测试的意义','请按照以下格式撰写标题： 序号：小组编号， 如1-1组想在第4个发言，则发帖标题为4:1-1 PPT请以回复方式发在自己的帖子后面',6,1,2,'2018-09-01 11:58:57','2018-10-13 00:00:00'),(13,17,8,'比较FreeMarker与其他的视图层技术','比较FreeMarker与其他的视图层技术。\r\n\r\n本次讨论课一共可容纳6个小组，\r\n\r\n每个小组15分钟，其中10分钟陈述，5分钟讨论\r\n\r\n请按照以下格式撰写标题： 序号：小组编号， 如1-1组想在第4个发言，则发帖标题为4:1-1 PPT请以回复方式发在自己的帖子后面\r\n\r\n成绩50%课堂发言，30%书面报告，20%课堂提问',6,1,5,'2018-11-01 12:22:37','2018-11-16 12:22:42'),(14,17,8,'Mybatis','共6组报名。每个小组15分钟，其中10分钟陈述，5分钟讨论\r\n\r\n请按照以下格式撰写标题： 序号：小组编号， 如1-1组想在第4个发言，则发帖标题为4:1-1 PPT请以回复方式发在自己的帖子后面\r\n\r\n成绩50%课堂发言，30%书面报告，20%课堂提问',6,1,6,'2018-11-10 12:26:11','2018-11-16 12:26:27'),(15,16,4,'领域模型','讨论课内容为领域模型分析，包括领域模型的Package Diagrams。所有小组请课前提前准备，课堂讨论每个小组15分钟。课后提交书面报告，书面报告应该是一份完整领域模型设计。课后以作业方式提交设计报告，文件以组号命名， PDF格式。',6,1,4,'2018-09-01 00:00:00','2018-11-02 00:00:00'),(16,16,3,'业务流程分析','每个小组需要以讨论课1中的一个小组的用例设计为基础来设计业务流程。',6,1,2,'2018-09-01 00:35:29','2018-10-13 00:00:00'),(17,17,7,'SpringBoot综述\r\n和Maven综述','SpringBoot综述\r\n和Maven综述',7,1,1,'2018-09-01 01:16:20','2018-10-18 00:00:00'),(18,17,7,'在JavaEE中的MVC体系结构','重点讨论MVC架构，各层的作用以及在JavaEE中的技术实现',6,1,1,'2018-09-01 01:16:31','2018-11-01 00:00:00'),(19,17,8,'Hibernate综述','Hibernate综述, Hibernate与MyBatis的比较。 Hibernate的内部实现机制等。建议参考Hibernate in Action这本书\r\n\r\n共6组报名。每个小组15分钟，其中10分钟陈述，5分钟讨论\r\n\r\n请按照以下格式撰写标题： 序号：小组编号， 如1-1组想在第4个发言，则发帖标题为4:1-1 PPT请以回复方式发在自己的帖子后面\r\n\r\n成绩50%课堂发言，30%书面报告，20%课堂提问',6,1,7,'2018-09-14 00:00:00','2018-12-15 00:00:00'),(20,17,8,'Spring框架的AOP综述','重点讨论在课程设计中AOP可以做那些功能\r\n\r\n共6组报名。\r\n\r\n每个小组15分钟，其中10分钟陈述，5分钟讨论\r\n\r\n请按照以下格式撰写标题： 序号：小组编号， 如1-1组想在第4个发言，则发帖标题为4:1-1 PPT请以回复方式发在自己的帖子后面\r\n\r\n成绩50%课堂发言，30%书面报告，20%课堂提问',6,1,8,'2018-09-13 00:00:00','2018-12-14 00:00:00');

/*Table structure for table `seminar_score` */

DROP TABLE IF EXISTS `seminar_score`;

CREATE TABLE `seminar_score` (
  `klass_seminar_id` bigint(20) unsigned NOT NULL COMMENT '班级讨论课id',
  `team_id` bigint(20) unsigned NOT NULL COMMENT '小组id',
  `total_score` decimal(4,1) DEFAULT NULL COMMENT '总成绩',
  `presentation_score` decimal(4,1) DEFAULT NULL COMMENT '展示成绩',
  `question_score` decimal(4,1) DEFAULT NULL COMMENT '提问成绩',
  `report_score` decimal(4,1) DEFAULT NULL COMMENT '报告成绩',
  PRIMARY KEY (`klass_seminar_id`,`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `seminar_score` */

insert  into `seminar_score`(`klass_seminar_id`,`team_id`,`total_score`,`presentation_score`,`question_score`,`report_score`) values (9,6,NULL,NULL,'4.0',NULL),(9,7,NULL,'4.0','0.0','3.0'),(9,8,NULL,NULL,'0.0',NULL),(9,10,NULL,NULL,'5.0',NULL),(9,12,NULL,NULL,'0.0',NULL),(9,14,NULL,'4.0','4.0','4.0'),(9,17,NULL,NULL,'4.0',NULL),(9,18,NULL,'4.0','5.0','4.0'),(9,19,NULL,NULL,'5.0',NULL),(9,20,NULL,'4.0','0.0','4.0'),(9,21,NULL,'5.0','5.0','4.0'),(10,2,NULL,'5.0','4.0','4.0'),(10,3,NULL,NULL,'4.0',NULL),(10,4,NULL,NULL,'0.0',NULL),(10,5,NULL,'4.0','0.0','4.0'),(10,9,NULL,'5.0','5.0','4.0'),(10,11,NULL,NULL,'0.0',NULL),(10,13,NULL,'4.0','0.0','4.0'),(10,15,NULL,'4.0','0.0','4.0'),(10,16,NULL,'4.0','5.0','4.0'),(11,22,NULL,'5.0','4.0','5.0'),(11,23,NULL,'5.0','5.0','4.0'),(11,24,NULL,'4.0','4.0','4.0'),(11,25,NULL,'5.0','5.0','4.0'),(11,26,NULL,'5.0','5.0','5.0'),(11,27,NULL,'4.0','4.0','5.0'),(12,6,NULL,'5.0','5.0','4.0'),(12,7,NULL,NULL,'0.0',NULL),(12,8,NULL,'5.0','5.0','5.0'),(12,10,NULL,'4.0','0.0','5.0'),(12,12,NULL,'4.0','4.0','4.0'),(12,14,NULL,NULL,'0.0',NULL),(12,17,NULL,'4.0','5.0','5.0'),(12,18,NULL,NULL,'0.0',NULL),(12,19,NULL,'4.0','0.0','5.0'),(12,20,NULL,NULL,'0.0',NULL),(12,21,NULL,NULL,'4.0',NULL),(13,2,NULL,NULL,'0.0',NULL),(13,3,NULL,'5.0','0.0','4.0'),(13,4,NULL,NULL,'0.0',NULL),(13,5,NULL,NULL,'0.0',NULL),(13,9,NULL,NULL,'0.0',NULL),(13,11,NULL,'4.5','0.0','3.0'),(13,13,NULL,NULL,'0.0',NULL),(13,15,NULL,NULL,'0.0',NULL),(13,16,NULL,NULL,'0.0',NULL),(14,22,NULL,'4.0','4.0','5.0'),(14,23,NULL,'4.0','4.0','4.0'),(14,24,NULL,'3.0','0.0','4.0'),(14,25,NULL,'4.0','4.0','5.0'),(14,26,NULL,'5.0','4.0','5.0'),(14,27,NULL,'4.5','0.0','4.0'),(15,6,NULL,'5.0','5.0','4.0'),(15,7,NULL,'3.0','5.0','4.0'),(15,8,NULL,NULL,'5.0',NULL),(15,10,NULL,NULL,'4.0',NULL),(15,12,NULL,NULL,'5.0',NULL),(15,14,NULL,'5.0','5.0','5.0'),(15,17,NULL,NULL,'5.0',NULL),(15,18,NULL,'4.0','0.0','4.0'),(15,19,NULL,'3.0','0.0','5.0'),(15,20,NULL,NULL,'0.0',NULL),(15,21,NULL,NULL,'5.0',NULL),(16,2,NULL,NULL,'5.0',NULL),(16,3,NULL,NULL,'5.0',NULL),(16,4,NULL,NULL,'0.0',NULL),(16,5,NULL,NULL,'0.0',NULL),(16,9,NULL,NULL,'5.0',NULL),(16,11,NULL,NULL,'5.0',NULL),(16,13,NULL,NULL,'0.0',NULL),(16,15,NULL,'4.0','0.0','5.0'),(16,16,NULL,'4.0','5.0','4.0'),(17,22,NULL,NULL,'5.0',NULL),(17,23,NULL,'5.0','5.0','5.0'),(17,24,NULL,'4.0','0.0','5.0'),(17,25,NULL,NULL,'5.0',NULL),(17,26,NULL,NULL,'5.0',NULL),(17,27,NULL,'5.0','5.0','5.0'),(18,6,NULL,NULL,'5.0',NULL),(18,7,NULL,NULL,'0.0',NULL),(18,8,NULL,'3.0','0.0','5.0'),(18,10,NULL,'5.0','5.0','5.0'),(18,12,NULL,'4.0','0.0','4.5'),(18,14,NULL,NULL,'5.0',NULL),(18,17,NULL,'5.0','5.0','5.0'),(18,18,NULL,NULL,'4.0',NULL),(18,19,NULL,NULL,'5.0',NULL),(18,20,NULL,'4.0','5.0','4.0'),(18,21,NULL,'5.0','5.0','4.5'),(19,2,NULL,'5.0','0.0','5.0'),(19,3,NULL,'5.0','0.0','5.0'),(19,4,NULL,'4.0','0.0',NULL),(19,5,NULL,'3.0','4.0','4.0'),(19,9,NULL,'5.0','5.0','5.0'),(19,11,NULL,'4.0','0.0','4.0'),(19,13,NULL,'4.0','5.0','5.0'),(19,15,NULL,NULL,'0.0',NULL),(19,16,NULL,NULL,'0.0',NULL),(20,22,NULL,'5.0','0.0','5.0'),(20,23,NULL,NULL,'5.0',NULL),(20,24,NULL,NULL,'4.0',NULL),(20,25,NULL,'5.0','0.0','4.0'),(20,26,NULL,'5.0','5.0','5.0'),(20,27,NULL,NULL,'5.0',NULL),(21,6,NULL,'5.0','5.0','4.0'),(21,7,NULL,'5.0','4.0','3.0'),(21,8,NULL,'3.0','5.0','3.0'),(21,10,NULL,NULL,'0.0',NULL),(21,12,NULL,NULL,'0.0',NULL),(21,14,NULL,NULL,'5.0',NULL),(21,17,NULL,'4.0','5.0','5.0'),(21,18,NULL,'3.0','4.0','4.0'),(21,19,NULL,'2.0','5.0','0.0'),(21,20,NULL,NULL,'5.0',NULL),(21,21,NULL,NULL,'5.0',NULL),(22,2,NULL,NULL,'3.0',NULL),(22,3,NULL,'5.0','4.0','4.0'),(22,4,NULL,NULL,'0.0',NULL),(22,5,NULL,NULL,'0.0',NULL),(22,9,NULL,NULL,'5.0',NULL),(22,11,NULL,'4.0','5.0','5.0'),(22,13,NULL,NULL,'0.0',NULL),(22,15,NULL,'0.0','0.0','0.0'),(22,16,NULL,'4.0','3.0','4.0'),(23,22,NULL,'4.0','5.0','5.0'),(23,23,NULL,'4.0','5.0','5.0'),(23,24,NULL,'4.0','5.0','5.0'),(23,25,NULL,'4.0','5.0','5.0'),(23,26,NULL,'4.0','4.0','5.0'),(23,27,NULL,'5.0','4.0','4.0'),(24,2,NULL,NULL,'0.0',NULL),(24,3,NULL,NULL,'4.0',NULL),(24,4,NULL,NULL,'0.0',NULL),(24,6,NULL,NULL,'4.0',NULL),(24,7,NULL,NULL,'0.0',NULL),(24,8,NULL,NULL,'0.0',NULL),(24,9,NULL,'4.0','0.0','4.0'),(24,10,NULL,NULL,'0.0',NULL),(24,11,NULL,'4.0','4.0','4.0'),(24,12,NULL,NULL,'0.0',NULL),(24,13,NULL,'3.0','0.0','4.0'),(24,14,NULL,NULL,'3.0',NULL),(24,15,NULL,NULL,'0.0',NULL),(24,16,NULL,NULL,'4.0',NULL),(24,17,NULL,NULL,'3.0',NULL),(24,18,NULL,NULL,'0.0',NULL),(24,19,NULL,NULL,'0.0',NULL),(24,20,NULL,NULL,'0.0',NULL),(24,21,NULL,'4.0','0.0','4.0'),(24,22,NULL,NULL,'5.0',NULL),(24,23,NULL,NULL,'5.0',NULL),(24,25,NULL,NULL,'0.0',NULL),(24,26,NULL,'5.0','0.0','4.0'),(24,27,NULL,'4.0','5.0','4.5'),(25,2,NULL,NULL,'0.0',NULL),(25,3,NULL,NULL,'0.0',NULL),(25,4,NULL,NULL,'0.0',NULL),(25,6,NULL,'5.0','0.0','4.0'),(25,7,NULL,NULL,'0.0',NULL),(25,8,NULL,'4.0','0.0','4.0'),(25,9,NULL,NULL,'0.0',NULL),(25,10,NULL,NULL,'0.0',NULL),(25,11,NULL,NULL,'0.0',NULL),(25,12,NULL,NULL,'0.0',NULL),(25,13,NULL,NULL,'0.0',NULL),(25,14,NULL,NULL,'0.0',NULL),(25,15,NULL,NULL,'4.0',NULL),(25,16,NULL,'4.0','0.0','4.0'),(25,17,NULL,NULL,'0.0',NULL),(25,18,NULL,NULL,'0.0',NULL),(25,19,NULL,'3.0','0.0',NULL),(25,20,NULL,'3.5','0.0','4.0'),(25,21,NULL,NULL,'0.0',NULL),(25,22,NULL,'4.0','5.0','4.5'),(25,23,NULL,NULL,'0.0',NULL),(25,25,NULL,NULL,'0.0',NULL),(25,26,NULL,NULL,'5.0',NULL),(25,27,NULL,NULL,'5.0',NULL),(26,6,NULL,'5.0','4.0','3.5'),(26,7,NULL,'5.0','5.0','3.5'),(26,8,NULL,'4.0','5.0',NULL),(26,10,NULL,NULL,'4.0',NULL),(26,12,NULL,'4.0','4.0','4.0'),(26,14,NULL,'5.0','4.0','4.0'),(26,17,NULL,'5.0','5.0','4.0'),(26,18,NULL,'5.0','4.0','4.0'),(26,19,NULL,NULL,'4.0',NULL),(26,20,NULL,NULL,'0.0',NULL),(26,21,NULL,NULL,'4.0',NULL),(27,2,NULL,'3.0','4.0','3.0'),(27,3,NULL,'3.0','4.0','4.0'),(27,4,NULL,NULL,'0.0',NULL),(27,5,NULL,NULL,'5.0',NULL),(27,9,NULL,'4.0','4.0','4.0'),(27,11,NULL,'4.0','5.0','5.0'),(27,13,NULL,'4.0','0.0','3.5'),(27,15,NULL,NULL,'0.0',NULL),(27,16,NULL,'5.0','4.0','3.0'),(28,22,NULL,'4.0','4.0','5.0'),(28,23,NULL,'5.0','5.0','5.0'),(28,24,NULL,'5.0','5.0','5.0'),(28,25,NULL,'5.0','5.0','5.0'),(28,26,NULL,'5.0','5.0','5.0'),(28,27,NULL,'4.0','4.0','5.0'),(29,2,NULL,NULL,'5.0',NULL),(29,3,NULL,NULL,'4.0',NULL),(29,4,NULL,NULL,'0.0',NULL),(29,6,NULL,NULL,'0.0',NULL),(29,7,NULL,NULL,'3.0',NULL),(29,8,NULL,'3.0','4.0','4.0'),(29,9,NULL,'4.0','2.0','4.0'),(29,10,NULL,NULL,'0.0',NULL),(29,11,NULL,NULL,'0.0',NULL),(29,12,NULL,NULL,'0.0',NULL),(29,13,NULL,'4.0','0.0','5.0'),(29,14,NULL,NULL,'3.0',NULL),(29,15,NULL,NULL,'0.0',NULL),(29,16,NULL,'4.0','5.0','5.0'),(29,17,NULL,NULL,'5.0',NULL),(29,18,NULL,NULL,'4.0',NULL),(29,19,NULL,NULL,'4.0',NULL),(29,20,NULL,NULL,'0.0',NULL),(29,21,NULL,'4.0','4.0','4.0'),(29,22,NULL,NULL,'4.0',NULL),(29,23,NULL,NULL,'4.0',NULL),(29,25,NULL,NULL,'0.0',NULL),(29,26,NULL,NULL,'5.0',NULL),(29,27,NULL,'5.0','4.0','5.0'),(30,2,NULL,NULL,'4.0',NULL),(30,3,NULL,NULL,'0.0',NULL),(30,4,NULL,NULL,'0.0',NULL),(30,6,NULL,NULL,'0.0',NULL),(30,7,NULL,'2.0','0.0','4.0'),(30,8,NULL,NULL,'0.0',NULL),(30,9,NULL,NULL,'0.0',NULL),(30,10,NULL,'5.0','5.0','4.0'),(30,11,NULL,NULL,'5.0',NULL),(30,12,NULL,NULL,'4.0',NULL),(30,13,NULL,NULL,'4.0',NULL),(30,14,NULL,NULL,'4.0',NULL),(30,15,NULL,NULL,'3.0',NULL),(30,16,NULL,NULL,'4.0',NULL),(30,17,NULL,'5.0','5.0','4.0'),(30,18,NULL,NULL,'0.0',NULL),(30,19,NULL,'4.0','4.0','4.0'),(30,20,NULL,'3.0','0.0','3.0'),(30,21,NULL,NULL,'3.0',NULL),(30,22,NULL,'5.0','4.0','4.0'),(30,23,NULL,NULL,'5.0',NULL),(30,25,NULL,NULL,'5.0',NULL),(30,26,NULL,NULL,'4.0',NULL),(30,27,NULL,NULL,'5.0',NULL),(31,6,NULL,NULL,'0.0',NULL),(31,7,NULL,NULL,'0.0',NULL),(31,8,NULL,NULL,'5.0',NULL),(31,10,NULL,'5.0','3.0','5.0'),(31,12,NULL,NULL,'0.0',NULL),(31,14,NULL,NULL,'4.0',NULL),(31,17,NULL,NULL,'4.0',NULL),(31,18,NULL,NULL,'0.0',NULL),(31,19,NULL,'4.0','5.0','4.0'),(31,20,NULL,'4.0','4.0','4.0'),(31,21,NULL,'5.0','5.0','4.0'),(32,2,NULL,NULL,'0.0',NULL),(32,3,NULL,NULL,'5.0',NULL),(32,4,NULL,'4.0','5.0','5.0'),(32,5,NULL,'4.0','0.0','4.0'),(32,9,NULL,NULL,'0.0',NULL),(32,11,NULL,NULL,'5.0',NULL),(32,13,NULL,NULL,'5.0',NULL),(32,15,NULL,'5.0','0.0','4.0'),(32,16,NULL,NULL,'5.0',NULL),(33,22,NULL,'4.0','5.0','5.0'),(33,23,NULL,'5.0','5.0','4.0'),(33,24,NULL,'4.0','4.0','4.0'),(33,25,NULL,'4.0','5.0','4.0'),(33,26,NULL,'4.0','5.0','4.0'),(33,27,NULL,'5.0','4.0','5.0'),(34,6,NULL,NULL,NULL,NULL),(34,7,NULL,NULL,'3.0',NULL),(34,8,NULL,NULL,NULL,NULL),(34,10,NULL,'5.0','4.0','0.0'),(34,12,NULL,'3.0','0.0','3.0'),(34,14,NULL,'4.0','5.0','5.0'),(34,17,NULL,NULL,'5.0',NULL),(34,18,NULL,NULL,'4.0',NULL),(34,19,NULL,NULL,NULL,NULL),(34,20,NULL,'4.0','5.0','4.0'),(34,21,NULL,'4.0','4.0','4.0'),(35,2,NULL,NULL,NULL,NULL),(35,3,NULL,NULL,NULL,NULL),(35,4,NULL,'5.0','0.0','2.0'),(35,6,NULL,NULL,NULL,NULL),(35,7,NULL,'4.0','0.0','4.0'),(35,8,NULL,NULL,NULL,NULL),(35,9,NULL,NULL,NULL,NULL),(35,10,NULL,'5.0','0.0','4.0'),(35,11,NULL,NULL,'4.0',NULL),(35,12,NULL,NULL,NULL,NULL),(35,13,NULL,NULL,NULL,NULL),(35,14,NULL,NULL,NULL,NULL),(35,15,NULL,NULL,NULL,NULL),(35,16,NULL,NULL,NULL,NULL),(35,17,NULL,'4.0','4.0','4.0'),(35,18,NULL,NULL,'5.0',NULL),(35,19,NULL,NULL,NULL,NULL),(35,20,NULL,NULL,'5.0',NULL),(35,21,NULL,'4.0','4.0','4.0'),(35,22,NULL,NULL,NULL,NULL),(35,23,NULL,'4.0','5.0','4.5'),(35,25,NULL,'5.0','0.0','4.0'),(35,26,NULL,NULL,'5.0',NULL),(35,27,NULL,NULL,'4.0',NULL),(36,2,NULL,'5.0','4.0','4.0'),(36,3,NULL,'3.0','0.0','4.0'),(36,4,NULL,NULL,NULL,NULL),(36,6,NULL,NULL,'4.0',NULL),(36,7,NULL,NULL,'3.0',NULL),(36,8,NULL,NULL,NULL,NULL),(36,9,NULL,NULL,NULL,NULL),(36,10,NULL,NULL,NULL,NULL),(36,11,NULL,NULL,'4.0',NULL),(36,12,NULL,'4.0','5.0','3.0'),(36,13,NULL,NULL,NULL,NULL),(36,14,NULL,'3.0','4.0','4.0'),(36,15,NULL,'3.0','0.0','0.0'),(36,16,NULL,NULL,'4.0',NULL),(36,17,NULL,NULL,'3.0',NULL),(36,18,NULL,'5.0','0.0','4.5'),(36,19,NULL,NULL,NULL,NULL),(36,20,NULL,NULL,NULL,NULL),(36,21,NULL,NULL,'4.0',NULL),(36,22,NULL,NULL,NULL,NULL),(36,23,NULL,NULL,NULL,NULL),(36,25,NULL,NULL,'5.0',NULL),(36,26,NULL,NULL,'4.0',NULL),(36,27,NULL,NULL,'4.0',NULL),(37,2,NULL,'4.0','4.0','4.0'),(37,3,NULL,NULL,'5.0',NULL),(37,4,NULL,'3.0','4.0','0.0'),(37,5,NULL,'4.0','0.0','3.0'),(37,9,NULL,'5.0','0.0','5.0'),(37,11,NULL,NULL,'4.0',NULL),(37,13,NULL,'4.0','5.0','5.0'),(37,15,NULL,'4.0','5.0','0.0'),(37,16,NULL,NULL,'5.0',NULL),(38,22,NULL,'4.0','5.0','5.0'),(38,23,NULL,'4.0','5.0','5.0'),(38,24,NULL,'4.0','5.0','5.0'),(38,25,NULL,'4.0','3.0','5.0'),(38,26,NULL,'5.0','5.0','5.0'),(38,27,NULL,'5.0','5.0','4.0'),(39,2,NULL,'4.0','4.0','4.0'),(39,3,NULL,NULL,'4.0',NULL),(39,4,NULL,NULL,'0.0',NULL),(39,6,NULL,'4.0','4.0','4.0'),(39,7,NULL,NULL,'0.0',NULL),(39,8,NULL,NULL,'0.0',NULL),(39,9,NULL,NULL,'0.0',NULL),(39,10,NULL,NULL,'0.0',NULL),(39,11,NULL,'4.0','0.0','0.0'),(39,12,NULL,NULL,'0.0',NULL),(39,13,NULL,NULL,'0.0',NULL),(39,14,NULL,'3.0','0.0','4.0'),(39,15,NULL,NULL,'0.0',NULL),(39,16,NULL,NULL,'4.0',NULL),(39,17,NULL,NULL,'3.0',NULL),(39,18,NULL,NULL,'0.0',NULL),(39,19,NULL,NULL,'4.0',NULL),(39,20,NULL,NULL,'0.0',NULL),(39,21,NULL,NULL,'4.0',NULL),(39,22,NULL,NULL,'0.0',NULL),(39,23,NULL,NULL,'0.0',NULL),(39,25,NULL,'4.0','0.0','5.0'),(39,26,NULL,'5.0','4.0','4.0'),(39,27,NULL,NULL,'4.0',NULL),(40,2,NULL,NULL,'0.0',NULL),(40,3,NULL,'5.0','5.0','5.0'),(40,4,NULL,'5.0','5.0','4.0'),(40,6,NULL,NULL,'0.0',NULL),(40,7,NULL,NULL,'0.0',NULL),(40,8,NULL,NULL,'0.0',NULL),(40,9,NULL,NULL,'0.0',NULL),(40,10,NULL,NULL,'0.0',NULL),(40,11,NULL,NULL,'0.0',NULL),(40,12,NULL,'4.0','4.0','4.0'),(40,13,NULL,NULL,'0.0',NULL),(40,14,NULL,NULL,'5.0',NULL),(40,15,NULL,'4.0','0.0','3.0'),(40,16,NULL,NULL,'4.0',NULL),(40,17,NULL,NULL,'5.0',NULL),(40,18,NULL,'5.0','5.0','4.0'),(40,19,NULL,NULL,'0.0',NULL),(40,20,NULL,NULL,'0.0',NULL),(40,21,NULL,NULL,'5.0',NULL),(40,22,NULL,NULL,'4.0',NULL),(40,23,NULL,'5.0','0.0','0.0'),(40,25,NULL,NULL,'0.0',NULL),(40,26,NULL,NULL,'5.0',NULL),(40,27,NULL,NULL,'5.0',NULL);

/*Table structure for table `share_seminar_application` */

DROP TABLE IF EXISTS `share_seminar_application`;

CREATE TABLE `share_seminar_application` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `main_course_id` bigint(20) unsigned NOT NULL COMMENT '主课程id',
  `sub_course_id` bigint(20) unsigned NOT NULL COMMENT '从课程id',
  `sub_course_teacher_id` bigint(20) unsigned NOT NULL COMMENT '从课程的教师id',
  `status` tinyint(4) unsigned DEFAULT NULL COMMENT '请求状态，同意1、不同意0、未处理null',
  PRIMARY KEY (`id`),
  KEY `idx_main_course_id` (`main_course_id`),
  KEY `idx_sub_course_id` (`sub_course_id`),
  KEY `idx_sub_course_teacher_id` (`sub_course_teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `share_seminar_application` */

/*Table structure for table `share_team_application` */

DROP TABLE IF EXISTS `share_team_application`;

CREATE TABLE `share_team_application` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `main_course_id` bigint(20) unsigned NOT NULL COMMENT '主课程id',
  `sub_course_id` bigint(20) unsigned NOT NULL COMMENT '从课程id',
  `sub_course_teacher_id` bigint(20) unsigned NOT NULL COMMENT '从课程老师id',
  `status` tinyint(4) unsigned DEFAULT NULL COMMENT '请求状态，同意1、不同意0、未处理null',
  PRIMARY KEY (`id`),
  KEY `idx_main_course_id` (`main_course_id`),
  KEY `idx_sub_course_id` (`sub_course_id`),
  KEY `idx_sub_course_teacher_id` (`sub_course_teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `share_team_application` */

insert  into `share_team_application`(`id`,`main_course_id`,`sub_course_id`,`sub_course_teacher_id`,`status`) values (1,16,17,3,1),(2,16,18,4,1),(3,16,19,5,1);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL COMMENT '学生账户',
  `password` varchar(20) NOT NULL COMMENT '账户密码',
  `is_active` tinyint(4) unsigned NOT NULL COMMENT '账号是否激活',
  `student_name` varchar(10) NOT NULL COMMENT '学生姓名',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_account` (`account`),
  UNIQUE KEY `uk_email` (`email`),
  KEY `idx_password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`account`,`password`,`is_active`,`student_name`,`email`) values (103,'10120162202618','123456',0,'陈姗',NULL),(104,'20420162201582','123456',0,'叶西蒙',NULL),(105,'20420162201666','123456',0,'林庚',NULL),(106,'21620142202651','123456',0,'吕剑坡',NULL),(107,'21620152203084','123456',0,'郑承波',NULL),(108,'24320162202805','123456',0,'蔡岳东',NULL),(109,'24320162202821','123456',0,'邓绪麟',NULL),(110,'24320162202830','123456',0,'高继威',NULL),(111,'24320162202834','123456',0,'韩蕾',NULL),(112,'24320162202836','123456',0,'侯世康',NULL),(113,'24320162202839','123456',0,'黄译嶙',NULL),(114,'24320162202842','123456',0,'黄云峰',NULL),(115,'24320162202847','123456',0,'蒋耀',NULL),(116,'24320162202852','123456',0,'柯信玉',NULL),(117,'24320162202854','123456',0,'赖建群',NULL),(118,'24320162202860','123456',0,'李岩松',NULL),(119,'24320162202862','123456',0,'李元慧',NULL),(120,'24320162202863','123456',0,'梁佳音',NULL),(121,'24320162202869','123456',0,'林俊强',NULL),(122,'24320162202873','123456',0,'林晓明',NULL),(123,'24320162202874','123456',0,'林泽煌',NULL),(124,'24320162202875','123456',0,'刘晶',NULL),(125,'24320162202883','123456',0,'罗雅馨',NULL),(126,'24320162202885','123456',0,'马子晋',NULL),(127,'24320162202888','123456',0,'牛晓彤',NULL),(128,'24320162202889','123456',0,'彭淑媛',NULL),(129,'24320162202893','123456',0,'邱学良',NULL),(130,'24320162202894','123456',0,'任剑鹏',NULL),(131,'24320162202895','123456',0,'任天翔',NULL),(132,'24320162202897','123456',0,'邵子薇',NULL),(133,'24320162202902','123456',0,'孙承昱',NULL),(134,'24320162202904','123456',0,'谈雪',NULL),(135,'24320162202906','123456',0,'谭源杰',NULL),(136,'24320162202912','123456',0,'王泓泓',NULL),(137,'24320162202917','123456',0,'王圣哲',NULL),(138,'24320162202919','123456',0,'王玮权',NULL),(139,'24320162202921','123456',0,'王旭佳',NULL),(140,'24320162202924','123456',0,'魏畅',NULL),(141,'24320162202925','123456',0,'吴悠',NULL),(142,'24320162202928','123456',0,'谢停停',NULL),(143,'24320162202929','123456',0,'谢芸芸',NULL),(144,'24320162202930','123456',0,'谢作源',NULL),(145,'24320162202934','123456',0,'徐刚',NULL),(146,'24320162202935','123456',0,'徐灵',NULL),(147,'24320162202943','123456',0,'杨雨涵',NULL),(148,'24320162202949','123456',0,'于梦恺',NULL),(149,'24320162202952','123456',0,'袁梓倍',NULL),(150,'24320162202953','123456',0,'张砾夫',NULL),(151,'24320162202961','123456',0,'赵明初',NULL),(152,'24320162202965','123456',0,'郑鑫鑫',NULL),(153,'24320162202966','123456',0,'郑英林',NULL),(154,'24320162202967','123456',0,'钟子帆',NULL),(155,'24320162202969','123456',0,'周雨欣',NULL),(156,'24320162202970','123456',0,'朱演演',NULL),(157,'30320162200068','123456',0,'吴苏悦',NULL),(158,'19720162203635','123456',0,'吴为',NULL),(159,'20420162201736','123456',0,'游鹏超',NULL),(160,'21620162203180','123456',0,'周必群',NULL),(161,'22320162201119','123456',0,'余炬波',NULL),(162,'24320152202847','123456',0,'俞剑桥',NULL),(163,'24320162202804','123456',0,'蔡咏锜',NULL),(164,'24320162202807','123456',0,'陈浩',NULL),(165,'24320162202808','123456',0,'陈焕璋',NULL),(166,'24320162202809','123456',0,'陈辉宇',NULL),(167,'24320162202815','123456',0,'陈昱甫',NULL),(168,'24320162202817','123456',0,'陈梓豪',NULL),(169,'24320162202820','123456',0,'邓文晋',NULL),(170,'24320162202823','123456',0,'杜旭焘',NULL),(171,'24320162202829','123456',0,'傅嘉锐',NULL),(172,'24320162202832','123456',0,'龚凌',NULL),(173,'24320162202833','123456',0,'郭方杰',NULL),(174,'24320162202835','123456',0,'洪启武',NULL),(175,'24320162202837','123456',0,'黄鸿宇',NULL),(176,'24320162202838','123456',0,'黄巍',NULL),(177,'24320162202841','123456',0,'黄裕文',NULL),(178,'24320162202844','123456',0,'黄振闽',NULL),(179,'24320162202853','123456',0,'匡镓玮',NULL),(180,'24320162202855','123456',0,'赖少鹏',NULL),(181,'24320162202858','123456',0,'李伟泽',NULL),(182,'24320162202859','123456',0,'李欣然',NULL),(183,'24320162202871','123456',0,'林南瑞',NULL),(184,'24320162202880','123456',0,'陆婧昭',NULL),(185,'24320162202891','123456',0,'邱恒哲',NULL),(186,'24320162202896','123456',0,'尚莹超',NULL),(187,'24320162202900','123456',0,'宋灵冰',NULL),(188,'24320162202901','123456',0,'苏天宇',NULL),(189,'24320162202909','123456',0,'陶玉娇',NULL),(190,'24320162202918','123456',0,'王世奇',NULL),(191,'24320162202927','123456',0,'谢河富',NULL),(192,'24320162202932','123456',0,'熊安书',NULL),(193,'24320162202936','123456',0,'徐政强',NULL),(194,'24320162202939','123456',0,'闫远峰',NULL),(195,'24320162202940','123456',0,'严学焕',NULL),(196,'24320162202947','123456',0,'叶育杰',NULL),(197,'24320162202950','123456',0,'喻枭',NULL),(198,'24320162202951','123456',0,'袁江华',NULL),(199,'24320162202956','123456',0,'张天一',NULL),(200,'24320162202958','123456',0,'张炜伦',NULL),(201,'24320162202959','123456',0,'张志文',NULL),(202,'25120152201958','123456',0,'张敬峥',NULL),(203,'20420162201516','123456',0,'陈华董',NULL),(204,'21620152202972','123456',0,'刘悦然',NULL),(205,'21620152203004','123456',0,'苏灵奇',NULL),(206,'22320162201037','123456',0,'胡泽勇',NULL),(207,'24320162202814','123456',0,'陈序辉',NULL),(208,'24320162202818','123456',0,'程日',NULL),(209,'24320162202825','123456',0,'方波',NULL),(210,'24320162202826','123456',0,'方俊',NULL),(211,'24320162202831','123456',0,'高庭闲',NULL),(212,'24320162202845','123456',0,'蒋辉',NULL),(213,'24320162202848','123456',0,'矫丽瑶',NULL),(214,'24320162202864','123456',0,'梁思博',NULL),(215,'24320162202877','123456',0,'刘予佳',NULL),(216,'24320162202908','123456',0,'陶晨晨',NULL),(217,'24320162202911','123456',0,'王安特',NULL),(218,'24320162202916','123456',0,'王凯',NULL),(219,'24320162202920','123456',0,'王文强',NULL),(220,'24320162202931','123456',0,'辛春蕾',NULL),(221,'24320162202937','123456',0,'许霏',NULL),(222,'24320162202945','123456',0,'叶存英',NULL),(223,'24320162202962','123456',0,'赵涛',NULL),(224,'24320162202963','123456',0,'赵雨宣',NULL),(225,'24320162202971','123456',0,'朱聿莹',NULL),(226,'25120152201910','123456',0,'梁依帆',NULL),(227,'25120152201938','123456',0,'王振伟',NULL),(228,'30220162200810','123456',0,'宋文静',NULL),(229,'32420162202603','123456',0,'周健',NULL),(230,'33920152203997','123456',0,'刘畅',NULL),(231,'34520162201351','123456',0,'石新羽',NULL);

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL COMMENT '教师账户',
  `password` varchar(20) NOT NULL COMMENT '账户密码',
  `teacher_name` varchar(10) NOT NULL COMMENT '教师姓名',
  `is_active` tinyint(4) unsigned NOT NULL COMMENT '账号是否激活',
  `email` varchar(30) NOT NULL COMMENT '邮箱地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_account` (`account`),
  UNIQUE KEY `uk_email` (`email`),
  KEY `idx_password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`account`,`password`,`teacher_name`,`is_active`,`email`) values (3,'2007100012','123456','邱明',0,'mingqiu@xmu.edu.cn'),(4,'7108','123456','王美红',0,'wangmh@xmu.edu.cn'),(5,'2700','123456','林坤辉',0,'khlin@xmu.edu.cn'),(6,'2009100034','123456','杨律青',0,'lqyang@xmu.edu.cn');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `klass_id` bigint(20) unsigned NOT NULL COMMENT '班级id',
  `course_id` bigint(20) unsigned NOT NULL COMMENT '课程id',
  `leader_id` bigint(20) unsigned NOT NULL COMMENT '队长的学生id',
  `team_name` varchar(30) NOT NULL COMMENT '队伍名称',
  `team_serial` tinyint(4) unsigned NOT NULL COMMENT '队伍序号',
  `klass_serial` tinyint(4) unsigned DEFAULT NULL COMMENT '班级序号',
  `status` tinyint(4) unsigned NOT NULL COMMENT '队伍状态，不合法0、合法1、审核中2',
  PRIMARY KEY (`id`),
  KEY `idx_course_id` (`course_id`),
  KEY `idx_leader_id` (`leader_id`),
  KEY `idx_klass_id` (`klass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `team` */

insert  into `team`(`id`,`klass_id`,`course_id`,`leader_id`,`team_name`,`team_serial`,`klass_serial`,`status`) values (2,22,16,197,'2-6',6,2,1),(3,22,16,160,'WEAK',7,2,1),(4,22,16,192,'j2ee',8,2,1),(5,22,16,183,'dotnet TIF小组',9,2,1),(6,21,16,122,'Intellij',2,1,1),(7,21,16,156,'FLAG',3,1,1),(8,21,16,108,'Knight',4,1,1),(9,22,16,187,'锦鲤',2,2,1),(10,21,16,116,'OJ',10,1,1),(11,22,16,190,'RBs',3,2,1),(12,21,16,150,'Beefcake',11,1,1),(13,22,16,163,'GHCT',4,2,1),(14,21,16,126,'Flyway',12,1,1),(15,22,16,182,'2-5',5,2,1),(16,22,16,176,'2018秋季智能教室JS爱好者小组',1,2,1),(17,21,16,135,'咕咕鸟',6,1,1),(18,21,16,142,'1-7',7,1,1),(19,21,16,113,'正经人',8,1,1),(20,21,16,129,'超励志小组',5,1,1),(21,21,16,141,'晚晚鸟',9,1,1),(22,23,16,211,'3-1',1,3,1),(23,23,16,207,'3-2',2,3,1),(24,23,16,221,'3-3',3,3,1),(25,23,16,208,'3-4',4,3,1),(26,23,16,206,'3-5',5,3,1),(27,23,16,205,'3-6',6,3,1);

/*Table structure for table `team_and_strategy` */

DROP TABLE IF EXISTS `team_and_strategy`;

CREATE TABLE `team_and_strategy` (
  `id` bigint(20) unsigned NOT NULL,
  `strategy_name` varchar(50) NOT NULL COMMENT '策略所属类标识',
  `strategy_id` bigint(20) unsigned NOT NULL COMMENT '组队策略id',
  PRIMARY KEY (`id`,`strategy_name`,`strategy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `team_and_strategy` */

insert  into `team_and_strategy`(`id`,`strategy_name`,`strategy_id`) values (1,'MemberLimitStrategy',1),(1,'TeamOrStrategy',1);

/*Table structure for table `team_or_strategy` */

DROP TABLE IF EXISTS `team_or_strategy`;

CREATE TABLE `team_or_strategy` (
  `id` bigint(20) unsigned NOT NULL,
  `strategy_name` varchar(50) NOT NULL COMMENT '策略所属类的类名',
  `strategy_id` bigint(20) unsigned NOT NULL COMMENT '组队策略id',
  PRIMARY KEY (`id`,`strategy_name`,`strategy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `team_or_strategy` */

insert  into `team_or_strategy`(`id`,`strategy_name`,`strategy_id`) values (1,'CourseMemberLimitStrategy',1),(1,'CourseMemberLimitStrategy',2);

/*Table structure for table `team_strategy` */

DROP TABLE IF EXISTS `team_strategy`;

CREATE TABLE `team_strategy` (
  `course_id` bigint(20) unsigned NOT NULL COMMENT '课程id',
  `strategy_serial` tinyint(4) unsigned NOT NULL COMMENT '课程组队策略序号',
  `strategy_name` varchar(50) NOT NULL COMMENT '策略所属类的类名',
  `strategy_id` bigint(20) unsigned NOT NULL COMMENT '策略id',
  PRIMARY KEY (`course_id`,`strategy_serial`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `team_strategy` */

insert  into `team_strategy`(`course_id`,`strategy_serial`,`strategy_name`,`strategy_id`) values (16,1,'TeamAndStrategy',1),(16,2,'ConflictCourseStrategy',1),(16,3,'ConflictCourseStrategy',2);

/*Table structure for table `team_student` */

DROP TABLE IF EXISTS `team_student`;

CREATE TABLE `team_student` (
  `team_id` bigint(20) unsigned NOT NULL COMMENT '队伍id',
  `student_id` bigint(20) unsigned NOT NULL COMMENT '学生id',
  PRIMARY KEY (`team_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `team_student` */

insert  into `team_student`(`team_id`,`student_id`) values (2,172),(2,194),(2,196),(2,197),(2,198),(3,158),(3,160),(3,161),(3,202),(4,117),(4,170),(4,192),(4,200),(5,166),(5,171),(5,179),(5,183),(5,185),(5,201),(6,115),(6,122),(6,127),(6,134),(6,145),(7,123),(7,132),(7,140),(7,144),(7,156),(8,108),(8,110),(8,112),(8,151),(8,152),(9,174),(9,180),(9,187),(9,195),(9,199),(10,104),(10,116),(10,118),(10,125),(11,168),(11,169),(11,181),(11,188),(11,190),(12,107),(12,147),(12,148),(12,150),(13,163),(13,173),(13,175),(13,178),(13,189),(14,119),(14,121),(14,124),(14,126),(14,153),(15,164),(15,182),(15,186),(15,191),(16,159),(16,165),(16,167),(16,176),(16,177),(17,120),(17,130),(17,131),(17,135),(17,137),(18,114),(18,142),(18,143),(18,146),(18,149),(19,103),(19,105),(19,111),(19,113),(19,157),(20,128),(20,129),(20,136),(20,139),(20,155),(21,109),(21,133),(21,138),(21,141),(21,154),(22,209),(22,211),(22,219),(22,222),(22,223),(23,207),(23,215),(23,220),(23,225),(23,227),(24,214),(24,216),(24,221),(25,208),(25,210),(25,212),(25,213),(25,218),(25,224),(26,206),(26,226),(26,228),(26,230),(26,231),(27,203),(27,204),(27,205),(27,217),(27,229);

/*Table structure for table `team_valid_application` */

DROP TABLE IF EXISTS `team_valid_application`;

CREATE TABLE `team_valid_application` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL COMMENT '小组id',
  `teacher_id` bigint(20) unsigned NOT NULL COMMENT '教师id',
  `reason` varchar(500) DEFAULT NULL COMMENT '申请理由',
  `status` tinyint(4) unsigned DEFAULT NULL COMMENT '请求状态，同意1、不同意0、未处理null',
  PRIMARY KEY (`id`),
  KEY `idx_team_id` (`team_id`),
  KEY `idx_teacher_id` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `team_valid_application` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
