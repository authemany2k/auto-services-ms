/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : auto-plus_db

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-02-12 00:57:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for appointments
-- ----------------------------
DROP TABLE IF EXISTS `appointments`;
CREATE TABLE `appointments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `vehicle_company_id` int(11) NOT NULL,
  `vehicle_modal_id` int(11) NOT NULL,
  `vehicle_types_id` int(11) NOT NULL,
  `washing_plan_id` int(11) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `appointment_date` date NOT NULL,
  `vehicle_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_frame` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appx_hour` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appointments_user_id_foreign` (`user_id`),
  CONSTRAINT `appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of appointments
-- ----------------------------
INSERT INTO `appointments` VALUES ('2', '1', '2', '2', '2', '2', '2', '2017-10-31', 'asdkljas askld', 'afternoon', '2 hrs', 'new car', '2017-10-30 19:51:28', '2017-10-30 19:51:28');
INSERT INTO `appointments` VALUES ('3', '2', '1', '2', '1', '1', '3', '2017-10-31', 'asdksald askld', 'afternoon', '2hrs', 'askl djasdsssss', '2017-10-30 19:53:25', '2017-10-30 19:53:25');
INSERT INTO `appointments` VALUES ('5', '1', '1', '2', '2', '3', null, '1970-01-01', null, 'evening', null, null, '2017-10-30 20:36:44', '2017-10-30 20:36:44');

-- ----------------------------
-- Table structure for appointment_users
-- ----------------------------
DROP TABLE IF EXISTS `appointment_users`;
CREATE TABLE `appointment_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `appointment_id` int(10) unsigned NOT NULL,
  `discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advance` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `remark` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appointment_users_user_id_foreign` (`user_id`),
  KEY `appointment_users_appointment_id_foreign` (`appointment_id`),
  CONSTRAINT `appointment_users_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `appointment_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of appointment_users
