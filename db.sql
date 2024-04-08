/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootxf481
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootxf481` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootxf481`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootxf481/upload/1620951853810.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootxf481/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootxf481/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-05-14 08:20:35','招标公告','简介1测试','http://localhost:8080/springbootxf481/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/springbootxf481/upload/1620951886050.jpg\"></p><p><br></p><p><br></p><p>这里可以发布一些相关公告信息内容的，这里的所有内容都是用于测试功能的都是可以自行添加修改删除替换的。</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (92,'2021-05-14 08:20:35','标题2','简介2','http://localhost:8080/springbootxf481/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (93,'2021-05-14 08:20:35','标题3','简介3','http://localhost:8080/springbootxf481/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (94,'2021-05-14 08:20:35','标题4','简介4','http://localhost:8080/springbootxf481/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (95,'2021-05-14 08:20:35','标题5','简介5','http://localhost:8080/springbootxf481/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (96,'2021-05-14 08:20:35','标题6','简介6','http://localhost:8080/springbootxf481/upload/news_picture6.jpg','内容6');

/*Table structure for table `pingbiaoren` */

DROP TABLE IF EXISTS `pingbiaoren`;

CREATE TABLE `pingbiaoren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='评标人';

/*Data for the table `pingbiaoren` */

insert  into `pingbiaoren`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (31,'2021-05-14 08:20:35','1','1','姓名1','男','http://localhost:8080/springbootxf481/upload/pingbiaoren_touxiang1.jpg','440300199101010001','13823888881');
insert  into `pingbiaoren`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (32,'2021-05-14 08:20:35','评标人2','123456','姓名2','男','http://localhost:8080/springbootxf481/upload/pingbiaoren_touxiang2.jpg','440300199202020002','13823888882');
insert  into `pingbiaoren`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (33,'2021-05-14 08:20:35','评标人3','123456','姓名3','男','http://localhost:8080/springbootxf481/upload/pingbiaoren_touxiang3.jpg','440300199303030003','13823888883');
insert  into `pingbiaoren`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (34,'2021-05-14 08:20:35','评标人4','123456','姓名4','男','http://localhost:8080/springbootxf481/upload/pingbiaoren_touxiang4.jpg','440300199404040004','13823888884');
insert  into `pingbiaoren`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (35,'2021-05-14 08:20:35','评标人5','123456','姓名5','男','http://localhost:8080/springbootxf481/upload/pingbiaoren_touxiang5.jpg','440300199505050005','13823888885');
insert  into `pingbiaoren`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (36,'2021-05-14 08:20:35','评标人6','123456','姓名6','男','http://localhost:8080/springbootxf481/upload/pingbiaoren_touxiang6.jpg','440300199606060006','13823888886');

/*Table structure for table `pingbiaoxinxi` */

DROP TABLE IF EXISTS `pingbiaoxinxi`;

CREATE TABLE `pingbiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `zhaobiaozhanghao` varchar(200) DEFAULT NULL COMMENT '招标账号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `pingfen` varchar(200) NOT NULL COMMENT '评分',
  `yijian` longtext NOT NULL COMMENT '意见',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620952146736 DEFAULT CHARSET=utf8 COMMENT='评标信息';

/*Data for the table `pingbiaoxinxi` */

