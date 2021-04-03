#
# TABLE STRUCTURE FOR: ads
#

DROP TABLE IF EXISTS ads;

CREATE TABLE `ads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

INSERT INTO ads (`id`, `name`, `url`, `image`, `ordering`, `status`) VALUES (28, 'VBCVBCV', 'http://aomuavietnam.com', '1393151873.jpg', 0, 1);


#
# TABLE STRUCTURE FOR: ads_category
#

DROP TABLE IF EXISTS ads_category;

CREATE TABLE `ads_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) unsigned DEFAULT '0',
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `image` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ordering` int(11) unsigned NOT NULL DEFAULT '1',
  `lang` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO ads_category (`id`, `cat_id`, `name`, `image`, `url`, `ordering`, `lang`, `published`) VALUES (6, 3, 'sdfsdfs', '1395460170.png', 'http://', 1, 'vi', 1);


#
# TABLE STRUCTURE FOR: ads_doitac
#

DROP TABLE IF EXISTS ads_doitac;

CREATE TABLE `ads_doitac` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(254) DEFAULT NULL,
  `url` varchar(254) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  `lang` varchar(2) DEFAULT 'vi',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ads_right
#

DROP TABLE IF EXISTS ads_right;

CREATE TABLE `ads_right` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(254) DEFAULT NULL,
  `price_old` decimal(11,0) unsigned DEFAULT NULL,
  `price` decimal(11,0) unsigned DEFAULT NULL,
  `url` varchar(254) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  `lang` varchar(2) DEFAULT 'vi',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: branch
#

DROP TABLE IF EXISTS branch;

CREATE TABLE `branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) DEFAULT NULL,
  `address` varchar(254) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(200) DEFAULT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO branch (`id`, `name`, `address`, `email`, `phone`, `fax`, `hotline`, `lat`, `lng`) VALUES (1, 'Head office', 'SS1N Hồng Lĩnh, Phường 15, Quận 10, Tp.Hồ Chí Minh', 'info@fyi.vn', '(08) 3977 8088', '(08) 3977 8068', '1800 6839', '10.7796653', '106.66273950000004');
INSERT INTO branch (`id`, `name`, `address`, `email`, `phone`, `fax`, `hotline`, `lat`, `lng`) VALUES (2, 'FYI HÀ NỘI', 'Ngõ 124 Vĩnh Tuy ,Q. Hai Bà Trưng, Hà Nội', 'info@fyi.vn', '', '', '1800 6839', '20.9998712', '105.84955660000003');


#
# TABLE STRUCTURE FOR: branch_en
#

DROP TABLE IF EXISTS branch_en;

CREATE TABLE `branch_en` (
  `id` int(11) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `address` varchar(254) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(200) DEFAULT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `lat` varchar(100) DEFAULT NULL,
  `lng` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO branch_en (`id`, `name`, `address`, `email`, `phone`, `fax`, `hotline`, `lat`, `lng`) VALUES (1, 'Head office', 'SS1N Hồng Lĩnh, Phường 15, Quận 10, Tp.Hồ Chí Minh', 'info@fyi.vn', '(08) 3977 8088', '(08) 3977 8068', '1800 6839', '10.7796653', '106.66273950000004');
INSERT INTO branch_en (`id`, `name`, `address`, `email`, `phone`, `fax`, `hotline`, `lat`, `lng`) VALUES (2, 'FYI HÀ NỘI', 'Ngõ 124 Vĩnh Tuy ,Q. Hai Bà Trưng, Hà Nội', 'info@fyi.vn', '', '', '1800 6839', '20.9998712', '105.84955660000003');


#
# TABLE STRUCTURE FOR: captcha
#

DROP TABLE IF EXISTS captcha;

CREATE TABLE `captcha` (
  `captcha_id` int(11) NOT NULL AUTO_INCREMENT,
  `captcha_time` int(11) DEFAULT NULL,
  `ip_address` varchar(200) DEFAULT NULL,
  `word` varchar(200) DEFAULT NULL,
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`captcha_id`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (74, 1329768257, '127.0.0.1', 'P42X', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (75, 1329768498, '127.0.0.1', 'GF3T', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (76, 1329768510, '127.0.0.1', 'JNZ1', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (77, 1329768525, '127.0.0.1', '42E7', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (78, 1329768852, '127.0.0.1', '08XC', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (79, 1329768901, '127.0.0.1', 'RMC4', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (80, 1329768913, '127.0.0.1', 'OCNJ', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (81, 1329768952, '127.0.0.1', '6JNM', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (82, 1329768971, '127.0.0.1', 'STLO', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (83, 1329769036, '127.0.0.1', 'YBUO', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (84, 1329769070, '127.0.0.1', 'B9XC', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (85, 1329769200, '127.0.0.1', 'ZRS5', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (86, 1329769202, '127.0.0.1', '4NFJ', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (87, 1329769221, '127.0.0.1', 'GGAR', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (88, 1329769225, '127.0.0.1', 'M5N9', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (89, 1329769228, '127.0.0.1', '23PL', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (90, 1329769250, '127.0.0.1', 'PY8L', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (91, 1329770217, '127.0.0.1', '5S53', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (92, 1329770244, '127.0.0.1', 'FNV3', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (93, 1329770245, '127.0.0.1', 'DI81', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (94, 1329770277, '127.0.0.1', 'UX8V', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (95, 1329770534, '127.0.0.1', 'JC7G', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (96, 1329770608, '127.0.0.1', '73UB', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (97, 1329770806, '127.0.0.1', 'U74E', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (98, 1329770852, '127.0.0.1', '1T97', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (99, 1329770877, '127.0.0.1', 'YNRE', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (100, 1329771025, '127.0.0.1', '2H2N', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (101, 1329771042, '127.0.0.1', 'PA6E', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (102, 1329771055, '127.0.0.1', 'MNWO', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (103, 1329771118, '127.0.0.1', 'F6X0', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (104, 1329771143, '127.0.0.1', '9YXV', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (105, 1329771172, '127.0.0.1', 'UCEW', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (106, 1329771208, '127.0.0.1', 'KDE4', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (107, 1329771228, '127.0.0.1', 'T9XJ', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (108, 1329771257, '127.0.0.1', '5PDM', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (109, 1329771551, '127.0.0.1', '2IXA', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (110, 1329771593, '127.0.0.1', 'XHI8', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (111, 1329771691, '127.0.0.1', 'C6B2', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (112, 1329772770, '127.0.0.1', 'TRX8', '7dfd6af4162aada5c760f8c014820cc3');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (113, 1329791400, '127.0.0.1', '79A1', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (114, 1329791527, '127.0.0.1', 'ZDQ1', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (115, 1329792372, '127.0.0.1', 'B60Q', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (116, 1329792417, '127.0.0.1', 'HHB6', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (117, 1329792546, '127.0.0.1', 'PVFU', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (118, 1329792827, '127.0.0.1', 'R31W', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (119, 1329792830, '127.0.0.1', 'FET5', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (120, 1329792847, '127.0.0.1', 'NW7K', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (121, 1329792964, '127.0.0.1', 'BYXP', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (122, 1329792983, '127.0.0.1', 'VI1N', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (123, 1329793035, '127.0.0.1', 'NYWD', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (124, 1329793119, '127.0.0.1', '9KSX', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (125, 1329793127, '127.0.0.1', 'BPF2', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (126, 1329793154, '127.0.0.1', 'ESFZ', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (127, 1329793281, '127.0.0.1', '3IA2', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (128, 1329793292, '127.0.0.1', 'URFE', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (129, 1329793330, '127.0.0.1', 'QW3H', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (130, 1329793341, '127.0.0.1', 'LPBQ', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (131, 1329793344, '127.0.0.1', 'H6TF', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (132, 1329793390, '127.0.0.1', 'M195', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (133, 1329793482, '127.0.0.1', '3HK6', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (134, 1329793549, '127.0.0.1', 'Z8KD', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (135, 1329793564, '127.0.0.1', 'GS61', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (136, 1329793688, '127.0.0.1', 'WMNB', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (137, 1329793872, '127.0.0.1', 'X1AM', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (138, 1329793930, '127.0.0.1', '0SVN', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (139, 1329793950, '127.0.0.1', '79RV', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (140, 1329793963, '127.0.0.1', 'O8FP', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (141, 1329794063, '127.0.0.1', '6IYA', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (142, 1329794077, '127.0.0.1', '8BN2', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (143, 1329794161, '127.0.0.1', 'E3GF', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (144, 1329794210, '127.0.0.1', 'PI6S', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (145, 1329794230, '127.0.0.1', 'IVO5', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (146, 1329794612, '127.0.0.1', '6GQJ', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (147, 1329794634, '127.0.0.1', 'TRXN', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (148, 1329794655, '127.0.0.1', 'UD8T', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (149, 1329794703, '127.0.0.1', 'SRRB', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (150, 1329794731, '127.0.0.1', 'SWJI', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (151, 1329794747, '127.0.0.1', 'Q78K', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (152, 1329794968, '127.0.0.1', 'QUWB', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (153, 1329794991, '127.0.0.1', '2SSR', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (154, 1329795721, '127.0.0.1', '5UB8', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (155, 1329795787, '127.0.0.1', 'PV69', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (156, 1329795827, '127.0.0.1', 'USBS', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (157, 1329795869, '127.0.0.1', 'MUK3', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (158, 1329795917, '127.0.0.1', 'G34G', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (159, 1329795961, '127.0.0.1', '23N8', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (160, 1329795971, '127.0.0.1', '1IW7', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (161, 1329795991, '127.0.0.1', 'BLV3', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (162, 1329796074, '127.0.0.1', 'LHRB', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (163, 1329796113, '127.0.0.1', 'OD7G', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (164, 1329796131, '127.0.0.1', 'K72A', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (165, 1329796133, '127.0.0.1', 'GLKB', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (166, 1329796148, '127.0.0.1', '8AQY', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (167, 1329796169, '127.0.0.1', 'KQ8M', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (168, 1329796188, '127.0.0.1', 'UIF7', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (169, 1329796258, '127.0.0.1', 'ATJ9', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (170, 1329796281, '127.0.0.1', 'MSB7', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (171, 1329796282, '127.0.0.1', 'IMY5', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (172, 1329796308, '127.0.0.1', 'A8UP', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (173, 1329796337, '127.0.0.1', '7T68', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (174, 1329796359, '127.0.0.1', 'PMAM', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (175, 1329796376, '127.0.0.1', '167Q', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (176, 1329796411, '127.0.0.1', 'H0UD', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (177, 1329796489, '127.0.0.1', '438W', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (178, 1329796537, '127.0.0.1', 'SUWT', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (179, 1329796706, '127.0.0.1', 'XR1Y', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (180, 1329796743, '127.0.0.1', 'FHVR', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (181, 1329796785, '127.0.0.1', '691Z', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (182, 1329796839, '127.0.0.1', 'ZFQS', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (183, 1329796899, '127.0.0.1', 'HOHY', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (184, 1329796910, '127.0.0.1', '69YJ', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (185, 1329796911, '127.0.0.1', 'CQZ4', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (186, 1329796933, '127.0.0.1', 'OYNV', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (187, 1329796935, '127.0.0.1', 'RV5U', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (188, 1329796939, '127.0.0.1', '4SOX', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (189, 1329796959, '127.0.0.1', 'T3FD', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (190, 1329796979, '127.0.0.1', 'TGCA', 'a6722feeac15040dad147998e9dbb2b9');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (191, 1329797067, '127.0.0.1', 'LBGP', '7581646576d4e3c459fd121487b034aa');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (192, 1329797095, '127.0.0.1', 'UET5', '7581646576d4e3c459fd121487b034aa');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (193, 1329797167, '127.0.0.1', 'F9U3', '7581646576d4e3c459fd121487b034aa');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (194, 1329797249, '127.0.0.1', 'OV8N', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (195, 1329797255, '127.0.0.1', 'SSPY', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (196, 1329797320, '127.0.0.1', 'KT5B', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (197, 1329797326, '127.0.0.1', 'Z1YY', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (198, 1329797379, '127.0.0.1', 'QUYM', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (199, 1329797446, '127.0.0.1', 'OIQF', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (200, 1329797495, '127.0.0.1', 'YFLZ', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (201, 1329797612, '127.0.0.1', '4SYR', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (202, 1329797645, '127.0.0.1', 'ROD8', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (203, 1329797683, '127.0.0.1', '5DUW', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (204, 1329797763, '127.0.0.1', 'VMUY', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (205, 1329797808, '127.0.0.1', '423B', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (206, 1329797812, '127.0.0.1', 'UUN2', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (207, 1329797822, '127.0.0.1', 'NXM3', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (208, 1329797829, '127.0.0.1', 'KDJT', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (209, 1329797893, '127.0.0.1', 'NC9R', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (210, 1329797906, '127.0.0.1', '8J34', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (211, 1329797934, '127.0.0.1', '7P8N', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (212, 1329797940, '127.0.0.1', 'FVG9', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (213, 1329797951, '127.0.0.1', 'KKDG', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (214, 1329798000, '127.0.0.1', 'ITNV', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (215, 1329798027, '127.0.0.1', 'X20B', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (216, 1329798032, '127.0.0.1', '26NY', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (217, 1329798043, '127.0.0.1', '03MQ', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (218, 1329798062, '127.0.0.1', 'Z9PD', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (219, 1329798072, '127.0.0.1', 'L9W0', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (220, 1329798168, '127.0.0.1', 'OBMJ', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (221, 1329798193, '127.0.0.1', 'M91T', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (222, 1329798236, '127.0.0.1', 'A728', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (223, 1329798246, '127.0.0.1', '5T2B', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (224, 1329798276, '127.0.0.1', '08Y9', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (225, 1329798286, '127.0.0.1', 'PYAN', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (226, 1329798291, '127.0.0.1', '8B54', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (227, 1329798301, '127.0.0.1', '0NIM', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (228, 1329798331, '127.0.0.1', 'NXG5', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (229, 1329798418, '127.0.0.1', 'GWR4', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (230, 1329799006, '127.0.0.1', '3ME4', 'b2b3c66b3b943befd213251d212a0296');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (231, 1329799219, '127.0.0.1', '5DWX', '9baa88047fb1262999e4e4bd453467d8');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (232, 1329813797, '127.0.0.1', 'HWDL', '481790f40ae0796013f2e8baf876fdf5');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (233, 1329814159, '127.0.0.1', 'LZBQ', '481790f40ae0796013f2e8baf876fdf5');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (234, 1329814181, '127.0.0.1', 'OSO5', '481790f40ae0796013f2e8baf876fdf5');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (235, 1329815640, '127.0.0.1', 'KD23', '481790f40ae0796013f2e8baf876fdf5');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (236, 1329816683, '127.0.0.1', 'MB08', '3f81311fa2e090eef1f0c19a7dbf288b');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (237, 1329816684, '127.0.0.1', 'P7J7', '3f81311fa2e090eef1f0c19a7dbf288b');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (238, 1329825874, '127.0.0.1', 'UUF2', '5e2fe237a788a570160c099ac88e686b');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (239, 1329825875, '127.0.0.1', '9JYY', '5e2fe237a788a570160c099ac88e686b');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (240, 1329825914, '127.0.0.1', '7IKI', '5e2fe237a788a570160c099ac88e686b');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (241, 1329825914, '127.0.0.1', 'VKV1', '5e2fe237a788a570160c099ac88e686b');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (242, 1329832838, '127.0.0.1', 'Y6M1', '590218bfdc4fdbe43577691da0c802a7');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (243, 1330274167, '127.0.0.1', 'C63U', '5e62daa88c19ada8f18f7d1204d03c74');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (244, 1330274167, '127.0.0.1', '6NYK', '5e62daa88c19ada8f18f7d1204d03c74');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (245, 1330274469, '127.0.0.1', 'LT6Q', '5e62daa88c19ada8f18f7d1204d03c74');
INSERT INTO captcha (`captcha_id`, `captcha_time`, `ip_address`, `word`, `session_id`) VALUES (246, 1330274469, '127.0.0.1', 'GRN9', '5e62daa88c19ada8f18f7d1204d03c74');


#
# TABLE STRUCTURE FOR: category
#

DROP TABLE IF EXISTS category;

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `cat_title` varchar(254) DEFAULT NULL,
  `cat_alias` varchar(254) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `is_home` tinyint(1) unsigned DEFAULT '0',
  `lang` varchar(100) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (32, 0, 'Trợ giúp', 'tro-giup', NULL, 1, 1, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (34, 0, 'Dịch vụ khách hàng', 'dich-vu-khach-hang', NULL, 1, 1, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (35, 0, 'Trợ giúp khách hàng', 'tro-giup-khach-hang', NULL, 1, 1, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (36, 0, 'Ưu đãi khách hàng', 'uu-dai-khach-hang', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (37, 0, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (38, 0, 'Tuyển dụng', 'tuyen-dung', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (30, 0, 'Tin tức', 'tin-tuc', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (40, 0, 'Người mua', 'nguoi-mua', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (41, 0, 'Người bán', 'nguoi-ban', NULL, 1, 0, 'vi', 1);


#
# TABLE STRUCTURE FOR: category_en
#

DROP TABLE IF EXISTS category_en;

CREATE TABLE `category_en` (
  `cat_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cat_title` varchar(254) DEFAULT NULL,
  `cat_name` varchar(254) DEFAULT NULL,
  `cat_alias` varchar(254) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `is_home` tinyint(1) unsigned DEFAULT '0',
  `lang` varchar(100) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (30, 0, 'news', NULL, 'news', NULL, 1, 2, NULL, 1);
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (32, 0, 'Help', NULL, 'help', NULL, 1, 2, NULL, 1);
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (34, 0, 'Customer Service', NULL, 'customer-service', NULL, 1, 2, NULL, 1);
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (35, 0, 'Help customers', NULL, 'help-customers', NULL, 1, 2, NULL, 1);
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (36, 0, 'Customer preferences', NULL, 'customer-preferences', NULL, 1, 2, NULL, 1);
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (37, 0, 'Intro', NULL, 'intro', NULL, 1, 2, NULL, 1);
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (38, 0, 'Recruitment', NULL, 'recruitment', NULL, 1, 2, NULL, 1);
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (40, 0, 'Seller', NULL, 'seller', NULL, 1, 2, NULL, 1);
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (41, 0, 'Người bán', NULL, 'nguoi-ban', NULL, 1, 2, NULL, 1);


#
# TABLE STRUCTURE FOR: category_prod
#

DROP TABLE IF EXISTS category_prod;

CREATE TABLE `category_prod` (
  `cat_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) DEFAULT NULL,
  `note_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_hungarian_ci DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT '0',
  `image` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_alias` varchar(255) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT '1',
  `is_home` tinyint(1) unsigned DEFAULT '0',
  `lang` varchar(100) DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (17, 'Ram - Bộ nhớ', '', 3, NULL, 'ram-bo-nho', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (18, 'Thiết bị trữ', '', 3, NULL, 'thiet-bi-tru', 1, 1, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (19, 'VGA - Card màn hình', '', 3, NULL, 'vga-card-man-hinh', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (3, 'Thiết bị tin học', 'Mainboard, CPU, Ram, HDD ...', 0, NULL, 'thiet-bi-tin-hoc', 1, 1, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (23, 'ODD - ổ đĩa quang', '', 3, NULL, 'odd-o-dia-quang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (20, 'Case - Power', '', 3, NULL, 'case-power', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (21, 'Monitor', '', 3, NULL, 'monitor', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (22, 'Keyboard - Mouse', '', 3, NULL, 'keyboard-mouse', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (8, 'Máy tính PC', '', 1, NULL, 'may-tinh-pc', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (9, 'Laptop', '', 1, NULL, 'laptop', 2, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (15, 'Mainboard - Bo Mạch Chủ', '', 3, NULL, 'mainboard-bo-mach-chu', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (12, 'Compact', '', 8, NULL, 'compact', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (13, 'TEST CONM', '', 4, NULL, 'test-conm', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (14, 'TEST 1', '', 13, NULL, 'test-1', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (16, 'CPU - Bộ Vi Xử Lý', '', 3, NULL, 'cpu-bo-vi-xu-ly', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (24, 'Speaker - loa', '', 3, NULL, 'speaker-loa', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (25, 'Headphone - Tai nghe', '', 3, NULL, 'headphone-tai-nghe', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (26, 'UPS- Lưu trữ điện', '', 3, NULL, 'ups-luu-tru-dien', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (27, 'Khác', '', 3, NULL, 'khac', 1, 0, 'vi', 0, 0);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (28, 'Thiết bị mạng', 'switch, network wireless, capble ....', 0, NULL, 'thiet-bi-mang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (29, 'USB 3G', '', 28, NULL, 'usb-3g', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (30, 'Switch ', '', 28, NULL, 'switch', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (31, 'Network - Network wireless', '', 28, NULL, 'network-network-wireless', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (32, 'Caple', '', 28, NULL, 'caple', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (33, 'Khác', '', 28, NULL, 'khac', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (34, 'Thiết Bị Văn Phòng', 'Máy photocopy, máy in, máy fax....', 0, NULL, 'thiet-bi-van-phong', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (35, 'Máy in', '', 34, NULL, 'may-in', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (36, 'Máy scan', '', 34, NULL, 'may-scan', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (37, 'Máy Fax', '', 34, NULL, 'may-fax', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (38, 'Thiết Bị Trình Chiếu', '', 34, NULL, 'thiet-bi-trinh-chieu', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (39, 'Điện Thoại', 'Điện thoại di động, điện thoại bàn ...', 0, NULL, 'dien-thoai', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (40, 'Điện thoại di động', '', 39, NULL, 'dien-thoai-di-dong', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (41, 'Phụ kiện điện thoại', '', 39, NULL, 'phu-kien-dien-thoai', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (42, 'Điện thoại bàn', '', 39, NULL, 'dien-thoai-ban', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (43, 'Tổng đài điện thoại', '', 39, NULL, 'tong-dai-dien-thoai', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (44, 'Máy tính', 'laptop, desktop, table, mac apple...', 0, NULL, 'may-tinh', 1, 1, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (45, 'Thông tin khuyến mãi', 'sản phẩm dang khyến mãi ...', 0, NULL, 'thong-tin-khuyen-mai', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (46, 'Asus', '', 15, NULL, 'asus', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (47, 'Gigabyte', '', 15, NULL, 'gigabyte', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (48, 'Forconn', '', 15, NULL, 'forconn', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (49, 'Intel', '', 15, NULL, 'intel', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (50, 'Asrock', '', 15, NULL, 'asrock', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (51, 'Kingmax', '', 17, NULL, 'kingmax', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (52, 'Kington', '', 17, NULL, 'kington', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (53, 'Corsair', '', 17, NULL, 'corsair', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (54, 'Team', '', 17, NULL, 'team', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (55, 'Intel', '', 16, NULL, 'intel', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (56, 'AMD', '', 16, NULL, 'amd', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (57, 'HDD Internal', '', 18, NULL, 'hdd-internal', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (58, 'HDD External', '', 18, NULL, 'hdd-external', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (59, 'NAS - Lưu trữ mạng', '', 18, NULL, 'nas-luu-tru-mang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (60, 'USB', '', 18, NULL, 'usb', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (61, 'nViDIA series', '', 19, NULL, 'nvidia-series', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (62, 'ATI series', '', 19, NULL, 'ati-series', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (63, 'eMaster', '', 20, NULL, 'emaster', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (64, 'Khác', '', 20, NULL, 'khac', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (65, 'Philips', '', 21, NULL, 'philips', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (66, 'HP', '', 21, NULL, 'hp', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (67, 'Dell', '', 21, NULL, 'dell', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (68, 'Viewsonic', '', 21, NULL, 'viewsonic', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (69, 'Samsung', '', 21, NULL, 'samsung', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (70, 'Aser', '', 21, NULL, 'aser', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (71, 'Asus', '', 21, NULL, 'asus', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (72, 'AOC', '', 21, NULL, 'aoc', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (73, 'Genius', '', 22, NULL, 'genius', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (74, 'Logitech', '', 22, NULL, 'logitech', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (75, 'Mitsumi', '', 22, NULL, 'mitsumi', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (76, 'Lexma', '', 15, NULL, 'lexma', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (77, 'Boss', '', 24, NULL, 'boss', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (78, 'Genius', '', 24, NULL, 'genius', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (79, 'SoundMax', '', 24, NULL, 'soundmax', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (80, 'Logitech', '', 24, NULL, 'logitech', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (81, 'Microlab', '', 24, NULL, 'microlab', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (82, 'Laptop - Máy tính xách tay', '', 44, NULL, 'laptop-may-tinh-xach-tay', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (83, 'Tablet - Máy tính bảng', '', 44, NULL, 'tablet-may-tinh-bang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (84, 'PC - Máy tính để bàn', '', 44, NULL, 'pc-may-tinh-de-ban', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (85, 'Server - Máy chủ', '', 44, NULL, 'server-may-chu', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (86, 'Phụ kiện máy tính bảng', '', 44, NULL, 'phu-kien-may-tinh-bang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (87, 'Phụ kiện laptop', '', 44, NULL, 'phu-kien-laptop', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (88, 'Loa mini', 'loa cho điện thoại, laptop, máy tính bảng...', 24, NULL, 'loa-mini', 1, 0, 'vi', 0, 1);


#
# TABLE STRUCTURE FOR: city
#

DROP TABLE IF EXISTS city;

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `city_name` varchar(254) DEFAULT NULL,
  `city_url` varchar(254) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `site` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: site, 1: hệ thống',
  `rate` decimal(5,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=785 DEFAULT CHARSET=utf8;

INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (25, 0, 'TP Hồ Chí Minh', 'tp-ho-chi-minh', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (26, 0, 'TP. Hà Nội', 'tp-ha-noi', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (27, 25, 'Quận 1', 'quan-1', 1, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (28, 25, 'Quận 2', 'quan-2', 2, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (29, 25, 'Quận 3', 'quan-3', 3, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (30, 25, 'Quận 4', 'quan-4', 4, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (31, 25, 'Quận 5', 'quan-5', 5, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (32, 25, 'Quận 6', 'quan-6', 6, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (33, 25, 'Quận 7', 'quan-7', 7, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (34, 25, 'Quận 8', 'quan-8', 8, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (35, 25, 'Quận 9', 'quan-9', 9, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (36, 25, 'Quận 10', 'quan-10', 10, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (37, 25, 'Quận 11', 'quan-11', 11, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (38, 25, 'Quận 12', 'quan-12', 12, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (39, 25, 'Quận Bình Thạnh', 'quan-binh-thanh', 13, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (40, 25, 'Quận Bình Tân', 'quan-binh-tan', 14, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (41, 25, 'Quận Gò Vấp', 'quan-go-vap', 15, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (42, 25, 'Quận Phú Nhuận', 'quan-phu-nhuan', 16, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (43, 25, 'Quận Thủ Đức', 'quan-thu-duc', 17, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (44, 25, 'Quận Tân Bình', 'quan-tan-binh', 18, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (45, 25, 'Quận Tân Phú', 'quan-tan-phu', 19, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (46, 25, 'Huyện Bình Chánh', 'huyen-binh-chanh', 20, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (47, 25, 'Huyện Cần Giờ', 'huyen-can-gio', 21, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (48, 25, 'Huyện Củ Chi', 'huyen-cu-chi', 22, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (49, 25, 'Huyện Hóc Môn', 'huyen-hoc-mon', 23, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (50, 25, 'Huyện Nhà Bè', 'huyen-nha-be', 24, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (51, 26, 'Huyện Ba Vì', 'huyen-ba-vi', 1, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (52, 26, 'Huyện Chương Mỹ', 'huyen-chuong-my', 2, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (53, 26, 'Huyện Gia Lâm', 'huyen-gia-lam', 3, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (54, 26, 'Huyện Hoài Đức', 'huyen-hoai-duc', 4, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (55, 26, 'Huyện Mê Linh', 'huyen-me-linh', 5, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (56, 26, 'Huyễn Mỹ Đức', 'huyen-my-duc', 6, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (57, 26, 'Huyện Phú Xuyên', 'huyen-phu-xuyen', 7, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (58, 26, 'Huyện Phú Thọ', 'huyen-phu-tho', 8, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (59, 26, 'Huyện Quốc Oai', 'huyen-quoc-oai', 9, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (60, 26, 'Huyện Sóc Sơn', 'huyen-soc-son', 10, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (61, 26, 'Huyện Thanh Oai', 'huyen-thanh-oai', 11, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (62, 26, 'Huyện Thanh Trì', 'huyen-thanh-tri', 12, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (63, 26, 'Huyện Thường Tín', 'huyen-thuong-tin', 13, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (64, 26, 'Huyện Thạch Thất', 'huyen-thach-that', 14, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (65, 26, 'Huyện Từ Liêm', 'huyen-tu-liem', 15, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (66, 26, 'Huyện Đan Phượng', 'huyen-dan-phuong', 16, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (67, 26, 'Huyện Đông Anh', 'huyen-dong-anh', 17, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (68, 26, 'Huyện Ứng Hòa', 'huyen-ung-hoa', 18, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (69, 26, 'Quận Ba Đình', 'quan-ba-dinh', 19, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (70, 26, 'Quận Cầu Giấy', 'quan-cau-giay', 20, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (71, 26, 'Quận Hai Bà Trưng', 'quan-hai-ba-trung', 21, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (72, 26, 'Quận Hà Đông', 'quan-ha-dong', 22, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (73, 26, 'Quận Hoàng Kiếm', 'quan-hoang-kiem', 23, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (74, 26, 'Quận Hoàng Mai', 'quan-hoang-mai', 24, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (75, 26, 'Quận Long Biên', 'quan-long-bien', 25, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (76, 26, 'Quận Thanh Xuân', 'quan-thanh-xuan', 26, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (77, 26, 'Quận Tây Hồ', 'quan-tay-ho', 27, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (78, 26, 'Quận Đống Đa', 'quan-dong-da', 28, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (79, 26, 'Thị Xã Sơn Tây', 'thi-xa-son-tay', 29, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (80, 0, 'An Giang', 'an-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (81, 0, 'Bà Rịa - Vũng Tàu', 'ba-ria-vung-tau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (82, 0, 'Bình Dương', 'binh-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (83, 0, 'Bình Phước', 'binh-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (84, 0, 'Bình Thuận', 'binh-thuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (85, 80, 'Huyện An Phú', 'huyen-an-phu', 1, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (86, 80, 'Huyện Châu Phú', 'huyen-chau-phu', 2, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (87, 80, 'Huyện Châu Thành', 'huyen-chau-thanh', 3, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (88, 80, 'Huyện Chợ Mới', 'huyen-cho-moi', 4, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (89, 80, 'Huyện Phú Tân', 'huyen-phu-tan', 5, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (90, 80, 'Huyện Thoại Sơn', 'huyen-thoai-son', 6, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (91, 80, 'Huyện Tịnh Biên', 'huyen-tinh-bien', 7, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (92, 80, 'Huyện Tri Tôn', 'huyen-tri-ton', 8, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (93, 80, 'Thành phố Long Xuyên', 'thanh-pho-long-xuyen', 9, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (94, 80, 'Thị xã Châu Đốc', 'thi-xa-chau-doc', 10, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (95, 80, 'Thị xã Tân Châu', 'thi-xa-tan-chau', 11, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (96, 81, 'Huyện Châu Đức', 'huyen-chau-duc', 1, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (97, 81, 'Huyện Côn Đảo', 'huyen-con-dao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (98, 81, 'Huyện Đất Đỏ', 'huyen-dat-do', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (99, 81, 'Huyện Long Điền', 'huyen-long-dien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (100, 81, 'Huyện Tân Thành', 'huyen-tan-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (101, 81, 'Huyện Xuyên Mộc', 'huyen-xuyen-moc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (102, 81, 'Thành phố Vũng Tàu', 'thanh-pho-vung-tau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (103, 81, 'Thị xã Bà Rịa', 'thi-xa-ba-ria', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (104, 0, 'Bắc Giang', 'bac-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (105, 104, 'Huyện Hiệp Hòa', 'huyen-hiep-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (106, 104, 'Huyện Lạng Giang', 'huyen-lang-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (107, 104, 'Huyện Lục Nam', 'huyen-luc-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (108, 104, 'Huyện Lục Ngạn', 'huyen-luc-ngan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (109, 104, 'Huyện Sơn Động', 'huyen-son-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (110, 104, 'Huyện Tân Yên', 'huyen-tan-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (111, 104, 'Huyện Việt Yên', 'huyen-viet-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (112, 104, 'Huyện Yên Dũng', 'huyen-yen-dung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (113, 104, 'Huyện Yên Thế', 'huyen-yen-the', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (114, 104, 'Thành phố Bắc Giang', 'thanh-pho-bac-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (115, 0, 'Bắc Kạn', 'bac-kan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (116, 115, 'Huyện Ba Bể', 'huyen-ba-be', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (117, 115, 'Huyện Bạch Thông', 'huyen-bach-thong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (118, 115, 'Huyện Chợ Đồn', 'huyen-cho-don', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (119, 115, 'Huyện Chợ Mới', 'huyen-cho-moi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (120, 115, 'Huyện Na Rì', 'huyen-na-ri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (121, 115, 'Huyện Ngân Sơn', 'huyen-ngan-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (122, 115, 'Huyện Pác Nặm', 'huyen-pac-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (123, 115, 'Thị xã Bắc Kạn', 'thi-xa-bac-kan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (124, 0, 'Bạc Liêu', 'bac-lieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (125, 0, 'Bắc Ninh', 'bac-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (126, 0, 'Bến Tre', 'ben-tre', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (127, 0, 'Bình Định', 'binh-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (128, 124, 'Huyện Đông Hải', 'huyen-dong-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (129, 124, 'Huyện Giá Rai', 'huyen-gia-rai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (130, 124, 'Huyện Hòa Bình', 'huyen-hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (131, 124, 'Huyện Hồng Dân', 'huyen-hong-dan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (132, 124, 'Huyện Phước Long', 'huyen-phuoc-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (133, 124, 'Huyện Vĩnh Lợi', 'huyen-vinh-loi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (134, 124, 'Thành Phố Bạc Liêu', 'thanh-pho-bac-lieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (135, 125, 'Huyện Gia Bình', 'huyen-gia-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (136, 125, 'Huyện Lương Tài', 'huyen-luong-tai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (137, 125, 'Huyện Quế Võ', 'huyen-que-vo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (138, 125, 'Huyện Thuận Thành', 'huyen-thuan-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (139, 125, 'Huyện Tiên Du', 'huyen-tien-du', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (140, 125, 'Huyện Yên Phong', 'huyen-yen-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (141, 125, 'Thành phố Bắc Ninh', 'thanh-pho-bac-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (142, 125, 'Thị xã Từ Sơn', 'thi-xa-tu-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (143, 126, 'Huyện Ba Tri', 'huyen-ba-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (144, 126, 'Huyện Bình Đại', 'huyen-binh-dai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (145, 126, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (146, 126, 'Huyện Chợ Lách', 'huyen-cho-lach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (147, 126, 'Huyện Giồng Trôm', 'huyen-giong-trom', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (148, 126, 'Huyện Mỏ Cày Bắc', 'huyen-mo-cay-bac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (149, 126, 'Huyện Mỏ Cày Nam', 'huyen-mo-cay-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (150, 126, 'Huyện Thạnh Phú', 'huyen-thanh-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (151, 126, 'Thành phố Bến Tre', 'thanh-pho-ben-tre', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (152, 127, 'Huyện An Lão', 'huyen-an-lao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (153, 127, 'Huyện An Nhơn', 'huyen-an-nhon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (154, 127, 'Huyện Hoài Ân', 'huyen-hoai-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (155, 127, 'Huyện Hoài Nhơn', 'huyen-hoai-nhon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (156, 127, 'Huyện Phù Mỹ', 'huyen-phu-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (157, 127, 'Huyện Phù Cát', 'huyen-phu-cat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (158, 127, 'Huyện Tây Sơn', 'huyen-tay-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (159, 127, 'Huyện Tuy Phước', 'huyen-tuy-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (160, 127, 'Huyện Vân Canh', 'huyen-van-canh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (161, 127, 'Huyện Vĩnh Thạnh', 'huyen-vinh-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (162, 127, 'Thành phố Quy Nhơn', 'thanh-pho-quy-nhon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (163, 82, 'Huyện Bến Cát', 'huyen-ben-cat', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (164, 82, 'Huyện Dầu Tiếng', 'huyen-dau-tieng', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (165, 82, 'Huyện Dĩ An', 'huyen-di-an', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (166, 82, 'Huyện Phú Giáo', 'huyen-phu-giao', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (167, 82, 'Huyện Tân Uyên', 'huyen-tan-uyen', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (168, 82, 'Huyện Thuận An', 'huyen-thuan-an', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (169, 82, 'Thị xã Thủ Dầu Một', 'thi-xa-thu-dau-mot', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (170, 83, 'Huyện Bù Đăng', 'huyen-bu-dang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (171, 83, 'Huyện Bù Đốp', 'huyen-bu-dop', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (172, 83, 'Huyện Bù Gia Mập', 'huyen-bu-gia-map', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (173, 83, 'Huyện Chơn Thành', 'huyen-chon-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (174, 83, 'Huyện Đồng Phú', 'huyen-dong-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (175, 83, 'Huyện Hớn Quản', 'huyen-hon-quan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (176, 83, 'Huyện Lộc Ninh', 'huyen-loc-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (177, 83, 'Thị xã Bình Long', 'thi-xa-binh-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (178, 83, 'Thị xã Đồng Xoài', 'thi-xa-dong-xoai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (179, 83, 'Thị xã Phước Long', 'thi-xa-phuoc-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (180, 84, 'Huyện Đức Linh', 'huyen-duc-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (181, 84, 'Huyện Bắc Bình', 'huyen-bac-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (182, 84, 'Huyện Hàm Tân', 'huyen-ham-tan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (183, 84, 'Huyện Hàm Thuận Bắc', 'huyen-ham-thuan-bac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (184, 84, 'Huyện Hàm Thuận Nam', 'huyen-ham-thuan-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (185, 84, 'Huyện Phú Qúi', 'huyen-phu-qui', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (186, 84, 'Huyện Tánh Linh', 'huyen-tanh-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (187, 84, 'Huyện Tuy Phong', 'huyen-tuy-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (188, 84, 'Thành phố Phan Thiết', 'thanh-pho-phan-thiet', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (189, 84, 'Thị xã La Gi', 'thi-xa-la-gi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (190, 0, 'Cao Bằng', 'cao-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (191, 0, 'Cà Mau', 'ca-mau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (192, 0, 'Đắk Lắk', 'dak-lak', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (193, 0, 'Đắk Nông', 'dak-nong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (194, 0, 'Điện Biên', 'dien-bien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (195, 0, 'Đồng Nai', 'dong-nai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (196, 0, 'Đồng Tháp', 'dong-thap', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (197, 0, 'Gia Lai', 'gia-lai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (198, 0, 'Hà Giang', 'ha-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (199, 0, 'Hà Nam', 'ha-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (200, 0, 'Hà Tĩnh', 'ha-tinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (201, 0, 'Hải Dương', 'hai-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (202, 0, 'Hậu Giang', 'hau-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (203, 0, 'Hòa Bình', 'hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (204, 0, 'Hưng Yên', 'hung-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (205, 0, 'Khánh Hòa', 'khanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (206, 0, 'Kiên Giang', 'kien-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (207, 0, 'Kon Tum', 'kon-tum', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (208, 0, 'Lai Châu', 'lai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (209, 0, 'Lâm Đồng', 'lam-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (210, 0, 'Lạng Sơn', 'lang-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (211, 0, 'Lào Cai', 'lao-cai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (212, 0, 'Long An', 'long-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (213, 0, 'Nam Định', 'nam-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (214, 0, 'Nghệ An', 'nghe-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (215, 0, 'Ninh Bình', 'ninh-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (216, 0, 'Ninh Thuận', 'ninh-thuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (217, 0, 'Phú Thọ', 'phu-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (218, 0, 'Phú Yên', 'phu-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (219, 0, 'Quảng Bình', 'quang-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (220, 0, 'Quảng Nam', 'quang-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (221, 0, 'Quảng Ngãi', 'quang-ngai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (222, 0, 'Quảng Ninh', 'quang-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (223, 0, 'Quảng Trị', 'quang-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (224, 0, 'Sóc Trăng', 'soc-trang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (225, 0, 'Sơn La', 'son-la', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (226, 0, 'Tây Ninh', 'tay-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (227, 0, 'Thái Bình', 'thai-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (228, 0, 'Thái Nguyên', 'thai-nguyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (229, 0, 'Thanh Hóa', 'thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (230, 0, 'Thừa Thiên Huế', 'thua-thien-hue', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (231, 0, 'Tiền Giang', 'tien-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (232, 0, 'Trà Vinh', 'tra-vinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (233, 0, 'Tuyên Quang', 'tuyen-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (234, 0, 'Vĩnh Long', 'vinh-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (235, 0, 'Vĩnh Phúc', 'vinh-phuc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (236, 0, 'Yên Bái', 'yen-bai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (237, 0, 'TP. Cần Thơ', 'tp-can-tho', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (238, 0, 'TP. Đà Nẵng', 'tp-da-nang', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (239, 0, 'Hải Phòng', 'hai-phong', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (240, 191, 'Huyện Cái Nước', 'huyen-cai-nuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (241, 191, 'Huyện Đầm Dơi', 'huyen-dam-doi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (242, 191, 'Huyện Năm Căn', 'huyen-nam-can', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (243, 191, 'Huyện Ngọc Hiển', 'huyen-ngoc-hien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (244, 191, 'Huyện Phú Tân', 'huyen-phu-tan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (245, 191, 'Huyện Thới Bình', 'huyen-thoi-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (246, 191, 'Huyện Trần Văn Thời', 'huyen-tran-van-thoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (247, 191, 'Huyện U Minh', 'huyen-u-minh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (248, 191, 'Thành phố Cà Mau', 'thanh-pho-ca-mau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (249, 190, 'Huyện Bảo Lạc', 'huyen-bao-lac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (250, 190, 'Huyện Bảo Lâm', 'huyen-bao-lam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (251, 190, 'Huyện Hạ Lang', 'huyen-ha-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (252, 190, 'Huyện Hà Quảng', 'huyen-ha-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (253, 190, 'Huyện Hòa An', 'huyen-hoa-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (254, 190, 'Huyện Nguyên Bình', 'huyen-nguyen-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (255, 190, 'Huyện Phục Hòa', 'huyen-phuc-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (256, 190, 'Huyện Quảng Uyên', 'huyen-quang-uyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (257, 190, 'Huyện Thạch An', 'huyen-thach-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (258, 190, 'Huyện Thông Nông', 'huyen-thong-nong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (259, 190, 'Huyện Trà Lĩnh', 'huyen-tra-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (260, 190, 'Huyện Trùng Khánh', 'huyen-trung-khanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (261, 190, 'Thị xã Cao Bằng', 'thi-xa-cao-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (262, 192, 'Huyện Buôn Đôn', 'huyen-buon-don', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (263, 192, 'Huyện Cư Kuin', 'huyen-cu-kuin', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (264, 192, 'Huyện Cư MGar', 'huyen-cu-mgar', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (265, 192, 'Huyện Ea Kar', 'huyen-ea-kar', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (266, 192, 'Huyện Ea Súp', 'huyen-ea-sup', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (267, 192, 'Huyện EaHLeo', 'huyen-eahleo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (268, 192, 'Huyện Krông Ana', 'huyen-krong-ana', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (269, 192, 'Huyện Krông Bông', 'huyen-krong-bong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (270, 192, 'Huyện Krông Búk', 'huyen-krong-buk', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (271, 192, 'Huyện Krông Năng', 'huyen-krong-nang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (272, 192, 'Huyện Krông Pắc', 'huyen-krong-pac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (273, 192, 'Huyện Lắk', 'huyen-lak', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (274, 192, 'Huyện MDrắk', 'huyen-mdrak', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (275, 192, 'Thành phố Buôn Ma Thuột', 'thanh-pho-buon-ma-thuot', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (276, 192, 'Thị xã Buôn Hồ', 'thi-xa-buon-ho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (277, 193, 'Huyện Cư Jút', 'huyen-cu-jut', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (278, 193, 'Huyện Đắk GLong', 'huyen-dak-glong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (279, 193, 'Huyện Đắk Mil', 'huyen-dak-mil', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (280, 193, 'Huyện Đắk RLấp', 'huyen-dak-rlap', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (281, 193, 'Huyện Đắk Song', 'huyen-dak-song', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (282, 193, 'Huyện KRông Nô', 'huyen-krong-no', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (283, 193, 'Huyện Tuy Đức', 'huyen-tuy-duc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (284, 193, 'Thị xã Gia Nghĩa', 'thi-xa-gia-nghia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (285, 194, 'Huyện Điện Biên', 'huyen-dien-bien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (286, 194, 'Huyện Điện Biên Đông', 'huyen-dien-bien-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (287, 194, 'Huyện Mường Chà', 'huyen-muong-cha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (288, 194, 'Huyện Mương Nhé', 'huyen-muong-nhe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (289, 194, 'Huyện Mường ảng', 'huyen-muong-ang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (290, 194, 'Huyện Tủa Chùa', 'huyen-tua-chua', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (291, 194, 'Huyện Tuần Giáo', 'huyen-tuan-giao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (292, 194, 'Thành phố Điện Biên phủ', 'thanh-pho-dien-bien-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (293, 194, 'Thị xã Mường Lay', 'thi-xa-muong-lay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (294, 195, 'Huyện Cẩm Mỹ', 'huyen-cam-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (295, 195, 'Huyện Định Quán', 'huyen-dinh-quan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (296, 195, 'Huyện Long Thành', 'huyen-long-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (297, 195, 'Huyện Nhơn Trạch', 'huyen-nhon-trach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (298, 195, 'Huyện Tân Phú', 'huyen-tan-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (299, 195, 'Huyện Thống Nhất', 'huyen-thong-nhat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (300, 195, 'Huyện Trảng Bom', 'huyen-trang-bom', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (301, 195, 'Huyện Vĩnh Cửu', 'huyen-vinh-cuu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (302, 195, 'Huyện Xuân Lộc', 'huyen-xuan-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (303, 195, 'Thành phố Biên Hòa', 'thanh-pho-bien-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (304, 195, 'Thị xã Long Khánh', 'thi-xa-long-khanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (305, 196, 'Huyện Cao Lãnh', 'huyen-cao-lanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (306, 196, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (307, 196, 'Huyện Hồng Ngự', 'huyen-hong-ngu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (308, 196, 'Huyện Lai Vung', 'huyen-lai-vung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (309, 196, 'Huyện Lấp Vò', 'huyen-lap-vo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (310, 196, 'Huyện Tam Nông', 'huyen-tam-nong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (311, 196, 'Huyện Tân Hồng', 'huyen-tan-hong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (312, 196, 'Huyện Thanh Bình', 'huyen-thanh-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (313, 196, 'Huyện Tháp Mười', 'huyen-thap-muoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (314, 196, 'Thành phố Cao Lãnh', 'thanh-pho-cao-lanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (315, 196, 'Thị xã Hồng Ngự', 'thi-xa-hong-ngu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (316, 196, 'Thị xã Sa Đéc', 'thi-xa-sa-dec', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (317, 197, 'Huyện Chư Păh', 'huyen-chu-pah', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (318, 197, 'Huyện Chư Pưh', 'huyen-chu-puh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (319, 197, 'Huyện Chư Sê', 'huyen-chu-se', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (320, 197, 'Huyện ChưPRông', 'huyen-chuprong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (321, 197, 'Huyện Đăk Đoa', 'huyen-dak-doa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (322, 197, 'Huyện Đăk Pơ', 'huyen-dak-po', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (323, 197, 'Huyện Đức Cơ', 'huyen-duc-co', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (324, 197, 'Huyện Ia Grai', 'huyen-ia-grai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (325, 197, 'Huyện KBang', 'huyen-kbang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (326, 197, 'Huyện Ia Pa', 'huyen-ia-pa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (327, 197, 'Huyện Kông Chro', 'huyen-kong-chro', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (328, 197, 'Huyện Krông Pa', 'huyen-krong-pa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (329, 197, 'Huyện Mang Yang', 'huyen-mang-yang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (330, 197, 'Huyện Phú Thiện', 'huyen-phu-thien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (331, 197, 'Thành phố Plei Ku', 'thanh-pho-plei-ku', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (332, 197, 'Thị xã AYun Pa', 'thi-xa-ayun-pa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (333, 197, 'Thị xã An Khê', 'thi-xa-an-khe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (334, 198, 'Huyện Bắc Mê', 'huyen-bac-me', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (335, 198, 'Huyện Bắc Quang', 'huyen-bac-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (336, 198, 'Huyện Đồng Văn', 'huyen-dong-van', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (337, 198, 'Huyện Hoàng Su Phì', 'huyen-hoang-su-phi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (338, 198, 'Huyện Mèo Vạc', 'huyen-meo-vac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (339, 198, 'Huyện Quản Bạ', 'huyen-quan-ba', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (340, 198, 'Huyện Quang Bình', 'huyen-quang-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (341, 198, 'Huyện Vị Xuyên', 'huyen-vi-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (342, 198, 'Huyện Xín Mần', 'huyen-xin-man', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (343, 198, 'Huyện Yên Minh', 'huyen-yen-minh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (344, 198, 'Thành Phố Hà Giang', 'thanh-pho-ha-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (345, 199, 'Huyện Bình Lục', 'huyen-binh-luc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (346, 199, 'Huyện Duy Tiên', 'huyen-duy-tien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (347, 199, 'Huyện Kim Bảng', 'huyen-kim-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (348, 199, 'Huyện Lý Nhân', 'huyen-ly-nhan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (349, 199, 'Huyện Thanh Liêm', 'huyen-thanh-liem', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (350, 199, 'Thành phố Phủ Lý', 'thanh-pho-phu-ly', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (351, 200, 'Huyện Cẩm Xuyên', 'huyen-cam-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (352, 200, 'Huyện Can Lộc', 'huyen-can-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (353, 200, 'Huyện Đức Thọ', 'huyen-duc-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (354, 200, 'Huyện Hương Khê', 'huyen-huong-khe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (355, 200, 'Huyện Hương Sơn', 'huyen-huong-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (356, 200, 'Huyện Kỳ Anh', 'huyen-ky-anh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (357, 200, 'Huyện Lộc Hà', 'huyen-loc-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (358, 200, 'Huyện Nghi Xuân', 'huyen-nghi-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (359, 200, 'Huyện Thạch Hà', 'huyen-thach-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (360, 200, 'Huyện Vũ Quang', 'huyen-vu-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (361, 200, 'Thành phố Hà Tĩnh', 'thanh-pho-ha-tinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (362, 200, 'Thị xã Hồng Lĩnh', 'thi-xa-hong-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (363, 201, 'Huyện Bình Giang', 'huyen-binh-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (364, 201, 'Huyện Cẩm Giàng', 'huyen-cam-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (365, 201, 'Huyện Gia Lộc', 'huyen-gia-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (366, 201, 'Huyện Kim Thành', 'huyen-kim-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (367, 201, 'Huyện Kinh Môn', 'huyen-kinh-mon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (368, 201, 'Huyện Nam Sách', 'huyen-nam-sach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (369, 201, 'Huyện Ninh Giang', 'huyen-ninh-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (370, 201, 'Huyện Thanh Hà', 'huyen-thanh-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (371, 201, 'Huyện Thanh Miện', 'huyen-thanh-mien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (372, 201, 'Huyện Tứ Kỳ', 'huyen-tu-ky', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (373, 201, 'Thành phố Hải Dương', 'thanh-pho-hai-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (374, 201, 'Thị xã Chí Linh', 'thi-xa-chi-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (375, 203, 'Huyện Cao Phong', 'huyen-cao-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (376, 203, 'Huyện Đà Bắc', 'huyen-da-bac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (377, 203, 'Huyện Kim Bôi', 'huyen-kim-boi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (378, 203, 'Huyện Kỳ Sơn', 'huyen-ky-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (379, 203, 'Huyện Lạc Sơn', 'huyen-lac-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (380, 203, 'Huyện Lạc Thủy', 'huyen-lac-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (381, 203, 'Huyện Lương Sơn', 'huyen-luong-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (382, 203, 'Huyện Mai Châu', 'huyen-mai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (383, 203, 'Huyện Tân Lạc', 'huyen-tan-lac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (384, 203, 'Huyện Yên Thủy', 'huyen-yen-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (385, 203, 'Thành phố Hòa Bình', 'thanh-pho-hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (386, 204, 'Huyện Ân Thi', 'huyen-an-thi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (387, 204, 'Huyện Khoái Châu', 'huyen-khoai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (388, 204, 'Huyện Kim Động', 'huyen-kim-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (389, 204, 'Huyện Mỹ Hào', 'huyen-my-hao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (390, 204, 'Huyện Phù Cừ', 'huyen-phu-cu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (391, 204, 'Huyện Tiên Lữ', 'huyen-tien-lu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (392, 204, 'Huyện Văn Giang', 'huyen-van-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (393, 204, 'Huyện Văn Lâm', 'huyen-van-lam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (394, 204, 'Huyện Yên Mỹ', 'huyen-yen-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (395, 204, 'Thành phố Hưng Yên', 'thanh-pho-hung-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (396, 205, 'Huyện Cam Lâm', 'huyen-cam-lam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (397, 205, 'Huyện Diên Khánh', 'huyen-dien-khanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (398, 205, 'Huyện Khánh Sơn', 'huyen-khanh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (399, 205, 'Huyện Khánh Vĩnh', 'huyen-khanh-vinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (400, 205, 'Huyện Ninh Hòa', 'huyen-ninh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (401, 205, 'Huyện Trường Sa', 'huyen-truong-sa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (402, 205, 'Huyện Vạn Ninh', 'huyen-van-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (403, 205, 'Thành phố Nha Trang', 'thanh-pho-nha-trang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (404, 205, 'Thị xã Cam Ranh', 'thi-xa-cam-ranh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (405, 202, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (406, 202, 'Huyện Châu Thành A', 'huyen-chau-thanh-a', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (407, 202, 'Huyện Long Mỹ', 'huyen-long-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (408, 202, 'Huyện Phụng Hiệp', 'huyen-phung-hiep', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (409, 202, 'Huyện Vị Thủy', 'huyen-vi-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (410, 202, 'Thành Phố Vị Thanh', 'thanh-pho-vi-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (411, 202, 'Thị xã Ngã Bảy', 'thi-xa-nga-bay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (412, 206, 'Huyện An Biên', 'huyen-an-bien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (413, 206, 'Huyện An Minh', 'huyen-an-minh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (414, 206, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (415, 206, 'Huyện Giang Thành', 'huyen-giang-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (416, 206, 'Huyện Giồng Riềng', 'huyen-giong-rieng', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (417, 206, 'Huyện Gò Quao', 'huyen-go-quao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (418, 206, 'Huyện Hòn Đất', 'huyen-hon-dat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (419, 206, 'Huyện Kiên Hải', 'huyen-kien-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (420, 206, 'Huyện Kiên Lương', 'huyen-kien-luong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (421, 206, 'Huyện Phú Quốc', 'huyen-phu-quoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (422, 206, 'Huyện Tân Hiệp', 'huyen-tan-hiep', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (423, 206, 'Huyện U Minh Thượng', 'huyen-u-minh-thuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (424, 206, 'Huyện Vĩnh Thuận', 'huyen-vinh-thuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (425, 206, 'Thành phố Rạch Giá', 'thanh-pho-rach-gia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (426, 206, 'Thị xã Hà Tiên', 'thi-xa-ha-tien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (427, 207, 'Huyện Đắk Glei', 'huyen-dak-glei', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (428, 207, 'Huyện Đắk Hà', 'huyen-dak-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (429, 207, 'Huyện Đắk Tô', 'huyen-dak-to', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (430, 207, 'Huyện Kon Plông', 'huyen-kon-plong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (431, 207, 'Huyện Kon Rẫy', 'huyen-kon-ray', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (432, 207, 'Huyện Ngọc Hồi', 'huyen-ngoc-hoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (433, 207, 'Huyện Sa Thầy', 'huyen-sa-thay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (434, 207, 'Huyện Tu Mơ Rông', 'huyen-tu-mo-rong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (435, 207, 'Thành phố Kon Tum', 'thanh-pho-kon-tum', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (436, 208, 'Huyện Mường Tè', 'huyen-muong-te', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (437, 208, 'Huyện Phong Thổ', 'huyen-phong-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (438, 208, 'Huyện Sìn Hồ', 'huyen-sin-ho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (439, 208, 'Huyện Tam Đường', 'huyen-tam-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (440, 208, 'Huyện Tân Uyên', 'huyen-tan-uyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (441, 208, 'Huyện Than Uyên', 'huyen-than-uyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (442, 208, 'Thị xã Lai Châu', 'thi-xa-lai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (443, 209, 'Huyện Bảo Lâm', 'huyen-bao-lam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (444, 209, 'Huyện Cát Tiên', 'huyen-cat-tien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (445, 209, 'Huyện Đạ Huoai', 'huyen-da-huoai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (446, 209, 'Huyện Đạ Tẻh', 'huyen-da-teh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (447, 209, 'Huyện Đam Rông', 'huyen-dam-rong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (448, 209, 'Huyện Di Linh', 'huyen-di-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (449, 209, 'Huyện Đơn Dương', 'huyen-don-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (450, 209, 'Huyện Đức Trọng', 'huyen-duc-trong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (451, 209, 'Huyện Lạc Dương', 'huyen-lac-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (452, 209, 'Huyện Lâm Hà', 'huyen-lam-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (453, 209, 'Thành phố Bảo Lộc', 'thanh-pho-bao-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (454, 209, 'Thành phố Đà Lạt', 'thanh-pho-da-lat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (455, 210, 'Huyện Bắc Sơn', 'huyen-bac-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (456, 210, 'Huyện Bình Gia', 'huyen-binh-gia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (457, 210, 'Huyện Cao Lộc', 'huyen-cao-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (458, 210, 'Huyện Chi Lăng', 'huyen-chi-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (459, 210, 'Huyện Đình Lập', 'huyen-dinh-lap', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (460, 210, 'Huyện Hữu Lũng', 'huyen-huu-lung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (461, 210, 'Huyện Lộc Bình', 'huyen-loc-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (462, 210, 'Huyện Tràng Định', 'huyen-trang-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (463, 210, 'Huyện Văn Lãng', 'huyen-van-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (464, 210, 'Huyện Văn Quan', 'huyen-van-quan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (465, 210, 'Thành phố Lạng Sơn', 'thanh-pho-lang-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (466, 211, 'Huyện Bắc Hà', 'huyen-bac-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (467, 211, 'Huyện Bảo Thắng', 'huyen-bao-thang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (468, 211, 'Huyện Bảo Yên', 'huyen-bao-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (469, 211, 'Huyện Bát Xát', 'huyen-bat-xat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (470, 211, 'Huyện Mường Khương', 'huyen-muong-khuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (471, 211, 'Huyện Sa Pa', 'huyen-sa-pa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (472, 211, 'Huyện Si Ma Cai', 'huyen-si-ma-cai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (473, 211, 'Huyện Văn Bàn', 'huyen-van-ban', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (474, 211, 'Thành phố Lào Cai', 'thanh-pho-lao-cai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (475, 212, 'Huyện Bến Lức', 'huyen-ben-luc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (476, 212, 'Huyện Cần Đước', 'huyen-can-duoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (477, 212, 'Huyện Cần Giuộc', 'huyen-can-giuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (478, 212, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (479, 212, 'Huyện Đức Hòa', 'huyen-duc-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (480, 212, 'Huyện Đức Huệ', 'huyen-duc-hue', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (481, 212, 'Huyện Mộc Hóa', 'huyen-moc-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (482, 212, 'Huyện Tân Hưng', 'huyen-tan-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (483, 212, 'Huyện Tân Thạnh', 'huyen-tan-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (484, 212, 'Huyện Tân Trụ', 'huyen-tan-tru', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (485, 212, 'Huyện Thạnh Hóa', 'huyen-thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (486, 212, 'Huyện Thủ Thừa', 'huyen-thu-thua', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (487, 212, 'Huyện Vĩnh Hưng', 'huyen-vinh-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (488, 212, 'Thành phố Tân An', 'thanh-pho-tan-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (489, 213, 'Huyện Giao Thủy', 'huyen-giao-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (490, 213, 'Huyện Hải Hậu', 'huyen-hai-hau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (491, 213, 'Huyện Mỹ Lộc', 'huyen-my-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (492, 213, 'Huyện Nam Trực', 'huyen-nam-truc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (493, 213, 'Huyện Nghĩa Hưng', 'huyen-nghia-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (494, 213, 'Huyện Trực Ninh', 'huyen-truc-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (495, 213, 'Huyện Vụ Bản', 'huyen-vu-ban', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (496, 213, 'Huyện Xuân Trường', 'huyen-xuan-truong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (497, 213, 'Huyện ý Yên', 'huyen-y-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (498, 213, 'Thành phố Nam Định', 'thanh-pho-nam-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (499, 214, 'Huyện Anh Sơn', 'huyen-anh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (500, 214, 'Huyện Con Cuông', 'huyen-con-cuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (501, 214, 'Huyện Diễn Châu', 'huyen-dien-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (502, 214, 'Huyện Đô Lương', 'huyen-do-luong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (503, 214, 'Huyện Hưng Nguyên', 'huyen-hung-nguyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (504, 214, 'Huyện Kỳ Sơn', 'huyen-ky-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (505, 214, 'Huyện Nam Đàn', 'huyen-nam-dan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (506, 214, 'Huyện Nghi Lộc', 'huyen-nghi-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (507, 214, 'Huyện Nghĩa Đàn', 'huyen-nghia-dan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (508, 214, 'Huyện Quế Phong', 'huyen-que-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (509, 214, 'Huyện Quỳ Châu', 'huyen-quy-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (510, 214, 'Huyện Quỳ Hợp', 'huyen-quy-hop', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (511, 214, 'Huyện Quỳnh Lưu', 'huyen-quynh-luu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (512, 214, 'Huyện Tân Kỳ', 'huyen-tan-ky', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (513, 214, 'Huyện Thanh Chương', 'huyen-thanh-chuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (514, 214, 'Huyện Tương Dương', 'huyen-tuong-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (515, 214, 'Huyện Yên Thành', 'huyen-yen-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (516, 214, 'Thành phố Vinh', 'thanh-pho-vinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (517, 214, 'Thị xã Cửa Lò', 'thi-xa-cua-lo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (518, 214, 'Thị xã Thái Hòa', 'thi-xa-thai-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (519, 215, 'Huyện Gia Viễn', 'huyen-gia-vien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (520, 215, 'Huyện Hoa Lư', 'huyen-hoa-lu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (521, 215, 'Huyện Kim Sơn', 'huyen-kim-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (522, 215, 'Huyện Nho Quan', 'huyen-nho-quan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (523, 215, 'Huyện Yên Khánh', 'huyen-yen-khanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (524, 215, 'Huyện Yên Mô', 'huyen-yen-mo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (525, 215, 'Thành phố Ninh Bình', 'thanh-pho-ninh-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (526, 215, 'Thị xã Tam Điệp', 'thi-xa-tam-diep', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (527, 216, 'Huyên Bác ái', 'huyen-bac-ai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (528, 216, 'Huyện Ninh Hải', 'huyen-ninh-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (529, 216, 'Huyện Ninh Phước', 'huyen-ninh-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (530, 216, 'Huyện Ninh Sơn', 'huyen-ninh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (531, 216, 'Huyện Thuận Bắc', 'huyen-thuan-bac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (532, 216, 'Huyện Thuận Nam', 'huyen-thuan-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (533, 216, 'Thành phố Phan Rang-Tháp Chàm', 'thanh-pho-phan-rang-thap-cham', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (534, 217, 'Huyện Cẩm Khê', 'huyen-cam-khe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (535, 217, 'Huyện Đoan Hùng', 'huyen-doan-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (536, 217, 'Huyện Hạ Hòa', 'huyen-ha-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (537, 217, 'Huyện Lâm Thao', 'huyen-lam-thao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (538, 217, 'Huyện Phù Ninh', 'huyen-phu-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (539, 217, 'Huyện Tam Nông', 'huyen-tam-nong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (540, 217, 'Huyện Tân Sơn', 'huyen-tan-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (541, 217, 'Huyện Thanh Ba', 'huyen-thanh-ba', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (542, 217, 'Huyện Thanh Sơn', 'huyen-thanh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (543, 217, 'Huyện Thanh Thủy', 'huyen-thanh-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (544, 217, 'Huyện Yên Lập', 'huyen-yen-lap', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (545, 217, 'Thành phố Việt Trì', 'thanh-pho-viet-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (546, 217, 'Thị xã Phú Thọ', 'thi-xa-phu-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (547, 218, 'Huyện Đông Hòa', 'huyen-dong-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (548, 218, 'Huyện Đồng Xuân', 'huyen-dong-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (549, 218, 'Huyện Phú Hòa', 'huyen-phu-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (550, 218, 'Huyện Sơn Hòa', 'huyen-son-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (551, 218, 'Huyện Sông Hinh', 'huyen-song-hinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (552, 218, 'Huyện Tây Hòa', 'huyen-tay-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (553, 218, 'Huyện Tuy An', 'huyen-tuy-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (554, 218, 'Thành phố Tuy Hòa', 'thanh-pho-tuy-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (555, 218, 'Thị xã Sông Cầu', 'thi-xa-song-cau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (556, 239, 'Huyện An Dương', 'huyen-an-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (557, 239, 'Huyện An Lão', 'huyen-an-lao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (558, 239, 'Huyện Bạch Long Vĩ', 'huyen-bach-long-vi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (559, 239, 'Huyện Cát Hải', 'huyen-cat-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (560, 239, 'Huyện Kiến Thụy', 'huyen-kien-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (561, 239, 'Huyện Thủy Nguyên', 'huyen-thuy-nguyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (562, 239, 'Huyện Tiên Lãng', 'huyen-tien-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (563, 239, 'Huyện Vĩnh Bảo', 'huyen-vinh-bao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (564, 239, 'Quận Đồ Sơn', 'quan-do-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (565, 239, 'Quận Dương Kinh', 'quan-duong-kinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (566, 239, 'Quận Hải An', 'quan-hai-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (567, 239, 'Quận Hồng Bàng', 'quan-hong-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (568, 239, 'Quận Kiến An', 'quan-kien-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (569, 239, 'Quận Lê Chân', 'quan-le-chan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (570, 239, 'Quận Ngô Quyền', 'quan-ngo-quyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (571, 238, 'Huyện Hòa Vang', 'huyen-hoa-vang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (572, 238, 'Huyện Hoàng Sa', 'huyen-hoang-sa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (573, 238, 'Quận Cẩm Lệ', 'quan-cam-le', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (574, 238, 'Quận Hải Châu', 'quan-hai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (575, 238, 'Quận Liên Chiểu', 'quan-lien-chieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (576, 238, 'Quận Ngũ Hành Sơn', 'quan-ngu-hanh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (577, 238, 'Quận Sơn Trà', 'quan-son-tra', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (578, 238, 'Quận Thanh Khê', 'quan-thanh-khe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (579, 237, 'Huyện Cờ Đỏ', 'huyen-co-do', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (580, 237, 'Huyện Phong Điền', 'huyen-phong-dien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (581, 237, 'Huyện Thới Lai', 'huyen-thoi-lai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (582, 237, 'Huyện Vĩnh Thạnh', 'huyen-vinh-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (583, 237, 'Quận Bình Thủy', 'quan-binh-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (584, 237, 'Quận Cái Răng', 'quan-cai-rang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (585, 237, 'Quận Ninh Kiều', 'quan-ninh-kieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (586, 237, 'Quận Ô Môn', 'quan-o-mon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (587, 237, 'Quận Thốt Nốt', 'quan-thot-not', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (588, 231, 'Huyện Cái Bè', 'huyen-cai-be', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (589, 231, 'Huyện Cai Lậy', 'huyen-cai-lay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (590, 231, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (591, 231, 'Huyện Chợ Gạo', 'huyen-cho-gao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (592, 231, 'Huyện Gò Công Đông', 'huyen-go-cong-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (593, 231, 'Huyện Gò Công Tây', 'huyen-go-cong-tay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (594, 231, 'Huyện Tân Phú Đông', 'huyen-tan-phu-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (595, 231, 'Huyện Tân Phước', 'huyen-tan-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (596, 231, 'Thành phố Mỹ Tho', 'thanh-pho-my-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (597, 231, 'Thị xã Gò Công', 'thi-xa-go-cong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (598, 232, 'Huyện Càng Long', 'huyen-cang-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (599, 232, 'Huyện Cầu Kè', 'huyen-cau-ke', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (600, 232, 'Huyện Cầu Ngang', 'huyen-cau-ngang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (601, 232, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (602, 232, 'Huyện Duyên Hải', 'huyen-duyen-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (603, 232, 'Huyện Tiểu Cần', 'huyen-tieu-can', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (604, 232, 'Huyện Trà Cú', 'huyen-tra-cu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (605, 232, 'Thành phố Trà Vinh', 'thanh-pho-tra-vinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (606, 234, 'Huyện Bình Minh', 'huyen-binh-minh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (607, 234, 'Huyện Bình Tân', 'huyen-binh-tan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (608, 234, 'Huyện Long Hồ', 'huyen-long-ho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (609, 234, 'Huyện Mang Thít', 'huyen-mang-thit', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (610, 234, 'Huyện Tam Bình', 'huyen-tam-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (611, 234, 'Huyện Trà Ôn', 'huyen-tra-on', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (612, 234, 'Huyện Vũng Liêm', 'huyen-vung-liem', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (613, 234, 'Thành phố Vĩnh Long', 'thanh-pho-vinh-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (614, 223, 'Huyện Cam Lộ', 'huyen-cam-lo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (615, 223, 'Huyện Cồn Cỏ', 'huyen-con-co', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (616, 223, 'Huyện Đa Krông', 'huyen-da-krong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (617, 223, 'Huyện Gio Linh', 'huyen-gio-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (618, 223, 'Huyện Hải Lăng', 'huyen-hai-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (619, 223, 'Huyện Hướng Hóa', 'huyen-huong-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (620, 223, 'Huyện Triệu Phong', 'huyen-trieu-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (621, 223, 'Huyện Vính Linh', 'huyen-vinh-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (622, 223, 'Thành phố Đông Hà', 'thanh-pho-dong-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (623, 223, 'Thị xã Quảng Trị', 'thi-xa-quang-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (624, 221, 'Huyện Ba Tơ', 'huyen-ba-to', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (625, 221, 'Huyện Bình Sơn', 'huyen-binh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (626, 221, 'Huyện Đức Phổ', 'huyen-duc-pho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (627, 221, 'Huyện Lý Sơn', 'huyen-ly-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (628, 221, 'Huyện Minh Long', 'huyen-minh-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (629, 221, 'Huyện Mộ Đức', 'huyen-mo-duc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (630, 221, 'Huyện Nghĩa Hành', 'huyen-nghia-hanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (631, 221, 'Huyện Sơn Hà', 'huyen-son-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (632, 221, 'Huyện Sơn Tây', 'huyen-son-tay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (633, 221, 'Huyện Sơn Tịnh', 'huyen-son-tinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (634, 221, 'Huyện Tây Trà', 'huyen-tay-tra', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (635, 221, 'Huyện Trà Bồng', 'huyen-tra-bong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (636, 221, 'Huyện Tư Nghĩa', 'huyen-tu-nghia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (637, 221, 'Thành phố Quảng Ngãi', 'thanh-pho-quang-ngai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (638, 220, 'Huyện Bắc Trà My', 'huyen-bac-tra-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (639, 220, 'Huyện Đại Lộc', 'huyen-dai-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (640, 220, 'Huyện Điện Bàn', 'huyen-dien-ban', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (641, 220, 'Huyện Đông Giang', 'huyen-dong-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (642, 220, 'Huyện Duy Xuyên', 'huyen-duy-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (643, 220, 'Huyện Hiệp Đức', 'huyen-hiep-duc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (644, 220, 'Huyện Nam Giang', 'huyen-nam-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (645, 220, 'Huyện Nam Trà My', 'huyen-nam-tra-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (646, 220, 'Huyện Nông Sơn', 'huyen-nong-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (647, 220, 'Huyện Núi Thành', 'huyen-nui-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (648, 220, 'Huyện Phú Ninh', 'huyen-phu-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (649, 220, 'Huyện Phước Sơn', 'huyen-phuoc-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (650, 220, 'Huyện Quế Sơn', 'huyen-que-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (651, 220, 'Huyện Tây Giang', 'huyen-tay-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (652, 220, 'Huyện Thăng Bình', 'huyen-thang-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (653, 220, 'Huyện Tiên Phước', 'huyen-tien-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (654, 220, 'Thành phố Hội An', 'thanh-pho-hoi-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (655, 220, 'Thành phố Tam Kỳ', 'thanh-pho-tam-ky', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (656, 219, 'Huyện Bố Trạch', 'huyen-bo-trach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (657, 219, 'Huyện Lệ Thủy', 'huyen-le-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (658, 219, 'Huyện Minh Hoá', 'huyen-minh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (659, 219, 'Huyện Quảng Ninh', 'huyen-quang-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (660, 219, 'Huyện Quảng Trạch', 'huyen-quang-trach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (661, 219, 'Huyện Tuyên Hoá', 'huyen-tuyen-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (662, 219, 'Thành phố Đồng Hới', 'thanh-pho-dong-hoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (663, 230, 'Huyện A Lưới', 'huyen-a-luoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (664, 230, 'Huyện Hương Trà', 'huyen-huong-tra', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (665, 230, 'Huyện Nam Dông', 'huyen-nam-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (666, 230, 'Huyện Phong Điền', 'huyen-phong-dien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (667, 230, 'Huyện Phú Lộc', 'huyen-phu-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (668, 230, 'Huyện Phú Vang', 'huyen-phu-vang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (669, 230, 'Huyện Quảng Điền', 'huyen-quang-dien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (670, 230, 'Thành phố Huế', 'thanh-pho-hue', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (671, 230, 'Thị xã Hương Thủy', 'thi-xa-huong-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (672, 226, 'Huyện Bến Cầu', 'huyen-ben-cau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (673, 226, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (674, 226, 'Huyện Dương Minh Châu', 'huyen-duong-minh-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (675, 226, 'Huyện Gò Dầu', 'huyen-go-dau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (676, 226, 'Huyện Hòa Thành', 'huyen-hoa-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (677, 226, 'Huyện Tân Biên', 'huyen-tan-bien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (678, 226, 'Huyện Tân Châu', 'huyen-tan-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (679, 226, 'Huyện Trảng Bàng', 'huyen-trang-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (680, 226, 'Thị xã Tây Ninh', 'thi-xa-tay-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (681, 222, 'Huyện Ba Chẽ', 'huyen-ba-che', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (682, 222, 'Huyện Bình Liêu', 'huyen-binh-lieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (683, 222, 'Huyện Cô Tô', 'huyen-co-to', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (684, 222, 'Huyện Đầm Hà', 'huyen-dam-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (685, 222, 'Huyện Đông Triều', 'huyen-dong-trieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (686, 222, 'Huyện Hải Hà', 'huyen-hai-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (687, 222, 'Huyện Hoành Bồ', 'huyen-hoanh-bo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (688, 222, 'Huyện Tiên Yên', 'huyen-tien-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (689, 222, 'Huyện Vân Đồn', 'huyen-van-don', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (690, 222, 'Huyện Yên Hưng', 'huyen-yen-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (691, 222, 'Thành phố Hạ Long', 'thanh-pho-ha-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (692, 222, 'Thành phố Móng Cái', 'thanh-pho-mong-cai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (693, 222, 'Thị xã Cẩm Phả', 'thi-xa-cam-pha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (694, 222, 'Thị xã Uông Bí', 'thi-xa-uong-bi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (695, 224, 'Huyện Châu Thành', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (696, 224, 'Huyện Cù Lao Dung', 'huyen-cu-lao-dung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (697, 224, 'Huyện Kế Sách', 'huyen-ke-sach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (698, 224, 'Huyện Long Phú', 'huyen-long-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (699, 224, 'Huyện Mỹ Tú', 'huyen-my-tu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (700, 224, 'Huyện Mỹ Xuyên', 'huyen-my-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (701, 224, 'Huyện Ngã Năm', 'huyen-nga-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (702, 224, 'Huyện Thạnh Trị', 'huyen-thanh-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (703, 224, 'Huyện Trần Đề', 'huyen-tran-de', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (704, 224, 'Huyện Vĩnh Châu', 'huyen-vinh-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (705, 224, 'Thành phố Sóc Trăng', 'thanh-pho-soc-trang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (706, 225, 'Huyện Bắc Yên', 'huyen-bac-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (707, 225, 'Huyện Mai Sơn', 'huyen-mai-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (708, 225, 'Huyện Mộc Châu', 'huyen-moc-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (709, 225, 'Huyện Mường La', 'huyen-muong-la', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (710, 225, 'Huyện Phù Yên', 'huyen-phu-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (711, 225, 'Huyện Quỳnh Nhai', 'huyen-quynh-nhai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (712, 225, 'Huyện Sông Mã', 'huyen-song-ma', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (713, 225, 'Huyện Sốp Cộp', 'huyen-sop-cop', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (714, 225, 'Huyện Thuận Châu', 'huyen-thuan-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (715, 225, 'Huyện Yên Châu', 'huyen-yen-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (716, 225, 'Thành phố Sơn La', 'thanh-pho-son-la', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (717, 227, 'Huyện Đông Hưng', 'huyen-dong-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (718, 227, 'Huyện Hưng Hà', 'huyen-hung-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (719, 227, 'Huyện Kiến Xương', 'huyen-kien-xuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (720, 227, 'Huyện Quỳnh Phụ', 'huyen-quynh-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (721, 227, 'Huyện Thái Thụy', 'huyen-thai-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (722, 227, 'Huyện Tiền Hải', 'huyen-tien-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (723, 227, 'Huyện Vũ Thư', 'huyen-vu-thu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (724, 227, 'Thành phố Thái Bình', 'thanh-pho-thai-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (725, 228, 'Huyện Đại Từ', 'huyen-dai-tu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (726, 228, 'Huyện Định Hóa', 'huyen-dinh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (727, 228, 'Huyện Đồng Hỷ', 'huyen-dong-hy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (728, 228, 'Huyện Phổ Yên', 'huyen-pho-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (729, 228, 'Huyện Phú Bình', 'huyen-phu-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (730, 228, 'Huyện Phú Lương', 'huyen-phu-luong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (731, 228, 'Huyện Võ Nhai', 'huyen-vo-nhai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (732, 228, 'Thành phố Thái Nguyên', 'thanh-pho-thai-nguyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (733, 228, 'Thị xã Sông Công', 'thi-xa-song-cong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (734, 229, 'Huyện Bá Thước', 'huyen-ba-thuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (735, 229, 'Huyện Cẩm Thủy', 'huyen-cam-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (736, 229, 'Huyện Đông Sơn', 'huyen-dong-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (737, 229, 'Huyện Hà Trung', 'huyen-ha-trung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (738, 229, 'Huyện Hậu Lộc', 'huyen-hau-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (739, 229, 'Huyện Hoằng Hóa', 'huyen-hoang-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (740, 229, 'Huyện Lang Chánh', 'huyen-lang-chanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (741, 229, 'Huyện Mường Lát', 'huyen-muong-lat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (742, 229, 'Huyện Nga Sơn', 'huyen-nga-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (743, 229, 'Huyện Ngọc Lặc', 'huyen-ngoc-lac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (744, 229, 'Huyện Như Thanh', 'huyen-nhu-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (745, 229, 'Huyện Như Xuân', 'huyen-nhu-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (746, 229, 'Huyện Nông Cống', 'huyen-nong-cong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (747, 229, 'Huyện Quan Hóa', 'huyen-quan-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (748, 229, 'Huyện Quan Sơn', 'huyen-quan-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (749, 229, 'Huyện Quảng Xương', 'huyen-quang-xuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (750, 229, 'Huyện Thạch Thành', 'huyen-thach-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (751, 229, 'Huyện Thiệu Hóa', 'huyen-thieu-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (752, 229, 'Huyện Thọ Xuân', 'huyen-tho-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (753, 229, 'Huyện Thường Xuân', 'huyen-thuong-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (754, 229, 'Huyện Tĩnh Gia', 'huyen-tinh-gia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (755, 229, 'Huyện Triệu Sơn', 'huyen-trieu-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (756, 229, 'Huyện Vĩnh Lộc', 'huyen-vinh-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (757, 229, 'Huyện Yên Định', 'huyen-yen-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (758, 229, 'Thành phố Thanh Hóa', 'thanh-pho-thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (759, 229, 'Thị xã Bỉm Sơn', 'thi-xa-bim-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (760, 229, 'Thị xã Sầm Sơn', 'thi-xa-sam-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (761, 233, 'Huyện Chiêm Hóa', 'huyen-chiem-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (762, 233, 'Huyện Hàm Yên', 'huyen-ham-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (763, 233, 'Huyện Na Hang', 'huyen-na-hang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (764, 233, 'Huyện Sơn Dương', 'huyen-son-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (765, 233, 'Huyện Yên Sơn', 'huyen-yen-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (766, 233, 'Thành phố Tuyên Quang', 'thanh-pho-tuyen-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (767, 235, 'Huyện Bình Xuyên', 'huyen-binh-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (768, 235, 'Huyện Lập Thạch', 'huyen-lap-thach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (769, 235, 'Huyện Sông Lô', 'huyen-song-lo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (770, 235, 'Huyện Tam Đảo', 'huyen-tam-dao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (771, 235, 'Huyện Tam Dương', 'huyen-tam-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (772, 235, 'Huyện Vĩnh Tường', 'huyen-vinh-tuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (773, 235, 'Huyện Yên Lạc', 'huyen-yen-lac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (774, 235, 'Thành phố Vĩnh Yên', 'thanh-pho-vinh-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (775, 235, 'Thị xã Phúc Yên', 'thi-xa-phuc-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (776, 236, 'Huyện Lục Yên', 'huyen-luc-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (777, 236, 'Huyện Mù Cang Chải', 'huyen-mu-cang-chai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (778, 236, 'Huyện Trạm Tấu', 'huyen-tram-tau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (779, 236, 'Huyện Trấn Yên', 'huyen-tran-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (780, 236, 'Huyện Văn Chấn', 'huyen-van-chan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (781, 236, 'Huyện Văn Yên', 'huyen-van-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (782, 236, 'Huyện Yên Bình', 'huyen-yen-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (783, 236, 'Thành phố Yên Bái', 'thanh-pho-yen-bai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (784, 236, 'Thị xã Nghĩa Lộ', 'thi-xa-nghia-lo', 0, 0, '0.0', 1);


#
# TABLE STRUCTURE FOR: city_en
#

DROP TABLE IF EXISTS city_en;

CREATE TABLE `city_en` (
  `city_id` int(11) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `city_name` varchar(254) DEFAULT NULL,
  `city_url` varchar(254) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `site` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: site, 1: hệ thống',
  `rate` decimal(5,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (25, 0, 'TP Ho Chi Minh', 'tp-ho-chi-minh', 0, 1, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (26, 0, 'TP. Ha Noi', 'tp-ha-noi', 0, 1, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (27, 25, 'Quan 1', 'quan-1', 1, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (28, 25, 'Quan 2', 'quan-2', 2, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (29, 25, 'Quan 3', 'quan-3', 3, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (30, 25, 'Quan 4', 'quan-4', 4, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (31, 25, 'Quan 5', 'quan-5', 5, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (32, 25, 'Quan 6', 'quan-6', 6, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (33, 25, 'Quan 7', 'quan-7', 7, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (34, 25, 'Quan 8', 'quan-8', 8, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (35, 25, 'Quan 9', 'quan-9', 9, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (36, 25, 'Quan 10', 'quan-10', 10, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (37, 25, 'Quan 11', 'quan-11', 11, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (38, 25, 'Quan 12', 'quan-12', 12, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (39, 25, 'Quan Binh Thanh', 'quan-binh-thanh', 13, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (40, 25, 'Quan Binh Tan', 'quan-binh-tan', 14, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (41, 25, 'Quan Go Vap', 'quan-go-vap', 15, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (42, 25, 'Quan Phu Nhuan', 'quan-phu-nhuan', 16, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (43, 25, 'Quan Thu Duc', 'quan-thu-duc', 17, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (44, 25, 'Quan Tan Binh', 'quan-tan-binh', 18, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (45, 25, 'Quan Tan Phu', 'quan-tan-phu', 19, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (46, 25, 'Huyen Binh Chanh', 'huyen-binh-chanh', 20, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (47, 25, 'Huyen Can Gio', 'huyen-can-gio', 21, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (48, 25, 'Huyen Cu Chi', 'huyen-cu-chi', 22, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (49, 25, 'Huyen Hoc Mon', 'huyen-hoc-mon', 23, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (50, 25, 'Huyen Nha Be', 'huyen-nha-be', 24, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (51, 26, 'Huyen Ba Vi', 'huyen-ba-vi', 1, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (52, 26, 'Huyen Chuong My', 'huyen-chuong-my', 2, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (53, 26, 'Huyen Gia Lam', 'huyen-gia-lam', 3, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (54, 26, 'Huyen Hoai Duc', 'huyen-hoai-duc', 4, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (55, 26, 'Huyen Me Linh', 'huyen-me-linh', 5, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (56, 26, 'Huyen My Duc', 'huyen-my-duc', 6, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (57, 26, 'Huyen Phu Xuyen', 'huyen-phu-xuyen', 7, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (58, 26, 'Huyen Phu Tho', 'huyen-phu-tho', 8, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (59, 26, 'Huyen Quoc Oai', 'huyen-quoc-oai', 9, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (60, 26, 'Huyen Soc Son', 'huyen-soc-son', 10, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (61, 26, 'Huyen Thanh Oai', 'huyen-thanh-oai', 11, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (62, 26, 'Huyen Thanh Tri', 'huyen-thanh-tri', 12, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (63, 26, 'Huyen Thuong Tin', 'huyen-thuong-tin', 13, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (64, 26, 'Huyen Thach That', 'huyen-thach-that', 14, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (65, 26, 'Huyen Tu Liem', 'huyen-tu-liem', 15, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (66, 26, 'Huyen Dan Phuong', 'huyen-dan-phuong', 16, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (67, 26, 'Huyen Dong Anh', 'huyen-dong-anh', 17, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (68, 26, 'Huyen Ung Hoa', 'huyen-ung-hoa', 18, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (69, 26, 'Quan Ba Dinh', 'quan-ba-dinh', 19, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (70, 26, 'Quan Cau Giay', 'quan-cau-giay', 20, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (71, 26, 'Quan Hai Ba Trung', 'quan-hai-ba-trung', 21, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (72, 26, 'Quan Ha Dong', 'quan-ha-dong', 22, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (73, 26, 'Quan Hoang Kiem', 'quan-hoang-kiem', 23, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (74, 26, 'Quan Hoang Mai', 'quan-hoang-mai', 24, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (75, 26, 'Quan Long Bien', 'quan-long-bien', 25, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (76, 26, 'Quan Thanh Xuan', 'quan-thanh-xuan', 26, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (77, 26, 'Quan Tay Ho', 'quan-tay-ho', 27, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (78, 26, 'Quan Dong Da', 'quan-dong-da', 28, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (79, 26, 'Thi Xa Son Tay', 'thi-xa-son-tay', 29, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (80, 0, 'An Giang', 'an-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (81, 0, 'Ba Ria - Vung Tau', 'ba-ria-vung-tau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (82, 0, 'Binh Duong', 'binh-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (83, 0, 'Binh Phuoc', 'binh-phuoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (84, 0, 'Binh Thuan', 'binh-thuan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (85, 80, 'Huyen An Phu', 'huyen-an-phu', 1, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (86, 80, 'Huyen Chau Phu', 'huyen-chau-phu', 2, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (87, 80, 'Huyen Chau Thanh', 'huyen-chau-thanh', 3, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (88, 80, 'Huyen Cho Moi', 'huyen-cho-moi', 4, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (89, 80, 'Huyen Phu Tan', 'huyen-phu-tan', 5, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (90, 80, 'Huyen Thoai Son', 'huyen-thoai-son', 6, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (91, 80, 'Huyen Tinh Bien', 'huyen-tinh-bien', 7, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (92, 80, 'Huyen Tri Ton', 'huyen-tri-ton', 8, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (93, 80, 'Thanh pho Long Xuyen', 'thanh-pho-long-xuyen', 9, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (94, 80, 'Thi xa Chau Doc', 'thi-xa-chau-doc', 10, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (95, 80, 'Thi xa Tan Chau', 'thi-xa-tan-chau', 11, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (96, 81, 'Huyen Chau Duc', 'huyen-chau-duc', 1, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (97, 81, 'Huyen Con Dao', 'huyen-con-dao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (98, 81, 'Huyen Dat Do', 'huyen-dat-do', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (99, 81, 'Huyen Long Dien', 'huyen-long-dien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (100, 81, 'Huyen Tan Thanh', 'huyen-tan-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (101, 81, 'Huyen Xuyen Moc', 'huyen-xuyen-moc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (102, 81, 'Thanh pho Vung Tau', 'thanh-pho-vung-tau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (103, 81, 'Thi xa Ba Ria', 'thi-xa-ba-ria', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (104, 0, 'Bac Giang', 'bac-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (105, 104, 'Huyen Hiep Hoa', 'huyen-hiep-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (106, 104, 'Huyen Lang Giang', 'huyen-lang-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (107, 104, 'Huyen Luc Nam', 'huyen-luc-nam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (108, 104, 'Huyen Luc Ngan', 'huyen-luc-ngan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (109, 104, 'Huyen Son Dong', 'huyen-son-dong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (110, 104, 'Huyen Tan Yen', 'huyen-tan-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (111, 104, 'Huyen Viet Yen', 'huyen-viet-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (112, 104, 'Huyen Yen Dung', 'huyen-yen-dung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (113, 104, 'Huyen Yen The', 'huyen-yen-the', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (114, 104, 'Thanh pho Bac Giang', 'thanh-pho-bac-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (115, 0, 'Bac Kan', 'bac-kan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (116, 115, 'Huyen Ba Be', 'huyen-ba-be', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (117, 115, 'Huyen Bach Thong', 'huyen-bach-thong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (118, 115, 'Huyen Cho Don', 'huyen-cho-don', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (119, 115, 'Huyen Cho Moi', 'huyen-cho-moi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (120, 115, 'Huyen Na Ri', 'huyen-na-ri', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (121, 115, 'Huyen Ngan Son', 'huyen-ngan-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (122, 115, 'Huyen Pac Nam', 'huyen-pac-nam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (123, 115, 'Thi xa Bac Kan', 'thi-xa-bac-kan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (124, 0, 'Bac Lieu', 'bac-lieu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (125, 0, 'Bac Ninh', 'bac-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (126, 0, 'Ben Tre', 'ben-tre', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (127, 0, 'Binh Dinh', 'binh-dinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (128, 124, 'Huyen Dong Hai', 'huyen-dong-hai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (129, 124, 'Huyen Gia Rai', 'huyen-gia-rai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (130, 124, 'Huyen Hoa Binh', 'huyen-hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (131, 124, 'Huyen Hong Dan', 'huyen-hong-dan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (132, 124, 'Huyen Phuoc Long', 'huyen-phuoc-long', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (133, 124, 'Huyen Vinh Loi', 'huyen-vinh-loi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (134, 124, 'Thanh Pho Bac Lieu', 'thanh-pho-bac-lieu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (135, 125, 'Huyen Gia Binh', 'huyen-gia-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (136, 125, 'Huyen Luong Tai', 'huyen-luong-tai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (137, 125, 'Huyen Que Vo', 'huyen-que-vo', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (138, 125, 'Huyen Thuan Thanh', 'huyen-thuan-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (139, 125, 'Huyen Tien Du', 'huyen-tien-du', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (140, 125, 'Huyen Yen Phong', 'huyen-yen-phong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (141, 125, 'Thanh pho Bac Ninh', 'thanh-pho-bac-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (142, 125, 'Thi xa Tu Son', 'thi-xa-tu-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (143, 126, 'Huyen Ba Tri', 'huyen-ba-tri', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (144, 126, 'Huyen Binh Dai', 'huyen-binh-dai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (145, 126, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (146, 126, 'Huyen Cho Lach', 'huyen-cho-lach', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (147, 126, 'Huyen Giong Trom', 'huyen-giong-trom', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (148, 126, 'Huyen Mo Cay Bac', 'huyen-mo-cay-bac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (149, 126, 'Huyen Mo Cay Nam', 'huyen-mo-cay-nam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (150, 126, 'Huyen Thanh Phu', 'huyen-thanh-phu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (151, 126, 'Thanh pho Ben Tre', 'thanh-pho-ben-tre', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (152, 127, 'Huyen An Lao', 'huyen-an-lao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (153, 127, 'Huyen An Nhon', 'huyen-an-nhon', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (154, 127, 'Huyen Hoai An', 'huyen-hoai-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (155, 127, 'Huyen Hoai Nhon', 'huyen-hoai-nhon', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (156, 127, 'Huyen Phu My', 'huyen-phu-my', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (157, 127, 'Huyen Phu Cat', 'huyen-phu-cat', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (158, 127, 'Huyen Tay Son', 'huyen-tay-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (159, 127, 'Huyen Tuy Phuoc', 'huyen-tuy-phuoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (160, 127, 'Huyen Van Canh', 'huyen-van-canh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (161, 127, 'Huyen Vinh Thanh', 'huyen-vinh-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (162, 127, 'Thanh pho Quy Nhon', 'thanh-pho-quy-nhon', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (163, 82, 'Huyen Ben Cat', 'huyen-ben-cat', 0, 0, '0.0', 0);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (164, 82, 'Huyen Dau Tieng', 'huyen-dau-tieng', 0, 0, '0.0', 0);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (165, 82, 'Huyen Di An', 'huyen-di-an', 0, 0, '0.0', 0);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (166, 82, 'Huyen Phu Giao', 'huyen-phu-giao', 0, 0, '0.0', 0);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (167, 82, 'Huyen Tan Uyen', 'huyen-tan-uyen', 0, 0, '0.0', 0);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (168, 82, 'Huyen Thuan An', 'huyen-thuan-an', 0, 0, '0.0', 0);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (169, 82, 'Thi xa Thu Dau Mot', 'thi-xa-thu-dau-mot', 0, 0, '0.0', 0);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (170, 83, 'Huyen Bu Dang', 'huyen-bu-dang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (171, 83, 'Huyen Bu Dop', 'huyen-bu-dop', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (172, 83, 'Huyen Bu Gia Map', 'huyen-bu-gia-map', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (173, 83, 'Huyen Chon Thanh', 'huyen-chon-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (174, 83, 'Huyen Dong Phu', 'huyen-dong-phu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (175, 83, 'Huyen Hon Quan', 'huyen-hon-quan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (176, 83, 'Huyen Loc Ninh', 'huyen-loc-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (177, 83, 'Thi xa Binh Long', 'thi-xa-binh-long', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (178, 83, 'Thi xa Dong Xoai', 'thi-xa-dong-xoai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (179, 83, 'Thi xa Phuoc Long', 'thi-xa-phuoc-long', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (180, 84, 'Huyen Duc Linh', 'huyen-duc-linh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (181, 84, 'Huyen Bac Binh', 'huyen-bac-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (182, 84, 'Huyen Ham Tan', 'huyen-ham-tan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (183, 84, 'Huyen Ham Thuan Bac', 'huyen-ham-thuan-bac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (184, 84, 'Huyen Ham Thuan Nam', 'huyen-ham-thuan-nam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (185, 84, 'Huyen Phu Qui', 'huyen-phu-qui', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (186, 84, 'Huyen Tanh Linh', 'huyen-tanh-linh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (187, 84, 'Huyen Tuy Phong', 'huyen-tuy-phong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (188, 84, 'Thanh pho Phan Thiet', 'thanh-pho-phan-thiet', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (189, 84, 'Thi xa La Gi', 'thi-xa-la-gi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (190, 0, 'Cao Bang', 'cao-bang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (191, 0, 'Ca Mau', 'ca-mau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (192, 0, 'Dak Lak', 'dak-lak', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (193, 0, 'Dak Nong', 'dak-nong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (194, 0, 'Dien Bien', 'dien-bien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (195, 0, 'Dong Nai', 'dong-nai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (196, 0, 'Dong Thap', 'dong-thap', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (197, 0, 'Gia Lai', 'gia-lai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (198, 0, 'Ha Giang', 'ha-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (199, 0, 'Ha Nam', 'ha-nam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (200, 0, 'Ha Tinh', 'ha-tinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (201, 0, 'Hai Duong', 'hai-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (202, 0, 'Hau Giang', 'hau-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (203, 0, 'Hoa Binh', 'hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (204, 0, 'Hung Yen', 'hung-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (205, 0, 'Khanh Hoa', 'khanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (206, 0, 'Kien Giang', 'kien-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (207, 0, 'Kon Tum', 'kon-tum', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (208, 0, 'Lai Chau', 'lai-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (209, 0, 'Lam Dong', 'lam-dong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (210, 0, 'Lang Son', 'lang-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (211, 0, 'Lao Cai', 'lao-cai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (212, 0, 'Long An', 'long-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (213, 0, 'Nam Dinh', 'nam-dinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (214, 0, 'Nghe An', 'nghe-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (215, 0, 'Ninh Binh', 'ninh-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (216, 0, 'Ninh Thuan', 'ninh-thuan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (217, 0, 'Phu Tho', 'phu-tho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (218, 0, 'Phu Yen', 'phu-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (219, 0, 'Quang Binh', 'quang-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (220, 0, 'Quang Nam', 'quang-nam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (221, 0, 'Quang Ngai', 'quang-ngai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (222, 0, 'Quang Ninh', 'quang-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (223, 0, 'Quang Tri', 'quang-tri', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (224, 0, 'Soc Trang', 'soc-trang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (225, 0, 'Son La', 'son-la', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (226, 0, 'Tay Ninh', 'tay-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (227, 0, 'Thai Binh', 'thai-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (228, 0, 'Thai Nguyen', 'thai-nguyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (229, 0, 'Thanh Hoa', 'thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (230, 0, 'Thua Thien Hue', 'thua-thien-hue', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (231, 0, 'Tien Giang', 'tien-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (232, 0, 'Tra Vinh', 'tra-vinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (233, 0, 'Tuyen Quang', 'tuyen-quang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (234, 0, 'Vinh Long', 'vinh-long', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (235, 0, 'Vinh Phuc', 'vinh-phuc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (236, 0, 'Yen Bai', 'yen-bai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (237, 0, 'TP. Can Tho', 'tp-can-tho', 0, 1, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (238, 0, 'TP. Da Nang', 'tp-da-nang', 0, 1, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (239, 0, 'Hai Phong', 'hai-phong', 0, 1, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (240, 191, 'Huyen Cai Nuoc', 'huyen-cai-nuoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (241, 191, 'Huyen Dam Doi', 'huyen-dam-doi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (242, 191, 'Huyen Nam Can', 'huyen-nam-can', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (243, 191, 'Huyen Ngoc Hien', 'huyen-ngoc-hien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (244, 191, 'Huyen Phu Tan', 'huyen-phu-tan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (245, 191, 'Huyen Thoi Binh', 'huyen-thoi-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (246, 191, 'Huyen Tran Van Thoi', 'huyen-tran-van-thoi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (247, 191, 'Huyen U Minh', 'huyen-u-minh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (248, 191, 'Thanh pho Ca Mau', 'thanh-pho-ca-mau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (249, 190, 'Huyen Bao Lac', 'huyen-bao-lac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (250, 190, 'Huyen Bao Lam', 'huyen-bao-lam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (251, 190, 'Huyen Ha Lang', 'huyen-ha-lang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (252, 190, 'Huyen Ha Quang', 'huyen-ha-quang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (253, 190, 'Huyen Hoa An', 'huyen-hoa-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (254, 190, 'Huyen Nguyen Binh', 'huyen-nguyen-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (255, 190, 'Huyen Phuc Hoa', 'huyen-phuc-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (256, 190, 'Huyen Quang Uyen', 'huyen-quang-uyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (257, 190, 'Huyen Thach An', 'huyen-thach-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (258, 190, 'Huyen Thong Nong', 'huyen-thong-nong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (259, 190, 'Huyen Tra Linh', 'huyen-tra-linh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (260, 190, 'Huyen Trung Khanh', 'huyen-trung-khanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (261, 190, 'Thi xa Cao Bang', 'thi-xa-cao-bang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (262, 192, 'Huyen Buon Don', 'huyen-buon-don', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (263, 192, 'Huyen Cu Kuin', 'huyen-cu-kuin', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (264, 192, 'Huyen Cu MGar', 'huyen-cu-mgar', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (265, 192, 'Huyen Ea Kar', 'huyen-ea-kar', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (266, 192, 'Huyen Ea Sup', 'huyen-ea-sup', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (267, 192, 'Huyen EaHLeo', 'huyen-eahleo', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (268, 192, 'Huyen Krong Ana', 'huyen-krong-ana', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (269, 192, 'Huyen Krong Bong', 'huyen-krong-bong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (270, 192, 'Huyen Krong Buk', 'huyen-krong-buk', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (271, 192, 'Huyen Krong Nang', 'huyen-krong-nang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (272, 192, 'Huyen Krong Pac', 'huyen-krong-pac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (273, 192, 'Huyen Lak', 'huyen-lak', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (274, 192, 'Huyen MDrak', 'huyen-mdrak', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (275, 192, 'Thanh pho Buon Ma Thuot', 'thanh-pho-buon-ma-thuot', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (276, 192, 'Thi xa Buon Ho', 'thi-xa-buon-ho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (277, 193, 'Huyen Cu Jut', 'huyen-cu-jut', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (278, 193, 'Huyen Dak GLong', 'huyen-dak-glong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (279, 193, 'Huyen Dak Mil', 'huyen-dak-mil', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (280, 193, 'Huyen Dak RLap', 'huyen-dak-rlap', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (281, 193, 'Huyen Dak Song', 'huyen-dak-song', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (282, 193, 'Huyen KRong No', 'huyen-krong-no', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (283, 193, 'Huyen Tuy Duc', 'huyen-tuy-duc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (284, 193, 'Thi xa Gia Nghia', 'thi-xa-gia-nghia', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (285, 194, 'Huyen Dien Bien', 'huyen-dien-bien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (286, 194, 'Huyen Dien Bien Dong', 'huyen-dien-bien-dong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (287, 194, 'Huyen Muong Cha', 'huyen-muong-cha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (288, 194, 'Huyen Muong Nhe', 'huyen-muong-nhe', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (289, 194, 'Huyen Muong ang', 'huyen-muong-ang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (290, 194, 'Huyen Tua Chua', 'huyen-tua-chua', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (291, 194, 'Huyen Tuan Giao', 'huyen-tuan-giao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (292, 194, 'Thanh pho Dien Bien phu', 'thanh-pho-dien-bien-phu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (293, 194, 'Thi xa Muong Lay', 'thi-xa-muong-lay', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (294, 195, 'Huyen Cam My', 'huyen-cam-my', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (295, 195, 'Huyen Dinh Quan', 'huyen-dinh-quan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (296, 195, 'Huyen Long Thanh', 'huyen-long-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (297, 195, 'Huyen Nhon Trach', 'huyen-nhon-trach', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (298, 195, 'Huyen Tan Phu', 'huyen-tan-phu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (299, 195, 'Huyen Thong Nhat', 'huyen-thong-nhat', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (300, 195, 'Huyen Trang Bom', 'huyen-trang-bom', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (301, 195, 'Huyen Vinh Cuu', 'huyen-vinh-cuu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (302, 195, 'Huyen Xuan Loc', 'huyen-xuan-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (303, 195, 'Thanh pho Bien Hoa', 'thanh-pho-bien-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (304, 195, 'Thi xa Long Khanh', 'thi-xa-long-khanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (305, 196, 'Huyen Cao Lanh', 'huyen-cao-lanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (306, 196, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (307, 196, 'Huyen Hong Ngu', 'huyen-hong-ngu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (308, 196, 'Huyen Lai Vung', 'huyen-lai-vung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (309, 196, 'Huyen Lap Vo', 'huyen-lap-vo', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (310, 196, 'Huyen Tam Nong', 'huyen-tam-nong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (311, 196, 'Huyen Tan Hong', 'huyen-tan-hong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (312, 196, 'Huyen Thanh Binh', 'huyen-thanh-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (313, 196, 'Huyen Thap Muoi', 'huyen-thap-muoi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (314, 196, 'Thanh pho Cao Lanh', 'thanh-pho-cao-lanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (315, 196, 'Thi xa Hong Ngu', 'thi-xa-hong-ngu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (316, 196, 'Thi xa Sa Dec', 'thi-xa-sa-dec', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (317, 197, 'Huyen Chu Pah', 'huyen-chu-pah', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (318, 197, 'Huyen Chu Puh', 'huyen-chu-puh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (319, 197, 'Huyen Chu Se', 'huyen-chu-se', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (320, 197, 'Huyen ChuPRong', 'huyen-chuprong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (321, 197, 'Huyen Dak Doa', 'huyen-dak-doa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (322, 197, 'Huyen Dak Po', 'huyen-dak-po', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (323, 197, 'Huyen Duc Co', 'huyen-duc-co', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (324, 197, 'Huyen Ia Grai', 'huyen-ia-grai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (325, 197, 'Huyen KBang', 'huyen-kbang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (326, 197, 'Huyen Ia Pa', 'huyen-ia-pa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (327, 197, 'Huyen Kong Chro', 'huyen-kong-chro', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (328, 197, 'Huyen Krong Pa', 'huyen-krong-pa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (329, 197, 'Huyen Mang Yang', 'huyen-mang-yang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (330, 197, 'Huyen Phu Thien', 'huyen-phu-thien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (331, 197, 'Thanh pho Plei Ku', 'thanh-pho-plei-ku', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (332, 197, 'Thi xa AYun Pa', 'thi-xa-ayun-pa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (333, 197, 'Thi xa An Khe', 'thi-xa-an-khe', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (334, 198, 'Huyen Bac Me', 'huyen-bac-me', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (335, 198, 'Huyen Bac Quang', 'huyen-bac-quang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (336, 198, 'Huyen Dong Van', 'huyen-dong-van', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (337, 198, 'Huyen Hoang Su Phi', 'huyen-hoang-su-phi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (338, 198, 'Huyen Meo Vac', 'huyen-meo-vac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (339, 198, 'Huyen Quan Ba', 'huyen-quan-ba', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (340, 198, 'Huyen Quang Binh', 'huyen-quang-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (341, 198, 'Huyen Vi Xuyen', 'huyen-vi-xuyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (342, 198, 'Huyen Xin Man', 'huyen-xin-man', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (343, 198, 'Huyen Yen Minh', 'huyen-yen-minh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (344, 198, 'Thanh Pho Ha Giang', 'thanh-pho-ha-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (345, 199, 'Huyen Binh Luc', 'huyen-binh-luc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (346, 199, 'Huyen Duy Tien', 'huyen-duy-tien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (347, 199, 'Huyen Kim Bang', 'huyen-kim-bang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (348, 199, 'Huyen Ly Nhan', 'huyen-ly-nhan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (349, 199, 'Huyen Thanh Liem', 'huyen-thanh-liem', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (350, 199, 'Thanh pho Phu Ly', 'thanh-pho-phu-ly', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (351, 200, 'Huyen Cam Xuyen', 'huyen-cam-xuyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (352, 200, 'Huyen Can Loc', 'huyen-can-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (353, 200, 'Huyen Duc Tho', 'huyen-duc-tho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (354, 200, 'Huyen Huong Khe', 'huyen-huong-khe', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (355, 200, 'Huyen Huong Son', 'huyen-huong-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (356, 200, 'Huyen Ky Anh', 'huyen-ky-anh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (357, 200, 'Huyen Loc Ha', 'huyen-loc-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (358, 200, 'Huyen Nghi Xuan', 'huyen-nghi-xuan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (359, 200, 'Huyen Thach Ha', 'huyen-thach-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (360, 200, 'Huyen Vu Quang', 'huyen-vu-quang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (361, 200, 'Thanh pho Ha Tinh', 'thanh-pho-ha-tinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (362, 200, 'Thi xa Hong Linh', 'thi-xa-hong-linh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (363, 201, 'Huyen Binh Giang', 'huyen-binh-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (364, 201, 'Huyen Cam Giang', 'huyen-cam-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (365, 201, 'Huyen Gia Loc', 'huyen-gia-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (366, 201, 'Huyen Kim Thanh', 'huyen-kim-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (367, 201, 'Huyen Kinh Mon', 'huyen-kinh-mon', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (368, 201, 'Huyen Nam Sach', 'huyen-nam-sach', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (369, 201, 'Huyen Ninh Giang', 'huyen-ninh-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (370, 201, 'Huyen Thanh Ha', 'huyen-thanh-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (371, 201, 'Huyen Thanh Mien', 'huyen-thanh-mien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (372, 201, 'Huyen Tu Ky', 'huyen-tu-ky', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (373, 201, 'Thanh pho Hai Duong', 'thanh-pho-hai-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (374, 201, 'Thi xa Chi Linh', 'thi-xa-chi-linh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (375, 203, 'Huyen Cao Phong', 'huyen-cao-phong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (376, 203, 'Huyen Da Bac', 'huyen-da-bac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (377, 203, 'Huyen Kim Boi', 'huyen-kim-boi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (378, 203, 'Huyen Ky Son', 'huyen-ky-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (379, 203, 'Huyen Lac Son', 'huyen-lac-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (380, 203, 'Huyen Lac Thuy', 'huyen-lac-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (381, 203, 'Huyen Luong Son', 'huyen-luong-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (382, 203, 'Huyen Mai Chau', 'huyen-mai-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (383, 203, 'Huyen Tan Lac', 'huyen-tan-lac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (384, 203, 'Huyen Yen Thuy', 'huyen-yen-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (385, 203, 'Thanh pho Hoa Binh', 'thanh-pho-hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (386, 204, 'Huyen An Thi', 'huyen-an-thi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (387, 204, 'Huyen Khoai Chau', 'huyen-khoai-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (388, 204, 'Huyen Kim Dong', 'huyen-kim-dong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (389, 204, 'Huyen My Hao', 'huyen-my-hao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (390, 204, 'Huyen Phu Cu', 'huyen-phu-cu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (391, 204, 'Huyen Tien Lu', 'huyen-tien-lu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (392, 204, 'Huyen Van Giang', 'huyen-van-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (393, 204, 'Huyen Van Lam', 'huyen-van-lam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (394, 204, 'Huyen Yen My', 'huyen-yen-my', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (395, 204, 'Thanh pho Hung Yen', 'thanh-pho-hung-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (396, 205, 'Huyen Cam Lam', 'huyen-cam-lam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (397, 205, 'Huyen Dien Khanh', 'huyen-dien-khanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (398, 205, 'Huyen Khanh Son', 'huyen-khanh-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (399, 205, 'Huyen Khanh Vinh', 'huyen-khanh-vinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (400, 205, 'Huyen Ninh Hoa', 'huyen-ninh-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (401, 205, 'Huyen Truong Sa', 'huyen-truong-sa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (402, 205, 'Huyen Van Ninh', 'huyen-van-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (403, 205, 'Thanh pho Nha Trang', 'thanh-pho-nha-trang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (404, 205, 'Thi xa Cam Ranh', 'thi-xa-cam-ranh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (405, 202, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (406, 202, 'Huyen Chau Thanh A', 'huyen-chau-thanh-a', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (407, 202, 'Huyen Long My', 'huyen-long-my', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (408, 202, 'Huyen Phung Hiep', 'huyen-phung-hiep', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (409, 202, 'Huyen Vi Thuy', 'huyen-vi-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (410, 202, 'Thanh Pho Vi Thanh', 'thanh-pho-vi-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (411, 202, 'Thi xa Nga Bay', 'thi-xa-nga-bay', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (412, 206, 'Huyen An Bien', 'huyen-an-bien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (413, 206, 'Huyen An Minh', 'huyen-an-minh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (414, 206, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (415, 206, 'Huyen Giang Thanh', 'huyen-giang-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (416, 206, 'Huyen Giong Rieng', 'huyen-giong-rieng', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (417, 206, 'Huyen Go Quao', 'huyen-go-quao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (418, 206, 'Huyen Hon Dat', 'huyen-hon-dat', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (419, 206, 'Huyen Kien Hai', 'huyen-kien-hai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (420, 206, 'Huyen Kien Luong', 'huyen-kien-luong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (421, 206, 'Huyen Phu Quoc', 'huyen-phu-quoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (422, 206, 'Huyen Tan Hiep', 'huyen-tan-hiep', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (423, 206, 'Huyen U Minh Thuong', 'huyen-u-minh-thuong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (424, 206, 'Huyen Vinh Thuan', 'huyen-vinh-thuan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (425, 206, 'Thanh pho Rach Gia', 'thanh-pho-rach-gia', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (426, 206, 'Thi xa Ha Tien', 'thi-xa-ha-tien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (427, 207, 'Huyen Dak Glei', 'huyen-dak-glei', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (428, 207, 'Huyen Dak Ha', 'huyen-dak-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (429, 207, 'Huyen Dak To', 'huyen-dak-to', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (430, 207, 'Huyen Kon Plong', 'huyen-kon-plong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (431, 207, 'Huyen Kon Ray', 'huyen-kon-ray', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (432, 207, 'Huyen Ngoc Hoi', 'huyen-ngoc-hoi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (433, 207, 'Huyen Sa Thay', 'huyen-sa-thay', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (434, 207, 'Huyen Tu Mo Rong', 'huyen-tu-mo-rong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (435, 207, 'Thanh pho Kon Tum', 'thanh-pho-kon-tum', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (436, 208, 'Huyen Muong Te', 'huyen-muong-te', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (437, 208, 'Huyen Phong Tho', 'huyen-phong-tho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (438, 208, 'Huyen Sin Ho', 'huyen-sin-ho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (439, 208, 'Huyen Tam Duong', 'huyen-tam-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (440, 208, 'Huyen Tan Uyen', 'huyen-tan-uyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (441, 208, 'Huyen Than Uyen', 'huyen-than-uyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (442, 208, 'Thi xa Lai Chau', 'thi-xa-lai-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (443, 209, 'Huyen Bao Lam', 'huyen-bao-lam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (444, 209, 'Huyen Cat Tien', 'huyen-cat-tien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (445, 209, 'Huyen Da Huoai', 'huyen-da-huoai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (446, 209, 'Huyen Da Teh', 'huyen-da-teh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (447, 209, 'Huyen Dam Rong', 'huyen-dam-rong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (448, 209, 'Huyen Di Linh', 'huyen-di-linh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (449, 209, 'Huyen Don Duong', 'huyen-don-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (450, 209, 'Huyen Duc Trong', 'huyen-duc-trong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (451, 209, 'Huyen Lac Duong', 'huyen-lac-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (452, 209, 'Huyen Lam Ha', 'huyen-lam-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (453, 209, 'Thanh pho Bao Loc', 'thanh-pho-bao-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (454, 209, 'Thanh pho Da Lat', 'thanh-pho-da-lat', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (455, 210, 'Huyen Bac Son', 'huyen-bac-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (456, 210, 'Huyen Binh Gia', 'huyen-binh-gia', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (457, 210, 'Huyen Cao Loc', 'huyen-cao-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (458, 210, 'Huyen Chi Lang', 'huyen-chi-lang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (459, 210, 'Huyen Dinh Lap', 'huyen-dinh-lap', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (460, 210, 'Huyen Huu Lung', 'huyen-huu-lung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (461, 210, 'Huyen Loc Binh', 'huyen-loc-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (462, 210, 'Huyen Trang Dinh', 'huyen-trang-dinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (463, 210, 'Huyen Van Lang', 'huyen-van-lang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (464, 210, 'Huyen Van Quan', 'huyen-van-quan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (465, 210, 'Thanh pho Lang Son', 'thanh-pho-lang-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (466, 211, 'Huyen Bac Ha', 'huyen-bac-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (467, 211, 'Huyen Bao Thang', 'huyen-bao-thang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (468, 211, 'Huyen Bao Yen', 'huyen-bao-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (469, 211, 'Huyen Bat Xat', 'huyen-bat-xat', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (470, 211, 'Huyen Muong Khuong', 'huyen-muong-khuong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (471, 211, 'Huyen Sa Pa', 'huyen-sa-pa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (472, 211, 'Huyen Si Ma Cai', 'huyen-si-ma-cai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (473, 211, 'Huyen Van Ban', 'huyen-van-ban', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (474, 211, 'Thanh pho Lao Cai', 'thanh-pho-lao-cai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (475, 212, 'Huyen Ben Luc', 'huyen-ben-luc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (476, 212, 'Huyen Can Duoc', 'huyen-can-duoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (477, 212, 'Huyen Can Giuoc', 'huyen-can-giuoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (478, 212, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (479, 212, 'Huyen Duc Hoa', 'huyen-duc-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (480, 212, 'Huyen Duc Hue', 'huyen-duc-hue', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (481, 212, 'Huyen Moc Hoa', 'huyen-moc-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (482, 212, 'Huyen Tan Hung', 'huyen-tan-hung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (483, 212, 'Huyen Tan Thanh', 'huyen-tan-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (484, 212, 'Huyen Tan Tru', 'huyen-tan-tru', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (485, 212, 'Huyen Thanh Hoa', 'huyen-thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (486, 212, 'Huyen Thu Thua', 'huyen-thu-thua', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (487, 212, 'Huyen Vinh Hung', 'huyen-vinh-hung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (488, 212, 'Thanh pho Tan An', 'thanh-pho-tan-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (489, 213, 'Huyen Giao Thuy', 'huyen-giao-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (490, 213, 'Huyen Hai Hau', 'huyen-hai-hau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (491, 213, 'Huyen My Loc', 'huyen-my-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (492, 213, 'Huyen Nam Truc', 'huyen-nam-truc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (493, 213, 'Huyen Nghia Hung', 'huyen-nghia-hung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (494, 213, 'Huyen Truc Ninh', 'huyen-truc-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (495, 213, 'Huyen Vu Ban', 'huyen-vu-ban', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (496, 213, 'Huyen Xuan Truong', 'huyen-xuan-truong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (497, 213, 'Huyen y Yen', 'huyen-y-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (498, 213, 'Thanh pho Nam Dinh', 'thanh-pho-nam-dinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (499, 214, 'Huyen Anh Son', 'huyen-anh-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (500, 214, 'Huyen Con Cuong', 'huyen-con-cuong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (501, 214, 'Huyen Dien Chau', 'huyen-dien-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (502, 214, 'Huyen Do Luong', 'huyen-do-luong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (503, 214, 'Huyen Hung Nguyen', 'huyen-hung-nguyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (504, 214, 'Huyen Ky Son', 'huyen-ky-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (505, 214, 'Huyen Nam Dan', 'huyen-nam-dan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (506, 214, 'Huyen Nghi Loc', 'huyen-nghi-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (507, 214, 'Huyen Nghia Dan', 'huyen-nghia-dan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (508, 214, 'Huyen Que Phong', 'huyen-que-phong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (509, 214, 'Huyen Quy Chau', 'huyen-quy-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (510, 214, 'Huyen Quy Hop', 'huyen-quy-hop', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (511, 214, 'Huyen Quynh Luu', 'huyen-quynh-luu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (512, 214, 'Huyen Tan Ky', 'huyen-tan-ky', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (513, 214, 'Huyen Thanh Chuong', 'huyen-thanh-chuong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (514, 214, 'Huyen Tuong Duong', 'huyen-tuong-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (515, 214, 'Huyen Yen Thanh', 'huyen-yen-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (516, 214, 'Thanh pho Vinh', 'thanh-pho-vinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (517, 214, 'Thi xa Cua Lo', 'thi-xa-cua-lo', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (518, 214, 'Thi xa Thai Hoa', 'thi-xa-thai-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (519, 215, 'Huyen Gia Vien', 'huyen-gia-vien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (520, 215, 'Huyen Hoa Lu', 'huyen-hoa-lu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (521, 215, 'Huyen Kim Son', 'huyen-kim-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (522, 215, 'Huyen Nho Quan', 'huyen-nho-quan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (523, 215, 'Huyen Yen Khanh', 'huyen-yen-khanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (524, 215, 'Huyen Yen Mo', 'huyen-yen-mo', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (525, 215, 'Thanh pho Ninh Binh', 'thanh-pho-ninh-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (526, 215, 'Thi xa Tam Diep', 'thi-xa-tam-diep', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (527, 216, 'Huyen Bac ai', 'huyen-bac-ai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (528, 216, 'Huyen Ninh Hai', 'huyen-ninh-hai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (529, 216, 'Huyen Ninh Phuoc', 'huyen-ninh-phuoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (530, 216, 'Huyen Ninh Son', 'huyen-ninh-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (531, 216, 'Huyen Thuan Bac', 'huyen-thuan-bac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (532, 216, 'Huyen Thuan Nam', 'huyen-thuan-nam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (533, 216, 'Thanh pho Phan Rang-Thap Cham', 'thanh-pho-phan-rang-thap-cham', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (534, 217, 'Huyen Cam Khe', 'huyen-cam-khe', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (535, 217, 'Huyen Doan Hung', 'huyen-doan-hung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (536, 217, 'Huyen Ha Hoa', 'huyen-ha-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (537, 217, 'Huyen Lam Thao', 'huyen-lam-thao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (538, 217, 'Huyen Phu Ninh', 'huyen-phu-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (539, 217, 'Huyen Tam Nong', 'huyen-tam-nong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (540, 217, 'Huyen Tan Son', 'huyen-tan-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (541, 217, 'Huyen Thanh Ba', 'huyen-thanh-ba', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (542, 217, 'Huyen Thanh Son', 'huyen-thanh-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (543, 217, 'Huyen Thanh Thuy', 'huyen-thanh-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (544, 217, 'Huyen Yen Lap', 'huyen-yen-lap', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (545, 217, 'Thanh pho Viet Tri', 'thanh-pho-viet-tri', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (546, 217, 'Thi xa Phu Tho', 'thi-xa-phu-tho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (547, 218, 'Huyen Dong Hoa', 'huyen-dong-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (548, 218, 'Huyen Dong Xuan', 'huyen-dong-xuan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (549, 218, 'Huyen Phu Hoa', 'huyen-phu-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (550, 218, 'Huyen Son Hoa', 'huyen-son-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (551, 218, 'Huyen Song Hinh', 'huyen-song-hinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (552, 218, 'Huyen Tay Hoa', 'huyen-tay-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (553, 218, 'Huyen Tuy An', 'huyen-tuy-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (554, 218, 'Thanh pho Tuy Hoa', 'thanh-pho-tuy-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (555, 218, 'Thi xa Song Cau', 'thi-xa-song-cau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (556, 239, 'Huyen An Duong', 'huyen-an-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (557, 239, 'Huyen An Lao', 'huyen-an-lao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (558, 239, 'Huyen Bach Long Vi', 'huyen-bach-long-vi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (559, 239, 'Huyen Cat Hai', 'huyen-cat-hai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (560, 239, 'Huyen Kien Thuy', 'huyen-kien-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (561, 239, 'Huyen Thuy Nguyen', 'huyen-thuy-nguyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (562, 239, 'Huyen Tien Lang', 'huyen-tien-lang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (563, 239, 'Huyen Vinh Bao', 'huyen-vinh-bao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (564, 239, 'Quan Do Son', 'quan-do-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (565, 239, 'Quan Duong Kinh', 'quan-duong-kinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (566, 239, 'Quan Hai An', 'quan-hai-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (567, 239, 'Quan Hong Bang', 'quan-hong-bang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (568, 239, 'Quan Kien An', 'quan-kien-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (569, 239, 'Quan Le Chan', 'quan-le-chan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (570, 239, 'Quan Ngo Quyen', 'quan-ngo-quyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (571, 238, 'Huyen Hoa Vang', 'huyen-hoa-vang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (572, 238, 'Huyen Hoang Sa', 'huyen-hoang-sa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (573, 238, 'Quan Cam Le', 'quan-cam-le', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (574, 238, 'Quan Hai Chau', 'quan-hai-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (575, 238, 'Quan Lien Chieu', 'quan-lien-chieu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (576, 238, 'Quan Ngu Hanh Son', 'quan-ngu-hanh-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (577, 238, 'Quan Son Tra', 'quan-son-tra', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (578, 238, 'Quan Thanh Khe', 'quan-thanh-khe', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (579, 237, 'Huyen Co Do', 'huyen-co-do', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (580, 237, 'Huyen Phong Dien', 'huyen-phong-dien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (581, 237, 'Huyen Thoi Lai', 'huyen-thoi-lai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (582, 237, 'Huyen Vinh Thanh', 'huyen-vinh-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (583, 237, 'Quan Binh Thuy', 'quan-binh-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (584, 237, 'Quan Cai Rang', 'quan-cai-rang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (585, 237, 'Quan Ninh Kieu', 'quan-ninh-kieu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (586, 237, 'Quan O Mon', 'quan-o-mon', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (587, 237, 'Quan Thot Not', 'quan-thot-not', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (588, 231, 'Huyen Cai Be', 'huyen-cai-be', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (589, 231, 'Huyen Cai Lay', 'huyen-cai-lay', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (590, 231, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (591, 231, 'Huyen Cho Gao', 'huyen-cho-gao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (592, 231, 'Huyen Go Cong Dong', 'huyen-go-cong-dong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (593, 231, 'Huyen Go Cong Tay', 'huyen-go-cong-tay', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (594, 231, 'Huyen Tan Phu Dong', 'huyen-tan-phu-dong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (595, 231, 'Huyen Tan Phuoc', 'huyen-tan-phuoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (596, 231, 'Thanh pho My Tho', 'thanh-pho-my-tho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (597, 231, 'Thi xa Go Cong', 'thi-xa-go-cong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (598, 232, 'Huyen Cang Long', 'huyen-cang-long', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (599, 232, 'Huyen Cau Ke', 'huyen-cau-ke', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (600, 232, 'Huyen Cau Ngang', 'huyen-cau-ngang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (601, 232, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (602, 232, 'Huyen Duyen Hai', 'huyen-duyen-hai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (603, 232, 'Huyen Tieu Can', 'huyen-tieu-can', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (604, 232, 'Huyen Tra Cu', 'huyen-tra-cu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (605, 232, 'Thanh pho Tra Vinh', 'thanh-pho-tra-vinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (606, 234, 'Huyen Binh Minh', 'huyen-binh-minh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (607, 234, 'Huyen Binh Tan', 'huyen-binh-tan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (608, 234, 'Huyen Long Ho', 'huyen-long-ho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (609, 234, 'Huyen Mang Thit', 'huyen-mang-thit', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (610, 234, 'Huyen Tam Binh', 'huyen-tam-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (611, 234, 'Huyen Tra On', 'huyen-tra-on', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (612, 234, 'Huyen Vung Liem', 'huyen-vung-liem', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (613, 234, 'Thanh pho Vinh Long', 'thanh-pho-vinh-long', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (614, 223, 'Huyen Cam Lo', 'huyen-cam-lo', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (615, 223, 'Huyen Con Co', 'huyen-con-co', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (616, 223, 'Huyen Da Krong', 'huyen-da-krong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (617, 223, 'Huyen Gio Linh', 'huyen-gio-linh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (618, 223, 'Huyen Hai Lang', 'huyen-hai-lang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (619, 223, 'Huyen Huong Hoa', 'huyen-huong-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (620, 223, 'Huyen Trieu Phong', 'huyen-trieu-phong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (621, 223, 'Huyen Vinh Linh', 'huyen-vinh-linh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (622, 223, 'Thanh pho Dong Ha', 'thanh-pho-dong-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (623, 223, 'Thi xa Quang Tri', 'thi-xa-quang-tri', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (624, 221, 'Huyen Ba To', 'huyen-ba-to', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (625, 221, 'Huyen Binh Son', 'huyen-binh-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (626, 221, 'Huyen Duc Pho', 'huyen-duc-pho', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (627, 221, 'Huyen Ly Son', 'huyen-ly-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (628, 221, 'Huyen Minh Long', 'huyen-minh-long', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (629, 221, 'Huyen Mo Duc', 'huyen-mo-duc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (630, 221, 'Huyen Nghia Hanh', 'huyen-nghia-hanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (631, 221, 'Huyen Son Ha', 'huyen-son-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (632, 221, 'Huyen Son Tay', 'huyen-son-tay', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (633, 221, 'Huyen Son Tinh', 'huyen-son-tinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (634, 221, 'Huyen Tay Tra', 'huyen-tay-tra', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (635, 221, 'Huyen Tra Bong', 'huyen-tra-bong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (636, 221, 'Huyen Tu Nghia', 'huyen-tu-nghia', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (637, 221, 'Thanh pho Quang Ngai', 'thanh-pho-quang-ngai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (638, 220, 'Huyen Bac Tra My', 'huyen-bac-tra-my', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (639, 220, 'Huyen Dai Loc', 'huyen-dai-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (640, 220, 'Huyen Dien Ban', 'huyen-dien-ban', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (641, 220, 'Huyen Dong Giang', 'huyen-dong-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (642, 220, 'Huyen Duy Xuyen', 'huyen-duy-xuyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (643, 220, 'Huyen Hiep Duc', 'huyen-hiep-duc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (644, 220, 'Huyen Nam Giang', 'huyen-nam-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (645, 220, 'Huyen Nam Tra My', 'huyen-nam-tra-my', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (646, 220, 'Huyen Nong Son', 'huyen-nong-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (647, 220, 'Huyen Nui Thanh', 'huyen-nui-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (648, 220, 'Huyen Phu Ninh', 'huyen-phu-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (649, 220, 'Huyen Phuoc Son', 'huyen-phuoc-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (650, 220, 'Huyen Que Son', 'huyen-que-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (651, 220, 'Huyen Tay Giang', 'huyen-tay-giang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (652, 220, 'Huyen Thang Binh', 'huyen-thang-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (653, 220, 'Huyen Tien Phuoc', 'huyen-tien-phuoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (654, 220, 'Thanh pho Hoi An', 'thanh-pho-hoi-an', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (655, 220, 'Thanh pho Tam Ky', 'thanh-pho-tam-ky', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (656, 219, 'Huyen Bo Trach', 'huyen-bo-trach', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (657, 219, 'Huyen Le Thuy', 'huyen-le-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (658, 219, 'Huyen Minh Hoa', 'huyen-minh-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (659, 219, 'Huyen Quang Ninh', 'huyen-quang-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (660, 219, 'Huyen Quang Trach', 'huyen-quang-trach', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (661, 219, 'Huyen Tuyen Hoa', 'huyen-tuyen-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (662, 219, 'Thanh pho Dong Hoi', 'thanh-pho-dong-hoi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (663, 230, 'Huyen A Luoi', 'huyen-a-luoi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (664, 230, 'Huyen Huong Tra', 'huyen-huong-tra', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (665, 230, 'Huyen Nam Dong', 'huyen-nam-dong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (666, 230, 'Huyen Phong Dien', 'huyen-phong-dien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (667, 230, 'Huyen Phu Loc', 'huyen-phu-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (668, 230, 'Huyen Phu Vang', 'huyen-phu-vang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (669, 230, 'Huyen Quang Dien', 'huyen-quang-dien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (670, 230, 'Thanh pho Hue', 'thanh-pho-hue', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (671, 230, 'Thi xa Huong Thuy', 'thi-xa-huong-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (672, 226, 'Huyen Ben Cau', 'huyen-ben-cau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (673, 226, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (674, 226, 'Huyen Duong Minh Chau', 'huyen-duong-minh-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (675, 226, 'Huyen Go Dau', 'huyen-go-dau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (676, 226, 'Huyen Hoa Thanh', 'huyen-hoa-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (677, 226, 'Huyen Tan Bien', 'huyen-tan-bien', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (678, 226, 'Huyen Tan Chau', 'huyen-tan-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (679, 226, 'Huyen Trang Bang', 'huyen-trang-bang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (680, 226, 'Thi xa Tay Ninh', 'thi-xa-tay-ninh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (681, 222, 'Huyen Ba Che', 'huyen-ba-che', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (682, 222, 'Huyen Binh Lieu', 'huyen-binh-lieu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (683, 222, 'Huyen Co To', 'huyen-co-to', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (684, 222, 'Huyen Dam Ha', 'huyen-dam-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (685, 222, 'Huyen Dong Trieu', 'huyen-dong-trieu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (686, 222, 'Huyen Hai Ha', 'huyen-hai-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (687, 222, 'Huyen Hoanh Bo', 'huyen-hoanh-bo', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (688, 222, 'Huyen Tien Yen', 'huyen-tien-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (689, 222, 'Huyen Van Don', 'huyen-van-don', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (690, 222, 'Huyen Yen Hung', 'huyen-yen-hung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (691, 222, 'Thanh pho Ha Long', 'thanh-pho-ha-long', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (692, 222, 'Thanh pho Mong Cai', 'thanh-pho-mong-cai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (693, 222, 'Thi xa Cam Pha', 'thi-xa-cam-pha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (694, 222, 'Thi xa Uong Bi', 'thi-xa-uong-bi', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (695, 224, 'Huyen Chau Thanh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (696, 224, 'Huyen Cu Lao Dung', 'huyen-cu-lao-dung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (697, 224, 'Huyen Ke Sach', 'huyen-ke-sach', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (698, 224, 'Huyen Long Phu', 'huyen-long-phu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (699, 224, 'Huyen My Tu', 'huyen-my-tu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (700, 224, 'Huyen My Xuyen', 'huyen-my-xuyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (701, 224, 'Huyen Nga Nam', 'huyen-nga-nam', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (702, 224, 'Huyen Thanh Tri', 'huyen-thanh-tri', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (703, 224, 'Huyen Tran De', 'huyen-tran-de', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (704, 224, 'Huyen Vinh Chau', 'huyen-vinh-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (705, 224, 'Thanh pho Soc Trang', 'thanh-pho-soc-trang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (706, 225, 'Huyen Bac Yen', 'huyen-bac-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (707, 225, 'Huyen Mai Son', 'huyen-mai-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (708, 225, 'Huyen Moc Chau', 'huyen-moc-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (709, 225, 'Huyen Muong La', 'huyen-muong-la', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (710, 225, 'Huyen Phu Yen', 'huyen-phu-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (711, 225, 'Huyen Quynh Nhai', 'huyen-quynh-nhai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (712, 225, 'Huyen Song Ma', 'huyen-song-ma', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (713, 225, 'Huyen Sop Cop', 'huyen-sop-cop', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (714, 225, 'Huyen Thuan Chau', 'huyen-thuan-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (715, 225, 'Huyen Yen Chau', 'huyen-yen-chau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (716, 225, 'Thanh pho Son La', 'thanh-pho-son-la', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (717, 227, 'Huyen Dong Hung', 'huyen-dong-hung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (718, 227, 'Huyen Hung Ha', 'huyen-hung-ha', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (719, 227, 'Huyen Kien Xuong', 'huyen-kien-xuong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (720, 227, 'Huyen Quynh Phu', 'huyen-quynh-phu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (721, 227, 'Huyen Thai Thuy', 'huyen-thai-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (722, 227, 'Huyen Tien Hai', 'huyen-tien-hai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (723, 227, 'Huyen Vu Thu', 'huyen-vu-thu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (724, 227, 'Thanh pho Thai Binh', 'thanh-pho-thai-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (725, 228, 'Huyen Dai Tu', 'huyen-dai-tu', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (726, 228, 'Huyen Dinh Hoa', 'huyen-dinh-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (727, 228, 'Huyen Dong Hy', 'huyen-dong-hy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (728, 228, 'Huyen Pho Yen', 'huyen-pho-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (729, 228, 'Huyen Phu Binh', 'huyen-phu-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (730, 228, 'Huyen Phu Luong', 'huyen-phu-luong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (731, 228, 'Huyen Vo Nhai', 'huyen-vo-nhai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (732, 228, 'Thanh pho Thai Nguyen', 'thanh-pho-thai-nguyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (733, 228, 'Thi xa Song Cong', 'thi-xa-song-cong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (734, 229, 'Huyen Ba Thuoc', 'huyen-ba-thuoc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (735, 229, 'Huyen Cam Thuy', 'huyen-cam-thuy', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (736, 229, 'Huyen Dong Son', 'huyen-dong-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (737, 229, 'Huyen Ha Trung', 'huyen-ha-trung', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (738, 229, 'Huyen Hau Loc', 'huyen-hau-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (739, 229, 'Huyen Hoang Hoa', 'huyen-hoang-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (740, 229, 'Huyen Lang Chanh', 'huyen-lang-chanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (741, 229, 'Huyen Muong Lat', 'huyen-muong-lat', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (742, 229, 'Huyen Nga Son', 'huyen-nga-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (743, 229, 'Huyen Ngoc Lac', 'huyen-ngoc-lac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (744, 229, 'Huyen Nhu Thanh', 'huyen-nhu-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (745, 229, 'Huyen Nhu Xuan', 'huyen-nhu-xuan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (746, 229, 'Huyen Nong Cong', 'huyen-nong-cong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (747, 229, 'Huyen Quan Hoa', 'huyen-quan-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (748, 229, 'Huyen Quan Son', 'huyen-quan-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (749, 229, 'Huyen Quang Xuong', 'huyen-quang-xuong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (750, 229, 'Huyen Thach Thanh', 'huyen-thach-thanh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (751, 229, 'Huyen Thieu Hoa', 'huyen-thieu-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (752, 229, 'Huyen Tho Xuan', 'huyen-tho-xuan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (753, 229, 'Huyen Thuong Xuan', 'huyen-thuong-xuan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (754, 229, 'Huyen Tinh Gia', 'huyen-tinh-gia', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (755, 229, 'Huyen Trieu Son', 'huyen-trieu-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (756, 229, 'Huyen Vinh Loc', 'huyen-vinh-loc', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (757, 229, 'Huyen Yen Dinh', 'huyen-yen-dinh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (758, 229, 'Thanh pho Thanh Hoa', 'thanh-pho-thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (759, 229, 'Thi xa Bim Son', 'thi-xa-bim-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (760, 229, 'Thi xa Sam Son', 'thi-xa-sam-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (761, 233, 'Huyen Chiem Hoa', 'huyen-chiem-hoa', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (762, 233, 'Huyen Ham Yen', 'huyen-ham-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (763, 233, 'Huyen Na Hang', 'huyen-na-hang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (764, 233, 'Huyen Son Duong', 'huyen-son-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (765, 233, 'Huyen Yen Son', 'huyen-yen-son', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (766, 233, 'Thanh pho Tuyen Quang', 'thanh-pho-tuyen-quang', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (767, 235, 'Huyen Binh Xuyen', 'huyen-binh-xuyen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (768, 235, 'Huyen Lap Thach', 'huyen-lap-thach', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (769, 235, 'Huyen Song Lo', 'huyen-song-lo', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (770, 235, 'Huyen Tam Dao', 'huyen-tam-dao', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (771, 235, 'Huyen Tam Duong', 'huyen-tam-duong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (772, 235, 'Huyen Vinh Tuong', 'huyen-vinh-tuong', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (773, 235, 'Huyen Yen Lac', 'huyen-yen-lac', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (774, 235, 'Thanh pho Vinh Yen', 'thanh-pho-vinh-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (775, 235, 'Thi xa Phuc Yen', 'thi-xa-phuc-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (776, 236, 'Huyen Luc Yen', 'huyen-luc-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (777, 236, 'Huyen Mu Cang Chai', 'huyen-mu-cang-chai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (778, 236, 'Huyen Tram Tau', 'huyen-tram-tau', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (779, 236, 'Huyen Tran Yen', 'huyen-tran-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (780, 236, 'Huyen Van Chan', 'huyen-van-chan', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (781, 236, 'Huyen Van Yen', 'huyen-van-yen', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (782, 236, 'Huyen Yen Binh', 'huyen-yen-binh', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (783, 236, 'Thanh pho Yen Bai', 'thanh-pho-yen-bai', 0, 0, '0.0', 1);
INSERT INTO city_en (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (784, 236, 'Thi xa Nghia Lo', 'thi-xa-nghia-lo', 0, 0, '0.0', 1);


#
# TABLE STRUCTURE FOR: config
#

DROP TABLE IF EXISTS config;

CREATE TABLE `config` (
  `lang` varchar(20) DEFAULT NULL,
  `modules` varchar(200) DEFAULT NULL,
  `config_name` varchar(254) DEFAULT NULL,
  `config_alias` varchar(254) DEFAULT NULL,
  `config_value` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO config (`lang`, `modules`, `config_name`, `config_alias`, `config_value`) VALUES ('sys', 'global', 'site_close', NULL, '0');
INSERT INTO config (`lang`, `modules`, `config_name`, `config_alias`, `config_value`) VALUES ('vi', 'global', 'site_name', NULL, 'Công ty ABC');
INSERT INTO config (`lang`, `modules`, `config_name`, `config_alias`, `config_value`) VALUES ('vi', 'global', 'site_message_close', NULL, 'Hiện tại website đang trong quá trình nâng cấp');
INSERT INTO config (`lang`, `modules`, `config_name`, `config_alias`, `config_value`) VALUES ('vi', 'global', 'site_des', NULL, 'Miêu tả website');
INSERT INTO config (`lang`, `modules`, `config_name`, `config_alias`, `config_value`) VALUES ('vi', 'global', 'site_keyword', NULL, 'Codeginter, 360vnit, quang nam viet');


#
# TABLE STRUCTURE FOR: contact
#

DROP TABLE IF EXISTS contact;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) DEFAULT NULL,
  `address` varchar(254) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `hotline` varchar(250) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `img` varchar(254) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO contact (`id`, `name`, `address`, `phone`, `hotline`, `fax`, `email`, `img`, `lang`) VALUES (1, 'HOÀNG QUÂN VI TÍNH', '212/158/34b Nguyễn Văn Nguyễn, P. Tân Định, Q1, HCM', '08 6683 4528', '0916 500 297', 'MST: 000000000', 'info@aomuavietnam.com', 'data/images/map.jpg', 'vi');


#
# TABLE STRUCTURE FOR: contact_row
#

DROP TABLE IF EXISTS contact_row;

CREATE TABLE `contact_row` (
  `contactid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(254) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `content` text,
  `datesend` int(11) DEFAULT NULL,
  `read` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`contactid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: counter
#

DROP TABLE IF EXISTS counter;

CREATE TABLE `counter` (
  `session_id` varchar(50) NOT NULL DEFAULT '',
  `ip_address` varchar(15) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO counter (`session_id`, `ip_address`, `accountid`, `timestamp`) VALUES ('f4080a99a36db534d36aa28bf0459a0c', '113.161.74.27', 0, 1407570927);
INSERT INTO counter (`session_id`, `ip_address`, `accountid`, `timestamp`) VALUES ('dbd2897b0a3aa8b0a2b2667798dbcb65', '113.161.74.27', 0, 1407570989);


#
# TABLE STRUCTURE FOR: counter_history
#

DROP TABLE IF EXISTS counter_history;

CREATE TABLE `counter_history` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(200) DEFAULT NULL,
  `c_type` varchar(20) DEFAULT NULL,
  `c_val` varchar(20) DEFAULT NULL,
  `c_count` int(11) unsigned DEFAULT NULL,
  `last_update` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO counter_history (`c_id`, `c_name`, `c_type`, `c_val`, `c_count`, `last_update`, `IsActive`) VALUES (1, 'Tổng truy cập', 'total', '', 112589, 1407570819, 1);
INSERT INTO counter_history (`c_id`, `c_name`, `c_type`, `c_val`, `c_count`, `last_update`, `IsActive`) VALUES (2, 'Trong tháng', 'month', '08', 443, 1407570819, 1);
INSERT INTO counter_history (`c_id`, `c_name`, `c_type`, `c_val`, `c_count`, `last_update`, `IsActive`) VALUES (3, 'Hôm nay', 'today', '09', 45, 1407570819, 1);
INSERT INTO counter_history (`c_id`, `c_name`, `c_type`, `c_val`, `c_count`, `last_update`, `IsActive`) VALUES (4, 'Đang Online', 'isonline', '', 2, 1407570819, 1);


#
# TABLE STRUCTURE FOR: email_templates
#

DROP TABLE IF EXISTS email_templates;

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) DEFAULT NULL,
  `subject` varchar(254) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO email_templates (`id`, `slug`, `subject`, `content`) VALUES (1, 'shop_quenmatkhau', 'Quên mật khẩu', '<p>\n	<strong>Mật khẩu được gửi tự động do y&ecirc;u cầu lấy lại mật khẩu của bạn</strong></p>\n<p>\n	Mật khẩu : $matkhaumoi</p>\n<p>\n	Xin tr&acirc;n trọng cảm ơn</p>\n');
INSERT INTO email_templates (`id`, `slug`, `subject`, `content`) VALUES (2, 'shop_dangkytaikhoan', 'Kích hoạt tài khoản đăng ký', '<p>\r\n	Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; đăng k&yacute; t&agrave;i khoản&nbsp;</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><strong>Th&ocirc;ng tin đăng k&yacute;:&nbsp;</strong></span></p>\r\n<table border=\"0\" cellpadding=\"2\" cellspacing=\"2\" style=\"border-collapse: collapse\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:140px\">\r\n				<strong>Email đăng nhập</strong></td>\r\n			<td>\r\n				$email</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>Mật khẩu</strong></td>\r\n			<td>\r\n				********</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>Họ v&agrave; t&ecirc;n</strong></td>\r\n			<td>\r\n				$hovaten</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>Địa chỉ</strong></td>\r\n			<td>\r\n				$diachi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>Quận, Huyện</strong></td>\r\n			<td>\r\n				$quanhuyen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>Tỉnh, Th&agrave;nh phố</strong></td>\r\n			<td>\r\n				$thanhpho</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>Điện thoai</strong></td>\r\n			<td>\r\n				$dienthoai</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	Qu&yacute; kh&aacute;ch vui l&ograve;ng click v&agrave;o đường dẫn sau để k&iacute;ch hoạt t&agrave;i khoản: &nbsp;$url</p>\r\n');
INSERT INTO email_templates (`id`, `slug`, `subject`, `content`) VALUES (4, 'shop_donhang', 'Thông tin đơn hàng: $madonhang', '<table border=\"0\" cellpadding=\"2\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<strong><font face=\"Tahoma\" size=\"2\">HOANG QUAN COMPUTER</font></strong>\r\n				<p>\r\n					<font face=\"Tahoma\" size=\"2\">Địa chỉ: 212/158/34B Nguyễn Văn Nguyễn, T&acirc;n Định, Quận 1, HCM.</font><br />\r\n					<font face=\"Tahoma\" size=\"2\">Điện thoại: </font><span style=\"color: rgb(51, 51, 51); font-family: Arial; line-height: 18px;\">0916 500 297 (Mr. Triết)</span></p>\r\n			</td>\r\n			<td>\r\n				<img src=\"http://aomuavietnam.com/data/images/logo_hoangquan.png\" style=\"border-width: 0pt; border-style: solid; float: right; width: 111px; height: 57px;\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table bgcolor=\"#3399FF\" border=\"1\" cellpadding=\"2\" style=\"border-collapse: collapse\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor=\"#0066FF\">\r\n				<div class=\"title-dot\">\r\n					<p align=\"center\">\r\n						<strong><span style=\"font-size:16px;\"><font face=\"Arial\">TH</font><span style=\"background-color: rgb(255, 255, 255);\">&Ocirc;NG&nbsp;</span><font face=\"Arial\" style=\"background-color: rgb(255, 255, 255);\">TIN&nbsp;</font><span style=\"background-color: rgb(255, 255, 255);\">Đ</span><span style=\"background-color: rgb(255, 255, 255);\">ƠN H</span><span style=\"background-color: rgb(255, 255, 255);\">&Agrave;NG&nbsp;</span></span></strong></p>\r\n					<p align=\"center\">\r\n						<b><font color=\"#FFFFFF\" face=\"Arial\">$madonhang</font></b></p>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p align=\"center\">\r\n	&nbsp;</p>\r\n<table border=\"0\" bordercolor=\"#99CCFF\" cellpadding=\"2\" style=\"border-collapse: collapse\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"120\">\r\n				<b><font face=\"Arial\" size=\"2\">T&ecirc;n kh&aacute;ch h&agrave;ng:</font></b></td>\r\n			<td width=\"258\">\r\n				<font face=\"Arial\" size=\"2\">$fullName</font></td>\r\n			<td width=\"159\">\r\n				<b><font face=\"Arial\" size=\"2\">Phương thức thanh to&aacute;n:</font></b></td>\r\n			<td>\r\n				<font face=\"Arial\" size=\"2\">$phuongthucthanhtoan</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\">\r\n				<b><font face=\"Arial\" size=\"2\">Địa chỉ giao h&agrave;ng:</font></b></td>\r\n			<td width=\"258\">\r\n				<font face=\"Arial\" size=\"2\">$address</font></td>\r\n			<td width=\"159\">\r\n				<b><font face=\"Arial\" size=\"2\">Thời gian đặt h&agrave;ng:</font></b></td>\r\n			<td>\r\n				<font face=\"Arial\" size=\"2\">$thoigian</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\">\r\n				<b><font face=\"Arial\" size=\"2\">Điện thoại:</font></b></td>\r\n			<td width=\"258\">\r\n				<span style=\"font-family: Arial; font-size: small;\">$phone</span></td>\r\n			<td width=\"159\">\r\n				<strong>T&igrave;nh trạng đơn h&agrave;ng:</strong></td>\r\n			<td>\r\n				$tinhtrang</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\">\r\n				<b><font face=\"Arial\" size=\"2\">Email:</font></b></td>\r\n			<td width=\"258\">\r\n				<span style=\"font-family: Arial; font-size: small;\">$email</span></td>\r\n			<td width=\"159\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\">\r\n				&nbsp;</td>\r\n			<td width=\"258\">\r\n				&nbsp;</td>\r\n			<td width=\"159\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	$thongtinsanpham</p>\r\n<hr />\r\n<p>\r\n	Cảm ơn bạn đ&atilde; đặt h&agrave;ng của ch&uacute;ng t&ocirc;i!.</p>\r\n<p>\r\n	Ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ với bạn trong thời gian sớm nhất.</p>\r\n<p>\r\n	&nbsp;</p>\r\n');
INSERT INTO email_templates (`id`, `slug`, `subject`, `content`) VALUES (5, 'shop_thongtintaikhoan', 'Thông tin tài khoản đăng ký ', '<p>\r\n	&nbsp;</p>\r\n<div style=\"font-family: Arial, Verdana, sans-serif; font-size: 12px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); \">\r\n	<p>\r\n		Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; đăng k&yacute; t&agrave;i khoản&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size: 14px; \"><strong>Th&ocirc;ng tin đăng k&yacute;:&nbsp;</strong></span></p>\r\n	<table border=\"0\" cellpadding=\"2\" cellspacing=\"2\" style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; border-collapse: collapse; \" width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; width: 140px; \">\r\n					<strong>Email đăng nhập</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$email</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>Mật khẩu</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$matkhau</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>Họ v&agrave; t&ecirc;n</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$hovaten</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>Địa chỉ</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$diachi</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>Quận, Huyện</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$quanhuyen</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>Tỉnh, Th&agrave;nh phố</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$thanhpho</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>Điện thoai</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$dienthoai</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n');


#
# TABLE STRUCTURE FOR: geocode_cache
#

DROP TABLE IF EXISTS geocode_cache;

CREATE TABLE `geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `query` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=846 DEFAULT CHARSET=utf8;

INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (36, '108.1662483', '16.072239', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (37, '108.1662483', '16.072239', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (38, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (39, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (40, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (41, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (42, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (43, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (44, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (45, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (46, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (47, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (48, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (49, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (50, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (51, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (52, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (53, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (54, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (55, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (56, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (57, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (58, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (59, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (60, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (61, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (62, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (63, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (64, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (65, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (66, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (67, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (68, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (69, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (70, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (71, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (72, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (73, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (74, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (75, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (76, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (77, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (78, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (79, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (80, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (81, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (82, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (83, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (84, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (85, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (86, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (87, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (88, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (89, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (90, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (91, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (92, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (93, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (94, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (95, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (96, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (97, '108.9945055', '11.5735301', '89 ng');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (98, '108.9945055', '11.5735301', '89 ng');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (99, '108.9945055', '11.5735301', '89 ng');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (100, '108.9945055', '11.5735301', '89 ng');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (101, '107.5945719', '16.4716595', '28 l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (102, '108.9945055', '11.5735301', '89 ng');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (103, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (104, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (105, '108.9945055', '11.5735301', '89 ng');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (106, '107.5945719', '16.4716595', '28 l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (107, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (108, '108.9945055', '11.5735301', '89 ng');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (109, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (110, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (111, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (112, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (113, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (114, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (115, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (116, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (117, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (118, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (119, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (120, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (121, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (122, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (123, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (124, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (125, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (126, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (127, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (128, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (129, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (130, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (131, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (132, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (133, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (134, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (135, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (136, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (137, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (138, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (139, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (140, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (141, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (142, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (143, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (144, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (145, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (146, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (147, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (148, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (149, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (150, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (151, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (152, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (153, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (154, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (155, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (156, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (157, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (158, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (159, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (160, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (161, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (162, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (163, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (164, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (165, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (166, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (167, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (168, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (169, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (170, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (171, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (172, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (173, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (174, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (175, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (176, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (177, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (178, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (179, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (180, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (181, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (182, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (183, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (184, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (185, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (186, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (187, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (188, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (189, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (190, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (191, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (192, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (193, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (194, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (195, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (196, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (197, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (198, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (199, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (200, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (201, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (202, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (203, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (204, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (205, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (206, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (207, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (208, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (209, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (210, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (211, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (212, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (213, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (214, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (215, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (216, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (217, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (218, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (219, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (220, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (221, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (222, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (223, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (224, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (225, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (226, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (227, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (228, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (229, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (230, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (231, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (232, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (233, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (234, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (235, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (236, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (237, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (238, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (239, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (240, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (241, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (242, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (243, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (244, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (245, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (246, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (247, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (248, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (249, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (250, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (251, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (252, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (253, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (254, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (255, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (256, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (257, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (258, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (259, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (260, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (261, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (262, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (263, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (264, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (265, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (266, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (267, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (268, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (269, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (270, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (271, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (272, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (273, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (274, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (275, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (276, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (277, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (278, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (279, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (280, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (281, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (282, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (283, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (284, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (285, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (286, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (287, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (288, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (289, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (290, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (291, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (292, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (293, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (294, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (295, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (296, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (297, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (298, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (299, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (300, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (301, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (302, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (303, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (304, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (305, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (306, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (307, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (308, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (309, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (310, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (311, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (312, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (313, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (314, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (315, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (316, '108.1667855', '16.0652387', '154 to hieu, da nang, viet nam');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (317, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (318, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (319, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (320, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (321, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (322, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (323, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (324, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (325, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (326, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (327, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (328, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (329, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (330, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (331, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (332, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (333, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (334, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (335, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (336, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (337, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (338, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (339, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (340, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (341, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (342, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (343, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (344, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (345, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (346, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (347, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (348, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (349, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (350, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (351, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (352, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (353, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (354, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (355, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (356, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (357, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (358, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (359, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (360, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (361, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (362, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (363, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (364, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (365, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (366, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (367, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (368, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (369, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (370, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (371, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (372, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (373, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (374, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (375, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (376, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (377, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (378, '108.1668677', '16.065762', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (379, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (380, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (381, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (382, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (383, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (384, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (385, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (386, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (387, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (388, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (389, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (390, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (391, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (392, '106.6628735', '10.7803721', 'kk6 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (393, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (394, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (395, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (396, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (397, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (398, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (399, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (400, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (401, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (402, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (403, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (404, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (405, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (406, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (407, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (408, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (409, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (410, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (411, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (412, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (413, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (414, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (415, '106.6880205', '10.7288388', '98 ');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (416, '107.0037509', '16.796204', 'khu phố 2, thị trấn cam lộ, quảng trị, việt nam');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (417, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (418, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (419, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (420, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (421, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (422, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (423, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (424, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (425, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (426, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (427, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (428, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (429, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (430, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (431, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (432, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (433, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (434, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (435, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (436, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (437, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (438, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (439, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (440, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (441, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (442, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (443, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (444, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (445, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (446, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (447, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (448, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (449, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (450, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (451, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (452, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (453, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (454, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (455, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (456, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (457, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (458, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (459, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (460, '108.1667733', '16.0647871', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (461, '106.6296638', '10.8230989', 'ss1n hong linh, f15, q10, ho chi minh city');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (462, '108.214897', '16.051571', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (463, '108.214897', '16.051571', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (464, '108.214897', '16.051571', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (465, '108.1619185', '16.0607528', '185 t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (466, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (467, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (468, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (469, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (470, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (471, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (472, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (473, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (474, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (475, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (476, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (477, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (478, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (479, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (480, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (481, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (482, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (483, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (484, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (485, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (486, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (487, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (488, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (489, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (490, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (491, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (492, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (493, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (494, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (495, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (496, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (497, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (498, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (499, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (500, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (501, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (502, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (503, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (504, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (505, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (506, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (507, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (508, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (509, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (510, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (511, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (512, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (513, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (514, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (515, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (516, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (517, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (518, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (519, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (520, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (521, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (522, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (523, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (524, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (525, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (526, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (527, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (528, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (529, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (530, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (531, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (532, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (533, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (534, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (535, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (536, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (537, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (538, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (539, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (540, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (541, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (542, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (543, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (544, '106.6296638', '10.8230989', 'ss1n hồng lĩnh - f15 - q10 - tp.hồ chí minh');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (545, '106.6296638', '10.8230989', 'ss1n hồng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (546, '106.6447951', '10.758323', '275 hàn hải nguyên, phường 2, quận 11, thành phố hồ chí minh');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (547, '106.6443742', '10.7583432', '275 h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (548, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (549, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (550, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (551, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (552, '106.685136', '10.9507852', '231/1b - khu phố thạnh hòa b - phường an thạnh - thị xã thuận an - tỉnh bình dương.');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (553, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (554, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (555, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (556, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (557, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (558, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (559, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (560, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (561, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (562, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (563, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (564, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (565, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (566, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (567, '106.685136', '10.9507852', '231/1b - khu phố thạnh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (568, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (569, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (570, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (571, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (572, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (573, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (574, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (575, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (576, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (577, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (578, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (579, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (580, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (581, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (582, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (583, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (584, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (585, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (586, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (587, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (588, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (589, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (590, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (591, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (592, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (593, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (594, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (595, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (596, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (597, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (598, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (599, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (600, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (601, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (602, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (603, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (604, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (605, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (606, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (607, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (608, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (609, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (610, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (611, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (612, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (613, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (614, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (615, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (616, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (617, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (618, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (619, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (620, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (621, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (622, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (623, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (624, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (625, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (626, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (627, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (628, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (629, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (630, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (631, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (632, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (633, '106.6949862', '10.7924962', '30 trần quang khải, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (634, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (635, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (636, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (637, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (638, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (639, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (640, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (641, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (642, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (643, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (644, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (645, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (646, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (647, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (648, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (649, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (650, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (651, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (652, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (653, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (654, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (655, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (656, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (657, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (658, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (659, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (660, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (661, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (662, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (663, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (664, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (665, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (666, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (667, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (668, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (669, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (670, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (671, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (672, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (673, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (674, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (675, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (676, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (677, '106.6086298', '10.7304095', '600/25 kinh d');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (678, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (679, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (680, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (681, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (682, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (683, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (684, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (685, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (686, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (687, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (688, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (689, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (690, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (691, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (692, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (693, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (694, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (695, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (696, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (697, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (698, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (699, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (700, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (701, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (702, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (703, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (704, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (705, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (706, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (707, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (708, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (709, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (710, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (711, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (712, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (713, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (714, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (715, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (716, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (717, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (718, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (719, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (720, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (721, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (722, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (723, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (724, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (725, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (726, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (727, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (728, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (729, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (730, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (731, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (732, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (733, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (734, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (735, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (736, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (737, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (738, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (739, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (740, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (741, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (742, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (743, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (744, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (745, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (746, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (747, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (748, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (749, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (750, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (751, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (752, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (753, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (754, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (755, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (756, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (757, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (758, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (759, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (760, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (761, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (762, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (763, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (764, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (765, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (766, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (767, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (768, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (769, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (770, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (771, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (772, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (773, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (774, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (775, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (776, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (777, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (778, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (779, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (780, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (781, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (782, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (783, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (784, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (785, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (786, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (787, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (788, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (789, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (790, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (791, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (792, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (793, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (794, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (795, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (796, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (797, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (798, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (799, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (800, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (801, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (802, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (803, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (804, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (805, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (806, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (807, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (808, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (809, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (810, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (811, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (812, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (813, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (814, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (815, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (816, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (817, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (818, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (819, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (820, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (821, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (822, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (823, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (824, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (825, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (826, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (827, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (828, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (829, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (830, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (831, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (832, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (833, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (834, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (835, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (836, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (837, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (838, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (839, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (840, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (841, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (842, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (843, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (844, '106.6857433', '10.7958529', '212/158/34b nguyễn v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (845, '106.6857433', '10.7958529', '212/158/34b nguyễn v');


#
# TABLE STRUCTURE FOR: geocodes
#

DROP TABLE IF EXISTS geocodes;

CREATE TABLE `geocodes` (
  `address` varchar(255) NOT NULL DEFAULT '',
  `lon` float DEFAULT NULL,
  `lat` float DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: help
#

DROP TABLE IF EXISTS help;

CREATE TABLE `help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(254) DEFAULT NULL,
  `content` text,
  `summary` varchar(500) DEFAULT NULL,
  `url` varchar(254) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `lang` varchar(2) DEFAULT 'vi',
  `date_time` int(11) unsigned DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `views` int(11) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (3, 'Hướng dẫn thanh toán', '<div>\r\n	<span style=\"font-size:16px;\"><span style=\"color:#0000ff;\"><u><strong>C&aacute;ch thức thanh to&aacute;n</strong></u>:</span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<hr />\r\n</div>\r\n<div>\r\n	<strong><span style=\"font-size:14px;\">1. Thanh to&aacute;n khi nhận h&agrave;ng:</span></strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Ngay sau khi qu&yacute; kh&aacute;ch h&agrave;ng &nbsp;đăng k&yacute; th&ocirc;ng tin hoặc đặt h&agrave;ng kh&ocirc;ng qua đăng k&yacute; tại web:aomuavietnam.com &nbsp;hoặc qua điện thoại, email. Nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i sẽ x&aacute;c nhận lại nội dung sản phẩm, th&ocirc;ng tin của qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; tiến h&agrave;nh giao h&agrave;ng tại địa điểm m&agrave; qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; cung cấp th&ocirc;ng tin khi đặt h&agrave;ng, Qu&yacute; kh&aacute;ch h&agrave;ng thanh to&aacute;n trực tiếp cho nh&acirc;n vi&ecirc;n giao h&agrave;ng to&agrave;n bộ số tiền hoặc một phần c&ograve;n lại (nếu qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; đặt cọc) gi&aacute; trị sản phẩm qu&yacute; kh&aacute;ch đ&atilde; mua v&agrave; k&egrave;m qu&agrave; tặng khuyến m&atilde;i (nếu sản phẩm qu&yacute; kh&aacute;ch mua c&oacute; khuyến m&atilde;i tặng phẩm).</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Nếu qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu đến trụ sở C&ocirc;ng ty ch&uacute;ng t&ocirc;i để nhận h&agrave;ng, nh&acirc;n vi&ecirc;n c&ocirc;ng ty sẽ giao h&agrave;ng trực tiếp cho qu&yacute; kh&aacute;ch v&agrave; sẽ tiến h&agrave;nh thanh to&aacute;n ngay tại trụ sở &nbsp;c&ocirc;ng ty.</span></div>\r\n<div>\r\n	<hr />\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<strong><span style=\"font-size:14px;\">2. Thanh to&aacute;n bằng c&aacute;ch chuyển khoản qua ng&acirc;n h&agrave;ng: (Nếu qu&yacute; kh&aacute;ch ở xa).</span></strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Trong qu&aacute; tr&igrave;nh đặt h&agrave;ng h&atilde;y chọn &ldquo;Chuyển khoản ng&acirc;n h&agrave;ng&rdquo; trong phần &ldquo;Phương thức thanh to&aacute;n&rdquo;</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Sau khi chuyển khoản, qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng th&ocirc;ng b&aacute;o đến nh&acirc;n vi&ecirc;n tư vấn c&ocirc;ng ty TNHH TM DV Ho&agrave;ng Qu&acirc;n </span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#0000ff;\"><span style=\"font-size: 16px;\"><u><strong>Th&ocirc;ng tin chuyển khoản :&nbsp;</strong></u></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<strong><span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;1. Chủ t&agrave;i khoản: Lưu Minh Triết</span></strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Số t&agrave;i khoản: 090 704 313 041</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; T&ograve;a nh&agrave; </span><span class=\"st\">Metropolitan, 235 <em>Đồng Khởi</em>, Q.1, TP. HCM</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp;&nbsp; </span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Sau khi nhận được th&ocirc;ng tin x&aacute;c nhận chuyển khoản từ ng&acirc;n h&agrave;ng, nh&acirc;n vi&ecirc;n<span style=\"color:#ff00ff;\"> <strong>HO&Agrave;NG QU&Acirc;N </strong></span>sẽ li&ecirc;n hệ với qu&yacute; kh&aacute;ch để thống nhất về thời gian, địa chỉ giao h&agrave;ng, v&agrave; tiến h&agrave;nh giao h&agrave;ng như thỏa thuận.</span></div>\r\n', NULL, NULL, '1371278912.jpg', 'vi', 1395387750, 1, NULL, 1);
INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (5, 'Lợi ích mua hàng online', '<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Mua - b&aacute;n h&agrave;ng qua mạng - h&igrave;nh thức thương mại mới xuất hiện ở Việt Nam nhưng nhanh ch&oacute;ng ph&aacute;t triển, l&ocirc;i k&eacute;o được nhiều kh&aacute;ch h&agrave;ng tin d&ugrave;ng. Mua h&agrave;ng qua mạng c&oacute; nhiều điểm ưu việt so với c&aacute;ch mua- b&aacute;n trực tiếp</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Mua h&agrave;ng trực tuyến bạn sẽ</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Tiết kiệm thời gian &ndash; Đ&acirc;y l&agrave; ưu điểm lớn nhất m&agrave; mọi người đều đồng &yacute;. Trong cuộc sống bận rộn,việc sử dụng thời gian một c&aacute;ch hợp l&yacute; l&agrave; cần thiết. Nếu muốn mua một sản phẩm n&agrave;o đ&oacute; bạn phải mất c&ocirc;ng, mất thời gian t&igrave;m sản phẩm, đến nơi b&aacute;n h&agrave;ng...Thay v&igrave; l&atilde;ng ph&iacute; thời gian như vậy bạn chỉ cần nhấn chuột v&agrave;o trang web mua h&agrave;ng trực tuyến, chọn sản phẩm m&igrave;nh muốn mua rồi bấm n&uacute;t đặt h&agrave;ng hoặc mua h&agrave;ng, nh&acirc;n vi&ecirc;n giao h&agrave;ng sẽ đưa tới địa chỉ bạn mong muốn. Mua h&agrave;ng online gi&uacute;p bạn tiết kiệm thời gian tối đa v&agrave; bớt đi rắc rối của cuộc sống.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">So s&aacute;nh gi&aacute; cả qu&aacute; dễ d&agrave;ng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Tất cả gi&aacute; cả đều c&oacute; sẵn tại c&aacute;c website b&aacute;n h&agrave;ng trực tuyến. Mua h&agrave;ng qua mạng của người b&aacute;n l&agrave; một c&ocirc;ng ty, doanh nghiệp bao giờ cũng an to&agrave;n hơn mua của người b&aacute;n l&agrave; một c&aacute; nh&acirc;n. Mua h&agrave;ng qua trang web của c&ocirc;ng ty bao giờ cũng mua được h&agrave;ng ch&iacute;nh h&atilde;ng, chất lượng của c&ocirc;ng ty đ&oacute;.. Ngo&agrave;i ra n&ecirc;n chọn người b&aacute;n c&oacute; uy t&iacute;n được nhiều b&igrave;nh chọn của người mua, hoặc những sản phẩm trong top b&aacute;n chạy của trang web. Bạn được biết gi&aacute; trước khi quyết định mua h&agrave;ng, lựa chọn sản phẩm ph&ugrave; hợp với t&uacute;i tiền của m&igrave;nh. Kh&ocirc;ng &iacute;t người mua m&oacute;n h&agrave;ng m&igrave;nh kh&ocirc;ng th&iacute;ch chỉ v&igrave; &ldquo;hỏi gi&aacute; m&agrave; kh&ocirc;ng mua thấy hơi kỳ kỳ&rdquo;. So s&aacute;nh để chọn lựa c&aacute;i tốt nhất, đ&oacute; l&agrave; điều m&agrave; khi mua sắm ai cũng quan t&acirc;m. Bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m chọn đặt h&agrave;ng ở những website uy t&iacute;n, gi&aacute; cả phải chăng.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Lựa chọn đa dạng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Nhiều người kh&ocirc;ng biết rằng họ c&oacute; thể t&igrave;m kiếm v&agrave; mua c&aacute;c sản phẩm h&agrave;ng ng&agrave;y qua c&aacute;c trang trực tuyến. C&aacute;c trang web mua b&aacute;n trực tuyến gi&uacute;p mọi người c&oacute; thể lựa chọn h&agrave;ng ngh&igrave;n sản phẩm kh&aacute;c nhau c&ugrave;ng một l&uacute;c. Ng&agrave;y c&agrave;ng nhiều shop online ra đời với mọi loại sản phẩm ph&ugrave; hợp với nhu cầu của nhiều người với h&agrave;ng trăm mặt h&agrave;ng v&agrave; h&agrave;ng ng&agrave;n thiết kế c&oacute; sẵn. T&ugrave;y v&agrave;o mục đ&iacute;ch v&agrave; kinh tế, bạn c&oacute; thể chọn được loại sản phẩm th&iacute;ch hợp một c&aacute;ch nhanh ch&oacute;ng. Lựa chọn m&oacute;n qu&agrave; ph&ugrave; hợp cho người lớn tuổi hay người trẻ tuổi dễ d&agrave;ng &nbsp;m&agrave; kh&ocirc;ng cần phải băn khoăn, bối rối mua g&igrave; th&igrave; ph&ugrave; hợp. Người ti&ecirc;u d&ugrave;ng c&oacute; thể t&igrave;m thấy tất tật c&aacute;c mặt h&agrave;ng, từ đồ gia dụng, điện tử, nội ngoại thất, thời trang, thực phẩm&hellip; đến c&aacute;c dịch vụ như chăm s&oacute;c sức khỏe, l&agrave;m đẹp&hellip; đồ cũ, mới đều c&oacute; hết. Kh&ocirc;ng những thế, kh&aacute;ch h&agrave;ng c&ograve;n c&oacute; thể t&igrave;m thấy ở &ldquo;chợ điện tử&rdquo; những m&oacute;n h&agrave;ng kh&ocirc;ng thể t&igrave;m được ở &nbsp;nội địa, đặc biệt l&agrave; những m&oacute;n h&agrave;ng x&aacute;ch tay như nước hoa, đĩa nhạc, s&aacute;ch b&aacute;o &hellip; Mua sắm online gi&uacute;p bạn &ldquo;quẳng&rdquo; cơn đau đầu đi.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Gi&aacute; mua rẻ hơn c&aacute;c trung t&acirc;m v&agrave; cửa h&agrave;ng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">V&igrave; kh&ocirc;ng phải thanh to&aacute;n c&aacute;c khoản tiền mặt bằng, chi ph&iacute; cửa h&agrave;ng n&ecirc;n đa phần c&aacute;c website b&aacute;n h&agrave;ng online đều cung cấp sản phẩm với mức gi&aacute; thấp hơn khi bạn mua b&ecirc;n ngo&agrave;i m&agrave; chất lượng vẫn đảm bảo.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">B&iacute; quyết để tiết kiệm với mua h&agrave;ng trực tuyến l&agrave; mua với số lượng nhiều. Khi mua h&agrave;ng với số lượng nhiều th&igrave; kh&aacute;ch h&agrave;ng c&oacute; thể nhận được sự giảm gi&aacute; hoặc chiết khấu v&agrave; đ&ocirc;i khi con số đ&oacute; c&oacute; thể l&ecirc;n tới 50% hoặc c&ograve;n hơn thế nữa.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">V&agrave; trong c&aacute;c dịp lễ hội,th&igrave; c&aacute;c web b&aacute;n h&agrave;ng trực tuyến c&oacute; những chương tr&igrave;nh khuyến m&atilde;i,hoặc c&aacute;c tr&ograve; chơi c&oacute; thưởng rất hấp dẫn : như c&aacute;c mặt h&agrave;ng l&agrave;m đẹp : mỹ phẩm khuyến m&atilde;i, đồ gia dụng ,đồ d&ugrave;ng nh&agrave; bếp,c&aacute;c sản phẩm chăm s&oacute;c sức khỏe,...tạo cho kh&aacute;ch h&agrave;ng c&oacute; cảm gi&aacute;c th&uacute; vị ,v&agrave; tiết kiệm t&uacute;i tiền để c&oacute; thể mua nhiều sản phẩm hơn.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Chủ động v&agrave; an to&agrave;n với mọi t&igrave;nh huống</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Bạn băn khoăn về việc thanh to&aacute;n trực tuyến nhưng kh&ocirc;ng biết c&oacute; nhận được h&agrave;ng kh&ocirc;ng. Đừng lo, sự ra đời của c&aacute;c h&igrave;nh thức thanh to&aacute;n trực tuyến như Paypal, Ng&acirc;n lượng, Bảo kim&hellip;với t&iacute;nh năng thanh to&aacute;n tạm giữ, bảo vệ người mua h&agrave;ng tuyệt đối cung cấp c&aacute;c dịch vụ thanh to&aacute;n đa dạng, kh&aacute;ch h&agrave;ng c&oacute; thể đổi h&agrave;ng (kh&ocirc;ng &aacute;p dụng cho sản phẩm c&aacute; nh&acirc;n), c&oacute; thể khiếu nại, g&oacute;p &yacute;,.. v&agrave; được hỗ trợ 24/7</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Tr&aacute;nh nơi đ&ocirc;ng đ&uacute;c</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Bạn kh&ocirc;ng phải đổ mồ h&ocirc;i, kh&ocirc;ng phải chịu đựng cọ quẹt, x&ocirc; đẩy, chen lấn để chọn lựa h&agrave;ng, kh&ocirc;ng phải chen ch&uacute;c, xếp h&agrave;ng chờ thanh to&aacute;n ở si&ecirc;u thị, kh&ocirc;ng phải đau họng khi cao giọng nhắc lại y&ecirc;u cầu của m&igrave;nh nhiều lần trong đ&aacute;m đ&ocirc;ng. V&agrave; đặc biệt hơn, bạn c&ograve;n tr&aacute;nh được nguy cơ trộm cắp, m&oacute;c t&uacute;i, lừa đảo trong đ&aacute;m đ&ocirc;ng hay mất xe v&igrave; kh&ocirc;ng c&oacute; nơi đỗ xe.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Tiết kiệm xăng dầu&nbsp;</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Kh&ocirc;ng cần phải mất c&ocirc;ng đi lại d&ugrave; trời mưa dầm hay nắng gắt, kh&ocirc;ng tốn tiền xăng dầu đi lại vất vả, hoặc đ&ocirc;i khi bị chủ h&agrave;ng đốt v&iacute;a nếu kh&ocirc;ng mua h&agrave;ng&hellip;Chỉ cần ngồi tại nh&agrave;, văn ph&ograve;ng hay bất cứ đ&acirc;u để lựa chọn, đặt h&agrave;ng, thanh to&aacute;n v&agrave; nhận h&agrave;ng ngay tại địa chỉ mong muốn, bạn sẽ giảm thiểu chi ph&iacute; đi lại: đi nhiều nơi để chọn lựa sản phẩm ph&ugrave; hợp, &nbsp;tới lần thứ 2 để kiểm tra tiến độ, sau đ&oacute; trở lại để nhận sản phẩm. Thử t&iacute;nh xem, bạn đ&atilde; mất bao nhi&ecirc;u xăng cho 1 sản phẩm đ&oacute;. Th&ocirc;ng thường, c&aacute;c website n&agrave;y sẽ cung cấp dịch vụ đưa h&agrave;ng tận nơi nếu nh&agrave; bạn kh&ocirc;ng qu&aacute; xa trung t&acirc;m, hơn nữa bạn c&ograve;n thỏa sức c&acirc;n nhắc gi&aacute; cả, mẫu m&atilde; giữa những cửa h&agrave;ng m&agrave; vị tr&iacute; thực sự của n&oacute; c&aacute;ch xa nhau cả chục thậm ch&iacute; l&agrave; cả trăm km chỉ trong một thời gian ngắn.&nbsp;</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Mạng lưới mua sắm rộng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Mạng internet to&agrave;n cầu mở rộng tr&ecirc;n khắp mọi nơi v&igrave; vậy bạn c&oacute; thể mua sắm tại c&aacute;c tỉnh th&agrave;nh kh&aacute;c, thậm ch&iacute; mua h&agrave;ng ở nước ngo&agrave;i m&agrave; kh&ocirc;ng phải bước ch&acirc;n ra khỏi cửa. Mua h&agrave;ng qua mạng c&oacute; rất nhiều lợi thế khi chỉ cần một chiếc m&aacute;y t&iacute;nh nối mạng internet, kh&aacute;ch h&agrave;ng chỉ việc ngồi một chỗ m&agrave; c&oacute; thể mua sắm khắp thế giới.&nbsp;</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Thủ tục đăng k&yacute; cực đơn giản</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Mua h&agrave;ng trực tuyến trở n&ecirc;n ng&agrave;y c&agrave;ng phổ biến n&ecirc;n c&aacute;c thủ tục đăng k&yacute; mua b&aacute;n cũng được đơn giản h&oacute;a hết mức c&oacute; thể. c&aacute;c Website mua h&agrave;ng trực tuyến với hệ thống đăng k&yacute; v&agrave; mua h&agrave;ng đơn giản nhất c&ugrave;ng c&aacute;c hướng dẫn v&agrave; minh họa cụ thể gi&uacute;p bạn sử dụng dễ d&agrave;ng. Chỉ sau v&agrave;i c&uacute; nhấp chuột, bạn đ&atilde; c&oacute; thể ung dung chờ m&oacute;n h&agrave;ng như &yacute; muốn gửi ngay tới bạn.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Những lợi &iacute;ch kh&aacute;c</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Mua h&agrave;ng online ng&agrave;y c&agrave;ng c&oacute; nhiều lợi &iacute;ch, chẳng hạn như mua h&agrave;ng đơn giản hơn, bạn c&oacute; thể đ&aacute;nh gi&aacute; sản phẩm qua những phản hồi của c&aacute;c kh&aacute;ch h&agrave;ng trước, nhận được những khuyến m&atilde;i, giảm gi&aacute;, qu&agrave; tặng v&agrave;o dịp đặc biệt qua việc đăng k&yacute; kh&aacute;ch h&agrave;ng th&acirc;n thiết, đăng k&yacute; th&agrave;nh vi&ecirc;n, bạn c&ograve;n cập nhật th&ocirc;ng tin c&aacute;c sản phẩm mới v&agrave; &nbsp;nhiều lợi &iacute;ch kh&aacute;c.</span></p>\n', NULL, NULL, '1371539986.jpg', 'vi', 1371539987, 1, NULL, 1);
INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (6, 'Chính sách giao hàng', '<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" height=\"272\" style=\"background: none repeat scroll 0% 0% white; border-collapse: collapse; border: medium none;\" width=\"545\">\r\n	<tbody>\r\n		<tr style=\"height:17px;\">\r\n			<td rowspan=\"2\" style=\"width:84px;background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p align=\"center\" style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:center;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Trọng lượng (gram)</span></span></p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"width:136px;background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p align=\"center\" style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:center;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Vận chuyển trong tỉnh B&igrave;nh Dương</span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p align=\"center\" style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:center;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Vận chuyển trong nước</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"width:159px;background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Chuyển thường bưu điện</span></span></p>\r\n			</td>\r\n			<td style=\"width:116px;background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Chuyển ph&aacute;t nhanh</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:30px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:30px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Dưới 100</span></span></p>\r\n			</td>\r\n			<td rowspan=\"7\" style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:30px;vertical-align:top;\">\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">7.000 VND&nbsp;</span></span></p>\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"color:red;\"><span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Miễn ph&iacute; cho đơn h&agrave;ng từ 100.000 VND</span></span></span></p>\r\n			</td>\r\n			<td rowspan=\"6\" style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:30px;vertical-align:top;\">\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">10.000 VND</span></span></p>\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"color:red;\"><span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Miễn ph&iacute; cho đơn h&agrave;ng từ 200.000 VND</span></span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:30px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">15.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">101 - 250</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">20.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">251 - 500</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">27.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">501 - 1000</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">40.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">1001 - 1500</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">50.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">1501 - 2000</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">60.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;vertical-align:top;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Tr&ecirc;n 2000</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;vertical-align:top;\">\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Mỗi 500 gram tiếp theo th&ecirc;m 2.000 VND</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Mỗi 500 gram tiếp theo th&ecirc;m 7.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div style=\"clear:both;\">\r\n	&nbsp;</div>\r\n', NULL, NULL, '1372645916.jpg', 'vi', 1391965837, 1, NULL, 1);
INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (7, 'Hướng dẫn mua online', '<p style=\"text-align: justify;\">\r\n	<span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size: 16px;\"><u><strong>Hướng dẫn mua h&agrave;ng:</strong></u><br />\r\n	&nbsp;&nbsp; &nbsp;<br />\r\n	&nbsp;<br />\r\n	1) Duyệt v&agrave; chọn sản phẩm<br />\r\n	2) Th&ecirc;m sản phẩm v&agrave;o giỏ h&agrave;ng của bạn<br />\r\n	3) C&aacute;c bước thanh to&aacute;n:<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;<strong> Bước1 - Xem th&ocirc;ng tin giỏ h&agrave;ng:</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Hệ thống hiển thị c&aacute;c th&ocirc;ng tin về sản phẩm bạn đ&atilde; đặt mua như chủng loại, đơn gi&aacute;, số lượng, trị gi&aacute;,...Tại đ&acirc;y bạn c&oacute; thể thay đổi số lượng h&agrave;ng ho&aacute; bằng c&aacute;ch nhập v&agrave;o số lương trong &ocirc; &quot;<strong>Số lượng</strong>&quot;.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Nếu muốn trả lại sản phẩm đ&atilde; chọn (kh&ocirc;ng mua nữa), bạn nhập v&agrave;o số lượng của sản phẩm đ&oacute; bằng <strong>&quot;0&quot;.</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Mỗi lần thay đổi số lượng của sản phẩm, bạn nhớ phải click v&agrave;o n&uacute;t <strong>&quot;Cập nhật&quot;</strong> để hệ thống ghi nhận lại những thay đổi trong giỏ h&agrave;ng của bạn trước khi click chọn <strong>&quot;Thực hiện đặt h&agrave;ng&quot;</strong> để sang bước kế tiếp.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Nếu đ&atilde; đăng nhập (login) rồi th&igrave; bạn sẽ được chuyển sang bước 2, nếu chưa hệ thống sẽ y&ecirc;u cầu bạn đăng nhập trước khi thanh to&aacute;n. Nếu bạn đ&atilde; đăng k&yacute; l&agrave;m th&agrave;nh vi&ecirc;n với aomuavietnam.com th&igrave; bạn đăng nhập với email v&agrave; mật khẩu đ&atilde; đăng k&yacute;, nếu chưa bạn c&oacute; thể đăng k&yacute; tại bước n&agrave;y.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Xin lưu &yacute; để đăng nhập v&agrave;o website aomuavietnam.com bạn cần phải cung cấp hai th&ocirc;ng tin sau:<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Địa chỉ email: Email m&agrave; bạn đ&atilde; d&ugrave;ng để đang k&yacute; l&agrave;m th&agrave;nh vi&ecirc;n.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Mật khẩu đăng nhập: Mật khẩu bạn đ&atilde; đăng k&yacute; với aomuavietnam.com<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp; <strong>Bước 2 - Địa chỉ thanh to&aacute;n v&agrave; giao h&agrave;ng:</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Nhập v&agrave;o địa chỉ thanh to&aacute;n v&agrave; địa chỉ giao h&agrave;ng.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Bạn c&oacute; thể sử dụng c&aacute;c tuỳ chọn &quot;Địa chỉ thanh to&aacute;n giống th&ocirc;ng tin t&agrave;i khoản&quot; v&agrave; &quot;Địa chỉ giao h&agrave;ng giống địa chỉ thanh to&aacute;n&quot;.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;<strong> Bước 3 - Phương thức vận chuyển v&agrave; thanh to&aacute;n:</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Chọn phương thức thanh to&aacute;n v&agrave; phương thức vận chuyển.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Bạn c&oacute; thể y&ecirc;u cầu <strong>aomuavietnam.com</strong> g&oacute;i h&agrave;ng lại th&agrave;nh qu&agrave; hoặc xuất h&oacute;a đơn cho bạn tại bước n&agrave;y.&nbsp;&nbsp; &nbsp;<br />\r\n	<br />\r\n	&nbsp;<br />\r\n	<strong>&nbsp;&nbsp;&nbsp; Bước 4 - Kết th&uacute;c:</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Hệ thống sẽ gởi email x&aacute;c nhận đơn h&agrave;ng cho bạn, nh&acirc;n vi&ecirc;n <strong>aomuavietnam.com</strong> sẽ li&ecirc;n hệ với bạn để giao h&agrave;ng theo y&ecirc;u cầu. </span></span></p>\r\n', NULL, NULL, '1373026032.jpg', 'vi', 1395388057, 1, NULL, 1);
INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (8, 'Bảo hành - Đổi trả', '<p>\r\n	dsfdas</p>\r\n', NULL, NULL, NULL, 'vi', 1395387809, 1, NULL, 1);


#
# TABLE STRUCTURE FOR: introduction
#

DROP TABLE IF EXISTS introduction;

CREATE TABLE `introduction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(254) DEFAULT NULL,
  `content` text,
  `summary` varchar(500) DEFAULT NULL,
  `url` varchar(254) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `lang` varchar(2) DEFAULT 'vi',
  `date_time` int(11) unsigned DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `views` int(11) unsigned DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO introduction (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (4, 'Giới thiệu chung', '<h2 style=\"background-image: none; background-attachment: scroll; border-width: 0px 0px 2px; border-style: none none solid; border-bottom-color: rgb(222, 123, 42); font-size: 1.8rem; margin-top: 0px; margin-right: 0px; margin-left: 0px; outline: none 0px; padding: 0px 0px 3px; vertical-align: baseline; text-align: justify; line-height: 1.8rem; color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important; background-position: 0px 0px; background-repeat: repeat repeat;\">\r\n	<span style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 0px none; font-size: 18px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; background-position: 0px 0px; background-repeat: repeat repeat;\">HO&Agrave;NG QU&Acirc;N COMPUTER</span></h2>\r\n<p>\r\n	<img alt=\"Sứ mệnh chúng tôi gánh vác\" class=\"fl\" src=\"http://hcm.lazada.vn/static/static-page/about-us/mission-statement.jpg\" style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 2px solid rgb(204, 204, 204); margin: 0px 10px 0px 0px; outline: none 0px; padding: 0px; vertical-align: middle; float: left; background-position: 0px 0px; background-repeat: repeat repeat;\" /><strong>Giới thiệu</strong></p>\r\n<p>\r\n	Th&agrave;nh lập ng&agrave;y 17/02/2003 xuất ph&aacute;t từ &yacute; tưởng mang lại cho người ti&ecirc;u d&ugrave;ng thuộc &ldquo;Mọi tầng lớp trong x&atilde; hội được quyền hưởng những tiện &iacute;ch từ c&aacute;c thiết bị c&ocirc;ng nghệ cao&rdquo;.</p>\r\n<p>\r\n	Khởi nghiệp từ một cửa h&agrave;ng nhỏ với chỉ 3 &ndash; 4 nh&acirc;n vi&ecirc;n t&acirc;m huyết, Ho&agrave;ng Qu&acirc;n mạnh dạn bước những bước đầu ti&ecirc;n với kh&ocirc;ng &iacute;t kh&oacute; khăn v&agrave; thử th&aacute;ch khi m&agrave; &aacute;p lực cạnh tranh từ những sản phẩm c&ocirc;ng nghệ gi&aacute; rẻ kh&ocirc;ng r&otilde; nguồn gốc lan tr&agrave;n.</p>\r\n<p>\r\n	Giữ vững quan điểm, mục ti&ecirc;u c&ugrave;ng định hướng kinh doanh r&otilde; r&agrave;ng, minh bạch. Ho&agrave;ng Qu&acirc;n đ&atilde; nhanh ch&oacute;ng c&oacute; được sự tin mến từ Kh&aacute;ch H&agrave;ng v&agrave; trở th&agrave;nh đơn vị cung cấp sản phẩm CNTT ch&iacute;nh h&atilde;ng v&agrave; l&agrave; đối t&aacute;c của rất nhiều Tập đo&agrave;n tin học lớn đang c&oacute; mặt tại Việt Nam: Intel, LG, Seagate, Samsung, Asus, Gigabyte&hellip;</p>\r\n<p>\r\n	Trải qua 2 năm ph&aacute;t triển v&agrave; đồng h&agrave;nh tr&aacute;ch nhiệm, trước những th&aacute;ch thức,&nbsp; Ho&agrave;ng Qu&acirc;n c&agrave;ng hiểu r&otilde; con đường nhanh nhất để ph&aacute;t triển l&agrave; hợp t&aacute;c v&agrave; chia sẻ. Với mong muốn l&agrave; nơi khởi đầu cho mọi th&agrave;nh c&ocirc;ng, b&ecirc;n cạnh sự nổ lực x&acirc;y dựng một chiến lược sản phẩm tốt, một ch&iacute;nh s&aacute;ch gi&aacute; ổn định, Ho&agrave;ng Qu&acirc;n c&ograve;n được biết đến bằng việc mang đến những chương tr&igrave;nh thực tế, c&aacute;c chuy&ecirc;n đề hội thảo định hướng cho c&aacute;c bạn sinh vi&ecirc;n trẻ . Do vậy, Ho&agrave;ng Qu&acirc;n đ&atilde; được sự tin tưởng v&agrave; ủng hộ nhiệt t&igrave;nh từ Qu&yacute; Kh&aacute;ch h&agrave;ng đặc biệt l&agrave; kh&aacute;ch h&agrave;ng thuộc khối kỹ thuật - c&ocirc;ng nghệ th&ocirc;ng tin</p>\r\n<p>\r\n	Hiện nay, Ho&agrave;ng Qu&acirc;n đ&atilde; v&agrave; đang t&iacute;ch cực x&acirc;y dựng ho&agrave;n thiện c&aacute;c phương thức dịch vụ b&aacute;n h&agrave;ng tiện &iacute;ch, giao h&agrave;ng tận nơi, chế độ bảo h&agrave;nh an to&agrave;n &ndash; nhanh ch&oacute;ng v&agrave; ng&agrave;y c&agrave;ng được sự tin tưởng, giới thiệu từ kh&aacute;ch h&agrave;ng.</p>\r\n<p>\r\n	Với ch&iacute;nh s&aacute;ch quản l&yacute; thu h&uacute;t v&agrave; ph&aacute;t triển nguồn nh&acirc;n lực hiện tại, Ho&agrave;ng Qu&acirc;n với hơn 100 nh&acirc;n vi&ecirc;n l&agrave; những con người ti&ecirc;n quyết nhất, nhiệt huyết nhất c&ugrave;ng tr&igrave;nh độ chuy&ecirc;n m&ocirc;n cao, tận t&acirc;m v&agrave; sẵn s&agrave;ng cống hiến sẽ l&agrave; cầu nối mang đến kh&aacute;ch h&agrave;ng những sản phẩm, dịch vụ c&ocirc;ng nghệ an to&agrave;n &ndash; hiện đại.</p>\r\n<p>\r\n	Việc lựa chọn ch&uacute;ng t&ocirc;i l&agrave; cơ hội để kh&aacute;ch h&agrave;ng sở hữu những sản phẩm c&ocirc;ng nghệ tốt nhất với gi&aacute; hợp l&yacute; nhất. Do vậy, ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; nơi kh&aacute;ch h&agrave;ng lựa chọn, th&agrave;nh c&ocirc;ng của ch&uacute;ng t&ocirc;i bắt đầu từ những th&agrave;nh c&ocirc;ng của kh&aacute;ch h&agrave;ng.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><em>Lĩnh vực hoạt động:</em></strong></p>\r\n<p>\r\n	- Cung cấp sản phẩm CNTT: m&aacute;y t&iacute;nh bộ, Laptop, linh kiện</p>\r\n<p>\r\n	<strong><em>Kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i:</em></strong></p>\r\n<p>\r\n	- Kh&aacute;ch h&agrave;ng ti&ecirc;u d&ugrave;ng cuối, chuy&ecirc;n vi&ecirc;n kỹ thuật c&ocirc;ng nghệ</p>\r\n<p>\r\n	- C&aacute;c doanh nghiệp trong nước</p>\r\n<p>\r\n	- Đại l&yacute; tr&ecirc;n to&agrave;n quốc</p>\r\n<p>\r\n	<strong><em>Đối t&aacute;c: </em></strong></p>\r\n<p>\r\n	- Intel, Dell, ASUS, Acer, Lenovo, Sony, Samsung, Dlink, Gigabyte&hellip;.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"background-image: none; background-attachment: scroll; border: 0px none; font-size: 13px; margin-top: 0px; margin-right: 0px; margin-left: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important; background-position: 0px 0px; background-repeat: repeat repeat;\">\r\n	&nbsp;</p>\r\n', NULL, NULL, NULL, 'vi', 1395642765, 1, NULL, 1);
INSERT INTO introduction (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (5, 'Hoàng Quân vi tính', '<p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-size: 13px; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	<span style=\"font-size:14px;\">Truy cập ngay trang web của ch&uacute;ng t&ocirc;i tại <strong>www.aomuavietnam.com</strong> hoặc kết nối với ch&uacute;ng t&ocirc;i qua&nbsp;<a href=\"http://alobuy.vn/\" style=\"text-decoration: none; color: rgb(80, 72, 72);\"><font color=\"#064f93\">Facebook</font></a>,&nbsp;<font color=\"#064f93\">Twitter</font>,&nbsp;<font color=\"#064f93\">Google+</font>, v&agrave;&nbsp;<font color=\"#064f93\">Zing Me</font>.</span></p>\r\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; font-size: 1.8rem; text-align: justify; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	<span style=\"font-size: 18px;\">Sứ mệnh ch&uacute;ng t&ocirc;i g&aacute;nh v&aacute;c</span></h2>\r\n<p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-size: 13px; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	<img alt=\"Sứ mệnh chúng tôi gánh vác\" class=\"fl\" src=\"/administratorwebsystem/data/images/sumenh.jpg\" style=\"border: 2px solid rgb(204, 204, 204); float: left; vertical-align: middle; padding-bottom: 0px; margin-right: 10px; width: 275px; height: 184px;\" /><span style=\"font-size:14px;\">Sứ mệnh của ch&uacute;ng t&ocirc;i kh&ocirc;ng chỉ l&agrave; đem lại lợi &iacute;ch cho kh&aacute;ch h&agrave;ng th&ocirc;ng qua việc cung cấp c&aacute;c sản phẩm v&agrave; dịch vụ tốt nhất m&agrave; c&ograve;n l&agrave; tạo ra những trải nghiệm th&uacute; vị v&agrave; gi&aacute; trị thặng dư cho qu&yacute; kh&aacute;ch.&nbsp;<br />\r\n	<br />\r\n	Lu&ocirc;n cố gắng hết sức để lắng nghe v&agrave; thấu hiểu t&acirc;m tư của người ti&ecirc;u d&ugrave;ng, ch&uacute;ng t&ocirc;i tự h&agrave;o khi mang đến những dịch vụ tiện &iacute;ch gi&uacute;p tiết kiệm triệt để quỹ thời gian của qu&yacute; kh&aacute;ch, để việc mua sắm kh&ocirc;ng c&ograve;n l&agrave; nỗi bận t&acirc;m cho những kh&aacute;ch h&agrave;ng bận rộn.&nbsp;<br />\r\n	<br />\r\n	Đến với www.aomuavietnam.com&nbsp;bạn kh&ocirc;ng những được thỏa m&atilde;n nhu cầu mua sắm trong t&iacute;ch tắc m&agrave; c&ograve;n c&oacute; thể thoải m&aacute;i theo đuổi c&aacute;c hoạt động kh&aacute;c trong nhịp sống năng động của bản th&acirc;n.&nbsp;</span></p>\r\n<p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-size: 13px; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	&nbsp;</p>\r\n<p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-size: 13px; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	&nbsp;</p>\r\n', NULL, NULL, NULL, 'vi', 1395642406, 1, NULL, 1);
INSERT INTO introduction (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (6, 'Sứ mệnh phục vụ', '<h2 style=\"background-image: none; background-attachment: scroll; border-width: 0px 0px 2px; border-style: none none solid; border-bottom-color: rgb(222, 123, 42); font-size: 1.8rem; margin-top: 0px; margin-right: 0px; margin-left: 0px; outline: none 0px; padding: 0px 0px 3px; vertical-align: baseline; text-align: justify; line-height: 1.8rem; color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important; background-position: 0px 0px; background-repeat: repeat repeat;\">\r\n	<span style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 0px none; font-size: 18px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; background-position: 0px 0px; background-repeat: repeat repeat;\">Sứ mệnh ch&uacute;ng t&ocirc;i g&aacute;nh v&aacute;c</span></h2>\r\n<p style=\"background-image: none; background-attachment: scroll; border: 0px none; font-size: 13px; margin-top: 0px; margin-right: 0px; margin-left: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; line-height: 18px; color: rgb(64, 64, 64); text-align: justify; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important; background-position: 0px 0px; background-repeat: repeat repeat;\">\r\n	<img alt=\"Sứ mệnh chúng tôi gánh vác\" class=\"fl\" src=\"/data/images/sumenh%282%29.jpg\" style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 2px solid rgb(204, 204, 204); margin: 0px 10px 0px 0px; outline: none 0px; padding: 0px; vertical-align: middle; float: left; width: 275px; height: 184px; background-position: 0px 0px; background-repeat: repeat repeat;\" /><span style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; background-position: 0px 0px; background-repeat: repeat repeat;\">Sứ mệnh của ch&uacute;ng t&ocirc;i kh&ocirc;ng chỉ l&agrave; đem lại lợi &iacute;ch cho kh&aacute;ch h&agrave;ng th&ocirc;ng qua việc cung cấp c&aacute;c sản phẩm v&agrave; dịch vụ tốt nhất m&agrave; c&ograve;n l&agrave; tạo ra những trải nghiệm th&uacute; vị v&agrave; gi&aacute; trị thặng dư cho qu&yacute; kh&aacute;ch.&nbsp;<br />\r\n	<br />\r\n	Lu&ocirc;n cố gắng hết sức để lắng nghe v&agrave; thấu hiểu t&acirc;m tư của người ti&ecirc;u d&ugrave;ng, ch&uacute;ng t&ocirc;i tự h&agrave;o khi mang đến những dịch vụ tiện &iacute;ch gi&uacute;p tiết kiệm triệt để quỹ thời gian của qu&yacute; kh&aacute;ch, để việc mua sắm kh&ocirc;ng c&ograve;n l&agrave; nỗi bận t&acirc;m cho những kh&aacute;ch h&agrave;ng bận rộn.&nbsp;<br />\r\n	<br />\r\n	Đến với www.aomuavietnam.com bạn kh&ocirc;ng những được thỏa m&atilde;n nhu cầu mua sắm trong t&iacute;ch tắc</span></p>\r\n', NULL, NULL, NULL, 'vi', 1395642430, 1, NULL, 1);


#
# TABLE STRUCTURE FOR: modules
#

DROP TABLE IF EXISTS modules;

CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) DEFAULT NULL,
  `content` text,
  `ordering` int(11) DEFAULT '1',
  `position` varchar(200) DEFAULT NULL,
  `module` varchar(200) DEFAULT NULL,
  `show_title` varchar(200) DEFAULT NULL,
  `html` tinyint(1) DEFAULT '0',
  `params` text,
  `attr` text,
  `lang` varchar(20) NOT NULL DEFAULT 'vi',
  `site` tinyint(1) DEFAULT NULL COMMENT '1: Gian hang, 2: San gia re',
  `published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (60, 'Tin tức sàn giá rẻ', '', 0, 'sanggiare_tintuc', 'mod_lastnews', '0', 0, '_blank', 'catid=30,32&max=10&max_show=5&string_length=70&show_img=0&width_img=40px&height_img=40px&speed=1500&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (54, 'Tư vấn đặt hàng Online giá rẻ hơn!', '<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size: 16px;\"><strong>Hotline 01: <span style=\"color:#ff0000;\">1800 6839</span></strong></span></span></p>\n<p>\n	&nbsp;</p>\n<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size: 16px;\"><strong>Hotline 02: <span style=\"color:#ff0000;\">(08) 3977 8088</span></strong></span></span></p>\n<p>\n	&nbsp;</p>\n<p>\n	<span style=\"font-size:12px;\"><span style=\"color: rgb(105, 105, 105);\"><em>(Từ 7h đến 21h h&agrave;ng ng&agrave;y, kể cả chủ nhật v&agrave; ng&agrave;y lễ)</em></span></span></p>\n', 0, 'sangiare_hotro', 'mod_custom', '1', 1, 'support', 'test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (59, 'Quản cáo trượt - sangiare', '', 0, 'sangiare_bannerscroll', 'mod_bannerscroll', '0', 0, '_bank', 'file_img_l=&link_img_l=&target_ads_l=page_owner&file_img_r=&link_img_r=&target_ads_r=page_owner&test=true', 'vi', 2, 0);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (56, 'Khuyến mãi', '', 0, 'sangiare_popf', 'mod_popf', '0', 0, '_bank', 'file_img=http://fyi.vn/uploads/images/19032012132258.jpg&link_ads=http://fyi.vn&target_ads=page_owner&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (55, 'Đang giảm giá', '', 0, 'sangiare_danggiamgia', 'mod_deals', '1', 0, 'danggiamgia', 'test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (77, 'Hệ thống website FYI.VN', '', 1, 'sanggiare_hethongwebsite', 'mod_newslink', '0', 0, '_blank', 'catid=39&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (74, 'Sàn giá rẻ FYI', '', 1, 'sanggiare_sangiare', 'mod_readnewsid', '0', 0, '_blank', 'contentid=73&css=cheap&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (75, 'Sàn trả góp FYI', '', 1, 'sanggiare_santragop', 'mod_readnewsid', '0', 0, '_blank', 'contentid=56&css=bid&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (72, 'Công ty TNHH FYI', '<ul>\n	<li style=\"float: left;width: 170px;\">\n		<a href=\"http://fyi.vn/sangiare1/tin-tuc/bai-viet/gioi-thieu-cong-ty-51\">Giới thiệu c&ocirc;ng ty</a></li>\n	<li style=\"float: left;width: 130px;\">\n		<a href=\"http://fyi.vn/sangiare1/lien-he\">Li&ecirc;n hệ</a></li>\n	<li style=\"float: left; width: 170px;\">\n		<a href=\"http://fyi.vn/sangiare1/tin-tuc/danh-muc/tuyen-dung-38\">Th&ocirc;ng tin tuyển dụng</a></li>\n</ul>\n<div class=\"follow_us\">\n	<span class=\"label\">Follow us on:</span>&nbsp;<a href=\"http://facebook.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/facebook.png\" style=\"width: 40px; height: 31px; \" /></a><a href=\"http://twitter.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/tiwter.png\" style=\"width: 40px; height: 32px; \" /></a><a href=\"http://youtube.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/youtube.png\" style=\"width: 40px; height: 31px; \" /></a></div>\n', 1, 'sanggiare_gtcty', 'mod_custom', '0', 1, '_blank', 'test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (68, 'Google Analytics', '', 1, 'sanggiare_googleanalytics', 'mod_googleanalytics', '0', 0, '_blank', 'uacct=UA-21372503-1&trackpage=&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (70, 'Trợ giúp khách hàng', '', 1, 'sanggiare_trogiup', 'mod_newslink', '0', 0, '_blank', 'catid=35&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (71, 'Dịch vụ khách hàng', '', 1, 'sanggiare_dichvu', 'mod_newslink', '0', 0, '_blank', 'catid=34&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (76, 'Sàn đấu giá FYI', '', 1, 'sanggiare_sandaugia', 'mod_readnewsid', '0', 0, '_blank', 'contentid=74&css=auction&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (73, 'Siêu thị điện máy FYI', '', 1, 'sanggiare_sieuthidienmay', 'mod_readnewsid', '0', 0, '_blank', 'contentid=56&css=shop&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (78, 'CopyRight', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 1000px; \">\n	<tbody>\n		<tr>\n			<td align=\"left\">\n				<p>\n					<strong>&nbsp;C&Ocirc;NG TY TNHH FYI VIỆT NAM - SI&Ecirc;U THỊ ĐIỆN M&Aacute;Y ONLINE FYI.VN</strong></p>\n				<div>\n					<strong>Trụ sở ch&iacute;nh</strong>: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SS1N Hồng Lĩnh &ndash; Phường 15 &ndash; Quận 10 - Tp.HCM</div>\n				<div>\n					<strong>Hotline1: </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1800 6839 &nbsp; &nbsp; &nbsp; (Miễn cước cuộc gọi đến)</div>\n			</td>\n			<td align=\"right\" valign=\"top\">\n				<p style=\"text-align: right; \">\n					&nbsp;</p>\n				<div>\n					Chi nh&aacute;nh H&agrave; Nội: Ng&otilde; 124 Vĩnh Tuy &ndash; Quận Hai B&agrave; Trưng &ndash; H&agrave; Nội</div>\n				<div>\n					Hotline1: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1800 6839 &nbsp; &nbsp; &nbsp; (Miễn cước cuộc gọi đến)</div>\n				<p style=\"text-align: right; \">\n					Copyright &copy; 2009-2012 YFI., JSC. All rights reserved.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	&nbsp;</p>\n', 1, 'copyright', 'mod_custom', '0', 1, '_blank', 'test=true', 'vi', 2, 1);


#
# TABLE STRUCTURE FOR: modules_en
#

DROP TABLE IF EXISTS modules_en;

CREATE TABLE `modules_en` (
  `id` int(11) NOT NULL,
  `title` varchar(254) DEFAULT NULL,
  `content` text,
  `ordering` int(11) DEFAULT '1',
  `position` varchar(200) DEFAULT NULL,
  `module` varchar(200) DEFAULT NULL,
  `show_title` varchar(200) DEFAULT NULL,
  `html` tinyint(1) DEFAULT '0',
  `params` text,
  `attr` text,
  `lang` varchar(20) NOT NULL DEFAULT 'vi',
  `site` tinyint(1) DEFAULT NULL COMMENT '1: Gian hang, 2: San gia re',
  `published` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (60, 'Tin tức sàn giá rẻ', '', NULL, 'sanggiare_tintuc', 'mod_lastnews', '0', 0, '_blank', 'catid=30,32&max=10&max_show=5&string_length=70&show_img=0&width_img=40px&height_img=40px&speed=1500&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (54, 'Consultation Order', '<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size: 16px;\"><strong>Hotline 01: <span style=\"color:#ff0000;\">1800 6839</span></strong></span></span></p>\n<p>\n	&nbsp;</p>\n<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size: 16px;\"><strong>Hotline 02: <span style=\"color:#ff0000;\">(08) 3977 8088</span></strong></span></span></p>\n<p>\n	&nbsp;</p>\n<p>\n	<em><span id=\"result_box\" lang=\"en\"><span class=\"hps atn\">(</span><span>From</span> <span class=\"hps\">7h to</span> <span class=\"hps\">21h</span> <span class=\"hps\">daily</span><span>,</span> <span class=\"hps\">including Sundays</span> <span class=\"hps\">and holidays)</span></span></em></p>\n', NULL, 'sangiare_hotro', 'mod_custom', '1', 1, 'support', 'test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (59, 'Quản cáo trượt - sangiare', '', NULL, 'sangiare_bannerscroll', 'mod_bannerscroll', '0', 0, '_bank', 'file_img_l=&link_img_l=&target_ads_l=page_owner&file_img_r=&link_img_r=&target_ads_r=page_owner&test=true', 'vi', 2, 0);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (56, 'Khuyến mãi', '', NULL, 'sangiare_popf', 'mod_popf', '0', 0, '_bank', 'file_img=http://fyi.vn/uploads/images/19032012132258.jpg&link_ads=http://fyi.vn&target_ads=page_owner&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (55, 'Discount', '', NULL, 'sangiare_danggiamgia', 'mod_deals', '1', 0, 'danggiamgia', 'test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (76, 'Sàn đấu giá FYI', '', 1, 'sanggiare_sandaugia', 'mod_readnewsid', '0', 0, '_blank', 'contentid=74&css=auction&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (77, 'Hệ thống website FYI.VN', '', 1, 'sanggiare_hethongwebsite', 'mod_newslink', '0', 0, '_blank', 'catid=39&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (72, 'FYL Co,. LTD', '<ul>\n	<li style=\"float: left;width: 170px;\">\n		<a href=\"http://fyi.vn/sangiare1/tin-tuc/bai-viet/gioi-thieu-cong-ty-51\">About Company</a></li>\n	<li style=\"float: left;width: 130px;\">\n		<a href=\"http://fyi.vn/sangiare1/lien-he\">Contact</a></li>\n	<li style=\"float: left; width: 170px;\">\n		<a href=\"http://fyi.vn/sangiare1/tin-tuc/danh-muc/tuyen-dung-38\"><span class=\"short_text\" id=\"result_box\" lang=\"en\"><span class=\"hps\">Employment Information</span></span></a></li>\n</ul>\n<div class=\"follow_us\">\n	<span class=\"label\">Follow us on:</span>&nbsp;<a href=\"http://facebook.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/facebook.png\" style=\"width: 40px; height: 31px; \" /></a><a href=\"http://twitter.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/tiwter.png\" style=\"width: 40px; height: 32px; \" /></a><a href=\"http://youtube.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/youtube.png\" style=\"width: 40px; height: 31px; \" /></a></div>\n', 1, 'sanggiare_gtcty', 'mod_custom', '0', 1, '_blank', 'test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (68, 'Google Analytics', '', 1, 'sanggiare_googleanalytics', 'mod_googleanalytics', '0', 0, '_blank', 'uacct=UA-21372503-1&trackpage=&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (70, 'Help customers', '', 1, 'sanggiare_trogiup', 'mod_newslink', '0', 0, '_blank', 'catid=35&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (71, 'Customer Service', '', 1, 'sanggiare_dichvu', 'mod_newslink', '0', 0, '_blank', 'catid=34&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (73, 'Siêu thị điện máy FYI', '', 1, 'sanggiare_sieuthidienmay', 'mod_readnewsid', '0', 0, '_blank', 'contentid=56&css=shop&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (74, 'Sàn giá rẻ FYI', '', 1, 'sanggiare_sangiare', 'mod_readnewsid', '0', 0, '_blank', 'contentid=73&css=cheap&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (75, 'Sàn trả góp FYI', '', 1, 'sanggiare_santragop', 'mod_readnewsid', '0', 0, '_blank', 'contentid=56&css=bid&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (78, 'CopyRight', '', 1, 'copyright', 'mod_custom', '0', 1, '_blank', 'test=true', 'vi', 2, 1);


#
# TABLE STRUCTURE FOR: modules_menu
#

DROP TABLE IF EXISTS modules_menu;

CREATE TABLE `modules_menu` (
  `menu_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: modules_position
#

DROP TABLE IF EXISTS modules_position;

CREATE TABLE `modules_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO modules_position (`id`, `name`) VALUES (1, 'left');
INSERT INTO modules_position (`id`, `name`) VALUES (2, 'right');
INSERT INTO modules_position (`id`, `name`) VALUES (3, 'user1_1');
INSERT INTO modules_position (`id`, `name`) VALUES (4, 'user1_2');
INSERT INTO modules_position (`id`, `name`) VALUES (5, 'user2');
INSERT INTO modules_position (`id`, `name`) VALUES (6, 'user3');
INSERT INTO modules_position (`id`, `name`) VALUES (7, 'slideshow');
INSERT INTO modules_position (`id`, `name`) VALUES (8, 'language');
INSERT INTO modules_position (`id`, `name`) VALUES (9, 'link_bottom');


#
# TABLE STRUCTURE FOR: news_cat
#

DROP TABLE IF EXISTS news_cat;

CREATE TABLE `news_cat` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `catname` varchar(254) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `productcat` varchar(100) DEFAULT NULL,
  `caturl` varchar(254) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '1',
  `desc` varchar(254) DEFAULT NULL,
  `keyword` varchar(254) DEFAULT NULL,
  `lang` varchar(2) DEFAULT 'vi',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (1, 0, 'Cẩm nang thiết kế', '1340991096.png', '258', 'cam-nang-thiet-ke', 1, 'Cẩm nang thiết kế', 'Cẩm nang thiết kế', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (2, 0, 'Thiết kế In ấn', NULL, '1502', 'thiet-ke-in-an', 2, 'Thiết kế In ấn', 'Thiết kế In ấn', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (3, 0, 'Thiết kế website', NULL, '', 'thiet-ke-website', 3, 'Thiết kế website', 'Thiết kế website', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (4, 0, 'Những câu hỏi cần gặp', NULL, '1712', 'nhung-cau-hoi-can-gap', 4, 'Những câu hỏi cần gặp', 'Những câu hỏi cần gặp', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (5, 1, 'Kiến thức cơ bản', NULL, NULL, 'kien-thuc-co-ban', 1, 'Kiến thức cơ bản', 'Kiến thức cơ bản', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (7, 2, 'Thiết kế Logo', NULL, NULL, 'thiet-ke-logo', 1, 'Thiết kế Logo', 'Thiết kế Logo', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (12, 3, 'Website du lịch', '1340995556.jpg', NULL, 'website-du-lich', 0, 'Thiết website du lịch', 'Thiết website du lịch', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (20, 0, 'Thông tin cần biết', NULL, '', 'thong-tin-can-biet', 1, 'Thông tin cần biết', 'Thông tin cần biết', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (24, 0, 'Tư vấn thiết kế', NULL, NULL, 'tu-van-thiet-ke', 1, 'Tư vấn thiết kế', 'Tư vấn thiết kế', 'vi', 1);


#
# TABLE STRUCTURE FOR: news_cat_en
#

DROP TABLE IF EXISTS news_cat_en;

CREATE TABLE `news_cat_en` (
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `parentid` int(11) unsigned DEFAULT '0',
  `catname` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `caturl` varchar(200) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `lang` varchar(2) DEFAULT 'vi',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: news_detail
#

DROP TABLE IF EXISTS news_detail;

CREATE TABLE `news_detail` (
  `newsid` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) DEFAULT NULL,
  `caturl` varchar(254) DEFAULT NULL,
  `title` varchar(254) DEFAULT NULL,
  `title_alias` varchar(254) DEFAULT NULL,
  `introtext` varchar(500) DEFAULT NULL,
  `fulltext` text,
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `images` varchar(254) DEFAULT NULL,
  `images_thumb` varchar(254) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `attr` varchar(500) DEFAULT 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1',
  `metakey` text,
  `metadesc` text,
  `created_by` int(11) DEFAULT '0',
  `created` int(11) DEFAULT '0',
  `modified` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '1',
  `site` tinyint(1) DEFAULT '1' COMMENT '1: Gian hang, 2: san gia re',
  `lang` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`newsid`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (51, 5, 'kien-thuc-co-ban', 'Giới thiệu công ty', 'gioi-thieu-cong-ty', 'Giới thiệu công ty', '<p>\r\n	Giới thiệu c&ocirc;ng ty</p>\r\n', 0, '1341002690.jpg', 'data/news/1208906notebook-dell-vostro-1450-i3-2330m-210-36623-grey.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 1, 1332145824, 1341002692, 1, 2, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (52, 24, 'tu-van-thiet-ke', 'LG Cookie WiFi T310i - chiếc Cookie thứ 8 của LG', 'lg-cookie-wifi-t310i-chiec-cookie-thu-8-cua-lg', 'Tôi đã hỏi bản thân mình khoảng một tháng trước đây. Website của tôi trông ổn với tôi, nhưng những người khác thì thấy như thế nào? Công cụ tìm kiếm thấy web của tôi như thế nào? Đây là 10 cách để tối ưu hóa website để có một diên mạo thu hút', '<div class=\"Normal\" id=\"divNewsContent\">\r\n	<p>\r\n		&nbsp;</p>\r\n	<div>\r\n		1<strong>. Tương th&iacute;ch với Tr&igrave;nh duyệt</strong></div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Điều đầu ti&ecirc;n l&agrave; xem website của bạn tr&ecirc;n những tr&igrave;nh duyệt của người kh&aacute;c. T&ocirc;i thường xuy&ecirc;n l&agrave;m việc n&agrave;y v&agrave; thỉnh thoảng t&ocirc;i cảm thấy rất bất ngờ với những những g&igrave; m&igrave;nh đ&atilde; thấy</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		TẤT CẢ TR&Igrave;NH DUYỆT http://www.anybrowser.com</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>2. Đường dẫn bị hỏng</strong></div>\r\n	<div>\r\n		Khoảng 5% đường dẫn tr&ecirc;n Internet bị hỏng. Một trang c&oacute; những đường dẫn bị hỏng sẽ để lại ấn tượng xấu cho kh&aacute;ch h&agrave;ng v&agrave; thường l&agrave; giảm doanh số. Hơn nữa, những C&ocirc;ng cụ t&igrave;m kiếm phổ biến v&agrave; c&aacute;c Danh bạ sẽ kh&ocirc;ng cho trang web của bạn v&agrave;o danh s&aacute;ch nếu n&oacute; c&oacute; đường dẫn bị hỏng hay h&igrave;nh ảnh bị mất.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Đ&acirc;y l&agrave; những dịch vụ kiểm tra đường dẫn</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		LINK SCAN http://www.elsop.com/linkscan/quickcheck.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		NET MECHANIC http://netmechanic.com/maintain.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		PH&Aacute;T HIỆN ĐƯỜNG DẪN HỎNG TRONG WEBSITE</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>3. M&agrave;u sắc an to&agrave;n cho web</strong></div>\r\n	<div>\r\n		Liệu những m&agrave;u sắc tr&ecirc;n web của bạn tr&ocirc;ng ổn dưới tr&igrave;nh duyệt của những người kh&aacute;c? Bạn c&oacute; thể c&oacute; sự phối m&agrave;u tốt tr&ecirc;n tr&igrave;nh duyệt của bạn nhưng n&oacute; c&oacute; thể tr&ocirc;ng rất k&igrave; qu&aacute;i tr&ecirc;n m&aacute;y t&iacute;nh của người kh&aacute;c</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Chỉ c&oacute; 216 m&agrave;u sắc an to&agrave;n cho web của bạn. Những m&agrave;u sắc n&agrave;y thống nhất v&agrave; giữ nguy&ecirc;n tr&ecirc;n bất cứ m&aacute;y t&iacute;nh hay tr&igrave;nh duyệt n&agrave;o c&oacute; khả năng hiển thị m&agrave;u nặng 8 bit</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Bảng m&agrave;u an to&agrave;n cho web c&oacute; 6 nh&oacute;m, mỗi nh&oacute;m c&oacute; 36 m&agrave;u. 216 m&agrave;u an to&agrave;n cho web n&agrave;y c&oacute; thể kết hợp với c&aacute;i trị số RGB ( Đỏ xanh dương xanh da trời) như sau: 0, 51, 102, 153, 204, 255 (mỗi trị số RGB phải chia hết cho 51).</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Đ&acirc;y l&agrave; bảng m&agrave;u an to&agrave;n</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		NGUỒN M&Agrave;U AN TO&Agrave;N CHO WEB http://www.web-source.net/216_color_chart.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>4. Đu&ocirc;i ALT</strong></div>\r\n	<div>\r\n		Đu&ocirc;i ALT cho ph&eacute;p bạn thay thế cho người c&oacute; chức năng &ldquo;xem h&igrave;nh ảnh&rdquo; bị tắt tr&ecirc;n tr&igrave;nh duyệt của họ. Giả sử hệ thống chuyển hướng tr&ecirc;n website của bạn gồm một loạt những n&uacute;t dẫn tới những trang kh&aacute;c trong site. Nếu bạn kh&ocirc;ng c&oacute; c&aacute;c đu&ocirc;i ALT, người c&oacute; chức năng &ldquo;xem h&igrave;nh ảnh&rdquo; bị tắt sẽ kh&ocirc;ng thể chuyển hướng tr&ecirc;n site của bạn - ở n&uacute;t của bạn họ sẽ chỉ nh&igrave;n thấy một khoảng kh&ocirc;ng trống rỗng.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nhưng một đu&ocirc;i ALT cho ph&eacute;p bạn n&oacute;i cho họ biết l&agrave; n&uacute;t đ&oacute; c&oacute; hoạt động. V&iacute; dụ, nếu n&uacute;t đ&oacute; l&agrave; đường dẫn tới &ldquo;Bản đồ site&rdquo; bạn c&oacute; thể ch&egrave;n đu&ocirc;i ALT sau: Nhấp chuột v&agrave;o đ&acirc;y để xem Bản đồ site.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		C&aacute;c đu&ocirc;i ALT cũng cho ph&eacute;p bạn n&ecirc;u n&acirc;ng cao được tần suất của từ kh&oacute;a. Bạn c&oacute; thể ch&egrave;n từ kh&oacute;a ch&iacute;nh của bạn v&agrave;o những h&igrave;nh ảnh kh&ocirc;ng được si&ecirc;u li&ecirc;n kết. V&iacute; dụ: c&aacute;c chuyến bay giảm gi&aacute;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>5. Si&ecirc;u đu&ocirc;i</strong></div>\r\n	<div>\r\n		Những si&ecirc;u đu&ocirc;i rất quan trọng, cần c&oacute; hẳn một b&agrave;i b&aacute;o để b&agrave;n luận về ch&uacute;ng. Những đu&ocirc;i mượn quan trọng l&agrave; đu&ocirc;i ti&ecirc;u đề, đu&ocirc;i từ kh&oacute;a v&agrave; đu&ocirc;i m&ocirc; tả</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Đu&ocirc;i ti&ecirc;u đề kh&ocirc;ng n&ecirc;n vượt qu&aacute; 64 k&iacute; tự (nếu d&agrave;i hơn, n&oacute; sẽ bị một v&agrave;i c&ocirc;ng cụ t&igrave;m kiếm cắt bỏ)</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Đu&ocirc;i từ kh&oacute;a c&oacute; thể chứa từ 5 đến 10 từ kh&oacute;a xuất hiện trong trang web của bạn. Đừng cho v&agrave;o đ&oacute; những từ kh&oacute;a kh&ocirc;ng xuất hiện trong trang web đ&oacute; &ndash; một v&agrave;i c&ocirc;ng cụ t&igrave;m kiếm c&oacute; thể phạt website của bạn v&igrave; điều n&agrave;y. Đừng lặp lại từ kh&oacute;a- điều đ&oacute; được gọi l&agrave; &ldquo;nhồi từ kh&oacute;a&rdquo; &ndash; v&agrave; điều n&agrave;y cũng kh&ocirc;ng được c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm khuyến kh&iacute;ch cho lắm.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Ngăn c&aacute;ch c&aacute;c từ kh&oacute;a bằng những khoảng trống (kh&ocirc;ng d&ugrave;ng dấu phẩy). Điều n&agrave;y cũng cho ph&eacute;p c&ocirc;ng cụ t&igrave;m kiếm kết hợp c&aacute;c từ kh&oacute;a th&agrave;nh cụm từ, để hiện thị kết quả cho những người nhập cả cụm từ v&agrave;o để t&igrave;m kiếm.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Đu&ocirc;i m&ocirc; tả kh&ocirc;ng n&ecirc;n qu&aacute; 200 k&iacute; tự. Chứa c&agrave;ng nhiều từ kh&oacute;a c&agrave;ng tốt. Nhớ l&agrave; đu&ocirc;i m&ocirc; tả phải cuốn h&uacute;t &ndash; l&agrave;m cho mọi người muốn đến thăm trang.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Đ&acirc;y l&agrave; v&agrave;i chương tr&igrave;nh để tạo ra si&ecirc;u đu&ocirc;i cho bạn:</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Xưởng sửa chữa website http://websitegarage.netscape.com/turbocharge/metatag/</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Bệnh viện website http://northernwebs.com/tools/multimetamaker.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nh&agrave; Sản xuất-Đa-Si&ecirc;u http://multimeta.com/tools/multimetamaker.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>6. Thời gian tải</strong></div>\r\n	<div>\r\n		Một trang tải chậm l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave;m giảm doanh thu. Thời gian tải th&ocirc;ng thường của một trang khoảng 15 gi&acirc;y l&agrave; chấp nhận được. Đ&acirc;y l&agrave; c&aacute;c dịch vụ kiểm tra xem tải trang web của bạn về mất bao l&acirc;u:</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Xưởng sửa chữa Net http://www.netmechanic.com/cobrands/FutureQuest/load_check.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Dung lượng trang web của bạn kh&ocirc;ng n&ecirc;n vượt qu&aacute; 30Kb. Để t&iacute;nh dung lượng website, h&atilde;y đ&aacute;nh dấu c&aacute;c văn bản HTML, sau đ&oacute; nhấp chuột v&agrave;o &ldquo;File&rdquo; hoặc l&agrave; &ldquo;Properties&rdquo; v&agrave; nh&igrave;n v&agrave;o phần dung lượng sai. L&agrave;m thao t&aacute;c tương tự nếu muốn kiểm tra dung lượng của những bức ảnh tr&ecirc;n trang đ&oacute;. Sau đ&oacute; cộng những con số n&agrave;y với nhau để t&igrave;m ra dung lượng của trang.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nếu trang của bạn nhẹ hơn 30Kb v&agrave; vẫn mất hơn 15 gi&acirc;y để tải trang về, th&igrave; chắc chắn sự cố nằm ở dịch vụ lưu trữ web của bạn. Giải ph&aacute;p cho vấn đề n&agrave;y đ&oacute; l&agrave; đổi dịch vụ lưu trữ. Đ&acirc;y l&agrave; 2 dịch vụ gi&uacute;p kiểm tra tốc độ của b&ecirc;n lưu trữ web v&agrave; so s&aacute;nh ch&uacute;ng với dịch vụ kh&aacute;c.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		So s&aacute;nh dịch vụ lưu trữ http://www.hostcompare.com/testools.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Dịch vụ web Cnet http://webservices.cnet.com/ping/</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		7. Giảm dung lượng ảnh c&oacute; đu&ocirc;i l&agrave; GIF hoặc đu&ocirc;i JPEG</div>\r\n	<div>\r\n		Giảm dung lượng h&igrave;nh ảnh tr&ecirc;n web l&agrave; c&aacute;ch giảm thời gian tải trang hữu hiệu nhất. Bạn thường giảm h&igrave;nh ảnh GIF hoặc JPEG xuống 40% tới 50% m&agrave; kh&ocirc;ng l&agrave;m bất độ ph&acirc;n giải v&agrave; sắc n&eacute;t.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		http://spinwave.com/crunchers.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>8. Tối ưu h&oacute;a HTML</strong></div>\r\n	<div>\r\n		Một c&aacute;ch kh&aacute;c để l&agrave;m cho trang của bạn tải nhanh hơn đ&oacute; l&agrave; n&eacute;n (hay tối ưu h&oacute;a) m&atilde; HTML của bạn. Một chương tr&igrave;nh tối ưu h&oacute;a HTML sẽ loại bỏ tất cả c&aacute;c khoảng trống tr&ecirc;n m&atilde; HTML của bạn v&agrave; cũng loại bỏ những đu&ocirc;i kh&ocirc;ng cần thiết.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Trung b&igrave;nh, một chương tr&igrave;nh tối ưu h&oacute;a c&oacute; thể giảm được 15 đến 20% dung lượng ảnh của bạn. Đ&oacute; c&oacute; thể kh&ocirc;ng phải l&agrave; một con số lớn, nhưng dung lượng c&agrave;ng giảm bao nhi&ecirc;u th&igrave; trang web của bạn c&agrave;ng tải nhanh hơn, v&agrave; tr&igrave;nh duyệt của kh&aacute;ch h&agrave;ng sẽ ph&acirc;n t&iacute;ch trang web của bạn hiệu quả hơn.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nhưng cũng n&ecirc;n lưu &yacute;: Hầu hết c&aacute;c chương tr&igrave;nh Tối ưu h&oacute;a HTML bạn sẽ t&igrave;m thấy một thực đơn &ldquo;C&aacute;c lựa chọn&rdquo; b&aacute;o cho chương tr&igrave;nh lờ đi một v&agrave;i phần mật m&atilde; nhất đinh. H&atilde;y ngăn chặn kh&ocirc;ng cho Tối ưu h&oacute;a kh&ocirc;ng n&eacute;n những đu&ocirc;i soạn thảo gắn k&egrave;m &ndash; nếu những c&aacute;i đu&ocirc;i n&agrave;y bị n&eacute;n, chương tr&igrave;nh soạn thảo sẽ kh&ocirc;ng hoạt động được.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		TỐI ƯU H&Oacute;A HTML CHUY&Ecirc;N S&Acirc;U http://www.pcbit.com/htmlopt/</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>9. Những đu&ocirc;i RỘNG, &nbsp;CAO v&agrave; GIỚI HẠN</strong></div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Những thuộc RỘNG, D&Agrave;I v&agrave; GIỚI HẠN rất cần thiết cho mỗi h&igrave;nh ảnh tr&ecirc;n web. Khi bạn si&ecirc;u dẫn một h&igrave;nh ảnh, ch&uacute; &yacute; cần phải đặt thuộc t&iacute;nh GIỚI HAN bằng 0 (GIỚI HẠN =0). Nếu kh&ocirc;ng, h&igrave;nh ảnh được si&ecirc;u dẫn của bạn sẽ c&oacute; một đường viền m&agrave;u xanh xấu x&iacute; bao quanh n&oacute;.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Những thuộc t&iacute;nh RỘNG v&agrave; CAO sẽ l&agrave;m cho trang web của bạn tải nhanh hơn, bởi v&igrave; tr&igrave;nh duyệt biết trước được h&igrave;nh ảnh cần bao nhi&ecirc;u khoảng kh&ocirc;ng. Để t&igrave;m ra chiều rộng v&agrave; chiều cao của h&igrave;nh ảnh, h&atilde;y nh&aacute;y đ&uacute;p chuột v&agrave;o tệp h&igrave;nh ảnh. &ldquo;Microsoft Photo Editor&rdquo; sẽ tự động mở ra &ndash; h&igrave;nh ảnh của bạn sẽ xuất hiện, với chiều rộng v&agrave; chiều cao của h&igrave;nh ảnh (dưới đơn vị pixels) hiển thị tr&ecirc;n thanh c&ocirc;ng cụ.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>10. Kiểm tra chất lượng HTML</strong></div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		H&atilde;y kiểm tra chất lượng HTML của m&igrave;nh. Một v&agrave;i c&ocirc;ng cụ t&igrave;m kiếm thường xếp c&aacute;c trang c&oacute; chất lượng HTML k&eacute;m v&agrave;o thứ hạng thấp</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Đ&acirc;y l&agrave; những chương tr&igrave;nh kiểm tra miễn ph&iacute; chất lượng HTML trực tuyến</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		HỖ TRỢ HTML http://www.htmlhelp.org/tools/validator/</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		BOBBY http://www.cast.org/bobby</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		WATSON http://watson.addy.com/</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '1341002763.jpg', 'data/news/imagelg-cookie-wifi-t310i-chiec-cookie-thu-8-cua-lg.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '`12`12`12', '1`2', 1, 1335873103, 1341045321, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (68, 0, 'sadsads', 'Tên miền Quốc tế', 'ten-mien-quoc-te', 'sadsa', '<p>\r\n	T&ecirc;n miền Quốc tế</p>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 0, 1341006173, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (53, 5, 'dien-thoai', 'Đập hộp LG Wink GT350i có WiFi giá thấp', 'dap-hop-lg-wink-gt350i-co-wifi-gia-thap', 'Wink GT350i được thiết kế dành cho giới trẻ với màn hình cảm ứng và bàn phím Full Qwerty trượt ngang giá thấp', '<div class=\"Normal\" id=\"divNewsContent\">\r\n	<p>\r\n		<strong>LG Wink GT350i</strong> c&oacute; m&agrave;n h&igrave;nh cảm ứng điện trở TFT rộng 3.0&quot; với giao diện S-Class với 4 m&agrave;n h&igrave;nh chủ c&oacute; khả năng t&ugrave;y biến cho việc truy cập chỉ với động t&aacute;c lướt ng&oacute;n tay đơn giản v&agrave; b&agrave;n ph&iacute;m Qwerty trượt ngang gi&uacute;p nhập liệu nhanh ch&oacute;ng v&agrave; tiện lợi.</p>\r\n	<p>\r\n		Camera 2.0 hỗ trợ khả năng quay video chuẩn QVGA gi&uacute;p người sử dụng lưu lại những khoảnh khắc đ&aacute;ng nhớ với bộ nhớ trong l&ecirc;n đến 56MB v&agrave; khả năng mở rộng bộ nhớ qua khe cắm thẻ nhớ microSD l&ecirc;n đến 8GB hoặc chia sẽ với bạn b&egrave; th&ocirc;ng qua c&aacute;c mạng x&atilde; hội được t&iacute;ch hợp sẳn trong m&aacute;y th&ocirc;ng qua kết nối WiFi.</p>\r\n	<p>\r\n		<strong>Wink GT350i</strong> c&ograve;n được hỗ trợ Push Mail gi&uacute;p người sử dụng c&oacute; thể dễ d&agrave;ng gửi v&agrave; nhận thư từ t&agrave;i khoản e-mail của c&ocirc;ng ty, đồng bộ h&oacute;a thư, danh bạ, lịch l&agrave;m việc,...</p>\r\n	<p>\r\n		Sau đ&acirc;y l&agrave; h&igrave;nh ảnh đập hộp<strong> LG Wink GT350i </strong></p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/199_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Nguy&ecirc;n hộp LG GT350i ch&iacute;nh h&atilde;ng</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/200_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		To&agrave;n bộ phụ kiện k&egrave;m theo</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/201_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Mặt sau khi trượt b&agrave;n ph&iacute;m ra</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/213_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Sử dụng pin chuẩn Li-Ion 950 mAh</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/214_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Camera 2.0MP, hỗ trợ quay video chuẩn QVGA</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/215_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Cạnh tr&aacute;i l&agrave; n&uacute;t điều chỉnh &acirc;m lượng, khe cắm thẻ nhớ microSD</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/216_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Cạnh phải l&agrave; cổng microUSB v&agrave; ph&iacute;m camera</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/217_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Cạnh tr&ecirc;n l&agrave; n&uacute;t nguồn/kh&oacute;a m&aacute;y v&agrave; ng&otilde; ra audio 3.5mm</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/218_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Cạnh dưới</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/219_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Giao diện m&agrave;n h&igrave;nh ch&iacute;nh</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/220_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Giao diện menu ngang</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, 'data/images/news/219dap-hop-lg-wink-gt350i-co-wifi-gia-thap.jpg', 'data/news/219dap-hop-lg-wink-gt350i-co-wifi-gia-thap.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335885960, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (54, 5, 'dien-thoai', 'HTC EVO One chạy Android 4.0 với pin cực khủng', 'htc-evo-one-chay-android-40-voi-pin-cuc-khung', 'Trên trang Pocketnow vừa đăng tải hình ảnh rò rỉ của smartphone HTC EVO One, nhiều khả năng nhà mạng Sprint sẽ phân phối máy trong thời gian tới.', '<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/04/htc-evo-one.jpg\"><img alt=\"HTC EVO One\" class=\"aligncenter size-full wp-image-117330\" height=\"369\" src=\"http://cafef1.com/wp-content/uploads/2012/04/htc-evo-one.jpg\" title=\"HTC EVO One\" width=\"600\" /></a></p>\r\n<p style=\"text-align: justify;\">\r\n	Theo đ&oacute;, HTC EVO One sở hữu m&agrave;n h&igrave;nh AMOLED 4,7 inch với độ ph&acirc;n giải HD720p, chip xử l&yacute; Snapdragon S4 Dual-Core 1,5GHz, bộ nhớ trong 16GB. M&aacute;y c&oacute; camera sau 8 &quot;chấm&quot; c&ugrave;ng camera trước 2 megapixel, t&iacute;ch hợp c&ocirc;ng nghệ Beats Audio, hỗ trợ khe cắm thẻ nhớ microSD, kết nối 4G LTE. EVO One c&oacute; thiết kế liền khung với pin đi k&egrave;m c&oacute; dung lượng kh&aacute; cao 2.650 mAh, m&aacute;y chạy tr&ecirc;n nền&nbsp;<a href=\"http://cafef1.com/tag/Android\" title=\"Android\">Android</a> 4.0 Ice Cream Sandwich với giao diện Sense 4.0 mới nhất của HTC.</p>\r\n<p style=\"text-align: justify;\">\r\n	Hiện chưa c&oacute; th&ocirc;ng b&aacute;o về gi&aacute; cũng như ng&agrave;y xuất xưởng của sản phẩm.</p>\r\n', 1, 'data/images/news/htc-evo-one.jpg', 'data/news/htc-evo-one.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335886072, 1335955368, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (55, 5, 'dien-thoai', 'TCL 217D – điện thoại 2 sim giá siêu rẻ nhiều tính năng hữu ích', 'tcl-217d-dien-thoai-2-sim-gia-sieu-re-nhieu-tinh-nang-huu-ich', 'Máy có thiết kế nhỏ gọn nhiều màu sắc trẻ trung, đặc biệt TCL 217D hỗ trợ tính năng \"HOT\" hiện nay 2 sim 2 sóng rất tiện lợi.', '<p style=\"text-align: justify;\">\r\n	TCL 217D hướng đến người d&ugrave;ng l&agrave; học sinh, sinh vi&ecirc;n, c&aacute;c bạn trẻ c&oacute; nhu cầu sử dụng nhiều sim...&nbsp;Đặc biệt m&aacute;y t&iacute;ch hợp t&iacute;nh năng hạn chế thời gian gọi, ph&ugrave; hợp với xu hướng nở rộ sim khuyến m&atilde;i gọi 10 ph&uacute;t nội mạng miễn ph&iacute; như hiện nay. Ngo&agrave;i ra, m&aacute;y c&oacute; thể ph&aacute;t FM m&agrave; kh&ocirc;ng cần đến <a href=\"http://cafef1.com/tag/tai-nghe/\" target=\"_blank\" title=\"tai nghe\">tai nghe</a>, đ&egrave;n pin cực s&aacute;ng cũng được t&iacute;ch hợp tr&ecirc;n&nbsp;thiết bị. Hiện nay,&nbsp;TCL 217D được b&aacute;n với gi&aacute; 369,000 đồng nhưng khi đặt h&agrave;ng online&nbsp;tại hệ thống cửa h&agrave;ng thegioididong.com <a href=\"http://www.dienmay.com/khuyenmai/?utm_source=thegioididong&amp;utm_medium=leaderboard&amp;utm_campaign=t1\" target=\"_blank\" title=\"TCL 217D\">gi&aacute; chỉ c&ograve;n 289,000 đồng.</a></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><em>H&igrave;nh ảnh cận cảnh&nbsp;TCL 217D gi&aacute; si&ecirc;u rẻ.</em></strong></p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_1.jpg\"><img alt=\"TCL 217D\" class=\"aligncenter size-full wp-image-95655\" height=\"365\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_1.jpg\" title=\"TCL-217D_CafeF1.com_1\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;M&aacute;y c&oacute; thiết kế nhỏ gọn.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_2.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95656\" height=\"395\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_2.jpg\" title=\"TCL-217D_CafeF1.com_2\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;Mặt sau.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_3.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95657\" height=\"412\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_3.jpg\" title=\"TCL-217D_CafeF1.com_3\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;Cổng sạc nằm ở cạnh tr&aacute;i của m&aacute;y.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_4.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95658\" height=\"389\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_4.jpg\" title=\"TCL-217D_CafeF1.com_4\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;Cạnh phải với khe t&aacute;ch phần ốp lưng.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_5.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95659\" height=\"349\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_5.jpg\" title=\"TCL-217D_CafeF1.com_5\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;C&aacute;c g&oacute;c cạnh được bo tr&ograve;n.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_6.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95660\" height=\"347\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_6.jpg\" title=\"TCL-217D_CafeF1.com_6\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;Đ&egrave;n pin được t&iacute;ch hợp theo m&aacute;y.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_7.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95661\" height=\"386\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_7.jpg\" title=\"TCL-217D_CafeF1.com_7\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;B&agrave;n ph&iacute;m cao su chống bụi v&agrave; tạo cảm gi&aacute;c &ecirc;m tay khi bấm.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_8.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95662\" height=\"379\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_8.jpg\" title=\"TCL-217D_CafeF1.com_8\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;M&aacute;y được sản xuất tại Trung Quốc v&agrave; được bảo h&agrave;ng ch&iacute;nh h&atilde;ng 12 th&aacute;ng.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_9.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95663\" height=\"347\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_9.jpg\" title=\"TCL-217D_CafeF1.com_9\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;<a href=\"http://cafef1.com/category/san-pham/do-choi-so-phu-kien/\" title=\"Phụ kiện\">Phụ kiện</a> đi k&egrave;m gồm sạc v&agrave; tai nghe.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_10.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95664\" height=\"398\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_10.jpg\" title=\"TCL-217D_CafeF1.com_10\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;Nghe FM kh&ocirc;ng cần đến tai nghe.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_11.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95665\" height=\"400\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_11.jpg\" title=\"TCL-217D_CafeF1.com_11\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;Giao diện Menu.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_12.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95666\" height=\"424\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_12.jpg\" title=\"TCL-217D_CafeF1.com_12\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;T&iacute;nh năng &quot;HOT&quot; giới hạn cuộc gọi.</p>\r\n', 0, 'data/images/news/tcl-217dcafef1com1.jpg', 'data/news/tcl-217dcafef1com1.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335886191, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (56, 5, 'dien-thoai', 'RIM không từ bỏ phím QWERTY cứng trên BlackBerry 10', 'rim-khong-tu-bo-phim-qwerty-cung-tren-blackberry-10', 'Mẫu thử dành cho các nhà phát triển là smartphone cảm ứng, nhưng RIM khẳng định vẫn tiếp tục với các smartphone truyền thống trên nền tảng mới.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"Mẫu Alpha có thiết kế hơi giống máy tính bảng thu nhỏ.\" border=\"1\" height=\"320\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/C0/bb10.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				Mẫu Alpha c&oacute; thiết kế hơi giống m&aacute;y t&iacute;nh bảng thu nhỏ.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Việc RIM cho ra mắt mẫu <a class=\"Normal\" href=\"http://sohoa.vnexpress.net/sh/dien-thoai/smartphone/2012/05/3b9b5fb8/RIM-gioi-thieu-BlackBerry-10-Alpha\"><font color=\"#0000ff\">BlackBerry 10 Alpha</font></a> d&agrave;nh cho c&aacute;c nh&agrave; ph&aacute;t triển thiếu đi b&agrave;n ph&iacute;m QWERTY vật l&yacute; đ&atilde; khiến kh&ocirc;ng &iacute;t người y&ecirc;u th&iacute;ch h&atilde;ng điện thoại Canada cảm thấy kh&ocirc;ng h&agrave;i l&ograve;ng.</p>\r\n<p class=\"Normal\">\r\n	Tuy nhi&ecirc;n, trong số những phần lưu &yacute; của CEP Thorsten Heins tại sự kiện BlackBerry World, những cải tiến c&oacute; trong hệ điều h&agrave;nh mới vẫn c&oacute; mặt tr&ecirc;n c&aacute;c sản phẩm ra mắt với thiết kế truyền thống của RIM, thay v&igrave; chỉ c&oacute; tr&ecirc;n smartphone với m&agrave;n h&igrave;nh cảm ứng.</p>\r\n<p class=\"Normal\">\r\n	Một ph&aacute;t ng&ocirc;n vi&ecirc;n của RIM khẳng định, h&atilde;ng kh&ocirc;ng c&oacute; &yacute; định từ bỏ việc sản xuất điện thoại với b&agrave;n ph&iacute;m full QWERTY vật l&yacute;, vốn tạo n&ecirc;n điểm ri&ecirc;ng của c&ocirc;ng ty từ trước tới nay. RIM chỉ ra mắt sản phẩm thử với b&agrave;n ph&iacute;m ảo, tuy nhi&ecirc;n khi đi v&agrave;o sản xuất thực tế, BlackBerry 10 sẽ c&oacute; mặt tr&ecirc;n cả hai d&ograve;ng điện thoại thuần cảm ứng v&agrave; điện thoại với b&agrave;n ph&iacute;m cứng.</p>\r\n', 0, 'data/images/news/3378693-472167-a-checkbox-icon-isolated-on-white.jpg', 'data/news/3378693-472167-a-checkbox-icon-isolated-on-white.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335942916, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (57, 5, 'dien-thoai', 'Apple và Samsung sắp gặp nhau hòa giải', 'apple-va-samsung-sap-gap-nhau-hoa-giai', 'Hai nhà sản xuất thiết bị di động lớn nhất thế giới sẽ gặp nhau vào ngày 21 và 22/5 nhằm tìm kiếm biện pháp chấm dứt cuộc kiện tụng kéo dài hơn một năm qua.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"Apple và Samsung đang tìm kiếm biện pháp hòa giải. Ảnh: PhoneArena.\" border=\"1\" height=\"338\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/B1/samsung-apple.jpg\" width=\"480\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				Apple v&agrave; Samsung đang t&igrave;m kiếm biện ph&aacute;p h&ograve;a giải. Ảnh: <em>PhoneArena.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Cả CEO của Apple v&agrave; Samsung l&agrave; Tim Cook v&agrave; Choi Gee-sung đ&atilde; đồng &yacute; biện ph&aacute;p h&ograve;a giải m&agrave; t&ograve;a &aacute;n San Francisco đưa ra. Hai h&atilde;ng sẽ phải đưa ra những l&yacute; lẽ thuyết phục, chứng minh khả năng gi&agrave;nh thắng lợi của m&igrave;nh.</p>\r\n<p class=\"Normal\">\r\n	Apple v&agrave; Samsung bắt đầu kiện tụng từ th&aacute;ng 4/2011 đến nay. Tranh chấp ph&aacute;p l&yacute; diễn ra tại hơn 10 quốc gia. Cả hai c&aacute;o buộc lẫn nhau về đối thủ vi phạm s&aacute;ng chế phần mềm, thiết kế tr&ecirc;n smartphone v&agrave; m&aacute;y t&iacute;nh bảng.</p>\r\n', 0, 'data/images/news/samsung-apple.jpg', 'data/news/samsung-apple.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335943092, 1335943098, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (58, 5, 'kien-thuc-co-ban', 'LG không có kế hoạch phát triển điện thoại Windows Phone', 'lg-khong-co-ke-hoach-phat-trien-dien-thoai-windows-phone', 'Nhà sản xuất Hàn Quốc cho biết họ không giới thiệu smartphone sử dụng nền tảng Microsoft trong tương lai, dù đây chưa phải là quyết định cuối cùng.', '<p style=\"text-align: center;\">\r\n	<img alt=\"Optimus 7 là mẫu Windows Phone 7 với thiết kế tốt. Ảnh: Quốc Huy.\" border=\"1\" height=\"540\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/B5/lg-optimus-7-1.jpg\" width=\"480\" /></p>\r\n<p class=\"Normal\">\r\n	CEO Microsoft, Steve Ballmer dự ki&ecirc;́n sẽ có chuy&ecirc;́n thăm Hàn Qu&ocirc;́c, bàn v&ecirc;̀ k&ecirc;́ hoạch phát tri&ecirc;̉n các n&ecirc;̀n tảng của họ trong tháng này.</p>\r\n<p class=\"Normal\">\r\n	Tuy nhi&ecirc;n, phát ng&ocirc;n vi&ecirc;n LG cho rằng, khả năng phát tri&ecirc;̉n những chi&ecirc;́c Windows Phone kh&ocirc;ng. &quot;S&ocirc;́ máy chạy n&ecirc;̀n tảng này bán ra thị trường toàn c&acirc;̀u kh&ocirc;ng có nhi&ecirc;̀u ý nghĩa&quot;, phát ng&ocirc;n vi&ecirc;n của hãng nói, LG kh&ocirc;ng có k&ecirc;́ hoạch ra smartphone Windows Phone.</p>\r\n<p class=\"Normal\">\r\n	LG là m&ocirc;̣t trong những hãng có quan h&ecirc;̣ t&ocirc;́t với Microsoft. Hãng này cũng sớm ra mắt những chi&ecirc;́c Windows Phone 7 vào cu&ocirc;́i 2010. Tuy nhi&ecirc;n, sự đi l&ecirc;n của Samsung của n&ecirc;̀n tảng Android đang khi&ecirc;́n LG y&ecirc;́u th&ecirc;́ hơn tr&ecirc;n ph&acirc;n khúc này. Trong khi đó, Windows Phone kh&ocirc;ng mang lại k&ecirc;́t quả như mong đợi.</p>\r\n', 0, '1341002812.png', 'data/news/lg-optimus-7-1.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943150, 1341002813, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (59, 12, 'website-du-lich', 'web du lich la website duoc nhieu nguoi quan tam', 'web-du-lich-la-website-duoc-nhieu-nguoi-quan-tam', 'Samsung và LG vừa giới thiệu các smartphone có giá trên dưới 3 triệu đồng. Ngoài ra, hãng điện thoại Trung Quốc là ZTE cũng có model mới với thiết kế lạ.', '<p class=\"SubTitle\">\r\n	ZTE U N720 (2,6 triệu đồng)</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"N720 màn hình 2,8 inch.\" border=\"1\" height=\"328\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/AC/zte-n720.jpg\" width=\"480\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				N720 m&agrave;n h&igrave;nh 2,8 inch.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	ZTE U N720 l&agrave; một trong những smartphone chạy Android rẻ nhất tr&ecirc;n thị trường hiện nay. M&aacute;y sử dụng m&agrave;n h&igrave;nh 2,8 inch độ ph&acirc;n giải 240 x 320 pixel. Sản phẩm được trang bị chip xử l&yacute; tốc độ 600 MHz, RAM 256 MB, bộ nhớ trong 256 MB c&oacute; thể mở rộng l&ecirc;n đến 8 GB bằng thể nhớ MicroSD. Camera của m&aacute;y c&oacute; độ ph&acirc;n giải 3,2 Megapixel.</p>\r\n<p class=\"SubTitle\">\r\n	Samsung Galaxy Pocket (2,8 triệu đồng)</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"Đây là điện thoại Android rẻ nhất của Samsung.\" border=\"1\" height=\"370\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/AC/Samsung-galaxy-pocket-3.jpg\" width=\"480\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				Đ&acirc;y l&agrave; điện thoại Android rẻ nhất của Samsung.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Galaxy Pocket l&agrave; smartphone chạy Android rẻ nhất của Samsung hiện nay. M&aacute;y sở hữu m&agrave;n h&igrave;nh 2,8 inch, độ ph&acirc;n giải 240 x 320 pixel, chất lượng hiển thị ở mức kh&aacute;. Thiết bị c&oacute; c&aacute;c kết nối từ HSDPA, Wi-Fi, GPS v&agrave; cả Wi-Fi hotspot. Sản phẩm sử dụng chip xử l&yacute; 832 MHz, tương đương Galaxy Y. Model n&agrave;y chạy Android 2.3, m&aacute;y ảnh 2 Megapixel.</p>\r\n<p class=\"SubTitle\">\r\n	LG Optimus L3 (3,2 triệu đồng)</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"L3 màn hình cảm ứng 3,2 inch.\" border=\"1\" height=\"342\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/AC/LG-l3-E400-3.jpg\" width=\"480\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				L3 m&agrave;n h&igrave;nh cảm ứng 3,2 inch.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Optimus L3 được kỳ vọng l&agrave; đối thủ của Galaxy Y với gi&aacute; rẻ. M&aacute;y c&oacute; m&agrave;n h&igrave;nh cảm ứng điện dung 3,2 inch, độ ph&acirc;n giải 240 x 320 pixel. Sản phẩm được trang bị chip xử l&yacute; tốc độ 800 MHz, kết nối Wi-Fi, 3G v&agrave; camera 3 Megapixel. Bộ nhớ trong của m&aacute;y l&agrave; 1GB v&agrave; c&oacute; thể n&acirc;ng cấp bằng thẻ nhớ micro SD l&ecirc;n đến 32 GB. Optimus L3 chạy hệ điều h&agrave;nh Android 2.3.</p>\r\n', 0, '1341007468.jpg', 'data/news/samsung-galaxy-pocket-3.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943208, 1341007515, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (60, 7, 'laptop', 'Apple có thể khai tử MacBook Pro 17 inch', 'apple-co-the-khai-tu-macbook-pro-17-inch', 'Nguyên nhân là bởi sản phẩm này bán chậm và nhà sản xuất đang chuẩn bị tung ra dòng laptop mới kết hợp giữa MacBook Pro với MacBook Air.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"MacBook Pro 17 inch bán không chạy bằng các model 13 và 15 inch. Ảnh: Engadget.\" border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/30/macbook_pro.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				MacBook Pro 17 inch b&aacute;n kh&ocirc;ng chạy bằng c&aacute;c model 13 v&agrave; 15 inch. Ảnh: <em>Engadget.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Ming-Chi Kuo, một nh&agrave; ph&acirc;n t&iacute;ch của KGI Securities cho biết, mẫu laptop mới của Apple sẽ c&oacute; sức mạnh của MacBook Pro v&agrave; sự gọn nhẹ của MacBoook Air. &Ocirc;ng Ming-Chi dự đo&aacute;n rằng &quot;Quả t&aacute;o&quot; sẽ tung mẫu MacBook mới n&agrave;y v&agrave;o đầu qu&yacute; III/2012.</p>\r\n<p class=\"Normal\">\r\n	Theo <em>Macrumors</em>, để chuẩn bị cho d&ograve;ng laptop mới, Apple c&oacute; thể &quot;khai tử&quot; d&ograve;ng MacBook Pro 17 inch trong năm nay. Nguy&ecirc;n nh&acirc;n l&agrave; bởi model n&agrave;y b&aacute;n kh&ocirc;ng chạy v&agrave; số lượng m&aacute;y xuất xưởng ng&agrave;y một giảm.</p>\r\n<p class=\"Normal\">\r\n	Đầu qu&yacute; I năm nay, doanh số MacBook Pro 13 v&agrave; 15 inch dự kiến đạt 1,5 triệu v&agrave; 500.000 m&aacute;y. Trong khi đ&oacute;, số lượng MacBook Pro 17 inch b&aacute;n ra được chỉ c&oacute; 50.000 đơn vị. Theo ước t&iacute;nh của nh&agrave; ph&acirc;n t&iacute;ch Ming-Chi Kuo, MacBook Air chiếm hơn một phần ba trong số 3,1 triệu laptop b&aacute;n ra của Apple.</p>\r\n', 1, 'data/images/news/macbookpro.jpg', 'data/news/macbookpro.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335943274, 1335956025, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (61, 20, 'thong-tin-can-biet', 'HP Envy 4 bán tại Trung Quốc với giá khởi điểm 871 USD', 'hp-envy-4-ban-tai-trung-quoc-voi-gia-khoi-diem-871-usd', 'Giá này áp dụng cho phiên bản thấp nhất dùng chip Intel Core i3 trong khi model cao cấp nhất với vi xử lý Core i5 được bán với giá lên tới 999 USD.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"Mẫu HP Envy 4 cao cấp nhất có giá tương đương 999 USD. Ảnh: Laptopreviews.\" border=\"1\" height=\"232\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6B/Envy.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				Mẫu HP Envy 4 cao cấp nhất c&oacute; gi&aacute; tương đương 999 USD. Ảnh: <em>Laptopreviews.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Trang web của HP tại Trung Quốc vừa cho ph&eacute;p đặt mua mẫu ultrabook Envy 4 d&ugrave;ng vi xử l&yacute; Ivy Bridge. C&aacute;c model xuất hiện tr&ecirc;n website của h&atilde;ng n&agrave;y bao gồm Envy 4-1021tx, 1020tx, 1019tx, 1006tx, 1005tx v&agrave; 1004tx.Gi&aacute; b&aacute;n khởi điểm của HP Envy 4 l&agrave; 5.499 nh&acirc;n d&acirc;n tệ (tương đương 871 USD) v&agrave; cao nhất l&agrave; 6.299 nh&acirc;n d&acirc;n tệ (tương đương 999 USD)</p>\r\n<p class=\"Normal\">\r\n	Mẫu Envy 4-1021tx cao cấp nhất sử dụng vi xử l&yacute; Intel Core i5-2467M tốc độ 1,6GHz. M&aacute;y t&iacute;ch hợp đồ hoạ AMD Radeon HD 7670M. Sản phẩm được trang bị bộ nhớ RAM 4GB, ổ cứng SATA HD 500GB tốc độ 5.400 v&ograve;ng/ph&uacute;t, hỗ trợ Wi-Fi, Bluetooth, pin 4 cell hoạt đ&ocirc;ng li&ecirc;n tục trong 8 tiếng. Ngo&agrave;i ra, HP Envy 4-1021tx c&ograve;n c&oacute; hai loa ngo&agrave;i c&ocirc;ng nghệ Beats Audio, hai cổng USB 3.0, một cổng USB 2.0, HDMI, RJ45, microphone v&agrave; đầu đọc thẻ nhớ.</p>\r\n<p class=\"Normal\">\r\n	M&agrave;n h&igrave;nh 14 inch của Envy 4-1021tx c&oacute; độ ph&acirc;n giải 1.366 x 768 v&agrave; được bọc gương s&aacute;ng b&oacute;ng. K&iacute;ch thước của Envy 4-1021tx l&agrave; 34 x 23.58 x 1.98 cm. Model n&agrave;y nặng 1,75 kg.</p>\r\n', 0, 'data/images/news/envy.jpg', 'data/news/envy.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943314, 1341001075, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (62, 7, 'laptop', 'Ảnh thực tế Samsung Series 7 Chronos', 'anh-thuc-te-samsung-series-7-chronos', 'Cấu hình model 15 inch của Samsung Series 7 Chronos dùng chip Ivy Bridge vừa được đưa lên website chính thức của Samsung Canada.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%2811%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				Samsung Series 7 Chronos từng được trưng b&agrave;y tại sự kiện CES 2012.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Mặc d&ugrave; chưa c&oacute; ảnh ch&iacute;nh thức cho mẫu 15 inch n&agrave;y nhưng trang <em>Engadget</em> trước đ&oacute; từng đăng tải ảnh thực tế của Series 7 Chronos 17 inch.</p>\r\n<p class=\"Normal\">\r\n	Samsung Series 7 Chronos 15 inch được trang bị m&agrave;n h&igrave;nh LED độ ph&acirc;n giải 1.600 x 900 pixel c&oacute; khả năng chống ch&oacute;i. M&aacute;y d&ugrave;ng vi xử l&yacute; Core i7-3615QM l&otilde;i tứ c&ugrave;ng với card đồ hoạ rời Nvidia GeForce GT640M. Bộ nhớ RAM của Series 7 Chronos l&agrave; 8GB. Model n&agrave;y sử dụng ổ cứng 1TB tốc độ 5.400 v&ograve;ng/ph&uacute;t.</p>\r\n<p class=\"Normal\">\r\n	<strong>Xem th&ecirc;m ảnh thực tế Samsung Series 7 Chronos 17 inch ở dưới đ&acirc;y.</strong></p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				C&aacute;c cổng kết nối của Series 7 Chronos.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%281%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Sản phẩm d&ugrave;ng loa JBL.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%282%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"BreakLine\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%283%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				B&agrave;n r&ecirc; chuột hơi lệch sang b&ecirc;n tr&aacute;i.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%284%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Ph&iacute;m nguồn của m&aacute;y được đặt ở g&oacute;c phải.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%285%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, 'data/images/news/series711.jpg', 'data/news/series711.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335943366, 1335955359, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (63, 20, 'thong-tin-can-biet', 'Asus bán laptop K53TK chip Fusion lõi tứ tại Nhật', 'asus-ban-laptop-k53tk-chip-fusion-loi-tu-tai-nhat', 'Sản phẩm sử dụng APU A8-3520 của AMD có CPU tốc độ 1,6GHz, đồ hoạ Radeon HD 6620G tích và có thêm card đồ hoạ rời Radeon HD 7670M.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"Sản phẩm mới của Asus được trang bị đồ hoạ Radeon HD 6620G tích hợp cùng với card rời Radeon HD 7670M. Ảnh: Notebookcheck.\" border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/88/asus.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				Sản phẩm mới của Asus được trang bị đồ hoạ Radeon HD 6620G t&iacute;ch hợp c&ugrave;ng với card rời Radeon HD 7670M. Ảnh<em>: Notebookcheck.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Theo <em>Notebookcheck</em>, Asus bắt đầu b&aacute;n mẫu laptop K53TK-SX0A8 từ h&ocirc;m nay. Sản phẩm sử dụng vi xử l&yacute; AMD A8-3520M l&otilde;i tứ tốc độ 1,6GHz v&agrave; c&oacute; gi&aacute; b&aacute;n khởi điểm khoảng 79.800 y&ecirc;n (khoảng 980 USD).</p>\r\n<p class=\"Normal\">\r\n	Asus K53TK sử dụng đồ hoạ t&iacute;ch hợp Radeon HD 6620G lẫn card rời Radeon HD 7670M. M&aacute;y c&oacute; m&agrave;n h&igrave;nh LED 15,6 inch độ ph&acirc;n giải 1.366 x 768 pixel. Model n&agrave;y được trang bị RAM 8GB, ổ cứng 750GB tốc độ 5.400 v&ograve;ng/ph&uacute;t c&oacute; thể mở rộng l&ecirc;n tới 1GB, ổ ghi DVD c&ugrave;ng với loa ngo&agrave;i Altec Lansing. Ngo&agrave;i ra, Asus K53TK c&ograve;n t&iacute;ch hợp hai cổng USB 2.0, hai cổng USB 3.0, c&aacute;c kết nối D-SUB, HDMI, FireWire, đầu đọc thẻ v&agrave; webcam 1,3 Megapixel.</p>\r\n<p class=\"Normal\">\r\n	Sản phẩm của Asus c&oacute; c&acirc;n nặng 2,7kg v&agrave; c&oacute; pin đi k&egrave;m hoạt động được li&ecirc;n tiếp trong 4 tiếng. M&aacute;y chạy hệ điều h&agrave;nh Windows 7 Home Premium.</p>\r\n', 1, 'data/images/news/asus.jpg', 'data/news/asus.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943409, 1341001061, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (64, 20, 'thong-tin-can-biet', 'MSI bắt đầu bán laptop chơi game GT70 tại Mỹ', 'msi-bat-dau-ban-laptop-choi-game-gt70-tai-my', 'Sản phẩm này sử dụng vi xử lý nền tảng Ivy Bridge mới nhất và có giá dao động từ 1.500 đến 2.500 USD.', '<p class=\"Normal\">\r\n	Nh&agrave; sản xuất MSI bắt đầu b&aacute;n mẫu laptop chơi game GT70 tại Mỹ với mức gi&aacute; dao động từ 1.500 đến 2.500 USD. Sản phẩm n&agrave;y được trang bị vi xử l&yacute; nền tảng Ivy Bridge mới nhất của Intel.</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"GT70 có giá dao động từ 1.500-2.500 USD tại Mỹ. Ảnh:Slashgear.\" border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/9D/msi.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				GT70 c&oacute; gi&aacute; dao động từ 1.500-2.500 USD tại Mỹ. Ảnh: <em>Slashgear.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	MSI GT70 sử dụng vi xử l&yacute; Intel Core i7 v&agrave; card đồ hoạ Nvidia GeForce GTX670M. M&aacute;y c&oacute; m&agrave;n h&igrave;nh chống ch&oacute;i 17,3 inch độ ph&acirc;n giải 1.920 x 1.080 pixel c&ugrave;ng với b&agrave;n ph&iacute;m đ&egrave;n nền LED nhiều m&agrave;u do SteelSeries sản xuất. Ngo&agrave;i ra, sản phẩm n&agrave;y c&ograve;n được trang bị RAM 12GB, ổ SSD 128GB v&agrave; HDD 500GB. Người d&ugrave;ng c&oacute; thể lựa chọn n&acirc;ng cấp dung lượng ổ HDD l&ecirc;n tới 750GB.</p>\r\n<p class=\"Normal\">\r\n	Laptop chơi game mới của MSI c&oacute; ba cổng USB 3.0, kết nối HDMI 1.4, giắc cắm tai nghe. M&aacute;y hỗ trợ Wi-Fi, Bluetooth, đầu đọc thẻ nhớ 7 trong 1. Webcam đi k&egrave;m MSI GT70 c&oacute; độ ph&acirc;n giải 720p. M&aacute;y sử dụng c&ocirc;ng nghệ &acirc;m thanh THX TruStudio. K&iacute;ch thước của MSI GT70 l&agrave; 42,7 x 28,8 x 5,51 cm. Model n&agrave;y nặng khoảng 3,9kg.</p>\r\n<p class=\"Normal\">\r\n	Theo <em>Notebookcheck</em>, mẫu GT60 15,6 inch của MSI cũng sẽ c&oacute; bản d&ugrave;ng chip Ivy Bridge trong thời gian tới.</p>\r\n', 0, '1341233715.jpg', 'data/news/msi.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943466, 1341233717, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (65, 4, 'nhung-cau-hoi-can-gap', 'Tai sao website cu bi loi hoai ', 'tai-sao-website-cu-bi-loi-hoai', 'sdasd', '<p>\r\n	sdas</p>\r\n', 0, '1341002299.png', 'data/news/nss1340332529.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 1, 1340989639, 1341002301, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (66, 0, NULL, 'test', 'test', '', '<p>\r\n	no dung&nbsp;</p>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 1, 1340989928, 1391801108, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (76, 20, 'thong-tin-can-biet', 'sadsadsad', 'sadsadsad', 'asdasdassadas', '<p>\r\n	sdasdas</p>\r\n', 0, '1341233865.png', NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341233869, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (67, 0, '', 'Thanh toán', 'thanh-toan', '', '<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể thanh to&aacute;n chuyển khoản qua c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</strong></p>\r\n<table border=\"1\" cellpadding=\"5\" cellspacing=\"5\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"\" src=\"/website_project/data/images/donga.jpg\" style=\"width: 150px; height: 80px; \" /></td>\r\n			<td valign=\"top\">\r\n				<h3>\r\n					<cufon alt=\"Ngân \" class=\"cufon cufon-canvas\" style=\"width: 34px; height: 13px; \"><cufontext><cufon alt=\"Ngân \" class=\"cufon cufon-canvas\" style=\"width: 4px; height: 1px; \">- Ng&acirc;n h&agrave;ng Đ&ocirc;ng &Aacute;</cufon></cufontext></cufon></h3>\r\n				<p>\r\n					- Chủ t&agrave;i khoản: <strong>Nguyễn Thanh phong</strong><br />\r\n					- Số t&agrave;i khoản: &nbsp;&nbsp;<strong>0041001092630</strong><br />\r\n					- Chi nh&aacute;nh: &nbsp; &nbsp; &nbsp; T&acirc;n B&igrave;nh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"\" src=\"/website_project/data/images/sac.jpg\" style=\"width: 150px; height: 40px; \" /></td>\r\n			<td valign=\"top\">\r\n				<h3>\r\n					- Ng&acirc;n h&agrave;ng Sacombank</h3>\r\n				<h3>\r\n					- Chủ t&agrave;i khoản:&nbsp;Nguyễn Thị Hồng Duy&ecirc;n</h3>\r\n				<p>\r\n					- Số t&agrave;i khoản: <strong>0101876155</strong><br />\r\n					- Chi nh&aacute;nh: T&acirc;n B&igrave;nh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"\" src=\"/website_project/data/images/exim.jpg\" style=\"width: 150px; height: 104px; \" /></td>\r\n			<td valign=\"top\">\r\n				<h3>\r\n					<cufon alt=\"Ngân \" class=\"cufon cufon-canvas\" style=\"width: 34px; height: 13px; \"><cufontext><cufon alt=\"Ngân \" class=\"cufon cufon-canvas\" style=\"width: 4px; height: 1px; \">- Ng&acirc;n h&agrave;ng Xuất Nhập Khẩu EXIMBANK</cufon></cufontext></cufon></h3>\r\n				<p>\r\n					- Chủ t&agrave;i khoản: <b>Nguyễn Thanh Phong</b><br />\r\n					- Số t&agrave;i khoản:<br />\r\n					- Chi nh&aacute;nh: Cộng H&ograve;a</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341002393, 1341042788, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (69, 0, '', 'Tên miền Việt nam', 'ten-mien-viet-nam', '', '<p>\r\n	T&ecirc;n miền Việt namT&ecirc;n miền Việt namT&ecirc;n miền Việt namT&ecirc;n miền Việt namT&ecirc;n miền Việt nam</p>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 0, 1341006155, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (70, 0, '', 'Webhosting', 'webhosting', '', '<p style=\"text-align: justify; \">\r\n	Hosting l&agrave; nơi lưu trữ tất cả c&aacute;c trang Web, c&aacute;c th&ocirc;ng tin, email, dữ liệu, h&igrave;nh ảnh tr&ecirc;n một m&aacute;y chủ Internet, Web Hosting đồng thời cũng l&agrave; nơi diễn ra tất cả c&aacute;c hoạt động giao dịch, trao đổi th&ocirc;ng tin giữa website với người sử dụng Internet v&agrave; hỗ trợ c&aacute;c phần mềm Internet hoạt động.</p>\r\n<div>\r\n	&nbsp;</div>\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"22\">\r\n				<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"22\">\r\n								<img alt=\"ten mien hosting\" height=\"22\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_linux.jpg\" title=\"ten mien hosting\" width=\"22\" /></td>\r\n							<td>\r\n								<p>\r\n									<strong>LINUX HOSTING</strong></p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<table border=\"1\" cellpadding=\"5\" cellspacing=\"1\" style=\"border-color: rgb(0, 153, 255); border-collapse: collapse;\" width=\"100%\">\r\n					<tbody>\r\n						<tr bgcolor=\"#ffffff\" style=\"color: rgb(255, 255, 255);\">\r\n							<td bgcolor=\"#0099ff\" width=\"15%\">\r\n								<strong>Th&ocirc;ng Tin</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"13%\">\r\n								<strong>C&aacute; Nh&acirc;n</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"20%\">\r\n								<strong>B&aacute;n Chuy&ecirc;n Nghiệp</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"16%\">\r\n								<strong>B&aacute;n Chuy&ecirc;n Nghiệp ++</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"13%\">\r\n								<strong>Chuy&ecirc;n Nghiệp</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"14%\">\r\n								<strong>Doanh Nghiệp</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"14%\">\r\n								<strong>TM Điện Tử</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Server đặt tại</strong></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" title=\"ten mien hosting\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" title=\"ten mien hosting\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" title=\"ten mien hosting\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" title=\"ten mien hosting\" width=\"24\" /></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Dung lượng</strong></td>\r\n							<td>\r\n								30 mb<br />\r\n								200 MB</td>\r\n							<td>\r\n								150 mb<br />\r\n								700 MB</td>\r\n							<td>\r\n								1000 MB</td>\r\n							<td>\r\n								400 mb<br />\r\n								1500 MB</td>\r\n							<td>\r\n								1000 mb<br />\r\n								3000 MB</td>\r\n							<td>\r\n								2000 mb<br />\r\n								5000 MB</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Băng th&ocirc;ng</strong></td>\r\n							<td>\r\n								300 mb<br />\r\n								1000 MB</td>\r\n							<td>\r\n								1500 mb<br />\r\n								5000 MB</td>\r\n							<td>\r\n								7000 MB</td>\r\n							<td>\r\n								3000 mb<br />\r\n								10.000 MB</td>\r\n							<td>\r\n								5000 mb<br />\r\n								30.000 MB</td>\r\n							<td>\r\n								7500 mb<br />\r\n								50.000 MB</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Email POP3/webmail</strong></td>\r\n							<td>\r\n								10</td>\r\n							<td>\r\n								50</td>\r\n							<td>\r\n								70</td>\r\n							<td>\r\n								100</td>\r\n							<td>\r\n								150</td>\r\n							<td>\r\n								500</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Subdomain</strong></td>\r\n							<td>\r\n								0</td>\r\n							<td>\r\n								3</td>\r\n							<td>\r\n								5</td>\r\n							<td>\r\n								10</td>\r\n							<td>\r\n								20</td>\r\n							<td>\r\n								30</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>PHP5 , GD2 </strong></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>mySQL5</strong></td>\r\n							<td>\r\n								1</td>\r\n							<td>\r\n								3</td>\r\n							<td>\r\n								5</td>\r\n							<td>\r\n								7</td>\r\n							<td>\r\n								9</td>\r\n							<td>\r\n								15</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Chi ph&iacute;</strong></td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$3-5 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$5-7 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$8-10 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$10-12 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$12-15/Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$22-30 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Thanh to&aacute;n </strong></td>\r\n							<td>\r\n								1 Năm</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				<p align=\"left\">\r\n					&nbsp;</p>\r\n				<p align=\"left\">\r\n					<strong><em>Lưu &Yacute; :</em></strong><br />\r\n					<em>- Đề xuất&nbsp; sử dụng&nbsp; g&oacute;i Hosting TMDT chuy&ecirc;n nghiệp (30 USD/Th&aacute;ng).</em><br />\r\n					<em>Lưu &yacute;: Chi ph&iacute; tr&ecirc;n đ&atilde; bao gồm ph&iacute; backup dữ liệu sao lưu tr&ecirc;n ổ cứng hỗ trợ bảo mật. Kh&ocirc;ng bao gồm ph&iacute; quản trị bảo mật website.</em><br />\r\n					<em>- Nếu sử dụng g&oacute;i hosting m&agrave; server c&oacute; cấu h&igrave;nh thấp hơn, giảm &nbsp;30%. Hoặc kh&ocirc;ng backup dữ liệu sao lưu cũng giảm 30%.</em><br />\r\n					+ Nếu sử dụng dịch vụ Bảo mật, quản trị site tr&ecirc;n server: chống DDos l&agrave;m nghẽn hệ thống cục bộ ,Backup dữ liệu mỗi ng&agrave;y ,chống x&acirc;m nhập hệ thống để đ&aacute;nh cắp dữ liệu ,chi ph&iacute; l&agrave; 90 usd/th&aacute;ng Với web c&oacute; lượng truy cập dưới 30.000 lượt/ th&aacute;ng</p>\r\n				<p align=\"left\">\r\n					<strong>Cấu h&igrave;nh server :</strong></p>\r\n				<table border=\"1\" cellpadding=\"5\" cellspacing=\"1\" style=\"border-color: rgb(0, 153, 255); border-collapse: collapse;\" width=\"100%\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"560\">\r\n								Intel Server Platform SR1530SH</td>\r\n						</tr>\r\n						<tr>\r\n							<td nowrap=\"nowrap\" width=\"560\">\r\n								<p>\r\n									Quad - Core Intel Xeon Processor X3220 (2.4Ghz, FSB 1066, Cache 8MB)</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td nowrap=\"nowrap\" width=\"560\">\r\n								<p>\r\n									&nbsp;2 X 250GB HDD(7200RPM) SATA2 3.5&quot;</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"560\">\r\n								<p>\r\n									Ram 2GB 667MHz DDR2 Intel Validated</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				<p align=\"left\">\r\n					<strong>+ Hệ điều h&agrave;nh &amp; phần mềm c&agrave;i đặt :</strong></p>\r\n				<p>\r\n					<strong>- Hệ điều h&agrave;nh</strong> : sử dụng hệ điều h&agrave;nh tr&ecirc;n CentOS ,hỗ trợ PHP version 5.1&hellip; CentOS l&agrave; HĐH lấy core của RedHat, c&oacute; t&iacute;nh năng support giống với những phi&ecirc;n bản thương mại của RedHat, c&oacute; độ ổn định cao.<br />\r\n					<strong>- WebServer</strong>: Sử dụng Apache 2.0.<br />\r\n					<strong>- Database Server</strong>: Sử dụng MySql.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 0, 1341036616, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (71, 24, 'tu-van-thiet-ke', ' Tại sao mọi trang web đều phải phân tích tính tiện lợi', 'tai-sao-moi-trang-web-deu-phai-phan-tich-tinh-tien-loi', 'Về mặt kĩ thuật có hàng nghìn website trên internet, những website cung cấp dịch vụ và sản phẩm. Tôi chắc chắn rằng nếu bạn đọc bài báo này bạn là một trong số họ.\r\nBạn có thể đang tự đòi hỏi bản thân làm thế nào để mình có thể thu hút nhiều khách đến với website của mình hơn và tiếp đó là làm thế nào để họ mua hàng mình bán? Có rất nhiều người khuyên bạn nên tăng cường quảng bá website của bạn trên các công cụ tìm kiếm, có người lại cho rằng phương pháp quảng cáo trả tiền là câu trả lời cho vấn', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Chắc chắn bạn c&oacute; thể thu h&uacute;t được nhiều người đến với website của bạn, tuy nhi&ecirc;n khi họ đ&atilde; đến được đ&oacute;, họ ho&agrave;n to&agrave;n c&oacute; thể bỏ đi một c&aacute;ch dễ d&agrave;ng, phải t&igrave;m hiểu họ cần c&aacute;i g&igrave;, v&agrave; tạo ra một vụ mua b&aacute;n m&agrave; kh&ocirc;ng mất nhiều c&ocirc;ng sức. Đ&acirc;y l&agrave; ch&igrave;a kh&oacute;a để thu h&uacute;t v&agrave; giữ ch&acirc;n kh&aacute;ch h&agrave;ng online.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	C&oacute; một bản ph&acirc;n t&iacute;ch t&iacute;nh khả dụng c&oacute; thể cung cấp một c&aacute;i nh&igrave;n tiến bộ về c&aacute;ch c&aacute;c vị kh&aacute;ch đến với website của bạn đ&aacute;nh gi&aacute; về c&aacute;c trang của website v&agrave; từ đ&oacute; bạn c&oacute; thể biết được cần thay đổi những g&igrave; theo thứ tự quan trọng.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Một bản ph&acirc;n t&iacute;ch t&iacute;nh tiện lợi thường phải c&oacute; 4 chủ đề ch&iacute;nh sau:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	1. Chuyển hướng</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Kết cấu chuyển hướng của website của bạn l&agrave; một trong những yếu tố quan trọng của website. Khả năng chuyển hướng của bạn sẽ gi&uacute;p kh&aacute;ch đến thăm website di chuyển trong phạm vi website của bạn để t&igrave;m hiểu th&ecirc;m th&ocirc;ng tin về dịch vụ, sản phẩm, c&ocirc;ng ty v&agrave; ngh&agrave;nh nghề của bạn. Nếu khả năng chuyển hướng của website bạn kh&ocirc;ng thống nhất hay kh&ocirc;ng cung cấp c&aacute;c đường li&ecirc;n kết tới tất cả c&aacute;c mục ch&iacute;nh trong website của bạn, kh&aacute;ch h&agrave;ng c&oacute; thể cảm thấy kh&oacute; chịu v&agrave; rời bỏ đi. Cần phải c&oacute; c&aacute;c đường li&ecirc;n kết quốc tế ở ch&acirc;n mỗi trang web. Điều n&agrave;y hỗ trợ cho việc di chuyển trong website của c&aacute;c bạn, th&ugrave; họ ở đầu hay ch&acirc;n của trang.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	2. Nội dung</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Nội dung website của bạn l&agrave; một yếu tố quan trọng kh&aacute;c để đảm bảo th&agrave;nh c&ocirc;ng cho website của bạn. Cần phải cung cấp cho kh&aacute;ch viếng thăm c&agrave;ng nhiều th&ocirc;ng tin về sản phẩm, dịch vụ, v&agrave; ng&agrave;nh nghề của bạn c&agrave;ng tốt. Lu&ocirc;n lu&ocirc;n khi nhớ, một kh&aacute;ch h&agrave;ng được cung cấp đầy đủ th&ocirc;ng tin ch&iacute;nh l&agrave; kh&aacute;ch h&agrave;ng tiềm năng nhất.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	3. T&iacute;nh thực dụng</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Mức độ phức tạp của website của bạn thường quyết định việc kh&aacute;ch website của bạn c&oacute; ở lại, t&igrave;m hiểu hay cảm thấy kh&oacute; rắc rối v&agrave; bỏ đi. Nếu bản c&oacute; những bộ phận kh&ocirc;ng hoạt động hoặc những trang kh&ocirc;ng tải được, bạn c&oacute; thể đ&aacute;nh mất kh&aacute;ch h&agrave;ng. Tuy nhi&ecirc;n, nếu bạn muốn gắn th&ecirc;m một bộ phận n&agrave;o đ&oacute; v&agrave;o website của bạn, th&igrave; h&atilde;y tr&aacute;nh xa những trang đại loại như &ldquo; sẽ sớm xuất hiện&rdquo;. Điều n&agrave;y sẽ chẳng gi&uacute;p &iacute;ch g&igrave; cho kh&aacute;ch viếng thăm website của bạn ngo&agrave;i việc l&agrave;m cho họ cảm thấy muốn bỏ đi v&agrave; kh&ocirc;ng bao giờ trở lại.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	4. An ninh</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Khi b&aacute;n một sản phẩm hay thu thập th&ocirc;ng tin về kh&aacute;ch đến website, điều quan trọng tối yếu l&agrave; website của bạn phải an to&agrave;n. Hacker c&oacute; mặt ở khắp mọi nơi v&agrave; quan s&aacute;t mọi thứ. Kh&ocirc;ng cung cấp một m&ocirc;i trường an to&agrave;n cho kh&aacute;ch thăm website của bạn c&oacute; thể l&agrave; đ&ograve;n ch&iacute; tử cho website của bạn v&agrave; c&ocirc;ng ty của bạn.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	C&aacute;c b&aacute;o c&aacute;o ph&acirc;n t&iacute;ch t&iacute;nh tiện lợi của website kh&ocirc;ng hề đắt đỏ v&agrave; c&oacute; thể tiếp kiệm cho c&ocirc;ng ty v&agrave; website của bạn được rất nhiều tiền v&agrave; rắc rối. Một khi bạn biết được căn bệnh đe dọa website của bạn, bạn c&oacute; thể từng bước chữa trị ch&uacute;ng. H&atilde;y nhớ, sự hiểu biết đ&atilde; gi&uacute;p bạn chiến thắng được ph&acirc;n nửa.</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341045422, 1341045468, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (72, 24, 'tu-van-thiet-ke', 'Làm thế nào để chọn được một nhà thiết kế, phát triển web tốt', 'lam-the-nao-de-chon-duoc-mot-nha-thiet-ke-phat-trien-web-tot', 'Những thiết kế web tốt là rất chủ quan, thậm chí những trang web được xem là tuyệt vời bởi một người lại bị người khác cho là dở tệ.', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Trước khi bắt đầu nghi&ecirc;n cứu, điều đầu ti&ecirc;n cần thiết lập đ&oacute; l&agrave; ng&acirc;n s&aacute;ch của bạn l&agrave; bao nhi&ecirc;u. Điều n&agrave;y quyết định liệu bạn c&oacute; n&ecirc;n t&igrave;m đến hẳn một c&ocirc;ng ty thiết kế hay chỉ nhờ đến một người thiết kế tự do.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Vậy bạn t&igrave;m kiếm điều g&igrave;? Bạn c&oacute; t&igrave;m kiếm một người c&oacute; t&agrave;i thiết kế, c&oacute; kinh nghiệm thiết kế nhiều websites tuyệt vời, hay bạn chỉ đơn giản t&igrave;m kiếm những tư vấn từ những người n&agrave;y. Chắc chắn l&agrave; bạn cần c&oacute; một danh s&aacute;ch c&aacute;c nh&agrave; thiết kế web ưu ti&ecirc;n, bạn sẽ kh&ocirc;ng li&ecirc;n lạc với ai m&agrave; bạn chẳng hững th&uacute; với những s&aacute;ng tạo trước đ&acirc;y của họ. Khi nh&igrave;n v&agrave;o những trang web của họ, kh&ocirc;ng nh&igrave;n v&agrave;o những c&aacute;i giống nhau, kiểm tra nhan ch&oacute;ng liệu những trang web n&agrave;y load c&oacute; nhanh kh&ocirc;ng v&agrave; hơn hết phải kiểm trang xem trang web n&agrave;y c&oacute; dễ chuyển hướng v&agrave; xem liệu bạn c&oacute; bị lạc tr&ecirc;n trang web n&agrave;y kh&ocirc;ng.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Khi bạn tiếp cận một nh&agrave; thiết kế, ch&uacute;ng t&ocirc;i gợi &yacute; bạn l&ecirc;n hỏi những c&acirc;u hỏi sau:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	1) &nbsp; &nbsp; &nbsp;Nếu cần đến một logo, h&atilde;y hỏi xem họ đ&oacute;ng nh&atilde;n như thế n&agrave;o, họ x&acirc;y dựng trang web hiện tại của bạn như thế n&agrave;o.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	2) &nbsp; &nbsp; &nbsp;Hỏi họ xem họ tạo ra bao nhi&ecirc;u kh&aacute;i niệm thiết kế.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	3) &nbsp; &nbsp; &nbsp;Khi m&atilde; h&oacute;a c&aacute;c trang web, kiểm tra xem họ c&oacute; sử dụng ứng dụng kiểm tra chất lượng W3C để kiểm tra chất lượng c&aacute;c trang web kh&ocirc;ng? Điều n&agrave;y đảm bảo c&aacute;c trang web kh&ocirc;ng bị lỗi v&agrave; bất cứ ứng dụng m&atilde; h&oacute;a n&agrave;o cũng tự động đảm bảo điều n&agrave;y. Một c&aacute;ch kiểm tra hiệu quả l&agrave; kiểm tra xem danh s&aacute;ch kh&aacute;ch h&agrave;ng gần đ&acirc;y của họ v&agrave; kiểm tra những trang web n&agrave;y c&oacute; sử dụng ứng dụng kiểm tra chất lượng W3X hay kh&ocirc;ng http://validator.w3.org)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	4) &nbsp; &nbsp; &nbsp;Bạn cần quyết định nh&oacute;m kh&aacute;n giả bạn định hướng tới v&agrave; những tr&igrave;nh duyệt bạn muốn được hỗ trợ. Nếu bạn muốn một trang web c&oacute; thể l&agrave;m việc hiệu quả tr&ecirc;n 4 tr&igrave;nh duyệt kh&aacute;c nhau v&agrave; tr&ecirc;n PC v&agrave; Mac th&igrave; chắc chắn n&oacute; sẽ ti&ecirc;u tốn nhiều hơn một trang web chỉ sử dụng tr&igrave;nh duyệt Internet Explorer 5 v&agrave; tr&ecirc;n PC. Khi bạn đ&atilde; quyết đinh được tr&igrave;nh duyệt v&agrave; c&aacute;c hệ thống vận h&agrave;ng, bạn cũng phải kiểm tra xem nh&agrave; thiết kế c&oacute; từng tiếp cận tất cả c&aacute;c tr&igrave;nh duyệt tương ứng v&agrave; nền bạn y&ecirc;u cầu kh&ocirc;ng (i.e. liệu họ c&oacute; Macintosh nếu bạn y&ecirc;u cầu kh&ocirc;ng)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	5) &nbsp; &nbsp; &nbsp;Nếu trang web của bạn cần thương mại điện tử (e-commerce) h&atilde;y hỏi nh&agrave; thiết kế xem liệu họ c&oacute; kinh nghiệm trong lĩnh vực n&agrave;y hay kh&ocirc;ng v&agrave; bảo họ cho bạn xem những v&iacute; dụ.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	6) &nbsp; &nbsp; &nbsp;Bạn c&oacute; y&ecirc;u cầu hệ thống quản l&iacute; nội dung (CMS)? Hệ thống quản l&iacute; nội dung sẽ gi&uacute;p bạn quản l&iacute; văn bản tr&ecirc;n những trang web của bạn m&agrave; kh&ocirc;ng cần phải sử dụng ứng dụng HTML. Rất nhiều nh&agrave; thiết kế web ch&agrave;o h&agrave;ng dịch vụ n&agrave;y v&igrave; thế nếu bạn y&ecirc;u cầu hệ thống quản l&iacute; nội dung, h&atilde;y nhờ họ tư vấn, v&iacute; dụ như ứng dụng CMS m&agrave; họ đ&atilde; từng sử dụng trước đ&oacute; sẽ tiết kiệm hơn rất nhiều so với việc sử dụng ứng dụng m&agrave; họ chưa từng sử dụng.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	7) &nbsp; &nbsp; &nbsp;Nếu bạn muốn nh&agrave; thiết kế của bạn tiếp thị trang web của bạn tr&ecirc;n c&ocirc;ng cụ t&igrave;m kiếm, vậy th&igrave; những kinh nghiệm tr&ecirc;n lĩnh vực n&agrave;y ho&agrave;n to&agrave;n c&oacute; thể nh&igrave;n thấy bằng mắt thường. Rất nhiều c&ocirc;ng ty ch&agrave;o h&agrave;ng những c&ocirc;ng cụ đảm bảo trang web của bạn sẽ xuất hiện tr&ecirc;n 1000 c&ocirc;ng cụ t&igrave;m kiếm, nhưng hầu hết mọi người đều thừa nhận rằng những c&ocirc;ng cụ n&agrave;y chẳng hề hiệu quả bằng những linh m&agrave; họ đăng k&iacute; thủ c&ocirc;ng. H&atilde;y t&igrave;m hiểu xem họ đ&atilde;ng từng tiếp thị những dự &aacute;n n&agrave;o tr&ecirc;n c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm, h&atilde;y tới Google v&agrave; nếu bạn đ&atilde; được lắp đặt thanh c&ocirc;ng cụ Google, h&atilde;y t&igrave;m hiểu xem trang web của bạn xếp thứ mấy trong Page Rank ( một trang web x&eacute;p thứ 4 từ dưới l&ecirc;n được xem l&agrave; c&oacute; thể chấp nhận được, bất cứ trang web n&agrave;o xếp thứ 3 hoặc &iacute;t hơn từ dưới l&ecirc;n đều c&oacute; thể tối ưu h&oacute;a hơn nữa v&agrave; tr&igrave;nh web nhiều hơn nữa). Cần phải lu&ocirc;n ghi nhớ trong đầu rằng phải d&agrave;nh thời gian để ghi t&ecirc;n v&agrave;o những c&ocirc;ng cụ t&igrave;m kiếm, v&agrave; thậm ch&iacute; cũng cần phải cập nhật v&iacute; tr&iacute; tr&ecirc;n danh s&aacute;ch Google Page Rank (Qu&aacute; tr&igrave;nh c&oacute; thể n&agrave;y mất tr&ecirc;n 3 th&aacute;ng)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	8) &nbsp; &nbsp; &nbsp;T&igrave;m hiểu xem liệu bạn c&oacute; cần truy t&igrave;m nguồn gốc của những tấm th&ocirc;ng b&aacute;o (banner) hay những dạng quảng c&aacute;o trực tuyến kh&ocirc;ng, nếu bạn cần t&igrave;m được xuất xứ của ch&uacute;ng, bạn cần chắc chắn rằng họ c&oacute; kinh nghiệm trong lĩnh vực n&agrave;y hoặc t&igrave;m ri&ecirc;ng một c&ocirc;ng ty đảm tr&aacute;ch c&ocirc;ng việc n&agrave;y.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	V&igrave; thế bạn đ&atilde; bắt đầu nghi&ecirc;n cứu t&igrave;m kiếm một nh&agrave; thiết kế chưa? Những t&igrave;m kiếm tr&ecirc;n Google, c&ocirc;ng cụ t&igrave;m kiếm Kelly (http://www.kellysearch.com) v&agrave; UKWDA (http://www.ukwda.org) l&agrave; tất cả những nơi tốt để bạn t&igrave;m kiếm nhưng để tốt hơn nữa h&atilde;y t&igrave;m một trang web bạn th&iacute;ch vẻ bề ngo&agrave;i của n&oacute; nhất, rồi y&ecirc;u cầu nh&agrave; thiết kế l&agrave;m trang web của bạn tương tự như thế.</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341045506, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (73, 24, 'tu-van-thiet-ke', 'Website là gì? Những gì tạo nên một website?', 'website-la-gi-nhung-gi-tao-nen-mot-website', 'Website là gì?\r\nWebsite là một “live-profile” trên mạng Internet, đây là nơi giới thiệu những thông tin, hình ảnh về doanh nghiệp và sản phẩm, dịch vụ của doanh nghiệp (hay giới thiệu bất cứ thông tin gì) để khách hàng có thể truy cập ở bất kỳ nơi đâu, bất cứ lúc nào.', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Website l&agrave; tập hợp nhiều trang [web page]. Khi doanh nghiệp x&acirc;y dựng website nghĩa l&agrave; đang x&acirc;y dựng nhiều trang th&ocirc;ng tin, catalog sản phẩm, dịch vụ....</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Để tạo n&ecirc;n một website cần phải c&oacute; 3 yếu tố cơ bản:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Cấn phải c&oacute; t&ecirc;n miền (domain).</div>\r\n<div>\r\n	Nợi lưu trữ website (hosting).</div>\r\n<div>\r\n	Nội dung c&aacute;c trang th&ocirc;ng tin [web page].( Đ&acirc;y l&agrave; c&ocirc;ng việc của c&ocirc;ng ty &nbsp;Thiết kế web</div>\r\n<div>\r\n	Một số thuật ngữ cơ bản.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	T&ecirc;n miền (domain): T&ecirc;n miền ch&iacute;nh l&agrave; địa chỉ website, tr&ecirc;n internet chỉ tồn tại duy nhất một địa chỉ (tức l&agrave; tồn tại duy nhất một t&ecirc;n miền). C&oacute; 2 loại t&ecirc;n miền: T&ecirc;n miền Quốc tế: l&agrave; t&ecirc;n miền c&oacute; dạng .com; .net; .org; .biz; ... V&iacute; dụ: www.360vnit.com, www.tnduoc.com &nbsp;T&ecirc;n miền Việt Nam: l&agrave; t&ecirc;n miền c&oacute; dạng .vn; .com.vn; .net.vn; org.vn; .gov.vn;... v&iacute; dụ: www.360vnit.com.vn, www.360vnit.vn Lưu trữ website: Dữ liệu th&ocirc;ng tin của website phải được lưu trữ tr&ecirc;n một m&aacute;y t&iacute;nh (m&aacute;y chủ - server) lu&ocirc;n hoạt động v&agrave; kết nối với mạng Internet. Một server c&oacute; thể lưu trữ nhiều website, nếu server n&agrave;y bị sự cố chẳng hạn tắt trong một thời điểm n&agrave;o đ&oacute; th&igrave; kh&ocirc;ng ai c&oacute; thể truy cập được những website lưu trữ tr&ecirc;n server tại thời điểm bị sự cố.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	T&ugrave;y theo nhu cầu lưu trữ th&ocirc;ng tin m&agrave; doanh nghiệp c&oacute; thể thu&ecirc; dung lượng th&iacute;ch hợp cho website [thu&ecirc; dung lượng host].</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Dung lượng host: L&agrave; nơi để lưu cơ sở trữ dữ liệu của website (h&igrave;nh ảnh, th&ocirc;ng tin &hellip;), đơn vị đo dung lượng thường l&agrave; Mb hoặc Gb.Băng th&ocirc;ng hay dung lượng đường truyền truyền: L&agrave; tổng số Mb dữ liệu tải l&ecirc;n m&aacute;y chủ hoặc tải về từ m&aacute;y chủ (download, upload) nơi đặt website, đơn vị đo th&ocirc;ng thường l&agrave; Mb/Th&aacute;ng.</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341046009, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (74, 24, 'tu-van-thiet-ke', 'Thiết kế website cho doanh nghiệp nên có chức năng gì?', 'thiet-ke-website-cho-doanh-nghiep-nen-co-chuc-nang-gi', 'Website doanh nghiệp thông thường là 1 website động là website có số lượng lớn thông tin được chứa trong cơ sở dữ liệu. Khi sở hữu website động các doanh nghiệp, công ty có khả năng quản trị website, thay đổi thông tin, nội dung website như ý muốn.', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Doanh nghiệp, c&ocirc;ng ty chọn website động khi c&oacute; một lượng th&ocirc;ng tin, sản phẩm lớn hoặc th&ocirc;ng tin, sản phẩm được cập nhật thay đổi thường xuy&ecirc;n. Dưới đ&acirc;y l&agrave; gợi &yacute; của ch&uacute;ng t&ocirc;i c&aacute;c chức năng cho 1 website doanh nghiệp th&ocirc;ng thường:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	1. Module sản phẩm:&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Module n&agrave;y cho ph&eacute;p doanh nghiệp chia th&agrave;nh nhiều danh mục sản phẩm c&oacute; thể tự thay đổi theo nhu cầu v&iacute; dụ như chia th&agrave;nh sản phẩm nội thất, sản phẩm mỹ nghệ, sản phẩm n&ocirc;ng sản...Tr&igrave;nh b&agrave;y th&ocirc;ng tin, h&igrave;nh ảnh gi&aacute; th&agrave;nh của sản phẩm theo dạng e-catalog. Mỗi sản phẩm sẽ c&oacute; 1 form đặt h&agrave;ng đi k&egrave;m, gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng đặt h&agrave;ng.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	2. Module dịch vụ:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Hiển thị th&ocirc;ng tin, h&igrave;nh ảnh về c&aacute;c dịch vụ của doanh nghiệp tr&ecirc;n website. Mỗi dịch vụ c&oacute; 1 form y&ecirc;u cầu dịch vụ đi k&egrave;m, cho ph&eacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng li&ecirc;n hệ khi cần thiết.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	3. Module tin tức:&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Module cho ph&eacute;p chia nhỏ th&agrave;nh nhiều loại tin kh&aacute;c nhau v&iacute; dụ tin trong nước, tin quốc tế, tin tức c&ocirc;ng nghệ, tin nội bộ...</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	4. Module FAQ (Những c&acirc;u hỏi thường gặp):</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Module n&agrave;y gi&uacute;p doanh nghiệp đăng tải c&aacute;c c&acirc;u hỏi thường gặp của kh&aacute;ch h&agrave;ng v&agrave; nội dung trả lời từ ph&iacute;a doanh nghiệp, tạo c&aacute;i nh&igrave;n chuy&ecirc;n nghiệp đối với người xem về sản phẩm - dịch vụ của m&igrave;nh. T&iacute;ch hợp chức năng gi&uacute;p kh&aacute;ch h&agrave;ng thuận tiện gửi những y&ecirc;u cầu, đề nghị, đ&oacute;ng g&oacute;p &yacute; kiến...đến doanh nghiệp.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	5. Module tuyển dụng:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Cho ph&eacute;p doanh nghiệp đăng tải c&aacute;c th&ocirc;ng tin tuyển dụng nhằm t&igrave;m kiếm c&aacute;c ứng vi&ecirc;n tiềm năng cho m&igrave;nh.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	6. Module b&igrave;nh chọn (tạo thăm d&ograve; &yacute; kiến, b&igrave;nh chọn cho sản phẩm n&agrave;o đ&oacute;):</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Doanh nghiệm c&oacute; thể đưa ra những c&acirc;u hỏi để thăm d&ograve; &yacute; kiến của kh&aacute;ch h&agrave;ng khi viếng thăm website.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	7. Module quảng c&aacute;o trực tuyến:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Cho ph&eacute;p doanh nghiệp quản l&yacute; c&aacute;c banner, logo của c&aacute;c đối t&aacute;c tr&ecirc;n website m&igrave;nh để quảng b&aacute; website hiệu quả, tạo nguồn thu từ website.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	8. Module t&igrave;m kiếm:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Bao gồm 2 chức năng t&igrave;m kiếm: T&igrave;m nhanh v&agrave; t&igrave;m n&acirc;ng cao. T&igrave;m nhanh: cho ph&eacute;p người xem t&igrave;m kiếm nhanh bất kỳ th&ocirc;ng tin n&agrave;o trong website th&ocirc;ng qua thao t&aacute;c đơn giản l&agrave; nhập từ kh&oacute;a cần t&igrave;m v&agrave; nhấn ph&iacute;m Enter để ra kết quả. T&igrave;m n&acirc;ng cao: cho ph&eacute;p người xem giới hạn khu vực t&igrave;m kiếm th&ocirc;ng tin để kết quả hiển thị ra ch&iacute;nh x&aacute;c hơn.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	9. Module thống k&ecirc; ( bộ đếm chuy&ecirc;n s&acirc;u):&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Bao gồm bộ đếm số người đ&atilde; truy cập, đang truy cập website, đếm số lần đ&atilde; được xem cho từng sản phẩm.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	10. Module li&ecirc;n hệ trực tuyến:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Cho ph&eacute;p kh&aacute;ch li&ecirc;n hệ, phản hồi, đặt h&agrave;ng với doanh nghiệp th&ocirc;ng qua hệ thống website khi c&oacute; nhu cầu.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	11. Module giới thiệu:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	L&agrave; chức năng để giới thiệu chung nhất về t&igrave;nh h&igrave;nh doanh nghiệp, lịch sử ra đời, ng&agrave;nh nghề hoạt động...gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể nắm được một số th&ocirc;ng tin về bạn.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Đ&oacute; l&agrave; c&aacute;c module cơ bản m&agrave; một website doanh nghiệp thường sử dụng. Ngo&agrave;i ra c&ograve;n t&ugrave;y thuộc v&agrave;o y&ecirc;u cầu ri&ecirc;ng v&agrave; ng&agrave;nh nghề của từng doanh nghiệp. H&atilde;y li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để bổ xung c&aacute;c t&iacute;nh năng cần thiết kh&aacute;c</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341046055, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (75, 24, 'tu-van-thiet-ke', ' Ưu và nhược của một thiết kế web với chi phí an ninh web', 'uu-va-nhuoc-cua-mot-thiet-ke-web-voi-chi-phi-an-ninh-web', 'Có lẽ bạn đang nghĩ muốn có một trang quảng cáo sản phẩm online nhưng lại thiếu tiền. Vậy phải làm gì? Nhiều người nhận ra mình phải đối diện với tình cảnh này. May mắn thay, thiết kế web giá thấp tồn tại và có thể dễ dàng có được. Cái thời mà thiết kế web giá thấp không tồn tại đã qua lâu rồi. Ngày nay, Sự cạnh tranh đã nâng lên một bậc hay cũng có thể nhiều hơn thế khiến nhiều công ty phải cung cấp những dịch vụ thiết kế web giá rẻ.', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Những c&ocirc;ng ty chọn cung cấp thiết kế web rẻ &nbsp;l&agrave; để tự l&agrave;m nổi bật m&igrave;nh. V&igrave; thế bằng những dịch vụ thiết kế web gi&aacute; rẻ, họ c&oacute; thể thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng hơn đối thủ cạnh tranh. Giờ đ&acirc;y, nếu mọi c&ocirc;ng ty nghĩ vậy, gi&aacute; cả tr&ecirc;n thị trường thiết kế web c&oacute; thể đo&aacute;n trước. Gi&aacute; cả sẽ tự động hạ thấp khi nhiều c&ocirc;ng ty sử dụng c&aacute;ch tr&ecirc;n để cạnh tranh. Việc n&agrave;y c&oacute; lợi cho những kh&aacute;ch h&agrave;ng c&oacute; t&uacute;i tiền eo hẹp. Nếu v&iacute; của bạn kh&ocirc;ng dầy, c&oacute; lẽ bạn c&oacute; thể h&agrave;i l&ograve;ng với những dịch vụ thiết kế web gi&aacute; rẻđược cung cấp v&agrave; d&ugrave; so s&aacute;nh giữa những sản phẩm với nhau v&agrave; cả khả năng của những sản phẩm nữa.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Nếu bạn muốn quảng c&aacute;o cho c&ocirc;ng việc l&agrave;m ăn mới của m&igrave;nh tr&ecirc;n mạng, thiết kế web gi&aacute; rẻ sẽ l&agrave; giải ph&aacute;p tuyệt vời. Với giải ph&aacute;p n&agrave;y, bạn c&oacute; thể thử những c&ocirc;ng việc kinh doanh c&ograve;n mới mẻ tr&ecirc;n Internet. Kh&ocirc;ng cần mất nhiều tiền, bạn cũng c&oacute; thể biết mọi người nghĩ sao về trang web của m&igrave;nh. C&agrave;ng nhiều người v&agrave;o bạn c&agrave;ng c&oacute; thể n&acirc;ng cấp website để ph&ugrave; hợp với nhu cầu của người sử dụng. Mặt kh&aacute;c, c&ocirc;ng việc kinh doanh n&agrave;y cũng c&oacute; thể thất bại tr&ecirc;n s&acirc;n n&agrave;y, v&igrave; kh&ocirc;ng thể thu h&uacute;t kh&aacute;ch tới thăm. Nếu bạn sử dụng những dịch vụ thiết kế web gi&aacute; rẻ, c&oacute; lẽ bạn kh&ocirc;ng cần lo lắng v&igrave; về phương diện tiền bạc, con số bạn bỏ ra l&agrave; kh&ocirc;ng đ&aacute;ng kể.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Hơn nữa, khi lướt web v&agrave; thấy những c&ocirc;ng ty cung cấp những dịch vụ web gi&aacute; rẻ nhưng vẫn cam kết đem lại cho bạn những lợi &iacute;ch c&ograve;n vượt cả gi&aacute; cả của n&oacute;. Trong trường hợp đ&oacute;, h&atilde;y cẩn thận. C&oacute; thể bạn đang bị lừa. Bạn n&ecirc;n tự hỏi: tại sao c&ocirc;ng ty n&agrave;y lại cho m&igrave;nh qu&aacute; nhiều lợi &iacute;ch như vậy m&agrave; với một gi&aacute; qu&aacute; rẻ như vậy? Liệu bạn c&oacute; kh&ocirc;ng nhận ra những c&aacute;i bẫy tr&ecirc;n Internet, c&oacute; thể kết cục sẽ l&agrave; bạn ch&aacute;y t&uacute;i m&agrave; cả website cũng kh&ocirc;ng c&oacute;. Thiết kế web gi&aacute; rẻ c&oacute; thể chứng minh t&aacute;c dụng của m&igrave;nh trong trường hợp khi bạn phải d&ugrave;ng th&ecirc;m tiền để x&acirc;y dựng một trang web kh&aacute;c.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Như bất cứ h&agrave;ng h&oacute;a n&agrave;o, tiền n&agrave;o của nấy. Thiết kế web gi&aacute; rẻ sẽ kh&ocirc;ng thể c&oacute; chất lượng như như những sản phẩm c&ugrave;ng loại gi&aacute; cao. Đ&acirc;y cũng c&oacute; thể coi l&agrave; một mặt hạn chế đối với thiết kế trang web gi&aacute; rẻ. Th&ocirc;ng thường, nếu kh&ocirc;ng c&oacute; đủ tiền, thiết kế trang web gi&aacute; rẻ l&agrave; một lựa chọn tốt nhất để c&oacute; một website. Nhưng bạn n&ecirc;n biết rằng nếu d&ugrave;ng thiết kế web gi&aacute; rẻ để x&acirc;y dựng website c&oacute; thể thiếu nhiều chức năng v&agrave; c&oacute; thể kh&ocirc;ng hoạt động tốt với những tr&igrave;nh duyệt web.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Thiết kế web gi&aacute; rẻ c&oacute; thể l&agrave; một giải ph&aacute;p l&yacute; tưởng để c&oacute; mặt tr&ecirc;n mạng. Sẽ c&oacute; dịch vụ thiết kế web an to&agrave;n gi&aacute; rẻ v&ocirc; hại được biết tới nếu bạn c&oacute; thể th&agrave;nh c&ocirc;ng với trang web của m&igrave;nh.</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341046122, 0, 1, 1, NULL, 1);


#
# TABLE STRUCTURE FOR: news_detail_en
#

DROP TABLE IF EXISTS news_detail_en;

CREATE TABLE `news_detail_en` (
  `newsid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) unsigned DEFAULT NULL,
  `caturl` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `title_alias` varchar(200) DEFAULT NULL,
  `introtext` varchar(500) DEFAULT NULL,
  `fulltext` text,
  `hot` tinyint(1) unsigned DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `images_thumb` varchar(100) DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `attr` varchar(500) DEFAULT NULL,
  `metakey` varchar(200) DEFAULT NULL,
  `metadesc` varchar(200) DEFAULT NULL,
  `created_by` int(11) unsigned DEFAULT NULL,
  `created` int(11) unsigned DEFAULT NULL,
  `modified` int(11) unsigned DEFAULT NULL,
  `hits` int(11) unsigned DEFAULT NULL,
  `lang` varchar(2) DEFAULT 'vi',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`newsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: nicks
#

DROP TABLE IF EXISTS nicks;

CREATE TABLE `nicks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_nick` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `type` enum('Skype','Yahoo') DEFAULT 'Yahoo',
  `loai` enum('KD','KT') DEFAULT 'KT',
  `ordering` int(11) unsigned DEFAULT '1',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO nicks (`id`, `name_nick`, `note`, `type`, `loai`, `ordering`, `published`) VALUES (16, 'minhhue', '0169 4683 869 (Ms. Huế).', 'Yahoo', 'KD', 2, 1);
INSERT INTO nicks (`id`, `name_nick`, `note`, `type`, `loai`, `ordering`, `published`) VALUES (12, 'lephihong', '0188. 264. 7998 - Mr. Hồng     ', 'Yahoo', 'KD', 1, 1);


#
# TABLE STRUCTURE FOR: poll
#

DROP TABLE IF EXISTS poll;

CREATE TABLE `poll` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(254) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `add_date` int(11) DEFAULT NULL,
  `hit_date` int(11) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO poll (`pid`, `question`, `total`, `add_date`, `hit_date`, `published`) VALUES (1, 'Bạn thấy phiên bản v2.0 của 360vnit thế nào?', 0, 1316703851, NULL, 0);
INSERT INTO poll (`pid`, `question`, `total`, `add_date`, `hit_date`, `published`) VALUES (2, 'Bạn quan tâm đến an toàn vệ sinh thực phẩm thế nào ?', 73, 1316708066, 1316707237, 1);


#
# TABLE STRUCTURE FOR: poll_history
#

DROP TABLE IF EXISTS poll_history;

CREATE TABLE `poll_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `ip_address` varchar(200) DEFAULT NULL,
  `history_date` int(11) DEFAULT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (2, 1, '127.0.0.1', 1314345722);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (3, 1, '127.0.0.1', 1314345751);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (4, 1, '127.0.0.1', 1314351201);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (5, 1, '127.0.0.1', 1314351206);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (6, 2, '127.0.0.1', 1314351385);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (7, 2, '127.0.0.1', 1314351466);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (8, 2, '127.0.0.1', 1314351512);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (9, 2, '127.0.0.1', 1314351580);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (10, 2, '127.0.0.1', 1314351730);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (11, 2, '127.0.0.1', 1314351764);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (12, 2, '127.0.0.1', 1314351790);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (13, 2, '127.0.0.1', 1314351845);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (14, 2, '127.0.0.1', 1314351881);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (15, 2, '127.0.0.1', 1314351901);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (16, 2, '127.0.0.1', 1314351906);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (17, 2, '127.0.0.1', 1314351915);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (18, 2, '127.0.0.1', 1314352009);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (19, 2, '127.0.0.1', 1314352020);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (20, 2, '127.0.0.1', 1314352024);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (21, 2, '127.0.0.1', 1314352042);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (22, 2, '127.0.0.1', 1314352055);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (23, 2, '127.0.0.1', 1314352093);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (24, 2, '127.0.0.1', 1314352104);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (25, 2, '127.0.0.1', 1314352144);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (26, 2, '127.0.0.1', 1314352151);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (27, 2, '127.0.0.1', 1314352168);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (28, 2, '127.0.0.1', 1314352172);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (29, 2, '127.0.0.1', 1314352379);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (30, 2, '127.0.0.1', 1314352510);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (31, 2, '127.0.0.1', 1314352553);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (32, 2, '127.0.0.1', 1314352559);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (33, 2, '127.0.0.1', 1314352567);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (34, 2, '127.0.0.1', 1314352588);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (35, 2, '127.0.0.1', 1314352618);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (36, 2, '127.0.0.1', 1314352652);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (37, 2, '127.0.0.1', 1314352656);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (38, 2, '127.0.0.1', 1314352716);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (39, 2, '127.0.0.1', 1314352783);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (40, 2, '127.0.0.1', 1314352809);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (41, 2, '127.0.0.1', 1314352820);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (42, 2, '127.0.0.1', 1314352857);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (43, 2, '127.0.0.1', 1314352896);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (44, 2, '127.0.0.1', 1314352900);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (45, 2, '127.0.0.1', 1314352945);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (46, 2, '127.0.0.1', 1314352973);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (47, 2, '127.0.0.1', 1314353072);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (48, 2, '127.0.0.1', 1314353087);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (49, 2, '127.0.0.1', 1314353092);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (50, 2, '127.0.0.1', 1314353139);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (51, 2, '127.0.0.1', 1314353210);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (52, 2, '127.0.0.1', 1314353299);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (53, 2, '127.0.0.1', 1314353423);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (54, 2, '127.0.0.1', 1314353430);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (55, 2, '127.0.0.1', 1314353436);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (56, 2, '127.0.0.1', 1314353634);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (57, 2, '127.0.0.1', 1314353677);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (58, 2, '127.0.0.1', 1314353702);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (59, 2, '127.0.0.1', 1314353724);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (60, 2, '127.0.0.1', 1314353740);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (61, 2, '127.0.0.1', 1314353744);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (62, 2, '127.0.0.1', 1314353785);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (63, 2, '127.0.0.1', 1314353800);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (64, 2, '127.0.0.1', 1314353819);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (65, 2, '127.0.0.1', 1314353978);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (66, 2, '127.0.0.1', 1314354152);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (67, 2, '127.0.0.1', 1314354170);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (68, 2, '127.0.0.1', 1314354193);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (69, 2, '127.0.0.1', 1314354211);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (70, 2, '127.0.0.1', 1314354796);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (71, 2, '127.0.0.1', 1314354939);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (72, 2, '127.0.0.1', 1314355063);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (73, 2, '127.0.0.1', 1314355069);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (74, 2, '127.0.0.1', 1314355093);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (75, 2, '127.0.0.1', 1314355177);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (76, 2, '127.0.0.1', 1314355201);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (77, 2, '127.0.0.1', 1314355266);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (78, 2, '127.0.0.1', 1314355327);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (79, 2, '127.0.0.1', 1314370735);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (80, 2, '127.0.0.1', 1314370742);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (81, 2, '127.0.0.1', 1314370758);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (82, 2, '127.0.0.1', 1314370764);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (83, 2, '127.0.0.1', 1314370767);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (84, 2, '127.0.0.1', 1314370958);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (85, 2, '127.0.0.1', 1314375545);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (86, 2, '127.0.0.1', 1314414496);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (87, 2, '127.0.0.1', 1314679305);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (88, 2, '127.0.0.1', 1314692047);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (89, 2, '127.0.0.1', 1314692051);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (90, 2, '127.0.0.1', 1314717616);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (91, 2, '127.0.0.1', 1315125967);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (92, 2, '127.0.0.1', 1316704348);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (93, 2, '127.0.0.1', 1316704356);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (94, 2, '127.0.0.1', 1316704677);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (95, 2, '127.0.0.1', 1316704720);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (96, 2, '127.0.0.1', 1316704737);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (97, 2, '127.0.0.1', 1316704750);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (98, 2, '127.0.0.1', 1316704754);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (99, 2, '127.0.0.1', 1316704786);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (100, 2, '127.0.0.1', 1316704809);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (101, 2, '127.0.0.1', 1316705080);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (102, 2, '127.0.0.1', 1316705140);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (103, 2, '127.0.0.1', 1316705156);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (104, 2, '127.0.0.1', 1316705200);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (105, 2, '127.0.0.1', 1316705334);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (106, 2, '127.0.0.1', 1316705428);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (107, 2, '127.0.0.1', 1316705466);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (108, 2, '127.0.0.1', 1316705477);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (109, 2, '127.0.0.1', 1316705563);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (110, 2, '127.0.0.1', 1316705638);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (111, 2, '127.0.0.1', 1316705698);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (112, 2, '127.0.0.1', 1316705712);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (113, 2, '127.0.0.1', 1316705724);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (114, 2, '127.0.0.1', 1316705738);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (115, 2, '127.0.0.1', 1316706183);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (116, 2, '127.0.0.1', 1316706187);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (117, 2, '127.0.0.1', 1316706191);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (118, 2, '127.0.0.1', 1316706195);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (119, 2, '127.0.0.1', 1316706291);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (120, 2, '127.0.0.1', 1316706506);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (121, 2, '127.0.0.1', 1316706541);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (122, 2, '127.0.0.1', 1316706544);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (123, 2, '127.0.0.1', 1316706592);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (124, 2, '127.0.0.1', 1316706595);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (125, 2, '127.0.0.1', 1316706639);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (126, 2, '127.0.0.1', 1316706642);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (127, 2, '127.0.0.1', 1316706698);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (128, 2, '127.0.0.1', 1316706704);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (129, 2, '127.0.0.1', 1316706708);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (130, 2, '127.0.0.1', 1316706714);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (131, 2, '127.0.0.1', 1316707003);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (132, 2, '127.0.0.1', 1316707162);
INSERT INTO poll_history (`history_id`, `pid`, `ip_address`, `history_date`) VALUES (133, 2, '127.0.0.1', 1316707237);


#
# TABLE STRUCTURE FOR: poll_rows
#

DROP TABLE IF EXISTS poll_rows;

CREATE TABLE `poll_rows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(254) DEFAULT NULL,
  `hitstotal` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (4, 1, 'Hỗ trợ Ajax', 0);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (5, 2, 'Rất quan tâm', 43);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (7, 2, 'Quan tâm vừa phải', 10);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (9, 2, 'Không trú trọng nhiều', 10);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (12, 1, 'ddddddd', 0);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (14, 2, 'Không quan tâm', 10);


#
# TABLE STRUCTURE FOR: projects
#

DROP TABLE IF EXISTS projects;

CREATE TABLE `projects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `content` text,
  `summary` varchar(500) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `lang` varchar(2) DEFAULT 'vi',
  `date_time` int(11) unsigned DEFAULT NULL,
  `ordering` int(11) unsigned DEFAULT NULL,
  `views` int(11) unsigned DEFAULT '1',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sections
#

DROP TABLE IF EXISTS sections;

CREATE TABLE `sections` (
  `sections_id` int(11) NOT NULL AUTO_INCREMENT,
  `sections_title` varchar(254) DEFAULT NULL,
  `sections_alias` varchar(254) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `lang` varchar(200) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`sections_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (2, 'Dịch vụ', 'dich-vu', 2, 'vi', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (12, 'Services', 'services', 2, 'en', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (11, 'News', 'news', 1, 'en', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (7, 'Giới thiệu', 'gioi-thieu', 5, 'vi', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (1, 'Tin tức', 'tin-tuc', 1, 'vi', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (13, 'About Us', 'about-us', 3, 'en', 1);


#
# TABLE STRUCTURE FOR: service
#

DROP TABLE IF EXISTS service;

CREATE TABLE `service` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  `summary` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lang` varchar(2) CHARACTER SET utf8 DEFAULT 'vi',
  `date_time` int(11) unsigned DEFAULT NULL,
  `ordering` int(11) unsigned NOT NULL,
  `views` int(11) unsigned DEFAULT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO service (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `published`) VALUES (1, 'dich vu bao tro may vi tinh', '<p>\r\n	sadadasda</p>\r\n', NULL, NULL, NULL, 'vi', 1393096158, 1, NULL, 1);
INSERT INTO service (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `published`) VALUES (2, 'dich viu xay dung he thong ', '<p>\r\n	sadasd</p>\r\n', NULL, NULL, NULL, 'vi', 1393097000, 1, NULL, 1);
INSERT INTO service (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `published`) VALUES (3, 'Bao tri dien thoai', '<p>\r\n	sadadsasdsdad<img alt=\"\" src=\"/data/images/banner-a7RwvrdxwX3WTRqe1351147293201210250133.JPG\" style=\"width: 940px; height: 300px;\" /></p>\r\n', NULL, NULL, NULL, 'vi', 1393152792, 1, NULL, 1);


#
# TABLE STRUCTURE FOR: shop_cart
#

DROP TABLE IF EXISTS shop_cart;

CREATE TABLE `shop_cart` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(200) DEFAULT NULL,
  `productid` int(11) unsigned NOT NULL,
  `payment_id` int(11) NOT NULL,
  `city_id` int(11) unsigned DEFAULT NULL,
  `districts_id` int(11) unsigned DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `order_news` int(11) unsigned DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `fullname` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_buy` int(11) unsigned NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `activecode` varchar(100) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (1, NULL, 0, 12, NULL, NULL, NULL, NULL, NULL, 'ngoang ', '24 hoang ', '083266', 'phongvnnguyen.domain@gmail.com', 1392302920, 'cho toi ', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (2, NULL, 0, 12, NULL, NULL, NULL, NULL, NULL, 'ngoang ', '24 hoang ', '083266', 'phongvnnguyen.domain@gmail.com', 1392302997, 'cho toi ', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (3, 'DH00000001', 0, 12, NULL, NULL, NULL, NULL, NULL, 'ngoang ', '24 hoang ', '083266', 'phongvnnguyen.domain@gmail.com', 1392304427, 'cho toi ', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (4, 'DH00000001', 0, 12, NULL, NULL, NULL, NULL, NULL, 'ngoang ', '24 hoang ', '083266', 'phongvnnguyen.domain@gmail.com', 1392304476, 'cho toi ', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (5, 'DH00000001', 0, 12, NULL, NULL, NULL, NULL, NULL, 'dxf', 'dfsfsfd', 'sdfsdfs', 'dfsdfs@sada.com', 1392304516, 'dfsdfsf', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (6, 'DH00000001', 0, 12, NULL, NULL, NULL, NULL, '', 'sdfsdfsfsffssdfsd', 'sdfsdfsd', 'fsdfsdf', 'sdfsdf@asdasd.com', 1392305799, 'sdfs', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (7, 'DH00000002', 0, 12, NULL, NULL, NULL, NULL, NULL, 'fdgfd', 'gfdgfdg', 'dfgdfgdf', 'ds@vsd.com', 1392305894, 'sd', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (8, 'DH00000002', 0, 12, NULL, NULL, NULL, NULL, NULL, 'fdgfd', 'gfdgfdg', 'dfgdfgdf', 'ds@vsd.com', 1392306122, 'sd', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (9, NULL, 0, 12, NULL, NULL, NULL, NULL, NULL, 'dfsdfdsf', 'sdfsfsfsfsdfs', 'sdfsdf', 'sdfs@ASDAd.com', 1392306437, 'asd', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (10, NULL, 0, 12, NULL, NULL, NULL, NULL, NULL, 'dfsdfdsf', 'sdfsfsfsfsdfs', 'sdfsdf', 'sdfs@ASDAd.com', 1392306582, 'asd', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (11, NULL, 0, 12, NULL, NULL, NULL, NULL, NULL, 'dfsdfdsf', 'sdfsfsfsfsdfs', 'sdfsdf', 'sdfs@ASDAd.com', 1392306591, 'asd', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (12, 'DH00000002', 0, 12, NULL, NULL, NULL, NULL, NULL, 'dfsdfdsf', 'sdfsfsfsfsdfs', 'sdfsdf', 'sdfs@ASDAd.com', 1392306606, 'asd', NULL, 0);
INSERT INTO shop_cart (`order_id`, `barcode`, `productid`, `payment_id`, `city_id`, `districts_id`, `user_id`, `order_news`, `session_id`, `fullname`, `address`, `phone`, `email`, `date_buy`, `note`, `activecode`, `status`) VALUES (19, 'DH00000008', 0, 13, NULL, NULL, NULL, NULL, '', 'phong nguyen', 'phong', '123456', 'phong.sttm@gmail.com', 1395461938, 'sdasd', NULL, 0);


#
# TABLE STRUCTURE FOR: shop_cart_detail
#

DROP TABLE IF EXISTS shop_cart_detail;

CREATE TABLE `shop_cart_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cartid` int(11) unsigned NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productid` int(11) unsigned NOT NULL,
  `s_price` int(11) unsigned NOT NULL,
  `s_qty` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (38, 0, 'acac34b10bbce1a209c104386b45f3a9', 'Samsung Galaxy Tab 3 8.0 (SM-T311) 8.0', 4, 8500000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (39, 0, 'a143b4ce5adc339da60dcd32ae5f2545', 'Loa LED mini hình quả táo cho điện thoại/PSP/máy tính bảng', 2, 130000, 2);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (45, 0, '64858c9d5a6ef5d358368db608255868', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Trắng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (46, 0, 'f1c5aecd41065dafe36184d29dd51bc4', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (47, 0, '0f400d6d9486cd1512489c6d7d750704', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (55, 0, 'e858352375e3b96b2b8e5b9407053189', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (56, 0, 'e858352375e3b96b2b8e5b9407053189', 'Loa LED mini hình quả táo cho điện thoại/PSP/máy tính bảng', 2, 130000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (57, 0, 'e858352375e3b96b2b8e5b9407053189', 'Samsung Galaxy Tab 3 8.0 (SM-T311) 8.0', 4, 8500000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (58, 0, '421450256403fef7b76d6f38847ac97f', 'Thẻ nhớ SD Transcend 16GB class 10', 6, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (59, 0, '2ac52429967c3233c08ba7e11d0a451e', 'Laptop Toshiba Portégé Z30 i7 4500U/4G/256 SSD/Win8 - Bạc', 14, 28000000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (60, 0, 'aacec09f120974293c6e3fd9c938170d', 'Loa LED mini hình quả táo cho điện thoại/PSP/máy tính bảng', 2, 130000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (61, 0, 'aacec09f120974293c6e3fd9c938170d', 'Laptop Toshiba Portégé Z30 i7 4500U/4G/256 SSD/Win8 - Bạc', 14, 28000000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (62, 0, '3ff34de9da7d8ad4b40fc037599bf396', 'Samsung Galaxy Tab 3 8.0 (SM-T311) 8.0', 4, 8500000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (63, 0, '65c855b7c67eebc177aea713ebdb5037', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Trắng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (73, 0, 'b2c2cfa1be0f330c4d48d1aa8edf5d52', 'Chuột dây Wintop M-288 1600dpi - trắng', 5, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (75, 0, 'b2c2cfa1be0f330c4d48d1aa8edf5d52', 'HUB chia cổng USB 3.0, 4 cổng dành cho PC, laptop, mp3, chuột', 1, 420000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (77, 0, '142c5b3cf46fe52d3002fc513355fb66', 'Chuột dây Wintop M-288 1600dpi - trắng', 5, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (78, 0, '142c5b3cf46fe52d3002fc513355fb66', 'Samsung Galaxy Tab 3 8.0 (SM-T311) 8.0', 4, 8500000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (79, 0, '142c5b3cf46fe52d3002fc513355fb66', 'Thẻ nhớ SD Transcend 16GB class 10', 6, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (80, 0, 'db8c131312f54b80f1a669b33d39df3e', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (81, 0, 'c6e70a73aa846dcdfa4510bde6e2678a', 'Loa LED mini hình quả táo cho điện thoại/PSP/máy tính bảng', 2, 130000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (82, 0, 'c6e70a73aa846dcdfa4510bde6e2678a', 'HUB chia cổng USB 3.0, 4 cổng dành cho PC, laptop, mp3, chuột', 1, 420000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (83, 0, 'f3611490a480c4457051294b4ca1046e', 'Laptop Toshiba Portégé Z30 i7 4500U/4G/256 SSD/Win8 - Bạc', 14, 28000000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (84, 0, '8c6bed3d04fdd26ec438cca311ec5be6', 'Sony Vaio Pro SVP13213SG i5 4200U/4G/128 SSD/Win8 - Đen', 16, 2350000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (90, 0, 'cdcfe74a739f6dc6fe58622f83ad53ae', 'Samsung Galaxy Trend Plus S7580 4', 15, 3359000, 7);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (91, 0, '06a439383cd4ecb0b430c1e94b6694c9', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (92, 0, '15fc955dee18a5f768b1b7bd2c9e1f87', 'Chuột dây Wintop M-288 1600dpi - trắng', 5, 80000, 2);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (93, 0, 'f539cfdd2cdc9f03906ccc654485c470', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Trắng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (94, 0, 'cfe3c740945b8478fbd43d121487fb58', 'Chuột dây Wintop M-288 1600dpi - trắng', 5, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (95, 0, 'cfe3c740945b8478fbd43d121487fb58', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (96, 0, '796621847fbb66babe4bc53c37c436bc', 'Samsung Galaxy Trend Plus S7580 4', 15, 3359000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (97, 0, 'bcef2116e5fc4513ef4631748093f650', 'iPhone 4 8GB 3.5', 13, 8100000, 5);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (98, 0, 'bcef2116e5fc4513ef4631748093f650', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Trắng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (100, 0, '47d76089e875d2086df570e8a9c82e56', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Trắng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (102, 0, 'b7ceab6e4b6bcb17e1b9e78fe77f7987', 'Loa mini bluetooth beatbox S10', 18, 350000, 1);


#
# TABLE STRUCTURE FOR: shop_img
#

DROP TABLE IF EXISTS shop_img;

CREATE TABLE `shop_img` (
  `imageid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `imagepath` varchar(254) DEFAULT NULL,
  `base` varchar(254) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`imageid`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO shop_img (`imageid`, `productid`, `imagepath`, `base`, `ordering`) VALUES (30, 18, 'loa-mini-bluetooth-beatbox-s10-1.jpg', NULL, 1);
INSERT INTO shop_img (`imageid`, `productid`, `imagepath`, `base`, `ordering`) VALUES (31, 19, 'monitor-dell-170x-vuong-1.jpg', NULL, 1);
INSERT INTO shop_img (`imageid`, `productid`, `imagepath`, `base`, `ordering`) VALUES (32, 20, 'mouse-newmen-g9-1.jpg', NULL, 1);
INSERT INTO shop_img (`imageid`, `productid`, `imagepath`, `base`, `ordering`) VALUES (33, 21, 'headphone-level-10m-ht-ltm010ecbl-tt-esports-black-1.jpg', NULL, 1);
INSERT INTO shop_img (`imageid`, `productid`, `imagepath`, `base`, `ordering`) VALUES (34, 22, 'may-tinh-bang-haier-hg739-7-1.jpg', NULL, 1);
INSERT INTO shop_img (`imageid`, `productid`, `imagepath`, `base`, `ordering`) VALUES (35, 23, 'loa-bose-companion-5-1.jpg', NULL, 1);


#
# TABLE STRUCTURE FOR: shop_manufacture
#

DROP TABLE IF EXISTS shop_manufacture;

CREATE TABLE `shop_manufacture` (
  `manufactureid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `name_url` varchar(254) DEFAULT NULL,
  `images_root` varchar(255) DEFAULT NULL,
  `images_small` varchar(254) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`manufactureid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (1, 'Intel', 'intel', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (2, 'Gigabyte', 'gigabyte', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (3, 'Asus', 'asus', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (4, 'HP - COMPAQ', 'hp-compaq', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (5, 'Toshiba', 'toshiba', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (6, 'IBM - Lenovo', 'ibm-lenovo', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (7, 'Forconn', 'forconn', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (8, 'Asus', 'asus', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (9, 'Dell', 'dell', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (10, 'Samsung', 'samsung', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (11, 'Seagate', 'seagate', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (12, 'Western', 'western', NULL, NULL, 1);
INSERT INTO shop_manufacture (`manufactureid`, `name`, `name_url`, `images_root`, `images_small`, `published`) VALUES (13, 'China', 'china', NULL, NULL, 1);


#
# TABLE STRUCTURE FOR: shop_payment
#

DROP TABLE IF EXISTS shop_payment;

CREATE TABLE `shop_payment` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) unsigned DEFAULT '0',
  `payment_code` varchar(200) DEFAULT NULL,
  `payment_name` varchar(254) NOT NULL,
  `payment_des` varchar(500) DEFAULT NULL,
  `payment_img` varchar(100) DEFAULT NULL,
  `merchant_id` varchar(200) DEFAULT NULL,
  `access_code` varchar(200) DEFAULT NULL,
  `secure_hash` varchar(200) DEFAULT NULL,
  `url_pay` varchar(500) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO shop_payment (`payment_id`, `parentid`, `payment_code`, `payment_name`, `payment_des`, `payment_img`, `merchant_id`, `access_code`, `secure_hash`, `url_pay`, `ordering`, `published`) VALUES (13, 0, '', 'Thanh toán khi nhận hàng COD', '<p>\r\n	Bạn sẽ thanh to&aacute;n tiền cho nh&acirc;n vi&ecirc;n giao h&agrave;ng của <strong>aomuavietnam.com,</strong> sau khi nhận v&agrave; kiểm tra h&agrave;ng h&oacute;a</p>\r\n', '0', '', '', '', '', 0, 1);
INSERT INTO shop_payment (`payment_id`, `parentid`, `payment_code`, `payment_name`, `payment_des`, `payment_img`, `merchant_id`, `access_code`, `secure_hash`, `url_pay`, `ordering`, `published`) VALUES (12, 0, '', 'Chuyển khoản ngân hàng', '<p>\r\n	Bạn sẽ chuyển khoản cho aomuavietnam.com qua t&agrave;i khoản&nbsp;</p>\r\n<p>\r\n	lưu minh triết: <strong>090704313041 </strong>Tại Ng&acirc;n h&agrave;ng<strong> HSBC</strong>, T&ograve;a nh&agrave; Metropolitan, 235 Đồng Khởi, Quận 1, Hồ Ch&iacute; Minh&lrm;.</p>\r\n', '', '', '', '', '', 0, 1);


#
# TABLE STRUCTURE FOR: shop_product
#

DROP TABLE IF EXISTS shop_product;

CREATE TABLE `shop_product` (
  `productid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `barcode` varchar(100) DEFAULT NULL,
  `catid` int(11) unsigned DEFAULT '0',
  `manufactureid` int(11) unsigned DEFAULT '0',
  `productname` varchar(250) DEFAULT NULL,
  `producturl` varchar(250) DEFAULT NULL,
  `productimg` varchar(250) DEFAULT NULL,
  `date_time` int(11) unsigned DEFAULT NULL,
  `price_front` decimal(11,0) unsigned DEFAULT NULL,
  `price` decimal(11,0) DEFAULT NULL,
  `percent` int(2) unsigned DEFAULT '0',
  `content` text,
  `phu_kien` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `is_home` tinyint(1) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT '1',
  `tinhtrang_hang` tinyint(1) unsigned DEFAULT '1',
  `ordering` int(11) unsigned DEFAULT NULL,
  `icon_hot` tinyint(1) unsigned DEFAULT '0',
  `icon_deal` tinyint(1) unsigned DEFAULT '0',
  `icon_new` tinyint(1) unsigned DEFAULT '0',
  `hits` int(11) unsigned DEFAULT '1',
  `published` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (18, 'L401', 24, 13, 'Loa mini bluetooth beatbox S10', 'loa-mini-bluetooth-beatbox-s10', 'loa-mini-bluetooth-beatbox-s10-1.jpg', 1395625835, '550000', '350000', 36, '<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	 </p>\r\n<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<span style=\"color: rgb(128, 0, 128); font-size: small;\"><strong>* Giới thiệu sản phẩm:</strong></span></p>\r\n<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	- Tận Hưởng Chất Lượng Âm Thanh Vượt Trội, Sống Động, Rõ Nét Với Loa Bluetooth Beat SK-S10 – Thiết Kế Nhỏ Gọn, Tiện Lợi Khi Mang Đi Xa. </p>\r\n<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<strong><img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/loa_bluetooth5%281%29.png\" style=\"display: block; margin-left: auto; margin-right: auto; width: 370px; height: 300px;\" /></strong></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	-Trải nghiệm nghe nhạc với loa kết nối bằng Bluetooth, loa mini không dây sử dụng cho:  iPhone ,  iPad , iPod, PSP, Laptop, MP3,  SmartPhone, máy tính bảng các loại...</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" height=\"348\" src=\"http://shoptinhte.com/files/assets/LOA/newminioutdoorwirelessbluetoot.jpg\" style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" width=\"411\" /></p>\r\n<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	- Loa Bluetooth Speaker Beatbox SK-S10 sử dụng cho: iPhone, iPad, iPod, PSP, Laptop, MP3, SmartPhone, máy tính bảng các loại...<br />\r\n	- Trải nghiệm nghe nhạc với loa kết nối bằng Bluetooth.<br />\r\n	- Lớp vỏ ngoài bằng hợp kim chống trầy sước cực tốt gồm nhiều màu sắc lựa chọn (xanh dương, đỏ, cam, xám nâu)<br />\r\n	- Thiết kế tinh tế, công nghệ đột phá, sử dụng đơn giản, kiểu đóng gói độc đáo<br />\r\n	- Công nghệ âm thanh Air Bass độc quyền , tăng cường âm trầm, âm thanh trong, to chắc, không bị tình trạng rè loa</p>\r\n<p data-mce-style=\"text-align: center;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;\">\r\n	.<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none;\" height=\"369\" src=\"http://shoptinhte.com/files/assets/LOA/loa_bluetooth_beat_01.jpg\" style=\"float: none;\" width=\"398\" /><br />\r\n	 </p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<strong> </strong></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	               Thiết kế tinh tế, công nghệ đột phá, sử dụng đơn giản, kiểu đóng gói độc đáo. Phát nhạc qua bluetooth của các thiết bị có chức năng phát nhạc qua bluetooth.</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	 <img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/loa_bluetooth_beat_01.jpg\" style=\"display: block; margin-left: auto; margin-right: auto; width: 311px; height: 276px;\" /></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	            Công nghệ âm thanh Air Bass độc quyền , tăng cường âm trầm, âm thanh trong, to chắc, không bị tình trạng rè loa. Thiết kế vỏ loa chắc chắn, màn loa được bọc cẩn thận ko sợ hỏng màn loa.</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	 <img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/beatboxminispeaker.jpg\" style=\"display: block; margin-left: auto; margin-right: auto; width: 354px; height: 263px;\" /></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	      Chiếc loa Beats bluetooth có âm thanh bass khá tốt, chuyên bass trầm mạnh. Bạn để chiếc loa Beatsbox trên mặt bàn thì nhớ để vật gì chặn lại nhé, ko khéo là nó rung một hồi sẽ rớt ngay.  <img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/bluetooth_wireless_speaker_por.jpg\" style=\"display: block; margin-left: auto; margin-right: auto; width: 405px; height: 250px;\" /></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	            Với chức năng <strong>phát nhạc qua bluetooth</strong>, Beatsbox cho bạn thêm tiện dụng, không vướng víu dây nhợ khi chơi game hay nghe điện thoại khi đang nghe nhạc mà có cuộc gọi đến. Vẫn có dây cáp kết nối âm thanh nếu bạn cần dùng nó.</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/loabluetoothbeatssks100n322.jpg\" style=\"display: block; margin-left: auto; margin-right: auto; width: 401px; height: 309px;\" /></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	Ngoài ra bạn có thể cắm thẻ nhớ thì <strong>loa cũng phát nhạc từ thẻ nhớ</strong> này được. Quá tiện phải ko nào?</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/loa_bluetooth_aomuavietnam.com14.png\" style=\"display: block; margin-left: auto; margin-right: auto; width: 277px; height: 370px;\" /></p>\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" data-mce-style=\"height: 396px;\" style=\"color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); height: 396px;\" width=\"556\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"xl63\" colspan=\"2\" height=\"33\" width=\"162\">\r\n				<br />\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\"><strong>  Thông số kỹ thuật:</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Bluetooth phiên bản</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\"> V2.1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Phạm vi làm việc</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">10m</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Thời gian làm việc:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\"> 5 giờ</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Kích thước:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\"> 60 x 60 x 50mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Loa Output:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">3w</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Tần số đáp ứng: </span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">280HZ - 16KHz</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Signal-to-noise:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\"> ≥ 95dB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\"> Distortion: </span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">≤ 0,5%</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Pin điện áp / công suất: </span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">520mAh</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Pin sạc điện áp:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">5V ± 0.5V</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Màu sắc:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\"> đỏ, vàng, đen, bạc, crôm.</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<strong> </strong></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<span data-mce-style=\"color: #0000ff;\" style=\"color: rgb(0, 0, 255);\"><strong>Hãy nhanh tay gọi cho chúng tôi để sở hữu cho mình một thiết bị giải trí đa nhiệm tốt nhất,  nó thực sự trở thành là cỗ máy giải trí cần có cho gia đình bạn!</strong></span></p>\r\n<p>\r\n	 </p>\r\n', 'Chất liệu hợp kim nhựa ABS hỗ trợ chơi thẻ TF (8G).\r\n- Bluetooth: Bluetooth V2.1 EDR.\r\n- Pin: 450mah.\r\n- Công suất: 3w.\r\n- Thời gian hoạt động: 4 giờ.\r\n- Thời gian sạc: 2,5 giờ.\r\n- Kích thước: (60 x 60 x 50)mm.\r\n- Màu sắc: đỏ, xanh, vàng, đen, bạc, crôm.', 1, 1, 1, 1, 1, 0, 0, 159, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (19, 'M101', 67, 9, 'Monitor Dell 170x (vuông)', 'monitor-dell-170x-vuong', 'monitor-dell-170x-vuong-1.jpg', 1395628421, '1800000', '1500000', 16, '', '- Panel Size: 17\"; Aspect Ratio 4:3;\r\n- Panel Type: TN - Twisted Nematic;\r\n- Max Resolution 1280 x 1024 at 60 Hz;\r\n- Contrast Ratio: 800:1 (typical);\r\n- Brightness: 250cd/m2 (typicall);\r\n- Response Time: 5 ms (typical);\r\n- Viewing Angle 160° / 160° (typical);\r\n- Color Support: 16.7 million colors.', 1, 1, 1, 1, 0, 0, 1, 104, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (20, 'PCM01', 27, 13, 'Mouse Newmen G9', 'mouse-newmen-g9', 'mouse-newmen-g9-1.jpg', 1407566945, '890000', '870000', 2, '', 'Tính năng nổi bật:\r\n\r\n- Chuột Laser dùng cho game thủ\r\n- Độ phân giải 6000dpi\r\n- Kèm theo 9 bi điều chỉnh độ nặng của chuột\r\n- Có chế độ lập trình phím tắt\r\n- Bảo hành 1 năm \r\n', 1, 1, 1, 1, 0, 0, 0, 2, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (21, 'PCSKP01', 25, 13, 'Headphone Level 10M HT - LTM010ECBL Tt eSports (Black)', 'headphone-level-10m-ht-ltm010ecbl-tt-esports-black', 'headphone-level-10m-ht-ltm010ecbl-tt-esports-black-1.jpg', 1407567387, '2600000', '2500000', 3, '<p>\r\n	<span style=\"clear:both !important; text-align:left; font-weight:bold;\">T&iacute;nh năng nổi bật:</span></p>\r\n<div class=\"thongtinsp\">\r\n	<p>\r\n		Headset chuy&ecirc;n nghiệp d&agrave;nh cho game thủ, t&iacute;ch hợp mic chất lượng cao, d&acirc;y d&agrave;i 3m, t&iacute;ch hợp n&uacute;t chỉnh mic tr&ecirc;n d&acirc;y, Headset đầu ti&ecirc;n tr&ecirc;n thế giới được thiết kế bởi h&atilde;ng xe BMW USA, l&agrave;m nguy&ecirc;n khối từ nh&ocirc;m, v&agrave;nh tai to, rộng gi&uacute;p game thủ đeo thời gian</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (22, 'Tab01', 83, 13, 'Máy tính bảng Haier HG739 7\"', 'may-tinh-bang-haier-hg739-7', 'may-tinh-bang-haier-hg739-7-1.jpg', 1407567743, '1700000', '1500000', 11, '<p>\r\n	<span style=\"clear:both !important; text-align:left; font-weight:bold;\">T&iacute;nh năng nổi bật:</span></p>\r\n<div class=\"thongtinsp\">\r\n	<p>\r\n		<span>- A23 ARM Cortex-A7 Dual core 2x1.5GHz, 512KB L2 Cache,&nbsp; Mali 400 MP2 graphics</span><br />\r\n		<span>- 1GB DDR3 + 8GB Support microSD&trade; card (up to 32GB)</span><br />\r\n		<span>- Camera trước 0.3MP, camera sau 0.3MP</span><br />\r\n		<span>- G-sensor cảm biến chuyển động</span><br />\r\n		<span>- Wireless b/g/n, 1x Micro USB (OTG)</span><br />\r\n		<span>- LCD 7&rdquo; (1024x600), cảm ứng điện dung 5 điểm Android&trade; 4.4</span><br />\r\n		<span>- 192 x 117 x 9mm<br />\r\n		- Pin 2500mAh</span></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (23, 'PCSKP02', 24, 13, 'Loa Bose Companion 5', 'loa-bose-companion-5', 'loa-bose-companion-5-1.jpg', 1407569999, '12000000', '11500000', 4, '<p>\r\n	<span style=\"clear:both !important; text-align:left; font-weight:bold;\">T&iacute;nh năng nổi bật:</span></p>\r\n<div class=\"thongtinsp\">\r\n	<p>\r\n		<strong>1Sub</strong>, <strong>2 Speakers</strong>, tich hợp <strong>soundcard</strong> <strong>Bose </strong>cổng <strong>USB</strong> cho &acirc;m thanh <strong>surround</strong></p>\r\n	<div class=\"motasanpham\">\r\n		<h3>\r\n			M&ocirc; tả sản phẩm:</h3>\r\n		<br />\r\n		<p>\r\n			Control pod &bull; 2 &frac12;&quot;H x 1 1/8&quot;D<br />\r\n			<br />\r\n			Two satellite speakers &bull; 8 9/10&quot;H x 5 4/5&quot;W x 3 4/5&quot;D &bull; (22.5 x 14.7 x 9.7 cm) &bull; 1.9 lbs (.09 kg)<br />\r\n			<br />\r\n			Acoustimass&reg; module &bull; 8 1/2&quot;H x 6 3/4&quot;W x 16 3/4&quot;D &bull; (21.8 x 17.3 x 42.5 cm) &bull; 15.4 lbs (6.99 kg)<br />\r\n			<br />\r\n			System in carton &bull; 10 1/2&quot;L x 15 1/4&quot;W x 19 3/4&quot;H &bull; (26.7 x 38.6 x 50.1 cm) &bull; 27 lbs (12.3 kg)</p>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 1, 1, 1, 1, 1, 1, 1, 1);


#
# TABLE STRUCTURE FOR: signup_deal
#

DROP TABLE IF EXISTS signup_deal;

CREATE TABLE `signup_deal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO signup_deal (`id`, `user_id`, `email`) VALUES (1, 0, 'tranngocduoc@gmail.com');
INSERT INTO signup_deal (`id`, `user_id`, `email`) VALUES (2, 0, 'info@360vnit.com');
INSERT INTO signup_deal (`id`, `user_id`, `email`) VALUES (3, 0, 'phamthanhthuy07i1@gmail.com');
INSERT INTO signup_deal (`id`, `user_id`, `email`) VALUES (4, 0, 'Vui lòng nhập Email để nhận Deal');
INSERT INTO signup_deal (`id`, `user_id`, `email`) VALUES (5, 0, 'admin@gmail.com');


#
# TABLE STRUCTURE FOR: templates
#

DROP TABLE IF EXISTS templates;

CREATE TABLE `templates` (
  `templates_id` int(11) NOT NULL AUTO_INCREMENT,
  `templates_name` varchar(254) DEFAULT NULL,
  `templates_active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS user;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(200) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `brithday` date DEFAULT NULL,
  `male` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(200) DEFAULT NULL,
  `address` varchar(254) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `url_avatar` varchar(254) DEFAULT NULL,
  `url_openid` varchar(254) DEFAULT NULL,
  `active_code` varchar(254) DEFAULT NULL,
  `is_openid` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `last_login_time` int(11) DEFAULT NULL,
  `active_shop` tinyint(1) NOT NULL DEFAULT '0',
  `active_auction` tinyint(1) NOT NULL DEFAULT '0',
  `active_groupby` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1114 DEFAULT CHARSET=utf8;

INSERT INTO user (`user_id`, `user_code`, `group_id`, `username`, `password`, `fullname`, `email`, `brithday`, `male`, `phone`, `address`, `city_id`, `district_id`, `url_avatar`, `url_openid`, `active_code`, `is_openid`, `create_time`, `last_login_time`, `active_shop`, `active_auction`, `active_groupby`, `published`) VALUES (1113, '100', 18, 'manager', '43773a4935d58082d50617e9bf5e2065', 'Manager', 'info@aomuavietnam.com', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '1', 1, NULL, NULL, 1, 1, 1, 1);


#
# TABLE STRUCTURE FOR: user_group
#

DROP TABLE IF EXISTS user_group;

CREATE TABLE `user_group` (
  `group_id` int(11) DEFAULT NULL,
  `group_name` varchar(254) DEFAULT NULL,
  `site` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO user_group (`group_id`, `group_name`, `site`) VALUES (18, 'Quản trị cao cấp', 'admin');
INSERT INTO user_group (`group_id`, `group_name`, `site`) VALUES (17, 'Quản trị thường', 'admin');
INSERT INTO user_group (`group_id`, `group_name`, `site`) VALUES (1, 'Thành viên', 'site');


#
# TABLE STRUCTURE FOR: vfile
#

DROP TABLE IF EXISTS vfile;

CREATE TABLE `vfile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL,
  `path` varchar(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (1, 0, 'Hình ảnh', 'images');
INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (2, 0, 'File', 'files');
INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (9, 1, 'Hãng sản xuất', 'images/manufacture');
INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (8, 1, 'slideshow', 'images/slideshow');
INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (3, 0, 'Media', 'media');


