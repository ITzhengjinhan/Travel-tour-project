/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50558
Source Host           : localhost:3306
Source Database       : htx

Target Server Type    : MYSQL
Target Server Version : 50558
File Encoding         : 65001

Date: 2020-03-10 21:38:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `apply`
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply` (
  `apply_id` int(10) NOT NULL AUTO_INCREMENT,
  `scene_id` int(10) DEFAULT NULL,
  `isapply` tinyint(4) DEFAULT NULL,
  `phonenumber` varchar(11) NOT NULL,
  PRIMARY KEY (`apply_id`),
  KEY `scene_id` (`scene_id`),
  KEY `phonenumber` (`phonenumber`),
  CONSTRAINT `phonenumber` FOREIGN KEY (`phonenumber`) REFERENCES `user` (`phonenumber`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES ('1', '1', '1', '17805992433');
INSERT INTO `apply` VALUES ('2', '1', '1', '18344995466');
INSERT INTO `apply` VALUES ('3', '1', '1', '18344998329');
INSERT INTO `apply` VALUES ('4', '2', '1', '18344995466');
INSERT INTO `apply` VALUES ('5', '3', '1', '18344995466');
INSERT INTO `apply` VALUES ('28', '4', '1', '17805992433');

-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `model1` varchar(10) DEFAULT NULL,
  `model2` varchar(10) DEFAULT NULL,
  `model3` varchar(10) DEFAULT NULL,
  `model4` varchar(10) DEFAULT NULL,
  `model5` varchar(10) DEFAULT NULL,
  `model6` varchar(10) DEFAULT NULL,
  `model7` varchar(10) DEFAULT NULL,
  `model8` varchar(10) DEFAULT NULL,
  `model9` varchar(10) DEFAULT NULL,
  `phonenumber` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phonenumber` (`phonenumber`),
  CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`phonenumber`) REFERENCES `user` (`phonenumber`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('37', 'true', '', 'true', '', 'true', '', '', '', '', '17805992433');

-- ----------------------------
-- Table structure for `hotel`
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `hotel_id` int(10) NOT NULL,
  `hotel_name` varchar(10) DEFAULT NULL,
  `hotel_desc` varchar(200) DEFAULT NULL,
  `hotel_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel
-- ----------------------------

-- ----------------------------
-- Table structure for `museum`
-- ----------------------------
DROP TABLE IF EXISTS `museum`;
CREATE TABLE `museum` (
  `exhibit_id` int(10) NOT NULL,
  `exhibit_name` varchar(10) DEFAULT NULL,
  `exhibit_info` varchar(500) DEFAULT NULL,
  `exhibit_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`exhibit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of museum
-- ----------------------------
INSERT INTO `museum` VALUES ('1', '文物展品', '各式各样的展品，从左上角往右数，第一个文物是清朝的杯子', 'https://s2.ax1x.com/2020/03/10/8COZSs.gif');
INSERT INTO `museum` VALUES ('2', '牡丹花的分类', '牡丹花的分类', 'https://s2.ax1x.com/2020/03/10/8COQTU.gif');
INSERT INTO `museum` VALUES ('3', '牡丹花的历史', '牡丹花的历史', 'https://s2.ax1x.com/2020/03/10/8CO1kF.gif');
INSERT INTO `museum` VALUES ('4', '牡丹花简介', '牡丹花1的介绍', 'https://s2.ax1x.com/2020/03/10/8COt61.gif');
INSERT INTO `museum` VALUES ('5', '壁画', '壁画的介绍', 'https://s2.ax1x.com/2020/03/10/8COd0K.gif');
INSERT INTO `museum` VALUES ('6', '牡丹花的生长', '牡丹花的生长', 'https://s2.ax1x.com/2020/03/10/8CO61A.gif');
INSERT INTO `museum` VALUES ('7', '牡丹花的寓意', '牡丹花的寓意', 'https://s2.ax1x.com/2020/03/10/8COW0f.gif');
INSERT INTO `museum` VALUES ('8', '十大花型', '十大花型', 'https://s2.ax1x.com/2020/03/10/8COTpj.gif');
INSERT INTO `museum` VALUES ('9', '牡丹花的用途', '牡丹花的用途', 'https://s2.ax1x.com/2020/03/10/8CObXq.gif');
INSERT INTO `museum` VALUES ('10', '文物展品', '唯有牡丹真国色，花开时节动京城', 'https://s2.ax1x.com/2020/03/10/8COvAU.gif');
INSERT INTO `museum` VALUES ('11', '画展', '画展的介绍', 'https://s2.ax1x.com/2020/03/10/8CX939.gif');
INSERT INTO `museum` VALUES ('12', '画展', '画展的介绍', 'https://s2.ax1x.com/2020/03/10/8CXPj1.gif');
INSERT INTO `museum` VALUES ('13', '牡丹的发展', '牡丹的发展', 'https://s2.ax1x.com/2020/03/10/8CXe4e.gif');

-- ----------------------------
-- Table structure for `restaurant`
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant` (
  `res_id` int(10) NOT NULL DEFAULT '0',
  `res_name` varchar(20) DEFAULT NULL,
  `res_desc` varchar(200) DEFAULT NULL,
  `am_time` varchar(50) DEFAULT NULL,
  `pm_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of restaurant
-- ----------------------------

-- ----------------------------
-- Table structure for `room`
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_name` varchar(30) DEFAULT NULL,
  `room_price` double(10,0) DEFAULT NULL,
  `room_desc` varchar(200) DEFAULT NULL,
  `hotel_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `hotelroom_id` (`hotel_id`),
  CONSTRAINT `hotelroom_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------

-- ----------------------------
-- Table structure for `scene`
-- ----------------------------
DROP TABLE IF EXISTS `scene`;
CREATE TABLE `scene` (
  `scene_id` int(11) NOT NULL,
  `scene_name` varchar(200) NOT NULL,
  `scene_desc` varchar(500) DEFAULT NULL,
  `scene_address` varchar(10) DEFAULT NULL,
  `scene_detail` varchar(1000) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`scene_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scene
-- ----------------------------
INSERT INTO `scene` VALUES ('1', '【吊桥】', '惊险刺激的吊桥，欢迎有胆量的人来体验', '三明市尤溪县', '本景区的吊桥活动，设备装备安全，体验者能体验到惊悚与刺激。（注：1.本活动要求参与者身高身高仅过1米4以上）', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1579768990955&di=1212703e2d8b475737fe3deebb1e8d86&imgtype=jpg&src=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D627385919%2C4015902236%26fm%3D214%26gp%3D0.jpg', '2019-12-11', '2020-03-01 ', '0');
INSERT INTO `scene` VALUES ('2', '【垂钓】', '垂钓活动，让你细品宁静生活', '三明市尤溪县', '本景区的垂钓活动，让你细品宁静生活，捕获到的鱼可自行带走。（注：1.本活动要求参与者自行带捕鱼工具）', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=745587912,112514825&fm=26&gp=0.jpg', '2019-12-11', '2020-03-01 ', '0');
INSERT INTO `scene` VALUES ('3', '【采茶花】', '采茶花是本景区特有的活动，采到的茶花可选择带回去', '三明市尤溪县', '本景区的采茶花活动，是本景区特有的活动，采到的茶花可自行带走。', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2903685096,3944803941&fm=26&gp=0.jpg', '2019-12-11', '2020-03-01 ', '20元/时');
INSERT INTO `scene` VALUES ('4', '【水上观光】', '古香古色的船，带你游览牡丹园', '三明市尤溪县', '本景区里的船，可根据价格挑选。带你游览牡丹园（注：穿戴好救生衣）', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=33422933,1372734347&fm=15&gp=0.jpg', '2019-12-11 ', '2020-03-01', '50元/时');
INSERT INTO `scene` VALUES ('5', '【极速滑行】', '极速滑行的滑草，在这里你能体验速度与激情的碰撞', '三明市尤溪县', '极速滑行的滑草，在这里你能体验速度与激情的碰撞。（注：1.本活动要求参与者身高身高仅过1米4以上）', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2469789828,19562620&fm=26&gp=0.jpg', '2019-12-11 ', '2020-03-01 ', '10元/次');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `phonenumber` varchar(11) NOT NULL DEFAULT '',
  `wx_name` varchar(20) DEFAULT NULL,
  `wx_gender` varchar(2) DEFAULT NULL,
  `wx_address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`phonenumber`),
  KEY `phonenumber` (`phonenumber`),
  KEY `wx_id` (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('17805992433', 'Han', '男', '福建福州');
INSERT INTO `user` VALUES ('18344995466', '阿斗归来', '男', '福建泉州');
INSERT INTO `user` VALUES ('18344998329', 'YONG.T', '女', '福建福州');
