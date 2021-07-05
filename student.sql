/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : dbweb

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 05/07/2021 13:19:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `stu_id` int NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `stu_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `stu_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `stu_class` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `stu_age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '年龄',
  `stu_sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `stu_birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '生日',
  PRIMARY KEY (`stu_id`, `stu_no`) USING BTREE,
  UNIQUE INDEX `stu_no`(`stu_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (5, '1840', '张松', '计科三班', '23', '男', '张三');
INSERT INTO `student` VALUES (6, '2021', '修改张松', '修改计科三班', '23', '男', '修改1998');
INSERT INTO `student` VALUES (7, 'www', 'qqq', 'qqq', 'qqq', '男', 'qqq');
INSERT INTO `student` VALUES (9, 'c', 'qqq', 'qqq', '23', '濂�', 'qqq');
INSERT INTO `student` VALUES (11, 'l', 'qqq', 'qqq', '23', '女', 'qqq');

SET FOREIGN_KEY_CHECKS = 1;
