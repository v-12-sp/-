/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : waimaisystem

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 13/12/2024 21:49:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `picture1` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片1',
  `picture2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片2',
  `picture3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关于我们' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES (1, '2024-12-10 14:45:30', '关于我们', 'ABOUT US', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢? 你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。21</p>', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for caipinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `caipinfenlei`;
CREATE TABLE `caipinfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caipinfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `caipinfenlei`(`caipinfenlei`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caipinfenlei
-- ----------------------------
INSERT INTO `caipinfenlei` VALUES (41, '2024-12-10 14:45:30', '菜品分类1');
INSERT INTO `caipinfenlei` VALUES (42, '2024-12-10 14:45:30', '菜品分类2');
INSERT INTO `caipinfenlei` VALUES (43, '2024-12-10 14:45:30', '菜品分类3');
INSERT INTO `caipinfenlei` VALUES (44, '2024-12-10 14:45:30', '菜品分类4');
INSERT INTO `caipinfenlei` VALUES (45, '2024-12-10 14:45:30', '菜品分类5');
INSERT INTO `caipinfenlei` VALUES (46, '2024-12-10 14:45:30', '蒸菜');
INSERT INTO `caipinfenlei` VALUES (47, '2024-12-10 14:45:30', '炒菜');
INSERT INTO `caipinfenlei` VALUES (48, '2024-12-10 14:45:30', '小吃');

-- ----------------------------
-- Table structure for caipinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `caipinxinxi`;
CREATE TABLE `caipinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺名称',
  `caipinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品分类',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `kouwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '口味',
  `jiage` float NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `shangjiaxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家姓名',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `caipinjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '菜品介绍',
  `clicktime` datetime(0) NULL DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680677629165 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜品信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caipinxinxi
