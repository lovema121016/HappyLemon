/*
Navicat MySQL Data Transfer

Source Server         : localhost3306
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : lemon

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2019-01-07 16:03:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_number` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('5', '123', '刘美美', '13701825473', '陕西省');
INSERT INTO `customer` VALUES ('6', '124', '王云玲', '15712645238', '贵州省');
INSERT INTO `customer` VALUES ('7', '125', '杨蕾', '13726351781', '河北省邢台市');
INSERT INTO `customer` VALUES ('8', '126', '王一', '15712345637', '石家庄市');
INSERT INTO `customer` VALUES ('9', '234', '李梅', '15613155379', '河北省衡水市');
INSERT INTO `customer` VALUES ('10', '127', '朴正洙', '17548693569', '首尔市圣水洞小区');
INSERT INTO `customer` VALUES ('11', '128', '金希澈', '16359974526', '首尔市上岩洞');
INSERT INTO `customer` VALUES ('12', '129', '金钟云', '16987452368', '韩国济州岛');
INSERT INTO `customer` VALUES ('13', '130', '申东熙', '19874526396', 'suju宿舍');
INSERT INTO `customer` VALUES ('14', '131', '李赫宰', '19874563256', '首尔市圣水洞小区');
INSERT INTO `customer` VALUES ('15', '132', '李东海', '15968743625', '首尔市圣水洞小区');
INSERT INTO `customer` VALUES ('16', '133', '崔始源', '19874563286', '富人区');
INSERT INTO `customer` VALUES ('17', '134', '金厉旭', '19856347526', '恰信一搜小区');
INSERT INTO `customer` VALUES ('18', '135', '曺圭贤', '19874526368', 'suju宿舍');
INSERT INTO `customer` VALUES ('19', '136', '姜丹尼尔', '14785639254', '碗宿舍');
INSERT INTO `customer` VALUES ('20', '137', '朴灿烈', '15996347852', '一查欧宿舍');
INSERT INTO `customer` VALUES ('21', '138', '吴世勋', '15987463263', '一查欧宿舍');
INSERT INTO `customer` VALUES ('22', '139', '边伯贤', '15987456326', '一查欧宿舍');
INSERT INTO `customer` VALUES ('23', '140', '刘冠麟', '16359742683', '廊坊燕郊');
INSERT INTO `customer` VALUES ('24', '141', '赖冠霖', '15963487263', '碗宿舍');
INSERT INTO `customer` VALUES ('25', '142', '杨芸晴', '15987463416', '泰国曼谷');
INSERT INTO `customer` VALUES ('26', '143', '霉霉', '18569354267', 'LA');
INSERT INTO `customer` VALUES ('27', '145', '阿杰', '16897456325', '北京市');
INSERT INTO `customer` VALUES ('28', '146', 'Irene', '16854937526', '红毛宿舍');
INSERT INTO `customer` VALUES ('29', '147', '姜涩琪', '19854632759', '红毛宿舍');
INSERT INTO `customer` VALUES ('30', '148', '华沙', '19874563529', 'mamano宿舍');
INSERT INTO `customer` VALUES ('31', '149', '金智秀', '14596725893', 'BP宿舍');
INSERT INTO `customer` VALUES ('32', '150', '小樱花', '19635478263', '日本东京');
INSERT INTO `customer` VALUES ('33', '151', 'DAOKA', '19845263751', '日本东京');
INSERT INTO `customer` VALUES ('34', '152', 'somi', '18749622539', '首尔市');
INSERT INTO `customer` VALUES ('35', '153', '秀晶', '19856347526', 'LA');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_number` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('3', '20163587', '姚雅丽', '15613155379', '20163587');
INSERT INTO `employee` VALUES ('4', '20163446', '寇晓萌', '18603181748', '20163446');
INSERT INTO `employee` VALUES ('5', '20163480', '张迪', '15226835955', '20163480');
INSERT INTO `employee` VALUES ('6', '20163623', '王莉', '15613455379', '20163623');
INSERT INTO `employee` VALUES ('7', '20163483', '袁亚琴', '15613444379', '20163483');

-- ----------------------------
-- Table structure for get_money
-- ----------------------------
DROP TABLE IF EXISTS `get_money`;
CREATE TABLE `get_money` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `get_zhanghu` varchar(255) DEFAULT NULL,
  `get_money` varchar(255) DEFAULT NULL,
  `get_way` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `get_suppliernumber` varchar(255) DEFAULT NULL,
  `employee_number` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `get_danjuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of get_money
-- ----------------------------
INSERT INTO `get_money` VALUES ('8', 'Haru&oneday', '200', '现金', '大客户', '132', '20163480', '2019-01-04 00:00:00', '201901041HappyLemon');
INSERT INTO `get_money` VALUES ('9', 'eunhyuk0404', '600', '信用卡', '帅哥客户', '131', '20163480', '2019-01-04 00:00:00', '201901049HappyLemon');
INSERT INTO `get_money` VALUES ('10', '15613155379', '150', '支付宝', '', '124', '20163587', '2019-01-05 00:00:00', '2019010510HappyLemon');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_number` varchar(255) DEFAULT NULL,
  `good_name` varchar(255) DEFAULT NULL,
  `good_type` varchar(255) DEFAULT NULL,
  `good_unit` varchar(255) DEFAULT NULL,
  `good_price` double(11,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('4', '123', '招牌奶茶', '港式奶茶', '杯', '5');
INSERT INTO `good` VALUES ('5', '012', '蜂蜜红茶', '天然茶饮', '杯', '2');
INSERT INTO `good` VALUES ('6', '011', '蜂蜜绿茶', '天然茶饮', '杯', '2');
INSERT INTO `good` VALUES ('7', '013', '茉莉花茶', '天然茶饮', '杯', '3');
INSERT INTO `good` VALUES ('8', '015', '酸梅汤', '鲜榨果汁', '杯', '4');
INSERT INTO `good` VALUES ('9', '018', '柠檬汁', '鲜榨果汁', '杯', '3');
INSERT INTO `good` VALUES ('10', '026', '阳光甜橙', '鲜榨果汁', '杯', '5');
INSERT INTO `good` VALUES ('11', '028', '鲜榨西瓜汁', '鲜榨果汁', '杯', '6');
INSERT INTO `good` VALUES ('12', '056', '鲜榨菠萝', '鲜榨果汁', '杯', '6');
INSERT INTO `good` VALUES ('13', '031', '丝滑巧克力', '巧克力', '杯', '6');
INSERT INTO `good` VALUES ('14', '032', '纯巧克力', '巧克力', '杯', '6');
INSERT INTO `good` VALUES ('15', '033', '玫瑰巧克力', '巧克力', '杯', '7');
INSERT INTO `good` VALUES ('16', '034', '香草巧克力', '巧克力', '杯', '7');
INSERT INTO `good` VALUES ('17', '035', '蓝莓巧克力', '巧克力', '杯', '7');
INSERT INTO `good` VALUES ('18', '041', '珍珠奶茶', '港式奶茶', '杯', '6');
INSERT INTO `good` VALUES ('19', '042', '珍珠奶茶', '港式奶茶', '杯', '6');
INSERT INTO `good` VALUES ('20', '045', '红豆奶茶', '港式奶茶', '杯', '6');
INSERT INTO `good` VALUES ('21', '051', '茉莉绿茶奶盖', '奶盖系列', '杯', '6');
INSERT INTO `good` VALUES ('22', '052', '四季春茶奶盖', '奶盖系列', '杯', '6');
INSERT INTO `good` VALUES ('23', '053', '原味奶盖', '奶盖系列', '杯', '6');
INSERT INTO `good` VALUES ('24', '054', '火龙果芝士奶盖', '奶盖系列', '杯', '6');
INSERT INTO `good` VALUES ('25', '061', '港式咖啡', '咖啡系列', '杯', '8');
INSERT INTO `good` VALUES ('26', '064', '卡布奇诺', '咖啡系列', '杯', '8');
INSERT INTO `good` VALUES ('27', '062', '冰美式', '咖啡系列', '杯', '8');
INSERT INTO `good` VALUES ('28', '063', '摩卡咖啡', '咖啡系列', '杯', '8');
INSERT INTO `good` VALUES ('29', '071', '草莓炫冰', '炫冰系列', '杯', '5');
INSERT INTO `good` VALUES ('30', '072', '玫瑰炫冰', '炫冰系列', '杯', '5');
INSERT INTO `good` VALUES ('31', '073', '香草炫冰', '炫冰系列', '杯', '5');
INSERT INTO `good` VALUES ('32', '074', '蓝莓炫冰', '炫冰系列', '杯', '5');
INSERT INTO `good` VALUES ('33', '081', '牛奶布丁', '休闲甜品', '杯', '4');
INSERT INTO `good` VALUES ('34', '082', '鸡蛋布丁', '休闲甜品', '杯', '4');
INSERT INTO `good` VALUES ('35', '083', '仙草冻', '休闲甜品', '杯', '4');
INSERT INTO `good` VALUES ('36', '084', '芒果双皮奶', '休闲甜品', '杯', '5');
INSERT INTO `good` VALUES ('37', '091', '柚子柠檬气泡', '气泡水系列', '杯', '6');
INSERT INTO `good` VALUES ('38', '092', '青提柠檬气泡', '气泡水系列', '杯', '6');
INSERT INTO `good` VALUES ('39', '093', '百香果气泡', '气泡水系列', '杯', '6');
INSERT INTO `good` VALUES ('40', '094', '蓝色红柚气泡', '气泡水系列', '杯', '7');
INSERT INTO `good` VALUES ('41', '086', '草莓奶茶', '果味奶茶', '杯', '7');
INSERT INTO `good` VALUES ('43', '2011', '仙草一号', '果味奶茶', '杯', '6');

-- ----------------------------
-- Table structure for instock_order
-- ----------------------------
DROP TABLE IF EXISTS `instock_order`;
CREATE TABLE `instock_order` (
  `date` varchar(255) DEFAULT NULL,
  `danju_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instock_order
-- ----------------------------
INSERT INTO `instock_order` VALUES ('2019年1月4日', '20190104225243');
INSERT INTO `instock_order` VALUES ('2019年1月5日', '20190105095719');

-- ----------------------------
-- Table structure for instock_rawmaterial
-- ----------------------------
DROP TABLE IF EXISTS `instock_rawmaterial`;
CREATE TABLE `instock_rawmaterial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rawMaterial_number` varchar(11) DEFAULT NULL,
  `rawMaterial_supplier` varchar(11) DEFAULT NULL,
  `rawMaterial_count` double(255,0) DEFAULT NULL,
  `rawMaterial_danjia` double(255,0) DEFAULT NULL,
  `rawMaterial_money` double(255,0) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `danju_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of instock_rawmaterial
-- ----------------------------
INSERT INTO `instock_rawmaterial` VALUES ('27', '012', '1235', '8', '20', '160', '', '20190104225243');
INSERT INTO `instock_rawmaterial` VALUES ('28', '071', '1459', '5', '30', '150', '', '20190105095719');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('29', '2019-01-05 10:01:53');

-- ----------------------------
-- Table structure for inventory_rawmaterial
-- ----------------------------
DROP TABLE IF EXISTS `inventory_rawmaterial`;
CREATE TABLE `inventory_rawmaterial` (
  `id` int(11) NOT NULL,
  `rawMaterial_number` varchar(255) DEFAULT NULL,
  `system_stock` int(11) DEFAULT NULL,
  `inventory_stock` int(11) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory_rawmaterial
-- ----------------------------
INSERT INTO `inventory_rawmaterial` VALUES ('29', '041', '5', '7', '盘盈');
INSERT INTO `inventory_rawmaterial` VALUES ('29', '042', '6', '8', '盘盈');
INSERT INTO `inventory_rawmaterial` VALUES ('29', '043', '6', '4', '盘亏');

-- ----------------------------
-- Table structure for outstock_order
-- ----------------------------
DROP TABLE IF EXISTS `outstock_order`;
CREATE TABLE `outstock_order` (
  `date` varchar(255) DEFAULT NULL,
  `danju_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outstock_order
-- ----------------------------
INSERT INTO `outstock_order` VALUES ('2019年1月4日', '20190104225525');
INSERT INTO `outstock_order` VALUES ('2019年1月5日', '20190105100255');

-- ----------------------------
-- Table structure for outstock_rawmaterial
-- ----------------------------
DROP TABLE IF EXISTS `outstock_rawmaterial`;
CREATE TABLE `outstock_rawmaterial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rawMaterial_number` varchar(11) DEFAULT NULL,
  `rawMaterial_supplier` varchar(11) DEFAULT NULL,
  `rawMaterial_count` double(255,0) DEFAULT NULL,
  `rawMaterial_danjia` double(255,0) DEFAULT NULL,
  `rawMaterial_money` double(255,0) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `danju_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outstock_rawmaterial
-- ----------------------------
INSERT INTO `outstock_rawmaterial` VALUES ('34', '075', '20163480', '9', '9', '81', '', '20190104225525');
INSERT INTO `outstock_rawmaterial` VALUES ('35', '071', '20163587', '30', '6', '180', '', '20190105100255');

-- ----------------------------
-- Table structure for payfor_money
-- ----------------------------
DROP TABLE IF EXISTS `payfor_money`;
CREATE TABLE `payfor_money` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `payfor_zhanghu` varchar(255) DEFAULT NULL,
  `payfor_money` varchar(255) DEFAULT NULL,
  `payfor_way` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `payfor_suppliernumber` varchar(255) DEFAULT NULL,
  `employee_number` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `payfor_danjuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payfor_money
-- ----------------------------

-- ----------------------------
-- Table structure for purchase_danju
-- ----------------------------
DROP TABLE IF EXISTS `purchase_danju`;
CREATE TABLE `purchase_danju` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `danju` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `supplier_number` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_danju
-- ----------------------------
INSERT INTO `purchase_danju` VALUES ('23', '2019-01-04 00:00:00', '20190104HappyLemon1', '20163446', '1237', '500', '', '0');
INSERT INTO `purchase_danju` VALUES ('24', '2019-01-04 00:00:00', '20190104HappyLemon24', '20163587', '1234', '120', '', '1');
INSERT INTO `purchase_danju` VALUES ('25', '2019-01-04 00:00:00', '20190104HappyLemon24', '20163587', '1234', '120', '', '1');
INSERT INTO `purchase_danju` VALUES ('26', '2019-01-04 00:00:00', '20190104HappyLemon26', '20163480', '1236', '300', '', '0');
INSERT INTO `purchase_danju` VALUES ('27', '2019-01-05 00:00:00', '20190105HappyLemon27', '20163587', '1236', '150', '', '0');
INSERT INTO `purchase_danju` VALUES ('28', '2019-01-05 00:00:00', '20190105HappyLemon28', '20163446', '1235', '240', '', '1');

-- ----------------------------
-- Table structure for purchase_material
-- ----------------------------
DROP TABLE IF EXISTS `purchase_material`;
CREATE TABLE `purchase_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rawMaterial_number` varchar(11) DEFAULT '',
  `suppliernumber` varchar(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `count` double(11,0) DEFAULT NULL,
  `price` double(11,0) DEFAULT NULL,
  `money` double(255,0) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `dan_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `danju_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_material
-- ----------------------------
INSERT INTO `purchase_material` VALUES ('18', '071', '1237', '千克', '50', '10', '500', '注意蜂蜜新鲜日期', '2019-01-04 00:00:00', '0', '20190104HappyLemon1');
INSERT INTO `purchase_material` VALUES ('19', '042', '1234', '千克', '6', '20', '120', '这家的销量不大以后注意', '2019-01-04 00:00:00', '1', '20190104HappyLemon24');
INSERT INTO `purchase_material` VALUES ('20', '042', '1234', '千克', '6', '20', '120', '这家的销量不大以后注意', '2019-01-04 00:00:00', '1', '20190104HappyLemon24');
INSERT INTO `purchase_material` VALUES ('21', '051', '1236', '千克', '6', '50', '300', '', '2019-01-04 00:00:00', '0', '20190104HappyLemon26');
INSERT INTO `purchase_material` VALUES ('22', '031', '1236', '箱', '5', '30', '150', '', '2019-01-05 00:00:00', '0', '20190105HappyLemon27');
INSERT INTO `purchase_material` VALUES ('23', '032', '1235', '袋', '6', '40', '240', '', '2019-01-05 00:00:00', '1', '20190105HappyLemon28');

-- ----------------------------
-- Table structure for rawmaterial
-- ----------------------------
DROP TABLE IF EXISTS `rawmaterial`;
CREATE TABLE `rawmaterial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rawMaterial_number` varchar(255) DEFAULT NULL,
  `rawMaterial_name` varchar(255) DEFAULT NULL,
  `rawMaterial_type` varchar(255) DEFAULT NULL,
  `rawMaterial_count` double(11,0) DEFAULT NULL,
  `rawMaterial_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rawmaterial
-- ----------------------------
INSERT INTO `rawmaterial` VALUES ('20', '071', '蜂蜜', '其他', '25', '千克');
INSERT INTO `rawmaterial` VALUES ('21', '072', '茉莉花', '其他', '6', '袋');
INSERT INTO `rawmaterial` VALUES ('22', '031', '红茶', '茶', '5', '箱');
INSERT INTO `rawmaterial` VALUES ('23', '032', '绿茶', '茶', '6', '袋');
INSERT INTO `rawmaterial` VALUES ('24', '011', '柠檬', '水果', '5', '箱');
INSERT INTO `rawmaterial` VALUES ('25', '033', '乌龙茶', '茶', '8', '袋');
INSERT INTO `rawmaterial` VALUES ('26', '012', '蜜桃', '水果', '13', '箱');
INSERT INTO `rawmaterial` VALUES ('27', '013', '酸梅', '水果', '5', '箱');
INSERT INTO `rawmaterial` VALUES ('28', '014', '西瓜', '水果', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('29', '041', '可可粉', '果粉类', '5', '袋');
INSERT INTO `rawmaterial` VALUES ('30', '042', '香草粉', '果粉类', '6', '千克');
INSERT INTO `rawmaterial` VALUES ('31', '043', '原味奶茶粉', '果粉类', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('32', '073', '珍珠', '其他', '5', '箱');
INSERT INTO `rawmaterial` VALUES ('33', '015', '火龙果', '水果', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('34', '051', '奶油', '奶制品', '6', '千克');
INSERT INTO `rawmaterial` VALUES ('35', '016', '芒果', '水果', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('36', '017', '甜橙', '水果', '5', '箱');
INSERT INTO `rawmaterial` VALUES ('37', '018', '菠萝', '水果', '9', '箱');
INSERT INTO `rawmaterial` VALUES ('38', '019', '蓝莓', '水果', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('39', '074', '红豆', '其他', '9', '袋');
INSERT INTO `rawmaterial` VALUES ('40', '075', '芝士', '其他', '0', '袋');
INSERT INTO `rawmaterial` VALUES ('41', '076', '咖啡豆', '其他', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('42', '052', '原味布丁', '奶制品', '5', '箱');
INSERT INTO `rawmaterial` VALUES ('43', '077', '鸡蛋', '其他', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('44', '055', '仙草', '奶制品', '5', '袋');
INSERT INTO `rawmaterial` VALUES ('45', '056', '原味双皮奶', '奶制品', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('46', '021', '柠檬汁', '果汁', '9', '箱');
INSERT INTO `rawmaterial` VALUES ('47', '022', '气泡水', '果汁', '9', '箱');
INSERT INTO `rawmaterial` VALUES ('48', '023', '青提汁', '果汁', '12', '箱');
INSERT INTO `rawmaterial` VALUES ('49', '024', '百香果汁', '果汁', '4', '箱');
INSERT INTO `rawmaterial` VALUES ('50', '025', '草莓汁', '果汁', '6', '箱');
INSERT INTO `rawmaterial` VALUES ('51', '061', '榨汁机', '设备器材', '6', '个');
INSERT INTO `rawmaterial` VALUES ('52', '062', '咖啡机', '设备器材', '4', '个');
INSERT INTO `rawmaterial` VALUES ('53', '063', '冰柜', '设备器材', '6', '克');
INSERT INTO `rawmaterial` VALUES ('54', '064', '刨冰机', '设备器材', '3', '个');
INSERT INTO `rawmaterial` VALUES ('55', '065', '封口机', '设备器材', '5', '个');
INSERT INTO `rawmaterial` VALUES ('56', '079', '塑料杯', '其他', '20', '箱');

-- ----------------------------
-- Table structure for sale_danju
-- ----------------------------
DROP TABLE IF EXISTS `sale_danju`;
CREATE TABLE `sale_danju` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `danju` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `customer_number` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_danju
-- ----------------------------
INSERT INTO `sale_danju` VALUES ('27', '2019-01-04 00:00:00', '20190104HappyLemon_sale1', '20163587', '123', '48', '');
INSERT INTO `sale_danju` VALUES ('28', '2019-01-05 00:00:00', '20190105HappyLemon_sale28', '20163587', '123', '4', '');

-- ----------------------------
-- Table structure for sale_good
-- ----------------------------
DROP TABLE IF EXISTS `sale_good`;
CREATE TABLE `sale_good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `good_number` varchar(11) DEFAULT NULL,
  `customernumber` varchar(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `count` double(11,0) DEFAULT NULL,
  `price` double(11,0) DEFAULT NULL,
  `money` double(255,0) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `dan_date` datetime DEFAULT NULL,
  `danju_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sale_good
-- ----------------------------
INSERT INTO `sale_good` VALUES ('14', '015', '123', '0', '12', '4', '48', '常温', '2019-01-04 00:00:00', '20190104HappyLemon_sale1');
INSERT INTO `sale_good` VALUES ('15', '012', '123', '杯', '2', '2', '4', '', '2019-01-05 00:00:00', '20190105HappyLemon_sale28');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_number` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `charge_name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('6', '1234', '北国商城', '杨子涵', '16713506242', '长安区', '超市');
INSERT INTO `supplier` VALUES ('7', '1235', '农信水果厂', '刘亮', '15613254632', '石家庄市', '果园');
INSERT INTO `supplier` VALUES ('8', '1236', '宝乐园', '杨莎', '15613155379', '北京市', '制奶厂');
INSERT INTO `supplier` VALUES ('9', '1237', '育宝乐园', '姚字', '15613155467', '石家庄市', '制奶厂');
INSERT INTO `supplier` VALUES ('10', '1238', '粉粉世界', '李亮', '12345678925', '云南省', '制奶厂');
INSERT INTO `supplier` VALUES ('11', '1239', '宝悦天堂', '李美', '14613155379', '河南省', '制奶厂');
INSERT INTO `supplier` VALUES ('12', '1245', '北国亦庄', '李彩', '14613155679', '长安区胜利北', '制奶厂');
INSERT INTO `supplier` VALUES ('13', '1678', '万家乐', '姚美联', '14513155479', '河北省商丘市', '超市');
INSERT INTO `supplier` VALUES ('14', '1345', '幸福万家', '姚笛', '12314645537', '柘城县', '超市');
INSERT INTO `supplier` VALUES ('15', '156', '美国电信公司', 'Ammy', '15612144379', '上海市', '器械厂');
INSERT INTO `supplier` VALUES ('16', '678', '新泉', '姚美华', '15648955379', '邢台市', '器械厂');
INSERT INTO `supplier` VALUES ('17', '1569', '海尔电器', '海先生', '15268749653', '中国', '器械厂');
INSERT INTO `supplier` VALUES ('18', '1456', '永辉超市', '永辉', '14876585263', '石家庄', '超市');
INSERT INTO `supplier` VALUES ('19', '1496', '美帝果园', '美帝', '14785693526', '夏威夷', '果园');
INSERT INTO `supplier` VALUES ('20', '1459', '永盛茶园', '阿萌', '14785963265', '衡水市', '茶园');
INSERT INTO `supplier` VALUES ('21', '1578', '茶何轩', '何茶', '19635482639', '上海市', '茶园');

-- ----------------------------
-- Table structure for tuikuan_money
-- ----------------------------
DROP TABLE IF EXISTS `tuikuan_money`;
CREATE TABLE `tuikuan_money` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `tuikuan_zhanghu` varchar(255) DEFAULT NULL,
  `tuikuan_money` varchar(255) DEFAULT NULL,
  `tuikuan_way` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `tuikuan_suppliernumber` varchar(255) DEFAULT NULL,
  `employee_number` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `tuikuan_danjuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuikuan_money
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
