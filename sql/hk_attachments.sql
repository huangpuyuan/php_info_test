/*
Navicat MySQL Data Transfer

Source Server         : Zt
Source Server Version : 50717
Source Host           : 113.106.87.19:3306
Source Database       : hksh

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-08 15:55:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hk_attachments
-- ----------------------------
DROP TABLE IF EXISTS `hk_attachments`;
CREATE TABLE `hk_attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `category` mediumint(9) NOT NULL DEFAULT '0',
  `section` mediumint(9) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `dateline` int(11) NOT NULL DEFAULT '0',
  `originalname` varchar(255) NOT NULL DEFAULT '',
  `orderby` mediumint(8) NOT NULL DEFAULT '0',
  `ispicture` int(11) NOT NULL DEFAULT '0',
  `ext` longtext NOT NULL,
  `fromdata` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `picture` varchar(255) NOT NULL DEFAULT '',
  `outid` varchar(32) NOT NULL DEFAULT '',
  `width` mediumint(4) NOT NULL DEFAULT '0',
  `height` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`),
  KEY `outid` (`outid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hk_attachments
-- ----------------------------
INSERT INTO `hk_attachments` VALUES ('1', '1', '0', '0', 'attaches/2017/03/gXnZkq.jpg', '32331', '', '1490888859', 'zuozhe1.jpg', '0', '1', '', '0', '', '', '', '0', '0');
INSERT INTO `hk_attachments` VALUES ('2', '2', '0', '0', 'attaches/2017/03/3XG0OG.jpg', '15007', '', '1490889406', 'zz2.jpg', '0', '1', '', '0', '', '', '', '0', '0');
INSERT INTO `hk_attachments` VALUES ('3', '3', '0', '0', 'attaches/2017/03/4s6h6y.jpg', '26463', '', '1490889534', 'zz3.jpg', '0', '1', '', '0', '', '', '', '0', '0');
INSERT INTO `hk_attachments` VALUES ('4', '4', '0', '0', 'attaches/2017/04/h9UWiw.jpg', '35560', '', '1491557136', 'monai.jpg', '0', '1', '', '0', '', '', '', '0', '0');
INSERT INTO `hk_attachments` VALUES ('5', '5', '0', '0', 'attaches/2017/04/bqYpnN.jpg', '33392', '', '1491557239', 'b151f8198618367a027b66fc27738bd4b31ce525.jpg', '0', '1', '', '0', '', '', '', '0', '0');
INSERT INTO `hk_attachments` VALUES ('6', '6', '0', '0', 'attaches/2017/04/HZVlrC.jpg', '21299', '', '1491558189', '0eb30f2442a7d9330262cc43af4bd11373f00133.jpg', '0', '1', '', '0', '', '', '', '0', '0');
INSERT INTO `hk_attachments` VALUES ('7', '7', '0', '0', 'attaches/2017/04/kFleOl.jpg', '13194', '', '1491558374', 'timg.jpg', '0', '1', '', '0', '', '', '', '0', '0');
INSERT INTO `hk_attachments` VALUES ('10', '10', '0', '0', 'attaches/2017/04/5JTSuE.jpg', '15131', '', '1491911411', 'f603918fa0ec08fa6b30d0db59ee3d6d55fbda9e.jpg', '0', '1', '', '0', '', '', '', '0', '0');
INSERT INTO `hk_attachments` VALUES ('9', '9', '0', '0', 'attaches/2017/04/svEEjf.jpg', '207923', '', '1491910850', '6609c93d70cf3bc798864f07d300baa1cc112a52.jpg', '0', '1', '', '0', '', '', '', '0', '0');