-- ----------------------------
INSERT INTO `caipinxinxi` VALUES (51, '2024-12-10 14:45:30', '店铺名称1', '菜品名称1', '菜品分类1', 'upload/caipinxinxi_tupian1.jpg,upload/caipinxinxi_tupian2.jpg,upload/caipinxinxi_tupian3.jpg', '口味1', 1, 1, '账号1', '商家姓名1', '13823888881', '菜品介绍1', '2024-12-10 14:45:30');
INSERT INTO `caipinxinxi` VALUES (52, '2024-12-10 14:45:30', '店铺名称2', '菜品名称2', '菜品分类2', 'upload/caipinxinxi_tupian2.jpg,upload/caipinxinxi_tupian3.jpg,upload/caipinxinxi_tupian4.jpg', '口味2', 2, 1, '账号2', '商家姓名2', '13823888882', '菜品介绍2', '2024-12-10 23:16:24');
INSERT INTO `caipinxinxi` VALUES (53, '2024-12-10 14:45:30', '店铺名称3', '菜品名称3', '菜品分类3', 'upload/caipinxinxi_tupian3.jpg,upload/caipinxinxi_tupian4.jpg,upload/caipinxinxi_tupian5.jpg', '口味3', 3, 3, '账号3', '商家姓名3', '13823888883', '菜品介绍3', '2024-12-10 14:45:30');
INSERT INTO `caipinxinxi` VALUES (54, '2024-12-10 14:45:30', '店铺名称4', '菜品名称4', '菜品分类4', 'upload/caipinxinxi_tupian4.jpg,upload/caipinxinxi_tupian5.jpg,upload/caipinxinxi_tupian6.jpg', '口味4', 4, 4, '账号4', '商家姓名4', '13823888884', '菜品介绍4', '2024-12-10 14:45:30');
INSERT INTO `caipinxinxi` VALUES (55, '2024-12-10 14:45:30', '店铺名称5', '菜品名称5', '菜品分类5', 'upload/caipinxinxi_tupian5.jpg,upload/caipinxinxi_tupian6.jpg,upload/caipinxinxi_tupian7.jpg', '口味5', 5, 5, '账号5', '商家姓名5', '13823888885', '菜品介绍5', '2024-12-10 14:45:30');
INSERT INTO `caipinxinxi` VALUES (56, '2024-12-10 14:45:30', '店铺名称6', '菜品名称6', '菜品分类6', 'upload/caipinxinxi_tupian6.jpg,upload/caipinxinxi_tupian7.jpg,upload/caipinxinxi_tupian8.jpg', '口味6', 6, 6, '账号6', '商家姓名6', '13823888886', '菜品介绍6', '2024-12-10 14:45:30');
INSERT INTO `caipinxinxi` VALUES (57, '2024-12-10 14:45:30', '店铺名称7', '菜品名称7', '菜品分类7', 'upload/caipinxinxi_tupian7.jpg,upload/caipinxinxi_tupian8.jpg,upload/1711601409232.jpg', '口味7', 7, 7, '账号7', '商家姓名7', '13823888887', '<p>菜品介绍7</p>', '2024-12-10 14:45:30');
INSERT INTO `caipinxinxi` VALUES (58, '2024-12-10 14:45:30', '店铺名称8', '菜品名称8', '菜品分类8', 'upload/caipinxinxi_tupian8.jpg,upload/caipinxinxi_tupian9.jpg,upload/caipinxinxi_tupian10.jpg', '口味8', 8, 8, '1', '商家姓名8', '13823888888', '<p>菜品介绍8</p>', '2024-12-10 14:45:30');
INSERT INTO `caipinxinxi` VALUES (1680677629164, '2024-12-10 14:45:30', '贝贝美食', '烤翅', '小吃', 'upload/1680677603325.jpg,upload/1711556079916.png', '微辣', 55, 98, '1', '王慧', '15214121411', '<p><img src=\"http://localhost:8080/springbootdq294/upload/1680677624492.jpg\"></p><p><img src=\"http://localhost:8080/springbootdq294/upload/1680677626696.jpg\"></p><p>1212</p>', '2024-12-10 22:57:14');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for dingdanxinxi
-- ----------------------------
DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE `dingdanxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `dianpumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `caipinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品名称',
  `caipinfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜品分类',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `jiage` float NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` float NULL DEFAULT NULL COMMENT '总价格',
  `xiadanshijian` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `zhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1733842656769 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dingdanxinxi
-- ----------------------------
INSERT INTO `dingdanxinxi` VALUES (61, '2024-12-10 14:45:30', '1111111111', '店铺名称1', '菜品名称1', '菜品分类1', '账号1', 1, 1, 1, '2024-12-10 14:45:30', '用户名1', '姓名1', '13823888881', '地址1', '已配送', '已支付');
INSERT INTO `dingdanxinxi` VALUES (62, '2024-12-10 14:45:30', '2222222222', '店铺名称2', '菜品名称2', '菜品分类2', '账号2', 2, 2, 4, '2024-12-10 14:45:30', '用户名2', '姓名2', '13823888882', '地址2', '已配送', '未支付');
INSERT INTO `dingdanxinxi` VALUES (63, '2024-12-10 14:45:30', '3333333333', '店铺名称3', '菜品名称3', '菜品分类3', '账号3', 3, 3, 3, '2024-12-10 14:45:30', '用户名3', '姓名3', '13823888883', '地址3', '已配送', '未支付');
INSERT INTO `dingdanxinxi` VALUES (64, '2024-12-10 14:45:30', '4444444444', '店铺名称4', '菜品名称2', '菜品分类4', '1', 4, 40, 160, '2024-12-10 14:45:30', '用户名4', '姓名4', '13823888884', '地址4', '已配送', '未支付');
INSERT INTO `dingdanxinxi` VALUES (65, '2024-12-10 14:45:30', '5555555555', '店铺名称5', '菜品名称5', '菜品分类5', '账号5', 5, 5, 5, '2024-12-10 14:45:30', '用户名5', '姓名5', '13823888885', '地址5', '已配送', '未支付');
INSERT INTO `dingdanxinxi` VALUES (66, '2024-12-10 14:45:30', '6666666666', '店铺名称6', '菜品名称6', '菜品分类6', '账号6', 6, 6, 6, '2024-12-10 14:45:30', '用户名6', '姓名6', '13823888886', '地址6', '已配送', '未支付');
INSERT INTO `dingdanxinxi` VALUES (67, '2024-12-10 14:45:30', '7777777777', '店铺名称7', '菜品名称3', '菜品分类7', '1', 7, 70, 490, '2024-12-10 14:45:30', '用户名7', '姓名7', '13823888887', '地址7', '已配送', '未支付');
INSERT INTO `dingdanxinxi` VALUES (68, '2024-12-10 14:45:30', '8888888888', '店铺名称8', '菜品名称8', '菜品分类8', '账号8', 8, 8, 8, '2024-12-10 14:45:30', '用户名8', '姓名8', '13823888888', '地址8', '已配送', '未支付');
INSERT INTO `dingdanxinxi` VALUES (1680677673705, '2024-12-10 14:45:30', '1680677659452', '贝贝美食', '烤翅', '小吃', '1', 55, 2, 110, '2024-12-10 14:45:30', '2', '李思思', '15214121411', '上海市', '已配送', '已支付');
INSERT INTO `dingdanxinxi` VALUES (1711556666639, '2024-12-10 14:45:30', '1711556654875', '店铺名称2', '菜品名称2', '菜品分类2', '账号2', 2, 0, 0, '2024-12-10 14:45:30', '用户名1', '姓名1', '18322222222', '1231', '已配送', '已支付');
INSERT INTO `dingdanxinxi` VALUES (1711705405052, '2024-12-10 14:45:30', '1711705397219', '店铺名称2', '菜品名称2', '菜品分类2', '账号2', 2, 0, 0, '2024-12-10 14:45:30', '用户名1', '姓名1', '12222222222', '123', '已配送', '');
INSERT INTO `dingdanxinxi` VALUES (1733842656768, '2024-12-10 22:57:36', '1733842647844', '店铺名称2', '菜品名称2', '菜品分类2', '账号2', 2, 1, 2, '2024-12-10 22:57:27', '用户名1', '姓名1', '18444444444', '12312', '已配送', '已支付');

-- ----------------------------
-- Table structure for discusscaipinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusscaipinxinxi`;
CREATE TABLE `discusscaipinxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711556487609 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜品信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusscaipinxinxi
-- ----------------------------
INSERT INTO `discusscaipinxinxi` VALUES (1680677681487, '2024-12-10 14:45:30', 1680677629164, 1680677374834, 'upload/1680677349006.jpg', '2', '很好吃。。。', '欢迎再来啊。。。');
INSERT INTO `discusscaipinxinxi` VALUES (1711556487608, '2024-12-10 14:45:30', 52, 11, 'upload/yonghu_touxiang1.jpg', '用户名1', '111', NULL);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `rpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680677394097 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言反馈' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (121, '2024-12-10 14:45:30', 1, '用户名1', 'upload/messages_avatarurl1.jpg', '留言内容1', 'upload/messages_cpicture1.jpg', '回复内容1', 'upload/messages_rpicture1.jpg');
INSERT INTO `messages` VALUES (122, '2024-12-10 14:45:30', 2, '用户名2', 'upload/messages_avatarurl2.jpg', '留言内容2', 'upload/messages_cpicture2.jpg', '回复内容2', 'upload/messages_rpicture2.jpg');
INSERT INTO `messages` VALUES (123, '2024-12-10 14:45:30', 3, '用户名3', 'upload/messages_avatarurl3.jpg', '留言内容3', 'upload/messages_cpicture3.jpg', '回复内容3', 'upload/messages_rpicture3.jpg');
INSERT INTO `messages` VALUES (124, '2024-12-10 14:45:30', 4, '用户名4', 'upload/messages_avatarurl4.jpg', '留言内容4', 'upload/messages_cpicture4.jpg', '回复内容4', 'upload/messages_rpicture4.jpg');
INSERT INTO `messages` VALUES (125, '2024-12-10 14:45:30', 5, '用户名5', 'upload/messages_avatarurl5.jpg', '留言内容5', 'upload/messages_cpicture5.jpg', '回复内容5', 'upload/messages_rpicture5.jpg');
INSERT INTO `messages` VALUES (126, '2024-12-10 14:45:30', 6, '用户名6', 'upload/messages_avatarurl6.jpg', '留言内容6', 'upload/messages_cpicture6.jpg', '回复内容6', 'upload/messages_rpicture6.jpg');
INSERT INTO `messages` VALUES (127, '2024-12-10 14:45:30', 7, '用户名7', 'upload/messages_avatarurl7.jpg', '留言内容7', 'upload/messages_cpicture7.jpg', '回复内容7', 'upload/messages_rpicture7.jpg');
INSERT INTO `messages` VALUES (128, '2024-12-10 14:45:30', 8, '用户名8', 'upload/messages_avatarurl8.jpg', '留言内容8', 'upload/messages_cpicture8.jpg', '回复内容8', 'upload/messages_rpicture8.jpg');
INSERT INTO `messages` VALUES (1680677394096, '2024-12-10 14:45:30', 1680677374834, '2', 'upload/1680677349006.jpg', '有什么问题或者意见都是可以在这里进行交流或者反馈给管理员的，管理员可以进行回复', NULL, '好的可以的', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '美食资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (101, '2024-12-10 14:45:30', '有梦想，就要努力去实现', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。', 'upload/news_picture1.jpg', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>');
INSERT INTO `news` VALUES (102, '2024-12-10 14:45:30', '又是一年毕业季', '又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。', 'upload/news_picture2.jpg', '<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>');
INSERT INTO `news` VALUES (103, '2024-12-10 14:45:30', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (104, '2024-12-10 14:45:30', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/news_picture4.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>');
INSERT INTO `news` VALUES (105, '2024-12-10 14:45:30', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/news_picture5.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
INSERT INTO `news` VALUES (106, '2024-12-10 14:45:30', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture6.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (107, '2024-12-10 14:45:30', 'Leave未必是一种痛苦', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture7.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (108, '2024-12-10 14:45:30', '美食资讯', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture8.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。这里可以发布一些相关资讯内容的。。。</p>');

-- ----------------------------
-- Table structure for peisongxinxi
-- ----------------------------
DROP TABLE IF EXISTS `peisongxinxi`;
CREATE TABLE `peisongxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜品名称',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `peisongxinxi` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配送信息',
  `peisongshijian` datetime(0) NULL DEFAULT NULL COMMENT '配送时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `qishouxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '骑手姓名',
  `dizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `shouhuozhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1733842707458 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配送信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of peisongxinxi
-- ----------------------------
INSERT INTO `peisongxinxi` VALUES (71, '2024-12-10 14:45:30', '订单编号1', '菜品名称1', '账号1', '用户名1', '姓名1', '13823888881', '配送信息1', '2024-12-10 14:45:30', '工号1', '骑手姓名1', '地址1', '已完成');
INSERT INTO `peisongxinxi` VALUES (72, '2024-12-10 14:45:30', '订单编号2', '菜品名称2', '账号2', '用户名2', '姓名2', '13823888882', '配送信息2', '2024-12-10 14:45:30', '工号2', '骑手姓名2', '地址2', '已完成');
INSERT INTO `peisongxinxi` VALUES (73, '2024-12-10 14:45:30', '订单编号3', '菜品名称3', '账号3', '用户名3', '姓名3', '13823888883', '配送信息3', '2024-12-10 14:45:30', '工号3', '骑手姓名3', '地址3', '已完成');
INSERT INTO `peisongxinxi` VALUES (74, '2024-12-10 14:45:30', '订单编号4', '菜品名称4', '账号4', '用户名4', '姓名4', '13823888884', '配送信息4', '2024-12-10 14:45:30', '工号4', '骑手姓名4', '地址4', '已完成');
INSERT INTO `peisongxinxi` VALUES (75, '2024-12-10 14:45:30', '订单编号5', '菜品名称5', '账号5', '用户名5', '姓名5', '13823888885', '配送信息5', '2024-12-10 14:45:30', '工号5', '骑手姓名5', '地址5', '已完成');
INSERT INTO `peisongxinxi` VALUES (76, '2024-12-10 14:45:30', '订单编号6', '菜品名称6', '账号6', '用户名6', '姓名6', '13823888886', '配送信息6', '2024-12-10 14:45:30', '工号6', '骑手姓名6', '地址6', '已完成');
INSERT INTO `peisongxinxi` VALUES (77, '2024-12-10 14:45:30', '订单编号7', '菜品名称7', '账号7', '用户名7', '姓名7', '13823888887', '配送信息7', '2024-12-10 14:45:30', '工号7', '骑手姓名7', '地址7', '已完成');
INSERT INTO `peisongxinxi` VALUES (78, '2024-12-10 14:45:30', '订单编号8', '菜品名称8', '账号8', '用户名8', '姓名8', '13823888888', '配送信息8', '2024-12-10 14:45:30', '工号8', '骑手姓名8', '地址8', '已完成');
INSERT INTO `peisongxinxi` VALUES (1680677742492, '2024-12-10 14:45:30', '2222222222', '菜品名称2', '账号2', '用户名2', '姓名2', '13823888882', '已取货从哪里出发送到哪里。。。。', '2024-12-10 14:45:30', '1', '王辉', '地址2', '待确认');
INSERT INTO `peisongxinxi` VALUES (1680677771046, '2024-12-10 14:45:30', '1680677659452', '烤翅', '1', '2', '李思思', '15214121411', '1212122', '2024-12-10 14:45:30', '1', '王辉', '上海市', '已完成');
INSERT INTO `peisongxinxi` VALUES (1711556722706, '2024-12-10 14:45:30', '1711556654875', '菜品名称2', '账号2', '用户名1', '姓名1', '18322222222', '123', '2024-12-10 14:45:30', '工号1', '骑手姓名1', '1231', '已完成');
INSERT INTO `peisongxinxi` VALUES (1711705474924, '2024-12-10 14:45:30', '1711705397219', '菜品名称2', '账号2', '用户名1', '姓名1', '12222222222', '123', '2024-12-10 14:45:30', '工号1', '骑手姓名1', '123', '待确认');
INSERT INTO `peisongxinxi` VALUES (1733842707457, '2024-12-10 22:58:26', '1733842647844', '菜品名称2', '账号2', '用户名1', '姓名1', '18444444444', '111', '2024-12-10 22:58:23', '工号1', '骑手姓名1', '12312', '已完成');

-- ----------------------------
-- Table structure for qishou
-- ----------------------------
DROP TABLE IF EXISTS `qishou`;
CREATE TABLE `qishou`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `qishouxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '骑手姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `gonghao`(`gonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '骑手' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qishou
-- ----------------------------
INSERT INTO `qishou` VALUES (31, '2024-12-10 14:45:30', '工号1', '123456', '骑手姓名1', '男', 'upload/qishou_touxiang1.jpg', '年龄1', '13823888881');
INSERT INTO `qishou` VALUES (32, '2024-12-10 14:45:30', '工号2', '123456', '骑手姓名2', '男', 'upload/qishou_touxiang2.jpg', '年龄2', '13823888882');
INSERT INTO `qishou` VALUES (33, '2024-12-10 14:45:30', '工号3', '123456', '骑手姓名3', '男', 'upload/qishou_touxiang3.jpg', '年龄3', '13823888883');
INSERT INTO `qishou` VALUES (34, '2024-12-10 14:45:30', '工号4', '123456', '骑手姓名4', '男', 'upload/qishou_touxiang4.jpg', '年龄4', '13823888884');
INSERT INTO `qishou` VALUES (35, '2024-12-10 14:45:30', '工号5', '123456', '骑手姓名5', '男', 'upload/qishou_touxiang5.jpg', '年龄5', '13823888885');
INSERT INTO `qishou` VALUES (36, '2024-12-10 14:45:30', '工号6', '123456', '骑手姓名6', '男', 'upload/qishou_touxiang6.jpg', '年龄6', '13823888886');
INSERT INTO `qishou` VALUES (37, '2024-12-10 14:45:30', '工号7', '123456', '骑手姓名7', '男', 'upload/qishou_touxiang7.jpg', '年龄7', '13823888887');
INSERT INTO `qishou` VALUES (38, '2024-12-10 14:45:30', '1', '1', '王辉', '男', 'upload/qishou_touxiang8.jpg', '年龄8', '13823888888');

-- ----------------------------
-- Table structure for querenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `querenxinxi`;
CREATE TABLE `querenxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `caipinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜品名称',
  `querenshijian` datetime(0) NULL DEFAULT NULL COMMENT '确认时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1733842749559 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '确认信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of querenxinxi
-- ----------------------------
INSERT INTO `querenxinxi` VALUES (81, '2024-12-13 14:45:30', '订单编号1', '菜品名称1', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (82, '2024-12-13 14:45:30', '订单编号2', '菜品名称2', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (83, '2024-12-13 14:45:30', '订单编号3', '菜品名称3', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (84, '2024-12-13 14:45:30', '订单编号4', '菜品名称4', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (85, '2024-12-13 14:45:30', '订单编号5', '菜品名称5', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (86, '2024-12-13 14:45:30', '订单编号6', '菜品名称6', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (87, '2024-12-13 14:45:30', '订单编号7', '菜品名称7', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (88, '2024-12-13 14:45:30', '订单编号8', '菜品名称8', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (1680677788068, '2024-12-13 14:45:30', '1680677659452', '烤翅', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (1733842677234, '2024-12-13 14:45:30', '1711556654875', '菜品名称2', '2024-12-13 14:45:30');
INSERT INTO `querenxinxi` VALUES (1733842749558, '2024-12-13 14:45:30', '1733842647844', '菜品名称2', '2024-12-13 14:45:30');

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `dianpumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺名称',
  `shangjiaxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家姓名',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商家' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES (21, '2024-12-13 14:45:30', '账号1', '123456', '店铺名称1', '商家姓名1', 'upload/shangjia_touxiang1.jpg', '男', '13823888881');
INSERT INTO `shangjia` VALUES (22, '2024-12-13 14:45:30', '账号2', '123456', '店铺名称2', '商家姓名2', 'upload/shangjia_touxiang2.jpg', '男', '13823888882');
INSERT INTO `shangjia` VALUES (23, '2024-12-13 14:45:30', '账号3', '123456', '店铺名称3', '商家姓名3', 'upload/shangjia_touxiang3.jpg', '男', '13823888883');
INSERT INTO `shangjia` VALUES (24, '2024-12-13 14:45:30', '账号4', '123456', '店铺名称4', '商家姓名4', 'upload/shangjia_touxiang4.jpg', '男', '13823888884');
INSERT INTO `shangjia` VALUES (25, '2024-12-13 14:45:30', '账号5', '123456', '店铺名称5', '商家姓名5', 'upload/shangjia_touxiang5.jpg', '男', '13823888885');
INSERT INTO `shangjia` VALUES (26, '2024-12-13 14:45:30', '账号6', '123456', '店铺名称6', '商家姓名6', 'upload/shangjia_touxiang6.jpg', '男', '13823888886');
INSERT INTO `shangjia` VALUES (27, '2024-12-13 14:45:30', '账号7', '123456', '店铺名称7', '商家姓名7', 'upload/shangjia_touxiang7.jpg', '男', '13823888887');
INSERT INTO `shangjia` VALUES (28, '2024-12-13 14:45:30', '1', '1', '贝贝美食', '王慧', 'upload/shangjia_touxiang8.jpg', '女', '13823888888');

-- ----------------------------
-- Table structure for smsregistercode
-- ----------------------------
DROP TABLE IF EXISTS `smsregistercode`;
CREATE TABLE `smsregistercode`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `role` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色',
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '验证码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信验证码' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of smsregistercode
-- ----------------------------
INSERT INTO `smsregistercode` VALUES (131, '2024-12-13 14:45:30', '手机1', '角色1', '验证码1');
INSERT INTO `smsregistercode` VALUES (132, '2024-12-13 14:45:30', '手机2', '角色2', '验证码2');
INSERT INTO `smsregistercode` VALUES (133, '2024-12-13 14:45:30', '手机3', '角色3', '验证码3');
INSERT INTO `smsregistercode` VALUES (134, '2024-12-13 14:45:30', '手机4', '角色4', '验证码4');
INSERT INTO `smsregistercode` VALUES (135, '2024-12-13 14:45:30', '手机5', '角色5', '验证码5');
INSERT INTO `smsregistercode` VALUES (136, '2024-12-13 14:45:30', '手机6', '角色6', '验证码6');
INSERT INTO `smsregistercode` VALUES (137, '2024-12-13 14:45:30', '手机7', '角色7', '验证码7');
INSERT INTO `smsregistercode` VALUES (138, '2024-12-13 14:45:30', '手机8', '角色8', '验证码8');
INSERT INTO `smsregistercode` VALUES (139, '2024-12-13 14:45:30', '15214121411', '用户', '557448');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1711556483224 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1680677657876, '2024-12-13 14:45:30', 1680677374834, 1680677629164, 'caipinxinxi', '贝贝美食', 'upload/1680677601248.jpg', '1', '小吃', NULL);
INSERT INTO `storeup` VALUES (1711556483223, '2024-12-13 14:45:30', 11, 52, 'caipinxinxi', '店铺名称2', 'upload/caipinxinxi_tupian2.jpg', '1', '菜品分类2', NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', '1gstodvagpt6ym2n876z7uhm2qrzcx2m', '2024-12-13 14:45:30', '2024-12-13 14:45:30');
INSERT INTO `token` VALUES (2, 18, '1', 'yonghu', '用户', 'jefgozh9zrsc0pgmxjb3871q8fu2qbe7', '2024-12-13 14:45:30', '2024-12-13 14:45:30');
INSERT INTO `token` VALUES (3, 1680677374834, '2', 'yonghu', '用户', 'ujcpv12knjnyl8363ucc6gpuupszcz6h', '2024-12-13 14:45:30', '2024-12-13 14:45:30');
INSERT INTO `token` VALUES (4, 28, '1', 'shangjia', '商家', '0pps39ly8lewrw0rn6pgmi0nhziy16hx', '2024-12-13 14:45:30', '2024-12-13 14:45:30');
INSERT INTO `token` VALUES (5, 38, '1', 'qishou', '骑手', 'v2pptfi9dwmdc9md0luoexs2lqmljai2', '2024-12-13 14:45:30', '2024-12-13 14:45:30');
INSERT INTO `token` VALUES (6, 11, '用户名1', 'yonghu', '用户', 'wuhfv5whjlyral37zuhcamgwbuuxzisb', '2024-12-13 14:45:30', '2024-12-13 22:47:09');
INSERT INTO `token` VALUES (7, 21, '账号1', 'shangjia', '商家', 'e7odzk542s2v4bhcihnjdo6cjnc5d67a', '2024-12-13 14:45:30', '2024-12-13 14:45:30');
INSERT INTO `token` VALUES (8, 31, '工号1', 'qishou', '骑手', 'u7dpkgcf6p35fy1xb864krw24z0l79j4', '2024-12-13 14:45:30', '2024-12-13 22:47:31');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2024-12-13 14:45:30');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680677374835 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2024-12-13 14:45:30', '用户名1', '123456', '姓名1', 'upload/yonghu_touxiang1.jpg', '男', '13823888881');
INSERT INTO `yonghu` VALUES (12, '2024-12-13 14:45:30', '用户名2', '123456', '姓名2', 'upload/yonghu_touxiang2.jpg', '男', '13823888882');
INSERT INTO `yonghu` VALUES (13, '2024-12-13 14:45:30', '用户名3', '123456', '姓名3', 'upload/yonghu_touxiang3.jpg', '男', '13823888883');
INSERT INTO `yonghu` VALUES (14, '2024-12-13 14:45:30', '用户名4', '123456', '姓名4', 'upload/yonghu_touxiang4.jpg', '男', '13823888884');
INSERT INTO `yonghu` VALUES (15, '2024-12-13 14:45:30', '用户名5', '123456', '姓名5', 'upload/yonghu_touxiang5.jpg', '男', '13823888885');
INSERT INTO `yonghu` VALUES (17, '2024-12-13 14:45:30', '用户名7', '123456', '姓名7', 'upload/yonghu_touxiang7.jpg', '男', '13823888887');
INSERT INTO `yonghu` VALUES (18, '2024-12-13 14:45:30', '1', '1', '姓名8', 'upload/yonghu_touxiang8.jpg', '男', '13823888888');
INSERT INTO `yonghu` VALUES (1680677374834, '2024-12-13 14:45:30', '2', '1', '李思思', 'upload/1680677349006.jpg', '女', '15214121411');

SET FOREIGN_KEY_CHECKS = 1;
