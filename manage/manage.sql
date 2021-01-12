/*
SQLyog Enterprise - MySQL GUI v6.14
MySQL - 6.0.3-alpha-community : Database - manage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `manage`;

USE `manage`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `t_menu` */

DROP TABLE IF EXISTS `t_menu`;

CREATE TABLE `t_menu` (
  `id` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `menuname` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `PARENTID` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_menu` */

insert  into `t_menu`(`id`,`pid`,`icon`,`menuname`,`url`,`PARENTID`,`pname`) values ('1',NULL,'jslib/ztree/css/zTreeStyle/img/diy/1_open.png','菜单',NULL,NULL,'菜单'),('2','1','jslib/ztree/css/zTreeStyle/img/diy/2.png','员工管理','','1','员工管理'),('3','1','jslib/ztree/css/zTreeStyle/img/diy/2.png','项目管理',NULL,'1','项目管理'),('4','1','jslib/ztree/css/zTreeStyle/img/diy/2.png','绩效管理',NULL,'1','绩效管理');

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

/*
SQLyog Enterprise - MySQL GUI
MySQL - 6.0.3-alpha-community 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `t_user` (
	`id` double ,
	`userCode` varchar (765),
	`userName` varchar (765),
	`email` varchar (765),
	`status` varchar (765),
	`pwd` varchar (765)
); 
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('382','32010219900307291X','龚恬然','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('383','320102199003079001','谭淑琳\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('384','320102199003076000','蔚书语\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('385','32010219900307953X','侯思嘉\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('386','320102199003078001','陆永茹\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('387','320102199003071200','须崇芳\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('388','320102199003078002','侯婉容\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('389','320102199003073300','简沂秀\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('390','320102199003079002','任思莲\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('391','320102199003076001','麴湘怡\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('392','320102199003079123','郑寻文\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('393','320102199003079003','方琼怡\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('394','320102199003075000','翟凡桃\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('395','320102199003075001','常正思\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('396','320102199003070010','甄婧宁\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('397','32010219900307005X','邓晓亦\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('398','320102199003076002','敖蓓蕾\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('399','320102199003074000','戴怡月\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('400','320102199003070012','焦尕钰\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('401','320102199003070013','蒯余馥\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('402','320102199003070014','廖阿柒\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('403','320102199003078015','贺孤松\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('404','320102199003078016','车诗蕊\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('405','320102199003072001','饶寒天\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('406','32010219900307013X','曹亚玲\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('407','320102199003072002','茹雍雅\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('408','32010219900307777X','韩欣彤\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('409','320102199003071000','段松月\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('410','320102199003079004','高雪艳\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('411','320102199003070000','潘兰娜\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('412','320102199003072003','丁静香\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('413','320101239003071000','公优乐\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('414','320102199003079005','宋雅韶\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('415','320102199003078000','宦婷然\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('416','320104569003071000','莘夏菡\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('417','320102199003078001','马问梅\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('418','320102199003078002','黄绿春\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('419','320102199003213100','戴沙羽\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('420','320102199003078003','步菁菁\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('421','320102199003077001','景夜山\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('422','320102199003077002','农痴梅\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('423','320102199003077003','訾海女\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('424','32010219900307689X','从美玲\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('425','320102199003072004','农小琴\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('426','320102199003073000','黎嘉云\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('427','320102199003077004','萧斯玉\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('428','32010219900307283X','厍如之\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('429','320102199003079006','申梦秋\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('430','320102199003072005','充书意\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('431','32010219900307355X','利心宜\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('432','32010219900678005X','越凌春\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('433','320102199003072006','庾靖柔\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('434','320102199003072007','漕旦娅\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('435','320102199003078004','能安雁\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('436','320102199003074001','红天睿\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('437','320102199003072008','空曼云\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('438','320105699003071000','秦长丽\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('439','320102199003072009','瞿娅楠\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('440','320102199003074002','符楼兰\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('441','320102199003044000','靳楼兰\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('442','320102199003072010','王攸然\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('443','32010219900307611X','吕迎天\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('444','320102199003072011','王梦松\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('445','320102199003072012','韩婧瑶\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('446','320102199003074003','晃暖梦\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('447','320102199003073000','漕含娇\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('448','320102199003560000','乔安荷\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('449','320102199003072013','暨文霞\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('450','32010219900307427X','隆昊怡\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('451','320102199003079007','宁莎莎\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('452','320102199003079008','姚幼枫\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('453','320102000003071000','尹淑华\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('454','320102199003076003','越悦玮\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('455','320102199003076004','赵佳晨\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('456','320102199003074004','古慧琴\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('457','320102199003134000','黎寒星\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('458','32010219900107427X','萧司辰\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('459','320102199003077000','姜寒凡\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('460','320102199003079009','曾正雅\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('461','320102199003076005','常子薇\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('462','320102199003013000','蔡向萍\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('463','320102199003079010','杨弘雅\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('464','320102199003079011','幸恨之\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('465','320102199003072014','卓悦欣\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('466','320102199003078005','辛初阳\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('467','320102199003073000','史访风\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('468','32010219900307515X','吴白筠\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('469','320102199003079012','廖平露\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('470','320102199003076006','卓碧菡\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('471','320102199003079013','汪流苏\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('472','320102199006770000','空端懿\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('473','320102199003078006','尹静芙\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('474','32010219900307531X','宓晓亦\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('475','320102199003072015','苏纪轩\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('476','320102199056770000','宦沛芹\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('477','320102199003079014','甘又莲\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('478','320102199003076007','那映萱\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('479','320109899003071000','宁三春\r','1998765429@qq.com','1','admin');
insert into `t_user` (`id`, `userCode`, `userName`, `email`, `status`, `pwd`) values('480','320102199003072016','能涟颖\r','1998765429@qq.com','1','admin');