insert  into `pingbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`pingfen`,`yijian`,`pingjiashijian`,`yonghuming`,`xingming`,`zhanghao`) values (61,'2021-05-14 08:20:35','编号1','项目名称1','招标账号1','公司名称1','评分1','意见1','2021-05-14 08:20:35','用户名1','姓名1','账号1');
insert  into `pingbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`pingfen`,`yijian`,`pingjiashijian`,`yonghuming`,`xingming`,`zhanghao`) values (62,'2021-05-14 08:20:35','编号2','项目名称2','招标账号2','公司名称2','评分2','意见2','2021-05-14 08:20:35','用户名2','姓名2','账号2');
insert  into `pingbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`pingfen`,`yijian`,`pingjiashijian`,`yonghuming`,`xingming`,`zhanghao`) values (63,'2021-05-14 08:20:35','编号3','项目名称3','招标账号3','公司名称3','评分3','意见3','2021-05-14 08:20:35','用户名3','姓名3','账号3');
insert  into `pingbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`pingfen`,`yijian`,`pingjiashijian`,`yonghuming`,`xingming`,`zhanghao`) values (64,'2021-05-14 08:20:35','编号4','项目名称4','招标账号4','公司名称4','评分4','意见4','2021-05-14 08:20:35','用户名4','姓名4','账号4');
insert  into `pingbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`pingfen`,`yijian`,`pingjiashijian`,`yonghuming`,`xingming`,`zhanghao`) values (65,'2021-05-14 08:20:35','编号5','项目名称5','招标账号5','公司名称5','评分5','意见5','2021-05-14 08:20:35','用户名5','姓名5','账号5');
insert  into `pingbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`pingfen`,`yijian`,`pingjiashijian`,`yonghuming`,`xingming`,`zhanghao`) values (66,'2021-05-14 08:20:35','编号6','项目名称6','招标账号6','公司名称6','评分6','意见6','2021-05-14 08:20:35','用户名6','姓名6','账号6');
insert  into `pingbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`pingfen`,`yijian`,`pingjiashijian`,`yonghuming`,`xingming`,`zhanghao`) values (1620952146735,'2021-05-14 08:29:06','20215148273768900100','XX项目','1','XX公司','85','这个可以合作的','2021-05-14 08:28:57','2','姓名1','1');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620952049114 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','pf87yw24j7kb4nskd7nwe0fjtn11o78i','2021-05-14 08:22:10','2021-05-14 09:30:20');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1620951789034,'2','toubiaoren','投标人','x325zxc8241s5x8sr84lfjgfnz9fnwkv','2021-05-14 08:23:19','2021-05-14 09:29:55');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,11,'1','toubiaoren','投标人','mdpt32al6di4h5lf6d21dg08eokitsep','2021-05-14 08:25:17','2021-05-14 09:29:51');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,21,'1','zhaobiaoren','招标人','thhpa7c6h8k5s5kj8o21bt22zrtaaicu','2021-05-14 08:25:20','2021-05-14 09:29:14');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,31,'1','pingbiaoren','评标人','h5wrqphtlhy3phwz5kw5dqx0ai9mzcik','2021-05-14 08:28:44','2021-05-14 09:28:45');

/*Table structure for table `toubiaoren` */

DROP TABLE IF EXISTS `toubiaoren`;

CREATE TABLE `toubiaoren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1620951789035 DEFAULT CHARSET=utf8 COMMENT='投标人';

/*Data for the table `toubiaoren` */

insert  into `toubiaoren`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (11,'2021-05-14 08:20:35','1','1','姓名1','男','http://localhost:8080/springbootxf481/upload/toubiaoren_touxiang1.jpg','440300199101010001','13823888881');
insert  into `toubiaoren`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (12,'2021-05-14 08:20:35','投标人2','123456','姓名2','男','http://localhost:8080/springbootxf481/upload/toubiaoren_touxiang2.jpg','440300199202020002','13823888882');
insert  into `toubiaoren`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (13,'2021-05-14 08:20:35','投标人3','123456','姓名3','男','http://localhost:8080/springbootxf481/upload/toubiaoren_touxiang3.jpg','440300199303030003','13823888883');
insert  into `toubiaoren`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (14,'2021-05-14 08:20:35','投标人4','123456','姓名4','男','http://localhost:8080/springbootxf481/upload/toubiaoren_touxiang4.jpg','440300199404040004','13823888884');
insert  into `toubiaoren`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (15,'2021-05-14 08:20:35','投标人5','123456','姓名5','男','http://localhost:8080/springbootxf481/upload/toubiaoren_touxiang5.jpg','440300199505050005','13823888885');
insert  into `toubiaoren`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (16,'2021-05-14 08:20:35','投标人6','123456','姓名6','男','http://localhost:8080/springbootxf481/upload/toubiaoren_touxiang6.jpg','440300199606060006','13823888886');
insert  into `toubiaoren`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shenfenzheng`,`shouji`) values (1620951789034,'2021-05-14 08:23:09','2','1','刘曦','女','http://localhost:8080/springbootxf481/upload/1620951807298.jpg','441214121412141211','15214121411');

/*Table structure for table `toubiaoxinxi` */

DROP TABLE IF EXISTS `toubiaoxinxi`;

CREATE TABLE `toubiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `zhaobiaozhanghao` varchar(200) DEFAULT NULL COMMENT '招标账号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `toubiaowenjian` varchar(200) DEFAULT NULL COMMENT '投标文件',
  `toubiaoneirong` longtext COMMENT '投标内容',
  `toubiaoriqi` date DEFAULT NULL COMMENT '投标日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620952080588 DEFAULT CHARSET=utf8 COMMENT='投标信息';

