/*
Navicat MySQL Data Transfer

Source Server         : Zt
Source Server Version : 50717
Source Host           : 113.106.87.19:3306
Source Database       : hksh

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-08 16:21:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hk_texts
-- ----------------------------
DROP TABLE IF EXISTS `hk_texts`;
CREATE TABLE `hk_texts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `text` longtext NOT NULL,
  `page` smallint(6) NOT NULL DEFAULT '0',
  `outid` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `itemid_2` (`itemid`,`page`),
  KEY `outid` (`outid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hk_texts
-- ----------------------------
INSERT INTO `hk_texts` VALUES ('1', '1', '', '唐寅（1470年3月6日-1524年1月7日）生于成化六年二月初四，卒于嘉靖二年十二月二日，字伯虎，后改字子畏，号六如居士、桃花庵主、鲁国唐生、逃禅仙吏等，明代画家、书法家、诗人。三十岁时进京会试，涉会试泄题案而被革黜，妻子改嫁，一生坎坷。后游历名山大川，以卖文鬻画闻名天下。诗文上，与祝允明、文徵明、徐祯卿并称“吴中四才子”。绘画上与沈周、文徵明、仇英并称“吴门四家”，又称“明四家”。', '0', '');
INSERT INTO `hk_texts` VALUES ('2', '2', '', '<div class=\"para\" label-module=\"para\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">原名纯芝，字渭青，号<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%85%B0%E4%BA%AD\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">兰亭</a>。后改名璜，字濒生，号白石、白石山翁、老萍、饿叟、借山吟馆主者、寄萍堂上老人、三百石印富翁。</div><div class=\"para\" label-module=\"para\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">是近现代中国绘画大师，世界文化名人。早年曾为木工，后以卖画为生，五十七岁后定居北京。擅画花鸟、虫鱼、山水、人物，笔墨雄浑滋润，色彩<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E6%B5%93%E8%89%B3\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">浓艳</a>明快，造型<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%AE%80%E7%BB%83\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">简练</a>生动，意境淳厚<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E6%9C%B4%E5%AE%9E\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">朴实</a>。所作鱼虾虫蟹，天趣横生。</div><div class=\"para\" label-module=\"para\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">齐白石书工篆隶，取法于秦汉碑版，行书饶古拙之趣，篆刻自成一家，善写诗文。曾任<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E4%B8%AD%E5%A4%AE%E7%BE%8E%E6%9C%AF%E5%AD%A6%E9%99%A2\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">中央美术学院</a>名誉教授、<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E4%B8%AD%E5%9B%BD%E7%BE%8E%E6%9C%AF%E5%AE%B6%E5%8D%8F%E4%BC%9A\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">中国美术家协会</a>主席等职。代表作有《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E8%9B%99%E5%A3%B0%E5%8D%81%E9%87%8C%E5%87%BA%E5%B1%B1%E6%B3%89\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">蛙声十里出山泉</a>》《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%A2%A8%E8%99%BE\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">墨虾</a>》等。著有《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%99%BD%E7%9F%B3%E8%AF%97%E8%8D%89\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">白石诗草</a>》《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E7%99%BD%E7%9F%B3%E8%80%81%E4%BA%BA%E8%87%AA%E8%BF%B0\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">白石老人自述</a>》等。</div>', '0', '');
INSERT INTO `hk_texts` VALUES ('3', '3', '', '<div class=\"para\" label-module=\"para\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">吴冠中（1919—2010），江苏宜兴人，当代著名画家、油画家、美术教育家。油画代表作有《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E9%95%BF%E6%B1%9F%E4%B8%89%E5%B3%A1\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">长江三峡</a>》、《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%8C%97%E5%9B%BD%E9%A3%8E%E5%85%89\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">北国风光</a>》、《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%B0%8F%E9%B8%9F%E5%A4%A9%E5%A0%82\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">小鸟天堂</a>》、《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E9%BB%84%E5%B1%B1%E6%9D%BE\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">黄山松</a>》、《<a target=\"_blank\" href=\"http://baike.baidu.com/item/%E9%B2%81%E8%BF%85\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">鲁迅</a>的故乡》等。个人文集有《吴冠中谈艺集》《吴冠中散文选》《美丑缘》等十余种。</div><div class=\"para\" label-module=\"para\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif;\">2010年6月25日23时57分，吴冠中先生因病医治无效，在北京医院逝世，享年91岁。</div>', '0', '');
INSERT INTO `hk_texts` VALUES ('4', '4', '', '克劳德·莫奈（Claude Monet，1840年11月14日－1926年12月5日），法国画家，被誉为“印象派领导者”，是印象派代表人物和创始人之一。\r\n莫奈是法国最重要的画家之一，印象派的理论和实践大部分都有他的推广。莫奈擅长光与影的实验与表现技法。他最重要的风格是改变了阴影和轮廓线的画法，在莫奈的画作中看不到非常明确的阴影，也看不到突显或平涂式的轮廓线。光和影的色彩描绘是莫奈绘画的最大特色。', '0', '');
INSERT INTO `hk_texts` VALUES ('5', '5', '', '文森特·威廉·梵·高(Vincent Willem van Gogh，1853-1890)，中文又称\"凡高\"，荷兰后印象派画家。出生于新教牧师家庭，是后印象主义的先驱，并深深地影响了二十世纪艺术，尤其是野兽派与表现主义。作品受法国现实主义画家米勒的影响。\r\n梵·高早期以灰暗色系进行创作，直到他在巴黎遇见了印象派与新印象派，融入了他们的鲜艳色彩与画风，创造了他独特的个人画风。他最著名的作品多半是他在生前最后两年创作的，期间梵高深陷精神疾病中，最后在他37岁那年将他导向自杀一途。\r\n在梵高去世之后，梵高的作品，《星夜》、《向日葵》与《有乌鸦的麦田》等，已跻身于全球最著名最珍贵的艺术作品的行列。 梵高的作品目前主要收纳在法国的奥赛美术馆，以及苏黎世的kunshaus美术馆。', '0', '');
INSERT INTO `hk_texts` VALUES ('6', '6', '', '王羲之（303年—361年，一作321年—379年），字逸少，汉族，东晋时期著名书法家，有“书圣”之称。琅琊（今属山东临沂）人，后迁会稽山阴（今浙江绍兴），晚年隐居剡县金庭。历任秘书郞、宁远将军、江州刺史，后为会稽内史，领右将军。其书法兼善隶、草、楷、行各体，精研体势，心摹手追，广采众长，备精诸体，冶于一炉，摆脱了汉魏笔风，自成一家，影响深远。风格平和自然，笔势委婉含蓄，遒美健秀。代表作《兰亭序》被誉为“天下第一行书”。在书法史上，他与其子王献之合称为“二王”。', '0', '');
INSERT INTO `hk_texts` VALUES ('7', '7', '', '张旭（675年～约750年），字伯高，一字季明，汉族，唐朝吴县（今江苏苏州）人，开元、天宝时在世，曾任常熟县尉，金吾长史。\r\n以草书著名，与李白诗歌，裴旻剑舞，称为【三绝】。诗亦别具一格，以七绝见长，与李白、贺知章等人共列饮中八仙之一。与贺知章、张若虚、包融号称“吴中四士”。书法与怀素齐名。\r\n性好酒，据《旧唐书》的记载，每醉后号呼狂走，索笔挥洒，时称张颠。实也说明他对艺术爱好热狂度，被后世尊称为“草圣”。', '0', '');
INSERT INTO `hk_texts` VALUES ('10', '10', '', '文征明（1470.11.28—1559.3.28），原名壁（或作璧），字征明。四十二岁起，以字行，更字徵仲。因先世衡山人，故号“衡山居士”，世称“文衡山”，汉族，长州（今江苏苏州）人，明代画家、书法家、文学家。因官至翰林待诏，私谥贞献先生，故称“文待诏”、“文贞献”。为人谦和而耿介，宁王朱宸濠因仰慕他的贤德而聘请他，文征明托病不前往。正德末年因为岁贡生荐试吏部，授翰林待诏。他不事权贵，尤不肯为藩王、中官作画，任官不久便辞官归乡。留有《甫田集》。', '0', '');
INSERT INTO `hk_texts` VALUES ('9', '9', '', '启功（1912——2005），自称“姓启名功”，[1]  字元白，也作元伯，号苑北居士，北京市满人。[2]  雍正皇帝的第九代孙。[1]  中国当代著名书画家、教育家、古典文献学家、鉴定家、红学家、诗人，国学大师。曾任北京师范大学副教授、教授，中国人民政治协商会议全国委员会常务委员、国家文物鉴定委员会主任委员、中央文史研究馆馆长、博士研究生导师、九三学社顾问、中国书法家协会名誉主席，世界华人书画家联合会创会主席，中国佛教协会、故宫博物院、国家博物馆顾问，西泠印社社长。', '0', '');
