/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : laravel_admin

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2019-02-27 20:36:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yy_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `yy_admin_log`;
CREATE TABLE `yy_admin_log` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT COMMENT '只增ID',
  `admin_id` int(11) unsigned NOT NULL COMMENT '管理员ID',
  `operator` varchar(64) NOT NULL COMMENT '操作者',
  `ip` varchar(64) NOT NULL COMMENT 'IP地址',
  `func` varchar(100) NOT NULL DEFAULT '' COMMENT '操作的权限点',
  `url` text NOT NULL COMMENT '访问地址',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `details` text COMMENT '详情',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '类型 1日志 2错误 3警告',
  `create_time` decimal(16,3) unsigned NOT NULL COMMENT '数据插入时间',
  PRIMARY KEY (`id`),
  KEY `func` (`func`),
  KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=745 DEFAULT CHARSET=utf8mb4 COMMENT='运营后台操作日志记录表';

-- ----------------------------
-- Records of yy_admin_log
-- ----------------------------
INSERT INTO `yy_admin_log` VALUES ('1', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/\"}', '1', '1551145094.129');
INSERT INTO `yy_admin_log` VALUES ('2', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/test1\"}', '1', '1551145098.847');
INSERT INTO `yy_admin_log` VALUES ('3', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/21-2\"}', '1', '1551145104.314');
INSERT INTO `yy_admin_log` VALUES ('4', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551145104.336');
INSERT INTO `yy_admin_log` VALUES ('5', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551145104.370');
INSERT INTO `yy_admin_log` VALUES ('6', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-3\"}', '1', '1551145106.379');
INSERT INTO `yy_admin_log` VALUES ('7', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145106.480');
INSERT INTO `yy_admin_log` VALUES ('8', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551145106.480');
INSERT INTO `yy_admin_log` VALUES ('9', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145106.492');
INSERT INTO `yy_admin_log` VALUES ('10', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145133.004');
INSERT INTO `yy_admin_log` VALUES ('11', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551145134.330');
INSERT INTO `yy_admin_log` VALUES ('12', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551145134.360');
INSERT INTO `yy_admin_log` VALUES ('13', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551145134.372');
INSERT INTO `yy_admin_log` VALUES ('14', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145134.379');
INSERT INTO `yy_admin_log` VALUES ('15', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-5\"}', '1', '1551145143.894');
INSERT INTO `yy_admin_log` VALUES ('16', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551145143.920');
INSERT INTO `yy_admin_log` VALUES ('17', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551145143.931');
INSERT INTO `yy_admin_log` VALUES ('18', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551145143.944');
INSERT INTO `yy_admin_log` VALUES ('19', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551145143.992');
INSERT INTO `yy_admin_log` VALUES ('20', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=25', '', '{\"id\":\"25\"}', '1', '1551145151.364');
INSERT INTO `yy_admin_log` VALUES ('21', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551145168.762');
INSERT INTO `yy_admin_log` VALUES ('22', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=4', '', '{\"id\":\"4\"}', '1', '1551145176.625');
INSERT INTO `yy_admin_log` VALUES ('23', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-6\"}', '1', '1551145181.434');
INSERT INTO `yy_admin_log` VALUES ('24', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551145181.472');
INSERT INTO `yy_admin_log` VALUES ('25', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145181.475');
INSERT INTO `yy_admin_log` VALUES ('26', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551145218.667');
INSERT INTO `yy_admin_log` VALUES ('27', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551145218.701');
INSERT INTO `yy_admin_log` VALUES ('28', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145231.769');
INSERT INTO `yy_admin_log` VALUES ('29', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551145231.773');
INSERT INTO `yy_admin_log` VALUES ('30', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145231.808');
INSERT INTO `yy_admin_log` VALUES ('31', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145233.064');
INSERT INTO `yy_admin_log` VALUES ('32', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551145233.067');
INSERT INTO `yy_admin_log` VALUES ('33', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551145233.076');
INSERT INTO `yy_admin_log` VALUES ('34', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551145234.324');
INSERT INTO `yy_admin_log` VALUES ('35', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551145234.324');
INSERT INTO `yy_admin_log` VALUES ('36', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551145234.331');
INSERT INTO `yy_admin_log` VALUES ('37', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551145234.391');
INSERT INTO `yy_admin_log` VALUES ('38', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551145241.316');
INSERT INTO `yy_admin_log` VALUES ('39', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551145241.317');
INSERT INTO `yy_admin_log` VALUES ('40', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145241.320');
INSERT INTO `yy_admin_log` VALUES ('41', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145270.142');
INSERT INTO `yy_admin_log` VALUES ('42', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145270.153');
INSERT INTO `yy_admin_log` VALUES ('43', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551145270.173');
INSERT INTO `yy_admin_log` VALUES ('44', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551145271.756');
INSERT INTO `yy_admin_log` VALUES ('45', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551145271.762');
INSERT INTO `yy_admin_log` VALUES ('46', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145273.098');
INSERT INTO `yy_admin_log` VALUES ('47', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145273.104');
INSERT INTO `yy_admin_log` VALUES ('48', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551145273.102');
INSERT INTO `yy_admin_log` VALUES ('49', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551145274.036');
INSERT INTO `yy_admin_log` VALUES ('50', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145274.046');
INSERT INTO `yy_admin_log` VALUES ('51', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551145274.047');
INSERT INTO `yy_admin_log` VALUES ('52', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551145274.733');
INSERT INTO `yy_admin_log` VALUES ('53', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551145274.736');
INSERT INTO `yy_admin_log` VALUES ('54', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551145274.743');
INSERT INTO `yy_admin_log` VALUES ('55', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551145274.752');
INSERT INTO `yy_admin_log` VALUES ('56', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145275.846');
INSERT INTO `yy_admin_log` VALUES ('57', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551145275.852');
INSERT INTO `yy_admin_log` VALUES ('58', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551145281.900');
INSERT INTO `yy_admin_log` VALUES ('59', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551145284.438');
INSERT INTO `yy_admin_log` VALUES ('60', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551145285.263');
INSERT INTO `yy_admin_log` VALUES ('61', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551145410.290');
INSERT INTO `yy_admin_log` VALUES ('62', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551145414.515');
INSERT INTO `yy_admin_log` VALUES ('63', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551145414.548');
INSERT INTO `yy_admin_log` VALUES ('64', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145415.710');
INSERT INTO `yy_admin_log` VALUES ('65', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551145415.711');
INSERT INTO `yy_admin_log` VALUES ('66', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145415.738');
INSERT INTO `yy_admin_log` VALUES ('67', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551145416.771');
INSERT INTO `yy_admin_log` VALUES ('68', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551145416.785');
INSERT INTO `yy_admin_log` VALUES ('69', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551145421.912');
INSERT INTO `yy_admin_log` VALUES ('70', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145421.915');
INSERT INTO `yy_admin_log` VALUES ('71', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145421.915');
INSERT INTO `yy_admin_log` VALUES ('72', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551145425.236');
INSERT INTO `yy_admin_log` VALUES ('73', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145425.241');
INSERT INTO `yy_admin_log` VALUES ('74', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551145425.241');
INSERT INTO `yy_admin_log` VALUES ('75', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551145426.539');
INSERT INTO `yy_admin_log` VALUES ('76', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551145426.536');
INSERT INTO `yy_admin_log` VALUES ('77', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551145426.550');
INSERT INTO `yy_admin_log` VALUES ('78', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551145426.575');
INSERT INTO `yy_admin_log` VALUES ('79', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145428.207');
INSERT INTO `yy_admin_log` VALUES ('80', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551145428.207');
INSERT INTO `yy_admin_log` VALUES ('81', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551145429.243');
INSERT INTO `yy_admin_log` VALUES ('82', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551145429.242');
INSERT INTO `yy_admin_log` VALUES ('83', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551145429.243');
INSERT INTO `yy_admin_log` VALUES ('84', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551145429.245');
INSERT INTO `yy_admin_log` VALUES ('85', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551145429.607');
INSERT INTO `yy_admin_log` VALUES ('86', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551145429.607');
INSERT INTO `yy_admin_log` VALUES ('87', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145429.609');
INSERT INTO `yy_admin_log` VALUES ('88', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145430.003');
INSERT INTO `yy_admin_log` VALUES ('89', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145430.003');
INSERT INTO `yy_admin_log` VALUES ('90', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551145430.012');
INSERT INTO `yy_admin_log` VALUES ('91', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551145430.827');
INSERT INTO `yy_admin_log` VALUES ('92', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551145430.834');
INSERT INTO `yy_admin_log` VALUES ('93', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551145433.095');
INSERT INTO `yy_admin_log` VALUES ('94', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551145433.096');
INSERT INTO `yy_admin_log` VALUES ('95', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551145433.096');
INSERT INTO `yy_admin_log` VALUES ('96', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20&id=2', '', '{\"page\":\"1\",\"pageSize\":\"20\",\"id\":\"2\"}', '1', '1551145440.098');
INSERT INTO `yy_admin_log` VALUES ('97', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20&id=1', '', '{\"page\":\"1\",\"pageSize\":\"20\",\"id\":\"1\"}', '1', '1551145442.235');
INSERT INTO `yy_admin_log` VALUES ('98', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20&id=2', '', '{\"page\":\"1\",\"pageSize\":\"20\",\"id\":\"2\"}', '1', '1551145444.354');
INSERT INTO `yy_admin_log` VALUES ('99', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20&id=1', '', '{\"page\":\"1\",\"pageSize\":\"20\",\"id\":\"1\"}', '1', '1551145446.636');
INSERT INTO `yy_admin_log` VALUES ('100', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20&id=', '', '{\"page\":\"1\",\"pageSize\":\"20\",\"id\":null}', '1', '1551145449.128');
INSERT INTO `yy_admin_log` VALUES ('101', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551159886.089');
INSERT INTO `yy_admin_log` VALUES ('102', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551159886.114');
INSERT INTO `yy_admin_log` VALUES ('103', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551159886.116');
INSERT INTO `yy_admin_log` VALUES ('104', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551161445.066');
INSERT INTO `yy_admin_log` VALUES ('105', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551161445.089');
INSERT INTO `yy_admin_log` VALUES ('106', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551161445.105');
INSERT INTO `yy_admin_log` VALUES ('107', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551161450.719');
INSERT INTO `yy_admin_log` VALUES ('108', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551161456.561');
INSERT INTO `yy_admin_log` VALUES ('109', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551161461.730');
INSERT INTO `yy_admin_log` VALUES ('110', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551168074.494');
INSERT INTO `yy_admin_log` VALUES ('111', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551168074.520');
INSERT INTO `yy_admin_log` VALUES ('112', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551168074.521');
INSERT INTO `yy_admin_log` VALUES ('113', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551168074.524');
INSERT INTO `yy_admin_log` VALUES ('114', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-5\"}', '1', '1551168076.925');
INSERT INTO `yy_admin_log` VALUES ('115', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551168077.005');
INSERT INTO `yy_admin_log` VALUES ('116', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551168077.008');
INSERT INTO `yy_admin_log` VALUES ('117', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551168077.017');
INSERT INTO `yy_admin_log` VALUES ('118', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551168077.075');
INSERT INTO `yy_admin_log` VALUES ('119', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551168252.800');
INSERT INTO `yy_admin_log` VALUES ('120', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551168252.802');
INSERT INTO `yy_admin_log` VALUES ('121', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551168252.807');
INSERT INTO `yy_admin_log` VALUES ('122', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551168255.676');
INSERT INTO `yy_admin_log` VALUES ('123', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551168255.682');
INSERT INTO `yy_admin_log` VALUES ('124', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551168255.690');
INSERT INTO `yy_admin_log` VALUES ('125', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-2\"}', '1', '1551168258.773');
INSERT INTO `yy_admin_log` VALUES ('126', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551168258.788');
INSERT INTO `yy_admin_log` VALUES ('127', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551168258.799');
INSERT INTO `yy_admin_log` VALUES ('128', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-6\"}', '1', '1551168261.120');
INSERT INTO `yy_admin_log` VALUES ('129', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551168261.171');
INSERT INTO `yy_admin_log` VALUES ('130', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551168261.172');
INSERT INTO `yy_admin_log` VALUES ('131', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551168263.806');
INSERT INTO `yy_admin_log` VALUES ('132', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551168263.806');
INSERT INTO `yy_admin_log` VALUES ('133', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551168263.817');
INSERT INTO `yy_admin_log` VALUES ('134', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551168263.870');
INSERT INTO `yy_admin_log` VALUES ('135', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551168269.224');
INSERT INTO `yy_admin_log` VALUES ('136', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551168269.215');
INSERT INTO `yy_admin_log` VALUES ('137', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551168273.023');
INSERT INTO `yy_admin_log` VALUES ('138', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551168273.029');
INSERT INTO `yy_admin_log` VALUES ('139', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551168273.034');
INSERT INTO `yy_admin_log` VALUES ('140', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551168273.038');
INSERT INTO `yy_admin_log` VALUES ('141', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551168758.602');
INSERT INTO `yy_admin_log` VALUES ('142', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551168758.614');
INSERT INTO `yy_admin_log` VALUES ('143', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/upload', '/api/system/admin/avatar/upload', '', '{\"file\":{}}', '1', '1551169255.002');
INSERT INTO `yy_admin_log` VALUES ('144', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/upload', '/api/system/admin/avatar/upload', '', '{\"file\":{}}', '1', '1551169266.291');
INSERT INTO `yy_admin_log` VALUES ('145', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551170416.337');
INSERT INTO `yy_admin_log` VALUES ('146', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551170416.387');
INSERT INTO `yy_admin_log` VALUES ('147', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/upload', '/api/system/admin/avatar/upload', '', '{\"file\":{}}', '1', '1551170429.813');
INSERT INTO `yy_admin_log` VALUES ('148', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551170643.764');
INSERT INTO `yy_admin_log` VALUES ('149', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551170643.775');
INSERT INTO `yy_admin_log` VALUES ('150', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/upload', '/api/system/admin/avatar/upload', '', '{\"file\":{}}', '1', '1551170652.493');
INSERT INTO `yy_admin_log` VALUES ('151', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551170825.489');
INSERT INTO `yy_admin_log` VALUES ('152', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551170825.494');
INSERT INTO `yy_admin_log` VALUES ('153', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/upload', '/api/system/admin/avatar/upload', '', '{\"file\":{}}', '1', '1551170885.995');
INSERT INTO `yy_admin_log` VALUES ('154', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/save', '/api/system/admin/avatar/save', '', '{\"avatar\":\"\\/storage\\/avatars\\/gVE63Fv0hIVbyqFOX8jxqI7HUChyjbnjZxHTKjd8.jpeg\"}', '1', '1551170893.032');
INSERT INTO `yy_admin_log` VALUES ('155', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551170898.412');
INSERT INTO `yy_admin_log` VALUES ('156', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551170982.265');
INSERT INTO `yy_admin_log` VALUES ('157', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551170982.310');
INSERT INTO `yy_admin_log` VALUES ('158', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551171001.747');
INSERT INTO `yy_admin_log` VALUES ('159', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551171001.746');
INSERT INTO `yy_admin_log` VALUES ('160', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551171022.588');
INSERT INTO `yy_admin_log` VALUES ('161', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551171022.598');
INSERT INTO `yy_admin_log` VALUES ('162', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/save', '/api/system/admin/avatar/save', '', '{\"avatar\":\"\\/storage\\/avatars\\/gVE63Fv0hIVbyqFOX8jxqI7HUChyjbnjZxHTKjd8.jpeg\"}', '1', '1551171027.532');
INSERT INTO `yy_admin_log` VALUES ('163', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/upload', '/api/system/admin/avatar/upload', '', '{\"file\":{}}', '1', '1551171071.123');
INSERT INTO `yy_admin_log` VALUES ('164', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/save', '/api/system/admin/avatar/save', '', '{\"avatar\":\"\\/storage\\/avatars\\/iIpt01ICPGl6ZWjCWWAYRGIkEFfBgxpUEKijSDSe.jpeg\"}', '1', '1551171076.550');
INSERT INTO `yy_admin_log` VALUES ('165', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/upload', '/api/system/admin/avatar/upload', '', '{\"file\":{}}', '1', '1551171093.917');
INSERT INTO `yy_admin_log` VALUES ('166', '1', 'god', '127.0.0.1', '/api/system/admin/avatar/save', '/api/system/admin/avatar/save', '', '{\"avatar\":\"\\/storage\\/avatars\\/BUmMi7tUldj9A96F8aUbNktkFCxX8hwDSjjB9TjH.jpeg\"}', '1', '1551171095.087');
INSERT INTO `yy_admin_log` VALUES ('167', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551171327.115');
INSERT INTO `yy_admin_log` VALUES ('168', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551171327.133');
INSERT INTO `yy_admin_log` VALUES ('169', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/\"}', '1', '1551190789.313');
INSERT INTO `yy_admin_log` VALUES ('170', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/21-3\"}', '1', '1551191184.038');
INSERT INTO `yy_admin_log` VALUES ('171', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191184.150');
INSERT INTO `yy_admin_log` VALUES ('172', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191188.472');
INSERT INTO `yy_admin_log` VALUES ('173', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191188.484');
INSERT INTO `yy_admin_log` VALUES ('174', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191188.482');
INSERT INTO `yy_admin_log` VALUES ('175', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-2\"}', '1', '1551191190.430');
INSERT INTO `yy_admin_log` VALUES ('176', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551191190.458');
INSERT INTO `yy_admin_log` VALUES ('177', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551191190.462');
INSERT INTO `yy_admin_log` VALUES ('178', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191191.881');
INSERT INTO `yy_admin_log` VALUES ('179', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191191.882');
INSERT INTO `yy_admin_log` VALUES ('180', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191191.882');
INSERT INTO `yy_admin_log` VALUES ('181', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551191192.429');
INSERT INTO `yy_admin_log` VALUES ('182', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551191192.460');
INSERT INTO `yy_admin_log` VALUES ('183', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191192.463');
INSERT INTO `yy_admin_log` VALUES ('184', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551191192.463');
INSERT INTO `yy_admin_log` VALUES ('185', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-5\"}', '1', '1551191192.825');
INSERT INTO `yy_admin_log` VALUES ('186', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191192.869');
INSERT INTO `yy_admin_log` VALUES ('187', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191192.883');
INSERT INTO `yy_admin_log` VALUES ('188', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191192.886');
INSERT INTO `yy_admin_log` VALUES ('189', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-6\"}', '1', '1551191193.486');
INSERT INTO `yy_admin_log` VALUES ('190', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191193.932');
INSERT INTO `yy_admin_log` VALUES ('191', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191193.932');
INSERT INTO `yy_admin_log` VALUES ('192', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551191193.937');
INSERT INTO `yy_admin_log` VALUES ('193', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191193.940');
INSERT INTO `yy_admin_log` VALUES ('194', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551191194.278');
INSERT INTO `yy_admin_log` VALUES ('195', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191194.280');
INSERT INTO `yy_admin_log` VALUES ('196', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551191194.276');
INSERT INTO `yy_admin_log` VALUES ('197', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191194.582');
INSERT INTO `yy_admin_log` VALUES ('198', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191194.586');
INSERT INTO `yy_admin_log` VALUES ('199', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191194.586');
INSERT INTO `yy_admin_log` VALUES ('200', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551191194.907');
INSERT INTO `yy_admin_log` VALUES ('201', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551191194.908');
INSERT INTO `yy_admin_log` VALUES ('202', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191195.527');
INSERT INTO `yy_admin_log` VALUES ('203', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191195.518');
INSERT INTO `yy_admin_log` VALUES ('204', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191195.533');
INSERT INTO `yy_admin_log` VALUES ('205', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551191195.914');
INSERT INTO `yy_admin_log` VALUES ('206', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191195.916');
INSERT INTO `yy_admin_log` VALUES ('207', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551191195.915');
INSERT INTO `yy_admin_log` VALUES ('208', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191196.290');
INSERT INTO `yy_admin_log` VALUES ('209', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191196.289');
INSERT INTO `yy_admin_log` VALUES ('210', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191196.299');
INSERT INTO `yy_admin_log` VALUES ('211', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551191196.302');
INSERT INTO `yy_admin_log` VALUES ('212', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551191196.579');
INSERT INTO `yy_admin_log` VALUES ('213', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191196.580');
INSERT INTO `yy_admin_log` VALUES ('214', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551191197.743');
INSERT INTO `yy_admin_log` VALUES ('215', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551191197.747');
INSERT INTO `yy_admin_log` VALUES ('216', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191206.547');
INSERT INTO `yy_admin_log` VALUES ('217', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191206.553');
INSERT INTO `yy_admin_log` VALUES ('218', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191206.558');
INSERT INTO `yy_admin_log` VALUES ('219', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551191207.166');
INSERT INTO `yy_admin_log` VALUES ('220', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551191207.172');
INSERT INTO `yy_admin_log` VALUES ('221', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191399.488');
INSERT INTO `yy_admin_log` VALUES ('222', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551191399.496');
INSERT INTO `yy_admin_log` VALUES ('223', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551191419.478');
INSERT INTO `yy_admin_log` VALUES ('224', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551191419.491');
INSERT INTO `yy_admin_log` VALUES ('225', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191420.151');
INSERT INTO `yy_admin_log` VALUES ('226', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191420.153');
INSERT INTO `yy_admin_log` VALUES ('227', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191420.187');
INSERT INTO `yy_admin_log` VALUES ('228', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551191420.650');
INSERT INTO `yy_admin_log` VALUES ('229', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551191420.654');
INSERT INTO `yy_admin_log` VALUES ('230', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191420.651');
INSERT INTO `yy_admin_log` VALUES ('231', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191421.138');
INSERT INTO `yy_admin_log` VALUES ('232', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191421.145');
INSERT INTO `yy_admin_log` VALUES ('233', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191421.153');
INSERT INTO `yy_admin_log` VALUES ('234', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551191421.178');
INSERT INTO `yy_admin_log` VALUES ('235', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191421.489');
INSERT INTO `yy_admin_log` VALUES ('236', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551191421.510');
INSERT INTO `yy_admin_log` VALUES ('237', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191421.862');
INSERT INTO `yy_admin_log` VALUES ('238', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551191421.868');
INSERT INTO `yy_admin_log` VALUES ('239', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191421.868');
INSERT INTO `yy_admin_log` VALUES ('240', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191421.870');
INSERT INTO `yy_admin_log` VALUES ('241', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551191422.227');
INSERT INTO `yy_admin_log` VALUES ('242', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551191422.229');
INSERT INTO `yy_admin_log` VALUES ('243', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191422.229');
INSERT INTO `yy_admin_log` VALUES ('244', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191422.567');
INSERT INTO `yy_admin_log` VALUES ('245', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191422.573');
INSERT INTO `yy_admin_log` VALUES ('246', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191422.572');
INSERT INTO `yy_admin_log` VALUES ('247', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551191422.909');
INSERT INTO `yy_admin_log` VALUES ('248', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551191422.910');
INSERT INTO `yy_admin_log` VALUES ('249', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191704.436');
INSERT INTO `yy_admin_log` VALUES ('250', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551191704.438');
INSERT INTO `yy_admin_log` VALUES ('251', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551191704.442');
INSERT INTO `yy_admin_log` VALUES ('252', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551191706.900');
INSERT INTO `yy_admin_log` VALUES ('253', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191706.904');
INSERT INTO `yy_admin_log` VALUES ('254', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551191706.910');
INSERT INTO `yy_admin_log` VALUES ('255', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191708.359');
INSERT INTO `yy_admin_log` VALUES ('256', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191708.365');
INSERT INTO `yy_admin_log` VALUES ('257', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191708.365');
INSERT INTO `yy_admin_log` VALUES ('258', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551191708.406');
INSERT INTO `yy_admin_log` VALUES ('259', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191930.371');
INSERT INTO `yy_admin_log` VALUES ('260', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191930.400');
INSERT INTO `yy_admin_log` VALUES ('261', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191930.422');
INSERT INTO `yy_admin_log` VALUES ('262', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551191930.424');
INSERT INTO `yy_admin_log` VALUES ('263', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551191936.853');
INSERT INTO `yy_admin_log` VALUES ('264', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=22', '', '{\"id\":\"22\"}', '1', '1551191941.217');
INSERT INTO `yy_admin_log` VALUES ('265', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551191945.875');
INSERT INTO `yy_admin_log` VALUES ('266', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551191955.639');
INSERT INTO `yy_admin_log` VALUES ('267', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551191955.676');
INSERT INTO `yy_admin_log` VALUES ('268', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191955.678');
INSERT INTO `yy_admin_log` VALUES ('269', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551191955.682');
INSERT INTO `yy_admin_log` VALUES ('270', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191956.252');
INSERT INTO `yy_admin_log` VALUES ('271', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191956.255');
INSERT INTO `yy_admin_log` VALUES ('272', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191956.260');
INSERT INTO `yy_admin_log` VALUES ('273', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551191956.264');
INSERT INTO `yy_admin_log` VALUES ('274', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=22', '', '{\"id\":\"22\"}', '1', '1551191962.455');
INSERT INTO `yy_admin_log` VALUES ('275', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191964.407');
INSERT INTO `yy_admin_log` VALUES ('276', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551191965.153');
INSERT INTO `yy_admin_log` VALUES ('277', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551191965.160');
INSERT INTO `yy_admin_log` VALUES ('278', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551191965.154');
INSERT INTO `yy_admin_log` VALUES ('279', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551191965.853');
INSERT INTO `yy_admin_log` VALUES ('280', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551191965.857');
INSERT INTO `yy_admin_log` VALUES ('281', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551191965.865');
INSERT INTO `yy_admin_log` VALUES ('282', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551191965.901');
INSERT INTO `yy_admin_log` VALUES ('283', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551192006.139');
INSERT INTO `yy_admin_log` VALUES ('284', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551192006.164');
INSERT INTO `yy_admin_log` VALUES ('285', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551192006.172');
INSERT INTO `yy_admin_log` VALUES ('286', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551192006.169');
INSERT INTO `yy_admin_log` VALUES ('287', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=22', '', '{\"id\":\"22\"}', '1', '1551192010.152');
INSERT INTO `yy_admin_log` VALUES ('288', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"name\":\"\\/log\",\"status\":true,\"menu\":\"1\",\"sort\":\"5\",\"icon\":\"<i class=\\\"fa sticky-note-o\\\"><\\/i>\"}', '1', '1551192263.033');
INSERT INTO `yy_admin_log` VALUES ('289', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551192263.199');
INSERT INTO `yy_admin_log` VALUES ('290', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551192263.237');
INSERT INTO `yy_admin_log` VALUES ('291', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551192270.687');
INSERT INTO `yy_admin_log` VALUES ('292', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":6,\"name\":\"\\/system\\/logs\",\"title\":\"\\u65e5\\u5fd7\\u5217\\u8868\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"pid\":27,\"remark\":null,\"icon\":null,\"sort\":null,\"deleted\":0}', '1', '1551192366.947');
INSERT INTO `yy_admin_log` VALUES ('293', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551192367.102');
INSERT INTO `yy_admin_log` VALUES ('294', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551192367.125');
INSERT INTO `yy_admin_log` VALUES ('295', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551192376.113');
INSERT INTO `yy_admin_log` VALUES ('296', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551192376.116');
INSERT INTO `yy_admin_log` VALUES ('297', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551192376.160');
INSERT INTO `yy_admin_log` VALUES ('298', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551192376.162');
INSERT INTO `yy_admin_log` VALUES ('299', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=14', '', '{\"id\":\"14\"}', '1', '1551192381.965');
INSERT INTO `yy_admin_log` VALUES ('300', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551192385.683');
INSERT INTO `yy_admin_log` VALUES ('301', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=27', '', '{\"id\":\"27\"}', '1', '1551192390.776');
INSERT INTO `yy_admin_log` VALUES ('302', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551192393.969');
INSERT INTO `yy_admin_log` VALUES ('303', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=5', '', '{\"id\":\"5\"}', '1', '1551192395.531');
INSERT INTO `yy_admin_log` VALUES ('304', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-6\"}', '1', '1551192442.127');
INSERT INTO `yy_admin_log` VALUES ('305', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551192442.182');
INSERT INTO `yy_admin_log` VALUES ('306', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551192442.209');
INSERT INTO `yy_admin_log` VALUES ('307', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551192446.990');
INSERT INTO `yy_admin_log` VALUES ('308', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551192446.994');
INSERT INTO `yy_admin_log` VALUES ('309', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551192447.010');
INSERT INTO `yy_admin_log` VALUES ('310', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551192447.070');
INSERT INTO `yy_admin_log` VALUES ('311', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551192487.500');
INSERT INTO `yy_admin_log` VALUES ('312', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551192487.500');
INSERT INTO `yy_admin_log` VALUES ('313', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551192487.505');
INSERT INTO `yy_admin_log` VALUES ('314', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551192487.545');
INSERT INTO `yy_admin_log` VALUES ('315', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193375.327');
INSERT INTO `yy_admin_log` VALUES ('316', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193375.335');
INSERT INTO `yy_admin_log` VALUES ('317', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551193375.361');
INSERT INTO `yy_admin_log` VALUES ('318', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551193375.361');
INSERT INTO `yy_admin_log` VALUES ('319', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193390.488');
INSERT INTO `yy_admin_log` VALUES ('320', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193390.482');
INSERT INTO `yy_admin_log` VALUES ('321', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551193390.496');
INSERT INTO `yy_admin_log` VALUES ('322', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551193390.498');
INSERT INTO `yy_admin_log` VALUES ('323', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=27', '', '{\"id\":\"27\"}', '1', '1551193393.947');
INSERT INTO `yy_admin_log` VALUES ('324', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551193395.580');
INSERT INTO `yy_admin_log` VALUES ('325', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":6,\"name\":\"\\/log\\/logs\",\"title\":\"\\u65e5\\u5fd7\\u5217\\u8868\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"pid\":27,\"remark\":null,\"icon\":null,\"sort\":null,\"deleted\":0}', '1', '1551193406.513');
INSERT INTO `yy_admin_log` VALUES ('326', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193406.663');
INSERT INTO `yy_admin_log` VALUES ('327', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193406.668');
INSERT INTO `yy_admin_log` VALUES ('328', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=14', '', '{\"id\":\"14\"}', '1', '1551193410.300');
INSERT INTO `yy_admin_log` VALUES ('329', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":14,\"name\":\"api\\/log\\/log\\/loglist\",\"title\":\"\\u83b7\\u53d6\\u7ba1\\u7406\\u5458\\u65e5\\u5fd7\\u5217\\u8868\",\"type\":1,\"status\":true,\"menu\":\"0\",\"condition\":null,\"pid\":6,\"remark\":null,\"icon\":null,\"sort\":null,\"deleted\":0}', '1', '1551193426.669');
INSERT INTO `yy_admin_log` VALUES ('330', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193426.777');
INSERT INTO `yy_admin_log` VALUES ('331', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193426.790');
INSERT INTO `yy_admin_log` VALUES ('332', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193440.261');
INSERT INTO `yy_admin_log` VALUES ('333', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551193440.262');
INSERT INTO `yy_admin_log` VALUES ('334', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551193440.264');
INSERT INTO `yy_admin_log` VALUES ('335', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193440.260');
INSERT INTO `yy_admin_log` VALUES ('336', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551193445.023');
INSERT INTO `yy_admin_log` VALUES ('337', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=14', '', '{\"id\":\"14\"}', '1', '1551193446.418');
INSERT INTO `yy_admin_log` VALUES ('338', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551193448.214');
INSERT INTO `yy_admin_log` VALUES ('339', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=14', '', '{\"id\":\"14\"}', '1', '1551193449.895');
INSERT INTO `yy_admin_log` VALUES ('340', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551193455.009');
INSERT INTO `yy_admin_log` VALUES ('341', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=14', '', '{\"id\":\"14\"}', '1', '1551193462.804');
INSERT INTO `yy_admin_log` VALUES ('342', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551193493.744');
INSERT INTO `yy_admin_log` VALUES ('343', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193493.746');
INSERT INTO `yy_admin_log` VALUES ('344', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551193493.785');
INSERT INTO `yy_admin_log` VALUES ('345', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193493.801');
INSERT INTO `yy_admin_log` VALUES ('346', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-2\"}', '1', '1551193506.862');
INSERT INTO `yy_admin_log` VALUES ('347', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551193506.868');
INSERT INTO `yy_admin_log` VALUES ('348', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551193506.897');
INSERT INTO `yy_admin_log` VALUES ('349', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-3\"}', '1', '1551193508.020');
INSERT INTO `yy_admin_log` VALUES ('350', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551193508.081');
INSERT INTO `yy_admin_log` VALUES ('351', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551193508.090');
INSERT INTO `yy_admin_log` VALUES ('352', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551193508.104');
INSERT INTO `yy_admin_log` VALUES ('353', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551193509.295');
INSERT INTO `yy_admin_log` VALUES ('354', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551193509.295');
INSERT INTO `yy_admin_log` VALUES ('355', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551193512.610');
INSERT INTO `yy_admin_log` VALUES ('356', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551193541.145');
INSERT INTO `yy_admin_log` VALUES ('357', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193541.145');
INSERT INTO `yy_admin_log` VALUES ('358', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551193541.149');
INSERT INTO `yy_admin_log` VALUES ('359', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193541.158');
INSERT INTO `yy_admin_log` VALUES ('360', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551193543.261');
INSERT INTO `yy_admin_log` VALUES ('361', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=27', '', '{\"id\":\"27\"}', '1', '1551193545.109');
INSERT INTO `yy_admin_log` VALUES ('362', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551193548.609');
INSERT INTO `yy_admin_log` VALUES ('363', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=14', '', '{\"id\":\"14\"}', '1', '1551193550.291');
INSERT INTO `yy_admin_log` VALUES ('364', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551193662.681');
INSERT INTO `yy_admin_log` VALUES ('365', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551193665.670');
INSERT INTO `yy_admin_log` VALUES ('366', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551193673.622');
INSERT INTO `yy_admin_log` VALUES ('367', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551193673.653');
INSERT INTO `yy_admin_log` VALUES ('368', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551193674.547');
INSERT INTO `yy_admin_log` VALUES ('369', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551193674.559');
INSERT INTO `yy_admin_log` VALUES ('370', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551193674.581');
INSERT INTO `yy_admin_log` VALUES ('371', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551193675.391');
INSERT INTO `yy_admin_log` VALUES ('372', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551193675.409');
INSERT INTO `yy_admin_log` VALUES ('373', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551193675.411');
INSERT INTO `yy_admin_log` VALUES ('374', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551193675.440');
INSERT INTO `yy_admin_log` VALUES ('375', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551193676.288');
INSERT INTO `yy_admin_log` VALUES ('376', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551193676.289');
INSERT INTO `yy_admin_log` VALUES ('377', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193676.291');
INSERT INTO `yy_admin_log` VALUES ('378', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193676.297');
INSERT INTO `yy_admin_log` VALUES ('379', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551193678.484');
INSERT INTO `yy_admin_log` VALUES ('380', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551193678.485');
INSERT INTO `yy_admin_log` VALUES ('381', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551193678.485');
INSERT INTO `yy_admin_log` VALUES ('382', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551193679.016');
INSERT INTO `yy_admin_log` VALUES ('383', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551193679.016');
INSERT INTO `yy_admin_log` VALUES ('384', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551193679.018');
INSERT INTO `yy_admin_log` VALUES ('385', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551193679.952');
INSERT INTO `yy_admin_log` VALUES ('386', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551193679.953');
INSERT INTO `yy_admin_log` VALUES ('387', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551193802.329');
INSERT INTO `yy_admin_log` VALUES ('388', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551193802.360');
INSERT INTO `yy_admin_log` VALUES ('389', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-3\"}', '1', '1551193809.928');
INSERT INTO `yy_admin_log` VALUES ('390', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551193809.998');
INSERT INTO `yy_admin_log` VALUES ('391', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551193810.050');
INSERT INTO `yy_admin_log` VALUES ('392', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551193810.071');
INSERT INTO `yy_admin_log` VALUES ('393', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551193810.700');
INSERT INTO `yy_admin_log` VALUES ('394', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551193810.731');
INSERT INTO `yy_admin_log` VALUES ('395', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551193810.734');
INSERT INTO `yy_admin_log` VALUES ('396', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551193810.735');
INSERT INTO `yy_admin_log` VALUES ('397', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-5\"}', '1', '1551193811.608');
INSERT INTO `yy_admin_log` VALUES ('398', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551193811.654');
INSERT INTO `yy_admin_log` VALUES ('399', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551193811.657');
INSERT INTO `yy_admin_log` VALUES ('400', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551193811.671');
INSERT INTO `yy_admin_log` VALUES ('401', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551193811.721');
INSERT INTO `yy_admin_log` VALUES ('402', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551194084.785');
INSERT INTO `yy_admin_log` VALUES ('403', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551194084.830');
INSERT INTO `yy_admin_log` VALUES ('404', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551194084.834');
INSERT INTO `yy_admin_log` VALUES ('405', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551194084.839');
INSERT INTO `yy_admin_log` VALUES ('406', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551194111.204');
INSERT INTO `yy_admin_log` VALUES ('407', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551194111.209');
INSERT INTO `yy_admin_log` VALUES ('408', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551194111.212');
INSERT INTO `yy_admin_log` VALUES ('409', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551194111.212');
INSERT INTO `yy_admin_log` VALUES ('410', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-2\"}', '1', '1551194122.934');
INSERT INTO `yy_admin_log` VALUES ('411', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194122.941');
INSERT INTO `yy_admin_log` VALUES ('412', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194122.949');
INSERT INTO `yy_admin_log` VALUES ('413', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551194125.347');
INSERT INTO `yy_admin_log` VALUES ('414', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194157.850');
INSERT INTO `yy_admin_log` VALUES ('415', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194157.855');
INSERT INTO `yy_admin_log` VALUES ('416', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-3\"}', '1', '1551194158.799');
INSERT INTO `yy_admin_log` VALUES ('417', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551194158.848');
INSERT INTO `yy_admin_log` VALUES ('418', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551194158.849');
INSERT INTO `yy_admin_log` VALUES ('419', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551194158.857');
INSERT INTO `yy_admin_log` VALUES ('420', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551194159.938');
INSERT INTO `yy_admin_log` VALUES ('421', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551194159.959');
INSERT INTO `yy_admin_log` VALUES ('422', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551194159.971');
INSERT INTO `yy_admin_log` VALUES ('423', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551194159.992');
INSERT INTO `yy_admin_log` VALUES ('424', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551194160.638');
INSERT INTO `yy_admin_log` VALUES ('425', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551194160.638');
INSERT INTO `yy_admin_log` VALUES ('426', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551194160.641');
INSERT INTO `yy_admin_log` VALUES ('427', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551194160.644');
INSERT INTO `yy_admin_log` VALUES ('428', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551194161.674');
INSERT INTO `yy_admin_log` VALUES ('429', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551194161.676');
INSERT INTO `yy_admin_log` VALUES ('430', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551194161.676');
INSERT INTO `yy_admin_log` VALUES ('431', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194163.937');
INSERT INTO `yy_admin_log` VALUES ('432', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194163.939');
INSERT INTO `yy_admin_log` VALUES ('433', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194577.531');
INSERT INTO `yy_admin_log` VALUES ('434', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194577.531');
INSERT INTO `yy_admin_log` VALUES ('435', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194608.280');
INSERT INTO `yy_admin_log` VALUES ('436', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194608.293');
INSERT INTO `yy_admin_log` VALUES ('437', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551194612.280');
INSERT INTO `yy_admin_log` VALUES ('438', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-2\"}', '1', '1551194659.203');
INSERT INTO `yy_admin_log` VALUES ('439', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194659.209');
INSERT INTO `yy_admin_log` VALUES ('440', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194659.260');
INSERT INTO `yy_admin_log` VALUES ('441', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551194688.171');
INSERT INTO `yy_admin_log` VALUES ('442', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194806.080');
INSERT INTO `yy_admin_log` VALUES ('443', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194813.089');
INSERT INTO `yy_admin_log` VALUES ('444', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194937.731');
INSERT INTO `yy_admin_log` VALUES ('445', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194937.767');
INSERT INTO `yy_admin_log` VALUES ('446', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-3\"}', '1', '1551194949.719');
INSERT INTO `yy_admin_log` VALUES ('447', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551194949.807');
INSERT INTO `yy_admin_log` VALUES ('448', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551194949.856');
INSERT INTO `yy_admin_log` VALUES ('449', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551194960.319');
INSERT INTO `yy_admin_log` VALUES ('450', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551194960.345');
INSERT INTO `yy_admin_log` VALUES ('451', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551194960.347');
INSERT INTO `yy_admin_log` VALUES ('452', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551194960.346');
INSERT INTO `yy_admin_log` VALUES ('453', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551194963.301');
INSERT INTO `yy_admin_log` VALUES ('454', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551194963.302');
INSERT INTO `yy_admin_log` VALUES ('455', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551194963.302');
INSERT INTO `yy_admin_log` VALUES ('456', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194966.493');
INSERT INTO `yy_admin_log` VALUES ('457', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194966.499');
INSERT INTO `yy_admin_log` VALUES ('458', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551194968.082');
INSERT INTO `yy_admin_log` VALUES ('459', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551194968.086');
INSERT INTO `yy_admin_log` VALUES ('460', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551194968.085');
INSERT INTO `yy_admin_log` VALUES ('461', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551194969.320');
INSERT INTO `yy_admin_log` VALUES ('462', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551194969.324');
INSERT INTO `yy_admin_log` VALUES ('463', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551194969.327');
INSERT INTO `yy_admin_log` VALUES ('464', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-5\"}', '1', '1551194970.953');
INSERT INTO `yy_admin_log` VALUES ('465', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551194971.001');
INSERT INTO `yy_admin_log` VALUES ('466', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551194971.004');
INSERT INTO `yy_admin_log` VALUES ('467', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551194971.003');
INSERT INTO `yy_admin_log` VALUES ('468', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551194971.059');
INSERT INTO `yy_admin_log` VALUES ('469', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194987.206');
INSERT INTO `yy_admin_log` VALUES ('470', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194987.206');
INSERT INTO `yy_admin_log` VALUES ('471', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551194989.997');
INSERT INTO `yy_admin_log` VALUES ('472', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551194990.021');
INSERT INTO `yy_admin_log` VALUES ('473', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551195085.488');
INSERT INTO `yy_admin_log` VALUES ('474', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551195098.244');
INSERT INTO `yy_admin_log` VALUES ('475', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195098.989');
INSERT INTO `yy_admin_log` VALUES ('476', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195099.014');
INSERT INTO `yy_admin_log` VALUES ('477', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195106.755');
INSERT INTO `yy_admin_log` VALUES ('478', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195106.757');
INSERT INTO `yy_admin_log` VALUES ('479', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195183.547');
INSERT INTO `yy_admin_log` VALUES ('480', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195183.549');
INSERT INTO `yy_admin_log` VALUES ('481', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195183.566');
INSERT INTO `yy_admin_log` VALUES ('482', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195189.521');
INSERT INTO `yy_admin_log` VALUES ('483', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195189.535');
INSERT INTO `yy_admin_log` VALUES ('484', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195189.538');
INSERT INTO `yy_admin_log` VALUES ('485', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195228.179');
INSERT INTO `yy_admin_log` VALUES ('486', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195228.204');
INSERT INTO `yy_admin_log` VALUES ('487', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195228.213');
INSERT INTO `yy_admin_log` VALUES ('488', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195294.384');
INSERT INTO `yy_admin_log` VALUES ('489', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195294.389');
INSERT INTO `yy_admin_log` VALUES ('490', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195294.393');
INSERT INTO `yy_admin_log` VALUES ('491', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195332.863');
INSERT INTO `yy_admin_log` VALUES ('492', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195332.864');
INSERT INTO `yy_admin_log` VALUES ('493', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195332.866');
INSERT INTO `yy_admin_log` VALUES ('494', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195418.775');
INSERT INTO `yy_admin_log` VALUES ('495', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195418.789');
INSERT INTO `yy_admin_log` VALUES ('496', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195418.800');
INSERT INTO `yy_admin_log` VALUES ('497', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195435.017');
INSERT INTO `yy_admin_log` VALUES ('498', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195435.030');
INSERT INTO `yy_admin_log` VALUES ('499', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195435.040');
INSERT INTO `yy_admin_log` VALUES ('500', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195467.033');
INSERT INTO `yy_admin_log` VALUES ('501', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195467.036');
INSERT INTO `yy_admin_log` VALUES ('502', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195467.071');
INSERT INTO `yy_admin_log` VALUES ('503', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195534.607');
INSERT INTO `yy_admin_log` VALUES ('504', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195534.611');
INSERT INTO `yy_admin_log` VALUES ('505', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195534.607');
INSERT INTO `yy_admin_log` VALUES ('506', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-5\"}', '1', '1551195540.378');
INSERT INTO `yy_admin_log` VALUES ('507', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551195540.442');
INSERT INTO `yy_admin_log` VALUES ('508', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551195540.443');
INSERT INTO `yy_admin_log` VALUES ('509', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551195540.447');
INSERT INTO `yy_admin_log` VALUES ('510', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551195540.450');
INSERT INTO `yy_admin_log` VALUES ('511', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551195550.548');
INSERT INTO `yy_admin_log` VALUES ('512', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=14', '', '{\"id\":\"14\"}', '1', '1551195554.436');
INSERT INTO `yy_admin_log` VALUES ('513', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":14,\"name\":\"api\\/system\\/admin\\/loglist\",\"title\":\"\\u83b7\\u53d6\\u7ba1\\u7406\\u5458\\u65e5\\u5fd7\\u5217\\u8868\",\"type\":1,\"status\":true,\"menu\":\"0\",\"condition\":null,\"pid\":6,\"remark\":null,\"icon\":null,\"sort\":null,\"deleted\":0}', '1', '1551195622.389');
INSERT INTO `yy_admin_log` VALUES ('514', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551195622.547');
INSERT INTO `yy_admin_log` VALUES ('515', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551195622.557');
INSERT INTO `yy_admin_log` VALUES ('516', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551195628.453');
INSERT INTO `yy_admin_log` VALUES ('517', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551195628.456');
INSERT INTO `yy_admin_log` VALUES ('518', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551195628.456');
INSERT INTO `yy_admin_log` VALUES ('519', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551195628.457');
INSERT INTO `yy_admin_log` VALUES ('520', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/test1\"}', '1', '1551195646.633');
INSERT INTO `yy_admin_log` VALUES ('521', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551195673.239');
INSERT INTO `yy_admin_log` VALUES ('522', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551195673.277');
INSERT INTO `yy_admin_log` VALUES ('523', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551195673.286');
INSERT INTO `yy_admin_log` VALUES ('524', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195673.291');
INSERT INTO `yy_admin_log` VALUES ('525', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-3\"}', '1', '1551195675.705');
INSERT INTO `yy_admin_log` VALUES ('526', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195675.773');
INSERT INTO `yy_admin_log` VALUES ('527', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195675.778');
INSERT INTO `yy_admin_log` VALUES ('528', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195675.782');
INSERT INTO `yy_admin_log` VALUES ('529', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195679.956');
INSERT INTO `yy_admin_log` VALUES ('530', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551195679.957');
INSERT INTO `yy_admin_log` VALUES ('531', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551195679.962');
INSERT INTO `yy_admin_log` VALUES ('532', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551195802.147');
INSERT INTO `yy_admin_log` VALUES ('533', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551195802.179');
INSERT INTO `yy_admin_log` VALUES ('534', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195802.183');
INSERT INTO `yy_admin_log` VALUES ('535', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-3\"}', '1', '1551195978.020');
INSERT INTO `yy_admin_log` VALUES ('536', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551195978.090');
INSERT INTO `yy_admin_log` VALUES ('537', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195978.089');
INSERT INTO `yy_admin_log` VALUES ('538', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551195978.092');
INSERT INTO `yy_admin_log` VALUES ('539', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551195979.632');
INSERT INTO `yy_admin_log` VALUES ('540', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551195979.632');
INSERT INTO `yy_admin_log` VALUES ('541', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551195979.633');
INSERT INTO `yy_admin_log` VALUES ('542', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-2\"}', '1', '1551195981.052');
INSERT INTO `yy_admin_log` VALUES ('543', '1', 'god', '127.0.0.1', '/api/system/admin/profile/get', '/api/system/admin/profile/get', '', '[]', '1', '1551195981.076');
INSERT INTO `yy_admin_log` VALUES ('544', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/profile\"}', '1', '1551195981.071');
INSERT INTO `yy_admin_log` VALUES ('545', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-5\"}', '1', '1551196010.704');
INSERT INTO `yy_admin_log` VALUES ('546', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196010.735');
INSERT INTO `yy_admin_log` VALUES ('547', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196010.746');
INSERT INTO `yy_admin_log` VALUES ('548', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196010.754');
INSERT INTO `yy_admin_log` VALUES ('549', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196010.801');
INSERT INTO `yy_admin_log` VALUES ('550', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=27', '', '{\"id\":\"27\"}', '1', '1551196041.775');
INSERT INTO `yy_admin_log` VALUES ('551', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551196045.932');
INSERT INTO `yy_admin_log` VALUES ('552', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551196049.587');
INSERT INTO `yy_admin_log` VALUES ('553', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551196051.974');
INSERT INTO `yy_admin_log` VALUES ('554', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=27', '', '{\"id\":\"27\"}', '1', '1551196080.720');
INSERT INTO `yy_admin_log` VALUES ('555', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551196082.397');
INSERT INTO `yy_admin_log` VALUES ('556', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=2', '', '{\"id\":\"2\"}', '1', '1551196099.786');
INSERT INTO `yy_admin_log` VALUES ('557', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551196104.644');
INSERT INTO `yy_admin_log` VALUES ('558', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=2', '', '{\"id\":\"2\"}', '1', '1551196134.643');
INSERT INTO `yy_admin_log` VALUES ('559', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=3', '', '{\"id\":\"3\"}', '1', '1551196136.019');
INSERT INTO `yy_admin_log` VALUES ('560', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=4', '', '{\"id\":\"4\"}', '1', '1551196137.417');
INSERT INTO `yy_admin_log` VALUES ('561', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=5', '', '{\"id\":\"5\"}', '1', '1551196138.820');
INSERT INTO `yy_admin_log` VALUES ('562', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551196143.881');
INSERT INTO `yy_admin_log` VALUES ('563', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551196143.915');
INSERT INTO `yy_admin_log` VALUES ('564', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551196143.922');
INSERT INTO `yy_admin_log` VALUES ('565', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196144.503');
INSERT INTO `yy_admin_log` VALUES ('566', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196144.503');
INSERT INTO `yy_admin_log` VALUES ('567', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196144.503');
INSERT INTO `yy_admin_log` VALUES ('568', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196144.541');
INSERT INTO `yy_admin_log` VALUES ('569', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"name\":\"\\/system\\/logs\",\"status\":true,\"menu\":\"0\",\"pid\":27}', '1', '1551196194.699');
INSERT INTO `yy_admin_log` VALUES ('570', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"name\":\"\\/system\\/logsmanage\",\"status\":true,\"menu\":\"0\",\"pid\":27}', '1', '1551196262.818');
INSERT INTO `yy_admin_log` VALUES ('571', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196262.984');
INSERT INTO `yy_admin_log` VALUES ('572', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196262.989');
INSERT INTO `yy_admin_log` VALUES ('573', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551196275.009');
INSERT INTO `yy_admin_log` VALUES ('574', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=28', '', '{\"id\":\"28\"}', '1', '1551196277.703');
INSERT INTO `yy_admin_log` VALUES ('575', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":28,\"name\":\"\\/system\\/logsmanage\",\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"pid\":27,\"remark\":null,\"icon\":\"<i class=\\\"fa fa-sticky-note-o\\\"><\\/i>\",\"sort\":\"1\",\"deleted\":0}', '1', '1551196314.366');
INSERT INTO `yy_admin_log` VALUES ('576', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196314.518');
INSERT INTO `yy_admin_log` VALUES ('577', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196314.559');
INSERT INTO `yy_admin_log` VALUES ('578', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=6', '', '{\"id\":\"6\"}', '1', '1551196319.867');
INSERT INTO `yy_admin_log` VALUES ('579', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":6,\"name\":\"\\/system\\/logs\",\"title\":\"\\u65e5\\u5fd7\\u5217\\u8868\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"pid\":28,\"remark\":null,\"icon\":null,\"sort\":null,\"deleted\":0}', '1', '1551196332.576');
INSERT INTO `yy_admin_log` VALUES ('580', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196332.727');
INSERT INTO `yy_admin_log` VALUES ('581', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196332.734');
INSERT INTO `yy_admin_log` VALUES ('582', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196343.823');
INSERT INTO `yy_admin_log` VALUES ('583', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196343.826');
INSERT INTO `yy_admin_log` VALUES ('584', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196343.835');
INSERT INTO `yy_admin_log` VALUES ('585', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196343.874');
INSERT INTO `yy_admin_log` VALUES ('586', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196351.856');
INSERT INTO `yy_admin_log` VALUES ('587', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196351.857');
INSERT INTO `yy_admin_log` VALUES ('588', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196351.859');
INSERT INTO `yy_admin_log` VALUES ('589', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196351.871');
INSERT INTO `yy_admin_log` VALUES ('590', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551196369.019');
INSERT INTO `yy_admin_log` VALUES ('591', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=27', '', '{\"id\":\"27\"}', '1', '1551196374.459');
INSERT INTO `yy_admin_log` VALUES ('592', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=28', '', '{\"id\":\"28\"}', '1', '1551196376.089');
INSERT INTO `yy_admin_log` VALUES ('593', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551196380.116');
INSERT INTO `yy_admin_log` VALUES ('594', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551196382.817');
INSERT INTO `yy_admin_log` VALUES ('595', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551196386.832');
INSERT INTO `yy_admin_log` VALUES ('596', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=27', '', '{\"id\":\"27\"}', '1', '1551196390.700');
INSERT INTO `yy_admin_log` VALUES ('597', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":27,\"name\":\"\\/log\",\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"remark\":null,\"icon\":\"<i class=\\\"fa fa-sticky-note-o\\\"><\\/i>\",\"sort\":5,\"deleted\":0}', '1', '1551196399.444');
INSERT INTO `yy_admin_log` VALUES ('598', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196399.606');
INSERT INTO `yy_admin_log` VALUES ('599', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196399.641');
INSERT INTO `yy_admin_log` VALUES ('600', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196414.736');
INSERT INTO `yy_admin_log` VALUES ('601', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196414.736');
INSERT INTO `yy_admin_log` VALUES ('602', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196414.735');
INSERT INTO `yy_admin_log` VALUES ('603', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196414.738');
INSERT INTO `yy_admin_log` VALUES ('604', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/28-6\"}', '1', '1551196419.981');
INSERT INTO `yy_admin_log` VALUES ('605', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551196420.012');
INSERT INTO `yy_admin_log` VALUES ('606', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551196420.036');
INSERT INTO `yy_admin_log` VALUES ('607', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551196437.033');
INSERT INTO `yy_admin_log` VALUES ('608', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551196437.069');
INSERT INTO `yy_admin_log` VALUES ('609', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-3\"}', '1', '1551196482.011');
INSERT INTO `yy_admin_log` VALUES ('610', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551196482.059');
INSERT INTO `yy_admin_log` VALUES ('611', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551196482.085');
INSERT INTO `yy_admin_log` VALUES ('612', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551196482.115');
INSERT INTO `yy_admin_log` VALUES ('613', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551196483.400');
INSERT INTO `yy_admin_log` VALUES ('614', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551196483.425');
INSERT INTO `yy_admin_log` VALUES ('615', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551196483.433');
INSERT INTO `yy_admin_log` VALUES ('616', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551196483.433');
INSERT INTO `yy_admin_log` VALUES ('617', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196484.359');
INSERT INTO `yy_admin_log` VALUES ('618', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196484.365');
INSERT INTO `yy_admin_log` VALUES ('619', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196484.365');
INSERT INTO `yy_admin_log` VALUES ('620', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196484.365');
INSERT INTO `yy_admin_log` VALUES ('621', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551196485.873');
INSERT INTO `yy_admin_log` VALUES ('622', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551196485.873');
INSERT INTO `yy_admin_log` VALUES ('623', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551196485.876');
INSERT INTO `yy_admin_log` VALUES ('624', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/admin\"}', '1', '1551196486.497');
INSERT INTO `yy_admin_log` VALUES ('625', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list?status=1', '', '{\"status\":\"1\"}', '1', '1551196486.503');
INSERT INTO `yy_admin_log` VALUES ('626', '1', 'god', '127.0.0.1', '/api/system/admin/list', '/api/system/admin/list?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551196486.503');
INSERT INTO `yy_admin_log` VALUES ('627', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196533.909');
INSERT INTO `yy_admin_log` VALUES ('628', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196533.914');
INSERT INTO `yy_admin_log` VALUES ('629', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196533.923');
INSERT INTO `yy_admin_log` VALUES ('630', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196533.954');
INSERT INTO `yy_admin_log` VALUES ('631', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551196537.992');
INSERT INTO `yy_admin_log` VALUES ('632', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/logs\"}', '1', '1551196563.368');
INSERT INTO `yy_admin_log` VALUES ('633', '1', 'god', '127.0.0.1', '/api/system/admin/loglist', '/api/system/admin/loglist?page=1&pageSize=20', '', '{\"page\":\"1\",\"pageSize\":\"20\"}', '1', '1551196563.386');
INSERT INTO `yy_admin_log` VALUES ('634', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196605.936');
INSERT INTO `yy_admin_log` VALUES ('635', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196605.942');
INSERT INTO `yy_admin_log` VALUES ('636', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196605.978');
INSERT INTO `yy_admin_log` VALUES ('637', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196605.981');
INSERT INTO `yy_admin_log` VALUES ('638', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=5', '', '{\"id\":\"5\"}', '1', '1551196693.265');
INSERT INTO `yy_admin_log` VALUES ('639', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551196695.240');
INSERT INTO `yy_admin_log` VALUES ('640', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u5ba2\\u6237\\u7ba1\\u7406\",\"name\":\"\\/user\",\"status\":true,\"menu\":\"1\",\"icon\":\"<i class=\\\"fa fa-users\\\"><\\/i>\",\"sort\":\"2\"}', '1', '1551196726.485');
INSERT INTO `yy_admin_log` VALUES ('641', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196726.637');
INSERT INTO `yy_admin_log` VALUES ('642', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196726.677');
INSERT INTO `yy_admin_log` VALUES ('643', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196733.923');
INSERT INTO `yy_admin_log` VALUES ('644', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196733.932');
INSERT INTO `yy_admin_log` VALUES ('645', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196733.959');
INSERT INTO `yy_admin_log` VALUES ('646', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196733.971');
INSERT INTO `yy_admin_log` VALUES ('647', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551196745.807');
INSERT INTO `yy_admin_log` VALUES ('648', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":1,\"name\":\"\\/system\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"remark\":null,\"icon\":\"<i class=\\\"fa fa-gear\\\"><\\/i>\",\"sort\":\"3\",\"deleted\":0}', '1', '1551196749.452');
INSERT INTO `yy_admin_log` VALUES ('649', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196749.619');
INSERT INTO `yy_admin_log` VALUES ('650', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196749.619');
INSERT INTO `yy_admin_log` VALUES ('651', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=22', '', '{\"id\":\"22\"}', '1', '1551196765.332');
INSERT INTO `yy_admin_log` VALUES ('652', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551196787.166');
INSERT INTO `yy_admin_log` VALUES ('653', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":1,\"name\":\"\\/system\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"remark\":null,\"icon\":\"<i class=\\\"fa fa-gear\\\"><\\/i>\",\"sort\":3,\"deleted\":0}', '1', '1551196800.766');
INSERT INTO `yy_admin_log` VALUES ('654', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196800.931');
INSERT INTO `yy_admin_log` VALUES ('655', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196800.931');
INSERT INTO `yy_admin_log` VALUES ('656', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551196803.219');
INSERT INTO `yy_admin_log` VALUES ('657', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":21,\"name\":\"\\/system\\/setting\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"pid\":1,\"remark\":\"\\u66f4\\u65b0\",\"icon\":\"<i class=\\\"fa fa-gear\\\"><\\/i>\",\"sort\":null,\"deleted\":0}', '1', '1551196806.760');
INSERT INTO `yy_admin_log` VALUES ('658', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196806.921');
INSERT INTO `yy_admin_log` VALUES ('659', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196806.923');
INSERT INTO `yy_admin_log` VALUES ('660', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=27', '', '{\"id\":\"27\"}', '1', '1551196820.320');
INSERT INTO `yy_admin_log` VALUES ('661', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":27,\"name\":\"\\/log\",\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"remark\":null,\"icon\":\"<i class=\\\"fa fa-sticky-note-o\\\"><\\/i>\",\"sort\":\"4\",\"deleted\":0}', '1', '1551196823.426');
INSERT INTO `yy_admin_log` VALUES ('662', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196823.541');
INSERT INTO `yy_admin_log` VALUES ('663', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196823.540');
INSERT INTO `yy_admin_log` VALUES ('664', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/21-4\"}', '1', '1551196833.015');
INSERT INTO `yy_admin_log` VALUES ('665', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551196833.030');
INSERT INTO `yy_admin_log` VALUES ('666', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551196833.053');
INSERT INTO `yy_admin_log` VALUES ('667', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551196833.073');
INSERT INTO `yy_admin_log` VALUES ('668', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551196833.611');
INSERT INTO `yy_admin_log` VALUES ('669', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196833.616');
INSERT INTO `yy_admin_log` VALUES ('670', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551196833.619');
INSERT INTO `yy_admin_log` VALUES ('671', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196833.624');
INSERT INTO `yy_admin_log` VALUES ('672', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u8d44\\u91d1\\u6a21\\u5757\",\"name\":\"\\/price\",\"status\":true,\"menu\":\"1\",\"icon\":\"<i class=\\\"fa fa-leaf\\\"><\\/i>\",\"sort\":\"5\"}', '1', '1551196999.178');
INSERT INTO `yy_admin_log` VALUES ('673', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551196999.338');
INSERT INTO `yy_admin_log` VALUES ('674', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551196999.364');
INSERT INTO `yy_admin_log` VALUES ('675', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551197012.252');
INSERT INTO `yy_admin_log` VALUES ('676', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551197012.254');
INSERT INTO `yy_admin_log` VALUES ('677', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551197012.293');
INSERT INTO `yy_admin_log` VALUES ('678', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197012.711');
INSERT INTO `yy_admin_log` VALUES ('679', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551197012.713');
INSERT INTO `yy_admin_log` VALUES ('680', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551197012.718');
INSERT INTO `yy_admin_log` VALUES ('681', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197012.763');
INSERT INTO `yy_admin_log` VALUES ('682', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u6587\\u4ef6\\u7ba1\\u7406\",\"name\":\"\\/files\",\"status\":true,\"menu\":\"1\",\"icon\":\"<i class=\\\"fa fa-file-excel-o\\\"><\\/i>\"}', '1', '1551197159.899');
INSERT INTO `yy_admin_log` VALUES ('683', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197160.060');
INSERT INTO `yy_admin_log` VALUES ('684', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197160.098');
INSERT INTO `yy_admin_log` VALUES ('685', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u6587\\u4ef6\\u7ba1\\u7406\",\"name\":\"\\/files\",\"status\":true,\"menu\":\"1\",\"icon\":\"<i class=\\\"fa fa-file-excel-o\\\"><\\/i>\",\"sort\":\"6\"}', '1', '1551197170.255');
INSERT INTO `yy_admin_log` VALUES ('686', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=31', '', '{\"id\":\"31\"}', '1', '1551197177.845');
INSERT INTO `yy_admin_log` VALUES ('687', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"id\":31,\"name\":\"\\/files\",\"title\":\"\\u6587\\u4ef6\\u7ba1\\u7406\",\"type\":1,\"status\":true,\"menu\":\"1\",\"condition\":null,\"remark\":null,\"icon\":\"<i class=\\\"fa fa-file-excel-o\\\"><\\/i>\",\"sort\":\"6\",\"deleted\":0}', '1', '1551197181.231');
INSERT INTO `yy_admin_log` VALUES ('688', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197181.394');
INSERT INTO `yy_admin_log` VALUES ('689', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197181.402');
INSERT INTO `yy_admin_log` VALUES ('690', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551197199.321');
INSERT INTO `yy_admin_log` VALUES ('691', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551197200.116');
INSERT INTO `yy_admin_log` VALUES ('692', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551197200.123');
INSERT INTO `yy_admin_log` VALUES ('693', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551197200.157');
INSERT INTO `yy_admin_log` VALUES ('694', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197200.753');
INSERT INTO `yy_admin_log` VALUES ('695', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551197200.760');
INSERT INTO `yy_admin_log` VALUES ('696', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551197200.760');
INSERT INTO `yy_admin_log` VALUES ('697', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197200.809');
INSERT INTO `yy_admin_log` VALUES ('698', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u6587\\u4ef6\\u7ba1\\u7406\",\"name\":\"\\/files\\/manage\",\"status\":true,\"menu\":\"1\",\"icon\":\"<i class=\\\"fa fa-file-excel-o\\\"><\\/i>\",\"sort\":\"1\",\"pid\":31}', '1', '1551197258.037');
INSERT INTO `yy_admin_log` VALUES ('699', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197258.200');
INSERT INTO `yy_admin_log` VALUES ('700', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197258.203');
INSERT INTO `yy_admin_log` VALUES ('701', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=30', '', '{\"id\":\"30\"}', '1', '1551197265.173');
INSERT INTO `yy_admin_log` VALUES ('702', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551197274.519');
INSERT INTO `yy_admin_log` VALUES ('703', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551197274.519');
INSERT INTO `yy_admin_log` VALUES ('704', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551197274.532');
INSERT INTO `yy_admin_log` VALUES ('705', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197274.992');
INSERT INTO `yy_admin_log` VALUES ('706', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551197274.995');
INSERT INTO `yy_admin_log` VALUES ('707', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551197274.997');
INSERT INTO `yy_admin_log` VALUES ('708', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197274.999');
INSERT INTO `yy_admin_log` VALUES ('709', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u8d44\\u91d1\\u7ba1\\u7406\",\"name\":\"\\/price\\/manage\",\"status\":true,\"menu\":\"1\",\"icon\":\"<i class=\\\"fa fa-leaf\\\"><\\/i>\",\"pid\":30,\"sort\":\"1\"}', '1', '1551197312.568');
INSERT INTO `yy_admin_log` VALUES ('710', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197312.737');
INSERT INTO `yy_admin_log` VALUES ('711', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197312.737');
INSERT INTO `yy_admin_log` VALUES ('712', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551197315.291');
INSERT INTO `yy_admin_log` VALUES ('713', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551197315.294');
INSERT INTO `yy_admin_log` VALUES ('714', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551197315.329');
INSERT INTO `yy_admin_log` VALUES ('715', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197315.947');
INSERT INTO `yy_admin_log` VALUES ('716', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197315.947');
INSERT INTO `yy_admin_log` VALUES ('717', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551197315.959');
INSERT INTO `yy_admin_log` VALUES ('718', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551197315.958');
INSERT INTO `yy_admin_log` VALUES ('719', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=29', '', '{\"id\":\"29\"}', '1', '1551197338.907');
INSERT INTO `yy_admin_log` VALUES ('720', '1', 'god', '127.0.0.1', '/api/system/group/list', '/api/system/group/list', '', '[]', '1', '1551197343.629');
INSERT INTO `yy_admin_log` VALUES ('721', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/group\"}', '1', '1551197343.633');
INSERT INTO `yy_admin_log` VALUES ('722', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?status=1', '', '{\"status\":\"1\"}', '1', '1551197343.640');
INSERT INTO `yy_admin_log` VALUES ('723', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197344.073');
INSERT INTO `yy_admin_log` VALUES ('724', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551197344.076');
INSERT INTO `yy_admin_log` VALUES ('725', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551197344.084');
INSERT INTO `yy_admin_log` VALUES ('726', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197344.131');
INSERT INTO `yy_admin_log` VALUES ('727', '1', 'god', '127.0.0.1', '/api/system/rule/save', '/api/system/rule/save', '', '{\"title\":\"\\u5ba2\\u6237\\u7ba1\\u7406\",\"name\":\"\\/user\\/manage\",\"status\":true,\"menu\":\"1\",\"icon\":\"<i class=\\\"fa fa-users\\\"><\\/i>\",\"pid\":29,\"sort\":\"1\"}', '1', '1551197375.720');
INSERT INTO `yy_admin_log` VALUES ('728', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197375.883');
INSERT INTO `yy_admin_log` VALUES ('729', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197375.883');
INSERT INTO `yy_admin_log` VALUES ('730', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=29', '', '{\"id\":\"29\"}', '1', '1551197379.688');
INSERT INTO `yy_admin_log` VALUES ('731', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551197383.591');
INSERT INTO `yy_admin_log` VALUES ('732', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551197385.452');
INSERT INTO `yy_admin_log` VALUES ('733', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=2', '', '{\"id\":\"2\"}', '1', '1551197387.146');
INSERT INTO `yy_admin_log` VALUES ('734', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=21', '', '{\"id\":\"21\"}', '1', '1551197392.666');
INSERT INTO `yy_admin_log` VALUES ('735', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=1', '', '{\"id\":\"1\"}', '1', '1551197393.623');
INSERT INTO `yy_admin_log` VALUES ('736', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551197411.616');
INSERT INTO `yy_admin_log` VALUES ('737', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551197411.622');
INSERT INTO `yy_admin_log` VALUES ('738', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197411.623');
INSERT INTO `yy_admin_log` VALUES ('739', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197411.641');
INSERT INTO `yy_admin_log` VALUES ('740', '1', 'god', '127.0.0.1', '/api/get/path/info', '/api/get/path/info', '', '{\"path\":\"\\/system\\/rule\"}', '1', '1551197440.605');
INSERT INTO `yy_admin_log` VALUES ('741', '1', 'god', '127.0.0.1', '/api/system/rule/routes', '/api/system/rule/routes', '', '[]', '1', '1551197440.617');
INSERT INTO `yy_admin_log` VALUES ('742', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list?menu=1&status=1', '', '{\"menu\":\"1\",\"status\":\"1\"}', '1', '1551197440.652');
INSERT INTO `yy_admin_log` VALUES ('743', '1', 'god', '127.0.0.1', '/api/system/rule/list', '/api/system/rule/list', '', '[]', '1', '1551197440.667');
INSERT INTO `yy_admin_log` VALUES ('744', '1', 'god', '127.0.0.1', '/api/system/rule/get', '/api/system/rule/get?id=25', '', '{\"id\":\"25\"}', '1', '1551197446.290');

-- ----------------------------
-- Table structure for `yy_auth_admin`
-- ----------------------------
DROP TABLE IF EXISTS `yy_auth_admin`;
CREATE TABLE `yy_auth_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(128) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT '密码',
  `realname` varchar(100) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `avatar` varchar(200) DEFAULT '' COMMENT '用户头像',
  `mobile` varchar(32) DEFAULT '' COMMENT '手机号',
  `email` varchar(100) DEFAULT '' COMMENT '电子邮箱',
  `dingtalk_id` varchar(200) DEFAULT '' COMMENT '钉钉ID',
  `dingtalk_globalid` varchar(200) DEFAULT '' COMMENT '钉钉全局ID',
  `last_login` decimal(16,3) unsigned DEFAULT '0.000' COMMENT '最后登录时间',
  `last_ip` varchar(32) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `try_time` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '密码尝试次数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '账号状态 1:正常 2:禁止登陆',
  `create_time` decimal(16,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '数据插入时间',
  `position` varchar(60) DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='运营后台用户列表';

-- ----------------------------
-- Records of yy_auth_admin
-- ----------------------------
INSERT INTO `yy_auth_admin` VALUES ('1', 'god', '$2y$12$wNn2NqR0kIXdG4H0/WJrf.NfS8csPHGC1xUGO0KDTYe.zKlqkbxMy', 'SuperAdmin', '/storage/avatars/BUmMi7tUldj9A96F8aUbNktkFCxX8hwDSjjB9TjH.jpeg', '1588899999', 'yxxxx@qq.com', '3527594120810015', '', '1551197411.213', '127.0.0.1', '0', '1', '0.000', '开发工程师');
INSERT INTO `yy_auth_admin` VALUES ('2', 'test', '$2y$12$23bjKmox2SuRsEQQxp4YcOGx.3nHo6vEvX2yjBYTNs84buy8.I42O', '测试号', '/storage/avatars/xL35yynYjcCmQdhGDqjqwEnwPGFASjGCp35RNbBE.jpeg', null, null, '', '', '1542794629.706', '192.168.126.1', '0', '1', '1541734248.958', null);

-- ----------------------------
-- Table structure for `yy_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `yy_auth_group`;
CREATE TABLE `yy_auth_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '组名称',
  `rules` text NOT NULL COMMENT '权限列表',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='组列表';

-- ----------------------------
-- Records of yy_auth_group
-- ----------------------------
INSERT INTO `yy_auth_group` VALUES ('1', '上帝组', '1,2,3,4,5,6', '1');
INSERT INTO `yy_auth_group` VALUES ('2', '高级管理员', '1,21,2,16,17,18,19,3,13,15,4,7,8,5,9,10,11,12', '1');

-- ----------------------------
-- Table structure for `yy_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `yy_auth_group_access`;
CREATE TABLE `yy_auth_group_access` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `group_id` int(11) unsigned NOT NULL COMMENT '所属组',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户所属组';

-- ----------------------------
-- Records of yy_auth_group_access
-- ----------------------------
INSERT INTO `yy_auth_group_access` VALUES ('1', '1');
INSERT INTO `yy_auth_group_access` VALUES ('2', '2');
INSERT INTO `yy_auth_group_access` VALUES ('80', '2');

-- ----------------------------
-- Table structure for `yy_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `yy_auth_rule`;
CREATE TABLE `yy_auth_rule` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '权限点',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1 启用; 0 禁用',
  `menu` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1 作为菜单显示; 0 不显示',
  `condition` varchar(255) DEFAULT '',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `icon` varchar(100) DEFAULT '' COMMENT '菜单的图标',
  `sort` int(6) DEFAULT NULL COMMENT '菜单排序',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='权限点和菜单列表';

-- ----------------------------
-- Records of yy_auth_rule
-- ----------------------------
INSERT INTO `yy_auth_rule` VALUES ('1', '/system', '用户管理', '1', '1', '1', null, '0', null, '<i class=\"fa fa-gear\"></i>', '3', '0');
INSERT INTO `yy_auth_rule` VALUES ('2', '/system/profile', '个人设置', '1', '1', '1', '', '21', '', null, null, '0');
INSERT INTO `yy_auth_rule` VALUES ('3', '/system/admin', '管理员列表', '1', '1', '1', '', '21', '', null, null, '0');
INSERT INTO `yy_auth_rule` VALUES ('4', '/system/group', '管理组列表', '1', '1', '1', '', '21', '', null, null, '0');
INSERT INTO `yy_auth_rule` VALUES ('5', '/system/rule', '权限点管理', '1', '1', '1', '', '21', '', null, null, '0');
INSERT INTO `yy_auth_rule` VALUES ('6', '/system/logs', '日志列表', '1', '1', '1', null, '28', null, null, null, '0');
INSERT INTO `yy_auth_rule` VALUES ('7', 'api/system/group/list', '获取管理组列表接口', '1', '1', '0', '', '4', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('8', 'api/system/group/save', '新增或更新管理组接口', '1', '1', '0', '', '4', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('9', 'api/system/rule/list', '获取权限列表', '1', '1', '0', '', '5', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('10', 'api/system/rule/routes', '获取路由列表', '1', '1', '0', '', '5', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('11', 'api/system/rule/save', '添加或保存权限', '1', '1', '0', '', '5', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('12', 'api/system/rule/get', '获取权限详情', '1', '1', '0', '', '5', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('13', 'api/system/admin/list', '获取管理员列表', '1', '1', '0', '', '3', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('14', 'api/system/admin/loglist', '获取管理员日志列表', '1', '1', '0', null, '6', null, null, null, '0');
INSERT INTO `yy_auth_rule` VALUES ('15', 'api/system/admin/save', '新增或更新管理员', '1', '1', '0', '', '3', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('16', 'api/system/admin/avatar/upload', '上传管理员头象', '1', '1', '0', '', '2', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('17', 'api/system/admin/avatar/save', '更新管理员头象', '1', '1', '0', '', '2', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('18', 'api/system/admin/profile/get', '获取管理员信息', '1', '1', '0', '', '2', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('19', 'api/system/admin/password/change', '更新个人密码', '1', '1', '0', '', '2', '', '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('20', 'api/test', '测试接口', '1', '1', '0', null, '2', null, null, null, '0');
INSERT INTO `yy_auth_rule` VALUES ('21', '/system/setting', '用户管理', '1', '1', '1', null, '1', '更新', '<i class=\"fa fa-gear\"></i>', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('22', '/order', '订单管理', '1', '1', '1', null, '0', null, null, '1', '0');
INSERT INTO `yy_auth_rule` VALUES ('23', 'api/test2', '测试2', '1', '1', '0', '', '0', null, '', null, '1');
INSERT INTO `yy_auth_rule` VALUES ('24', 'api/system/rule/delete', '删除权限点', '1', '1', '0', '', '5', null, '', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('25', 'order/list', '处理中心', '1', '1', '1', '', '22', null, '<i class=\"fa fa-area-chart\"></i>', null, '0');
INSERT INTO `yy_auth_rule` VALUES ('26', 'test1', '已支付订单', '1', '1', '1', null, '25', null, null, null, '0');
INSERT INTO `yy_auth_rule` VALUES ('27', '/log', '日志管理', '1', '1', '1', null, '0', null, '<i class=\"fa fa-sticky-note-o\"></i>', '4', '0');
INSERT INTO `yy_auth_rule` VALUES ('28', '/system/logsmanage', '日志管理', '1', '1', '1', null, '27', null, '<i class=\"fa fa-sticky-note-o\"></i>', '1', '0');
INSERT INTO `yy_auth_rule` VALUES ('29', '/user', '客户管理', '1', '1', '1', '', '0', null, '<i class=\"fa fa-users\"></i>', '2', '0');
INSERT INTO `yy_auth_rule` VALUES ('30', '/price', '资金模块', '1', '1', '1', '', '0', null, '<i class=\"fa fa-leaf\"></i>', '5', '0');
INSERT INTO `yy_auth_rule` VALUES ('31', '/files', '文件管理', '1', '1', '1', null, '0', null, '<i class=\"fa fa-file-excel-o\"></i>', '6', '0');
INSERT INTO `yy_auth_rule` VALUES ('32', '/files/manage', '文件管理', '1', '1', '1', '', '31', null, '<i class=\"fa fa-file-excel-o\"></i>', '1', '0');
INSERT INTO `yy_auth_rule` VALUES ('33', '/price/manage', '资金管理', '1', '1', '1', '', '30', null, '<i class=\"fa fa-leaf\"></i>', '1', '0');
INSERT INTO `yy_auth_rule` VALUES ('34', '/user/manage', '客户管理', '1', '1', '1', '', '29', null, '<i class=\"fa fa-users\"></i>', '1', '0');