-- ----------------------------
INSERT INTO `appointment_users` VALUES ('2', '1', '2', null, null, null, null, null, null);
INSERT INTO `appointment_users` VALUES ('3', '2', '3', null, null, null, null, null, null);
INSERT INTO `appointment_users` VALUES ('5', '1', '5', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `dtl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES ('1', 'Maecenas vestibulum mollis diamster egestas', '1507970936blog-01.jpg', '1', '2017-10-17', 'Lorem ipsum dolor sit amet consectetuer adipisci elit aenean commodo ligula eget dolor aenean cum sociis natoque penatibus et magnis.', '2017-10-14 16:48:56', '2017-10-18 13:58:52');
INSERT INTO `blogs` VALUES ('2', 'Maecenas vestibulum mollis diamster egestas', '1508306449blog-02.jpg', '1', '2017-09-06', 'Lorem ipsum dolor sit amet consectetuer adipisci elit aenean commodo ligula eget dolor aenean cum sociis natoque penatibus et magnis.', '2017-10-18 14:00:49', '2017-10-18 14:00:49');
INSERT INTO `blogs` VALUES ('3', 'Maecenas vestibulum mollis diamster egestas', '1508306478blog-03.jpg', '1', '2017-09-18', 'Lorem ipsum dolor sit amet consectetuer adipisci elit aenean commodo ligula eget dolor aenean cum sociis natoque penatibus et magnis.', '2017-10-18 14:01:18', '2017-10-18 14:01:18');

-- ----------------------------
-- Table structure for clients
-- ----------------------------
DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of clients
-- ----------------------------
INSERT INTO `clients` VALUES ('1', '1507971865client-01.png', '2017-10-14 17:04:25', '2017-10-14 17:04:25');
INSERT INTO `clients` VALUES ('2', '1508306563client-02.png', '2017-10-18 14:02:43', '2017-10-18 14:02:43');
INSERT INTO `clients` VALUES ('3', '1508306570client-03.png', '2017-10-18 14:02:50', '2017-10-18 14:02:50');
INSERT INTO `clients` VALUES ('4', '1508306577client-04.png', '2017-10-18 14:02:57', '2017-10-18 14:02:57');
INSERT INTO `clients` VALUES ('5', '1508306583client-05.png', '2017-10-18 14:03:03', '2017-10-18 14:03:03');
INSERT INTO `clients` VALUES ('6', '1508306590client-06.png', '2017-10-18 14:03:10', '2017-10-18 14:03:10');

-- ----------------------------
-- Table structure for company_socials
-- ----------------------------
DROP TABLE IF EXISTS `company_socials`;
CREATE TABLE `company_socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_site` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of company_socials
-- ----------------------------
INSERT INTO `company_socials` VALUES ('1', '#', 'Facebook', 'fa-facebook', '2017-10-27 19:13:59', '2017-10-27 19:15:14');
INSERT INTO `company_socials` VALUES ('2', '#', 'Google', 'fa-google-plus', '2017-10-27 19:17:32', '2017-10-27 19:17:32');
INSERT INTO `company_socials` VALUES ('3', '#', 'Twitter', 'fa-twitter', '2017-10-27 19:17:48', '2017-10-27 19:21:10');
INSERT INTO `company_socials` VALUES ('4', '#', 'Pinterest', 'fa-pinterest', '2017-10-27 19:18:10', '2017-10-27 19:18:10');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('6', 'Auto Plus - Car Wash & Car Repair', 'logo.png', '+1234567890', '+1234567890', 'Washington D.C.', 'info@company.com', 'www.carwash.com', '2017-10-16 12:44:02', '2017-10-16 12:44:02', 'logo-white.png');

-- ----------------------------
-- Table structure for currencies
-- ----------------------------
DROP TABLE IF EXISTS `currencies`;
CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `symbol` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencies_symbol_unique` (`symbol`),
  UNIQUE KEY `currencies_country_unique` (`country`),
  UNIQUE KEY `currencies_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of currencies
-- ----------------------------
INSERT INTO `currencies` VALUES ('1', '$', 'USA', 'US', '2017-10-14 13:45:41', '2017-10-14 13:45:41');

-- ----------------------------
-- Table structure for facts
-- ----------------------------
DROP TABLE IF EXISTS `facts`;
CREATE TABLE `facts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of facts
-- ----------------------------
INSERT INTO `facts` VALUES ('1', 'fa-truck', '1025', 'Vehicle Washed', '2017-10-14 16:15:21', '2017-10-14 16:15:21');
INSERT INTO `facts` VALUES ('2', 'fa-car', '850', 'Car Washed', '2017-10-18 12:33:30', '2017-10-18 12:33:30');
INSERT INTO `facts` VALUES ('3', 'fa-smile-o', '780', 'Happy Customers', '2017-10-18 12:34:00', '2017-10-18 12:34:00');
INSERT INTO `facts` VALUES ('4', 'fa-coffee', '500', 'Cup of Coffee', '2017-10-18 12:34:24', '2017-10-18 12:34:24');

-- ----------------------------
-- Table structure for galleries
-- ----------------------------
DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_img` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of galleries
-- ----------------------------
INSERT INTO `galleries` VALUES ('1', '1507963670gallery-01.jpg', '2017-10-14 14:47:50', '2017-10-14 14:47:50');
INSERT INTO `galleries` VALUES ('2', '1507963872gallery-02.jpg', '2017-10-14 14:51:12', '2017-10-14 14:51:12');
INSERT INTO `galleries` VALUES ('3', '1507963879gallery-03.jpg', '2017-10-14 14:51:19', '2017-10-14 14:51:19');
INSERT INTO `galleries` VALUES ('4', '1507963887gallery-04.jpg', '2017-10-14 14:51:27', '2017-10-14 14:51:27');
INSERT INTO `galleries` VALUES ('5', '1507963911gallery-05.jpg', '2017-10-14 14:51:38', '2017-10-14 14:51:51');
INSERT INTO `galleries` VALUES ('6', '1508301091gallery-06.jpg', '2017-10-18 12:31:31', '2017-10-18 12:31:31');
INSERT INTO `galleries` VALUES ('8', '15083092371507963670gallery-01.jpg', '2017-10-18 14:47:17', '2017-10-18 14:47:17');
INSERT INTO `galleries` VALUES ('9', '15083092551507963879gallery-03.jpg', '2017-10-18 14:47:35', '2017-10-18 14:47:35');

-- ----------------------------
-- Table structure for maps
-- ----------------------------
DROP TABLE IF EXISTS `maps`;
CREATE TABLE `maps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of maps
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_09_02_183504_create_washing_plans_table', '1');
INSERT INTO `migrations` VALUES ('4', '2017_09_02_183601_create_vehicle_types_table', '1');
INSERT INTO `migrations` VALUES ('5', '2017_09_02_183621_create_teams_table', '1');
INSERT INTO `migrations` VALUES ('6', '2017_09_02_183722_create_social_teams_table', '1');
INSERT INTO `migrations` VALUES ('7', '2017_09_02_183743_create_team_tasks_table', '1');
INSERT INTO `migrations` VALUES ('8', '2017_09_04_042235_create_statuses_table', '1');
INSERT INTO `migrations` VALUES ('9', '2017_09_04_043711_create_appointments_table', '1');
INSERT INTO `migrations` VALUES ('10', '2017_09_04_044501_create_payments_table', '1');
INSERT INTO `migrations` VALUES ('11', '2017_09_04_044553_create_washing_plan_includes_table', '1');
INSERT INTO `migrations` VALUES ('12', '2017_09_04_044945_create_payment_modes_table', '1');
INSERT INTO `migrations` VALUES ('13', '2017_09_04_045011_create_services_table', '1');
INSERT INTO `migrations` VALUES ('14', '2017_09_04_045042_create_galleries_table', '1');
INSERT INTO `migrations` VALUES ('15', '2017_09_04_045100_create_facts_table', '1');
INSERT INTO `migrations` VALUES ('16', '2017_09_04_045819_create_testimonials_table', '1');
INSERT INTO `migrations` VALUES ('17', '2017_09_04_050108_create_maps_table', '1');
INSERT INTO `migrations` VALUES ('18', '2017_09_04_050221_create_opening_hours_table', '1');
INSERT INTO `migrations` VALUES ('19', '2017_09_04_050403_create_company_socials_table', '1');
INSERT INTO `migrations` VALUES ('20', '2017_09_04_050502_create_currencies_table', '1');
INSERT INTO `migrations` VALUES ('21', '2017_09_04_054959_create_clients_table', '1');
INSERT INTO `migrations` VALUES ('22', '2017_09_23_170127_create_washing_prices_table', '1');
INSERT INTO `migrations` VALUES ('23', '2017_09_25_161215_create_blogs_table', '1');
INSERT INTO `migrations` VALUES ('24', '2017_09_26_155246_create_vehicle_companies_table', '1');
INSERT INTO `migrations` VALUES ('25', '2017_09_26_155423_create_vehicle_modals_table', '1');
INSERT INTO `migrations` VALUES ('26', '2017_10_14_100754_create_team_tasks_table', '2');
INSERT INTO `migrations` VALUES ('27', '2017_10_15_034647_create_payments_table', '3');
INSERT INTO `migrations` VALUES ('28', '2017_10_15_114415_create_contacts_table', '4');
INSERT INTO `migrations` VALUES ('29', '2017_10_15_121509_create_contacts_table', '5');
INSERT INTO `migrations` VALUES ('30', '2017_10_17_091908_create_appointment_user_table', '6');
INSERT INTO `migrations` VALUES ('31', '2017_10_17_094134_create_appointment_user_table', '7');
INSERT INTO `migrations` VALUES ('32', '2017_10_17_094915_create_appointment_user_table', '8');
INSERT INTO `migrations` VALUES ('33', '2017_10_17_095317_create_appointment_users_table', '9');
INSERT INTO `migrations` VALUES ('34', '2017_10_17_112232_create_appointment_user_table', '10');
INSERT INTO `migrations` VALUES ('35', '2017_10_17_115027_create_appointment_users_table', '11');
INSERT INTO `migrations` VALUES ('36', '2017_10_17_121200_create_appointment_users_table', '12');
INSERT INTO `migrations` VALUES ('37', '2017_10_27_102924_create_social_teams_table', '13');
INSERT INTO `migrations` VALUES ('38', '2017_10_27_105735_create_company_socials_table', '14');
INSERT INTO `migrations` VALUES ('39', '2017_10_27_161809_create_appointment_users_table', '15');
INSERT INTO `migrations` VALUES ('40', '2017_10_27_162652_create_appointments_table', '16');
INSERT INTO `migrations` VALUES ('41', '2017_10_30_072432_add_logo_two_col_in_contact_table', '17');

-- ----------------------------
-- Table structure for opening_hours
-- ----------------------------
DROP TABLE IF EXISTS `opening_hours`;
CREATE TABLE `opening_hours` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of opening_hours
-- ----------------------------
INSERT INTO `opening_hours` VALUES ('1', 'Monday', '09:00 AM', '08:00 PM', '2017-10-14 17:31:55', '2017-10-24 19:28:49');
INSERT INTO `opening_hours` VALUES ('2', 'Tuesday', '09:00 AM', '08:00 PM', '2017-10-18 14:03:49', '2017-10-27 17:42:59');
INSERT INTO `opening_hours` VALUES ('3', 'Wednesday', '09:00 AM', '08:00 PM', '2017-10-18 14:04:04', '2017-10-27 17:43:03');
INSERT INTO `opening_hours` VALUES ('4', 'Thursday', '09:00 AM', '08:00 PM', '2017-10-18 14:04:13', '2017-10-27 17:43:07');
INSERT INTO `opening_hours` VALUES ('5', 'Friday', '09:00 AM', '08:00 PM', '2017-10-18 14:05:00', '2017-10-27 17:43:10');
INSERT INTO `opening_hours` VALUES ('6', 'Saturday', '09:00 AM', '08:00 PM', '2017-10-18 14:05:10', '2017-10-27 17:43:12');
INSERT INTO `opening_hours` VALUES ('7', 'Sunday', '-', '-', '2017-10-18 14:05:21', '2017-10-18 14:05:21');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('jhon@info.com', '$2y$10$fUNz3TehKDjlykLitNmHZ.N7rPX5lx6P/HufToAOvYcrkVy5mavRS', '2017-10-29 17:10:43');
INSERT INTO `password_resets` VALUES ('admin@info.com', '$2y$10$PKxWhyb3iNgL79XjmeWys.myhne2fEn61k/a8eTQr4ScFTHVIIy4a', '2017-10-30 02:06:05');

-- ----------------------------
-- Table structure for payment_modes
-- ----------------------------
DROP TABLE IF EXISTS `payment_modes`;
CREATE TABLE `payment_modes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payment_modes
-- ----------------------------
INSERT INTO `payment_modes` VALUES ('1', 'Cash', '2017-10-14 13:38:21', '2017-10-14 13:38:21');
INSERT INTO `payment_modes` VALUES ('2', 'Cheque', '2017-10-14 14:14:01', '2017-10-14 14:14:01');

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('1', '1507962334service-01.png', 'Vehicle Hand Wash', 'Lorem ipsum dolor sit amet cons elit aenean commodo ligula egetetsg cum sociis natoque enatib..', '2017-10-14 14:25:34', '2017-10-14 14:28:55');
INSERT INTO `services` VALUES ('2', '1508243756service-02.png', 'Headlight Lens Restoration', 'Lorem ipsum dolor sit amet cons elit aenean commodo ligula egetetsg cum sociis natoque enatib.', '2017-10-17 20:35:56', '2017-10-18 12:26:04');
INSERT INTO `services` VALUES ('3', '1508300901service-03.png', 'Scratch Removal', 'Lorem ipsum dolor sit amet cons elit aenean commodo ligula egetetsg cum sociis natoque enatib.', '2017-10-18 12:28:21', '2017-10-18 12:28:21');
INSERT INTO `services` VALUES ('4', '1508300916service-04.png', 'Tar Removal', 'Lorem ipsum dolor sit amet cons elit aenean commodo ligula egetetsg cum sociis natoque enatib.', '2017-10-18 12:28:36', '2017-10-18 12:28:36');
INSERT INTO `services` VALUES ('5', '1508300930service-05.png', 'Odor Elimination', 'Lorem ipsum dolor sit amet cons elit aenean commodo ligula egetetsg cum sociis natoque enatib.', '2017-10-18 12:28:50', '2017-10-18 12:28:50');
INSERT INTO `services` VALUES ('6', '1508300944service-06.png', 'Engine Cleaning', 'Lorem ipsum dolor sit amet cons elit aenean commodo ligula egetetsg cum sociis natoque enatib.', '2017-10-18 12:29:04', '2017-10-18 12:29:04');
INSERT INTO `services` VALUES ('7', '1508300977service-07.png', 'Hazardous Cleaning', 'Lorem ipsum dolor sit amet cons elit aenean commodo ligula egetetsg cum sociis natoque enatib.', '2017-10-18 12:29:37', '2017-10-18 12:29:37');
INSERT INTO `services` VALUES ('8', '1508300999service-08.png', 'Valet Service', 'Lorem ipsum dolor sit amet cons elit aenean commodo ligula egetetsg cum sociis natoque enatib.', '2017-10-18 12:29:59', '2017-10-18 12:29:59');

-- ----------------------------
-- Table structure for social_teams
-- ----------------------------
DROP TABLE IF EXISTS `social_teams`;
CREATE TABLE `social_teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` int(10) unsigned NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `social` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_teams_team_id_foreign` (`team_id`),
  CONSTRAINT `social_teams_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of social_teams
-- ----------------------------
INSERT INTO `social_teams` VALUES ('1', '1', '#', 'Facebook', 'fa-facebook', '2017-10-27 18:38:44', '2017-10-27 18:41:13');
INSERT INTO `social_teams` VALUES ('2', '1', '#', 'Google', 'fa-google', '2017-10-30 20:02:55', '2017-10-30 20:02:55');
INSERT INTO `social_teams` VALUES ('3', '1', '#', 'Twitter', 'fa-twitter', '2017-10-30 20:03:10', '2017-10-30 20:03:10');
INSERT INTO `social_teams` VALUES ('4', '1', '#', 'Pinterest', 'fa-pinterest', '2017-10-30 20:03:21', '2017-10-30 20:03:21');
INSERT INTO `social_teams` VALUES ('5', '2', '#', 'Facebook', 'fa-facebook', '2017-10-30 20:03:35', '2017-10-30 20:03:35');
INSERT INTO `social_teams` VALUES ('6', '2', '#', 'Twitter', 'fa-twitter', '2017-10-30 20:03:51', '2017-10-30 20:03:51');
INSERT INTO `social_teams` VALUES ('7', '2', '#', 'Google', 'fa-google', '2017-10-30 20:04:03', '2017-10-30 20:04:03');
INSERT INTO `social_teams` VALUES ('8', '2', '#', 'Pinterest', 'fa-pinterest', '2017-10-30 20:04:14', '2017-10-30 20:04:14');
INSERT INTO `social_teams` VALUES ('9', '5', '#', 'Facebook', 'fa-facebook', '2017-10-30 20:04:29', '2017-10-30 20:04:29');
INSERT INTO `social_teams` VALUES ('10', '5', '#', 'Twitter', 'fa-twitter', '2017-10-30 20:04:40', '2017-10-30 20:04:40');
INSERT INTO `social_teams` VALUES ('11', '5', '#', 'Google', 'fa-google', '2017-10-30 20:04:51', '2017-10-30 20:04:51');
INSERT INTO `social_teams` VALUES ('12', '5', '#', 'Pinterest', 'fa-pinterest', '2017-10-30 20:05:02', '2017-10-30 20:05:02');
INSERT INTO `social_teams` VALUES ('13', '6', '#', 'Facebook', 'fa-facebook', '2017-10-30 20:05:14', '2017-10-30 20:05:14');
INSERT INTO `social_teams` VALUES ('14', '6', '#', 'Twitter', 'fa-twitter', '2017-10-30 20:05:30', '2017-10-30 20:05:30');
INSERT INTO `social_teams` VALUES ('15', '6', '#', 'Google', 'fa-google', '2017-10-30 20:05:40', '2017-10-30 20:05:40');
INSERT INTO `social_teams` VALUES ('16', '6', '#', 'Pinterest', 'fa-pinterest', '2017-10-30 20:05:51', '2017-10-30 20:05:51');
INSERT INTO `social_teams` VALUES ('17', '7', '#', 'Facebook', 'fa-facebook', '2017-10-30 20:06:06', '2017-10-30 20:06:06');
INSERT INTO `social_teams` VALUES ('18', '7', '#', 'Twitter', 'fa-twitter', '2017-10-30 20:06:20', '2017-10-30 20:06:20');
INSERT INTO `social_teams` VALUES ('19', '7', '#', 'Google', 'fa-google', '2017-10-30 20:06:36', '2017-10-30 20:06:36');
INSERT INTO `social_teams` VALUES ('20', '7', '#', 'Pinterest', 'fa-pinterest', '2017-10-30 20:06:47', '2017-10-30 20:06:47');
INSERT INTO `social_teams` VALUES ('21', '8', '#', 'Facebook', 'fa-facebook', '2017-10-30 20:07:01', '2017-10-30 20:07:01');
INSERT INTO `social_teams` VALUES ('22', '8', '#', 'Twitter', 'fa-twitter', '2017-10-30 20:07:21', '2017-10-30 20:07:21');
INSERT INTO `social_teams` VALUES ('23', '8', '#', 'Google', 'fa-google', '2017-10-30 20:07:55', '2017-10-30 20:07:55');
INSERT INTO `social_teams` VALUES ('24', '8', '#', 'Pinterest', 'fa-pinterest', '2017-10-30 20:08:13', '2017-10-30 20:08:13');
INSERT INTO `social_teams` VALUES ('25', '9', '#', 'Facebook', 'fa-facebook', '2017-10-30 20:08:27', '2017-10-30 20:08:27');
INSERT INTO `social_teams` VALUES ('26', '9', '#', 'Instagram', 'fa-instagram', '2017-10-30 20:08:37', '2017-10-30 20:08:37');
INSERT INTO `social_teams` VALUES ('27', '9', '#', 'Google', 'fa-google', '2017-10-30 20:09:00', '2017-10-30 20:09:00');
INSERT INTO `social_teams` VALUES ('28', '9', '#', 'You Tube', 'fa-youtube', '2017-10-30 20:09:32', '2017-10-30 20:09:32');
INSERT INTO `social_teams` VALUES ('29', '10', '#', 'Facebook', 'fa-facebook', '2017-10-30 20:09:44', '2017-10-30 20:09:44');
INSERT INTO `social_teams` VALUES ('30', '10', '#', 'Google', 'fa-google', '2017-10-30 20:10:00', '2017-10-30 20:10:00');
INSERT INTO `social_teams` VALUES ('31', '10', '#', 'You Tube', 'fa-youtube', '2017-10-30 20:10:13', '2017-10-30 20:10:13');
INSERT INTO `social_teams` VALUES ('32', '10', '#', 'Github', 'fa-github', '2017-10-30 20:10:25', '2017-10-30 20:10:25');

-- ----------------------------
-- Table structure for statuses
-- ----------------------------
DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of statuses
-- ----------------------------
INSERT INTO `statuses` VALUES ('1', 'start', '2017-10-14 13:52:33', '2017-10-14 13:54:44');
INSERT INTO `statuses` VALUES ('2', 'pending', '2017-10-14 13:54:35', '2017-10-14 13:54:35');
INSERT INTO `statuses` VALUES ('3', 'complete', '2017-10-14 13:54:51', '2017-10-14 13:54:58');

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `post` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teams_email_unique` (`email`),
  UNIQUE KEY `teams_mobile_unique` (`mobile`),
  UNIQUE KEY `teams_photo_unique` (`photo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES ('1', '1509007033team-01.jpg', 'Sarah Johnson', 'sarah@gmail.com', 'F', '+1 1234567980', null, '1994-01-01', 'Mechanic', 'New York', 'A', '2017-10-11', '2017-10-10 15:04:20', '2017-10-26 16:37:59');
INSERT INTO `teams` VALUES ('2', '1508301367team-02.jpg', 'Jhon Doe', 'jhon@info.com', 'M', '+1234567890', null, '1990-02-06', 'Mechanic', 'New York', 'A', '2015-02-17', '2017-10-18 12:36:07', '2017-10-18 12:36:07');
INSERT INTO `teams` VALUES ('5', '1508301691team-03.jpg', 'Sarah Johnson', 'sarah2@gmail.com', 'F', '+123456789', null, '1993-01-20', 'Mechanic', 'London', 'A', '2017-10-18', '2017-10-18 12:41:12', '2017-10-18 12:41:31');
INSERT INTO `teams` VALUES ('6', '1508301867team-04.jpg', 'Mark Dwayne', 'mark@gmail.com', 'M', '+1279880007', '+1227667908', '1993-02-03', 'Mechanic', 'New York', 'A', '2017-10-20', '2017-10-18 12:44:27', '2017-10-18 12:44:27');
INSERT INTO `teams` VALUES ('7', '1508301954team-05.jpg', 'Sarah Johnson', 'sarah3@gmail.com', 'F', '+1234567899', null, '1990-06-11', 'Mechanic', 'London', 'D', '2017-10-18', '2017-10-18 12:45:54', '2017-10-18 13:06:36');
INSERT INTO `teams` VALUES ('8', '1508302091team-06.jpg', 'Sarah Clark', 'clark@gmail.com', 'F', '+1323287909', null, '1991-07-23', 'Mechanic', 'New York', 'D', '2017-10-24', '2017-10-18 12:48:11', '2017-10-18 12:48:11');
INSERT INTO `teams` VALUES ('9', '1508302204team-07.jpg', 'Jhon Doe', 'jhon2@info.com', 'M', '+1644567890', null, '1987-10-22', 'Mechanic', 'London', 'D', '2017-10-04', '2017-10-18 12:50:04', '2017-10-18 12:50:04');
INSERT INTO `teams` VALUES ('10', '1508302264team-08.jpg', 'Mark Dwayne', 'mark2@gmail.com', 'M', '+1248859698', null, '1993-10-07', 'Mechanic', 'London', 'D', '2017-10-19', '2017-10-18 12:51:04', '2017-10-18 12:51:04');

-- ----------------------------
-- Table structure for team_tasks
-- ----------------------------
DROP TABLE IF EXISTS `team_tasks`;
CREATE TABLE `team_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of team_tasks
-- ----------------------------
INSERT INTO `team_tasks` VALUES ('2', '1', '2', 'Car Wash Cleaned', '1', '2017-10-14 18:10:37', '2017-10-17 20:39:06');

-- ----------------------------
-- Table structure for testimonials
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testimonials_image_unique` (`image`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of testimonials
-- ----------------------------
INSERT INTO `testimonials` VALUES ('1', 'Sarah Casaro', '1508307063testimonials-client-01.jpg', 'Mechanic', '“ Curabitur ligula sapien tincidunt non euismod vitae posuere imperdiet leo maecenas malesuada praesent congue erat at massa sed cursus turpis vitae tortor donec posuere vulputate arcu phasellus accumsan cursus velit vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia. ”', '2017-10-18 14:11:03', '2017-10-18 14:11:03');
INSERT INTO `testimonials` VALUES ('2', 'Smith Casaro', '1508307080testimonials-client-02.jpg', 'Mechanic', '“ Curabitur ligula sapien tincidunt non euismod vitae posuere imperdiet leo maecenas malesuada praesent congue erat at massa sed cursus turpis vitae tortor donec posuere vulputate arcu phasellus accumsan cursus velit vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia. ”', '2017-10-18 14:11:20', '2017-10-18 14:11:20');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `role` char(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_mobile_unique` (`mobile`),
  UNIQUE KEY `users_photo_unique` (`photo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1507606503avatar04.png', 'admin', 'superadmin@gmail.com', '$2y$10$LbHybxxqYx2t4doniVh.xeBvLWhGZKrToQl7SQ4YwXkoiziHBiNTu', 'M', '1990-12-31', '+91 1234567890', null, 'New York', 'A', '56b6chTPCL9JoIw6CLRy4HZxyhUbk0YM7N30NxVS6Kvy759VV425bEZRyhfd', '2017-10-09 16:59:45', '2017-10-30 00:45:57');
INSERT INTO `users` VALUES ('2', '1507539799avatar5.png', 'Jhon Doe', 'jhon@info.com', '$2y$10$3bxELT.dOSPOPP0oHhU.xe3Z13w.7X2w.LssVYWKoA98yMUT9zcbO', 'M', '1990-10-09', '+91 231-5643-133', null, 'London, UK', 'S', 'ae47k3LXI4aPaT7C6sBKjQtAjOl2E0sfEm9bUFegUJFXHVjjdmn1KzdQaBSJ', '2017-10-09 17:03:19', '2017-10-17 16:23:28');

-- ----------------------------
-- Table structure for vehicle_companies
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_companies`;
CREATE TABLE `vehicle_companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vehicle_companies
-- ----------------------------
INSERT INTO `vehicle_companies` VALUES ('1', 'Tata', '2017-10-13 14:34:40', '2017-10-13 14:34:40');
INSERT INTO `vehicle_companies` VALUES ('2', 'Honda', '2017-10-13 14:35:06', '2017-10-13 14:35:06');

-- ----------------------------
-- Table structure for vehicle_modals
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_modals`;
CREATE TABLE `vehicle_modals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_modal` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_company_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicle_modals_vehicle_company_id_foreign` (`vehicle_company_id`),
  CONSTRAINT `vehicle_modals_vehicle_company_id_foreign` FOREIGN KEY (`vehicle_company_id`) REFERENCES `vehicle_companies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vehicle_modals
-- ----------------------------
INSERT INTO `vehicle_modals` VALUES ('1', 'modal 1 (Tata)', '1', '2017-10-13 14:35:47', '2017-10-13 14:35:47');
INSERT INTO `vehicle_modals` VALUES ('2', 'modal 2 (Tata)', '1', '2017-10-13 14:36:04', '2017-10-13 14:36:04');
INSERT INTO `vehicle_modals` VALUES ('3', 'modal 1 (Honda)', '2', '2017-10-13 14:36:24', '2017-10-13 14:36:24');
INSERT INTO `vehicle_modals` VALUES ('4', 'modal 2 (Honda)', '2', '2017-10-13 14:36:39', '2017-10-13 14:36:39');

-- ----------------------------
-- Table structure for vehicle_types
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_types`;
CREATE TABLE `vehicle_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of vehicle_types
-- ----------------------------
INSERT INTO `vehicle_types` VALUES ('1', 'icon-1', 'Regular Car', '2017-10-09 17:07:52', '2017-10-30 02:30:39');
INSERT INTO `vehicle_types` VALUES ('2', 'icon-2', 'Medium Car', '2017-10-09 17:08:13', '2017-10-14 12:41:22');
INSERT INTO `vehicle_types` VALUES ('3', 'icon-3', 'Compact Suv', '2017-10-09 17:08:41', '2017-10-14 12:41:36');
INSERT INTO `vehicle_types` VALUES ('4', 'icon-4', 'Mini Van', '2017-10-09 17:08:59', '2017-10-14 12:41:46');
INSERT INTO `vehicle_types` VALUES ('5', 'icon-5', 'Pickup Truck', '2017-10-09 17:09:13', '2017-10-14 12:41:52');
INSERT INTO `vehicle_types` VALUES ('6', 'icon-6', 'Cargo Truck', '2017-10-09 17:09:31', '2017-10-14 12:41:59');

-- ----------------------------
-- Table structure for washing_plans
-- ----------------------------
DROP TABLE IF EXISTS `washing_plans`;
CREATE TABLE `washing_plans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of washing_plans
-- ----------------------------
INSERT INTO `washing_plans` VALUES ('1', 'Basic Plan', '2017-10-09 17:18:51', '2017-10-09 17:18:51');
INSERT INTO `washing_plans` VALUES ('2', 'Deluxe Washing', '2017-10-09 17:19:01', '2017-10-09 17:19:01');
INSERT INTO `washing_plans` VALUES ('3', 'Ultimate Washing', '2017-10-09 17:19:13', '2017-10-09 17:19:13');
INSERT INTO `washing_plans` VALUES ('4', 'Super Washing', '2017-10-09 17:19:25', '2017-10-30 21:01:50');

-- ----------------------------
-- Table structure for washing_plan_includes
-- ----------------------------
DROP TABLE IF EXISTS `washing_plan_includes`;
CREATE TABLE `washing_plan_includes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `washing_plan_id` int(10) unsigned NOT NULL,
  `washing_plan_include` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `washing_plan_includes_washing_plan_id_foreign` (`washing_plan_id`),
  CONSTRAINT `washing_plan_includes_washing_plan_id_foreign` FOREIGN KEY (`washing_plan_id`) REFERENCES `washing_plans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of washing_plan_includes
-- ----------------------------
INSERT INTO `washing_plan_includes` VALUES ('1', '1', 'Exterior Hand Wash', '2017-10-09 17:40:31', '2017-10-14 18:12:50');
INSERT INTO `washing_plan_includes` VALUES ('2', '1', 'Towel Hand Dry', '2017-10-09 17:41:33', '2017-10-09 17:41:33');
INSERT INTO `washing_plan_includes` VALUES ('3', '1', 'Wheel Shines', '2017-10-09 17:41:47', '2017-10-30 20:59:35');
INSERT INTO `washing_plan_includes` VALUES ('4', '2', 'Exterior Hand Wash', '2017-10-09 17:42:00', '2017-10-09 17:42:00');
INSERT INTO `washing_plan_includes` VALUES ('5', '2', 'Towel Hand Dry', '2017-10-09 17:42:09', '2017-10-09 17:42:09');
INSERT INTO `washing_plan_includes` VALUES ('6', '2', 'Wheel Shine', '2017-10-09 17:42:20', '2017-10-09 17:42:41');
INSERT INTO `washing_plan_includes` VALUES ('7', '2', 'Tire Dressing', '2017-10-09 17:42:51', '2017-10-09 17:42:51');
INSERT INTO `washing_plan_includes` VALUES ('8', '2', 'Window In & Out', '2017-10-09 17:43:01', '2017-10-09 17:43:01');
INSERT INTO `washing_plan_includes` VALUES ('9', '2', 'Sealer Hand Wax', '2017-10-09 17:43:09', '2017-10-09 17:43:29');
INSERT INTO `washing_plan_includes` VALUES ('10', '3', 'Exterior Hand Wash', '2017-10-09 17:43:41', '2017-10-09 17:43:41');
INSERT INTO `washing_plan_includes` VALUES ('11', '3', 'Towel Hand Dry', '2017-10-09 17:43:51', '2017-10-09 17:43:51');
INSERT INTO `washing_plan_includes` VALUES ('12', '3', 'Wheel Shine', '2017-10-09 17:45:24', '2017-10-09 17:45:24');
INSERT INTO `washing_plan_includes` VALUES ('13', '3', 'Tire Dressing', '2017-10-09 17:45:33', '2017-10-09 17:45:33');
INSERT INTO `washing_plan_includes` VALUES ('14', '3', 'Window In & Out', '2017-10-09 17:47:01', '2017-10-09 17:47:01');
INSERT INTO `washing_plan_includes` VALUES ('15', '3', 'Sealer Hand Wax', '2017-10-09 17:47:16', '2017-10-09 17:47:16');
INSERT INTO `washing_plan_includes` VALUES ('16', '3', 'Interior Vacuum', '2017-10-09 17:47:26', '2017-10-09 17:47:26');
INSERT INTO `washing_plan_includes` VALUES ('17', '3', 'Door Shut’s & Plastics', '2017-10-09 17:47:34', '2017-10-09 17:47:34');
INSERT INTO `washing_plan_includes` VALUES ('18', '3', 'Dashboard Clean', '2017-10-09 17:48:03', '2017-10-10 18:24:55');
INSERT INTO `washing_plan_includes` VALUES ('19', '4', 'Exterior Hand Wash', '2017-10-09 17:49:17', '2017-10-09 17:49:17');
INSERT INTO `washing_plan_includes` VALUES ('20', '4', 'Towel Hand Dry', '2017-10-09 17:49:24', '2017-10-09 17:49:44');
INSERT INTO `washing_plan_includes` VALUES ('21', '4', 'Wheel Shine', '2017-10-09 17:50:27', '2017-10-09 17:50:27');
INSERT INTO `washing_plan_includes` VALUES ('22', '4', 'Tire Dressing', '2017-10-09 17:50:41', '2017-10-09 17:50:41');
INSERT INTO `washing_plan_includes` VALUES ('23', '4', 'Window In & Out', '2017-10-09 17:50:50', '2017-10-09 17:50:50');
INSERT INTO `washing_plan_includes` VALUES ('24', '4', 'Sealer Hand Wax', '2017-10-09 17:50:59', '2017-10-09 17:50:59');
INSERT INTO `washing_plan_includes` VALUES ('25', '4', 'Interior Vacuum', '2017-10-09 17:51:07', '2017-10-09 17:51:07');
INSERT INTO `washing_plan_includes` VALUES ('26', '4', 'Door Shut’s & Plastics', '2017-10-09 17:51:17', '2017-10-09 17:51:17');
INSERT INTO `washing_plan_includes` VALUES ('27', '4', 'Dashboard Clean', '2017-10-09 17:51:25', '2017-10-09 17:51:25');
INSERT INTO `washing_plan_includes` VALUES ('28', '4', 'Air Freshener', '2017-10-09 17:51:37', '2017-10-09 17:51:37');
INSERT INTO `washing_plan_includes` VALUES ('29', '4', 'Triple Coat Hand Wax', '2017-10-09 17:51:46', '2017-10-09 17:51:46');

-- ----------------------------
-- Table structure for washing_prices
-- ----------------------------
DROP TABLE IF EXISTS `washing_prices`;
CREATE TABLE `washing_prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `washing_plan_id` int(11) NOT NULL,
  `vehicle_type_id` int(11) NOT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of washing_prices
-- ----------------------------
INSERT INTO `washing_prices` VALUES ('1', '1', '1', '$50', '25 mins', '2017-10-09 17:57:26', '2017-10-14 18:24:31');
INSERT INTO `washing_prices` VALUES ('2', '2', '1', '$69.00', '45 Mins', '2017-10-09 17:58:12', '2017-10-09 17:58:12');
INSERT INTO `washing_prices` VALUES ('3', '3', '1', '$89.00', '90 Mins', '2017-10-09 18:01:24', '2017-10-09 18:01:24');
INSERT INTO `washing_prices` VALUES ('4', '4', '1', '$109.00', '100 Mins', '2017-10-09 18:01:43', '2017-10-09 18:01:43');
INSERT INTO `washing_prices` VALUES ('5', '1', '2', '$50.00', '20 Mins', '2017-10-09 18:03:05', '2017-10-09 18:03:05');
INSERT INTO `washing_prices` VALUES ('6', '2', '2', '$70.00', '45 Mins', '2017-10-09 18:03:36', '2017-10-09 18:03:36');
INSERT INTO `washing_prices` VALUES ('7', '3', '2', '$90.00', '70 Mins', '2017-10-09 18:04:00', '2017-10-09 18:04:00');
INSERT INTO `washing_prices` VALUES ('8', '4', '2', '$110.00', '110 Mins', '2017-10-09 18:04:32', '2017-10-09 18:04:32');
INSERT INTO `washing_prices` VALUES ('9', '1', '3', '$45.00', '30 Mins', '2017-10-09 18:04:51', '2017-10-09 18:04:51');
INSERT INTO `washing_prices` VALUES ('10', '2', '3', '$70.00', '60 Mins', '2017-10-09 18:05:07', '2017-10-09 18:05:07');
INSERT INTO `washing_prices` VALUES ('11', '3', '3', '$90.00', '80 Mins', '2017-10-09 18:05:57', '2017-10-12 15:21:19');
INSERT INTO `washing_prices` VALUES ('12', '4', '3', '$120.00', '110 Mins', '2017-10-09 18:06:16', '2017-10-09 18:06:16');
INSERT INTO `washing_prices` VALUES ('13', '1', '4', '$50.00', '30 Mins', '2017-10-09 18:06:37', '2017-10-09 18:06:37');
INSERT INTO `washing_prices` VALUES ('14', '2', '4', '$60.00', '40 Mins', '2017-10-09 18:06:59', '2017-10-09 18:06:59');
INSERT INTO `washing_prices` VALUES ('15', '3', '4', '$70.00', '60 Mins', '2017-10-09 18:07:17', '2017-10-09 18:07:17');
INSERT INTO `washing_prices` VALUES ('16', '4', '4', '$90.00', '90 Mins', '2017-10-09 18:08:06', '2017-10-09 18:08:06');
INSERT INTO `washing_prices` VALUES ('17', '1', '5', '$45.00', '25 Mins', '2017-10-09 18:08:29', '2017-10-09 18:08:29');
INSERT INTO `washing_prices` VALUES ('18', '2', '5', '$60.00', '45 Mins', '2017-10-09 18:10:04', '2017-10-09 18:10:04');
INSERT INTO `washing_prices` VALUES ('19', '3', '5', '$70.00', '80 Mins', '2017-10-09 18:11:09', '2017-10-09 18:11:09');
INSERT INTO `washing_prices` VALUES ('20', '4', '5', '$100.00', '90 Mins', '2017-10-09 18:11:28', '2017-10-09 18:11:28');
INSERT INTO `washing_prices` VALUES ('21', '1', '6', '$60', '45 Mins', '2017-10-09 18:11:45', '2017-10-09 18:11:45');
INSERT INTO `washing_prices` VALUES ('22', '2', '6', '$80.00', '60 Mins', '2017-10-09 18:12:09', '2017-10-09 18:12:09');
INSERT INTO `washing_prices` VALUES ('23', '3', '6', '$100.00', '100 Mins', '2017-10-09 18:12:29', '2017-10-09 18:12:29');
INSERT INTO `washing_prices` VALUES ('24', '4', '6', '$125.00', '120 Mins', '2017-10-09 18:12:50', '2017-10-09 18:12:50');