/*Data for the table `toubiaoxinxi` */

insert  into `toubiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`toubiaowenjian`,`toubiaoneirong`,`toubiaoriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (51,'2021-05-14 08:20:35','编号1','项目名称1','招标账号1','公司名称1','','投标内容1','2021-05-14','用户名1','姓名1','手机1','是','');
insert  into `toubiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`toubiaowenjian`,`toubiaoneirong`,`toubiaoriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (52,'2021-05-14 08:20:35','编号2','项目名称2','招标账号2','公司名称2','','投标内容2','2021-05-14','用户名2','姓名2','手机2','是','');
insert  into `toubiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`toubiaowenjian`,`toubiaoneirong`,`toubiaoriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (53,'2021-05-14 08:20:35','编号3','项目名称3','招标账号3','公司名称3','','投标内容3','2021-05-14','用户名3','姓名3','手机3','是','');
insert  into `toubiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`toubiaowenjian`,`toubiaoneirong`,`toubiaoriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (54,'2021-05-14 08:20:35','编号4','项目名称4','招标账号4','公司名称4','','投标内容4','2021-05-14','用户名4','姓名4','手机4','是','');
insert  into `toubiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`toubiaowenjian`,`toubiaoneirong`,`toubiaoriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (55,'2021-05-14 08:20:35','编号5','项目名称5','招标账号5','公司名称5','','投标内容5','2021-05-14','用户名5','姓名5','手机5','是','');
insert  into `toubiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`toubiaowenjian`,`toubiaoneirong`,`toubiaoriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (56,'2021-05-14 08:20:35','编号6','项目名称6','招标账号6','公司名称6','','投标内容6','2021-05-14','用户名6','姓名6','手机6','是','');
insert  into `toubiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`zhaobiaozhanghao`,`gongsimingcheng`,`toubiaowenjian`,`toubiaoneirong`,`toubiaoriqi`,`yonghuming`,`xingming`,`shouji`,`sfsh`,`shhf`) values (1620952080587,'2021-05-14 08:28:00','20215148273768900100','XX项目','1','XX公司','http://localhost:8080/springbootxf481/upload/1620952066838.doc','<p>请输入投标内容将自己的文件要上传上去。。。</p>','2021-05-14','2','刘曦','15214121411','是','同意');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-14 08:20:35');

/*Table structure for table `zhaobiaoren` */

DROP TABLE IF EXISTS `zhaobiaoren`;

CREATE TABLE `zhaobiaoren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaobiaozhanghao` varchar(200) NOT NULL COMMENT '招标账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `xiangxidizhi` varchar(200) DEFAULT NULL COMMENT '详细地址',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhaobiaozhanghao` (`zhaobiaozhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='招标人';

/*Data for the table `zhaobiaoren` */

insert  into `zhaobiaoren`(`id`,`addtime`,`zhaobiaozhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`gongsimingcheng`,`xiangxidizhi`,`dianhua`) values (21,'2021-05-14 08:20:35','1','1','王倩','女','http://localhost:8080/springbootxf481/upload/zhaobiaoren_touxiang1.jpg','XX公司','上海市XXX','13823888881');
insert  into `zhaobiaoren`(`id`,`addtime`,`zhaobiaozhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`gongsimingcheng`,`xiangxidizhi`,`dianhua`) values (22,'2021-05-14 08:20:35','招标人2','123456','姓名2','男','http://localhost:8080/springbootxf481/upload/zhaobiaoren_touxiang2.jpg','公司名称2','详细地址2','13823888882');
insert  into `zhaobiaoren`(`id`,`addtime`,`zhaobiaozhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`gongsimingcheng`,`xiangxidizhi`,`dianhua`) values (23,'2021-05-14 08:20:35','招标人3','123456','姓名3','男','http://localhost:8080/springbootxf481/upload/zhaobiaoren_touxiang3.jpg','公司名称3','详细地址3','13823888883');
insert  into `zhaobiaoren`(`id`,`addtime`,`zhaobiaozhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`gongsimingcheng`,`xiangxidizhi`,`dianhua`) values (24,'2021-05-14 08:20:35','招标人4','123456','姓名4','男','http://localhost:8080/springbootxf481/upload/zhaobiaoren_touxiang4.jpg','公司名称4','详细地址4','13823888884');
insert  into `zhaobiaoren`(`id`,`addtime`,`zhaobiaozhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`gongsimingcheng`,`xiangxidizhi`,`dianhua`) values (25,'2021-05-14 08:20:35','招标人5','123456','姓名5','男','http://localhost:8080/springbootxf481/upload/zhaobiaoren_touxiang5.jpg','公司名称5','详细地址5','13823888885');
insert  into `zhaobiaoren`(`id`,`addtime`,`zhaobiaozhanghao`,`mima`,`xingming`,`xingbie`,`touxiang`,`gongsimingcheng`,`xiangxidizhi`,`dianhua`) values (26,'2021-05-14 08:20:35','招标人6','123456','姓名6','男','http://localhost:8080/springbootxf481/upload/zhaobiaoren_touxiang6.jpg','公司名称6','详细地址6','13823888886');

