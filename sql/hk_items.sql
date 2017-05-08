/*
Navicat MySQL Data Transfer

Source Server         : Zt
Source Server Version : 50717
Source Host           : 113.106.87.19:3306
Source Database       : hksh

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-08 15:55:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hk_items
-- ----------------------------
DROP TABLE IF EXISTS `hk_items`;
CREATE TABLE `hk_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `initial` varchar(1) NOT NULL DEFAULT '',
  `aimurl` varchar(255) NOT NULL DEFAULT '',
  `shorttitle` varchar(50) NOT NULL DEFAULT '',
  `category` smallint(6) NOT NULL DEFAULT '0',
  `section` smallint(6) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `editor` varchar(25) NOT NULL DEFAULT '',
  `source` varchar(255) NOT NULL DEFAULT '',
  `orderby` mediumint(9) NOT NULL DEFAULT '0',
  `orderby2` mediumint(9) NOT NULL DEFAULT '0',
  `orderby3` mediumint(9) NOT NULL DEFAULT '0',
  `orderby4` mediumint(9) NOT NULL DEFAULT '0',
  `dateline` int(11) NOT NULL DEFAULT '0',
  `lastupdate` int(11) NOT NULL DEFAULT '0',
  `lastreply` int(11) NOT NULL DEFAULT '0',
  `lastcomment` int(11) NOT NULL DEFAULT '0',
  `pageview` int(11) NOT NULL DEFAULT '0',
  `pv1` mediumint(9) NOT NULL DEFAULT '0',
  `pv2` mediumint(9) NOT NULL DEFAULT '0',
  `pv3` mediumint(9) NOT NULL DEFAULT '0',
  `pv4` smallint(9) NOT NULL DEFAULT '0',
  `template` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `attach` tinyint(4) NOT NULL DEFAULT '0',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `latesthtml` int(11) NOT NULL DEFAULT '0',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `digest` varchar(255) NOT NULL DEFAULT '',
  `titlecolor` varchar(7) NOT NULL DEFAULT '',
  `titlestyle` varchar(1) NOT NULL DEFAULT '',
  `commentnum` int(11) NOT NULL DEFAULT '0',
  `pagenum` smallint(9) NOT NULL DEFAULT '0',
  `scorenum` int(11) NOT NULL DEFAULT '0',
  `totalscore` int(11) NOT NULL DEFAULT '0',
  `avgscore` varchar(9) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL DEFAULT '0',
  `ext` tinyint(4) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `orderby5` tinyint(4) NOT NULL DEFAULT '0',
  `orderby6` tinyint(4) NOT NULL DEFAULT '0',
  `orderby7` tinyint(4) NOT NULL DEFAULT '0',
  `orderby8` tinyint(4) NOT NULL DEFAULT '0',
  `draft` tinyint(4) NOT NULL DEFAULT '0',
  `string1` varchar(250) NOT NULL DEFAULT '',
  `string2` varchar(250) NOT NULL DEFAULT '',
  `string3` varchar(250) NOT NULL DEFAULT '',
  `string4` varchar(250) NOT NULL DEFAULT '',
  `module` smallint(4) NOT NULL DEFAULT '0',
  `outid` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `category` (`category`,`section`,`editor`),
  KEY `dateline3` (`dateline`),
  KEY `outid` (`outid`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hk_items
-- ----------------------------
INSERT INTO `hk_items` VALUES ('1', '春树秋霜图', '', '', '', '2', '0', '唐伯虎', 'admin', '', '0', '0', '0', '0', '1490888890', '1491558907', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/04/0-2Q7WWR.jpg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
INSERT INTO `hk_items` VALUES ('2', '龙山七子图', '', '', '', '2', '0', '齐白石', 'admin', '', '0', '0', '0', '0', '1490889432', '1490889432', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/03/0-Z9si2Y.jpg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
INSERT INTO `hk_items` VALUES ('3', '水乡图', '', '', '', '2', '0', '吴冠中', 'admin', '', '0', '0', '0', '0', '1490889587', '1490889587', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/03/0-ael7Xu.jpg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
INSERT INTO `hk_items` VALUES ('4', '草地上的午餐', '', '', '', '2', '0', '克劳德·莫奈', 'admin', '', '0', '0', '0', '0', '1491557159', '1491557159', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/04/0-9VCcgF.jpeg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
INSERT INTO `hk_items` VALUES ('5', '星月夜', '', '', '', '2', '0', '梵高', 'admin', '', '0', '0', '0', '0', '1491557250', '1491557250', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/04/0-cTGQ3f.jpg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
INSERT INTO `hk_items` VALUES ('6', '兰亭集序', '', '', '', '2', '0', '王羲之', 'admin', '', '0', '0', '0', '0', '1491558209', '1491558209', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/04/0-PdM9jD.jpg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
INSERT INTO `hk_items` VALUES ('7', '心经', '', '', '', '2', '0', '张旭', 'admin', '', '0', '0', '0', '0', '1491558396', '1491558396', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/04/0-oUbYgv.jpg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
INSERT INTO `hk_items` VALUES ('10', '梅花诗', '', '', '', '2', '0', '文征明', 'admin', '', '0', '0', '0', '0', '1491911417', '1491911417', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/04/0-r3sD9Q.jpg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
INSERT INTO `hk_items` VALUES ('9', '长寿', '', '', '', '2', '0', '启功', 'admin', '', '0', '0', '0', '0', '1491910880', '1491910880', '0', '0', '0', '0', '0', '0', '0', '', '', '1', 'previews/2017/04/0-1tMS8f.jpg', '0', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '0', '0', '0', '0', '0', '', '', '', '', '1', '');
