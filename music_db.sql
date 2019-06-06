/*
 Navicat Premium Data Transfer

 Source Server         : autotest
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : 127.0.0.1:3306
 Source Schema         : music_db

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 06/06/2019 10:02:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can add 歌曲评论', 6, 'add_comment');
INSERT INTO `auth_permission` VALUES (17, 'Can change 歌曲评论', 6, 'change_comment');
INSERT INTO `auth_permission` VALUES (18, 'Can delete 歌曲评论', 6, 'delete_comment');
INSERT INTO `auth_permission` VALUES (19, 'Can add 歌曲动态', 7, 'add_dynamic');
INSERT INTO `auth_permission` VALUES (20, 'Can change 歌曲动态', 7, 'change_dynamic');
INSERT INTO `auth_permission` VALUES (21, 'Can delete 歌曲动态', 7, 'delete_dynamic');
INSERT INTO `auth_permission` VALUES (22, 'Can add 歌曲分类', 8, 'add_label');
INSERT INTO `auth_permission` VALUES (23, 'Can change 歌曲分类', 8, 'change_label');
INSERT INTO `auth_permission` VALUES (24, 'Can delete 歌曲分类', 8, 'delete_label');
INSERT INTO `auth_permission` VALUES (25, 'Can add 歌曲信息', 9, 'add_song');
INSERT INTO `auth_permission` VALUES (26, 'Can change 歌曲信息', 9, 'change_song');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 歌曲信息', 9, 'delete_song');
INSERT INTO `auth_permission` VALUES (28, 'Can add user', 10, 'add_myuser');
INSERT INTO `auth_permission` VALUES (29, 'Can change user', 10, 'change_myuser');
INSERT INTO `auth_permission` VALUES (30, 'Can delete user', 10, 'delete_myuser');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_user_myuser_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'index', 'comment');
INSERT INTO `django_content_type` VALUES (7, 'index', 'dynamic');
INSERT INTO `django_content_type` VALUES (8, 'index', 'label');
INSERT INTO `django_content_type` VALUES (9, 'index', 'song');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'user', 'myuser');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2018-12-17 07:06:00.909044');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2018-12-17 07:06:02.844155');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2018-12-17 07:06:08.244464');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2018-12-17 07:06:09.518537');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2018-12-17 07:06:09.572540');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2018-12-17 07:06:09.657544');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2018-12-17 07:06:09.719548');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2018-12-17 07:06:09.807553');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2018-12-17 07:06:09.894558');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2018-12-17 07:06:09.962562');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2018-12-17 07:06:10.063568');
INSERT INTO `django_migrations` VALUES (12, 'user', '0001_initial', '2018-12-17 07:06:16.071911');
INSERT INTO `django_migrations` VALUES (13, 'admin', '0001_initial', '2018-12-17 07:06:18.938075');
INSERT INTO `django_migrations` VALUES (14, 'admin', '0002_logentry_remove_auto_add', '2018-12-17 07:06:19.018080');
INSERT INTO `django_migrations` VALUES (15, 'index', '0001_initial', '2018-12-17 07:06:25.708463');
INSERT INTO `django_migrations` VALUES (16, 'sessions', '0001_initial', '2018-12-17 07:06:26.583513');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1eyj49gs100teopq0wq13plsgryxv8zm', 'MzMyY2YyMDI2MjI2ZjI0OGJmOTFjMjFhMDUyNmIwZjBhZGMzM2MzNzp7InBsYXlfbGlzdCI6W3sic29uZ19pZCI6Niwic29uZ19zaW5nZXIiOiJcdTU0MzRcdTgyZTVcdTVlMGMiLCJzb25nX25hbWUiOiJcdTUyMmJcdTUxOGRcdThiYjBcdThkNzciLCJzb25nX3RpbWUiOiIwNDowNCJ9LHsic29uZ19pZCI6MTEsInNvbmdfc2luZ2VyIjoiXHU3MzhiXHU1MjliXHU1YjhmL1x1NTM2Mlx1NWRlN1x1OTdmMyIsInNvbmdfbmFtZSI6Ilx1NTk3ZFx1NWZjM1x1NTIwNlx1NjI0YiIsInNvbmdfdGltZSI6IjAzOjAwIn1dLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWUyODJjYWUyMzJlMTgxYzVhM2IzMjI3NDAzNWQxMDQyMjRjZmY2OCJ9', '2019-05-09 03:56:13.341537');
INSERT INTO `django_session` VALUES ('87vxx5grlirws7tlp2riyjtpaw4a17w0', 'ZTJlZjM3NGNlMGVlMzdkMDI5NGNiZjI1MmZhYWE4NDg2MzZhZmU3MDp7InBsYXlfbGlzdCI6W3sic29uZ19pZCI6Miwic29uZ19zaW5nZXIiOiJcdTRlOGVcdTY1ODdcdTY1ODciLCJzb25nX25hbWUiOiJcdTRmNTNcdTk3NjIiLCJzb25nX3RpbWUiOiIwNDo0MiJ9LHsic29uZ19pZCI6MTAsInNvbmdfc2luZ2VyIjoiXHU0ZmE3XHU3NTMwIiwic29uZ19uYW1lIjoiVm9sYXIiLCJzb25nX3RpbWUiOiIwMzo1MiJ9XX0=', '2019-05-28 09:04:45.583620');
INSERT INTO `django_session` VALUES ('unslkuiwjc0bp4r9hyyz5c03rmnkmt03', 'YWFjNzMzN2U5ZmFjMTdkODMyZjRhZmM2ZTdjYzY1MTZjZDgwYWFkMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0NjVlNmJhYjI0ZWE3ZjY0MTRlNWE0YmM2ZmQ5NzU0ZWI0YTFkZWQyIiwicGxheV9saXN0IjpbeyJzb25nX2lkIjoxMSwic29uZ19zaW5nZXIiOiJcdTczOGJcdTUyOWJcdTViOGYvXHU1MzYyXHU1ZGU3XHU5N2YzIiwic29uZ19uYW1lIjoiXHU1OTdkXHU1ZmMzXHU1MjA2XHU2MjRiIiwic29uZ190aW1lIjoiMDM6MDAifSx7InNvbmdfaWQiOjMsInNvbmdfc2luZ2VyIjoiVGFuayIsInNvbmdfbmFtZSI6Ilx1NGUwOVx1NTZmZFx1NjA0YiIsInNvbmdfdGltZSI6IjA0OjA2In0seyJzb25nX2lkIjoxMywic29uZ19zaW5nZXIiOiJcdTVmMjBcdTYwZTBcdTY2MjUiLCJzb25nX25hbWUiOiJcdTcyMzFcdThmYzdcdTRlODYgXHU1M2M4XHU2MDBlXHU2ODM3Iiwic29uZ190aW1lIjoiMDQ6MDkifSx7InNvbmdfaWQiOjYsInNvbmdfc2luZ2VyIjoiXHU1NDM0XHU4MmU1XHU1ZTBjIiwic29uZ19uYW1lIjoiXHU1MjJiXHU1MThkXHU4YmIwXHU4ZDc3Iiwic29uZ190aW1lIjoiMDQ6MDQifV0sImt3b3JkIjoiXHU3MjMxXHU4ZmM3XHU0ZTg2IFx1NTNjOFx1NjAwZVx1NjgzNyJ9', '2019-01-01 06:27:58.433201');

-- ----------------------------
-- Table structure for index_comment
-- ----------------------------
DROP TABLE IF EXISTS `index_comment`;
CREATE TABLE `index_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `index_comment_song_id_e60ecaa2_fk_index_song_song_id`(`song_id`) USING BTREE,
  CONSTRAINT `index_comment_song_id_e60ecaa2_fk_index_song_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`song_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_comment
-- ----------------------------
INSERT INTO `index_comment` VALUES (1, '几好听', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (2, '几好听', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (3, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (4, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (5, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (6, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (7, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (8, '好好听', '匿名用户', '2018-04-27', 11);
INSERT INTO `index_comment` VALUES (9, '好听', '匿名用户', '2018-12-17', 6);
INSERT INTO `index_comment` VALUES (10, '一把那般', '匿名用户', '2019-05-14', 2);
INSERT INTO `index_comment` VALUES (11, '111', '匿名用户', '2019-05-14', 2);
INSERT INTO `index_comment` VALUES (12, '2222', '匿名用户', '2019-05-14', 2);
INSERT INTO `index_comment` VALUES (13, '3333', '匿名用户', '2019-05-14', 2);
INSERT INTO `index_comment` VALUES (14, '44444', '匿名用户', '2019-05-14', 2);

-- ----------------------------
-- Table structure for index_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `index_dynamic`;
CREATE TABLE `index_dynamic`  (
  `dynamic_id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_plays` int(11) NOT NULL,
  `dynamic_search` int(11) NOT NULL,
  `dynamic_down` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`dynamic_id`) USING BTREE,
  INDEX `index_dynamic_song_id_21bb9711_fk_index_song_song_id`(`song_id`) USING BTREE,
  CONSTRAINT `index_dynamic_song_id_21bb9711_fk_index_song_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`song_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_dynamic
-- ----------------------------
INSERT INTO `index_dynamic` VALUES (1, 35, 45, 22, 1);
INSERT INTO `index_dynamic` VALUES (2, 49, 17, 21, 2);
INSERT INTO `index_dynamic` VALUES (3, 39, 34, 14, 3);
INSERT INTO `index_dynamic` VALUES (4, 4, 6, 2, 4);
INSERT INTO `index_dynamic` VALUES (5, 28, 7, 5, 5);
INSERT INTO `index_dynamic` VALUES (6, 214, 65, 42, 6);
INSERT INTO `index_dynamic` VALUES (7, 154, 53, 20, 7);
INSERT INTO `index_dynamic` VALUES (8, 15, 16, 33, 8);
INSERT INTO `index_dynamic` VALUES (9, 9, 12, 18, 9);
INSERT INTO `index_dynamic` VALUES (10, 70, 65, 35, 10);
INSERT INTO `index_dynamic` VALUES (11, 128, 72, 51, 11);
INSERT INTO `index_dynamic` VALUES (12, 54, 32, 45, 12);
INSERT INTO `index_dynamic` VALUES (13, 108, 56, 12, 13);

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label`  (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`label_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_label
-- ----------------------------
INSERT INTO `index_label` VALUES (1, '情感天地');
INSERT INTO `index_label` VALUES (2, '摇滚金属');
INSERT INTO `index_label` VALUES (3, '经典流行');
INSERT INTO `index_label` VALUES (4, '环境心情');
INSERT INTO `index_label` VALUES (5, '午后场景');
INSERT INTO `index_label` VALUES (6, '岁月流金');
INSERT INTO `index_label` VALUES (7, '青春校园');

-- ----------------------------
-- Table structure for index_song
-- ----------------------------
DROP TABLE IF EXISTS `index_song`;
CREATE TABLE `index_song`  (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_singer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_album` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_languages` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_release` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_img` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_lyrics` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`song_id`) USING BTREE,
  INDEX `index_song_label_id_9b9b68ed_fk_index_label_label_id`(`label_id`) USING BTREE,
  CONSTRAINT `index_song_label_id_9b9b68ed_fk_index_label_label_id` FOREIGN KEY (`label_id`) REFERENCES `index_label` (`label_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_song
-- ----------------------------
INSERT INTO `index_song` VALUES (1, '爱 都是对的', '胡夏', '04:20', '胡 爱夏', '国语', '流行', '2010-12-08', '1.jpg', '暂无歌词', '1.m4a', 3);
INSERT INTO `index_song` VALUES (2, '体面', '于文文', '04:42', '《前任3：再见前任》电影插曲', '国语', '伤感', '2017-12-25', '2.jpg', '暂无歌词', '2.m4a', 4);
INSERT INTO `index_song` VALUES (3, '三国恋', 'Tank', '04:06', 'Fighting！生存之道', '国语', '摇滚', '2006-04-15', '3.jpg', '暂无歌词', '3.m4a', 2);
INSERT INTO `index_song` VALUES (4, '会长大的幸福', 'Tank', '04:32', '第三回合', '国语', '励志', '2009-05-29', '4.jpg', '暂无歌词', '4.m4a', 4);
INSERT INTO `index_song` VALUES (5, '满满', '梁文音/王铮亮', '04:44', '爱，一直存在', '国语', '甜蜜', '2009-11-20', '5.jpg', '暂无歌词', '5.m4a', 1);
INSERT INTO `index_song` VALUES (6, '别再记起', '吴若希', '04:04', '别再记起', '粤语', '场景', '2017-12-07', '6.jpg', '暂无歌词', '6.m4a', 4);
INSERT INTO `index_song` VALUES (7, '爱的魔法', '金莎', '03:11', '他不爱我', '国语', '甜蜜', '2012-03-19', '7.jpg', '暂无歌词', '7.m4a', 1);
INSERT INTO `index_song` VALUES (8, '演员', '薛之谦', '04:11', '演员', '国语', '流行', '2015-06-05', '8.jpg', '暂无歌词', '8.m4a', 3);
INSERT INTO `index_song` VALUES (9, '放爱情一个假', '许慧欣', '03:24', '谜', '国语', '安静', '2006-10-01', '9.jpg', '暂无歌词', '9.m4a', 4);
INSERT INTO `index_song` VALUES (10, 'Volar', '侧田', '03:52', 'No Protection', '粤语', '摇滚', '2006-07-05', '10.jpg', '暂无歌词', '10.m4a', 2);
INSERT INTO `index_song` VALUES (11, '好心分手', '王力宏/卢巧音', '03:00', '2 Love 致情挚爱', '国语', '伤感', '2015-07-24', '11.jpg', '11.txt', '11.m4a', 1);
INSERT INTO `index_song` VALUES (12, '就是这样', '林采欣', '05:13', '单曲', '国语', '流行', '2016-10-10', '12.jpg', '暂无歌词', '12.m4a', 3);
INSERT INTO `index_song` VALUES (13, '爱过了 又怎样', '张惠春', '04:09', '单曲', '国语', '流行', '2016-09-07', '13.jpg', '暂无歌词', '13.m4a', 3);

-- ----------------------------
-- Table structure for user_myuser
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser`;
CREATE TABLE `user_myuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weChat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_myuser
-- ----------------------------
INSERT INTO `user_myuser` VALUES (1, 'pbkdf2_sha256$100000$GITjB2zvOO3e$+C/4oZXXbQOyt4Ur54aWribRhPmMwpPdEf5SOSC3p94=', '2019-04-25 03:56:13.264533', 0, 'wzywdy', '', '', '', 0, 1, '2018-12-17 08:18:14.080887', '', '', '18657156849');
INSERT INTO `user_myuser` VALUES (2, 'pbkdf2_sha256$100000$jf2NZwBdc7RM$f7rAd0YkyXpnLata5y4Rv3JabU4pVrHa6Z0Ns4Ti4Js=', '2018-12-17 08:24:06.620051', 1, 'mymusic', '', '', '2845309349@qq.com', 1, 1, '2018-12-17 08:23:12.500956', '', '', '');

-- ----------------------------
-- Table structure for user_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_groups`;
CREATE TABLE `user_myuser_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_myuser_groups_myuser_id_group_id_680fbae2_uniq`(`myuser_id`, `group_id`) USING BTREE,
  INDEX `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_myuser_groups_myuser_id_dfd02c0f_fk_user_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_user_permissions`;
CREATE TABLE `user_myuser_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_myuser_user_permiss_myuser_id_permission_id_ae8df385_uniq`(`myuser_id`, `permission_id`) USING BTREE,
  INDEX `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `user_myuser_user_per_myuser_id_5d2dcfb0_fk_user_myus` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