/*Table structure for table `zhaobiaoxinxi` */

DROP TABLE IF EXISTS `zhaobiaoxinxi`;

CREATE TABLE `zhaobiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhaobiaoyaoqiu` longtext COMMENT '招标要求',
  `zhaobiaoneirong` longtext COMMENT '招标内容',
  `zhaobiaozhanghao` varchar(200) DEFAULT NULL COMMENT '招标账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='招标信息';

/*Data for the table `zhaobiaoxinxi` */

insert  into `zhaobiaoxinxi`(`id`,`addtime`,`xiangmumingcheng`,`gongsimingcheng`,`tupian`,`fujian`,`fabushijian`,`zhaobiaoyaoqiu`,`zhaobiaoneirong`,`zhaobiaozhanghao`) values (41,'2021-05-14 08:20:35','XX项目','XX公司','http://localhost:8080/springbootxf481/upload/zhaobiaoxinxi_tupian1.jpg','http://localhost:8080/springbootxf481/upload/1620951974924.doc','2021-05-14 08:20:35','招标要求1测试','<p>招标内容1<img src=\"http://localhost:8080/springbootxf481/upload/1620951986294.jpg\"></p><p>这里可以发布一些相关招标信息内容的，这里的所有内容都是用于测试都是随意添加的，都是可以自行替换的。。。</p>','1');
insert  into `zhaobiaoxinxi`(`id`,`addtime`,`xiangmumingcheng`,`gongsimingcheng`,`tupian`,`fujian`,`fabushijian`,`zhaobiaoyaoqiu`,`zhaobiaoneirong`,`zhaobiaozhanghao`) values (42,'2021-05-14 08:20:35','项目名称2','公司名称2','http://localhost:8080/springbootxf481/upload/zhaobiaoxinxi_tupian2.jpg','','2021-05-14 08:20:35','招标要求2','招标内容2','招标账号2');
insert  into `zhaobiaoxinxi`(`id`,`addtime`,`xiangmumingcheng`,`gongsimingcheng`,`tupian`,`fujian`,`fabushijian`,`zhaobiaoyaoqiu`,`zhaobiaoneirong`,`zhaobiaozhanghao`) values (43,'2021-05-14 08:20:35','项目名称3','公司名称3','http://localhost:8080/springbootxf481/upload/zhaobiaoxinxi_tupian3.jpg','','2021-05-14 08:20:35','招标要求3','招标内容3','招标账号3');
insert  into `zhaobiaoxinxi`(`id`,`addtime`,`xiangmumingcheng`,`gongsimingcheng`,`tupian`,`fujian`,`fabushijian`,`zhaobiaoyaoqiu`,`zhaobiaoneirong`,`zhaobiaozhanghao`) values (44,'2021-05-14 08:20:35','项目名称4','公司名称4','http://localhost:8080/springbootxf481/upload/zhaobiaoxinxi_tupian4.jpg','','2021-05-14 08:20:35','招标要求4','招标内容4','招标账号4');
insert  into `zhaobiaoxinxi`(`id`,`addtime`,`xiangmumingcheng`,`gongsimingcheng`,`tupian`,`fujian`,`fabushijian`,`zhaobiaoyaoqiu`,`zhaobiaoneirong`,`zhaobiaozhanghao`) values (45,'2021-05-14 08:20:35','项目名称5','公司名称5','http://localhost:8080/springbootxf481/upload/zhaobiaoxinxi_tupian5.jpg','','2021-05-14 08:20:35','招标要求5','招标内容5','招标账号5');
insert  into `zhaobiaoxinxi`(`id`,`addtime`,`xiangmumingcheng`,`gongsimingcheng`,`tupian`,`fujian`,`fabushijian`,`zhaobiaoyaoqiu`,`zhaobiaoneirong`,`zhaobiaozhanghao`) values (46,'2021-05-14 08:20:35','项目名称6','公司名称6','http://localhost:8080/springbootxf481/upload/zhaobiaoxinxi_tupian6.jpg','','2021-05-14 08:20:35','招标要求6','招标内容6','招标账号6');

