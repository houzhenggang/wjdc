/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : wjdc

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2018-05-29 17:20:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_dcwj_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_dcwj_user`;
CREATE TABLE `t_dcwj_user` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT '' COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `hzyycjpx` varchar(255) DEFAULT NULL COMMENT '何种原因参加培训',
  `jgpj` varchar(64) DEFAULT NULL COMMENT '教官评价',
  `yjsspj` varchar(64) DEFAULT NULL COMMENT '硬件设施评价',
  `ztmyd` varchar(64) DEFAULT NULL COMMENT '整体满意度',
  `gjyj` varchar(255) DEFAULT NULL COMMENT '改进意见(建议)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dcwj_user
-- ----------------------------
INSERT INTO `t_dcwj_user` VALUES ('598d3f8ac5c0490d921d9cee803c8193', '爽肤水', '13177778888', '不是东方红东方', '满意', '不太满意', '一般', '煽风点火改放假会挂科');
INSERT INTO `t_dcwj_user` VALUES ('a241359381b9474988efc267a6b5b589', '13', '12312112312', '123123', '非常满意', '非常满意', '非常满意', '123123');
INSERT INTO `t_dcwj_user` VALUES ('b82765f306f24959825e354f821483c4', 'LIWEI', '18895358842', 'SADGSDF', '非常满意', '满意', '一般', 'VGDFHG发给你');
