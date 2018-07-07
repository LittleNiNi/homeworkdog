/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.36 : Database - dog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dog`;

/*Table structure for table `barrage` */

DROP TABLE IF EXISTS `barrage`;

CREATE TABLE `barrage` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `btext` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `barrage` */

insert  into `barrage`(`bid`,`btext`) values (1,'ll'),(2,'yynsb'),(3,'llll'),(4,'å°±æ¥åæ¥åæ¥åå°±'),(5,'å¦å¦å¦å¦å¦'),(6,'12312'),(7,'lll'),(8,'lll'),(9,'hhhh'),(10,'ddd'),(11,'ll'),(12,'kkkkkk');

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `filepath` varchar(100) NOT NULL COMMENT '图片',
  `replyname` varchar(100) NOT NULL COMMENT '用户姓名',
  `time` varchar(100) DEFAULT NULL COMMENT '时间',
  `content` varchar(1000) NOT NULL COMMENT '内容',
  `address` varchar(100) NOT NULL COMMENT '地点',
  `osname` varchar(40) NOT NULL COMMENT '设备名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `comments` */

insert  into `comments`(`id`,`filepath`,`replyname`,`time`,`content`,`address`,`osname`) values (1,'upload/user1.jpg','帅大叔','2018-5-19 11:42:53','他家的狗特别可爱，当时没买，现在心里后悔极了。','北京','iPhone X '),(2,'upload/user2.jpg','小萝莉','2017-10-17 11:42:53','对啊，上次看到就直接买了，回去之后狗狗真的很可爱，等狗养大了再买一只！','南京','win10'),(3,'upload/user3.jpg','小可爱','2018-5-22 20:42:53','求问，他家的狗狗好养吗？容易生病吗？','上海','安卓'),(4,'./images/user1.jpg','abc','Mon Jul 02 2018 21:41:32 GMT 0800 (ä¸­å½æ åæ¶é´)','1231231','Beijing','win10'),(5,'./images/user1.jpg','','Tue Jul 03 2018 21:30:01 GMT 0800 (ä¸­å½æ åæ¶é´)','asdas','Beijing','win10'),(6,'./images/user1.jpg','abc','Tue Jul 03 2018 21:30:16 GMT 0800 (ä¸­å½æ åæ¶é´)','asdasd','Beijing','win10'),(7,'./images/user1.jpg','6','Wed Jul 04 2018 17:09:57 GMT 0800 (ä¸­å½æ åæ¶é´)','llllll','Beijing','win10');

/*Table structure for table `t_customer` */

DROP TABLE IF EXISTS `t_customer`;

CREATE TABLE `t_customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `sex` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `telephone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `t_customer` */

insert  into `t_customer`(`customerid`,`name`,`address`,`password`,`sex`,`email`,`telephone`) values (1,'abc','11','11','男','17652367865@qq.com','13267654372'),(2,'admin','1','1',NULL,NULL,NULL),(3,'3','3','3','mb','1123512176@qq.com','15901282565'),(5,'6','6','6','nv','12346589@qq.com','12356789708'),(6,'7','7','7',NULL,NULL,NULL),(7,'8','8','8',NULL,NULL,NULL),(8,'cc','cc','cc',NULL,NULL,NULL),(9,'李四','111','111',NULL,NULL,NULL),(10,'55','55','55',NULL,NULL,NULL);

/*Table structure for table `t_ddog` */

DROP TABLE IF EXISTS `t_ddog`;

CREATE TABLE `t_ddog` (
  `ddogid` int(11) NOT NULL AUTO_INCREMENT,
  `ddogname` varchar(40) DEFAULT NULL,
  `unitprice` double DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ddogid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_ddog` */

insert  into `t_ddog`(`ddogid`,`ddogname`,`unitprice`,`filepath`) values (4,'3545',324,'upload/ec3d514b-a093-48c7-97a6-b36031dca493.jpg');

/*Table structure for table `t_dog` */

DROP TABLE IF EXISTS `t_dog`;

CREATE TABLE `t_dog` (
  `dogid` int(11) NOT NULL AUTO_INCREMENT,
  `dogname` varchar(40) DEFAULT NULL,
  `unitprice` double DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`dogid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `t_dog` */

insert  into `t_dog`(`dogid`,`dogname`,`unitprice`,`filepath`,`price`,`sex`) values (1,'柴犬',1000,'upload/1.jpg',0,'upload/boy.jpg'),(2,'拉布拉多',800,'upload/2.jpg',0,'upload/boy.jpg'),(3,'哈士奇',800,'upload/3.jpg',0,'upload/boy.jpg'),(4,'柯基',500,'upload/4.jpg',0,'upload/boy.jpg'),(5,'泰迪',500,'upload/5.jpg',0,'upload/boy.jpg'),(6,'tt',0,'upload/NoImage.jpg',NULL,NULL);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `orderid` int(30) NOT NULL AUTO_INCREMENT,
  `dog` int(11) NOT NULL,
  `dognum` int(2) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FKA0C0C3C3AEB9BE34` (`dog`),
  KEY `FKA0C0C3C3F934180` (`customer`),
  CONSTRAINT `FKA0C0C3C3AEB9BE34` FOREIGN KEY (`dog`) REFERENCES `t_dog` (`dogid`),
  CONSTRAINT `FKA0C0C3C3F934180` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`dog`) REFERENCES `t_dog` (`dogid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`orderid`,`dog`,`dognum`,`customer`,`total`) values (1,1,1,5,1000),(2,1,1,1,1000),(3,2,1,1,800),(9,2,1,6,800),(13,1,1,3,1000),(14,1,1,10,1000),(15,1,1,3,1000),(16,1,1,5,1000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
