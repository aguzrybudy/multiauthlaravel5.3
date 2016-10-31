/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : dblaravel53

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-10-31 13:15:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'Aguzrybudy', 'aguz@yahoo.com', '$2y$10$8Pk9p2NQqFKLjhNiuXqbgeDR2W3D3hDFb3D.2fFoXR7TGmFdcF3ve', null, '2016-10-19 17:17:40', '2016-10-19 17:17:44');
INSERT INTO `admins` VALUES ('2', 'aguzrybudy', 'aguzrybudy@ymail.com', '$2y$10$.zrZqrb1Q9hOrLf8BTHLLOSZ4ZT5HNL1YToKSy2fwvJEkMQLQ2Rzi', null, '2016-10-19 10:20:39', '2016-10-19 10:20:39');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_10_19_101445_create_admins_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
