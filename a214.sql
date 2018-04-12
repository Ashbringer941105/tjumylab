/*
Navicat MySQL Data Transfer

Source Server         : lab
Source Server Version : 50634
Source Host           : localhost:3306
Source Database       : a214

Target Server Type    : MYSQL
Target Server Version : 50634
File Encoding         : 65001

Date: 2018-04-12 22:55:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int(11) NOT NULL,
  `activity_name` varchar(255) NOT NULL,
  `activity_introduction` varchar(255) DEFAULT NULL,
  `activity_imagepath` varchar(255) DEFAULT NULL,
  `activity_date` date DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `paper_id` int(11) NOT NULL,
  `paper_name` varchar(255) DEFAULT NULL,
  `paper_author` varchar(255) DEFAULT NULL,
  `paper_imagepath` varchar(255) DEFAULT NULL,
  `paper_introduction` varchar(255) DEFAULT NULL,
  `paper_link` varchar(255) DEFAULT NULL,
  `paper_date` date DEFAULT NULL,
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_imagepath` varchar(255) DEFAULT NULL,
  `project_introduction` varchar(255) DEFAULT NULL,
  `project_link` varchar(255) DEFAULT NULL,
  `project_date` date DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------

-- ----------------------------
-- Table structure for sliderimage
-- ----------------------------
DROP TABLE IF EXISTS `sliderimage`;
CREATE TABLE `sliderimage` (
  `sliderimage_imagepath` varchar(255) DEFAULT NULL COMMENT '轮播图片路径，应该写在项目中的相对路径',
  `sliderimage_id` int(11) NOT NULL AUTO_INCREMENT,
  `sliderimage_info` varchar(255) DEFAULT '' COMMENT '轮播图片信息',
  `sliderimage_link` varchar(255) DEFAULT '',
  `sliderimage_date` varchar(255) DEFAULT '',
  PRIMARY KEY (`sliderimage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sliderimage
-- ----------------------------
INSERT INTO `sliderimage` VALUES ('images/banner.jpg', '1', '脑机媒体会议图片', '', '2018/4/12');
INSERT INTO `sliderimage` VALUES ('images/tju.jpg', '2', '天津大学卫津路东门', '', '2018/4/12');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) DEFAULT NULL,
  `student_gender` varchar(255) DEFAULT NULL,
  `student_imagepath` varchar(255) DEFAULT NULL,
  `student_homepage` varchar(255) DEFAULT '',
  `student_graduateinfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '连伯杨', 'male', 'images/lianboyang.jpg', '#', '0');
INSERT INTO `student` VALUES ('2', '靳亚东', 'male', 'images/jinyadong.jpg', '#', '0');
INSERT INTO `student` VALUES ('3', '宋宗垚', 'male', 'images/songzongyao.jpg', '#', '0');
INSERT INTO `student` VALUES ('4', '张雪', 'female', 'images/zhangxue.png', '#', '0');
INSERT INTO `student` VALUES ('5', '周子淇', 'female', 'images/zhouziqi.png', '#', '0');
INSERT INTO `student` VALUES ('6', '李攀', 'male', 'images/lipan.jpg', '#', '0');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(255) DEFAULT NULL COMMENT '实验室老师的姓名',
  `teacher_imagepath` varchar(255) DEFAULT NULL COMMENT '实验室老师的相片路径',
  `teacher_homepage` varchar(255) DEFAULT NULL COMMENT '实验室老师的个人主页链接',
  `teacher_gender` varchar(255) DEFAULT NULL COMMENT '实验室老师的性别',
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '王征', 'images/teacherwang.png', 'https://zhengwangtju.github.io/', 'male');
INSERT INTO `teacher` VALUES ('2', '孙美君', 'images/teachersun.JPG', 'http://www.escience.cn/people/sunmeijun/index.html', 'female');
