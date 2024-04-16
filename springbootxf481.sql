/*
 Navicat Premium Data Transfer

 Source Server         : mydb
 Source Server Type    : MySQL
 Source Server Version : 50742
 Source Host           : localhost:3306
 Source Schema         : springbootxf481

 Target Server Type    : MySQL
 Target Server Version : 50742
 File Encoding         : 65001

 Date: 13/04/2024 16:33:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8848/springbootxf481/upload/1620951853810.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8848/springbootxf481/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8848/springbootxf481/upload/picture3.jpg');
INSERT INTO `config` VALUES (6, 'homepage', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (91, '2021-05-14 08:20:35', '招标公告', '简介1测试', 'http://localhost:8848/springbootxf481/upload/news_picture1.jpg', '<p><img src=\"http://localhost:8848/springbootxf481/upload/1620951886050.jpg\"></p><p><br></p><p><br></p><p>这里可以发布一些相关公告信息内容的，这里的所有内容都是用于测试功能的都是可以自行添加修改删除替换的。</p>');
INSERT INTO `news` VALUES (92, '2021-05-14 08:20:35', '标题2', '简介2', 'http://localhost:8848/springbootxf481/upload/news_picture2.jpg', '内容2');
INSERT INTO `news` VALUES (93, '2021-05-14 08:20:35', '标题3', '简介3', 'http://localhost:8848/springbootxf481/upload/news_picture3.jpg', '内容3');
INSERT INTO `news` VALUES (94, '2021-05-14 08:20:35', '标题4', '简介4', 'http://localhost:8848/springbootxf481/upload/news_picture4.jpg', '内容4');
INSERT INTO `news` VALUES (95, '2021-05-14 08:20:35', '标题5', '简介5', 'http://localhost:8848/springbootxf481/upload/news_picture5.jpg', '内容5');
INSERT INTO `news` VALUES (96, '2021-05-14 08:20:35', '标题6', '简介6', 'http://localhost:8848/springbootxf481/upload/news_picture6.jpg', '内容6');

-- ----------------------------
-- Table structure for pingbiaoren
-- ----------------------------
DROP TABLE IF EXISTS `pingbiaoren`;
CREATE TABLE `pingbiaoren`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评标人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingbiaoren
-- ----------------------------
INSERT INTO `pingbiaoren` VALUES (31, '2021-05-14 08:20:35', '1', '1', '姓名1', '男', 'http://localhost:8848/springbootxf481/upload/pingbiaoren_touxiang1.jpg', '440300199101010001', '13823888881');
INSERT INTO `pingbiaoren` VALUES (32, '2021-05-14 08:20:35', '评标人2', '123456', '姓名2', '男', 'http://localhost:8848/springbootxf481/upload/pingbiaoren_touxiang2.jpg', '440300199202020002', '13823888882');
INSERT INTO `pingbiaoren` VALUES (33, '2021-05-14 08:20:35', '评标人3', '123456', '姓名3', '男', 'http://localhost:8848/springbootxf481/upload/pingbiaoren_touxiang3.jpg', '440300199303030003', '13823888883');
INSERT INTO `pingbiaoren` VALUES (34, '2021-05-14 08:20:35', '评标人4', '123456', '姓名4', '男', 'http://localhost:8848/springbootxf481/upload/pingbiaoren_touxiang4.jpg', '440300199404040004', '13823888884');
INSERT INTO `pingbiaoren` VALUES (35, '2021-05-14 08:20:35', '评标人5', '123456', '姓名5', '男', 'http://localhost:8848/springbootxf481/upload/pingbiaoren_touxiang5.jpg', '440300199505050005', '13823888885');
INSERT INTO `pingbiaoren` VALUES (36, '2021-05-14 08:20:35', '评标人6', '123456', '姓名6', '男', 'http://localhost:8848/springbootxf481/upload/pingbiaoren_touxiang6.jpg', '440300199606060006', '13823888886');

-- ----------------------------
-- Table structure for pingbiaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `pingbiaoxinxi`;
CREATE TABLE `pingbiaoxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `xiangmumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `zhaobiaozhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招标账号',
  `gongsimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `pingfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评分',
  `yijian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '意见',
  `pingjiashijian` datetime NULL DEFAULT NULL COMMENT '评价时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `zhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620952146736 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评标信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingbiaoxinxi
-- ----------------------------
INSERT INTO `pingbiaoxinxi` VALUES (61, '2021-05-14 08:20:35', '编号1', '项目名称1', '招标账号1', '公司名称1', '评分1', '意见1', '2021-05-14 08:20:35', '用户名1', '姓名1', '账号1');
INSERT INTO `pingbiaoxinxi` VALUES (62, '2021-05-14 08:20:35', '编号2', '项目名称2', '招标账号2', '公司名称2', '评分2', '意见2', '2021-05-14 08:20:35', '用户名2', '姓名2', '账号2');
INSERT INTO `pingbiaoxinxi` VALUES (63, '2021-05-14 08:20:35', '编号3', '项目名称3', '招标账号3', '公司名称3', '评分3', '意见3', '2021-05-14 08:20:35', '用户名3', '姓名3', '账号3');
INSERT INTO `pingbiaoxinxi` VALUES (64, '2021-05-14 08:20:35', '编号4', '项目名称4', '招标账号4', '公司名称4', '评分4', '意见4', '2021-05-14 08:20:35', '用户名4', '姓名4', '账号4');
INSERT INTO `pingbiaoxinxi` VALUES (65, '2021-05-14 08:20:35', '编号5', '项目名称5', '招标账号5', '公司名称5', '评分5', '意见5', '2021-05-14 08:20:35', '用户名5', '姓名5', '账号5');
INSERT INTO `pingbiaoxinxi` VALUES (66, '2021-05-14 08:20:35', '编号6', '项目名称6', '招标账号6', '公司名称6', '评分6', '意见6', '2021-05-14 08:20:35', '用户名6', '姓名6', '账号6');
INSERT INTO `pingbiaoxinxi` VALUES (1620952146735, '2021-05-14 08:29:06', '20215148273768900100', 'XX项目', '1', 'XX公司', '85', '这个可以合作的', '2021-05-14 08:28:57', '2', '姓名1', '1');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------

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
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'pf87yw24j7kb4nskd7nwe0fjtn11o78i', '2021-05-14 08:22:10', '2021-05-14 09:30:20');
INSERT INTO `token` VALUES (2, 1620951789034, '2', 'toubiaoren', '投标人', 'x325zxc8241s5x8sr84lfjgfnz9fnwkv', '2021-05-14 08:23:19', '2021-05-14 09:29:55');
INSERT INTO `token` VALUES (3, 11, '1', 'toubiaoren', '投标人', 'v0yilo5f8zvcbbr7mr2lblkzhkoqrarq', '2021-05-14 08:25:17', '2024-04-09 12:07:17');
INSERT INTO `token` VALUES (4, 21, '1', 'zhaobiaoren', '招标人', 'thhpa7c6h8k5s5kj8o21bt22zrtaaicu', '2021-05-14 08:25:20', '2021-05-14 09:29:14');
INSERT INTO `token` VALUES (5, 31, '1', 'pingbiaoren', '评标人', 'h5wrqphtlhy3phwz5kw5dqx0ai9mzcik', '2021-05-14 08:28:44', '2021-05-14 09:28:45');

-- ----------------------------
-- Table structure for toubiaoren
-- ----------------------------
DROP TABLE IF EXISTS `toubiaoren`;
CREATE TABLE `toubiaoren`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620951789035 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投标人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toubiaoren
-- ----------------------------
INSERT INTO `toubiaoren` VALUES (11, '2021-05-14 08:20:35', '1', '1', '姓名1', '男', 'http://localhost:8848/springbootxf481/upload/toubiaoren_touxiang1.jpg', '440300199101010001', '13823888881');
INSERT INTO `toubiaoren` VALUES (12, '2021-05-14 08:20:35', '投标人2', '123456', '姓名2', '男', 'http://localhost:8848/springbootxf481/upload/toubiaoren_touxiang2.jpg', '440300199202020002', '13823888882');
INSERT INTO `toubiaoren` VALUES (13, '2021-05-14 08:20:35', '投标人3', '123456', '姓名3', '男', 'http://localhost:8848/springbootxf481/upload/toubiaoren_touxiang3.jpg', '440300199303030003', '13823888883');
INSERT INTO `toubiaoren` VALUES (14, '2021-05-14 08:20:35', '投标人4', '123456', '姓名4', '男', 'http://localhost:8848/springbootxf481/upload/toubiaoren_touxiang4.jpg', '440300199404040004', '13823888884');
INSERT INTO `toubiaoren` VALUES (15, '2021-05-14 08:20:35', '投标人5', '123456', '姓名5', '男', 'http://localhost:8848/springbootxf481/upload/toubiaoren_touxiang5.jpg', '440300199505050005', '13823888885');
INSERT INTO `toubiaoren` VALUES (16, '2021-05-14 08:20:35', '投标人6', '123456', '姓名6', '男', 'http://localhost:8848/springbootxf481/upload/toubiaoren_touxiang6.jpg', '440300199606060006', '13823888886');
INSERT INTO `toubiaoren` VALUES (1620951789034, '2021-05-14 08:23:09', '2', '1', '刘曦', '女', 'http://localhost:8848/springbootxf481/upload/1620951807298.jpg', '441214121412141211', '15214121411');

-- ----------------------------
-- Table structure for toubiaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `toubiaoxinxi`;
CREATE TABLE `toubiaoxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `xiangmumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `zhaobiaozhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招标账号',
  `gongsimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `toubiaowenjian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '投标文件',
  `toubiaoneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '投标内容',
  `toubiaoriqi` date NULL DEFAULT NULL COMMENT '投标日期',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `bianhao`(`bianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620952080588 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投标信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of toubiaoxinxi
-- ----------------------------
INSERT INTO `toubiaoxinxi` VALUES (51, '2021-05-14 08:20:35', '编号1', '项目名称1', '招标账号1', '公司名称1', '', '投标内容1', '2021-05-14', '用户名1', '姓名1', '手机1', '是', '');
INSERT INTO `toubiaoxinxi` VALUES (52, '2021-05-14 08:20:35', '编号2', '项目名称2', '招标账号2', '公司名称2', '', '投标内容2', '2021-05-14', '用户名2', '姓名2', '手机2', '是', '');
INSERT INTO `toubiaoxinxi` VALUES (53, '2021-05-14 08:20:35', '编号3', '项目名称3', '招标账号3', '公司名称3', '', '投标内容3', '2021-05-14', '用户名3', '姓名3', '手机3', '是', '');
INSERT INTO `toubiaoxinxi` VALUES (54, '2021-05-14 08:20:35', '编号4', '项目名称4', '招标账号4', '公司名称4', '', '投标内容4', '2021-05-14', '用户名4', '姓名4', '手机4', '是', '');
INSERT INTO `toubiaoxinxi` VALUES (55, '2021-05-14 08:20:35', '编号5', '项目名称5', '招标账号5', '公司名称5', '', '投标内容5', '2021-05-14', '用户名5', '姓名5', '手机5', '是', '');
INSERT INTO `toubiaoxinxi` VALUES (56, '2021-05-14 08:20:35', '编号6', '项目名称6', '招标账号6', '公司名称6', '', '投标内容6', '2021-05-14', '用户名6', '姓名6', '手机6', '是', '');
INSERT INTO `toubiaoxinxi` VALUES (1620952080587, '2021-05-14 08:28:00', '20215148273768900100', 'XX项目', '1', 'XX公司', 'http://localhost:8848/springbootxf481/upload/1620952066838.doc', '<p>请输入投标内容将自己的文件要上传上去。。。</p>', '2021-05-14', '2', '刘曦', '15214121411', '是', '同意');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'abo', 'abo', '管理员', '2021-05-14 08:20:35');

-- ----------------------------
-- Table structure for zhaobiaoren
-- ----------------------------
DROP TABLE IF EXISTS `zhaobiaoren`;
CREATE TABLE `zhaobiaoren`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaobiaozhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '招标账号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `gongsimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `xiangxidizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhaobiaozhanghao`(`zhaobiaozhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招标人' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhaobiaoren
-- ----------------------------
INSERT INTO `zhaobiaoren` VALUES (21, '2021-05-14 08:20:35', '1', '1', '王倩', '女', 'http://localhost:8848/springbootxf481/upload/zhaobiaoren_touxiang1.jpg', 'XX公司', '上海市XXX', '13823888881');
INSERT INTO `zhaobiaoren` VALUES (22, '2021-05-14 08:20:35', '招标人2', '123456', '姓名2', '男', 'http://localhost:8848/springbootxf481/upload/zhaobiaoren_touxiang2.jpg', '公司名称2', '详细地址2', '13823888882');
INSERT INTO `zhaobiaoren` VALUES (23, '2021-05-14 08:20:35', '招标人3', '123456', '姓名3', '男', 'http://localhost:8848/springbootxf481/upload/zhaobiaoren_touxiang3.jpg', '公司名称3', '详细地址3', '13823888883');
INSERT INTO `zhaobiaoren` VALUES (24, '2021-05-14 08:20:35', '招标人4', '123456', '姓名4', '男', 'http://localhost:8848/springbootxf481/upload/zhaobiaoren_touxiang4.jpg', '公司名称4', '详细地址4', '13823888884');
INSERT INTO `zhaobiaoren` VALUES (25, '2021-05-14 08:20:35', '招标人5', '123456', '姓名5', '男', 'http://localhost:8848/springbootxf481/upload/zhaobiaoren_touxiang5.jpg', '公司名称5', '详细地址5', '13823888885');
INSERT INTO `zhaobiaoren` VALUES (26, '2021-05-14 08:20:35', '招标人6', '123456', '姓名6', '男', 'http://localhost:8848/springbootxf481/upload/zhaobiaoren_touxiang6.jpg', '公司名称6', '详细地址6', '13823888886');

-- ----------------------------
-- Table structure for zhaobiaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `zhaobiaoxinxi`;
CREATE TABLE `zhaobiaoxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `gongsimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `fujian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '附件',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `zhaobiaoyaoqiu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '招标要求',
  `zhaobiaoneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '招标内容',
  `zhaobiaozhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招标账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招标信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhaobiaoxinxi
-- ----------------------------
INSERT INTO `zhaobiaoxinxi` VALUES (41, '2021-05-14 08:20:35', 'XX项目', 'XX公司', 'http://localhost:8848/springbootxf481/upload/zhaobiaoxinxi_tupian1.jpg', 'http://localhost:8080/springbootxf481/upload/1620951974924.doc', '2021-05-14 08:20:35', '招标要求1测试', '<p>招标内容1<img src=\"http://localhost:8080/springbootxf481/upload/1620951986294.jpg\"></p><p>这里可以发布一些相关招标信息内容的，这里的所有内容都是用于测试都是随意添加的，都是可以自行替换的。。。</p>', '1');
INSERT INTO `zhaobiaoxinxi` VALUES (42, '2021-05-14 08:20:35', '项目名称2', '公司名称2', 'http://localhost:8848/springbootxf481/upload/zhaobiaoxinxi_tupian2.jpg', '', '2021-05-14 08:20:35', '招标要求2', '招标内容2', '招标账号2');
INSERT INTO `zhaobiaoxinxi` VALUES (43, '2021-05-14 08:20:35', '项目名称3', '公司名称3', 'http://localhost:8848/springbootxf481/upload/zhaobiaoxinxi_tupian3.jpg', '', '2021-05-14 08:20:35', '招标要求3', '招标内容3', '招标账号3');
INSERT INTO `zhaobiaoxinxi` VALUES (44, '2021-05-14 08:20:35', '项目名称4', '公司名称4', 'http://localhost:8848/springbootxf481/upload/zhaobiaoxinxi_tupian4.jpg', '', '2021-05-14 08:20:35', '招标要求4', '招标内容4', '招标账号4');
INSERT INTO `zhaobiaoxinxi` VALUES (45, '2021-05-14 08:20:35', '项目名称5', '公司名称5', 'http://localhost:8848/springbootxf481/upload/zhaobiaoxinxi_tupian5.jpg', '', '2021-05-14 08:20:35', '招标要求5', '招标内容5', '招标账号5');
INSERT INTO `zhaobiaoxinxi` VALUES (46, '2021-05-14 08:20:35', '项目名称6', '公司名称6', 'http://localhost:8848/springbootxf481/upload/zhaobiaoxinxi_tupian6.jpg', '', '2021-05-14 08:20:35', '招标要求6', '招标内容6', '招标账号6');

-- ----------------------------
-- Table structure for zhongbiaoxinxi
-- ----------------------------
DROP TABLE IF EXISTS `zhongbiaoxinxi`;
CREATE TABLE `zhongbiaoxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
  `xiangmumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `jieguo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '结果',
  `hetongwenjian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同文件',
  `zhaobiaozhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招标账号',
  `gongsimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1620952182870 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '中标信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhongbiaoxinxi
-- ----------------------------
INSERT INTO `zhongbiaoxinxi` VALUES (71, '2021-05-14 08:20:35', '编号1', '项目名称1', '用户名1', '姓名1', '手机1', '结果1', '', '招标账号1', '公司名称1', '是', '');
INSERT INTO `zhongbiaoxinxi` VALUES (72, '2021-05-14 08:20:35', '编号2', '项目名称2', '用户名2', '姓名2', '手机2', '结果2', '', '招标账号2', '公司名称2', '是', '');
INSERT INTO `zhongbiaoxinxi` VALUES (73, '2021-05-14 08:20:35', '编号3', '项目名称3', '用户名3', '姓名3', '手机3', '结果3', '', '招标账号3', '公司名称3', '是', '');
INSERT INTO `zhongbiaoxinxi` VALUES (74, '2021-05-14 08:20:35', '编号4', '项目名称4', '用户名4', '姓名4', '手机4', '结果4', '', '招标账号4', '公司名称4', '是', '');
INSERT INTO `zhongbiaoxinxi` VALUES (75, '2021-05-14 08:20:35', '编号5', '项目名称5', '用户名5', '姓名5', '手机5', '结果5', '', '招标账号5', '公司名称5', '是', '');
INSERT INTO `zhongbiaoxinxi` VALUES (76, '2021-05-14 08:20:35', '编号6', '项目名称6', '用户名6', '姓名6', '手机6', '结果6', '', '招标账号6', '公司名称6', '是', '');
INSERT INTO `zhongbiaoxinxi` VALUES (1620952182869, '2021-05-14 08:29:42', '20215148273768900100', 'XX项目', '2', '王倩', '15214121411', '同意竞标，合同愉快', 'http://localhost:8848/springbootxf481/upload/1620952171598.doc', '1', 'XX公司', '是', '同意合作');

SET FOREIGN_KEY_CHECKS = 1;