/*Table structure for table `zhongbiaoxinxi` */

DROP TABLE IF EXISTS `zhongbiaoxinxi`;

CREATE TABLE `zhongbiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jieguo` longtext COMMENT '结果',
  `hetongwenjian` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `zhaobiaozhanghao` varchar(200) DEFAULT NULL COMMENT '招标账号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620952182870 DEFAULT CHARSET=utf8 COMMENT='中标信息';

/*Data for the table `zhongbiaoxinxi` */

insert  into `zhongbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`yonghuming`,`xingming`,`shouji`,`jieguo`,`hetongwenjian`,`zhaobiaozhanghao`,`gongsimingcheng`,`sfsh`,`shhf`) values (71,'2021-05-14 08:20:35','编号1','项目名称1','用户名1','姓名1','手机1','结果1','','招标账号1','公司名称1','是','');
insert  into `zhongbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`yonghuming`,`xingming`,`shouji`,`jieguo`,`hetongwenjian`,`zhaobiaozhanghao`,`gongsimingcheng`,`sfsh`,`shhf`) values (72,'2021-05-14 08:20:35','编号2','项目名称2','用户名2','姓名2','手机2','结果2','','招标账号2','公司名称2','是','');
insert  into `zhongbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`yonghuming`,`xingming`,`shouji`,`jieguo`,`hetongwenjian`,`zhaobiaozhanghao`,`gongsimingcheng`,`sfsh`,`shhf`) values (73,'2021-05-14 08:20:35','编号3','项目名称3','用户名3','姓名3','手机3','结果3','','招标账号3','公司名称3','是','');
insert  into `zhongbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`yonghuming`,`xingming`,`shouji`,`jieguo`,`hetongwenjian`,`zhaobiaozhanghao`,`gongsimingcheng`,`sfsh`,`shhf`) values (74,'2021-05-14 08:20:35','编号4','项目名称4','用户名4','姓名4','手机4','结果4','','招标账号4','公司名称4','是','');
insert  into `zhongbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`yonghuming`,`xingming`,`shouji`,`jieguo`,`hetongwenjian`,`zhaobiaozhanghao`,`gongsimingcheng`,`sfsh`,`shhf`) values (75,'2021-05-14 08:20:35','编号5','项目名称5','用户名5','姓名5','手机5','结果5','','招标账号5','公司名称5','是','');
insert  into `zhongbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`yonghuming`,`xingming`,`shouji`,`jieguo`,`hetongwenjian`,`zhaobiaozhanghao`,`gongsimingcheng`,`sfsh`,`shhf`) values (76,'2021-05-14 08:20:35','编号6','项目名称6','用户名6','姓名6','手机6','结果6','','招标账号6','公司名称6','是','');
insert  into `zhongbiaoxinxi`(`id`,`addtime`,`bianhao`,`xiangmumingcheng`,`yonghuming`,`xingming`,`shouji`,`jieguo`,`hetongwenjian`,`zhaobiaozhanghao`,`gongsimingcheng`,`sfsh`,`shhf`) values (1620952182869,'2021-05-14 08:29:42','20215148273768900100','XX项目','2','王倩','15214121411','同意竞标，合同愉快','http://localhost:8080/springbootxf481/upload/1620952171598.doc','1','XX公司','是','同意合作');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
