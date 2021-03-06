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

INSERT INTO branch (`id`, `name`, `address`, `email`, `phone`, `fax`, `hotline`, `lat`, `lng`) VALUES (1, 'Head office', 'SS1N H???ng L??nh, Ph?????ng 15, Qu???n 10, Tp.H??? Ch?? Minh', 'info@fyi.vn', '(08) 3977 8088', '(08) 3977 8068', '1800 6839', '10.7796653', '106.66273950000004');
INSERT INTO branch (`id`, `name`, `address`, `email`, `phone`, `fax`, `hotline`, `lat`, `lng`) VALUES (2, 'FYI H?? N???I', 'Ng?? 124 V??nh Tuy ,Q. Hai B?? Tr??ng, H?? N???i', 'info@fyi.vn', '', '', '1800 6839', '20.9998712', '105.84955660000003');


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

INSERT INTO branch_en (`id`, `name`, `address`, `email`, `phone`, `fax`, `hotline`, `lat`, `lng`) VALUES (1, 'Head office', 'SS1N H???ng L??nh, Ph?????ng 15, Qu???n 10, Tp.H??? Ch?? Minh', 'info@fyi.vn', '(08) 3977 8088', '(08) 3977 8068', '1800 6839', '10.7796653', '106.66273950000004');
INSERT INTO branch_en (`id`, `name`, `address`, `email`, `phone`, `fax`, `hotline`, `lat`, `lng`) VALUES (2, 'FYI H?? N???I', 'Ng?? 124 V??nh Tuy ,Q. Hai B?? Tr??ng, H?? N???i', 'info@fyi.vn', '', '', '1800 6839', '20.9998712', '105.84955660000003');


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

INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (32, 0, 'Tr??? gi??p', 'tro-giup', NULL, 1, 1, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (34, 0, 'D???ch v??? kh??ch h??ng', 'dich-vu-khach-hang', NULL, 1, 1, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (35, 0, 'Tr??? gi??p kh??ch h??ng', 'tro-giup-khach-hang', NULL, 1, 1, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (36, 0, '??u ????i kh??ch h??ng', 'uu-dai-khach-hang', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (37, 0, 'Gi???i thi???u', 'gioi-thieu', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (38, 0, 'Tuy???n d???ng', 'tuyen-dung', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (30, 0, 'Tin t???c', 'tin-tuc', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (40, 0, 'Ng?????i mua', 'nguoi-mua', NULL, 1, 0, 'vi', 1);
INSERT INTO category (`cat_id`, `parent_id`, `cat_title`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (41, 0, 'Ng?????i b??n', 'nguoi-ban', NULL, 1, 0, 'vi', 1);


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
INSERT INTO category_en (`cat_id`, `parent_id`, `cat_title`, `cat_name`, `cat_alias`, `section`, `ordering`, `is_home`, `lang`, `published`) VALUES (41, 0, 'Ng?????i b??n', NULL, 'nguoi-ban', NULL, 1, 2, NULL, 1);


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

INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (17, 'Ram - B??? nh???', '', 3, NULL, 'ram-bo-nho', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (18, 'Thi???t b??? tr???', '', 3, NULL, 'thiet-bi-tru', 1, 1, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (19, 'VGA - Card m??n h??nh', '', 3, NULL, 'vga-card-man-hinh', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (3, 'Thi???t b??? tin h???c', 'Mainboard, CPU, Ram, HDD ...', 0, NULL, 'thiet-bi-tin-hoc', 1, 1, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (23, 'ODD - ??? ????a quang', '', 3, NULL, 'odd-o-dia-quang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (20, 'Case - Power', '', 3, NULL, 'case-power', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (21, 'Monitor', '', 3, NULL, 'monitor', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (22, 'Keyboard - Mouse', '', 3, NULL, 'keyboard-mouse', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (8, 'M??y t??nh PC', '', 1, NULL, 'may-tinh-pc', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (9, 'Laptop', '', 1, NULL, 'laptop', 2, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (15, 'Mainboard - Bo M???ch Ch???', '', 3, NULL, 'mainboard-bo-mach-chu', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (12, 'Compact', '', 8, NULL, 'compact', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (13, 'TEST CONM', '', 4, NULL, 'test-conm', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (14, 'TEST 1', '', 13, NULL, 'test-1', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (16, 'CPU - B??? Vi X??? L??', '', 3, NULL, 'cpu-bo-vi-xu-ly', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (24, 'Speaker - loa', '', 3, NULL, 'speaker-loa', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (25, 'Headphone - Tai nghe', '', 3, NULL, 'headphone-tai-nghe', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (26, 'UPS- L??u tr??? ??i???n', '', 3, NULL, 'ups-luu-tru-dien', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (27, 'Kh??c', '', 3, NULL, 'khac', 1, 0, 'vi', 0, 0);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (28, 'Thi???t b??? m???ng', 'switch, network wireless, capble ....', 0, NULL, 'thiet-bi-mang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (29, 'USB 3G', '', 28, NULL, 'usb-3g', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (30, 'Switch ', '', 28, NULL, 'switch', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (31, 'Network - Network wireless', '', 28, NULL, 'network-network-wireless', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (32, 'Caple', '', 28, NULL, 'caple', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (33, 'Kh??c', '', 28, NULL, 'khac', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (34, 'Thi???t B??? V??n Ph??ng', 'M??y photocopy, m??y in, m??y fax....', 0, NULL, 'thiet-bi-van-phong', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (35, 'M??y in', '', 34, NULL, 'may-in', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (36, 'M??y scan', '', 34, NULL, 'may-scan', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (37, 'M??y Fax', '', 34, NULL, 'may-fax', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (38, 'Thi???t B??? Tr??nh Chi???u', '', 34, NULL, 'thiet-bi-trinh-chieu', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (39, '??i???n Tho???i', '??i???n tho???i di ?????ng, ??i???n tho???i b??n ...', 0, NULL, 'dien-thoai', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (40, '??i???n tho???i di ?????ng', '', 39, NULL, 'dien-thoai-di-dong', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (41, 'Ph??? ki???n ??i???n tho???i', '', 39, NULL, 'phu-kien-dien-thoai', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (42, '??i???n tho???i b??n', '', 39, NULL, 'dien-thoai-ban', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (43, 'T???ng ????i ??i???n tho???i', '', 39, NULL, 'tong-dai-dien-thoai', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (44, 'M??y t??nh', 'laptop, desktop, table, mac apple...', 0, NULL, 'may-tinh', 1, 1, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (45, 'Th??ng tin khuy???n m??i', 's???n ph???m dang khy???n m??i ...', 0, NULL, 'thong-tin-khuyen-mai', 1, 0, 'vi', 0, 1);
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
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (59, 'NAS - L??u tr??? m???ng', '', 18, NULL, 'nas-luu-tru-mang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (60, 'USB', '', 18, NULL, 'usb', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (61, 'nViDIA series', '', 19, NULL, 'nvidia-series', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (62, 'ATI series', '', 19, NULL, 'ati-series', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (63, 'eMaster', '', 20, NULL, 'emaster', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (64, 'Kh??c', '', 20, NULL, 'khac', 1, 0, 'vi', 0, 1);
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
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (82, 'Laptop - M??y t??nh x??ch tay', '', 44, NULL, 'laptop-may-tinh-xach-tay', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (83, 'Tablet - M??y t??nh b???ng', '', 44, NULL, 'tablet-may-tinh-bang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (84, 'PC - M??y t??nh ????? b??n', '', 44, NULL, 'pc-may-tinh-de-ban', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (85, 'Server - M??y ch???', '', 44, NULL, 'server-may-chu', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (86, 'Ph??? ki???n m??y t??nh b???ng', '', 44, NULL, 'phu-kien-may-tinh-bang', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (87, 'Ph??? ki???n laptop', '', 44, NULL, 'phu-kien-laptop', 1, 0, 'vi', 0, 1);
INSERT INTO category_prod (`cat_id`, `cat_title`, `note_title`, `parent_id`, `image`, `cat_alias`, `ordering`, `is_home`, `lang`, `del`, `published`) VALUES (88, 'Loa mini', 'loa cho ??i???n tho???i, laptop, m??y t??nh b???ng...', 24, NULL, 'loa-mini', 1, 0, 'vi', 0, 1);


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
  `site` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: site, 1: h??? th???ng',
  `rate` decimal(5,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=785 DEFAULT CHARSET=utf8;

INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (25, 0, 'TP H??? Ch?? Minh', 'tp-ho-chi-minh', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (26, 0, 'TP. H?? N???i', 'tp-ha-noi', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (27, 25, 'Qu???n 1', 'quan-1', 1, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (28, 25, 'Qu???n 2', 'quan-2', 2, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (29, 25, 'Qu???n 3', 'quan-3', 3, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (30, 25, 'Qu???n 4', 'quan-4', 4, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (31, 25, 'Qu???n 5', 'quan-5', 5, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (32, 25, 'Qu???n 6', 'quan-6', 6, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (33, 25, 'Qu???n 7', 'quan-7', 7, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (34, 25, 'Qu???n 8', 'quan-8', 8, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (35, 25, 'Qu???n 9', 'quan-9', 9, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (36, 25, 'Qu???n 10', 'quan-10', 10, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (37, 25, 'Qu???n 11', 'quan-11', 11, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (38, 25, 'Qu???n 12', 'quan-12', 12, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (39, 25, 'Qu???n B??nh Th???nh', 'quan-binh-thanh', 13, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (40, 25, 'Qu???n B??nh T??n', 'quan-binh-tan', 14, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (41, 25, 'Qu???n G?? V???p', 'quan-go-vap', 15, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (42, 25, 'Qu???n Ph?? Nhu???n', 'quan-phu-nhuan', 16, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (43, 25, 'Qu???n Th??? ?????c', 'quan-thu-duc', 17, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (44, 25, 'Qu???n T??n B??nh', 'quan-tan-binh', 18, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (45, 25, 'Qu???n T??n Ph??', 'quan-tan-phu', 19, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (46, 25, 'Huy???n B??nh Ch??nh', 'huyen-binh-chanh', 20, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (47, 25, 'Huy???n C???n Gi???', 'huyen-can-gio', 21, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (48, 25, 'Huy???n C??? Chi', 'huyen-cu-chi', 22, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (49, 25, 'Huy???n H??c M??n', 'huyen-hoc-mon', 23, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (50, 25, 'Huy???n Nh?? B??', 'huyen-nha-be', 24, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (51, 26, 'Huy???n Ba V??', 'huyen-ba-vi', 1, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (52, 26, 'Huy???n Ch????ng M???', 'huyen-chuong-my', 2, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (53, 26, 'Huy???n Gia L??m', 'huyen-gia-lam', 3, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (54, 26, 'Huy???n Ho??i ?????c', 'huyen-hoai-duc', 4, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (55, 26, 'Huy???n M?? Linh', 'huyen-me-linh', 5, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (56, 26, 'Huy???n M??? ?????c', 'huyen-my-duc', 6, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (57, 26, 'Huy???n Ph?? Xuy??n', 'huyen-phu-xuyen', 7, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (58, 26, 'Huy???n Ph?? Th???', 'huyen-phu-tho', 8, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (59, 26, 'Huy???n Qu???c Oai', 'huyen-quoc-oai', 9, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (60, 26, 'Huy???n S??c S??n', 'huyen-soc-son', 10, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (61, 26, 'Huy???n Thanh Oai', 'huyen-thanh-oai', 11, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (62, 26, 'Huy???n Thanh Tr??', 'huyen-thanh-tri', 12, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (63, 26, 'Huy???n Th?????ng T??n', 'huyen-thuong-tin', 13, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (64, 26, 'Huy???n Th???ch Th???t', 'huyen-thach-that', 14, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (65, 26, 'Huy???n T??? Li??m', 'huyen-tu-liem', 15, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (66, 26, 'Huy???n ??an Ph?????ng', 'huyen-dan-phuong', 16, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (67, 26, 'Huy???n ????ng Anh', 'huyen-dong-anh', 17, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (68, 26, 'Huy???n ???ng H??a', 'huyen-ung-hoa', 18, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (69, 26, 'Qu???n Ba ????nh', 'quan-ba-dinh', 19, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (70, 26, 'Qu???n C???u Gi???y', 'quan-cau-giay', 20, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (71, 26, 'Qu???n Hai B?? Tr??ng', 'quan-hai-ba-trung', 21, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (72, 26, 'Qu???n H?? ????ng', 'quan-ha-dong', 22, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (73, 26, 'Qu???n Ho??ng Ki???m', 'quan-hoang-kiem', 23, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (74, 26, 'Qu???n Ho??ng Mai', 'quan-hoang-mai', 24, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (75, 26, 'Qu???n Long Bi??n', 'quan-long-bien', 25, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (76, 26, 'Qu???n Thanh Xu??n', 'quan-thanh-xuan', 26, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (77, 26, 'Qu???n T??y H???', 'quan-tay-ho', 27, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (78, 26, 'Qu???n ?????ng ??a', 'quan-dong-da', 28, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (79, 26, 'Th??? X?? S??n T??y', 'thi-xa-son-tay', 29, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (80, 0, 'An Giang', 'an-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (81, 0, 'B?? R???a - V??ng T??u', 'ba-ria-vung-tau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (82, 0, 'B??nh D????ng', 'binh-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (83, 0, 'B??nh Ph?????c', 'binh-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (84, 0, 'B??nh Thu???n', 'binh-thuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (85, 80, 'Huy???n An Ph??', 'huyen-an-phu', 1, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (86, 80, 'Huy???n Ch??u Ph??', 'huyen-chau-phu', 2, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (87, 80, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 3, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (88, 80, 'Huy???n Ch??? M???i', 'huyen-cho-moi', 4, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (89, 80, 'Huy???n Ph?? T??n', 'huyen-phu-tan', 5, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (90, 80, 'Huy???n Tho???i S??n', 'huyen-thoai-son', 6, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (91, 80, 'Huy???n T???nh Bi??n', 'huyen-tinh-bien', 7, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (92, 80, 'Huy???n Tri T??n', 'huyen-tri-ton', 8, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (93, 80, 'Th??nh ph??? Long Xuy??n', 'thanh-pho-long-xuyen', 9, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (94, 80, 'Th??? x?? Ch??u ?????c', 'thi-xa-chau-doc', 10, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (95, 80, 'Th??? x?? T??n Ch??u', 'thi-xa-tan-chau', 11, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (96, 81, 'Huy???n Ch??u ?????c', 'huyen-chau-duc', 1, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (97, 81, 'Huy???n C??n ?????o', 'huyen-con-dao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (98, 81, 'Huy???n ?????t ?????', 'huyen-dat-do', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (99, 81, 'Huy???n Long ??i???n', 'huyen-long-dien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (100, 81, 'Huy???n T??n Th??nh', 'huyen-tan-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (101, 81, 'Huy???n Xuy??n M???c', 'huyen-xuyen-moc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (102, 81, 'Th??nh ph??? V??ng T??u', 'thanh-pho-vung-tau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (103, 81, 'Th??? x?? B?? R???a', 'thi-xa-ba-ria', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (104, 0, 'B???c Giang', 'bac-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (105, 104, 'Huy???n Hi???p H??a', 'huyen-hiep-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (106, 104, 'Huy???n L???ng Giang', 'huyen-lang-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (107, 104, 'Huy???n L???c Nam', 'huyen-luc-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (108, 104, 'Huy???n L???c Ng???n', 'huyen-luc-ngan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (109, 104, 'Huy???n S??n ?????ng', 'huyen-son-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (110, 104, 'Huy???n T??n Y??n', 'huyen-tan-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (111, 104, 'Huy???n Vi???t Y??n', 'huyen-viet-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (112, 104, 'Huy???n Y??n D??ng', 'huyen-yen-dung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (113, 104, 'Huy???n Y??n Th???', 'huyen-yen-the', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (114, 104, 'Th??nh ph??? B???c Giang', 'thanh-pho-bac-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (115, 0, 'B???c K???n', 'bac-kan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (116, 115, 'Huy???n Ba B???', 'huyen-ba-be', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (117, 115, 'Huy???n B???ch Th??ng', 'huyen-bach-thong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (118, 115, 'Huy???n Ch??? ?????n', 'huyen-cho-don', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (119, 115, 'Huy???n Ch??? M???i', 'huyen-cho-moi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (120, 115, 'Huy???n Na R??', 'huyen-na-ri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (121, 115, 'Huy???n Ng??n S??n', 'huyen-ngan-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (122, 115, 'Huy???n P??c N???m', 'huyen-pac-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (123, 115, 'Th??? x?? B???c K???n', 'thi-xa-bac-kan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (124, 0, 'B???c Li??u', 'bac-lieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (125, 0, 'B???c Ninh', 'bac-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (126, 0, 'B???n Tre', 'ben-tre', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (127, 0, 'B??nh ?????nh', 'binh-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (128, 124, 'Huy???n ????ng H???i', 'huyen-dong-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (129, 124, 'Huy???n Gi?? Rai', 'huyen-gia-rai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (130, 124, 'Huy???n H??a B??nh', 'huyen-hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (131, 124, 'Huy???n H???ng D??n', 'huyen-hong-dan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (132, 124, 'Huy???n Ph?????c Long', 'huyen-phuoc-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (133, 124, 'Huy???n V??nh L???i', 'huyen-vinh-loi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (134, 124, 'Th??nh Ph??? B???c Li??u', 'thanh-pho-bac-lieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (135, 125, 'Huy???n Gia B??nh', 'huyen-gia-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (136, 125, 'Huy???n L????ng T??i', 'huyen-luong-tai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (137, 125, 'Huy???n Qu??? V??', 'huyen-que-vo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (138, 125, 'Huy???n Thu???n Th??nh', 'huyen-thuan-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (139, 125, 'Huy???n Ti??n Du', 'huyen-tien-du', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (140, 125, 'Huy???n Y??n Phong', 'huyen-yen-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (141, 125, 'Th??nh ph??? B???c Ninh', 'thanh-pho-bac-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (142, 125, 'Th??? x?? T??? S??n', 'thi-xa-tu-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (143, 126, 'Huy???n Ba Tri', 'huyen-ba-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (144, 126, 'Huy???n B??nh ?????i', 'huyen-binh-dai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (145, 126, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (146, 126, 'Huy???n Ch??? L??ch', 'huyen-cho-lach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (147, 126, 'Huy???n Gi???ng Tr??m', 'huyen-giong-trom', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (148, 126, 'Huy???n M??? C??y B???c', 'huyen-mo-cay-bac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (149, 126, 'Huy???n M??? C??y Nam', 'huyen-mo-cay-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (150, 126, 'Huy???n Th???nh Ph??', 'huyen-thanh-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (151, 126, 'Th??nh ph??? B???n Tre', 'thanh-pho-ben-tre', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (152, 127, 'Huy???n An L??o', 'huyen-an-lao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (153, 127, 'Huy???n An Nh??n', 'huyen-an-nhon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (154, 127, 'Huy???n Ho??i ??n', 'huyen-hoai-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (155, 127, 'Huy???n Ho??i Nh??n', 'huyen-hoai-nhon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (156, 127, 'Huy???n Ph?? M???', 'huyen-phu-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (157, 127, 'Huy???n Ph?? C??t', 'huyen-phu-cat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (158, 127, 'Huy???n T??y S??n', 'huyen-tay-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (159, 127, 'Huy???n Tuy Ph?????c', 'huyen-tuy-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (160, 127, 'Huy???n V??n Canh', 'huyen-van-canh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (161, 127, 'Huy???n V??nh Th???nh', 'huyen-vinh-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (162, 127, 'Th??nh ph??? Quy Nh??n', 'thanh-pho-quy-nhon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (163, 82, 'Huy???n B???n C??t', 'huyen-ben-cat', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (164, 82, 'Huy???n D???u Ti???ng', 'huyen-dau-tieng', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (165, 82, 'Huy???n D?? An', 'huyen-di-an', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (166, 82, 'Huy???n Ph?? Gi??o', 'huyen-phu-giao', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (167, 82, 'Huy???n T??n Uy??n', 'huyen-tan-uyen', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (168, 82, 'Huy???n Thu???n An', 'huyen-thuan-an', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (169, 82, 'Th??? x?? Th??? D???u M???t', 'thi-xa-thu-dau-mot', 0, 0, '0.0', 0);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (170, 83, 'Huy???n B?? ????ng', 'huyen-bu-dang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (171, 83, 'Huy???n B?? ?????p', 'huyen-bu-dop', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (172, 83, 'Huy???n B?? Gia M???p', 'huyen-bu-gia-map', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (173, 83, 'Huy???n Ch??n Th??nh', 'huyen-chon-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (174, 83, 'Huy???n ?????ng Ph??', 'huyen-dong-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (175, 83, 'Huy???n H???n Qu???n', 'huyen-hon-quan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (176, 83, 'Huy???n L???c Ninh', 'huyen-loc-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (177, 83, 'Th??? x?? B??nh Long', 'thi-xa-binh-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (178, 83, 'Th??? x?? ?????ng Xo??i', 'thi-xa-dong-xoai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (179, 83, 'Th??? x?? Ph?????c Long', 'thi-xa-phuoc-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (180, 84, 'Huy???n ?????c Linh', 'huyen-duc-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (181, 84, 'Huy???n B???c B??nh', 'huyen-bac-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (182, 84, 'Huy???n H??m T??n', 'huyen-ham-tan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (183, 84, 'Huy???n H??m Thu???n B???c', 'huyen-ham-thuan-bac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (184, 84, 'Huy???n H??m Thu???n Nam', 'huyen-ham-thuan-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (185, 84, 'Huy???n Ph?? Q??i', 'huyen-phu-qui', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (186, 84, 'Huy???n T??nh Linh', 'huyen-tanh-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (187, 84, 'Huy???n Tuy Phong', 'huyen-tuy-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (188, 84, 'Th??nh ph??? Phan Thi???t', 'thanh-pho-phan-thiet', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (189, 84, 'Th??? x?? La Gi', 'thi-xa-la-gi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (190, 0, 'Cao B???ng', 'cao-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (191, 0, 'C?? Mau', 'ca-mau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (192, 0, '?????k L???k', 'dak-lak', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (193, 0, '?????k N??ng', 'dak-nong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (194, 0, '??i???n Bi??n', 'dien-bien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (195, 0, '?????ng Nai', 'dong-nai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (196, 0, '?????ng Th??p', 'dong-thap', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (197, 0, 'Gia Lai', 'gia-lai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (198, 0, 'H?? Giang', 'ha-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (199, 0, 'H?? Nam', 'ha-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (200, 0, 'H?? T??nh', 'ha-tinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (201, 0, 'H???i D????ng', 'hai-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (202, 0, 'H???u Giang', 'hau-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (203, 0, 'H??a B??nh', 'hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (204, 0, 'H??ng Y??n', 'hung-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (205, 0, 'Kh??nh H??a', 'khanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (206, 0, 'Ki??n Giang', 'kien-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (207, 0, 'Kon Tum', 'kon-tum', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (208, 0, 'Lai Ch??u', 'lai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (209, 0, 'L??m ?????ng', 'lam-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (210, 0, 'L???ng S??n', 'lang-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (211, 0, 'L??o Cai', 'lao-cai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (212, 0, 'Long An', 'long-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (213, 0, 'Nam ?????nh', 'nam-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (214, 0, 'Ngh??? An', 'nghe-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (215, 0, 'Ninh B??nh', 'ninh-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (216, 0, 'Ninh Thu???n', 'ninh-thuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (217, 0, 'Ph?? Th???', 'phu-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (218, 0, 'Ph?? Y??n', 'phu-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (219, 0, 'Qu???ng B??nh', 'quang-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (220, 0, 'Qu???ng Nam', 'quang-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (221, 0, 'Qu???ng Ng??i', 'quang-ngai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (222, 0, 'Qu???ng Ninh', 'quang-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (223, 0, 'Qu???ng Tr???', 'quang-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (224, 0, 'S??c Tr??ng', 'soc-trang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (225, 0, 'S??n La', 'son-la', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (226, 0, 'T??y Ninh', 'tay-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (227, 0, 'Th??i B??nh', 'thai-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (228, 0, 'Th??i Nguy??n', 'thai-nguyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (229, 0, 'Thanh H??a', 'thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (230, 0, 'Th???a Thi??n Hu???', 'thua-thien-hue', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (231, 0, 'Ti???n Giang', 'tien-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (232, 0, 'Tr?? Vinh', 'tra-vinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (233, 0, 'Tuy??n Quang', 'tuyen-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (234, 0, 'V??nh Long', 'vinh-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (235, 0, 'V??nh Ph??c', 'vinh-phuc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (236, 0, 'Y??n B??i', 'yen-bai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (237, 0, 'TP. C???n Th??', 'tp-can-tho', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (238, 0, 'TP. ???? N???ng', 'tp-da-nang', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (239, 0, 'H???i Ph??ng', 'hai-phong', 0, 1, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (240, 191, 'Huy???n C??i N?????c', 'huyen-cai-nuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (241, 191, 'Huy???n ?????m D??i', 'huyen-dam-doi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (242, 191, 'Huy???n N??m C??n', 'huyen-nam-can', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (243, 191, 'Huy???n Ng???c Hi???n', 'huyen-ngoc-hien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (244, 191, 'Huy???n Ph?? T??n', 'huyen-phu-tan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (245, 191, 'Huy???n Th???i B??nh', 'huyen-thoi-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (246, 191, 'Huy???n Tr???n V??n Th???i', 'huyen-tran-van-thoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (247, 191, 'Huy???n U Minh', 'huyen-u-minh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (248, 191, 'Th??nh ph??? C?? Mau', 'thanh-pho-ca-mau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (249, 190, 'Huy???n B???o L???c', 'huyen-bao-lac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (250, 190, 'Huy???n B???o L??m', 'huyen-bao-lam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (251, 190, 'Huy???n H??? Lang', 'huyen-ha-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (252, 190, 'Huy???n H?? Qu???ng', 'huyen-ha-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (253, 190, 'Huy???n H??a An', 'huyen-hoa-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (254, 190, 'Huy???n Nguy??n B??nh', 'huyen-nguyen-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (255, 190, 'Huy???n Ph???c H??a', 'huyen-phuc-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (256, 190, 'Huy???n Qu???ng Uy??n', 'huyen-quang-uyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (257, 190, 'Huy???n Th???ch An', 'huyen-thach-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (258, 190, 'Huy???n Th??ng N??ng', 'huyen-thong-nong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (259, 190, 'Huy???n Tr?? L??nh', 'huyen-tra-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (260, 190, 'Huy???n Tr??ng Kh??nh', 'huyen-trung-khanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (261, 190, 'Th??? x?? Cao B???ng', 'thi-xa-cao-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (262, 192, 'Huy???n Bu??n ????n', 'huyen-buon-don', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (263, 192, 'Huy???n C?? Kuin', 'huyen-cu-kuin', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (264, 192, 'Huy???n C?? MGar', 'huyen-cu-mgar', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (265, 192, 'Huy???n Ea Kar', 'huyen-ea-kar', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (266, 192, 'Huy???n Ea S??p', 'huyen-ea-sup', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (267, 192, 'Huy???n EaHLeo', 'huyen-eahleo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (268, 192, 'Huy???n Kr??ng Ana', 'huyen-krong-ana', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (269, 192, 'Huy???n Kr??ng B??ng', 'huyen-krong-bong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (270, 192, 'Huy???n Kr??ng B??k', 'huyen-krong-buk', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (271, 192, 'Huy???n Kr??ng N??ng', 'huyen-krong-nang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (272, 192, 'Huy???n Kr??ng P???c', 'huyen-krong-pac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (273, 192, 'Huy???n L???k', 'huyen-lak', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (274, 192, 'Huy???n MDr???k', 'huyen-mdrak', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (275, 192, 'Th??nh ph??? Bu??n Ma Thu???t', 'thanh-pho-buon-ma-thuot', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (276, 192, 'Th??? x?? Bu??n H???', 'thi-xa-buon-ho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (277, 193, 'Huy???n C?? J??t', 'huyen-cu-jut', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (278, 193, 'Huy???n ?????k GLong', 'huyen-dak-glong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (279, 193, 'Huy???n ?????k Mil', 'huyen-dak-mil', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (280, 193, 'Huy???n ?????k RL???p', 'huyen-dak-rlap', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (281, 193, 'Huy???n ?????k Song', 'huyen-dak-song', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (282, 193, 'Huy???n KR??ng N??', 'huyen-krong-no', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (283, 193, 'Huy???n Tuy ?????c', 'huyen-tuy-duc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (284, 193, 'Th??? x?? Gia Ngh??a', 'thi-xa-gia-nghia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (285, 194, 'Huy???n ??i???n Bi??n', 'huyen-dien-bien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (286, 194, 'Huy???n ??i???n Bi??n ????ng', 'huyen-dien-bien-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (287, 194, 'Huy???n M?????ng Ch??', 'huyen-muong-cha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (288, 194, 'Huy???n M????ng Nh??', 'huyen-muong-nhe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (289, 194, 'Huy???n M?????ng ???ng', 'huyen-muong-ang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (290, 194, 'Huy???n T???a Ch??a', 'huyen-tua-chua', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (291, 194, 'Huy???n Tu???n Gi??o', 'huyen-tuan-giao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (292, 194, 'Th??nh ph??? ??i???n Bi??n ph???', 'thanh-pho-dien-bien-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (293, 194, 'Th??? x?? M?????ng Lay', 'thi-xa-muong-lay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (294, 195, 'Huy???n C???m M???', 'huyen-cam-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (295, 195, 'Huy???n ?????nh Qu??n', 'huyen-dinh-quan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (296, 195, 'Huy???n Long Th??nh', 'huyen-long-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (297, 195, 'Huy???n Nh??n Tr???ch', 'huyen-nhon-trach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (298, 195, 'Huy???n T??n Ph??', 'huyen-tan-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (299, 195, 'Huy???n Th???ng Nh???t', 'huyen-thong-nhat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (300, 195, 'Huy???n Tr???ng Bom', 'huyen-trang-bom', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (301, 195, 'Huy???n V??nh C???u', 'huyen-vinh-cuu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (302, 195, 'Huy???n Xu??n L???c', 'huyen-xuan-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (303, 195, 'Th??nh ph??? Bi??n H??a', 'thanh-pho-bien-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (304, 195, 'Th??? x?? Long Kh??nh', 'thi-xa-long-khanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (305, 196, 'Huy???n Cao L??nh', 'huyen-cao-lanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (306, 196, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (307, 196, 'Huy???n H???ng Ng???', 'huyen-hong-ngu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (308, 196, 'Huy???n Lai Vung', 'huyen-lai-vung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (309, 196, 'Huy???n L???p V??', 'huyen-lap-vo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (310, 196, 'Huy???n Tam N??ng', 'huyen-tam-nong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (311, 196, 'Huy???n T??n H???ng', 'huyen-tan-hong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (312, 196, 'Huy???n Thanh B??nh', 'huyen-thanh-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (313, 196, 'Huy???n Th??p M?????i', 'huyen-thap-muoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (314, 196, 'Th??nh ph??? Cao L??nh', 'thanh-pho-cao-lanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (315, 196, 'Th??? x?? H???ng Ng???', 'thi-xa-hong-ngu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (316, 196, 'Th??? x?? Sa ????c', 'thi-xa-sa-dec', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (317, 197, 'Huy???n Ch?? P??h', 'huyen-chu-pah', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (318, 197, 'Huy???n Ch?? P??h', 'huyen-chu-puh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (319, 197, 'Huy???n Ch?? S??', 'huyen-chu-se', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (320, 197, 'Huy???n Ch??PR??ng', 'huyen-chuprong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (321, 197, 'Huy???n ????k ??oa', 'huyen-dak-doa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (322, 197, 'Huy???n ????k P??', 'huyen-dak-po', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (323, 197, 'Huy???n ?????c C??', 'huyen-duc-co', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (324, 197, 'Huy???n Ia Grai', 'huyen-ia-grai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (325, 197, 'Huy???n KBang', 'huyen-kbang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (326, 197, 'Huy???n Ia Pa', 'huyen-ia-pa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (327, 197, 'Huy???n K??ng Chro', 'huyen-kong-chro', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (328, 197, 'Huy???n Kr??ng Pa', 'huyen-krong-pa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (329, 197, 'Huy???n Mang Yang', 'huyen-mang-yang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (330, 197, 'Huy???n Ph?? Thi???n', 'huyen-phu-thien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (331, 197, 'Th??nh ph??? Plei Ku', 'thanh-pho-plei-ku', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (332, 197, 'Th??? x?? AYun Pa', 'thi-xa-ayun-pa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (333, 197, 'Th??? x?? An Kh??', 'thi-xa-an-khe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (334, 198, 'Huy???n B???c M??', 'huyen-bac-me', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (335, 198, 'Huy???n B???c Quang', 'huyen-bac-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (336, 198, 'Huy???n ?????ng V??n', 'huyen-dong-van', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (337, 198, 'Huy???n Ho??ng Su Ph??', 'huyen-hoang-su-phi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (338, 198, 'Huy???n M??o V???c', 'huyen-meo-vac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (339, 198, 'Huy???n Qu???n B???', 'huyen-quan-ba', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (340, 198, 'Huy???n Quang B??nh', 'huyen-quang-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (341, 198, 'Huy???n V??? Xuy??n', 'huyen-vi-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (342, 198, 'Huy???n X??n M???n', 'huyen-xin-man', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (343, 198, 'Huy???n Y??n Minh', 'huyen-yen-minh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (344, 198, 'Th??nh Ph??? H?? Giang', 'thanh-pho-ha-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (345, 199, 'Huy???n B??nh L???c', 'huyen-binh-luc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (346, 199, 'Huy???n Duy Ti??n', 'huyen-duy-tien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (347, 199, 'Huy???n Kim B???ng', 'huyen-kim-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (348, 199, 'Huy???n L?? Nh??n', 'huyen-ly-nhan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (349, 199, 'Huy???n Thanh Li??m', 'huyen-thanh-liem', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (350, 199, 'Th??nh ph??? Ph??? L??', 'thanh-pho-phu-ly', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (351, 200, 'Huy???n C???m Xuy??n', 'huyen-cam-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (352, 200, 'Huy???n Can L???c', 'huyen-can-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (353, 200, 'Huy???n ?????c Th???', 'huyen-duc-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (354, 200, 'Huy???n H????ng Kh??', 'huyen-huong-khe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (355, 200, 'Huy???n H????ng S??n', 'huyen-huong-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (356, 200, 'Huy???n K??? Anh', 'huyen-ky-anh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (357, 200, 'Huy???n L???c H??', 'huyen-loc-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (358, 200, 'Huy???n Nghi Xu??n', 'huyen-nghi-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (359, 200, 'Huy???n Th???ch H??', 'huyen-thach-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (360, 200, 'Huy???n V?? Quang', 'huyen-vu-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (361, 200, 'Th??nh ph??? H?? T??nh', 'thanh-pho-ha-tinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (362, 200, 'Th??? x?? H???ng L??nh', 'thi-xa-hong-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (363, 201, 'Huy???n B??nh Giang', 'huyen-binh-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (364, 201, 'Huy???n C???m Gi??ng', 'huyen-cam-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (365, 201, 'Huy???n Gia L???c', 'huyen-gia-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (366, 201, 'Huy???n Kim Th??nh', 'huyen-kim-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (367, 201, 'Huy???n Kinh M??n', 'huyen-kinh-mon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (368, 201, 'Huy???n Nam S??ch', 'huyen-nam-sach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (369, 201, 'Huy???n Ninh Giang', 'huyen-ninh-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (370, 201, 'Huy???n Thanh H??', 'huyen-thanh-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (371, 201, 'Huy???n Thanh Mi???n', 'huyen-thanh-mien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (372, 201, 'Huy???n T??? K???', 'huyen-tu-ky', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (373, 201, 'Th??nh ph??? H???i D????ng', 'thanh-pho-hai-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (374, 201, 'Th??? x?? Ch?? Linh', 'thi-xa-chi-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (375, 203, 'Huy???n Cao Phong', 'huyen-cao-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (376, 203, 'Huy???n ???? B???c', 'huyen-da-bac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (377, 203, 'Huy???n Kim B??i', 'huyen-kim-boi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (378, 203, 'Huy???n K??? S??n', 'huyen-ky-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (379, 203, 'Huy???n L???c S??n', 'huyen-lac-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (380, 203, 'Huy???n L???c Th???y', 'huyen-lac-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (381, 203, 'Huy???n L????ng S??n', 'huyen-luong-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (382, 203, 'Huy???n Mai Ch??u', 'huyen-mai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (383, 203, 'Huy???n T??n L???c', 'huyen-tan-lac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (384, 203, 'Huy???n Y??n Th???y', 'huyen-yen-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (385, 203, 'Th??nh ph??? H??a B??nh', 'thanh-pho-hoa-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (386, 204, 'Huy???n ??n Thi', 'huyen-an-thi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (387, 204, 'Huy???n Kho??i Ch??u', 'huyen-khoai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (388, 204, 'Huy???n Kim ?????ng', 'huyen-kim-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (389, 204, 'Huy???n M??? H??o', 'huyen-my-hao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (390, 204, 'Huy???n Ph?? C???', 'huyen-phu-cu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (391, 204, 'Huy???n Ti??n L???', 'huyen-tien-lu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (392, 204, 'Huy???n V??n Giang', 'huyen-van-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (393, 204, 'Huy???n V??n L??m', 'huyen-van-lam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (394, 204, 'Huy???n Y??n M???', 'huyen-yen-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (395, 204, 'Th??nh ph??? H??ng Y??n', 'thanh-pho-hung-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (396, 205, 'Huy???n Cam L??m', 'huyen-cam-lam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (397, 205, 'Huy???n Di??n Kh??nh', 'huyen-dien-khanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (398, 205, 'Huy???n Kh??nh S??n', 'huyen-khanh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (399, 205, 'Huy???n Kh??nh V??nh', 'huyen-khanh-vinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (400, 205, 'Huy???n Ninh H??a', 'huyen-ninh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (401, 205, 'Huy???n Tr?????ng Sa', 'huyen-truong-sa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (402, 205, 'Huy???n V???n Ninh', 'huyen-van-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (403, 205, 'Th??nh ph??? Nha Trang', 'thanh-pho-nha-trang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (404, 205, 'Th??? x?? Cam Ranh', 'thi-xa-cam-ranh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (405, 202, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (406, 202, 'Huy???n Ch??u Th??nh A', 'huyen-chau-thanh-a', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (407, 202, 'Huy???n Long M???', 'huyen-long-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (408, 202, 'Huy???n Ph???ng Hi???p', 'huyen-phung-hiep', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (409, 202, 'Huy???n V??? Th???y', 'huyen-vi-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (410, 202, 'Th??nh Ph??? V??? Thanh', 'thanh-pho-vi-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (411, 202, 'Th??? x?? Ng?? B???y', 'thi-xa-nga-bay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (412, 206, 'Huy???n An Bi??n', 'huyen-an-bien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (413, 206, 'Huy???n An Minh', 'huyen-an-minh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (414, 206, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (415, 206, 'Huy???n Giang Th??nh', 'huyen-giang-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (416, 206, 'Huy???n Gi???ng Ri???ng', 'huyen-giong-rieng', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (417, 206, 'Huy???n G?? Quao', 'huyen-go-quao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (418, 206, 'Huy???n H??n ?????t', 'huyen-hon-dat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (419, 206, 'Huy???n Ki??n H???i', 'huyen-kien-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (420, 206, 'Huy???n Ki??n L????ng', 'huyen-kien-luong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (421, 206, 'Huy???n Ph?? Qu???c', 'huyen-phu-quoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (422, 206, 'Huy???n T??n Hi???p', 'huyen-tan-hiep', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (423, 206, 'Huy???n U Minh Th?????ng', 'huyen-u-minh-thuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (424, 206, 'Huy???n V??nh Thu???n', 'huyen-vinh-thuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (425, 206, 'Th??nh ph??? R???ch Gi??', 'thanh-pho-rach-gia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (426, 206, 'Th??? x?? H?? Ti??n', 'thi-xa-ha-tien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (427, 207, 'Huy???n ?????k Glei', 'huyen-dak-glei', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (428, 207, 'Huy???n ?????k H??', 'huyen-dak-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (429, 207, 'Huy???n ?????k T??', 'huyen-dak-to', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (430, 207, 'Huy???n Kon Pl??ng', 'huyen-kon-plong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (431, 207, 'Huy???n Kon R???y', 'huyen-kon-ray', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (432, 207, 'Huy???n Ng???c H???i', 'huyen-ngoc-hoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (433, 207, 'Huy???n Sa Th???y', 'huyen-sa-thay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (434, 207, 'Huy???n Tu M?? R??ng', 'huyen-tu-mo-rong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (435, 207, 'Th??nh ph??? Kon Tum', 'thanh-pho-kon-tum', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (436, 208, 'Huy???n M?????ng T??', 'huyen-muong-te', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (437, 208, 'Huy???n Phong Th???', 'huyen-phong-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (438, 208, 'Huy???n S??n H???', 'huyen-sin-ho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (439, 208, 'Huy???n Tam ???????ng', 'huyen-tam-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (440, 208, 'Huy???n T??n Uy??n', 'huyen-tan-uyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (441, 208, 'Huy???n Than Uy??n', 'huyen-than-uyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (442, 208, 'Th??? x?? Lai Ch??u', 'thi-xa-lai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (443, 209, 'Huy???n B???o L??m', 'huyen-bao-lam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (444, 209, 'Huy???n C??t Ti??n', 'huyen-cat-tien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (445, 209, 'Huy???n ????? Huoai', 'huyen-da-huoai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (446, 209, 'Huy???n ????? T???h', 'huyen-da-teh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (447, 209, 'Huy???n ??am R??ng', 'huyen-dam-rong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (448, 209, 'Huy???n Di Linh', 'huyen-di-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (449, 209, 'Huy???n ????n D????ng', 'huyen-don-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (450, 209, 'Huy???n ?????c Tr???ng', 'huyen-duc-trong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (451, 209, 'Huy???n L???c D????ng', 'huyen-lac-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (452, 209, 'Huy???n L??m H??', 'huyen-lam-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (453, 209, 'Th??nh ph??? B???o L???c', 'thanh-pho-bao-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (454, 209, 'Th??nh ph??? ???? L???t', 'thanh-pho-da-lat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (455, 210, 'Huy???n B???c S??n', 'huyen-bac-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (456, 210, 'Huy???n B??nh Gia', 'huyen-binh-gia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (457, 210, 'Huy???n Cao L???c', 'huyen-cao-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (458, 210, 'Huy???n Chi L??ng', 'huyen-chi-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (459, 210, 'Huy???n ????nh L???p', 'huyen-dinh-lap', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (460, 210, 'Huy???n H???u L??ng', 'huyen-huu-lung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (461, 210, 'Huy???n L???c B??nh', 'huyen-loc-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (462, 210, 'Huy???n Tr??ng ?????nh', 'huyen-trang-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (463, 210, 'Huy???n V??n L??ng', 'huyen-van-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (464, 210, 'Huy???n V??n Quan', 'huyen-van-quan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (465, 210, 'Th??nh ph??? L???ng S??n', 'thanh-pho-lang-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (466, 211, 'Huy???n B???c H??', 'huyen-bac-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (467, 211, 'Huy???n B???o Th???ng', 'huyen-bao-thang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (468, 211, 'Huy???n B???o Y??n', 'huyen-bao-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (469, 211, 'Huy???n B??t X??t', 'huyen-bat-xat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (470, 211, 'Huy???n M?????ng Kh????ng', 'huyen-muong-khuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (471, 211, 'Huy???n Sa Pa', 'huyen-sa-pa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (472, 211, 'Huy???n Si Ma Cai', 'huyen-si-ma-cai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (473, 211, 'Huy???n V??n B??n', 'huyen-van-ban', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (474, 211, 'Th??nh ph??? L??o Cai', 'thanh-pho-lao-cai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (475, 212, 'Huy???n B???n L???c', 'huyen-ben-luc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (476, 212, 'Huy???n C???n ???????c', 'huyen-can-duoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (477, 212, 'Huy???n C???n Giu???c', 'huyen-can-giuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (478, 212, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (479, 212, 'Huy???n ?????c H??a', 'huyen-duc-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (480, 212, 'Huy???n ?????c Hu???', 'huyen-duc-hue', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (481, 212, 'Huy???n M???c H??a', 'huyen-moc-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (482, 212, 'Huy???n T??n H??ng', 'huyen-tan-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (483, 212, 'Huy???n T??n Th???nh', 'huyen-tan-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (484, 212, 'Huy???n T??n Tr???', 'huyen-tan-tru', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (485, 212, 'Huy???n Th???nh H??a', 'huyen-thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (486, 212, 'Huy???n Th??? Th???a', 'huyen-thu-thua', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (487, 212, 'Huy???n V??nh H??ng', 'huyen-vinh-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (488, 212, 'Th??nh ph??? T??n An', 'thanh-pho-tan-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (489, 213, 'Huy???n Giao Th???y', 'huyen-giao-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (490, 213, 'Huy???n H???i H???u', 'huyen-hai-hau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (491, 213, 'Huy???n M??? L???c', 'huyen-my-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (492, 213, 'Huy???n Nam Tr???c', 'huyen-nam-truc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (493, 213, 'Huy???n Ngh??a H??ng', 'huyen-nghia-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (494, 213, 'Huy???n Tr???c Ninh', 'huyen-truc-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (495, 213, 'Huy???n V??? B???n', 'huyen-vu-ban', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (496, 213, 'Huy???n Xu??n Tr?????ng', 'huyen-xuan-truong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (497, 213, 'Huy???n ?? Y??n', 'huyen-y-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (498, 213, 'Th??nh ph??? Nam ?????nh', 'thanh-pho-nam-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (499, 214, 'Huy???n Anh S??n', 'huyen-anh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (500, 214, 'Huy???n Con Cu??ng', 'huyen-con-cuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (501, 214, 'Huy???n Di???n Ch??u', 'huyen-dien-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (502, 214, 'Huy???n ???? L????ng', 'huyen-do-luong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (503, 214, 'Huy???n H??ng Nguy??n', 'huyen-hung-nguyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (504, 214, 'Huy???n K??? S??n', 'huyen-ky-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (505, 214, 'Huy???n Nam ????n', 'huyen-nam-dan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (506, 214, 'Huy???n Nghi L???c', 'huyen-nghi-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (507, 214, 'Huy???n Ngh??a ????n', 'huyen-nghia-dan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (508, 214, 'Huy???n Qu??? Phong', 'huyen-que-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (509, 214, 'Huy???n Qu??? Ch??u', 'huyen-quy-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (510, 214, 'Huy???n Qu??? H???p', 'huyen-quy-hop', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (511, 214, 'Huy???n Qu???nh L??u', 'huyen-quynh-luu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (512, 214, 'Huy???n T??n K???', 'huyen-tan-ky', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (513, 214, 'Huy???n Thanh Ch????ng', 'huyen-thanh-chuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (514, 214, 'Huy???n T????ng D????ng', 'huyen-tuong-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (515, 214, 'Huy???n Y??n Th??nh', 'huyen-yen-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (516, 214, 'Th??nh ph??? Vinh', 'thanh-pho-vinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (517, 214, 'Th??? x?? C???a L??', 'thi-xa-cua-lo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (518, 214, 'Th??? x?? Th??i H??a', 'thi-xa-thai-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (519, 215, 'Huy???n Gia Vi???n', 'huyen-gia-vien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (520, 215, 'Huy???n Hoa L??', 'huyen-hoa-lu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (521, 215, 'Huy???n Kim S??n', 'huyen-kim-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (522, 215, 'Huy???n Nho Quan', 'huyen-nho-quan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (523, 215, 'Huy???n Y??n Kh??nh', 'huyen-yen-khanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (524, 215, 'Huy???n Y??n M??', 'huyen-yen-mo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (525, 215, 'Th??nh ph??? Ninh B??nh', 'thanh-pho-ninh-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (526, 215, 'Th??? x?? Tam ??i???p', 'thi-xa-tam-diep', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (527, 216, 'Huy??n B??c ??i', 'huyen-bac-ai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (528, 216, 'Huy???n Ninh H???i', 'huyen-ninh-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (529, 216, 'Huy???n Ninh Ph?????c', 'huyen-ninh-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (530, 216, 'Huy???n Ninh S??n', 'huyen-ninh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (531, 216, 'Huy???n Thu???n B???c', 'huyen-thuan-bac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (532, 216, 'Huy???n Thu???n Nam', 'huyen-thuan-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (533, 216, 'Th??nh ph??? Phan Rang-Th??p Ch??m', 'thanh-pho-phan-rang-thap-cham', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (534, 217, 'Huy???n C???m Kh??', 'huyen-cam-khe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (535, 217, 'Huy???n ??oan H??ng', 'huyen-doan-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (536, 217, 'Huy???n H??? H??a', 'huyen-ha-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (537, 217, 'Huy???n L??m Thao', 'huyen-lam-thao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (538, 217, 'Huy???n Ph?? Ninh', 'huyen-phu-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (539, 217, 'Huy???n Tam N??ng', 'huyen-tam-nong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (540, 217, 'Huy???n T??n S??n', 'huyen-tan-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (541, 217, 'Huy???n Thanh Ba', 'huyen-thanh-ba', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (542, 217, 'Huy???n Thanh S??n', 'huyen-thanh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (543, 217, 'Huy???n Thanh Th???y', 'huyen-thanh-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (544, 217, 'Huy???n Y??n L???p', 'huyen-yen-lap', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (545, 217, 'Th??nh ph??? Vi???t Tr??', 'thanh-pho-viet-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (546, 217, 'Th??? x?? Ph?? Th???', 'thi-xa-phu-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (547, 218, 'Huy???n ????ng H??a', 'huyen-dong-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (548, 218, 'Huy???n ?????ng Xu??n', 'huyen-dong-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (549, 218, 'Huy???n Ph?? H??a', 'huyen-phu-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (550, 218, 'Huy???n S??n H??a', 'huyen-son-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (551, 218, 'Huy???n S??ng Hinh', 'huyen-song-hinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (552, 218, 'Huy???n T??y H??a', 'huyen-tay-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (553, 218, 'Huy???n Tuy An', 'huyen-tuy-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (554, 218, 'Th??nh ph??? Tuy H??a', 'thanh-pho-tuy-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (555, 218, 'Th??? x?? S??ng C???u', 'thi-xa-song-cau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (556, 239, 'Huy???n An D????ng', 'huyen-an-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (557, 239, 'Huy???n An L??o', 'huyen-an-lao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (558, 239, 'Huy???n B???ch Long V??', 'huyen-bach-long-vi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (559, 239, 'Huy???n C??t H???i', 'huyen-cat-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (560, 239, 'Huy???n Ki???n Th???y', 'huyen-kien-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (561, 239, 'Huy???n Th???y Nguy??n', 'huyen-thuy-nguyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (562, 239, 'Huy???n Ti??n L??ng', 'huyen-tien-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (563, 239, 'Huy???n V??nh B???o', 'huyen-vinh-bao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (564, 239, 'Qu???n ????? S??n', 'quan-do-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (565, 239, 'Qu???n D????ng Kinh', 'quan-duong-kinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (566, 239, 'Qu???n H???i An', 'quan-hai-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (567, 239, 'Qu???n H???ng B??ng', 'quan-hong-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (568, 239, 'Qu???n Ki???n An', 'quan-kien-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (569, 239, 'Qu???n L?? Ch??n', 'quan-le-chan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (570, 239, 'Qu???n Ng?? Quy???n', 'quan-ngo-quyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (571, 238, 'Huy???n H??a Vang', 'huyen-hoa-vang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (572, 238, 'Huy???n Ho??ng Sa', 'huyen-hoang-sa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (573, 238, 'Qu???n C???m L???', 'quan-cam-le', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (574, 238, 'Qu???n H???i Ch??u', 'quan-hai-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (575, 238, 'Qu???n Li??n Chi???u', 'quan-lien-chieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (576, 238, 'Qu???n Ng?? H??nh S??n', 'quan-ngu-hanh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (577, 238, 'Qu???n S??n Tr??', 'quan-son-tra', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (578, 238, 'Qu???n Thanh Kh??', 'quan-thanh-khe', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (579, 237, 'Huy???n C??? ?????', 'huyen-co-do', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (580, 237, 'Huy???n Phong ??i???n', 'huyen-phong-dien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (581, 237, 'Huy???n Th???i Lai', 'huyen-thoi-lai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (582, 237, 'Huy???n V??nh Th???nh', 'huyen-vinh-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (583, 237, 'Qu???n B??nh Th???y', 'quan-binh-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (584, 237, 'Qu???n C??i R??ng', 'quan-cai-rang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (585, 237, 'Qu???n Ninh Ki???u', 'quan-ninh-kieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (586, 237, 'Qu???n ?? M??n', 'quan-o-mon', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (587, 237, 'Qu???n Th???t N???t', 'quan-thot-not', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (588, 231, 'Huy???n C??i B??', 'huyen-cai-be', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (589, 231, 'Huy???n Cai L???y', 'huyen-cai-lay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (590, 231, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (591, 231, 'Huy???n Ch??? G???o', 'huyen-cho-gao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (592, 231, 'Huy???n G?? C??ng ????ng', 'huyen-go-cong-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (593, 231, 'Huy???n G?? C??ng T??y', 'huyen-go-cong-tay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (594, 231, 'Huy???n T??n Ph?? ????ng', 'huyen-tan-phu-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (595, 231, 'Huy???n T??n Ph?????c', 'huyen-tan-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (596, 231, 'Th??nh ph??? M??? Tho', 'thanh-pho-my-tho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (597, 231, 'Th??? x?? G?? C??ng', 'thi-xa-go-cong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (598, 232, 'Huy???n C??ng Long', 'huyen-cang-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (599, 232, 'Huy???n C???u K??', 'huyen-cau-ke', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (600, 232, 'Huy???n C???u Ngang', 'huyen-cau-ngang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (601, 232, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (602, 232, 'Huy???n Duy??n H???i', 'huyen-duyen-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (603, 232, 'Huy???n Ti???u C???n', 'huyen-tieu-can', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (604, 232, 'Huy???n Tr?? C??', 'huyen-tra-cu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (605, 232, 'Th??nh ph??? Tr?? Vinh', 'thanh-pho-tra-vinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (606, 234, 'Huy???n B??nh Minh', 'huyen-binh-minh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (607, 234, 'Huy???n B??nh T??n', 'huyen-binh-tan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (608, 234, 'Huy???n Long H???', 'huyen-long-ho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (609, 234, 'Huy???n Mang Th??t', 'huyen-mang-thit', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (610, 234, 'Huy???n Tam B??nh', 'huyen-tam-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (611, 234, 'Huy???n Tr?? ??n', 'huyen-tra-on', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (612, 234, 'Huy???n V??ng Li??m', 'huyen-vung-liem', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (613, 234, 'Th??nh ph??? V??nh Long', 'thanh-pho-vinh-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (614, 223, 'Huy???n Cam L???', 'huyen-cam-lo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (615, 223, 'Huy???n C???n C???', 'huyen-con-co', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (616, 223, 'Huy???n ??a Kr??ng', 'huyen-da-krong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (617, 223, 'Huy???n Gio Linh', 'huyen-gio-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (618, 223, 'Huy???n H???i L??ng', 'huyen-hai-lang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (619, 223, 'Huy???n H?????ng H??a', 'huyen-huong-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (620, 223, 'Huy???n Tri???u Phong', 'huyen-trieu-phong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (621, 223, 'Huy???n V??nh Linh', 'huyen-vinh-linh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (622, 223, 'Th??nh ph??? ????ng H??', 'thanh-pho-dong-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (623, 223, 'Th??? x?? Qu???ng Tr???', 'thi-xa-quang-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (624, 221, 'Huy???n Ba T??', 'huyen-ba-to', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (625, 221, 'Huy???n B??nh S??n', 'huyen-binh-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (626, 221, 'Huy???n ?????c Ph???', 'huyen-duc-pho', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (627, 221, 'Huy???n L?? S??n', 'huyen-ly-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (628, 221, 'Huy???n Minh Long', 'huyen-minh-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (629, 221, 'Huy???n M??? ?????c', 'huyen-mo-duc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (630, 221, 'Huy???n Ngh??a H??nh', 'huyen-nghia-hanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (631, 221, 'Huy???n S??n H??', 'huyen-son-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (632, 221, 'Huy???n S??n T??y', 'huyen-son-tay', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (633, 221, 'Huy???n S??n T???nh', 'huyen-son-tinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (634, 221, 'Huy???n T??y Tr??', 'huyen-tay-tra', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (635, 221, 'Huy???n Tr?? B???ng', 'huyen-tra-bong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (636, 221, 'Huy???n T?? Ngh??a', 'huyen-tu-nghia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (637, 221, 'Th??nh ph??? Qu???ng Ng??i', 'thanh-pho-quang-ngai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (638, 220, 'Huy???n B???c Tr?? My', 'huyen-bac-tra-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (639, 220, 'Huy???n ?????i L???c', 'huyen-dai-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (640, 220, 'Huy???n ??i???n B??n', 'huyen-dien-ban', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (641, 220, 'Huy???n ????ng Giang', 'huyen-dong-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (642, 220, 'Huy???n Duy Xuy??n', 'huyen-duy-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (643, 220, 'Huy???n Hi???p ?????c', 'huyen-hiep-duc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (644, 220, 'Huy???n Nam Giang', 'huyen-nam-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (645, 220, 'Huy???n Nam Tr?? My', 'huyen-nam-tra-my', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (646, 220, 'Huy???n N??ng S??n', 'huyen-nong-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (647, 220, 'Huy???n N??i Th??nh', 'huyen-nui-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (648, 220, 'Huy???n Ph?? Ninh', 'huyen-phu-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (649, 220, 'Huy???n Ph?????c S??n', 'huyen-phuoc-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (650, 220, 'Huy???n Qu??? S??n', 'huyen-que-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (651, 220, 'Huy???n T??y Giang', 'huyen-tay-giang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (652, 220, 'Huy???n Th??ng B??nh', 'huyen-thang-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (653, 220, 'Huy???n Ti??n Ph?????c', 'huyen-tien-phuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (654, 220, 'Th??nh ph??? H???i An', 'thanh-pho-hoi-an', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (655, 220, 'Th??nh ph??? Tam K???', 'thanh-pho-tam-ky', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (656, 219, 'Huy???n B??? Tr???ch', 'huyen-bo-trach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (657, 219, 'Huy???n L??? Th???y', 'huyen-le-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (658, 219, 'Huy???n Minh Ho??', 'huyen-minh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (659, 219, 'Huy???n Qu???ng Ninh', 'huyen-quang-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (660, 219, 'Huy???n Qu???ng Tr???ch', 'huyen-quang-trach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (661, 219, 'Huy???n Tuy??n Ho??', 'huyen-tuyen-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (662, 219, 'Th??nh ph??? ?????ng H???i', 'thanh-pho-dong-hoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (663, 230, 'Huy???n A L?????i', 'huyen-a-luoi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (664, 230, 'Huy???n H????ng Tr??', 'huyen-huong-tra', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (665, 230, 'Huy???n Nam D??ng', 'huyen-nam-dong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (666, 230, 'Huy???n Phong ??i???n', 'huyen-phong-dien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (667, 230, 'Huy???n Ph?? L???c', 'huyen-phu-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (668, 230, 'Huy???n Ph?? Vang', 'huyen-phu-vang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (669, 230, 'Huy???n Qu???ng ??i???n', 'huyen-quang-dien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (670, 230, 'Th??nh ph??? Hu???', 'thanh-pho-hue', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (671, 230, 'Th??? x?? H????ng Th???y', 'thi-xa-huong-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (672, 226, 'Huy???n B???n C???u', 'huyen-ben-cau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (673, 226, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (674, 226, 'Huy???n D????ng Minh Ch??u', 'huyen-duong-minh-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (675, 226, 'Huy???n G?? D???u', 'huyen-go-dau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (676, 226, 'Huy???n H??a Th??nh', 'huyen-hoa-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (677, 226, 'Huy???n T??n Bi??n', 'huyen-tan-bien', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (678, 226, 'Huy???n T??n Ch??u', 'huyen-tan-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (679, 226, 'Huy???n Tr???ng B??ng', 'huyen-trang-bang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (680, 226, 'Th??? x?? T??y Ninh', 'thi-xa-tay-ninh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (681, 222, 'Huy???n Ba Ch???', 'huyen-ba-che', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (682, 222, 'Huy???n B??nh Li??u', 'huyen-binh-lieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (683, 222, 'Huy???n C?? T??', 'huyen-co-to', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (684, 222, 'Huy???n ?????m H??', 'huyen-dam-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (685, 222, 'Huy???n ????ng Tri???u', 'huyen-dong-trieu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (686, 222, 'Huy???n H???i H??', 'huyen-hai-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (687, 222, 'Huy???n Ho??nh B???', 'huyen-hoanh-bo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (688, 222, 'Huy???n Ti??n Y??n', 'huyen-tien-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (689, 222, 'Huy???n V??n ?????n', 'huyen-van-don', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (690, 222, 'Huy???n Y??n H??ng', 'huyen-yen-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (691, 222, 'Th??nh ph??? H??? Long', 'thanh-pho-ha-long', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (692, 222, 'Th??nh ph??? M??ng C??i', 'thanh-pho-mong-cai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (693, 222, 'Th??? x?? C???m Ph???', 'thi-xa-cam-pha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (694, 222, 'Th??? x?? U??ng B??', 'thi-xa-uong-bi', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (695, 224, 'Huy???n Ch??u Th??nh', 'huyen-chau-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (696, 224, 'Huy???n C?? Lao Dung', 'huyen-cu-lao-dung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (697, 224, 'Huy???n K??? S??ch', 'huyen-ke-sach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (698, 224, 'Huy???n Long Ph??', 'huyen-long-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (699, 224, 'Huy???n M??? T??', 'huyen-my-tu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (700, 224, 'Huy???n M??? Xuy??n', 'huyen-my-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (701, 224, 'Huy???n Ng?? N??m', 'huyen-nga-nam', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (702, 224, 'Huy???n Th???nh Tr???', 'huyen-thanh-tri', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (703, 224, 'Huy???n Tr???n ?????', 'huyen-tran-de', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (704, 224, 'Huy???n V??nh Ch??u', 'huyen-vinh-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (705, 224, 'Th??nh ph??? S??c Tr??ng', 'thanh-pho-soc-trang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (706, 225, 'Huy???n B???c Y??n', 'huyen-bac-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (707, 225, 'Huy???n Mai S??n', 'huyen-mai-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (708, 225, 'Huy???n M???c Ch??u', 'huyen-moc-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (709, 225, 'Huy???n M?????ng La', 'huyen-muong-la', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (710, 225, 'Huy???n Ph?? Y??n', 'huyen-phu-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (711, 225, 'Huy???n Qu???nh Nhai', 'huyen-quynh-nhai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (712, 225, 'Huy???n S??ng M??', 'huyen-song-ma', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (713, 225, 'Huy???n S???p C???p', 'huyen-sop-cop', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (714, 225, 'Huy???n Thu???n Ch??u', 'huyen-thuan-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (715, 225, 'Huy???n Y??n Ch??u', 'huyen-yen-chau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (716, 225, 'Th??nh ph??? S??n La', 'thanh-pho-son-la', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (717, 227, 'Huy???n ????ng H??ng', 'huyen-dong-hung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (718, 227, 'Huy???n H??ng H??', 'huyen-hung-ha', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (719, 227, 'Huy???n Ki???n X????ng', 'huyen-kien-xuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (720, 227, 'Huy???n Qu???nh Ph???', 'huyen-quynh-phu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (721, 227, 'Huy???n Th??i Th???y', 'huyen-thai-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (722, 227, 'Huy???n Ti???n H???i', 'huyen-tien-hai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (723, 227, 'Huy???n V?? Th??', 'huyen-vu-thu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (724, 227, 'Th??nh ph??? Th??i B??nh', 'thanh-pho-thai-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (725, 228, 'Huy???n ?????i T???', 'huyen-dai-tu', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (726, 228, 'Huy???n ?????nh H??a', 'huyen-dinh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (727, 228, 'Huy???n ?????ng H???', 'huyen-dong-hy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (728, 228, 'Huy???n Ph??? Y??n', 'huyen-pho-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (729, 228, 'Huy???n Ph?? B??nh', 'huyen-phu-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (730, 228, 'Huy???n Ph?? L????ng', 'huyen-phu-luong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (731, 228, 'Huy???n V?? Nhai', 'huyen-vo-nhai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (732, 228, 'Th??nh ph??? Th??i Nguy??n', 'thanh-pho-thai-nguyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (733, 228, 'Th??? x?? S??ng C??ng', 'thi-xa-song-cong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (734, 229, 'Huy???n B?? Th?????c', 'huyen-ba-thuoc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (735, 229, 'Huy???n C???m Th???y', 'huyen-cam-thuy', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (736, 229, 'Huy???n ????ng S??n', 'huyen-dong-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (737, 229, 'Huy???n H?? Trung', 'huyen-ha-trung', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (738, 229, 'Huy???n H???u L???c', 'huyen-hau-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (739, 229, 'Huy???n Ho???ng H??a', 'huyen-hoang-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (740, 229, 'Huy???n Lang Ch??nh', 'huyen-lang-chanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (741, 229, 'Huy???n M?????ng L??t', 'huyen-muong-lat', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (742, 229, 'Huy???n Nga S??n', 'huyen-nga-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (743, 229, 'Huy???n Ng???c L???c', 'huyen-ngoc-lac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (744, 229, 'Huy???n Nh?? Thanh', 'huyen-nhu-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (745, 229, 'Huy???n Nh?? Xu??n', 'huyen-nhu-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (746, 229, 'Huy???n N??ng C???ng', 'huyen-nong-cong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (747, 229, 'Huy???n Quan H??a', 'huyen-quan-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (748, 229, 'Huy???n Quan S??n', 'huyen-quan-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (749, 229, 'Huy???n Qu???ng X????ng', 'huyen-quang-xuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (750, 229, 'Huy???n Th???ch Th??nh', 'huyen-thach-thanh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (751, 229, 'Huy???n Thi???u H??a', 'huyen-thieu-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (752, 229, 'Huy???n Th??? Xu??n', 'huyen-tho-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (753, 229, 'Huy???n Th?????ng Xu??n', 'huyen-thuong-xuan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (754, 229, 'Huy???n T??nh Gia', 'huyen-tinh-gia', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (755, 229, 'Huy???n Tri???u S??n', 'huyen-trieu-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (756, 229, 'Huy???n V??nh L???c', 'huyen-vinh-loc', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (757, 229, 'Huy???n Y??n ?????nh', 'huyen-yen-dinh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (758, 229, 'Th??nh ph??? Thanh H??a', 'thanh-pho-thanh-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (759, 229, 'Th??? x?? B???m S??n', 'thi-xa-bim-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (760, 229, 'Th??? x?? S???m S??n', 'thi-xa-sam-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (761, 233, 'Huy???n Chi??m H??a', 'huyen-chiem-hoa', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (762, 233, 'Huy???n H??m Y??n', 'huyen-ham-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (763, 233, 'Huy???n Na Hang', 'huyen-na-hang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (764, 233, 'Huy???n S??n D????ng', 'huyen-son-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (765, 233, 'Huy???n Y??n S??n', 'huyen-yen-son', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (766, 233, 'Th??nh ph??? Tuy??n Quang', 'thanh-pho-tuyen-quang', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (767, 235, 'Huy???n B??nh Xuy??n', 'huyen-binh-xuyen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (768, 235, 'Huy???n L???p Th???ch', 'huyen-lap-thach', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (769, 235, 'Huy???n S??ng L??', 'huyen-song-lo', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (770, 235, 'Huy???n Tam ?????o', 'huyen-tam-dao', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (771, 235, 'Huy???n Tam D????ng', 'huyen-tam-duong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (772, 235, 'Huy???n V??nh T?????ng', 'huyen-vinh-tuong', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (773, 235, 'Huy???n Y??n L???c', 'huyen-yen-lac', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (774, 235, 'Th??nh ph??? V??nh Y??n', 'thanh-pho-vinh-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (775, 235, 'Th??? x?? Ph??c Y??n', 'thi-xa-phuc-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (776, 236, 'Huy???n L???c Y??n', 'huyen-luc-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (777, 236, 'Huy???n M?? Cang Ch???i', 'huyen-mu-cang-chai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (778, 236, 'Huy???n Tr???m T???u', 'huyen-tram-tau', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (779, 236, 'Huy???n Tr???n Y??n', 'huyen-tran-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (780, 236, 'Huy???n V??n Ch???n', 'huyen-van-chan', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (781, 236, 'Huy???n V??n Y??n', 'huyen-van-yen', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (782, 236, 'Huy???n Y??n B??nh', 'huyen-yen-binh', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (783, 236, 'Th??nh ph??? Y??n B??i', 'thanh-pho-yen-bai', 0, 0, '0.0', 1);
INSERT INTO city (`city_id`, `parentid`, `city_name`, `city_url`, `ordering`, `site`, `rate`, `published`) VALUES (784, 236, 'Th??? x?? Ngh??a L???', 'thi-xa-nghia-lo', 0, 0, '0.0', 1);


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
  `site` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: site, 1: h??? th???ng',
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
INSERT INTO config (`lang`, `modules`, `config_name`, `config_alias`, `config_value`) VALUES ('vi', 'global', 'site_name', NULL, 'C??ng ty ABC');
INSERT INTO config (`lang`, `modules`, `config_name`, `config_alias`, `config_value`) VALUES ('vi', 'global', 'site_message_close', NULL, 'Hi???n t???i website ??ang trong qu?? tr??nh n??ng c???p');
INSERT INTO config (`lang`, `modules`, `config_name`, `config_alias`, `config_value`) VALUES ('vi', 'global', 'site_des', NULL, 'Mi??u t??? website');
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

INSERT INTO contact (`id`, `name`, `address`, `phone`, `hotline`, `fax`, `email`, `img`, `lang`) VALUES (1, 'HO??NG QU??N VI T??NH', '212/158/34b Nguy???n V??n Nguy???n, P. T??n ?????nh, Q1, HCM', '08 6683 4528', '0916 500 297', 'MST: 000000000', 'info@aomuavietnam.com', 'data/images/map.jpg', 'vi');


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

INSERT INTO counter_history (`c_id`, `c_name`, `c_type`, `c_val`, `c_count`, `last_update`, `IsActive`) VALUES (1, 'T???ng truy c???p', 'total', '', 112589, 1407570819, 1);
INSERT INTO counter_history (`c_id`, `c_name`, `c_type`, `c_val`, `c_count`, `last_update`, `IsActive`) VALUES (2, 'Trong th??ng', 'month', '08', 443, 1407570819, 1);
INSERT INTO counter_history (`c_id`, `c_name`, `c_type`, `c_val`, `c_count`, `last_update`, `IsActive`) VALUES (3, 'H??m nay', 'today', '09', 45, 1407570819, 1);
INSERT INTO counter_history (`c_id`, `c_name`, `c_type`, `c_val`, `c_count`, `last_update`, `IsActive`) VALUES (4, '??ang Online', 'isonline', '', 2, 1407570819, 1);


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

INSERT INTO email_templates (`id`, `slug`, `subject`, `content`) VALUES (1, 'shop_quenmatkhau', 'Qu??n m???t kh???u', '<p>\n	<strong>M???t kh???u ???????c g???i t??? ?????ng do y&ecirc;u c???u l???y l???i m???t kh???u c???a b???n</strong></p>\n<p>\n	M???t kh???u : $matkhaumoi</p>\n<p>\n	Xin tr&acirc;n tr???ng c???m ??n</p>\n');
INSERT INTO email_templates (`id`, `slug`, `subject`, `content`) VALUES (2, 'shop_dangkytaikhoan', 'K??ch ho???t t??i kho???n ????ng k??', '<p>\r\n	C???m ??n Qu&yacute; kh&aacute;ch ??&atilde; ????ng k&yacute; t&agrave;i kho???n&nbsp;</p>\r\n<p>\r\n	<span style=\"font-size:14px;\"><strong>Th&ocirc;ng tin ????ng k&yacute;:&nbsp;</strong></span></p>\r\n<table border=\"0\" cellpadding=\"2\" cellspacing=\"2\" style=\"border-collapse: collapse\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:140px\">\r\n				<strong>Email ????ng nh???p</strong></td>\r\n			<td>\r\n				$email</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>M???t kh???u</strong></td>\r\n			<td>\r\n				********</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>H??? v&agrave; t&ecirc;n</strong></td>\r\n			<td>\r\n				$hovaten</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>?????a ch???</strong></td>\r\n			<td>\r\n				$diachi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>Qu???n, Huy???n</strong></td>\r\n			<td>\r\n				$quanhuyen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>T???nh, Th&agrave;nh ph???</strong></td>\r\n			<td>\r\n				$thanhpho</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<strong>??i???n thoai</strong></td>\r\n			<td>\r\n				$dienthoai</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	Qu&yacute; kh&aacute;ch vui l&ograve;ng click v&agrave;o ???????ng d???n sau ????? k&iacute;ch ho???t t&agrave;i kho???n: &nbsp;$url</p>\r\n');
INSERT INTO email_templates (`id`, `slug`, `subject`, `content`) VALUES (4, 'shop_donhang', 'Th??ng tin ????n h??ng: $madonhang', '<table border=\"0\" cellpadding=\"2\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<strong><font face=\"Tahoma\" size=\"2\">HOANG QUAN COMPUTER</font></strong>\r\n				<p>\r\n					<font face=\"Tahoma\" size=\"2\">?????a ch???: 212/158/34B Nguy???n V??n Nguy???n, T&acirc;n ?????nh, Qu???n 1, HCM.</font><br />\r\n					<font face=\"Tahoma\" size=\"2\">??i???n tho???i: </font><span style=\"color: rgb(51, 51, 51); font-family: Arial; line-height: 18px;\">0916 500 297 (Mr. Tri???t)</span></p>\r\n			</td>\r\n			<td>\r\n				<img src=\"http://aomuavietnam.com/data/images/logo_hoangquan.png\" style=\"border-width: 0pt; border-style: solid; float: right; width: 111px; height: 57px;\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table bgcolor=\"#3399FF\" border=\"1\" cellpadding=\"2\" style=\"border-collapse: collapse\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td bgcolor=\"#0066FF\">\r\n				<div class=\"title-dot\">\r\n					<p align=\"center\">\r\n						<strong><span style=\"font-size:16px;\"><font face=\"Arial\">TH</font><span style=\"background-color: rgb(255, 255, 255);\">&Ocirc;NG&nbsp;</span><font face=\"Arial\" style=\"background-color: rgb(255, 255, 255);\">TIN&nbsp;</font><span style=\"background-color: rgb(255, 255, 255);\">??</span><span style=\"background-color: rgb(255, 255, 255);\">??N H</span><span style=\"background-color: rgb(255, 255, 255);\">&Agrave;NG&nbsp;</span></span></strong></p>\r\n					<p align=\"center\">\r\n						<b><font color=\"#FFFFFF\" face=\"Arial\">$madonhang</font></b></p>\r\n				</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p align=\"center\">\r\n	&nbsp;</p>\r\n<table border=\"0\" bordercolor=\"#99CCFF\" cellpadding=\"2\" style=\"border-collapse: collapse\" width=\"800\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"120\">\r\n				<b><font face=\"Arial\" size=\"2\">T&ecirc;n kh&aacute;ch h&agrave;ng:</font></b></td>\r\n			<td width=\"258\">\r\n				<font face=\"Arial\" size=\"2\">$fullName</font></td>\r\n			<td width=\"159\">\r\n				<b><font face=\"Arial\" size=\"2\">Ph????ng th???c thanh to&aacute;n:</font></b></td>\r\n			<td>\r\n				<font face=\"Arial\" size=\"2\">$phuongthucthanhtoan</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\">\r\n				<b><font face=\"Arial\" size=\"2\">?????a ch??? giao h&agrave;ng:</font></b></td>\r\n			<td width=\"258\">\r\n				<font face=\"Arial\" size=\"2\">$address</font></td>\r\n			<td width=\"159\">\r\n				<b><font face=\"Arial\" size=\"2\">Th???i gian ?????t h&agrave;ng:</font></b></td>\r\n			<td>\r\n				<font face=\"Arial\" size=\"2\">$thoigian</font></td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\">\r\n				<b><font face=\"Arial\" size=\"2\">??i???n tho???i:</font></b></td>\r\n			<td width=\"258\">\r\n				<span style=\"font-family: Arial; font-size: small;\">$phone</span></td>\r\n			<td width=\"159\">\r\n				<strong>T&igrave;nh tr???ng ????n h&agrave;ng:</strong></td>\r\n			<td>\r\n				$tinhtrang</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\">\r\n				<b><font face=\"Arial\" size=\"2\">Email:</font></b></td>\r\n			<td width=\"258\">\r\n				<span style=\"font-family: Arial; font-size: small;\">$email</span></td>\r\n			<td width=\"159\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"120\">\r\n				&nbsp;</td>\r\n			<td width=\"258\">\r\n				&nbsp;</td>\r\n			<td width=\"159\">\r\n				&nbsp;</td>\r\n			<td>\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	$thongtinsanpham</p>\r\n<hr />\r\n<p>\r\n	C???m ??n b???n ??&atilde; ?????t h&agrave;ng c???a ch&uacute;ng t&ocirc;i!.</p>\r\n<p>\r\n	Ch&uacute;ng t&ocirc;i s??? li&ecirc;n h??? v???i b???n trong th???i gian s???m nh???t.</p>\r\n<p>\r\n	&nbsp;</p>\r\n');
INSERT INTO email_templates (`id`, `slug`, `subject`, `content`) VALUES (5, 'shop_thongtintaikhoan', 'Th??ng tin t??i kho???n ????ng k?? ', '<p>\r\n	&nbsp;</p>\r\n<div style=\"font-family: Arial, Verdana, sans-serif; font-size: 12px; color: rgb(34, 34, 34); background-color: rgb(255, 255, 255); \">\r\n	<p>\r\n		C???m ??n Qu&yacute; kh&aacute;ch ??&atilde; ????ng k&yacute; t&agrave;i kho???n&nbsp;</p>\r\n	<p>\r\n		<span style=\"font-size: 14px; \"><strong>Th&ocirc;ng tin ????ng k&yacute;:&nbsp;</strong></span></p>\r\n	<table border=\"0\" cellpadding=\"2\" cellspacing=\"2\" style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; border-collapse: collapse; \" width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; width: 140px; \">\r\n					<strong>Email ????ng nh???p</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$email</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>M???t kh???u</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$matkhau</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>H??? v&agrave; t&ecirc;n</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$hovaten</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>?????a ch???</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$diachi</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>Qu???n, Huy???n</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$quanhuyen</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>T???nh, Th&agrave;nh ph???</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$thanhpho</td>\r\n			</tr>\r\n			<tr>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					<strong>??i???n thoai</strong></td>\r\n				<td style=\"border-top-color: rgb(211, 211, 211); border-right-color: rgb(211, 211, 211); border-bottom-color: rgb(211, 211, 211); border-left-color: rgb(211, 211, 211); border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-top-style: dotted; border-right-style: dotted; border-bottom-style: dotted; border-left-style: dotted; \">\r\n					$dienthoai</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n');


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
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (416, '107.0037509', '16.796204', 'khu ph??? 2, th??? tr???n cam l???, qu???ng tr???, vi???t nam');
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
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (466, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (467, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (468, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (469, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (470, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (471, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (472, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (473, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (474, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (475, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (476, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (477, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (478, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (479, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (480, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (481, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (482, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (483, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (484, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (485, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (486, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (487, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (488, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (489, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (490, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (491, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (492, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (493, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (494, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (495, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (496, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (497, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (498, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (499, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (500, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (501, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (502, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (503, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (504, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (505, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (506, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (507, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (508, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (509, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (510, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (511, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (512, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (513, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (514, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (515, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (516, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (517, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (518, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (519, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (520, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (521, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (522, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (523, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (524, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (525, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (526, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (527, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (528, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (529, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (530, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (531, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (532, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (533, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (534, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (535, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (536, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (537, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (538, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (539, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (540, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (541, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (542, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (543, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (544, '106.6296638', '10.8230989', 'ss1n h???ng l??nh - f15 - q10 - tp.h??? ch?? minh');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (545, '106.6296638', '10.8230989', 'ss1n h???ng l');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (546, '106.6447951', '10.758323', '275 h??n h???i nguy??n, ph?????ng 2, qu???n 11, th??nh ph??? h??? ch?? minh');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (547, '106.6443742', '10.7583432', '275 h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (548, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (549, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (550, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (551, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (552, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h??a b - ph?????ng an th???nh - th??? x?? thu???n an - t???nh b??nh d????ng.');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (553, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (554, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (555, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (556, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (557, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (558, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (559, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (560, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (561, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (562, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (563, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (564, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (565, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (566, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (567, '106.685136', '10.9507852', '231/1b - khu ph??? th???nh h');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (568, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (569, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (570, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (571, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (572, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (573, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (574, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (575, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (576, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (577, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (578, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (579, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (580, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (581, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (582, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (583, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (584, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (585, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (586, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (587, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (588, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (589, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (590, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (591, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (592, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (593, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (594, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (595, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (596, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (597, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (598, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (599, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (600, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (601, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (602, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (603, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (604, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (605, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (606, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (607, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (608, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (609, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (610, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (611, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (612, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (613, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (614, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (615, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (616, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (617, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (618, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (619, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (620, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (621, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (622, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (623, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (624, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (625, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (626, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (627, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (628, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (629, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (630, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (631, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (632, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (633, '106.6949862', '10.7924962', '30 tr???n quang kh???i, p. t');
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
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (678, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (679, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (680, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (681, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (682, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (683, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (684, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (685, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (686, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (687, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (688, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (689, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (690, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (691, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (692, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (693, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (694, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (695, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (696, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (697, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (698, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (699, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (700, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (701, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (702, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (703, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (704, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (705, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (706, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (707, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (708, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (709, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (710, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (711, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (712, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (713, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (714, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (715, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (716, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (717, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (718, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (719, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (720, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (721, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (722, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (723, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (724, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (725, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (726, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (727, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (728, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (729, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (730, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (731, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (732, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (733, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (734, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (735, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (736, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (737, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (738, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (739, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (740, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (741, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (742, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (743, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (744, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (745, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (746, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (747, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (748, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (749, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (750, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (751, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (752, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (753, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (754, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (755, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (756, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (757, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (758, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (759, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (760, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (761, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (762, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (763, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (764, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (765, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (766, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (767, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (768, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (769, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (770, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (771, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (772, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (773, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (774, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (775, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (776, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (777, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (778, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (779, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (780, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (781, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (782, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (783, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (784, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (785, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (786, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (787, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (788, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (789, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (790, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (791, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (792, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (793, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (794, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (795, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (796, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (797, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (798, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (799, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (800, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (801, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (802, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (803, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (804, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (805, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (806, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (807, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (808, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (809, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (810, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (811, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (812, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (813, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (814, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (815, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (816, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (817, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (818, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (819, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (820, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (821, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (822, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (823, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (824, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (825, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (826, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (827, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (828, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (829, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (830, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (831, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (832, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (833, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (834, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (835, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (836, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (837, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (838, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (839, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (840, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (841, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (842, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (843, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (844, '106.6857433', '10.7958529', '212/158/34b nguy???n v');
INSERT INTO geocode_cache (`id`, `lng`, `lat`, `query`) VALUES (845, '106.6857433', '10.7958529', '212/158/34b nguy???n v');


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

INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (3, 'H?????ng d???n thanh to??n', '<div>\r\n	<span style=\"font-size:16px;\"><span style=\"color:#0000ff;\"><u><strong>C&aacute;ch th???c thanh to&aacute;n</strong></u>:</span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<hr />\r\n</div>\r\n<div>\r\n	<strong><span style=\"font-size:14px;\">1. Thanh to&aacute;n khi nh???n h&agrave;ng:</span></strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Ngay sau khi qu&yacute; kh&aacute;ch h&agrave;ng &nbsp;????ng k&yacute; th&ocirc;ng tin ho???c ?????t h&agrave;ng kh&ocirc;ng qua ????ng k&yacute; t???i web:aomuavietnam.com &nbsp;ho???c qua ??i???n tho???i, email. Nh&acirc;n vi&ecirc;n c&ocirc;ng ty ch&uacute;ng t&ocirc;i s??? x&aacute;c nh???n l???i n???i dung s???n ph???m, th&ocirc;ng tin c???a qu&yacute; kh&aacute;ch h&agrave;ng v&agrave; ti???n h&agrave;nh giao h&agrave;ng t???i ?????a ??i???m m&agrave; qu&yacute; kh&aacute;ch h&agrave;ng ??&atilde; cung c???p th&ocirc;ng tin khi ?????t h&agrave;ng, Qu&yacute; kh&aacute;ch h&agrave;ng thanh to&aacute;n tr???c ti???p cho nh&acirc;n vi&ecirc;n giao h&agrave;ng to&agrave;n b??? s??? ti???n ho???c m???t ph???n c&ograve;n l???i (n???u qu&yacute; kh&aacute;ch h&agrave;ng ??&atilde; ?????t c???c) gi&aacute; tr??? s???n ph???m qu&yacute; kh&aacute;ch ??&atilde; mua v&agrave; k&egrave;m qu&agrave; t???ng khuy???n m&atilde;i (n???u s???n ph???m qu&yacute; kh&aacute;ch mua c&oacute; khuy???n m&atilde;i t???ng ph???m).</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">N???u qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu c???u ?????n tr??? s??? C&ocirc;ng ty ch&uacute;ng t&ocirc;i ????? nh???n h&agrave;ng, nh&acirc;n vi&ecirc;n c&ocirc;ng ty s??? giao h&agrave;ng tr???c ti???p cho qu&yacute; kh&aacute;ch v&agrave; s??? ti???n h&agrave;nh thanh to&aacute;n ngay t???i tr??? s??? &nbsp;c&ocirc;ng ty.</span></div>\r\n<div>\r\n	<hr />\r\n</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<strong><span style=\"font-size:14px;\">2. Thanh to&aacute;n b???ng c&aacute;ch chuy???n kho???n qua ng&acirc;n h&agrave;ng: (N???u qu&yacute; kh&aacute;ch ??? xa).</span></strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Trong qu&aacute; tr&igrave;nh ?????t h&agrave;ng h&atilde;y ch???n &ldquo;Chuy???n kho???n ng&acirc;n h&agrave;ng&rdquo; trong ph???n &ldquo;Ph????ng th???c thanh to&aacute;n&rdquo;</span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Sau khi chuy???n kho???n, qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng th&ocirc;ng b&aacute;o ?????n nh&acirc;n vi&ecirc;n t?? v???n c&ocirc;ng ty TNHH TM DV Ho&agrave;ng Qu&acirc;n </span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color:#0000ff;\"><span style=\"font-size: 16px;\"><u><strong>Th&ocirc;ng tin chuy???n kho???n :&nbsp;</strong></u></span></span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<strong><span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp;1. Ch??? t&agrave;i kho???n: L??u Minh Tri???t</span></strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; S??? t&agrave;i kho???n: 090 704 313 041</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; T&ograve;a nh&agrave; </span><span class=\"st\">Metropolitan, 235 <em>?????ng Kh???i</em>, Q.1, TP. HCM</span></div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp;&nbsp; </span></div>\r\n<div>\r\n	<span style=\"font-size:14px;\">Sau khi nh???n ???????c th&ocirc;ng tin x&aacute;c nh???n chuy???n kho???n t??? ng&acirc;n h&agrave;ng, nh&acirc;n vi&ecirc;n<span style=\"color:#ff00ff;\"> <strong>HO&Agrave;NG QU&Acirc;N </strong></span>s??? li&ecirc;n h??? v???i qu&yacute; kh&aacute;ch ????? th???ng nh???t v??? th???i gian, ?????a ch??? giao h&agrave;ng, v&agrave; ti???n h&agrave;nh giao h&agrave;ng nh?? th???a thu???n.</span></div>\r\n', NULL, NULL, '1371278912.jpg', 'vi', 1395387750, 1, NULL, 1);
INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (5, 'L???i ??ch mua h??ng online', '<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Mua - b&aacute;n h&agrave;ng qua m???ng - h&igrave;nh th???c th????ng m???i m???i xu???t hi???n ??? Vi???t Nam nh??ng nhanh ch&oacute;ng ph&aacute;t tri???n, l&ocirc;i k&eacute;o ???????c nhi???u kh&aacute;ch h&agrave;ng tin d&ugrave;ng. Mua h&agrave;ng qua m???ng c&oacute; nhi???u ??i???m ??u vi???t so v???i c&aacute;ch mua- b&aacute;n tr???c ti???p</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Mua h&agrave;ng tr???c tuy???n b???n s???</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Ti???t ki???m th???i gian &ndash; ??&acirc;y l&agrave; ??u ??i???m l???n nh???t m&agrave; m???i ng?????i ?????u ?????ng &yacute;. Trong cu???c s???ng b???n r???n,vi???c s??? d???ng th???i gian m???t c&aacute;ch h???p l&yacute; l&agrave; c???n thi???t. N???u mu???n mua m???t s???n ph???m n&agrave;o ??&oacute; b???n ph???i m???t c&ocirc;ng, m???t th???i gian t&igrave;m s???n ph???m, ?????n n??i b&aacute;n h&agrave;ng...Thay v&igrave; l&atilde;ng ph&iacute; th???i gian nh?? v???y b???n ch??? c???n nh???n chu???t v&agrave;o trang web mua h&agrave;ng tr???c tuy???n, ch???n s???n ph???m m&igrave;nh mu???n mua r???i b???m n&uacute;t ?????t h&agrave;ng ho???c mua h&agrave;ng, nh&acirc;n vi&ecirc;n giao h&agrave;ng s??? ????a t???i ?????a ch??? b???n mong mu???n. Mua h&agrave;ng online gi&uacute;p b???n ti???t ki???m th???i gian t???i ??a v&agrave; b???t ??i r???c r???i c???a cu???c s???ng.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">So s&aacute;nh gi&aacute; c??? qu&aacute; d??? d&agrave;ng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">T???t c??? gi&aacute; c??? ?????u c&oacute; s???n t???i c&aacute;c website b&aacute;n h&agrave;ng tr???c tuy???n. Mua h&agrave;ng qua m???ng c???a ng?????i b&aacute;n l&agrave; m???t c&ocirc;ng ty, doanh nghi???p bao gi??? c??ng an to&agrave;n h??n mua c???a ng?????i b&aacute;n l&agrave; m???t c&aacute; nh&acirc;n. Mua h&agrave;ng qua trang web c???a c&ocirc;ng ty bao gi??? c??ng mua ???????c h&agrave;ng ch&iacute;nh h&atilde;ng, ch???t l?????ng c???a c&ocirc;ng ty ??&oacute;.. Ngo&agrave;i ra n&ecirc;n ch???n ng?????i b&aacute;n c&oacute; uy t&iacute;n ???????c nhi???u b&igrave;nh ch???n c???a ng?????i mua, ho???c nh???ng s???n ph???m trong top b&aacute;n ch???y c???a trang web. B???n ???????c bi???t gi&aacute; tr?????c khi quy???t ?????nh mua h&agrave;ng, l???a ch???n s???n ph???m ph&ugrave; h???p v???i t&uacute;i ti???n c???a m&igrave;nh. Kh&ocirc;ng &iacute;t ng?????i mua m&oacute;n h&agrave;ng m&igrave;nh kh&ocirc;ng th&iacute;ch ch??? v&igrave; &ldquo;h???i gi&aacute; m&agrave; kh&ocirc;ng mua th???y h??i k??? k???&rdquo;. So s&aacute;nh ????? ch???n l???a c&aacute;i t???t nh???t, ??&oacute; l&agrave; ??i???u m&agrave; khi mua s???m ai c??ng quan t&acirc;m. B???n c&oacute; th??? ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m ch???n ?????t h&agrave;ng ??? nh???ng website uy t&iacute;n, gi&aacute; c??? ph???i ch??ng.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">L???a ch???n ??a d???ng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Nhi???u ng?????i kh&ocirc;ng bi???t r???ng h??? c&oacute; th??? t&igrave;m ki???m v&agrave; mua c&aacute;c s???n ph???m h&agrave;ng ng&agrave;y qua c&aacute;c trang tr???c tuy???n. C&aacute;c trang web mua b&aacute;n tr???c tuy???n gi&uacute;p m???i ng?????i c&oacute; th??? l???a ch???n h&agrave;ng ngh&igrave;n s???n ph???m kh&aacute;c nhau c&ugrave;ng m???t l&uacute;c. Ng&agrave;y c&agrave;ng nhi???u shop online ra ?????i v???i m???i lo???i s???n ph???m ph&ugrave; h???p v???i nhu c???u c???a nhi???u ng?????i v???i h&agrave;ng tr??m m???t h&agrave;ng v&agrave; h&agrave;ng ng&agrave;n thi???t k??? c&oacute; s???n. T&ugrave;y v&agrave;o m???c ??&iacute;ch v&agrave; kinh t???, b???n c&oacute; th??? ch???n ???????c lo???i s???n ph???m th&iacute;ch h???p m???t c&aacute;ch nhanh ch&oacute;ng. L???a ch???n m&oacute;n qu&agrave; ph&ugrave; h???p cho ng?????i l???n tu???i hay ng?????i tr??? tu???i d??? d&agrave;ng &nbsp;m&agrave; kh&ocirc;ng c???n ph???i b??n kho??n, b???i r???i mua g&igrave; th&igrave; ph&ugrave; h???p. Ng?????i ti&ecirc;u d&ugrave;ng c&oacute; th??? t&igrave;m th???y t???t t???t c&aacute;c m???t h&agrave;ng, t??? ????? gia d???ng, ??i???n t???, n???i ngo???i th???t, th???i trang, th???c ph???m&hellip; ?????n c&aacute;c d???ch v??? nh?? ch??m s&oacute;c s???c kh???e, l&agrave;m ?????p&hellip; ????? c??, m???i ?????u c&oacute; h???t. Kh&ocirc;ng nh???ng th???, kh&aacute;ch h&agrave;ng c&ograve;n c&oacute; th??? t&igrave;m th???y ??? &ldquo;ch??? ??i???n t???&rdquo; nh???ng m&oacute;n h&agrave;ng kh&ocirc;ng th??? t&igrave;m ???????c ??? &nbsp;n???i ?????a, ?????c bi???t l&agrave; nh???ng m&oacute;n h&agrave;ng x&aacute;ch tay nh?? n?????c hoa, ????a nh???c, s&aacute;ch b&aacute;o &hellip; Mua s???m online gi&uacute;p b???n &ldquo;qu???ng&rdquo; c??n ??au ?????u ??i.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Gi&aacute; mua r??? h??n c&aacute;c trung t&acirc;m v&agrave; c???a h&agrave;ng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">V&igrave; kh&ocirc;ng ph???i thanh to&aacute;n c&aacute;c kho???n ti???n m???t b???ng, chi ph&iacute; c???a h&agrave;ng n&ecirc;n ??a ph???n c&aacute;c website b&aacute;n h&agrave;ng online ?????u cung c???p s???n ph???m v???i m???c gi&aacute; th???p h??n khi b???n mua b&ecirc;n ngo&agrave;i m&agrave; ch???t l?????ng v???n ?????m b???o.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">B&iacute; quy???t ????? ti???t ki???m v???i mua h&agrave;ng tr???c tuy???n l&agrave; mua v???i s??? l?????ng nhi???u. Khi mua h&agrave;ng v???i s??? l?????ng nhi???u th&igrave; kh&aacute;ch h&agrave;ng c&oacute; th??? nh???n ???????c s??? gi???m gi&aacute; ho???c chi???t kh???u v&agrave; ??&ocirc;i khi con s??? ??&oacute; c&oacute; th??? l&ecirc;n t???i 50% ho???c c&ograve;n h??n th??? n???a.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">V&agrave; trong c&aacute;c d???p l??? h???i,th&igrave; c&aacute;c web b&aacute;n h&agrave;ng tr???c tuy???n c&oacute; nh???ng ch????ng tr&igrave;nh khuy???n m&atilde;i,ho???c c&aacute;c tr&ograve; ch??i c&oacute; th?????ng r???t h???p d???n : nh?? c&aacute;c m???t h&agrave;ng l&agrave;m ?????p : m??? ph???m khuy???n m&atilde;i, ????? gia d???ng ,????? d&ugrave;ng nh&agrave; b???p,c&aacute;c s???n ph???m ch??m s&oacute;c s???c kh???e,...t???o cho kh&aacute;ch h&agrave;ng c&oacute; c???m gi&aacute;c th&uacute; v??? ,v&agrave; ti???t ki???m t&uacute;i ti???n ????? c&oacute; th??? mua nhi???u s???n ph???m h??n.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Ch??? ?????ng v&agrave; an to&agrave;n v???i m???i t&igrave;nh hu???ng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">B???n b??n kho??n v??? vi???c thanh to&aacute;n tr???c tuy???n nh??ng kh&ocirc;ng bi???t c&oacute; nh???n ???????c h&agrave;ng kh&ocirc;ng. ?????ng lo, s??? ra ?????i c???a c&aacute;c h&igrave;nh th???c thanh to&aacute;n tr???c tuy???n nh?? Paypal, Ng&acirc;n l?????ng, B???o kim&hellip;v???i t&iacute;nh n??ng thanh to&aacute;n t???m gi???, b???o v??? ng?????i mua h&agrave;ng tuy???t ?????i cung c???p c&aacute;c d???ch v??? thanh to&aacute;n ??a d???ng, kh&aacute;ch h&agrave;ng c&oacute; th??? ?????i h&agrave;ng (kh&ocirc;ng &aacute;p d???ng cho s???n ph???m c&aacute; nh&acirc;n), c&oacute; th??? khi???u n???i, g&oacute;p &yacute;,.. v&agrave; ???????c h??? tr??? 24/7</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Tr&aacute;nh n??i ??&ocirc;ng ??&uacute;c</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">B???n kh&ocirc;ng ph???i ????? m??? h&ocirc;i, kh&ocirc;ng ph???i ch???u ?????ng c??? qu???t, x&ocirc; ?????y, chen l???n ????? ch???n l???a h&agrave;ng, kh&ocirc;ng ph???i chen ch&uacute;c, x???p h&agrave;ng ch??? thanh to&aacute;n ??? si&ecirc;u th???, kh&ocirc;ng ph???i ??au h???ng khi cao gi???ng nh???c l???i y&ecirc;u c???u c???a m&igrave;nh nhi???u l???n trong ??&aacute;m ??&ocirc;ng. V&agrave; ?????c bi???t h??n, b???n c&ograve;n tr&aacute;nh ???????c nguy c?? tr???m c???p, m&oacute;c t&uacute;i, l???a ?????o trong ??&aacute;m ??&ocirc;ng hay m???t xe v&igrave; kh&ocirc;ng c&oacute; n??i ????? xe.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Ti???t ki???m x??ng d???u&nbsp;</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Kh&ocirc;ng c???n ph???i m???t c&ocirc;ng ??i l???i d&ugrave; tr???i m??a d???m hay n???ng g???t, kh&ocirc;ng t???n ti???n x??ng d???u ??i l???i v???t v???, ho???c ??&ocirc;i khi b??? ch??? h&agrave;ng ?????t v&iacute;a n???u kh&ocirc;ng mua h&agrave;ng&hellip;Ch??? c???n ng???i t???i nh&agrave;, v??n ph&ograve;ng hay b???t c??? ??&acirc;u ????? l???a ch???n, ?????t h&agrave;ng, thanh to&aacute;n v&agrave; nh???n h&agrave;ng ngay t???i ?????a ch??? mong mu???n, b???n s??? gi???m thi???u chi ph&iacute; ??i l???i: ??i nhi???u n??i ????? ch???n l???a s???n ph???m ph&ugrave; h???p, &nbsp;t???i l???n th??? 2 ????? ki???m tra ti???n ?????, sau ??&oacute; tr??? l???i ????? nh???n s???n ph???m. Th??? t&iacute;nh xem, b???n ??&atilde; m???t bao nhi&ecirc;u x??ng cho 1 s???n ph???m ??&oacute;. Th&ocirc;ng th?????ng, c&aacute;c website n&agrave;y s??? cung c???p d???ch v??? ????a h&agrave;ng t???n n??i n???u nh&agrave; b???n kh&ocirc;ng qu&aacute; xa trung t&acirc;m, h??n n???a b???n c&ograve;n th???a s???c c&acirc;n nh???c gi&aacute; c???, m???u m&atilde; gi???a nh???ng c???a h&agrave;ng m&agrave; v??? tr&iacute; th???c s??? c???a n&oacute; c&aacute;ch xa nhau c??? ch???c th???m ch&iacute; l&agrave; c??? tr??m km ch??? trong m???t th???i gian ng???n.&nbsp;</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">M???ng l?????i mua s???m r???ng</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">M???ng internet to&agrave;n c???u m??? r???ng tr&ecirc;n kh???p m???i n??i v&igrave; v???y b???n c&oacute; th??? mua s???m t???i c&aacute;c t???nh th&agrave;nh kh&aacute;c, th???m ch&iacute; mua h&agrave;ng ??? n?????c ngo&agrave;i m&agrave; kh&ocirc;ng ph???i b?????c ch&acirc;n ra kh???i c???a. Mua h&agrave;ng qua m???ng c&oacute; r???t nhi???u l???i th??? khi ch??? c???n m???t chi???c m&aacute;y t&iacute;nh n???i m???ng internet, kh&aacute;ch h&agrave;ng ch??? vi???c ng???i m???t ch??? m&agrave; c&oacute; th??? mua s???m kh???p th??? gi???i.&nbsp;</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Th??? t???c ????ng k&yacute; c???c ????n gi???n</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Mua h&agrave;ng tr???c tuy???n tr??? n&ecirc;n ng&agrave;y c&agrave;ng ph??? bi???n n&ecirc;n c&aacute;c th??? t???c ????ng k&yacute; mua b&aacute;n c??ng ???????c ????n gi???n h&oacute;a h???t m???c c&oacute; th???. c&aacute;c Website mua h&agrave;ng tr???c tuy???n v???i h??? th???ng ????ng k&yacute; v&agrave; mua h&agrave;ng ????n gi???n nh???t c&ugrave;ng c&aacute;c h?????ng d???n v&agrave; minh h???a c??? th??? gi&uacute;p b???n s??? d???ng d??? d&agrave;ng. Ch??? sau v&agrave;i c&uacute; nh???p chu???t, b???n ??&atilde; c&oacute; th??? ung dung ch??? m&oacute;n h&agrave;ng nh?? &yacute; mu???n g???i ngay t???i b???n.</span></p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	&nbsp;</p>\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; text-align: justify; font-size: 1.8rem; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\n	<span style=\"font-size: 18px;\">Nh???ng l???i &iacute;ch kh&aacute;c</span></h2>\n<p style=\"margin: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Verdana, sans-serif; line-height: 18px; text-align: justify;\">\n	<span style=\"font-family: arial, helvetica, sans-serif;\">Mua h&agrave;ng online ng&agrave;y c&agrave;ng c&oacute; nhi???u l???i &iacute;ch, ch???ng h???n nh?? mua h&agrave;ng ????n gi???n h??n, b???n c&oacute; th??? ??&aacute;nh gi&aacute; s???n ph???m qua nh???ng ph???n h???i c???a c&aacute;c kh&aacute;ch h&agrave;ng tr?????c, nh???n ???????c nh???ng khuy???n m&atilde;i, gi???m gi&aacute;, qu&agrave; t???ng v&agrave;o d???p ?????c bi???t qua vi???c ????ng k&yacute; kh&aacute;ch h&agrave;ng th&acirc;n thi???t, ????ng k&yacute; th&agrave;nh vi&ecirc;n, b???n c&ograve;n c???p nh???t th&ocirc;ng tin c&aacute;c s???n ph???m m???i v&agrave; &nbsp;nhi???u l???i &iacute;ch kh&aacute;c.</span></p>\n', NULL, NULL, '1371539986.jpg', 'vi', 1371539987, 1, NULL, 1);
INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (6, 'Ch??nh s??ch giao h??ng', '<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" height=\"272\" style=\"background: none repeat scroll 0% 0% white; border-collapse: collapse; border: medium none;\" width=\"545\">\r\n	<tbody>\r\n		<tr style=\"height:17px;\">\r\n			<td rowspan=\"2\" style=\"width:84px;background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p align=\"center\" style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:center;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Tr???ng l?????ng (gram)</span></span></p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"width:136px;background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p align=\"center\" style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:center;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">V???n chuy???n trong t???nh B&igrave;nh D????ng</span></span></p>\r\n			</td>\r\n			<td colspan=\"2\" style=\"background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p align=\"center\" style=\"margin-bottom:0in;margin-bottom:.0001pt;text-align:center;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">V???n chuy???n trong n?????c</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"width:159px;background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Chuy???n th?????ng b??u ??i???n</span></span></p>\r\n			</td>\r\n			<td style=\"width:116px;background:#CCFFCC;padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Chuy???n ph&aacute;t nhanh</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:30px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:30px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">D?????i 100</span></span></p>\r\n			</td>\r\n			<td rowspan=\"7\" style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:30px;vertical-align:top;\">\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">7.000 VND&nbsp;</span></span></p>\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"color:red;\"><span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Mi???n ph&iacute; cho ????n h&agrave;ng t??? 100.000 VND</span></span></span></p>\r\n			</td>\r\n			<td rowspan=\"6\" style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:30px;vertical-align:top;\">\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">10.000 VND</span></span></p>\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"color:red;\"><span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Mi???n ph&iacute; cho ????n h&agrave;ng t??? 200.000 VND</span></span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:30px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">15.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">101 - 250</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">20.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">251 - 500</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">27.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">501 - 1000</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">40.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">1001 - 1500</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">50.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">1501 - 2000</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">60.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr style=\"height:17px;\">\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;vertical-align:top;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">Tr&ecirc;n 2000</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;vertical-align:top;\">\r\n				<p style=\"line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">M???i 500 gram ti???p theo th&ecirc;m 2.000 VND</span></span></p>\r\n			</td>\r\n			<td style=\"padding:3.75pt 3.75pt 3.75pt 3.75pt;height:17px;\">\r\n				<p style=\"margin-bottom:0in;margin-bottom:.0001pt;line-height:normal;\">\r\n					<span style=\"font-family:verdana,sans-serif;\"><span style=\"font-size:9.0pt;\">M???i 500 gram ti???p theo th&ecirc;m 7.000 VND</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div style=\"clear:both;\">\r\n	&nbsp;</div>\r\n', NULL, NULL, '1372645916.jpg', 'vi', 1391965837, 1, NULL, 1);
INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (7, 'H?????ng d???n mua online', '<p style=\"text-align: justify;\">\r\n	<span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size: 16px;\"><u><strong>H?????ng d???n mua h&agrave;ng:</strong></u><br />\r\n	&nbsp;&nbsp; &nbsp;<br />\r\n	&nbsp;<br />\r\n	1) Duy???t v&agrave; ch???n s???n ph???m<br />\r\n	2) Th&ecirc;m s???n ph???m v&agrave;o gi??? h&agrave;ng c???a b???n<br />\r\n	3) C&aacute;c b?????c thanh to&aacute;n:<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;<strong> B?????c1 - Xem th&ocirc;ng tin gi??? h&agrave;ng:</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - H??? th???ng hi???n th??? c&aacute;c th&ocirc;ng tin v??? s???n ph???m b???n ??&atilde; ?????t mua nh?? ch???ng lo???i, ????n gi&aacute;, s??? l?????ng, tr??? gi&aacute;,...T???i ??&acirc;y b???n c&oacute; th??? thay ?????i s??? l?????ng h&agrave;ng ho&aacute; b???ng c&aacute;ch nh???p v&agrave;o s??? l????ng trong &ocirc; &quot;<strong>S??? l?????ng</strong>&quot;.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - N???u mu???n tr??? l???i s???n ph???m ??&atilde; ch???n (kh&ocirc;ng mua n???a), b???n nh???p v&agrave;o s??? l?????ng c???a s???n ph???m ??&oacute; b???ng <strong>&quot;0&quot;.</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - M???i l???n thay ?????i s??? l?????ng c???a s???n ph???m, b???n nh??? ph???i click v&agrave;o n&uacute;t <strong>&quot;C???p nh???t&quot;</strong> ????? h??? th???ng ghi nh???n l???i nh???ng thay ?????i trong gi??? h&agrave;ng c???a b???n tr?????c khi click ch???n <strong>&quot;Th???c hi???n ?????t h&agrave;ng&quot;</strong> ????? sang b?????c k??? ti???p.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - N???u ??&atilde; ????ng nh???p (login) r???i th&igrave; b???n s??? ???????c chuy???n sang b?????c 2, n???u ch??a h??? th???ng s??? y&ecirc;u c???u b???n ????ng nh???p tr?????c khi thanh to&aacute;n. N???u b???n ??&atilde; ????ng k&yacute; l&agrave;m th&agrave;nh vi&ecirc;n v???i aomuavietnam.com th&igrave; b???n ????ng nh???p v???i email v&agrave; m???t kh???u ??&atilde; ????ng k&yacute;, n???u ch??a b???n c&oacute; th??? ????ng k&yacute; t???i b?????c n&agrave;y.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Xin l??u &yacute; ????? ????ng nh???p v&agrave;o website aomuavietnam.com b???n c???n ph???i cung c???p hai th&ocirc;ng tin sau:<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + ?????a ch??? email: Email m&agrave; b???n ??&atilde; d&ugrave;ng ????? ??ang k&yacute; l&agrave;m th&agrave;nh vi&ecirc;n.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + M???t kh???u ????ng nh???p: M???t kh???u b???n ??&atilde; ????ng k&yacute; v???i aomuavietnam.com<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp; <strong>B?????c 2 - ?????a ch??? thanh to&aacute;n v&agrave; giao h&agrave;ng:</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Nh???p v&agrave;o ?????a ch??? thanh to&aacute;n v&agrave; ?????a ch??? giao h&agrave;ng.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - B???n c&oacute; th??? s??? d???ng c&aacute;c tu??? ch???n &quot;?????a ch??? thanh to&aacute;n gi???ng th&ocirc;ng tin t&agrave;i kho???n&quot; v&agrave; &quot;?????a ch??? giao h&agrave;ng gi???ng ?????a ch??? thanh to&aacute;n&quot;.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;<strong> B?????c 3 - Ph????ng th???c v???n chuy???n v&agrave; thanh to&aacute;n:</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Ch???n ph????ng th???c thanh to&aacute;n v&agrave; ph????ng th???c v???n chuy???n.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - B???n c&oacute; th??? y&ecirc;u c???u <strong>aomuavietnam.com</strong> g&oacute;i h&agrave;ng l???i th&agrave;nh qu&agrave; ho???c xu???t h&oacute;a ????n cho b???n t???i b?????c n&agrave;y.&nbsp;&nbsp; &nbsp;<br />\r\n	<br />\r\n	&nbsp;<br />\r\n	<strong>&nbsp;&nbsp;&nbsp; B?????c 4 - K???t th&uacute;c:</strong><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - H??? th???ng s??? g???i email x&aacute;c nh???n ????n h&agrave;ng cho b???n, nh&acirc;n vi&ecirc;n <strong>aomuavietnam.com</strong> s??? li&ecirc;n h??? v???i b???n ????? giao h&agrave;ng theo y&ecirc;u c???u. </span></span></p>\r\n', NULL, NULL, '1373026032.jpg', 'vi', 1395388057, 1, NULL, 1);
INSERT INTO help (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (8, 'B???o h??nh - ?????i tr???', '<p>\r\n	dsfdas</p>\r\n', NULL, NULL, NULL, 'vi', 1395387809, 1, NULL, 1);


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

INSERT INTO introduction (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (4, 'Gi???i thi???u chung', '<h2 style=\"background-image: none; background-attachment: scroll; border-width: 0px 0px 2px; border-style: none none solid; border-bottom-color: rgb(222, 123, 42); font-size: 1.8rem; margin-top: 0px; margin-right: 0px; margin-left: 0px; outline: none 0px; padding: 0px 0px 3px; vertical-align: baseline; text-align: justify; line-height: 1.8rem; color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important; background-position: 0px 0px; background-repeat: repeat repeat;\">\r\n	<span style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 0px none; font-size: 18px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; background-position: 0px 0px; background-repeat: repeat repeat;\">HO&Agrave;NG QU&Acirc;N COMPUTER</span></h2>\r\n<p>\r\n	<img alt=\"S??? m???nh ch??ng t??i g??nh v??c\" class=\"fl\" src=\"http://hcm.lazada.vn/static/static-page/about-us/mission-statement.jpg\" style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 2px solid rgb(204, 204, 204); margin: 0px 10px 0px 0px; outline: none 0px; padding: 0px; vertical-align: middle; float: left; background-position: 0px 0px; background-repeat: repeat repeat;\" /><strong>Gi???i thi???u</strong></p>\r\n<p>\r\n	Th&agrave;nh l???p ng&agrave;y 17/02/2003 xu???t ph&aacute;t t??? &yacute; t?????ng mang l???i cho ng?????i ti&ecirc;u d&ugrave;ng thu???c &ldquo;M???i t???ng l???p trong x&atilde; h???i ???????c quy???n h?????ng nh???ng ti???n &iacute;ch t??? c&aacute;c thi???t b??? c&ocirc;ng ngh??? cao&rdquo;.</p>\r\n<p>\r\n	Kh???i nghi???p t??? m???t c???a h&agrave;ng nh??? v???i ch??? 3 &ndash; 4 nh&acirc;n vi&ecirc;n t&acirc;m huy???t, Ho&agrave;ng Qu&acirc;n m???nh d???n b?????c nh???ng b?????c ?????u ti&ecirc;n v???i kh&ocirc;ng &iacute;t kh&oacute; kh??n v&agrave; th??? th&aacute;ch khi m&agrave; &aacute;p l???c c???nh tranh t??? nh???ng s???n ph???m c&ocirc;ng ngh??? gi&aacute; r??? kh&ocirc;ng r&otilde; ngu???n g???c lan tr&agrave;n.</p>\r\n<p>\r\n	Gi??? v???ng quan ??i???m, m???c ti&ecirc;u c&ugrave;ng ?????nh h?????ng kinh doanh r&otilde; r&agrave;ng, minh b???ch. Ho&agrave;ng Qu&acirc;n ??&atilde; nhanh ch&oacute;ng c&oacute; ???????c s??? tin m???n t??? Kh&aacute;ch H&agrave;ng v&agrave; tr??? th&agrave;nh ????n v??? cung c???p s???n ph???m CNTT ch&iacute;nh h&atilde;ng v&agrave; l&agrave; ?????i t&aacute;c c???a r???t nhi???u T???p ??o&agrave;n tin h???c l???n ??ang c&oacute; m???t t???i Vi???t Nam: Intel, LG, Seagate, Samsung, Asus, Gigabyte&hellip;</p>\r\n<p>\r\n	Tr???i qua 2 n??m ph&aacute;t tri???n v&agrave; ?????ng h&agrave;nh tr&aacute;ch nhi???m, tr?????c nh???ng th&aacute;ch th???c,&nbsp; Ho&agrave;ng Qu&acirc;n c&agrave;ng hi???u r&otilde; con ???????ng nhanh nh???t ????? ph&aacute;t tri???n l&agrave; h???p t&aacute;c v&agrave; chia s???. V???i mong mu???n l&agrave; n??i kh???i ?????u cho m???i th&agrave;nh c&ocirc;ng, b&ecirc;n c???nh s??? n??? l???c x&acirc;y d???ng m???t chi???n l?????c s???n ph???m t???t, m???t ch&iacute;nh s&aacute;ch gi&aacute; ???n ?????nh, Ho&agrave;ng Qu&acirc;n c&ograve;n ???????c bi???t ?????n b???ng vi???c mang ?????n nh???ng ch????ng tr&igrave;nh th???c t???, c&aacute;c chuy&ecirc;n ????? h???i th???o ?????nh h?????ng cho c&aacute;c b???n sinh vi&ecirc;n tr??? . Do v???y, Ho&agrave;ng Qu&acirc;n ??&atilde; ???????c s??? tin t?????ng v&agrave; ???ng h??? nhi???t t&igrave;nh t??? Qu&yacute; Kh&aacute;ch h&agrave;ng ?????c bi???t l&agrave; kh&aacute;ch h&agrave;ng thu???c kh???i k??? thu???t - c&ocirc;ng ngh??? th&ocirc;ng tin</p>\r\n<p>\r\n	Hi???n nay, Ho&agrave;ng Qu&acirc;n ??&atilde; v&agrave; ??ang t&iacute;ch c???c x&acirc;y d???ng ho&agrave;n thi???n c&aacute;c ph????ng th???c d???ch v??? b&aacute;n h&agrave;ng ti???n &iacute;ch, giao h&agrave;ng t???n n??i, ch??? ????? b???o h&agrave;nh an to&agrave;n &ndash; nhanh ch&oacute;ng v&agrave; ng&agrave;y c&agrave;ng ???????c s??? tin t?????ng, gi???i thi???u t??? kh&aacute;ch h&agrave;ng.</p>\r\n<p>\r\n	V???i ch&iacute;nh s&aacute;ch qu???n l&yacute; thu h&uacute;t v&agrave; ph&aacute;t tri???n ngu???n nh&acirc;n l???c hi???n t???i, Ho&agrave;ng Qu&acirc;n v???i h??n 100 nh&acirc;n vi&ecirc;n l&agrave; nh???ng con ng?????i ti&ecirc;n quy???t nh???t, nhi???t huy???t nh???t c&ugrave;ng tr&igrave;nh ????? chuy&ecirc;n m&ocirc;n cao, t???n t&acirc;m v&agrave; s???n s&agrave;ng c???ng hi???n s??? l&agrave; c???u n???i mang ?????n kh&aacute;ch h&agrave;ng nh???ng s???n ph???m, d???ch v??? c&ocirc;ng ngh??? an to&agrave;n &ndash; hi???n ?????i.</p>\r\n<p>\r\n	Vi???c l???a ch???n ch&uacute;ng t&ocirc;i l&agrave; c?? h???i ????? kh&aacute;ch h&agrave;ng s??? h???u nh???ng s???n ph???m c&ocirc;ng ngh??? t???t nh???t v???i gi&aacute; h???p l&yacute; nh???t. Do v???y, ch&uacute;ng t&ocirc;i t??? h&agrave;o l&agrave; n??i kh&aacute;ch h&agrave;ng l???a ch???n, th&agrave;nh c&ocirc;ng c???a ch&uacute;ng t&ocirc;i b???t ?????u t??? nh???ng th&agrave;nh c&ocirc;ng c???a kh&aacute;ch h&agrave;ng.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong><em>L??nh v???c ho???t ?????ng:</em></strong></p>\r\n<p>\r\n	- Cung c???p s???n ph???m CNTT: m&aacute;y t&iacute;nh b???, Laptop, linh ki???n</p>\r\n<p>\r\n	<strong><em>Kh&aacute;ch h&agrave;ng c???a ch&uacute;ng t&ocirc;i:</em></strong></p>\r\n<p>\r\n	- Kh&aacute;ch h&agrave;ng ti&ecirc;u d&ugrave;ng cu???i, chuy&ecirc;n vi&ecirc;n k??? thu???t c&ocirc;ng ngh???</p>\r\n<p>\r\n	- C&aacute;c doanh nghi???p trong n?????c</p>\r\n<p>\r\n	- ?????i l&yacute; tr&ecirc;n to&agrave;n qu???c</p>\r\n<p>\r\n	<strong><em>?????i t&aacute;c: </em></strong></p>\r\n<p>\r\n	- Intel, Dell, ASUS, Acer, Lenovo, Sony, Samsung, Dlink, Gigabyte&hellip;.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style=\"background-image: none; background-attachment: scroll; border: 0px none; font-size: 13px; margin-top: 0px; margin-right: 0px; margin-left: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important; background-position: 0px 0px; background-repeat: repeat repeat;\">\r\n	&nbsp;</p>\r\n', NULL, NULL, NULL, 'vi', 1395642765, 1, NULL, 1);
INSERT INTO introduction (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (5, 'Ho??ng Qu??n vi t??nh', '<p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-size: 13px; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	<span style=\"font-size:14px;\">Truy c???p ngay trang web c???a ch&uacute;ng t&ocirc;i t???i <strong>www.aomuavietnam.com</strong> ho???c k???t n???i v???i ch&uacute;ng t&ocirc;i qua&nbsp;<a href=\"http://alobuy.vn/\" style=\"text-decoration: none; color: rgb(80, 72, 72);\"><font color=\"#064f93\">Facebook</font></a>,&nbsp;<font color=\"#064f93\">Twitter</font>,&nbsp;<font color=\"#064f93\">Google+</font>, v&agrave;&nbsp;<font color=\"#064f93\">Zing Me</font>.</span></p>\r\n<h2 style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px 0px 3px; font-size: 1.8rem; text-align: justify; line-height: 1.8rem; color: rgb(222, 123, 42); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	<span style=\"font-size: 18px;\">S??? m???nh ch&uacute;ng t&ocirc;i g&aacute;nh v&aacute;c</span></h2>\r\n<p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-size: 13px; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	<img alt=\"S??? m???nh ch??ng t??i g??nh v??c\" class=\"fl\" src=\"/administratorwebsystem/data/images/sumenh.jpg\" style=\"border: 2px solid rgb(204, 204, 204); float: left; vertical-align: middle; padding-bottom: 0px; margin-right: 10px; width: 275px; height: 184px;\" /><span style=\"font-size:14px;\">S??? m???nh c???a ch&uacute;ng t&ocirc;i kh&ocirc;ng ch??? l&agrave; ??em l???i l???i &iacute;ch cho kh&aacute;ch h&agrave;ng th&ocirc;ng qua vi???c cung c???p c&aacute;c s???n ph???m v&agrave; d???ch v??? t???t nh???t m&agrave; c&ograve;n l&agrave; t???o ra nh???ng tr???i nghi???m th&uacute; v??? v&agrave; gi&aacute; tr??? th???ng d?? cho qu&yacute; kh&aacute;ch.&nbsp;<br />\r\n	<br />\r\n	Lu&ocirc;n c??? g???ng h???t s???c ????? l???ng nghe v&agrave; th???u hi???u t&acirc;m t?? c???a ng?????i ti&ecirc;u d&ugrave;ng, ch&uacute;ng t&ocirc;i t??? h&agrave;o khi mang ?????n nh???ng d???ch v??? ti???n &iacute;ch gi&uacute;p ti???t ki???m tri???t ????? qu??? th???i gian c???a qu&yacute; kh&aacute;ch, ????? vi???c mua s???m kh&ocirc;ng c&ograve;n l&agrave; n???i b???n t&acirc;m cho nh???ng kh&aacute;ch h&agrave;ng b???n r???n.&nbsp;<br />\r\n	<br />\r\n	?????n v???i www.aomuavietnam.com&nbsp;b???n kh&ocirc;ng nh???ng ???????c th???a m&atilde;n nhu c???u mua s???m trong t&iacute;ch t???c m&agrave; c&ograve;n c&oacute; th??? tho???i m&aacute;i theo ??u???i c&aacute;c ho???t ?????ng kh&aacute;c trong nh???p s???ng n??ng ?????ng c???a b???n th&acirc;n.&nbsp;</span></p>\r\n<p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-size: 13px; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	&nbsp;</p>\r\n<p style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); line-height: 18px; text-align: justify; font-size: 13px; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important;\">\r\n	&nbsp;</p>\r\n', NULL, NULL, NULL, 'vi', 1395642406, 1, NULL, 1);
INSERT INTO introduction (`id`, `name`, `content`, `summary`, `url`, `img`, `lang`, `date_time`, `ordering`, `views`, `status`) VALUES (6, 'S??? m???nh ph???c v???', '<h2 style=\"background-image: none; background-attachment: scroll; border-width: 0px 0px 2px; border-style: none none solid; border-bottom-color: rgb(222, 123, 42); font-size: 1.8rem; margin-top: 0px; margin-right: 0px; margin-left: 0px; outline: none 0px; padding: 0px 0px 3px; vertical-align: baseline; text-align: justify; line-height: 1.8rem; color: rgb(222, 123, 42); font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important; background-position: 0px 0px; background-repeat: repeat repeat;\">\r\n	<span style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 0px none; font-size: 18px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; background-position: 0px 0px; background-repeat: repeat repeat;\">S??? m???nh ch&uacute;ng t&ocirc;i g&aacute;nh v&aacute;c</span></h2>\r\n<p style=\"background-image: none; background-attachment: scroll; border: 0px none; font-size: 13px; margin-top: 0px; margin-right: 0px; margin-left: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; line-height: 18px; color: rgb(64, 64, 64); text-align: justify; font-family: Helvetica, Arial, sans-serif; margin-bottom: 10px !important; background-position: 0px 0px; background-repeat: repeat repeat;\">\r\n	<img alt=\"S??? m???nh ch??ng t??i g??nh v??c\" class=\"fl\" src=\"/data/images/sumenh%282%29.jpg\" style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 2px solid rgb(204, 204, 204); margin: 0px 10px 0px 0px; outline: none 0px; padding: 0px; vertical-align: middle; float: left; width: 275px; height: 184px; background-position: 0px 0px; background-repeat: repeat repeat;\" /><span style=\"background-image: none; background-attachment: scroll; background-color: transparent; border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; background-position: 0px 0px; background-repeat: repeat repeat;\">S??? m???nh c???a ch&uacute;ng t&ocirc;i kh&ocirc;ng ch??? l&agrave; ??em l???i l???i &iacute;ch cho kh&aacute;ch h&agrave;ng th&ocirc;ng qua vi???c cung c???p c&aacute;c s???n ph???m v&agrave; d???ch v??? t???t nh???t m&agrave; c&ograve;n l&agrave; t???o ra nh???ng tr???i nghi???m th&uacute; v??? v&agrave; gi&aacute; tr??? th???ng d?? cho qu&yacute; kh&aacute;ch.&nbsp;<br />\r\n	<br />\r\n	Lu&ocirc;n c??? g???ng h???t s???c ????? l???ng nghe v&agrave; th???u hi???u t&acirc;m t?? c???a ng?????i ti&ecirc;u d&ugrave;ng, ch&uacute;ng t&ocirc;i t??? h&agrave;o khi mang ?????n nh???ng d???ch v??? ti???n &iacute;ch gi&uacute;p ti???t ki???m tri???t ????? qu??? th???i gian c???a qu&yacute; kh&aacute;ch, ????? vi???c mua s???m kh&ocirc;ng c&ograve;n l&agrave; n???i b???n t&acirc;m cho nh???ng kh&aacute;ch h&agrave;ng b???n r???n.&nbsp;<br />\r\n	<br />\r\n	?????n v???i www.aomuavietnam.com b???n kh&ocirc;ng nh???ng ???????c th???a m&atilde;n nhu c???u mua s???m trong t&iacute;ch t???c</span></p>\r\n', NULL, NULL, NULL, 'vi', 1395642430, 1, NULL, 1);


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

INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (60, 'Tin t???c s??n gi?? r???', '', 0, 'sanggiare_tintuc', 'mod_lastnews', '0', 0, '_blank', 'catid=30,32&max=10&max_show=5&string_length=70&show_img=0&width_img=40px&height_img=40px&speed=1500&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (54, 'T?? v???n ?????t h??ng Online gi?? r??? h??n!', '<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size: 16px;\"><strong>Hotline 01: <span style=\"color:#ff0000;\">1800 6839</span></strong></span></span></p>\n<p>\n	&nbsp;</p>\n<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size: 16px;\"><strong>Hotline 02: <span style=\"color:#ff0000;\">(08) 3977 8088</span></strong></span></span></p>\n<p>\n	&nbsp;</p>\n<p>\n	<span style=\"font-size:12px;\"><span style=\"color: rgb(105, 105, 105);\"><em>(T??? 7h ?????n 21h h&agrave;ng ng&agrave;y, k??? c??? ch??? nh???t v&agrave; ng&agrave;y l???)</em></span></span></p>\n', 0, 'sangiare_hotro', 'mod_custom', '1', 1, 'support', 'test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (59, 'Qu???n c??o tr?????t - sangiare', '', 0, 'sangiare_bannerscroll', 'mod_bannerscroll', '0', 0, '_bank', 'file_img_l=&link_img_l=&target_ads_l=page_owner&file_img_r=&link_img_r=&target_ads_r=page_owner&test=true', 'vi', 2, 0);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (56, 'Khuy???n m??i', '', 0, 'sangiare_popf', 'mod_popf', '0', 0, '_bank', 'file_img=http://fyi.vn/uploads/images/19032012132258.jpg&link_ads=http://fyi.vn&target_ads=page_owner&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (55, '??ang gi???m gi??', '', 0, 'sangiare_danggiamgia', 'mod_deals', '1', 0, 'danggiamgia', 'test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (77, 'H??? th???ng website FYI.VN', '', 1, 'sanggiare_hethongwebsite', 'mod_newslink', '0', 0, '_blank', 'catid=39&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (74, 'S??n gi?? r??? FYI', '', 1, 'sanggiare_sangiare', 'mod_readnewsid', '0', 0, '_blank', 'contentid=73&css=cheap&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (75, 'S??n tr??? g??p FYI', '', 1, 'sanggiare_santragop', 'mod_readnewsid', '0', 0, '_blank', 'contentid=56&css=bid&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (72, 'C??ng ty TNHH FYI', '<ul>\n	<li style=\"float: left;width: 170px;\">\n		<a href=\"http://fyi.vn/sangiare1/tin-tuc/bai-viet/gioi-thieu-cong-ty-51\">Gi???i thi???u c&ocirc;ng ty</a></li>\n	<li style=\"float: left;width: 130px;\">\n		<a href=\"http://fyi.vn/sangiare1/lien-he\">Li&ecirc;n h???</a></li>\n	<li style=\"float: left; width: 170px;\">\n		<a href=\"http://fyi.vn/sangiare1/tin-tuc/danh-muc/tuyen-dung-38\">Th&ocirc;ng tin tuy???n d???ng</a></li>\n</ul>\n<div class=\"follow_us\">\n	<span class=\"label\">Follow us on:</span>&nbsp;<a href=\"http://facebook.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/facebook.png\" style=\"width: 40px; height: 31px; \" /></a><a href=\"http://twitter.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/tiwter.png\" style=\"width: 40px; height: 32px; \" /></a><a href=\"http://youtube.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/youtube.png\" style=\"width: 40px; height: 31px; \" /></a></div>\n', 1, 'sanggiare_gtcty', 'mod_custom', '0', 1, '_blank', 'test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (68, 'Google Analytics', '', 1, 'sanggiare_googleanalytics', 'mod_googleanalytics', '0', 0, '_blank', 'uacct=UA-21372503-1&trackpage=&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (70, 'Tr??? gi??p kh??ch h??ng', '', 1, 'sanggiare_trogiup', 'mod_newslink', '0', 0, '_blank', 'catid=35&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (71, 'D???ch v??? kh??ch h??ng', '', 1, 'sanggiare_dichvu', 'mod_newslink', '0', 0, '_blank', 'catid=34&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (76, 'S??n ?????u gi?? FYI', '', 1, 'sanggiare_sandaugia', 'mod_readnewsid', '0', 0, '_blank', 'contentid=74&css=auction&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (73, 'Si??u th??? ??i???n m??y FYI', '', 1, 'sanggiare_sieuthidienmay', 'mod_readnewsid', '0', 0, '_blank', 'contentid=56&css=shop&test=true', 'vi', 2, 1);
INSERT INTO modules (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (78, 'CopyRight', '<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 1000px; \">\n	<tbody>\n		<tr>\n			<td align=\"left\">\n				<p>\n					<strong>&nbsp;C&Ocirc;NG TY TNHH FYI VI???T NAM - SI&Ecirc;U TH??? ??I???N M&Aacute;Y ONLINE FYI.VN</strong></p>\n				<div>\n					<strong>Tr??? s??? ch&iacute;nh</strong>: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;SS1N H???ng L??nh &ndash; Ph?????ng 15 &ndash; Qu???n 10 - Tp.HCM</div>\n				<div>\n					<strong>Hotline1: </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1800 6839 &nbsp; &nbsp; &nbsp; (Mi???n c?????c cu???c g???i ?????n)</div>\n			</td>\n			<td align=\"right\" valign=\"top\">\n				<p style=\"text-align: right; \">\n					&nbsp;</p>\n				<div>\n					Chi nh&aacute;nh H&agrave; N???i: Ng&otilde; 124 V??nh Tuy &ndash; Qu???n Hai B&agrave; Tr??ng &ndash; H&agrave; N???i</div>\n				<div>\n					Hotline1: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1800 6839 &nbsp; &nbsp; &nbsp; (Mi???n c?????c cu???c g???i ?????n)</div>\n				<p style=\"text-align: right; \">\n					Copyright &copy; 2009-2012 YFI., JSC. All rights reserved.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<p>\n	&nbsp;</p>\n', 1, 'copyright', 'mod_custom', '0', 1, '_blank', 'test=true', 'vi', 2, 1);


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

INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (60, 'Tin t???c s??n gi?? r???', '', NULL, 'sanggiare_tintuc', 'mod_lastnews', '0', 0, '_blank', 'catid=30,32&max=10&max_show=5&string_length=70&show_img=0&width_img=40px&height_img=40px&speed=1500&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (54, 'Consultation Order', '<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size: 16px;\"><strong>Hotline 01: <span style=\"color:#ff0000;\">1800 6839</span></strong></span></span></p>\n<p>\n	&nbsp;</p>\n<p>\n	<span style=\"font-family:tahoma,geneva,sans-serif;\"><span style=\"font-size: 16px;\"><strong>Hotline 02: <span style=\"color:#ff0000;\">(08) 3977 8088</span></strong></span></span></p>\n<p>\n	&nbsp;</p>\n<p>\n	<em><span id=\"result_box\" lang=\"en\"><span class=\"hps atn\">(</span><span>From</span> <span class=\"hps\">7h to</span> <span class=\"hps\">21h</span> <span class=\"hps\">daily</span><span>,</span> <span class=\"hps\">including Sundays</span> <span class=\"hps\">and holidays)</span></span></em></p>\n', NULL, 'sangiare_hotro', 'mod_custom', '1', 1, 'support', 'test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (59, 'Qu???n c??o tr?????t - sangiare', '', NULL, 'sangiare_bannerscroll', 'mod_bannerscroll', '0', 0, '_bank', 'file_img_l=&link_img_l=&target_ads_l=page_owner&file_img_r=&link_img_r=&target_ads_r=page_owner&test=true', 'vi', 2, 0);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (56, 'Khuy???n m??i', '', NULL, 'sangiare_popf', 'mod_popf', '0', 0, '_bank', 'file_img=http://fyi.vn/uploads/images/19032012132258.jpg&link_ads=http://fyi.vn&target_ads=page_owner&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (55, 'Discount', '', NULL, 'sangiare_danggiamgia', 'mod_deals', '1', 0, 'danggiamgia', 'test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (76, 'S??n ?????u gi?? FYI', '', 1, 'sanggiare_sandaugia', 'mod_readnewsid', '0', 0, '_blank', 'contentid=74&css=auction&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (77, 'H??? th???ng website FYI.VN', '', 1, 'sanggiare_hethongwebsite', 'mod_newslink', '0', 0, '_blank', 'catid=39&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (72, 'FYL Co,. LTD', '<ul>\n	<li style=\"float: left;width: 170px;\">\n		<a href=\"http://fyi.vn/sangiare1/tin-tuc/bai-viet/gioi-thieu-cong-ty-51\">About Company</a></li>\n	<li style=\"float: left;width: 130px;\">\n		<a href=\"http://fyi.vn/sangiare1/lien-he\">Contact</a></li>\n	<li style=\"float: left; width: 170px;\">\n		<a href=\"http://fyi.vn/sangiare1/tin-tuc/danh-muc/tuyen-dung-38\"><span class=\"short_text\" id=\"result_box\" lang=\"en\"><span class=\"hps\">Employment Information</span></span></a></li>\n</ul>\n<div class=\"follow_us\">\n	<span class=\"label\">Follow us on:</span>&nbsp;<a href=\"http://facebook.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/facebook.png\" style=\"width: 40px; height: 31px; \" /></a><a href=\"http://twitter.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/tiwter.png\" style=\"width: 40px; height: 32px; \" /></a><a href=\"http://youtube.com/chonmua24h\" target=\"_blank\"><img alt=\"\" src=\"/sangiare1/data/images/youtube.png\" style=\"width: 40px; height: 31px; \" /></a></div>\n', 1, 'sanggiare_gtcty', 'mod_custom', '0', 1, '_blank', 'test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (68, 'Google Analytics', '', 1, 'sanggiare_googleanalytics', 'mod_googleanalytics', '0', 0, '_blank', 'uacct=UA-21372503-1&trackpage=&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (70, 'Help customers', '', 1, 'sanggiare_trogiup', 'mod_newslink', '0', 0, '_blank', 'catid=35&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (71, 'Customer Service', '', 1, 'sanggiare_dichvu', 'mod_newslink', '0', 0, '_blank', 'catid=34&max=200&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (73, 'Si??u th??? ??i???n m??y FYI', '', 1, 'sanggiare_sieuthidienmay', 'mod_readnewsid', '0', 0, '_blank', 'contentid=56&css=shop&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (74, 'S??n gi?? r??? FYI', '', 1, 'sanggiare_sangiare', 'mod_readnewsid', '0', 0, '_blank', 'contentid=73&css=cheap&test=true', 'vi', 2, 1);
INSERT INTO modules_en (`id`, `title`, `content`, `ordering`, `position`, `module`, `show_title`, `html`, `params`, `attr`, `lang`, `site`, `published`) VALUES (75, 'S??n tr??? g??p FYI', '', 1, 'sanggiare_santragop', 'mod_readnewsid', '0', 0, '_blank', 'contentid=56&css=bid&test=true', 'vi', 2, 1);
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

INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (1, 0, 'C???m nang thi???t k???', '1340991096.png', '258', 'cam-nang-thiet-ke', 1, 'C???m nang thi???t k???', 'C???m nang thi???t k???', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (2, 0, 'Thi???t k??? In ???n', NULL, '1502', 'thiet-ke-in-an', 2, 'Thi???t k??? In ???n', 'Thi???t k??? In ???n', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (3, 0, 'Thi???t k??? website', NULL, '', 'thiet-ke-website', 3, 'Thi???t k??? website', 'Thi???t k??? website', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (4, 0, 'Nh???ng c??u h???i c???n g???p', NULL, '1712', 'nhung-cau-hoi-can-gap', 4, 'Nh???ng c??u h???i c???n g???p', 'Nh???ng c??u h???i c???n g???p', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (5, 1, 'Ki???n th???c c?? b???n', NULL, NULL, 'kien-thuc-co-ban', 1, 'Ki???n th???c c?? b???n', 'Ki???n th???c c?? b???n', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (7, 2, 'Thi???t k??? Logo', NULL, NULL, 'thiet-ke-logo', 1, 'Thi???t k??? Logo', 'Thi???t k??? Logo', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (12, 3, 'Website du l???ch', '1340995556.jpg', NULL, 'website-du-lich', 0, 'Thi???t website du l???ch', 'Thi???t website du l???ch', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (20, 0, 'Th??ng tin c???n bi???t', NULL, '', 'thong-tin-can-biet', 1, 'Th??ng tin c???n bi???t', 'Th??ng tin c???n bi???t', 'vi', 1);
INSERT INTO news_cat (`catid`, `parentid`, `catname`, `image`, `productcat`, `caturl`, `ordering`, `desc`, `keyword`, `lang`, `published`) VALUES (24, 0, 'T?? v???n thi???t k???', NULL, NULL, 'tu-van-thiet-ke', 1, 'T?? v???n thi???t k???', 'T?? v???n thi???t k???', 'vi', 1);


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

INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (51, 5, 'kien-thuc-co-ban', 'Gi???i thi???u c??ng ty', 'gioi-thieu-cong-ty', 'Gi???i thi???u c??ng ty', '<p>\r\n	Gi???i thi???u c&ocirc;ng ty</p>\r\n', 0, '1341002690.jpg', 'data/news/1208906notebook-dell-vostro-1450-i3-2330m-210-36623-grey.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 1, 1332145824, 1341002692, 1, 2, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (52, 24, 'tu-van-thiet-ke', 'LG Cookie WiFi T310i - chi???c Cookie th??? 8 c???a LG', 'lg-cookie-wifi-t310i-chiec-cookie-thu-8-cua-lg', 'T??i ???? h???i b???n th??n m??nh kho???ng m???t th??ng tr?????c ????y. Website c???a t??i tr??ng ???n v???i t??i, nh??ng nh???ng ng?????i kh??c th?? th???y nh?? th??? n??o? C??ng c??? t??m ki???m th???y web c???a t??i nh?? th??? n??o? ????y l?? 10 c??ch ????? t???i ??u h??a website ????? c?? m???t di??n m???o thu h??t', '<div class=\"Normal\" id=\"divNewsContent\">\r\n	<p>\r\n		&nbsp;</p>\r\n	<div>\r\n		1<strong>. T????ng th&iacute;ch v???i Tr&igrave;nh duy???t</strong></div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		??i???u ?????u ti&ecirc;n l&agrave; xem website c???a b???n tr&ecirc;n nh???ng tr&igrave;nh duy???t c???a ng?????i kh&aacute;c. T&ocirc;i th?????ng xuy&ecirc;n l&agrave;m vi???c n&agrave;y v&agrave; th???nh tho???ng t&ocirc;i c???m th???y r???t b???t ng??? v???i nh???ng nh???ng g&igrave; m&igrave;nh ??&atilde; th???y</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		T???T C??? TR&Igrave;NH DUY???T http://www.anybrowser.com</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>2. ???????ng d???n b??? h???ng</strong></div>\r\n	<div>\r\n		Kho???ng 5% ???????ng d???n tr&ecirc;n Internet b??? h???ng. M???t trang c&oacute; nh???ng ???????ng d???n b??? h???ng s??? ????? l???i ???n t?????ng x???u cho kh&aacute;ch h&agrave;ng v&agrave; th?????ng l&agrave; gi???m doanh s???. H??n n???a, nh???ng C&ocirc;ng c??? t&igrave;m ki???m ph??? bi???n v&agrave; c&aacute;c Danh b??? s??? kh&ocirc;ng cho trang web c???a b???n v&agrave;o danh s&aacute;ch n???u n&oacute; c&oacute; ???????ng d???n b??? h???ng hay h&igrave;nh ???nh b??? m???t.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		??&acirc;y l&agrave; nh???ng d???ch v??? ki???m tra ???????ng d???n</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		LINK SCAN http://www.elsop.com/linkscan/quickcheck.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		NET MECHANIC http://netmechanic.com/maintain.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		PH&Aacute;T HI???N ???????NG D???N H???NG TRONG WEBSITE</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>3. M&agrave;u s???c an to&agrave;n cho web</strong></div>\r\n	<div>\r\n		Li???u nh???ng m&agrave;u s???c tr&ecirc;n web c???a b???n tr&ocirc;ng ???n d?????i tr&igrave;nh duy???t c???a nh???ng ng?????i kh&aacute;c? B???n c&oacute; th??? c&oacute; s??? ph???i m&agrave;u t???t tr&ecirc;n tr&igrave;nh duy???t c???a b???n nh??ng n&oacute; c&oacute; th??? tr&ocirc;ng r???t k&igrave; qu&aacute;i tr&ecirc;n m&aacute;y t&iacute;nh c???a ng?????i kh&aacute;c</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Ch??? c&oacute; 216 m&agrave;u s???c an to&agrave;n cho web c???a b???n. Nh???ng m&agrave;u s???c n&agrave;y th???ng nh???t v&agrave; gi??? nguy&ecirc;n tr&ecirc;n b???t c??? m&aacute;y t&iacute;nh hay tr&igrave;nh duy???t n&agrave;o c&oacute; kh??? n??ng hi???n th??? m&agrave;u n???ng 8 bit</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		B???ng m&agrave;u an to&agrave;n cho web c&oacute; 6 nh&oacute;m, m???i nh&oacute;m c&oacute; 36 m&agrave;u. 216 m&agrave;u an to&agrave;n cho web n&agrave;y c&oacute; th??? k???t h???p v???i c&aacute;i tr??? s??? RGB ( ????? xanh d????ng xanh da tr???i) nh?? sau: 0, 51, 102, 153, 204, 255 (m???i tr??? s??? RGB ph???i chia h???t cho 51).</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		??&acirc;y l&agrave; b???ng m&agrave;u an to&agrave;n</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		NGU???N M&Agrave;U AN TO&Agrave;N CHO WEB http://www.web-source.net/216_color_chart.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>4. ??u&ocirc;i ALT</strong></div>\r\n	<div>\r\n		??u&ocirc;i ALT cho ph&eacute;p b???n thay th??? cho ng?????i c&oacute; ch???c n??ng &ldquo;xem h&igrave;nh ???nh&rdquo; b??? t???t tr&ecirc;n tr&igrave;nh duy???t c???a h???. Gi??? s??? h??? th???ng chuy???n h?????ng tr&ecirc;n website c???a b???n g???m m???t lo???t nh???ng n&uacute;t d???n t???i nh???ng trang kh&aacute;c trong site. N???u b???n kh&ocirc;ng c&oacute; c&aacute;c ??u&ocirc;i ALT, ng?????i c&oacute; ch???c n??ng &ldquo;xem h&igrave;nh ???nh&rdquo; b??? t???t s??? kh&ocirc;ng th??? chuy???n h?????ng tr&ecirc;n site c???a b???n - ??? n&uacute;t c???a b???n h??? s??? ch??? nh&igrave;n th???y m???t kho???ng kh&ocirc;ng tr???ng r???ng.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nh??ng m???t ??u&ocirc;i ALT cho ph&eacute;p b???n n&oacute;i cho h??? bi???t l&agrave; n&uacute;t ??&oacute; c&oacute; ho???t ?????ng. V&iacute; d???, n???u n&uacute;t ??&oacute; l&agrave; ???????ng d???n t???i &ldquo;B???n ????? site&rdquo; b???n c&oacute; th??? ch&egrave;n ??u&ocirc;i ALT sau: Nh???p chu???t v&agrave;o ??&acirc;y ????? xem B???n ????? site.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		C&aacute;c ??u&ocirc;i ALT c??ng cho ph&eacute;p b???n n&ecirc;u n&acirc;ng cao ???????c t???n su???t c???a t??? kh&oacute;a. B???n c&oacute; th??? ch&egrave;n t??? kh&oacute;a ch&iacute;nh c???a b???n v&agrave;o nh???ng h&igrave;nh ???nh kh&ocirc;ng ???????c si&ecirc;u li&ecirc;n k???t. V&iacute; d???: c&aacute;c chuy???n bay gi???m gi&aacute;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>5. Si&ecirc;u ??u&ocirc;i</strong></div>\r\n	<div>\r\n		Nh???ng si&ecirc;u ??u&ocirc;i r???t quan tr???ng, c???n c&oacute; h???n m???t b&agrave;i b&aacute;o ????? b&agrave;n lu???n v??? ch&uacute;ng. Nh???ng ??u&ocirc;i m?????n quan tr???ng l&agrave; ??u&ocirc;i ti&ecirc;u ?????, ??u&ocirc;i t??? kh&oacute;a v&agrave; ??u&ocirc;i m&ocirc; t???</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		??u&ocirc;i ti&ecirc;u ????? kh&ocirc;ng n&ecirc;n v?????t qu&aacute; 64 k&iacute; t??? (n???u d&agrave;i h??n, n&oacute; s??? b??? m???t v&agrave;i c&ocirc;ng c??? t&igrave;m ki???m c???t b???)</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		??u&ocirc;i t??? kh&oacute;a c&oacute; th??? ch???a t??? 5 ?????n 10 t??? kh&oacute;a xu???t hi???n trong trang web c???a b???n. ?????ng cho v&agrave;o ??&oacute; nh???ng t??? kh&oacute;a kh&ocirc;ng xu???t hi???n trong trang web ??&oacute; &ndash; m???t v&agrave;i c&ocirc;ng c??? t&igrave;m ki???m c&oacute; th??? ph???t website c???a b???n v&igrave; ??i???u n&agrave;y. ?????ng l???p l???i t??? kh&oacute;a- ??i???u ??&oacute; ???????c g???i l&agrave; &ldquo;nh???i t??? kh&oacute;a&rdquo; &ndash; v&agrave; ??i???u n&agrave;y c??ng kh&ocirc;ng ???????c c&aacute;c c&ocirc;ng c??? t&igrave;m ki???m khuy???n kh&iacute;ch cho l???m.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Ng??n c&aacute;ch c&aacute;c t??? kh&oacute;a b???ng nh???ng kho???ng tr???ng (kh&ocirc;ng d&ugrave;ng d???u ph???y). ??i???u n&agrave;y c??ng cho ph&eacute;p c&ocirc;ng c??? t&igrave;m ki???m k???t h???p c&aacute;c t??? kh&oacute;a th&agrave;nh c???m t???, ????? hi???n th??? k???t qu??? cho nh???ng ng?????i nh???p c??? c???m t??? v&agrave;o ????? t&igrave;m ki???m.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		??u&ocirc;i m&ocirc; t??? kh&ocirc;ng n&ecirc;n qu&aacute; 200 k&iacute; t???. Ch???a c&agrave;ng nhi???u t??? kh&oacute;a c&agrave;ng t???t. Nh??? l&agrave; ??u&ocirc;i m&ocirc; t??? ph???i cu???n h&uacute;t &ndash; l&agrave;m cho m???i ng?????i mu???n ?????n th??m trang.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		??&acirc;y l&agrave; v&agrave;i ch????ng tr&igrave;nh ????? t???o ra si&ecirc;u ??u&ocirc;i cho b???n:</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		X?????ng s???a ch???a website http://websitegarage.netscape.com/turbocharge/metatag/</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		B???nh vi???n website http://northernwebs.com/tools/multimetamaker.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nh&agrave; S???n xu???t-??a-Si&ecirc;u http://multimeta.com/tools/multimetamaker.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>6. Th???i gian t???i</strong></div>\r\n	<div>\r\n		M???t trang t???i ch???m l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave;m gi???m doanh thu. Th???i gian t???i th&ocirc;ng th?????ng c???a m???t trang kho???ng 15 gi&acirc;y l&agrave; ch???p nh???n ???????c. ??&acirc;y l&agrave; c&aacute;c d???ch v??? ki???m tra xem t???i trang web c???a b???n v??? m???t bao l&acirc;u:</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		X?????ng s???a ch???a Net http://www.netmechanic.com/cobrands/FutureQuest/load_check.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Dung l?????ng trang web c???a b???n kh&ocirc;ng n&ecirc;n v?????t qu&aacute; 30Kb. ????? t&iacute;nh dung l?????ng website, h&atilde;y ??&aacute;nh d???u c&aacute;c v??n b???n HTML, sau ??&oacute; nh???p chu???t v&agrave;o &ldquo;File&rdquo; ho???c l&agrave; &ldquo;Properties&rdquo; v&agrave; nh&igrave;n v&agrave;o ph???n dung l?????ng sai. L&agrave;m thao t&aacute;c t????ng t??? n???u mu???n ki???m tra dung l?????ng c???a nh???ng b???c ???nh tr&ecirc;n trang ??&oacute;. Sau ??&oacute; c???ng nh???ng con s??? n&agrave;y v???i nhau ????? t&igrave;m ra dung l?????ng c???a trang.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		N???u trang c???a b???n nh??? h??n 30Kb v&agrave; v???n m???t h??n 15 gi&acirc;y ????? t???i trang v???, th&igrave; ch???c ch???n s??? c??? n???m ??? d???ch v??? l??u tr??? web c???a b???n. Gi???i ph&aacute;p cho v???n ????? n&agrave;y ??&oacute; l&agrave; ?????i d???ch v??? l??u tr???. ??&acirc;y l&agrave; 2 d???ch v??? gi&uacute;p ki???m tra t???c ????? c???a b&ecirc;n l??u tr??? web v&agrave; so s&aacute;nh ch&uacute;ng v???i d???ch v??? kh&aacute;c.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		So s&aacute;nh d???ch v??? l??u tr??? http://www.hostcompare.com/testools.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		D???ch v??? web Cnet http://webservices.cnet.com/ping/</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		7. Gi???m dung l?????ng ???nh c&oacute; ??u&ocirc;i l&agrave; GIF ho???c ??u&ocirc;i JPEG</div>\r\n	<div>\r\n		Gi???m dung l?????ng h&igrave;nh ???nh tr&ecirc;n web l&agrave; c&aacute;ch gi???m th???i gian t???i trang h???u hi???u nh???t. B???n th?????ng gi???m h&igrave;nh ???nh GIF ho???c JPEG xu???ng 40% t???i 50% m&agrave; kh&ocirc;ng l&agrave;m b???t ????? ph&acirc;n gi???i v&agrave; s???c n&eacute;t.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		http://spinwave.com/crunchers.html</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>8. T???i ??u h&oacute;a HTML</strong></div>\r\n	<div>\r\n		M???t c&aacute;ch kh&aacute;c ????? l&agrave;m cho trang c???a b???n t???i nhanh h??n ??&oacute; l&agrave; n&eacute;n (hay t???i ??u h&oacute;a) m&atilde; HTML c???a b???n. M???t ch????ng tr&igrave;nh t???i ??u h&oacute;a HTML s??? lo???i b??? t???t c??? c&aacute;c kho???ng tr???ng tr&ecirc;n m&atilde; HTML c???a b???n v&agrave; c??ng lo???i b??? nh???ng ??u&ocirc;i kh&ocirc;ng c???n thi???t.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Trung b&igrave;nh, m???t ch????ng tr&igrave;nh t???i ??u h&oacute;a c&oacute; th??? gi???m ???????c 15 ?????n 20% dung l?????ng ???nh c???a b???n. ??&oacute; c&oacute; th??? kh&ocirc;ng ph???i l&agrave; m???t con s??? l???n, nh??ng dung l?????ng c&agrave;ng gi???m bao nhi&ecirc;u th&igrave; trang web c???a b???n c&agrave;ng t???i nhanh h??n, v&agrave; tr&igrave;nh duy???t c???a kh&aacute;ch h&agrave;ng s??? ph&acirc;n t&iacute;ch trang web c???a b???n hi???u qu??? h??n.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nh??ng c??ng n&ecirc;n l??u &yacute;: H???u h???t c&aacute;c ch????ng tr&igrave;nh T???i ??u h&oacute;a HTML b???n s??? t&igrave;m th???y m???t th???c ????n &ldquo;C&aacute;c l???a ch???n&rdquo; b&aacute;o cho ch????ng tr&igrave;nh l??? ??i m???t v&agrave;i ph???n m???t m&atilde; nh???t ??inh. H&atilde;y ng??n ch???n kh&ocirc;ng cho T???i ??u h&oacute;a kh&ocirc;ng n&eacute;n nh???ng ??u&ocirc;i so???n th???o g???n k&egrave;m &ndash; n???u nh???ng c&aacute;i ??u&ocirc;i n&agrave;y b??? n&eacute;n, ch????ng tr&igrave;nh so???n th???o s??? kh&ocirc;ng ho???t ?????ng ???????c.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		T???I ??U H&Oacute;A HTML CHUY&Ecirc;N S&Acirc;U http://www.pcbit.com/htmlopt/</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>9. Nh???ng ??u&ocirc;i R???NG, &nbsp;CAO v&agrave; GI???I H???N</strong></div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nh???ng thu???c R???NG, D&Agrave;I v&agrave; GI???I H???N r???t c???n thi???t cho m???i h&igrave;nh ???nh tr&ecirc;n web. Khi b???n si&ecirc;u d???n m???t h&igrave;nh ???nh, ch&uacute; &yacute; c???n ph???i ?????t thu???c t&iacute;nh GI???I HAN b???ng 0 (GI???I H???N =0). N???u kh&ocirc;ng, h&igrave;nh ???nh ???????c si&ecirc;u d???n c???a b???n s??? c&oacute; m???t ???????ng vi???n m&agrave;u xanh x???u x&iacute; bao quanh n&oacute;.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		Nh???ng thu???c t&iacute;nh R???NG v&agrave; CAO s??? l&agrave;m cho trang web c???a b???n t???i nhanh h??n, b???i v&igrave; tr&igrave;nh duy???t bi???t tr?????c ???????c h&igrave;nh ???nh c???n bao nhi&ecirc;u kho???ng kh&ocirc;ng. ????? t&igrave;m ra chi???u r???ng v&agrave; chi???u cao c???a h&igrave;nh ???nh, h&atilde;y nh&aacute;y ??&uacute;p chu???t v&agrave;o t???p h&igrave;nh ???nh. &ldquo;Microsoft Photo Editor&rdquo; s??? t??? ?????ng m??? ra &ndash; h&igrave;nh ???nh c???a b???n s??? xu???t hi???n, v???i chi???u r???ng v&agrave; chi???u cao c???a h&igrave;nh ???nh (d?????i ????n v??? pixels) hi???n th??? tr&ecirc;n thanh c&ocirc;ng c???.</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		<strong>10. Ki???m tra ch???t l?????ng HTML</strong></div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		H&atilde;y ki???m tra ch???t l?????ng HTML c???a m&igrave;nh. M???t v&agrave;i c&ocirc;ng c??? t&igrave;m ki???m th?????ng x???p c&aacute;c trang c&oacute; ch???t l?????ng HTML k&eacute;m v&agrave;o th??? h???ng th???p</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		??&acirc;y l&agrave; nh???ng ch????ng tr&igrave;nh ki???m tra mi???n ph&iacute; ch???t l?????ng HTML tr???c tuy???n</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		H??? TR??? HTML http://www.htmlhelp.org/tools/validator/</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		BOBBY http://www.cast.org/bobby</div>\r\n	<div>\r\n		&nbsp;</div>\r\n	<div>\r\n		WATSON http://watson.addy.com/</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '1341002763.jpg', 'data/news/imagelg-cookie-wifi-t310i-chiec-cookie-thu-8-cua-lg.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '`12`12`12', '1`2', 1, 1335873103, 1341045321, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (68, 0, 'sadsads', 'T??n mi???n Qu???c t???', 'ten-mien-quoc-te', 'sadsa', '<p>\r\n	T&ecirc;n mi???n Qu???c t???</p>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 0, 1341006173, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (53, 5, 'dien-thoai', '?????p h???p LG Wink GT350i c?? WiFi gi?? th???p', 'dap-hop-lg-wink-gt350i-co-wifi-gia-thap', 'Wink GT350i ???????c thi???t k??? d??nh cho gi???i tr??? v???i m??n h??nh c???m ???ng v?? b??n ph??m Full Qwerty tr?????t ngang gi?? th???p', '<div class=\"Normal\" id=\"divNewsContent\">\r\n	<p>\r\n		<strong>LG Wink GT350i</strong> c&oacute; m&agrave;n h&igrave;nh c???m ???ng ??i???n tr??? TFT r???ng 3.0&quot; v???i giao di???n S-Class v???i 4 m&agrave;n h&igrave;nh ch??? c&oacute; kh??? n??ng t&ugrave;y bi???n cho vi???c truy c???p ch??? v???i ?????ng t&aacute;c l?????t ng&oacute;n tay ????n gi???n v&agrave; b&agrave;n ph&iacute;m Qwerty tr?????t ngang gi&uacute;p nh???p li???u nhanh ch&oacute;ng v&agrave; ti???n l???i.</p>\r\n	<p>\r\n		Camera 2.0 h??? tr??? kh??? n??ng quay video chu???n QVGA gi&uacute;p ng?????i s??? d???ng l??u l???i nh???ng kho???nh kh???c ??&aacute;ng nh??? v???i b??? nh??? trong l&ecirc;n ?????n 56MB v&agrave; kh??? n??ng m??? r???ng b??? nh??? qua khe c???m th??? nh??? microSD l&ecirc;n ?????n 8GB ho???c chia s??? v???i b???n b&egrave; th&ocirc;ng qua c&aacute;c m???ng x&atilde; h???i ???????c t&iacute;ch h???p s???n trong m&aacute;y th&ocirc;ng qua k???t n???i WiFi.</p>\r\n	<p>\r\n		<strong>Wink GT350i</strong> c&ograve;n ???????c h??? tr??? Push Mail gi&uacute;p ng?????i s??? d???ng c&oacute; th??? d??? d&agrave;ng g???i v&agrave; nh???n th?? t??? t&agrave;i kho???n e-mail c???a c&ocirc;ng ty, ?????ng b??? h&oacute;a th??, danh b???, l???ch l&agrave;m vi???c,...</p>\r\n	<p>\r\n		Sau ??&acirc;y l&agrave; h&igrave;nh ???nh ?????p h???p<strong> LG Wink GT350i </strong></p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/199_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Nguy&ecirc;n h???p LG GT350i ch&iacute;nh h&atilde;ng</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/200_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		To&agrave;n b??? ph??? ki???n k&egrave;m theo</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/201_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		M???t sau khi tr?????t b&agrave;n ph&iacute;m ra</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/213_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		S??? d???ng pin chu???n Li-Ion 950 mAh</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/214_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Camera 2.0MP, h??? tr??? quay video chu???n QVGA</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/215_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		C???nh tr&aacute;i l&agrave; n&uacute;t ??i???u ch???nh &acirc;m l?????ng, khe c???m th??? nh??? microSD</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/216_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		C???nh ph???i l&agrave; c???ng microUSB v&agrave; ph&iacute;m camera</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/217_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		C???nh tr&ecirc;n l&agrave; n&uacute;t ngu???n/kh&oacute;a m&aacute;y v&agrave; ng&otilde; ra audio 3.5mm</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/218_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		C???nh d?????i</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/219_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Giao di???n m&agrave;n h&igrave;nh ch&iacute;nh</p>\r\n	<p align=\"center\">\r\n		<img align=\"bottom\" alt=\"\" border=\"0\" hspace=\"0\" src=\"http://images.thegioididong.com/Files/2012/04/26/44811/220_dap-hop-LG-Wink-GT350i-co-WiFi-gia-thap.jpg\" /></p>\r\n	<p align=\"center\">\r\n		Giao di???n menu ngang</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, 'data/images/news/219dap-hop-lg-wink-gt350i-co-wifi-gia-thap.jpg', 'data/news/219dap-hop-lg-wink-gt350i-co-wifi-gia-thap.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335885960, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (54, 5, 'dien-thoai', 'HTC EVO One ch???y Android 4.0 v???i pin c???c kh???ng', 'htc-evo-one-chay-android-40-voi-pin-cuc-khung', 'Tr??n trang Pocketnow v???a ????ng t???i h??nh ???nh r?? r??? c???a smartphone HTC EVO One, nhi???u kh??? n??ng nh?? m???ng Sprint s??? ph??n ph???i m??y trong th???i gian t???i.', '<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/04/htc-evo-one.jpg\"><img alt=\"HTC EVO One\" class=\"aligncenter size-full wp-image-117330\" height=\"369\" src=\"http://cafef1.com/wp-content/uploads/2012/04/htc-evo-one.jpg\" title=\"HTC EVO One\" width=\"600\" /></a></p>\r\n<p style=\"text-align: justify;\">\r\n	Theo ??&oacute;, HTC EVO One s??? h???u m&agrave;n h&igrave;nh AMOLED 4,7 inch v???i ????? ph&acirc;n gi???i HD720p, chip x??? l&yacute; Snapdragon S4 Dual-Core 1,5GHz, b??? nh??? trong 16GB. M&aacute;y c&oacute; camera sau 8 &quot;ch???m&quot; c&ugrave;ng camera tr?????c 2 megapixel, t&iacute;ch h???p c&ocirc;ng ngh??? Beats Audio, h??? tr??? khe c???m th??? nh??? microSD, k???t n???i 4G LTE. EVO One c&oacute; thi???t k??? li???n khung v???i pin ??i k&egrave;m c&oacute; dung l?????ng kh&aacute; cao 2.650 mAh, m&aacute;y ch???y tr&ecirc;n n???n&nbsp;<a href=\"http://cafef1.com/tag/Android\" title=\"Android\">Android</a> 4.0 Ice Cream Sandwich v???i giao di???n Sense 4.0 m???i nh???t c???a HTC.</p>\r\n<p style=\"text-align: justify;\">\r\n	Hi???n ch??a c&oacute; th&ocirc;ng b&aacute;o v??? gi&aacute; c??ng nh?? ng&agrave;y xu???t x?????ng c???a s???n ph???m.</p>\r\n', 1, 'data/images/news/htc-evo-one.jpg', 'data/news/htc-evo-one.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335886072, 1335955368, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (55, 5, 'dien-thoai', 'TCL 217D ??? ??i???n tho???i 2 sim gi?? si??u r??? nhi???u t??nh n??ng h???u ??ch', 'tcl-217d-dien-thoai-2-sim-gia-sieu-re-nhieu-tinh-nang-huu-ich', 'M??y c?? thi???t k??? nh??? g???n nhi???u m??u s???c tr??? trung, ?????c bi???t TCL 217D h??? tr??? t??nh n??ng \"HOT\" hi???n nay 2 sim 2 s??ng r???t ti???n l???i.', '<p style=\"text-align: justify;\">\r\n	TCL 217D h?????ng ?????n ng?????i d&ugrave;ng l&agrave; h???c sinh, sinh vi&ecirc;n, c&aacute;c b???n tr??? c&oacute; nhu c???u s??? d???ng nhi???u sim...&nbsp;?????c bi???t m&aacute;y t&iacute;ch h???p t&iacute;nh n??ng h???n ch??? th???i gian g???i, ph&ugrave; h???p v???i xu h?????ng n??? r??? sim khuy???n m&atilde;i g???i 10 ph&uacute;t n???i m???ng mi???n ph&iacute; nh?? hi???n nay. Ngo&agrave;i ra, m&aacute;y c&oacute; th??? ph&aacute;t FM m&agrave; kh&ocirc;ng c???n ?????n <a href=\"http://cafef1.com/tag/tai-nghe/\" target=\"_blank\" title=\"tai nghe\">tai nghe</a>, ??&egrave;n pin c???c s&aacute;ng c??ng ???????c t&iacute;ch h???p tr&ecirc;n&nbsp;thi???t b???. Hi???n nay,&nbsp;TCL 217D ???????c b&aacute;n v???i gi&aacute; 369,000 ?????ng nh??ng khi ?????t h&agrave;ng online&nbsp;t???i h??? th???ng c???a h&agrave;ng thegioididong.com <a href=\"http://www.dienmay.com/khuyenmai/?utm_source=thegioididong&amp;utm_medium=leaderboard&amp;utm_campaign=t1\" target=\"_blank\" title=\"TCL 217D\">gi&aacute; ch??? c&ograve;n 289,000 ?????ng.</a></p>\r\n<p style=\"text-align: justify;\">\r\n	<strong><em>H&igrave;nh ???nh c???n c???nh&nbsp;TCL 217D gi&aacute; si&ecirc;u r???.</em></strong></p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_1.jpg\"><img alt=\"TCL 217D\" class=\"aligncenter size-full wp-image-95655\" height=\"365\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_1.jpg\" title=\"TCL-217D_CafeF1.com_1\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;M&aacute;y c&oacute; thi???t k??? nh??? g???n.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_2.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95656\" height=\"395\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_2.jpg\" title=\"TCL-217D_CafeF1.com_2\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;M???t sau.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_3.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95657\" height=\"412\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_3.jpg\" title=\"TCL-217D_CafeF1.com_3\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;C???ng s???c n???m ??? c???nh tr&aacute;i c???a m&aacute;y.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_4.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95658\" height=\"389\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_4.jpg\" title=\"TCL-217D_CafeF1.com_4\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;C???nh ph???i v???i khe t&aacute;ch ph???n ???p l??ng.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_5.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95659\" height=\"349\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_5.jpg\" title=\"TCL-217D_CafeF1.com_5\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;C&aacute;c g&oacute;c c???nh ???????c bo tr&ograve;n.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_6.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95660\" height=\"347\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_6.jpg\" title=\"TCL-217D_CafeF1.com_6\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;??&egrave;n pin ???????c t&iacute;ch h???p theo m&aacute;y.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_7.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95661\" height=\"386\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_7.jpg\" title=\"TCL-217D_CafeF1.com_7\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;B&agrave;n ph&iacute;m cao su ch???ng b???i v&agrave; t???o c???m gi&aacute;c &ecirc;m tay khi b???m.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_8.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95662\" height=\"379\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_8.jpg\" title=\"TCL-217D_CafeF1.com_8\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;M&aacute;y ???????c s???n xu???t t???i Trung Qu???c v&agrave; ???????c b???o h&agrave;ng ch&iacute;nh h&atilde;ng 12 th&aacute;ng.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_9.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95663\" height=\"347\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_9.jpg\" title=\"TCL-217D_CafeF1.com_9\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;<a href=\"http://cafef1.com/category/san-pham/do-choi-so-phu-kien/\" title=\"Ph??? ki???n\">Ph??? ki???n</a> ??i k&egrave;m g???m s???c v&agrave; tai nghe.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_10.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95664\" height=\"398\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_10.jpg\" title=\"TCL-217D_CafeF1.com_10\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;Nghe FM kh&ocirc;ng c???n ?????n tai nghe.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_11.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95665\" height=\"400\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_11.jpg\" title=\"TCL-217D_CafeF1.com_11\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;Giao di???n Menu.</p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_12.jpg\"><img alt=\"\" class=\"aligncenter size-full wp-image-95666\" height=\"424\" src=\"http://cafef1.com/wp-content/uploads/2012/01/TCL-217D_CafeF1.com_12.jpg\" title=\"TCL-217D_CafeF1.com_12\" width=\"550\" /></a></p>\r\n<p style=\"text-align: center;\">\r\n	&nbsp;T&iacute;nh n??ng &quot;HOT&quot; gi???i h???n cu???c g???i.</p>\r\n', 0, 'data/images/news/tcl-217dcafef1com1.jpg', 'data/news/tcl-217dcafef1com1.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335886191, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (56, 5, 'dien-thoai', 'RIM kh??ng t??? b??? ph??m QWERTY c???ng tr??n BlackBerry 10', 'rim-khong-tu-bo-phim-qwerty-cung-tren-blackberry-10', 'M???u th??? d??nh cho c??c nh?? ph??t tri???n l?? smartphone c???m ???ng, nh??ng RIM kh???ng ?????nh v???n ti???p t???c v???i c??c smartphone truy???n th???ng tr??n n???n t???ng m???i.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"M???u Alpha c?? thi???t k??? h??i gi???ng m??y t??nh b???ng thu nh???.\" border=\"1\" height=\"320\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/C0/bb10.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				M???u Alpha c&oacute; thi???t k??? h??i gi???ng m&aacute;y t&iacute;nh b???ng thu nh???.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Vi???c RIM cho ra m???t m???u <a class=\"Normal\" href=\"http://sohoa.vnexpress.net/sh/dien-thoai/smartphone/2012/05/3b9b5fb8/RIM-gioi-thieu-BlackBerry-10-Alpha\"><font color=\"#0000ff\">BlackBerry 10 Alpha</font></a> d&agrave;nh cho c&aacute;c nh&agrave; ph&aacute;t tri???n thi???u ??i b&agrave;n ph&iacute;m QWERTY v???t l&yacute; ??&atilde; khi???n kh&ocirc;ng &iacute;t ng?????i y&ecirc;u th&iacute;ch h&atilde;ng ??i???n tho???i Canada c???m th???y kh&ocirc;ng h&agrave;i l&ograve;ng.</p>\r\n<p class=\"Normal\">\r\n	Tuy nhi&ecirc;n, trong s??? nh???ng ph???n l??u &yacute; c???a CEP Thorsten Heins t???i s??? ki???n BlackBerry World, nh???ng c???i ti???n c&oacute; trong h??? ??i???u h&agrave;nh m???i v???n c&oacute; m???t tr&ecirc;n c&aacute;c s???n ph???m ra m???t v???i thi???t k??? truy???n th???ng c???a RIM, thay v&igrave; ch??? c&oacute; tr&ecirc;n smartphone v???i m&agrave;n h&igrave;nh c???m ???ng.</p>\r\n<p class=\"Normal\">\r\n	M???t ph&aacute;t ng&ocirc;n vi&ecirc;n c???a RIM kh???ng ?????nh, h&atilde;ng kh&ocirc;ng c&oacute; &yacute; ?????nh t??? b??? vi???c s???n xu???t ??i???n tho???i v???i b&agrave;n ph&iacute;m full QWERTY v???t l&yacute;, v???n t???o n&ecirc;n ??i???m ri&ecirc;ng c???a c&ocirc;ng ty t??? tr?????c t???i nay. RIM ch??? ra m???t s???n ph???m th??? v???i b&agrave;n ph&iacute;m ???o, tuy nhi&ecirc;n khi ??i v&agrave;o s???n xu???t th???c t???, BlackBerry 10 s??? c&oacute; m???t tr&ecirc;n c??? hai d&ograve;ng ??i???n tho???i thu???n c???m ???ng v&agrave; ??i???n tho???i v???i b&agrave;n ph&iacute;m c???ng.</p>\r\n', 0, 'data/images/news/3378693-472167-a-checkbox-icon-isolated-on-white.jpg', 'data/news/3378693-472167-a-checkbox-icon-isolated-on-white.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335942916, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (57, 5, 'dien-thoai', 'Apple v?? Samsung s???p g???p nhau h??a gi???i', 'apple-va-samsung-sap-gap-nhau-hoa-giai', 'Hai nh?? s???n xu???t thi???t b??? di ?????ng l???n nh???t th??? gi???i s??? g???p nhau v??o ng??y 21 v?? 22/5 nh???m t??m ki???m bi???n ph??p ch???m d???t cu???c ki???n t???ng k??o d??i h??n m???t n??m qua.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"Apple v?? Samsung ??ang t??m ki???m bi???n ph??p h??a gi???i. ???nh: PhoneArena.\" border=\"1\" height=\"338\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/B1/samsung-apple.jpg\" width=\"480\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				Apple v&agrave; Samsung ??ang t&igrave;m ki???m bi???n ph&aacute;p h&ograve;a gi???i. ???nh: <em>PhoneArena.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	C??? CEO c???a Apple v&agrave; Samsung l&agrave; Tim Cook v&agrave; Choi Gee-sung ??&atilde; ?????ng &yacute; bi???n ph&aacute;p h&ograve;a gi???i m&agrave; t&ograve;a &aacute;n San Francisco ????a ra. Hai h&atilde;ng s??? ph???i ????a ra nh???ng l&yacute; l??? thuy???t ph???c, ch???ng minh kh??? n??ng gi&agrave;nh th???ng l???i c???a m&igrave;nh.</p>\r\n<p class=\"Normal\">\r\n	Apple v&agrave; Samsung b???t ?????u ki???n t???ng t??? th&aacute;ng 4/2011 ?????n nay. Tranh ch???p ph&aacute;p l&yacute; di???n ra t???i h??n 10 qu???c gia. C??? hai c&aacute;o bu???c l???n nhau v??? ?????i th??? vi ph???m s&aacute;ng ch??? ph???n m???m, thi???t k??? tr&ecirc;n smartphone v&agrave; m&aacute;y t&iacute;nh b???ng.</p>\r\n', 0, 'data/images/news/samsung-apple.jpg', 'data/news/samsung-apple.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335943092, 1335943098, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (58, 5, 'kien-thuc-co-ban', 'LG kh??ng c?? k??? ho???ch ph??t tri???n ??i???n tho???i Windows Phone', 'lg-khong-co-ke-hoach-phat-trien-dien-thoai-windows-phone', 'Nh?? s???n xu???t H??n Qu???c cho bi???t h??? kh??ng gi???i thi???u smartphone s??? d???ng n???n t???ng Microsoft trong t????ng lai, d?? ????y ch??a ph???i l?? quy???t ?????nh cu???i c??ng.', '<p style=\"text-align: center;\">\r\n	<img alt=\"Optimus 7 l?? m???u Windows Phone 7 v???i thi???t k??? t???t. ???nh: Qu???c Huy.\" border=\"1\" height=\"540\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/B5/lg-optimus-7-1.jpg\" width=\"480\" /></p>\r\n<p class=\"Normal\">\r\n	CEO Microsoft, Steve Ballmer d??? ki&ecirc;??n s??? c?? chuy&ecirc;??n th??m H??n Qu&ocirc;??c, b??n v&ecirc;?? k&ecirc;?? ho???ch ph??t tri&ecirc;??n c??c n&ecirc;??n t???ng c???a h??? trong th??ng n??y.</p>\r\n<p class=\"Normal\">\r\n	Tuy nhi&ecirc;n, ph??t ng&ocirc;n vi&ecirc;n LG cho r???ng, kh??? n??ng ph??t tri&ecirc;??n nh???ng chi&ecirc;??c Windows Phone kh&ocirc;ng. &quot;S&ocirc;?? m??y ch???y n&ecirc;??n t???ng n??y b??n ra th??? tr?????ng to??n c&acirc;??u kh&ocirc;ng c?? nhi&ecirc;??u ?? ngh??a&quot;, ph??t ng&ocirc;n vi&ecirc;n c???a h??ng n??i, LG kh&ocirc;ng c?? k&ecirc;?? ho???ch ra smartphone Windows Phone.</p>\r\n<p class=\"Normal\">\r\n	LG l?? m&ocirc;??t trong nh???ng h??ng c?? quan h&ecirc;?? t&ocirc;??t v???i Microsoft. H??ng n??y c??ng s???m ra m???t nh???ng chi&ecirc;??c Windows Phone 7 v??o cu&ocirc;??i 2010. Tuy nhi&ecirc;n, s??? ??i l&ecirc;n c???a Samsung c???a n&ecirc;??n t???ng Android ??ang khi&ecirc;??n LG y&ecirc;??u th&ecirc;?? h??n tr&ecirc;n ph&acirc;n kh??c n??y. Trong khi ????, Windows Phone kh&ocirc;ng mang l???i k&ecirc;??t qu??? nh?? mong ?????i.</p>\r\n', 0, '1341002812.png', 'data/news/lg-optimus-7-1.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943150, 1341002813, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (59, 12, 'website-du-lich', 'web du lich la website duoc nhieu nguoi quan tam', 'web-du-lich-la-website-duoc-nhieu-nguoi-quan-tam', 'Samsung v?? LG v???a gi???i thi???u c??c smartphone c?? gi?? tr??n d?????i 3 tri???u ?????ng. Ngo??i ra, h??ng ??i???n tho???i Trung Qu???c l?? ZTE c??ng c?? model m???i v???i thi???t k??? l???.', '<p class=\"SubTitle\">\r\n	ZTE U N720 (2,6 tri???u ?????ng)</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"N720 m??n h??nh 2,8 inch.\" border=\"1\" height=\"328\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/AC/zte-n720.jpg\" width=\"480\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				N720 m&agrave;n h&igrave;nh 2,8 inch.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	ZTE U N720 l&agrave; m???t trong nh???ng smartphone ch???y Android r??? nh???t tr&ecirc;n th??? tr?????ng hi???n nay. M&aacute;y s??? d???ng m&agrave;n h&igrave;nh 2,8 inch ????? ph&acirc;n gi???i 240 x 320 pixel. S???n ph???m ???????c trang b??? chip x??? l&yacute; t???c ????? 600 MHz, RAM 256 MB, b??? nh??? trong 256 MB c&oacute; th??? m??? r???ng l&ecirc;n ?????n 8 GB b???ng th??? nh??? MicroSD. Camera c???a m&aacute;y c&oacute; ????? ph&acirc;n gi???i 3,2 Megapixel.</p>\r\n<p class=\"SubTitle\">\r\n	Samsung Galaxy Pocket (2,8 tri???u ?????ng)</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"????y l?? ??i???n tho???i Android r??? nh???t c???a Samsung.\" border=\"1\" height=\"370\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/AC/Samsung-galaxy-pocket-3.jpg\" width=\"480\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				??&acirc;y l&agrave; ??i???n tho???i Android r??? nh???t c???a Samsung.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Galaxy Pocket l&agrave; smartphone ch???y Android r??? nh???t c???a Samsung hi???n nay. M&aacute;y s??? h???u m&agrave;n h&igrave;nh 2,8 inch, ????? ph&acirc;n gi???i 240 x 320 pixel, ch???t l?????ng hi???n th??? ??? m???c kh&aacute;. Thi???t b??? c&oacute; c&aacute;c k???t n???i t??? HSDPA, Wi-Fi, GPS v&agrave; c??? Wi-Fi hotspot. S???n ph???m s??? d???ng chip x??? l&yacute; 832 MHz, t????ng ??????ng Galaxy Y. Model n&agrave;y ch???y Android 2.3, m&aacute;y ???nh 2 Megapixel.</p>\r\n<p class=\"SubTitle\">\r\n	LG Optimus L3 (3,2 tri???u ?????ng)</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"2\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"L3 m??n h??nh c???m ???ng 3,2 inch.\" border=\"1\" height=\"342\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/AC/LG-l3-E400-3.jpg\" width=\"480\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				L3 m&agrave;n h&igrave;nh c???m ???ng 3,2 inch.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Optimus L3 ???????c k??? v???ng l&agrave; ?????i th??? c???a Galaxy Y v???i gi&aacute; r???. M&aacute;y c&oacute; m&agrave;n h&igrave;nh c???m ???ng ??i???n dung 3,2 inch, ????? ph&acirc;n gi???i 240 x 320 pixel. S???n ph???m ???????c trang b??? chip x??? l&yacute; t???c ????? 800 MHz, k???t n???i Wi-Fi, 3G v&agrave; camera 3 Megapixel. B??? nh??? trong c???a m&aacute;y l&agrave; 1GB v&agrave; c&oacute; th??? n&acirc;ng c???p b???ng th??? nh??? micro SD l&ecirc;n ?????n 32 GB. Optimus L3 ch???y h??? ??i???u h&agrave;nh Android 2.3.</p>\r\n', 0, '1341007468.jpg', 'data/news/samsung-galaxy-pocket-3.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943208, 1341007515, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (60, 7, 'laptop', 'Apple c?? th??? khai t??? MacBook Pro 17 inch', 'apple-co-the-khai-tu-macbook-pro-17-inch', 'Nguy??n nh??n l?? b???i s???n ph???m n??y b??n ch???m v?? nh?? s???n xu???t ??ang chu???n b??? tung ra d??ng laptop m???i k???t h???p gi???a MacBook Pro v???i MacBook Air.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"MacBook Pro 17 inch b??n kh??ng ch???y b???ng c??c model 13 v?? 15 inch. ???nh: Engadget.\" border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/30/macbook_pro.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				MacBook Pro 17 inch b&aacute;n kh&ocirc;ng ch???y b???ng c&aacute;c model 13 v&agrave; 15 inch. ???nh: <em>Engadget.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Ming-Chi Kuo, m???t nh&agrave; ph&acirc;n t&iacute;ch c???a KGI Securities cho bi???t, m???u laptop m???i c???a Apple s??? c&oacute; s???c m???nh c???a MacBook Pro v&agrave; s??? g???n nh??? c???a MacBoook Air. &Ocirc;ng Ming-Chi d??? ??o&aacute;n r???ng &quot;Qu??? t&aacute;o&quot; s??? tung m???u MacBook m???i n&agrave;y v&agrave;o ?????u qu&yacute; III/2012.</p>\r\n<p class=\"Normal\">\r\n	Theo <em>Macrumors</em>, ????? chu???n b??? cho d&ograve;ng laptop m???i, Apple c&oacute; th??? &quot;khai t???&quot; d&ograve;ng MacBook Pro 17 inch trong n??m nay. Nguy&ecirc;n nh&acirc;n l&agrave; b???i model n&agrave;y b&aacute;n kh&ocirc;ng ch???y v&agrave; s??? l?????ng m&aacute;y xu???t x?????ng ng&agrave;y m???t gi???m.</p>\r\n<p class=\"Normal\">\r\n	?????u qu&yacute; I n??m nay, doanh s??? MacBook Pro 13 v&agrave; 15 inch d??? ki???n ?????t 1,5 tri???u v&agrave; 500.000 m&aacute;y. Trong khi ??&oacute;, s??? l?????ng MacBook Pro 17 inch b&aacute;n ra ???????c ch??? c&oacute; 50.000 ????n v???. Theo ?????c t&iacute;nh c???a nh&agrave; ph&acirc;n t&iacute;ch Ming-Chi Kuo, MacBook Air chi???m h??n m???t ph???n ba trong s??? 3,1 tri???u laptop b&aacute;n ra c???a Apple.</p>\r\n', 1, 'data/images/news/macbookpro.jpg', 'data/news/macbookpro.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335943274, 1335956025, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (61, 20, 'thong-tin-can-biet', 'HP Envy 4 b??n t???i Trung Qu???c v???i gi?? kh???i ??i???m 871 USD', 'hp-envy-4-ban-tai-trung-quoc-voi-gia-khoi-diem-871-usd', 'Gi?? n??y ??p d???ng cho phi??n b???n th???p nh???t d??ng chip Intel Core i3 trong khi model cao c???p nh???t v???i vi x??? l?? Core i5 ???????c b??n v???i gi?? l??n t???i 999 USD.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"M???u HP Envy 4 cao c???p nh???t c?? gi?? t????ng ??????ng 999 USD. ???nh: Laptopreviews.\" border=\"1\" height=\"232\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6B/Envy.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				M???u HP Envy 4 cao c???p nh???t c&oacute; gi&aacute; t????ng ??????ng 999 USD. ???nh: <em>Laptopreviews.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Trang web c???a HP t???i Trung Qu???c v???a cho ph&eacute;p ?????t mua m???u ultrabook Envy 4 d&ugrave;ng vi x??? l&yacute; Ivy Bridge. C&aacute;c model xu???t hi???n tr&ecirc;n website c???a h&atilde;ng n&agrave;y bao g???m Envy 4-1021tx, 1020tx, 1019tx, 1006tx, 1005tx v&agrave; 1004tx.Gi&aacute; b&aacute;n kh???i ??i???m c???a HP Envy 4 l&agrave; 5.499 nh&acirc;n d&acirc;n t??? (t????ng ??????ng 871 USD) v&agrave; cao nh???t l&agrave; 6.299 nh&acirc;n d&acirc;n t??? (t????ng ??????ng 999 USD)</p>\r\n<p class=\"Normal\">\r\n	M???u Envy 4-1021tx cao c???p nh???t s??? d???ng vi x??? l&yacute; Intel Core i5-2467M t???c ????? 1,6GHz. M&aacute;y t&iacute;ch h???p ????? ho??? AMD Radeon HD 7670M. S???n ph???m ???????c trang b??? b??? nh??? RAM 4GB, ??? c???ng SATA HD 500GB t???c ????? 5.400 v&ograve;ng/ph&uacute;t, h??? tr??? Wi-Fi, Bluetooth, pin 4 cell ho???t ??&ocirc;ng li&ecirc;n t???c trong 8 ti???ng. Ngo&agrave;i ra, HP Envy 4-1021tx c&ograve;n c&oacute; hai loa ngo&agrave;i c&ocirc;ng ngh??? Beats Audio, hai c???ng USB 3.0, m???t c???ng USB 2.0, HDMI, RJ45, microphone v&agrave; ?????u ?????c th??? nh???.</p>\r\n<p class=\"Normal\">\r\n	M&agrave;n h&igrave;nh 14 inch c???a Envy 4-1021tx c&oacute; ????? ph&acirc;n gi???i 1.366 x 768 v&agrave; ???????c b???c g????ng s&aacute;ng b&oacute;ng. K&iacute;ch th?????c c???a Envy 4-1021tx l&agrave; 34 x 23.58 x 1.98 cm. Model n&agrave;y n???ng 1,75 kg.</p>\r\n', 0, 'data/images/news/envy.jpg', 'data/news/envy.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943314, 1341001075, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (62, 7, 'laptop', '???nh th???c t??? Samsung Series 7 Chronos', 'anh-thuc-te-samsung-series-7-chronos', 'C???u h??nh model 15 inch c???a Samsung Series 7 Chronos d??ng chip Ivy Bridge v???a ???????c ????a l??n website ch??nh th???c c???a Samsung Canada.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%2811%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				Samsung Series 7 Chronos t???ng ???????c tr??ng b&agrave;y t???i s??? ki???n CES 2012.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	M???c d&ugrave; ch??a c&oacute; ???nh ch&iacute;nh th???c cho m???u 15 inch n&agrave;y nh??ng trang <em>Engadget</em> tr?????c ??&oacute; t???ng ????ng t???i ???nh th???c t??? c???a Series 7 Chronos 17 inch.</p>\r\n<p class=\"Normal\">\r\n	Samsung Series 7 Chronos 15 inch ???????c trang b??? m&agrave;n h&igrave;nh LED ????? ph&acirc;n gi???i 1.600 x 900 pixel c&oacute; kh??? n??ng ch???ng ch&oacute;i. M&aacute;y d&ugrave;ng vi x??? l&yacute; Core i7-3615QM l&otilde;i t??? c&ugrave;ng v???i card ????? ho??? r???i Nvidia GeForce GT640M. B??? nh??? RAM c???a Series 7 Chronos l&agrave; 8GB. Model n&agrave;y s??? d???ng ??? c???ng 1TB t???c ????? 5.400 v&ograve;ng/ph&uacute;t.</p>\r\n<p class=\"Normal\">\r\n	<strong>Xem th&ecirc;m ???nh th???c t??? Samsung Series 7 Chronos 17 inch ??? d?????i ??&acirc;y.</strong></p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				C&aacute;c c???ng k???t n???i c???a Series 7 Chronos.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%281%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				S???n ph???m d&ugrave;ng loa JBL.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%282%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"BreakLine\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%283%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				B&agrave;n r&ecirc; chu???t h??i l???ch sang b&ecirc;n tr&aacute;i.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%284%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Ph&iacute;m ngu???n c???a m&aacute;y ???????c ?????t ??? g&oacute;c ph???i.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/6D/series7_%285%29.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', 1, 'data/images/news/series711.jpg', 'data/news/series711.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 190, 1335943366, 1335955359, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (63, 20, 'thong-tin-can-biet', 'Asus b??n laptop K53TK chip Fusion l??i t??? t???i Nh???t', 'asus-ban-laptop-k53tk-chip-fusion-loi-tu-tai-nhat', 'S???n ph???m s??? d???ng APU A8-3520 c???a AMD c?? CPU t???c ????? 1,6GHz, ????? ho??? Radeon HD 6620G t??ch v?? c?? th??m card ????? ho??? r???i Radeon HD 7670M.', '<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"S???n ph???m m???i c???a Asus ???????c trang b??? ????? ho??? Radeon HD 6620G t??ch h???p c??ng v???i card r???i Radeon HD 7670M. ???nh: Notebookcheck.\" border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/88/asus.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				S???n ph???m m???i c???a Asus ???????c trang b??? ????? ho??? Radeon HD 6620G t&iacute;ch h???p c&ugrave;ng v???i card r???i Radeon HD 7670M. ???nh<em>: Notebookcheck.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	Theo <em>Notebookcheck</em>, Asus b???t ?????u b&aacute;n m???u laptop K53TK-SX0A8 t??? h&ocirc;m nay. S???n ph???m s??? d???ng vi x??? l&yacute; AMD A8-3520M l&otilde;i t??? t???c ????? 1,6GHz v&agrave; c&oacute; gi&aacute; b&aacute;n kh???i ??i???m kho???ng 79.800 y&ecirc;n (kho???ng 980 USD).</p>\r\n<p class=\"Normal\">\r\n	Asus K53TK s??? d???ng ????? ho??? t&iacute;ch h???p Radeon HD 6620G l???n card r???i Radeon HD 7670M. M&aacute;y c&oacute; m&agrave;n h&igrave;nh LED 15,6 inch ????? ph&acirc;n gi???i 1.366 x 768 pixel. Model n&agrave;y ???????c trang b??? RAM 8GB, ??? c???ng 750GB t???c ????? 5.400 v&ograve;ng/ph&uacute;t c&oacute; th??? m??? r???ng l&ecirc;n t???i 1GB, ??? ghi DVD c&ugrave;ng v???i loa ngo&agrave;i Altec Lansing. Ngo&agrave;i ra, Asus K53TK c&ograve;n t&iacute;ch h???p hai c???ng USB 2.0, hai c???ng USB 3.0, c&aacute;c k???t n???i D-SUB, HDMI, FireWire, ?????u ?????c th??? v&agrave; webcam 1,3 Megapixel.</p>\r\n<p class=\"Normal\">\r\n	S???n ph???m c???a Asus c&oacute; c&acirc;n n???ng 2,7kg v&agrave; c&oacute; pin ??i k&egrave;m ho???t ?????ng ???????c li&ecirc;n ti???p trong 4 ti???ng. M&aacute;y ch???y h??? ??i???u h&agrave;nh Windows 7 Home Premium.</p>\r\n', 1, 'data/images/news/asus.jpg', 'data/news/asus.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943409, 1341001061, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (64, 20, 'thong-tin-can-biet', 'MSI b???t ?????u b??n laptop ch??i game GT70 t???i M???', 'msi-bat-dau-ban-laptop-choi-game-gt70-tai-my', 'S???n ph???m n??y s??? d???ng vi x??? l?? n???n t???ng Ivy Bridge m???i nh???t v?? c?? gi?? dao ?????ng t??? 1.500 ?????n 2.500 USD.', '<p class=\"Normal\">\r\n	Nh&agrave; s???n xu???t MSI b???t ?????u b&aacute;n m???u laptop ch??i game GT70 t???i M??? v???i m???c gi&aacute; dao ?????ng t??? 1.500 ?????n 2.500 USD. S???n ph???m n&agrave;y ???????c trang b??? vi x??? l&yacute; n???n t???ng Ivy Bridge m???i nh???t c???a Intel.</p>\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" width=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"GT70 c?? gi?? dao ?????ng t??? 1.500-2.500 USD t???i M???. ???nh:Slashgear.\" border=\"1\" height=\"333\" src=\"http://sohoa.vnexpress.net/Files/Subject/3B/9B/5F/9D/msi.jpg\" width=\"500\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"Image\">\r\n				GT70 c&oacute; gi&aacute; dao ?????ng t??? 1.500-2.500 USD t???i M???. ???nh: <em>Slashgear.</em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"Normal\">\r\n	MSI GT70 s??? d???ng vi x??? l&yacute; Intel Core i7 v&agrave; card ????? ho??? Nvidia GeForce GTX670M. M&aacute;y c&oacute; m&agrave;n h&igrave;nh ch???ng ch&oacute;i 17,3 inch ????? ph&acirc;n gi???i 1.920 x 1.080 pixel c&ugrave;ng v???i b&agrave;n ph&iacute;m ??&egrave;n n???n LED nhi???u m&agrave;u do SteelSeries s???n xu???t. Ngo&agrave;i ra, s???n ph???m n&agrave;y c&ograve;n ???????c trang b??? RAM 12GB, ??? SSD 128GB v&agrave; HDD 500GB. Ng?????i d&ugrave;ng c&oacute; th??? l???a ch???n n&acirc;ng c???p dung l?????ng ??? HDD l&ecirc;n t???i 750GB.</p>\r\n<p class=\"Normal\">\r\n	Laptop ch??i game m???i c???a MSI c&oacute; ba c???ng USB 3.0, k???t n???i HDMI 1.4, gi???c c???m tai nghe. M&aacute;y h??? tr??? Wi-Fi, Bluetooth, ?????u ?????c th??? nh??? 7 trong 1. Webcam ??i k&egrave;m MSI GT70 c&oacute; ????? ph&acirc;n gi???i 720p. M&aacute;y s??? d???ng c&ocirc;ng ngh??? &acirc;m thanh THX TruStudio. K&iacute;ch th?????c c???a MSI GT70 l&agrave; 42,7 x 28,8 x 5,51 cm. Model n&agrave;y n???ng kho???ng 3,9kg.</p>\r\n<p class=\"Normal\">\r\n	Theo <em>Notebookcheck</em>, m???u GT60 15,6 inch c???a MSI c??ng s??? c&oacute; b???n d&ugrave;ng chip Ivy Bridge trong th???i gian t???i.</p>\r\n', 0, '1341233715.jpg', 'data/news/msi.jpg', NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', '', '', 1, 1335943466, 1341233717, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (65, 4, 'nhung-cau-hoi-can-gap', 'Tai sao website cu bi loi hoai ', 'tai-sao-website-cu-bi-loi-hoai', 'sdasd', '<p>\r\n	sdas</p>\r\n', 0, '1341002299.png', 'data/news/nss1340332529.jpg', NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 1, 1340989639, 1341002301, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (66, 0, NULL, 'test', 'test', '', '<p>\r\n	no dung&nbsp;</p>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=0,show_date=0,show_editdate=0,show_print=1,show_email=1,show_comment=1', '', '', 1, 1340989928, 1391801108, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (76, 20, 'thong-tin-can-biet', 'sadsadsad', 'sadsadsad', 'asdasdassadas', '<p>\r\n	sdasdas</p>\r\n', 0, '1341233865.png', NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341233869, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (67, 0, '', 'Thanh to??n', 'thanh-toan', '', '<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<strong>Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; th??? thanh to&aacute;n chuy???n kho???n qua c&aacute;c ng&acirc;n h&agrave;ng d?????i ??&acirc;y:</strong></p>\r\n<table border=\"1\" cellpadding=\"5\" cellspacing=\"5\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"\" src=\"/website_project/data/images/donga.jpg\" style=\"width: 150px; height: 80px; \" /></td>\r\n			<td valign=\"top\">\r\n				<h3>\r\n					<cufon alt=\"Ng??n \" class=\"cufon cufon-canvas\" style=\"width: 34px; height: 13px; \"><cufontext><cufon alt=\"Ng??n \" class=\"cufon cufon-canvas\" style=\"width: 4px; height: 1px; \">- Ng&acirc;n h&agrave;ng ??&ocirc;ng &Aacute;</cufon></cufontext></cufon></h3>\r\n				<p>\r\n					- Ch??? t&agrave;i kho???n: <strong>Nguy???n Thanh phong</strong><br />\r\n					- S??? t&agrave;i kho???n: &nbsp;&nbsp;<strong>0041001092630</strong><br />\r\n					- Chi nh&aacute;nh: &nbsp; &nbsp; &nbsp; T&acirc;n B&igrave;nh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"\" src=\"/website_project/data/images/sac.jpg\" style=\"width: 150px; height: 40px; \" /></td>\r\n			<td valign=\"top\">\r\n				<h3>\r\n					- Ng&acirc;n h&agrave;ng Sacombank</h3>\r\n				<h3>\r\n					- Ch??? t&agrave;i kho???n:&nbsp;Nguy???n Th??? H???ng Duy&ecirc;n</h3>\r\n				<p>\r\n					- S??? t&agrave;i kho???n: <strong>0101876155</strong><br />\r\n					- Chi nh&aacute;nh: T&acirc;n B&igrave;nh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"\" src=\"/website_project/data/images/exim.jpg\" style=\"width: 150px; height: 104px; \" /></td>\r\n			<td valign=\"top\">\r\n				<h3>\r\n					<cufon alt=\"Ng??n \" class=\"cufon cufon-canvas\" style=\"width: 34px; height: 13px; \"><cufontext><cufon alt=\"Ng??n \" class=\"cufon cufon-canvas\" style=\"width: 4px; height: 1px; \">- Ng&acirc;n h&agrave;ng Xu???t Nh???p Kh???u EXIMBANK</cufon></cufontext></cufon></h3>\r\n				<p>\r\n					- Ch??? t&agrave;i kho???n: <b>Nguy???n Thanh Phong</b><br />\r\n					- S??? t&agrave;i kho???n:<br />\r\n					- Chi nh&aacute;nh: C???ng H&ograve;a</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341002393, 1341042788, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (69, 0, '', 'T??n mi???n Vi???t nam', 'ten-mien-viet-nam', '', '<p>\r\n	T&ecirc;n mi???n Vi???t namT&ecirc;n mi???n Vi???t namT&ecirc;n mi???n Vi???t namT&ecirc;n mi???n Vi???t namT&ecirc;n mi???n Vi???t nam</p>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 0, 1341006155, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (70, 0, '', 'Webhosting', 'webhosting', '', '<p style=\"text-align: justify; \">\r\n	Hosting l&agrave; n??i l??u tr??? t???t c??? c&aacute;c trang Web, c&aacute;c th&ocirc;ng tin, email, d??? li???u, h&igrave;nh ???nh tr&ecirc;n m???t m&aacute;y ch??? Internet, Web Hosting ?????ng th???i c??ng l&agrave; n??i di???n ra t???t c??? c&aacute;c ho???t ?????ng giao d???ch, trao ?????i th&ocirc;ng tin gi???a website v???i ng?????i s??? d???ng Internet v&agrave; h??? tr??? c&aacute;c ph???n m???m Internet ho???t ?????ng.</p>\r\n<div>\r\n	&nbsp;</div>\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"22\">\r\n				<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"22\">\r\n								<img alt=\"ten mien hosting\" height=\"22\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_linux.jpg\" title=\"ten mien hosting\" width=\"22\" /></td>\r\n							<td>\r\n								<p>\r\n									<strong>LINUX HOSTING</strong></p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<table border=\"1\" cellpadding=\"5\" cellspacing=\"1\" style=\"border-color: rgb(0, 153, 255); border-collapse: collapse;\" width=\"100%\">\r\n					<tbody>\r\n						<tr bgcolor=\"#ffffff\" style=\"color: rgb(255, 255, 255);\">\r\n							<td bgcolor=\"#0099ff\" width=\"15%\">\r\n								<strong>Th&ocirc;ng Tin</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"13%\">\r\n								<strong>C&aacute; Nh&acirc;n</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"20%\">\r\n								<strong>B&aacute;n Chuy&ecirc;n Nghi???p</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"16%\">\r\n								<strong>B&aacute;n Chuy&ecirc;n Nghi???p ++</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"13%\">\r\n								<strong>Chuy&ecirc;n Nghi???p</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"14%\">\r\n								<strong>Doanh Nghi???p</strong></td>\r\n							<td bgcolor=\"#0099ff\" width=\"14%\">\r\n								<strong>TM ??i???n T???</strong></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Server ?????t t???i</strong></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" title=\"ten mien hosting\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" title=\"ten mien hosting\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" title=\"ten mien hosting\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" width=\"24\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_usa.gif\" title=\"ten mien hosting\" width=\"24\" />&nbsp;&nbsp;<img alt=\"ten mien hosting\" height=\"14\" src=\"http://mytrangroup.com/uploads/userfiles/image/flag_vn2.gif\" title=\"ten mien hosting\" width=\"24\" /></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Dung l?????ng</strong></td>\r\n							<td>\r\n								30 mb<br />\r\n								200 MB</td>\r\n							<td>\r\n								150 mb<br />\r\n								700 MB</td>\r\n							<td>\r\n								1000 MB</td>\r\n							<td>\r\n								400 mb<br />\r\n								1500 MB</td>\r\n							<td>\r\n								1000 mb<br />\r\n								3000 MB</td>\r\n							<td>\r\n								2000 mb<br />\r\n								5000 MB</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>B??ng th&ocirc;ng</strong></td>\r\n							<td>\r\n								300 mb<br />\r\n								1000 MB</td>\r\n							<td>\r\n								1500 mb<br />\r\n								5000 MB</td>\r\n							<td>\r\n								7000 MB</td>\r\n							<td>\r\n								3000 mb<br />\r\n								10.000 MB</td>\r\n							<td>\r\n								5000 mb<br />\r\n								30.000 MB</td>\r\n							<td>\r\n								7500 mb<br />\r\n								50.000 MB</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Email POP3/webmail</strong></td>\r\n							<td>\r\n								10</td>\r\n							<td>\r\n								50</td>\r\n							<td>\r\n								70</td>\r\n							<td>\r\n								100</td>\r\n							<td>\r\n								150</td>\r\n							<td>\r\n								500</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Subdomain</strong></td>\r\n							<td>\r\n								0</td>\r\n							<td>\r\n								3</td>\r\n							<td>\r\n								5</td>\r\n							<td>\r\n								10</td>\r\n							<td>\r\n								20</td>\r\n							<td>\r\n								30</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>PHP5 , GD2 </strong></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n							<td>\r\n								<img alt=\"ten mien hosting\" height=\"10\" src=\"http://mytrangroup.com/uploads/userfiles/image/icon_check.gif\" title=\"ten mien hosting\" width=\"11\" /></td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>mySQL5</strong></td>\r\n							<td>\r\n								1</td>\r\n							<td>\r\n								3</td>\r\n							<td>\r\n								5</td>\r\n							<td>\r\n								7</td>\r\n							<td>\r\n								9</td>\r\n							<td>\r\n								15</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Chi ph&iacute;</strong></td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$3-5 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$5-7 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$8-10 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$10-12 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$12-15/Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n							<td>\r\n								<table align=\"center\" background=\"./images/layout/bgchiphi.jpg\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"64\" width=\"64\">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												<strong>$22-30 /Th&aacute;ng</strong></td>\r\n										</tr>\r\n										<tr>\r\n											<td height=\"20\">\r\n												&nbsp;</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td bgcolor=\"#ffffff\">\r\n								<strong>Thanh to&aacute;n </strong></td>\r\n							<td>\r\n								1 N??m</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n							<td>\r\n								6 th&aacute;ng</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				<p align=\"left\">\r\n					&nbsp;</p>\r\n				<p align=\"left\">\r\n					<strong><em>L??u &Yacute; :</em></strong><br />\r\n					<em>- ????? xu???t&nbsp; s??? d???ng&nbsp; g&oacute;i Hosting TMDT chuy&ecirc;n nghi???p (30 USD/Th&aacute;ng).</em><br />\r\n					<em>L??u &yacute;: Chi ph&iacute; tr&ecirc;n ??&atilde; bao g???m ph&iacute; backup d??? li???u sao l??u tr&ecirc;n ??? c???ng h??? tr??? b???o m???t. Kh&ocirc;ng bao g???m ph&iacute; qu???n tr??? b???o m???t website.</em><br />\r\n					<em>- N???u s??? d???ng g&oacute;i hosting m&agrave; server c&oacute; c???u h&igrave;nh th???p h??n, gi???m &nbsp;30%. Ho???c kh&ocirc;ng backup d??? li???u sao l??u c??ng gi???m 30%.</em><br />\r\n					+ N???u s??? d???ng d???ch v??? B???o m???t, qu???n tr??? site tr&ecirc;n server: ch???ng DDos l&agrave;m ngh???n h??? th???ng c???c b??? ,Backup d??? li???u m???i ng&agrave;y ,ch???ng x&acirc;m nh???p h??? th???ng ????? ??&aacute;nh c???p d??? li???u ,chi ph&iacute; l&agrave; 90 usd/th&aacute;ng V???i web c&oacute; l?????ng truy c???p d?????i 30.000 l?????t/ th&aacute;ng</p>\r\n				<p align=\"left\">\r\n					<strong>C???u h&igrave;nh server :</strong></p>\r\n				<table border=\"1\" cellpadding=\"5\" cellspacing=\"1\" style=\"border-color: rgb(0, 153, 255); border-collapse: collapse;\" width=\"100%\">\r\n					<tbody>\r\n						<tr>\r\n							<td width=\"560\">\r\n								Intel Server Platform SR1530SH</td>\r\n						</tr>\r\n						<tr>\r\n							<td nowrap=\"nowrap\" width=\"560\">\r\n								<p>\r\n									Quad - Core Intel Xeon Processor X3220 (2.4Ghz, FSB 1066, Cache 8MB)</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td nowrap=\"nowrap\" width=\"560\">\r\n								<p>\r\n									&nbsp;2 X 250GB HDD(7200RPM) SATA2 3.5&quot;</p>\r\n							</td>\r\n						</tr>\r\n						<tr>\r\n							<td width=\"560\">\r\n								<p>\r\n									Ram 2GB 667MHz DDR2 Intel Validated</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n				<p align=\"left\">\r\n					<strong>+ H??? ??i???u h&agrave;nh &amp; ph???n m???m c&agrave;i ?????t :</strong></p>\r\n				<p>\r\n					<strong>- H??? ??i???u h&agrave;nh</strong> : s??? d???ng h??? ??i???u h&agrave;nh tr&ecirc;n CentOS ,h??? tr??? PHP version 5.1&hellip; CentOS l&agrave; H??H l???y core c???a RedHat, c&oacute; t&iacute;nh n??ng support gi???ng v???i nh???ng phi&ecirc;n b???n th????ng m???i c???a RedHat, c&oacute; ????? ???n ?????nh cao.<br />\r\n					<strong>- WebServer</strong>: S??? d???ng Apache 2.0.<br />\r\n					<strong>- Database Server</strong>: S??? d???ng MySql.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 0, 1341036616, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (71, 24, 'tu-van-thiet-ke', ' T???i sao m???i trang web ?????u ph???i ph??n t??ch t??nh ti???n l???i', 'tai-sao-moi-trang-web-deu-phai-phan-tich-tinh-tien-loi', 'V??? m???t k?? thu???t c?? h??ng ngh??n website tr??n internet, nh???ng website cung c???p d???ch v??? v?? s???n ph???m. T??i ch???c ch???n r???ng n???u b???n ?????c b??i b??o n??y b???n l?? m???t trong s??? h???.\r\nB???n c?? th??? ??ang t??? ????i h???i b???n th??n l??m th??? n??o ????? m??nh c?? th??? thu h??t nhi???u kh??ch ?????n v???i website c???a m??nh h??n v?? ti???p ???? l?? l??m th??? n??o ????? h??? mua h??ng m??nh b??n? C?? r???t nhi???u ng?????i khuy??n b???n n??n t??ng c?????ng qu???ng b?? website c???a b???n tr??n c??c c??ng c??? t??m ki???m, c?? ng?????i l???i cho r???ng ph????ng ph??p qu???ng c??o tr??? ti???n l?? c??u tr??? l???i cho v???n', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Ch???c ch???n b???n c&oacute; th??? thu h&uacute;t ???????c nhi???u ng?????i ?????n v???i website c???a b???n, tuy nhi&ecirc;n khi h??? ??&atilde; ?????n ???????c ??&oacute;, h??? ho&agrave;n to&agrave;n c&oacute; th??? b??? ??i m???t c&aacute;ch d??? d&agrave;ng, ph???i t&igrave;m hi???u h??? c???n c&aacute;i g&igrave;, v&agrave; t???o ra m???t v??? mua b&aacute;n m&agrave; kh&ocirc;ng m???t nhi???u c&ocirc;ng s???c. ??&acirc;y l&agrave; ch&igrave;a kh&oacute;a ????? thu h&uacute;t v&agrave; gi??? ch&acirc;n kh&aacute;ch h&agrave;ng online.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	C&oacute; m???t b???n ph&acirc;n t&iacute;ch t&iacute;nh kh??? d???ng c&oacute; th??? cung c???p m???t c&aacute;i nh&igrave;n ti???n b??? v??? c&aacute;ch c&aacute;c v??? kh&aacute;ch ?????n v???i website c???a b???n ??&aacute;nh gi&aacute; v??? c&aacute;c trang c???a website v&agrave; t??? ??&oacute; b???n c&oacute; th??? bi???t ???????c c???n thay ?????i nh???ng g&igrave; theo th??? t??? quan tr???ng.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	M???t b???n ph&acirc;n t&iacute;ch t&iacute;nh ti???n l???i th?????ng ph???i c&oacute; 4 ch??? ????? ch&iacute;nh sau:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	1. Chuy???n h?????ng</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	K???t c???u chuy???n h?????ng c???a website c???a b???n l&agrave; m???t trong nh???ng y???u t??? quan tr???ng c???a website. Kh??? n??ng chuy???n h?????ng c???a b???n s??? gi&uacute;p kh&aacute;ch ?????n th??m website di chuy???n trong ph???m vi website c???a b???n ????? t&igrave;m hi???u th&ecirc;m th&ocirc;ng tin v??? d???ch v???, s???n ph???m, c&ocirc;ng ty v&agrave; ngh&agrave;nh ngh??? c???a b???n. N???u kh??? n??ng chuy???n h?????ng c???a website b???n kh&ocirc;ng th???ng nh???t hay kh&ocirc;ng cung c???p c&aacute;c ???????ng li&ecirc;n k???t t???i t???t c??? c&aacute;c m???c ch&iacute;nh trong website c???a b???n, kh&aacute;ch h&agrave;ng c&oacute; th??? c???m th???y kh&oacute; ch???u v&agrave; r???i b??? ??i. C???n ph???i c&oacute; c&aacute;c ???????ng li&ecirc;n k???t qu???c t??? ??? ch&acirc;n m???i trang web. ??i???u n&agrave;y h??? tr??? cho vi???c di chuy???n trong website c???a c&aacute;c b???n, th&ugrave; h??? ??? ?????u hay ch&acirc;n c???a trang.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	2. N???i dung</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	N???i dung website c???a b???n l&agrave; m???t y???u t??? quan tr???ng kh&aacute;c ????? ?????m b???o th&agrave;nh c&ocirc;ng cho website c???a b???n. C???n ph???i cung c???p cho kh&aacute;ch vi???ng th??m c&agrave;ng nhi???u th&ocirc;ng tin v??? s???n ph???m, d???ch v???, v&agrave; ng&agrave;nh ngh??? c???a b???n c&agrave;ng t???t. Lu&ocirc;n lu&ocirc;n khi nh???, m???t kh&aacute;ch h&agrave;ng ???????c cung c???p ?????y ????? th&ocirc;ng tin ch&iacute;nh l&agrave; kh&aacute;ch h&agrave;ng ti???m n??ng nh???t.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	3. T&iacute;nh th???c d???ng</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	M???c ????? ph???c t???p c???a website c???a b???n th?????ng quy???t ?????nh vi???c kh&aacute;ch website c???a b???n c&oacute; ??? l???i, t&igrave;m hi???u hay c???m th???y kh&oacute; r???c r???i v&agrave; b??? ??i. N???u b???n c&oacute; nh???ng b??? ph???n kh&ocirc;ng ho???t ?????ng ho???c nh???ng trang kh&ocirc;ng t???i ???????c, b???n c&oacute; th??? ??&aacute;nh m???t kh&aacute;ch h&agrave;ng. Tuy nhi&ecirc;n, n???u b???n mu???n g???n th&ecirc;m m???t b??? ph???n n&agrave;o ??&oacute; v&agrave;o website c???a b???n, th&igrave; h&atilde;y tr&aacute;nh xa nh???ng trang ?????i lo???i nh?? &ldquo; s??? s???m xu???t hi???n&rdquo;. ??i???u n&agrave;y s??? ch???ng gi&uacute;p &iacute;ch g&igrave; cho kh&aacute;ch vi???ng th??m website c???a b???n ngo&agrave;i vi???c l&agrave;m cho h??? c???m th???y mu???n b??? ??i v&agrave; kh&ocirc;ng bao gi??? tr??? l???i.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	4. An ninh</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Khi b&aacute;n m???t s???n ph???m hay thu th???p th&ocirc;ng tin v??? kh&aacute;ch ?????n website, ??i???u quan tr???ng t???i y???u l&agrave; website c???a b???n ph???i an to&agrave;n. Hacker c&oacute; m???t ??? kh???p m???i n??i v&agrave; quan s&aacute;t m???i th???. Kh&ocirc;ng cung c???p m???t m&ocirc;i tr?????ng an to&agrave;n cho kh&aacute;ch th??m website c???a b???n c&oacute; th??? l&agrave; ??&ograve;n ch&iacute; t??? cho website c???a b???n v&agrave; c&ocirc;ng ty c???a b???n.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	C&aacute;c b&aacute;o c&aacute;o ph&acirc;n t&iacute;ch t&iacute;nh ti???n l???i c???a website kh&ocirc;ng h??? ?????t ????? v&agrave; c&oacute; th??? ti???p ki???m cho c&ocirc;ng ty v&agrave; website c???a b???n ???????c r???t nhi???u ti???n v&agrave; r???c r???i. M???t khi b???n bi???t ???????c c??n b???nh ??e d???a website c???a b???n, b???n c&oacute; th??? t???ng b?????c ch???a tr??? ch&uacute;ng. H&atilde;y nh???, s??? hi???u bi???t ??&atilde; gi&uacute;p b???n chi???n th???ng ???????c ph&acirc;n n???a.</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341045422, 1341045468, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (72, 24, 'tu-van-thiet-ke', 'L??m th??? n??o ????? ch???n ???????c m???t nh?? thi???t k???, ph??t tri???n web t???t', 'lam-the-nao-de-chon-duoc-mot-nha-thiet-ke-phat-trien-web-tot', 'Nh???ng thi???t k??? web t???t l?? r???t ch??? quan, th???m ch?? nh???ng trang web ???????c xem l?? tuy???t v???i b???i m???t ng?????i l???i b??? ng?????i kh??c cho l?? d??? t???.', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Tr?????c khi b???t ?????u nghi&ecirc;n c???u, ??i???u ?????u ti&ecirc;n c???n thi???t l???p ??&oacute; l&agrave; ng&acirc;n s&aacute;ch c???a b???n l&agrave; bao nhi&ecirc;u. ??i???u n&agrave;y quy???t ?????nh li???u b???n c&oacute; n&ecirc;n t&igrave;m ?????n h???n m???t c&ocirc;ng ty thi???t k??? hay ch??? nh??? ?????n m???t ng?????i thi???t k??? t??? do.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	V???y b???n t&igrave;m ki???m ??i???u g&igrave;? B???n c&oacute; t&igrave;m ki???m m???t ng?????i c&oacute; t&agrave;i thi???t k???, c&oacute; kinh nghi???m thi???t k??? nhi???u websites tuy???t v???i, hay b???n ch??? ????n gi???n t&igrave;m ki???m nh???ng t?? v???n t??? nh???ng ng?????i n&agrave;y. Ch???c ch???n l&agrave; b???n c???n c&oacute; m???t danh s&aacute;ch c&aacute;c nh&agrave; thi???t k??? web ??u ti&ecirc;n, b???n s??? kh&ocirc;ng li&ecirc;n l???c v???i ai m&agrave; b???n ch???ng h???ng th&uacute; v???i nh???ng s&aacute;ng t???o tr?????c ??&acirc;y c???a h???. Khi nh&igrave;n v&agrave;o nh???ng trang web c???a h???, kh&ocirc;ng nh&igrave;n v&agrave;o nh???ng c&aacute;i gi???ng nhau, ki???m tra nhan ch&oacute;ng li???u nh???ng trang web n&agrave;y load c&oacute; nhanh kh&ocirc;ng v&agrave; h??n h???t ph???i ki???m trang xem trang web n&agrave;y c&oacute; d??? chuy???n h?????ng v&agrave; xem li???u b???n c&oacute; b??? l???c tr&ecirc;n trang web n&agrave;y kh&ocirc;ng.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Khi b???n ti???p c???n m???t nh&agrave; thi???t k???, ch&uacute;ng t&ocirc;i g???i &yacute; b???n l&ecirc;n h???i nh???ng c&acirc;u h???i sau:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	1) &nbsp; &nbsp; &nbsp;N???u c???n ?????n m???t logo, h&atilde;y h???i xem h??? ??&oacute;ng nh&atilde;n nh?? th??? n&agrave;o, h??? x&acirc;y d???ng trang web hi???n t???i c???a b???n nh?? th??? n&agrave;o.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	2) &nbsp; &nbsp; &nbsp;H???i h??? xem h??? t???o ra bao nhi&ecirc;u kh&aacute;i ni???m thi???t k???.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	3) &nbsp; &nbsp; &nbsp;Khi m&atilde; h&oacute;a c&aacute;c trang web, ki???m tra xem h??? c&oacute; s??? d???ng ???ng d???ng ki???m tra ch???t l?????ng W3C ????? ki???m tra ch???t l?????ng c&aacute;c trang web kh&ocirc;ng? ??i???u n&agrave;y ?????m b???o c&aacute;c trang web kh&ocirc;ng b??? l???i v&agrave; b???t c??? ???ng d???ng m&atilde; h&oacute;a n&agrave;o c??ng t??? ?????ng ?????m b???o ??i???u n&agrave;y. M???t c&aacute;ch ki???m tra hi???u qu??? l&agrave; ki???m tra xem danh s&aacute;ch kh&aacute;ch h&agrave;ng g???n ??&acirc;y c???a h??? v&agrave; ki???m tra nh???ng trang web n&agrave;y c&oacute; s??? d???ng ???ng d???ng ki???m tra ch???t l?????ng W3X hay kh&ocirc;ng http://validator.w3.org)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	4) &nbsp; &nbsp; &nbsp;B???n c???n quy???t ?????nh nh&oacute;m kh&aacute;n gi??? b???n ?????nh h?????ng t???i v&agrave; nh???ng tr&igrave;nh duy???t b???n mu???n ???????c h??? tr???. N???u b???n mu???n m???t trang web c&oacute; th??? l&agrave;m vi???c hi???u qu??? tr&ecirc;n 4 tr&igrave;nh duy???t kh&aacute;c nhau v&agrave; tr&ecirc;n PC v&agrave; Mac th&igrave; ch???c ch???n n&oacute; s??? ti&ecirc;u t???n nhi???u h??n m???t trang web ch??? s??? d???ng tr&igrave;nh duy???t Internet Explorer 5 v&agrave; tr&ecirc;n PC. Khi b???n ??&atilde; quy???t ??inh ???????c tr&igrave;nh duy???t v&agrave; c&aacute;c h??? th???ng v???n h&agrave;ng, b???n c??ng ph???i ki???m tra xem nh&agrave; thi???t k??? c&oacute; t???ng ti???p c???n t???t c??? c&aacute;c tr&igrave;nh duy???t t????ng ???ng v&agrave; n???n b???n y&ecirc;u c???u kh&ocirc;ng (i.e. li???u h??? c&oacute; Macintosh n???u b???n y&ecirc;u c???u kh&ocirc;ng)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	5) &nbsp; &nbsp; &nbsp;N???u trang web c???a b???n c???n th????ng m???i ??i???n t??? (e-commerce) h&atilde;y h???i nh&agrave; thi???t k??? xem li???u h??? c&oacute; kinh nghi???m trong l??nh v???c n&agrave;y hay kh&ocirc;ng v&agrave; b???o h??? cho b???n xem nh???ng v&iacute; d???.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	6) &nbsp; &nbsp; &nbsp;B???n c&oacute; y&ecirc;u c???u h??? th???ng qu???n l&iacute; n???i dung (CMS)? H??? th???ng qu???n l&iacute; n???i dung s??? gi&uacute;p b???n qu???n l&iacute; v??n b???n tr&ecirc;n nh???ng trang web c???a b???n m&agrave; kh&ocirc;ng c???n ph???i s??? d???ng ???ng d???ng HTML. R???t nhi???u nh&agrave; thi???t k??? web ch&agrave;o h&agrave;ng d???ch v??? n&agrave;y v&igrave; th??? n???u b???n y&ecirc;u c???u h??? th???ng qu???n l&iacute; n???i dung, h&atilde;y nh??? h??? t?? v???n, v&iacute; d??? nh?? ???ng d???ng CMS m&agrave; h??? ??&atilde; t???ng s??? d???ng tr?????c ??&oacute; s??? ti???t ki???m h??n r???t nhi???u so v???i vi???c s??? d???ng ???ng d???ng m&agrave; h??? ch??a t???ng s??? d???ng.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	7) &nbsp; &nbsp; &nbsp;N???u b???n mu???n nh&agrave; thi???t k??? c???a b???n ti???p th??? trang web c???a b???n tr&ecirc;n c&ocirc;ng c??? t&igrave;m ki???m, v???y th&igrave; nh???ng kinh nghi???m tr&ecirc;n l??nh v???c n&agrave;y ho&agrave;n to&agrave;n c&oacute; th??? nh&igrave;n th???y b???ng m???t th?????ng. R???t nhi???u c&ocirc;ng ty ch&agrave;o h&agrave;ng nh???ng c&ocirc;ng c??? ?????m b???o trang web c???a b???n s??? xu???t hi???n tr&ecirc;n 1000 c&ocirc;ng c??? t&igrave;m ki???m, nh??ng h???u h???t m???i ng?????i ?????u th???a nh???n r???ng nh???ng c&ocirc;ng c??? n&agrave;y ch???ng h??? hi???u qu??? b???ng nh???ng linh m&agrave; h??? ????ng k&iacute; th??? c&ocirc;ng. H&atilde;y t&igrave;m hi???u xem h??? ??&atilde;ng t???ng ti???p th??? nh???ng d??? &aacute;n n&agrave;o tr&ecirc;n c&aacute;c c&ocirc;ng c??? t&igrave;m ki???m, h&atilde;y t???i Google v&agrave; n???u b???n ??&atilde; ???????c l???p ?????t thanh c&ocirc;ng c??? Google, h&atilde;y t&igrave;m hi???u xem trang web c???a b???n x???p th??? m???y trong Page Rank ( m???t trang web x&eacute;p th??? 4 t??? d?????i l&ecirc;n ???????c xem l&agrave; c&oacute; th??? ch???p nh???n ???????c, b???t c??? trang web n&agrave;o x???p th??? 3 ho???c &iacute;t h??n t??? d?????i l&ecirc;n ?????u c&oacute; th??? t???i ??u h&oacute;a h??n n???a v&agrave; tr&igrave;nh web nhi???u h??n n???a). C???n ph???i lu&ocirc;n ghi nh??? trong ?????u r???ng ph???i d&agrave;nh th???i gian ????? ghi t&ecirc;n v&agrave;o nh???ng c&ocirc;ng c??? t&igrave;m ki???m, v&agrave; th???m ch&iacute; c??ng c???n ph???i c???p nh???t v&iacute; tr&iacute; tr&ecirc;n danh s&aacute;ch Google Page Rank (Qu&aacute; tr&igrave;nh c&oacute; th??? n&agrave;y m???t tr&ecirc;n 3 th&aacute;ng)</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	8) &nbsp; &nbsp; &nbsp;T&igrave;m hi???u xem li???u b???n c&oacute; c???n truy t&igrave;m ngu???n g???c c???a nh???ng t???m th&ocirc;ng b&aacute;o (banner) hay nh???ng d???ng qu???ng c&aacute;o tr???c tuy???n kh&ocirc;ng, n???u b???n c???n t&igrave;m ???????c xu???t x??? c???a ch&uacute;ng, b???n c???n ch???c ch???n r???ng h??? c&oacute; kinh nghi???m trong l??nh v???c n&agrave;y ho???c t&igrave;m ri&ecirc;ng m???t c&ocirc;ng ty ?????m tr&aacute;ch c&ocirc;ng vi???c n&agrave;y.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	V&igrave; th??? b???n ??&atilde; b???t ?????u nghi&ecirc;n c???u t&igrave;m ki???m m???t nh&agrave; thi???t k??? ch??a? Nh???ng t&igrave;m ki???m tr&ecirc;n Google, c&ocirc;ng c??? t&igrave;m ki???m Kelly (http://www.kellysearch.com) v&agrave; UKWDA (http://www.ukwda.org) l&agrave; t???t c??? nh???ng n??i t???t ????? b???n t&igrave;m ki???m nh??ng ????? t???t h??n n???a h&atilde;y t&igrave;m m???t trang web b???n th&iacute;ch v??? b??? ngo&agrave;i c???a n&oacute; nh???t, r???i y&ecirc;u c???u nh&agrave; thi???t k??? l&agrave;m trang web c???a b???n t????ng t??? nh?? th???.</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341045506, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (73, 24, 'tu-van-thiet-ke', 'Website l?? g??? Nh???ng g?? t???o n??n m???t website?', 'website-la-gi-nhung-gi-tao-nen-mot-website', 'Website l?? g???\r\nWebsite l?? m???t ???live-profile??? tr??n m???ng Internet, ????y l?? n??i gi???i thi???u nh???ng th??ng tin, h??nh ???nh v??? doanh nghi???p v?? s???n ph???m, d???ch v??? c???a doanh nghi???p (hay gi???i thi???u b???t c??? th??ng tin g??) ????? kh??ch h??ng c?? th??? truy c???p ??? b???t k??? n??i ????u, b???t c??? l??c n??o.', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Website l&agrave; t???p h???p nhi???u trang [web page]. Khi doanh nghi???p x&acirc;y d???ng website ngh??a l&agrave; ??ang x&acirc;y d???ng nhi???u trang th&ocirc;ng tin, catalog s???n ph???m, d???ch v???....</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	????? t???o n&ecirc;n m???t website c???n ph???i c&oacute; 3 y???u t??? c?? b???n:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	C???n ph???i c&oacute; t&ecirc;n mi???n (domain).</div>\r\n<div>\r\n	N???i l??u tr??? website (hosting).</div>\r\n<div>\r\n	N???i dung c&aacute;c trang th&ocirc;ng tin [web page].( ??&acirc;y l&agrave; c&ocirc;ng vi???c c???a c&ocirc;ng ty &nbsp;Thi???t k??? web</div>\r\n<div>\r\n	M???t s??? thu???t ng??? c?? b???n.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	T&ecirc;n mi???n (domain): T&ecirc;n mi???n ch&iacute;nh l&agrave; ?????a ch??? website, tr&ecirc;n internet ch??? t???n t???i duy nh???t m???t ?????a ch??? (t???c l&agrave; t???n t???i duy nh???t m???t t&ecirc;n mi???n). C&oacute; 2 lo???i t&ecirc;n mi???n: T&ecirc;n mi???n Qu???c t???: l&agrave; t&ecirc;n mi???n c&oacute; d???ng .com; .net; .org; .biz; ... V&iacute; d???: www.360vnit.com, www.tnduoc.com &nbsp;T&ecirc;n mi???n Vi???t Nam: l&agrave; t&ecirc;n mi???n c&oacute; d???ng .vn; .com.vn; .net.vn; org.vn; .gov.vn;... v&iacute; d???: www.360vnit.com.vn, www.360vnit.vn L??u tr??? website: D??? li???u th&ocirc;ng tin c???a website ph???i ???????c l??u tr??? tr&ecirc;n m???t m&aacute;y t&iacute;nh (m&aacute;y ch??? - server) lu&ocirc;n ho???t ?????ng v&agrave; k???t n???i v???i m???ng Internet. M???t server c&oacute; th??? l??u tr??? nhi???u website, n???u server n&agrave;y b??? s??? c??? ch???ng h???n t???t trong m???t th???i ??i???m n&agrave;o ??&oacute; th&igrave; kh&ocirc;ng ai c&oacute; th??? truy c???p ???????c nh???ng website l??u tr??? tr&ecirc;n server t???i th???i ??i???m b??? s??? c???.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	T&ugrave;y theo nhu c???u l??u tr??? th&ocirc;ng tin m&agrave; doanh nghi???p c&oacute; th??? thu&ecirc; dung l?????ng th&iacute;ch h???p cho website [thu&ecirc; dung l?????ng host].</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Dung l?????ng host: L&agrave; n??i ????? l??u c?? s??? tr??? d??? li???u c???a website (h&igrave;nh ???nh, th&ocirc;ng tin &hellip;), ????n v??? ??o dung l?????ng th?????ng l&agrave; Mb ho???c Gb.B??ng th&ocirc;ng hay dung l?????ng ???????ng truy???n truy???n: L&agrave; t???ng s??? Mb d??? li???u t???i l&ecirc;n m&aacute;y ch??? ho???c t???i v??? t??? m&aacute;y ch??? (download, upload) n??i ?????t website, ????n v??? ??o th&ocirc;ng th?????ng l&agrave; Mb/Th&aacute;ng.</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341046009, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (74, 24, 'tu-van-thiet-ke', 'Thi???t k??? website cho doanh nghi???p n??n c?? ch???c n??ng g???', 'thiet-ke-website-cho-doanh-nghiep-nen-co-chuc-nang-gi', 'Website doanh nghi???p th??ng th?????ng l?? 1 website ?????ng l?? website c?? s??? l?????ng l???n th??ng tin ???????c ch???a trong c?? s??? d??? li???u. Khi s??? h???u website ?????ng c??c doanh nghi???p, c??ng ty c?? kh??? n??ng qu???n tr??? website, thay ?????i th??ng tin, n???i dung website nh?? ?? mu???n.', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Doanh nghi???p, c&ocirc;ng ty ch???n website ?????ng khi c&oacute; m???t l?????ng th&ocirc;ng tin, s???n ph???m l???n ho???c th&ocirc;ng tin, s???n ph???m ???????c c???p nh???t thay ?????i th?????ng xuy&ecirc;n. D?????i ??&acirc;y l&agrave; g???i &yacute; c???a ch&uacute;ng t&ocirc;i c&aacute;c ch???c n??ng cho 1 website doanh nghi???p th&ocirc;ng th?????ng:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	1. Module s???n ph???m:&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Module n&agrave;y cho ph&eacute;p doanh nghi???p chia th&agrave;nh nhi???u danh m???c s???n ph???m c&oacute; th??? t??? thay ?????i theo nhu c???u v&iacute; d??? nh?? chia th&agrave;nh s???n ph???m n???i th???t, s???n ph???m m??? ngh???, s???n ph???m n&ocirc;ng s???n...Tr&igrave;nh b&agrave;y th&ocirc;ng tin, h&igrave;nh ???nh gi&aacute; th&agrave;nh c???a s???n ph???m theo d???ng e-catalog. M???i s???n ph???m s??? c&oacute; 1 form ?????t h&agrave;ng ??i k&egrave;m, gi&uacute;p kh&aacute;ch h&agrave;ng d??? d&agrave;ng ?????t h&agrave;ng.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	2. Module d???ch v???:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Hi???n th??? th&ocirc;ng tin, h&igrave;nh ???nh v??? c&aacute;c d???ch v??? c???a doanh nghi???p tr&ecirc;n website. M???i d???ch v??? c&oacute; 1 form y&ecirc;u c???u d???ch v??? ??i k&egrave;m, cho ph&eacute;p kh&aacute;ch h&agrave;ng d??? d&agrave;ng li&ecirc;n h??? khi c???n thi???t.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	3. Module tin t???c:&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Module cho ph&eacute;p chia nh??? th&agrave;nh nhi???u lo???i tin kh&aacute;c nhau v&iacute; d??? tin trong n?????c, tin qu???c t???, tin t???c c&ocirc;ng ngh???, tin n???i b???...</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	4. Module FAQ (Nh???ng c&acirc;u h???i th?????ng g???p):</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Module n&agrave;y gi&uacute;p doanh nghi???p ????ng t???i c&aacute;c c&acirc;u h???i th?????ng g???p c???a kh&aacute;ch h&agrave;ng v&agrave; n???i dung tr??? l???i t??? ph&iacute;a doanh nghi???p, t???o c&aacute;i nh&igrave;n chuy&ecirc;n nghi???p ?????i v???i ng?????i xem v??? s???n ph???m - d???ch v??? c???a m&igrave;nh. T&iacute;ch h???p ch???c n??ng gi&uacute;p kh&aacute;ch h&agrave;ng thu???n ti???n g???i nh???ng y&ecirc;u c???u, ????? ngh???, ??&oacute;ng g&oacute;p &yacute; ki???n...?????n doanh nghi???p.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	5. Module tuy???n d???ng:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Cho ph&eacute;p doanh nghi???p ????ng t???i c&aacute;c th&ocirc;ng tin tuy???n d???ng nh???m t&igrave;m ki???m c&aacute;c ???ng vi&ecirc;n ti???m n??ng cho m&igrave;nh.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	6. Module b&igrave;nh ch???n (t???o th??m d&ograve; &yacute; ki???n, b&igrave;nh ch???n cho s???n ph???m n&agrave;o ??&oacute;):</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Doanh nghi???m c&oacute; th??? ????a ra nh???ng c&acirc;u h???i ????? th??m d&ograve; &yacute; ki???n c???a kh&aacute;ch h&agrave;ng khi vi???ng th??m website.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	7. Module qu???ng c&aacute;o tr???c tuy???n:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Cho ph&eacute;p doanh nghi???p qu???n l&yacute; c&aacute;c banner, logo c???a c&aacute;c ?????i t&aacute;c tr&ecirc;n website m&igrave;nh ????? qu???ng b&aacute; website hi???u qu???, t???o ngu???n thu t??? website.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	8. Module t&igrave;m ki???m:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Bao g???m 2 ch???c n??ng t&igrave;m ki???m: T&igrave;m nhanh v&agrave; t&igrave;m n&acirc;ng cao. T&igrave;m nhanh: cho ph&eacute;p ng?????i xem t&igrave;m ki???m nhanh b???t k??? th&ocirc;ng tin n&agrave;o trong website th&ocirc;ng qua thao t&aacute;c ????n gi???n l&agrave; nh???p t??? kh&oacute;a c???n t&igrave;m v&agrave; nh???n ph&iacute;m Enter ????? ra k???t qu???. T&igrave;m n&acirc;ng cao: cho ph&eacute;p ng?????i xem gi???i h???n khu v???c t&igrave;m ki???m th&ocirc;ng tin ????? k???t qu??? hi???n th??? ra ch&iacute;nh x&aacute;c h??n.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	9. Module th???ng k&ecirc; ( b??? ?????m chuy&ecirc;n s&acirc;u):&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Bao g???m b??? ?????m s??? ng?????i ??&atilde; truy c???p, ??ang truy c???p website, ?????m s??? l???n ??&atilde; ???????c xem cho t???ng s???n ph???m.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	10. Module li&ecirc;n h??? tr???c tuy???n:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Cho ph&eacute;p kh&aacute;ch li&ecirc;n h???, ph???n h???i, ?????t h&agrave;ng v???i doanh nghi???p th&ocirc;ng qua h??? th???ng website khi c&oacute; nhu c???u.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	11. Module gi???i thi???u:</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	L&agrave; ch???c n??ng ????? gi???i thi???u chung nh???t v??? t&igrave;nh h&igrave;nh doanh nghi???p, l???ch s??? ra ?????i, ng&agrave;nh ngh??? ho???t ?????ng...gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; th??? n???m ???????c m???t s??? th&ocirc;ng tin v??? b???n.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	??&oacute; l&agrave; c&aacute;c module c?? b???n m&agrave; m???t website doanh nghi???p th?????ng s??? d???ng. Ngo&agrave;i ra c&ograve;n t&ugrave;y thu???c v&agrave;o y&ecirc;u c???u ri&ecirc;ng v&agrave; ng&agrave;nh ngh??? c???a t???ng doanh nghi???p. H&atilde;y li&ecirc;n h??? v???i ch&uacute;ng t&ocirc;i ????? b??? xung c&aacute;c t&iacute;nh n??ng c???n thi???t kh&aacute;c</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341046055, 0, 1, 1, NULL, 1);
INSERT INTO news_detail (`newsid`, `catid`, `caturl`, `title`, `title_alias`, `introtext`, `fulltext`, `hot`, `images`, `images_thumb`, `ordering`, `attr`, `metakey`, `metadesc`, `created_by`, `created`, `modified`, `hits`, `site`, `lang`, `published`) VALUES (75, 24, 'tu-van-thiet-ke', ' ??u v?? nh?????c c???a m???t thi???t k??? web v???i chi ph?? an ninh web', 'uu-va-nhuoc-cua-mot-thiet-ke-web-voi-chi-phi-an-ninh-web', 'C?? l??? b???n ??ang ngh?? mu???n c?? m???t trang qu???ng c??o s???n ph???m online nh??ng l???i thi???u ti???n. V???y ph???i l??m g??? Nhi???u ng?????i nh???n ra m??nh ph???i ?????i di???n v???i t??nh c???nh n??y. May m???n thay, thi???t k??? web gi?? th???p t???n t???i v?? c?? th??? d??? d??ng c?? ???????c. C??i th???i m?? thi???t k??? web gi?? th???p kh??ng t???n t???i ???? qua l??u r???i. Ng??y nay, S??? c???nh tranh ???? n??ng l??n m???t b???c hay c??ng c?? th??? nhi???u h??n th??? khi???n nhi???u c??ng ty ph???i cung c???p nh???ng d???ch v??? thi???t k??? web gi?? r???.', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	Nh???ng c&ocirc;ng ty ch???n cung c???p thi???t k??? web r??? &nbsp;l&agrave; ????? t??? l&agrave;m n???i b???t m&igrave;nh. V&igrave; th??? b???ng nh???ng d???ch v??? thi???t k??? web gi&aacute; r???, h??? c&oacute; th??? thu h&uacute;t ???????c nhi???u kh&aacute;ch h&agrave;ng h??n ?????i th??? c???nh tranh. Gi??? ??&acirc;y, n???u m???i c&ocirc;ng ty ngh?? v???y, gi&aacute; c??? tr&ecirc;n th??? tr?????ng thi???t k??? web c&oacute; th??? ??o&aacute;n tr?????c. Gi&aacute; c??? s??? t??? ?????ng h??? th???p khi nhi???u c&ocirc;ng ty s??? d???ng c&aacute;ch tr&ecirc;n ????? c???nh tranh. Vi???c n&agrave;y c&oacute; l???i cho nh???ng kh&aacute;ch h&agrave;ng c&oacute; t&uacute;i ti???n eo h???p. N???u v&iacute; c???a b???n kh&ocirc;ng d???y, c&oacute; l??? b???n c&oacute; th??? h&agrave;i l&ograve;ng v???i nh???ng d???ch v??? thi???t k??? web gi&aacute; r??????????c cung c???p v&agrave; d&ugrave; so s&aacute;nh gi???a nh???ng s???n ph???m v???i nhau v&agrave; c??? kh??? n??ng c???a nh???ng s???n ph???m n???a.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	N???u b???n mu???n qu???ng c&aacute;o cho c&ocirc;ng vi???c l&agrave;m ??n m???i c???a m&igrave;nh tr&ecirc;n m???ng, thi???t k??? web gi&aacute; r??? s??? l&agrave; gi???i ph&aacute;p tuy???t v???i. V???i gi???i ph&aacute;p n&agrave;y, b???n c&oacute; th??? th??? nh???ng c&ocirc;ng vi???c kinh doanh c&ograve;n m???i m??? tr&ecirc;n Internet. Kh&ocirc;ng c???n m???t nhi???u ti???n, b???n c??ng c&oacute; th??? bi???t m???i ng?????i ngh?? sao v??? trang web c???a m&igrave;nh. C&agrave;ng nhi???u ng?????i v&agrave;o b???n c&agrave;ng c&oacute; th??? n&acirc;ng c???p website ????? ph&ugrave; h???p v???i nhu c???u c???a ng?????i s??? d???ng. M???t kh&aacute;c, c&ocirc;ng vi???c kinh doanh n&agrave;y c??ng c&oacute; th??? th???t b???i tr&ecirc;n s&acirc;n n&agrave;y, v&igrave; kh&ocirc;ng th??? thu h&uacute;t kh&aacute;ch t???i th??m. N???u b???n s??? d???ng nh???ng d???ch v??? thi???t k??? web gi&aacute; r???, c&oacute; l??? b???n kh&ocirc;ng c???n lo l???ng v&igrave; v??? ph????ng di???n ti???n b???c, con s??? b???n b??? ra l&agrave; kh&ocirc;ng ??&aacute;ng k???.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	H??n n???a, khi l?????t web v&agrave; th???y nh???ng c&ocirc;ng ty cung c???p nh???ng d???ch v??? web gi&aacute; r??? nh??ng v???n cam k???t ??em l???i cho b???n nh???ng l???i &iacute;ch c&ograve;n v?????t c??? gi&aacute; c??? c???a n&oacute;. Trong tr?????ng h???p ??&oacute;, h&atilde;y c???n th???n. C&oacute; th??? b???n ??ang b??? l???a. B???n n&ecirc;n t??? h???i: t???i sao c&ocirc;ng ty n&agrave;y l???i cho m&igrave;nh qu&aacute; nhi???u l???i &iacute;ch nh?? v???y m&agrave; v???i m???t gi&aacute; qu&aacute; r??? nh?? v???y? Li???u b???n c&oacute; kh&ocirc;ng nh???n ra nh???ng c&aacute;i b???y tr&ecirc;n Internet, c&oacute; th??? k???t c???c s??? l&agrave; b???n ch&aacute;y t&uacute;i m&agrave; c??? website c??ng kh&ocirc;ng c&oacute;. Thi???t k??? web gi&aacute; r??? c&oacute; th??? ch???ng minh t&aacute;c d???ng c???a m&igrave;nh trong tr?????ng h???p khi b???n ph???i d&ugrave;ng th&ecirc;m ti???n ????? x&acirc;y d???ng m???t trang web kh&aacute;c.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Nh?? b???t c??? h&agrave;ng h&oacute;a n&agrave;o, ti???n n&agrave;o c???a n???y. Thi???t k??? web gi&aacute; r??? s??? kh&ocirc;ng th??? c&oacute; ch???t l?????ng nh?? nh?? nh???ng s???n ph???m c&ugrave;ng lo???i gi&aacute; cao. ??&acirc;y c??ng c&oacute; th??? coi l&agrave; m???t m???t h???n ch??? ?????i v???i thi???t k??? trang web gi&aacute; r???. Th&ocirc;ng th?????ng, n???u kh&ocirc;ng c&oacute; ????? ti???n, thi???t k??? trang web gi&aacute; r??? l&agrave; m???t l???a ch???n t???t nh???t ????? c&oacute; m???t website. Nh??ng b???n n&ecirc;n bi???t r???ng n???u d&ugrave;ng thi???t k??? web gi&aacute; r??? ????? x&acirc;y d???ng website c&oacute; th??? thi???u nhi???u ch???c n??ng v&agrave; c&oacute; th??? kh&ocirc;ng ho???t ?????ng t???t v???i nh???ng tr&igrave;nh duy???t web.&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Thi???t k??? web gi&aacute; r??? c&oacute; th??? l&agrave; m???t gi???i ph&aacute;p l&yacute; t?????ng ????? c&oacute; m???t tr&ecirc;n m???ng. S??? c&oacute; d???ch v??? thi???t k??? web an to&agrave;n gi&aacute; r??? v&ocirc; h???i ???????c bi???t t???i n???u b???n c&oacute; th??? th&agrave;nh c&ocirc;ng v???i trang web c???a m&igrave;nh.</div>\r\n', 0, NULL, NULL, NULL, 'show_intro=1,show_author=1,show_date=1,show_editdate=1,show_print=1,show_email=1,show_comment=1', NULL, NULL, 1, 1341046122, 0, 1, 1, NULL, 1);


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

INSERT INTO nicks (`id`, `name_nick`, `note`, `type`, `loai`, `ordering`, `published`) VALUES (16, 'minhhue', '0169 4683 869 (Ms. Hu???).', 'Yahoo', 'KD', 2, 1);
INSERT INTO nicks (`id`, `name_nick`, `note`, `type`, `loai`, `ordering`, `published`) VALUES (12, 'lephihong', '0188. 264. 7998 - Mr. H???ng     ', 'Yahoo', 'KD', 1, 1);


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

INSERT INTO poll (`pid`, `question`, `total`, `add_date`, `hit_date`, `published`) VALUES (1, 'B???n th???y phi??n b???n v2.0 c???a 360vnit th??? n??o?', 0, 1316703851, NULL, 0);
INSERT INTO poll (`pid`, `question`, `total`, `add_date`, `hit_date`, `published`) VALUES (2, 'B???n quan t??m ?????n an to??n v??? sinh th???c ph???m th??? n??o ?', 73, 1316708066, 1316707237, 1);


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

INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (4, 1, 'H??? tr??? Ajax', 0);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (5, 2, 'R???t quan t??m', 43);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (7, 2, 'Quan t??m v???a ph???i', 10);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (9, 2, 'Kh??ng tr?? tr???ng nhi???u', 10);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (12, 1, 'ddddddd', 0);
INSERT INTO poll_rows (`id`, `pid`, `title`, `hitstotal`) VALUES (14, 2, 'Kh??ng quan t??m', 10);


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

INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (2, 'D???ch v???', 'dich-vu', 2, 'vi', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (12, 'Services', 'services', 2, 'en', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (11, 'News', 'news', 1, 'en', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (7, 'Gi???i thi???u', 'gioi-thieu', 5, 'vi', 1);
INSERT INTO sections (`sections_id`, `sections_title`, `sections_alias`, `ordering`, `lang`, `published`) VALUES (1, 'Tin t???c', 'tin-tuc', 1, 'vi', 1);
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
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (39, 0, 'a143b4ce5adc339da60dcd32ae5f2545', 'Loa LED mini h??nh qu??? t??o cho ??i???n tho???i/PSP/m??y t??nh b???ng', 2, 130000, 2);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (45, 0, '64858c9d5a6ef5d358368db608255868', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Tr???ng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (46, 0, 'f1c5aecd41065dafe36184d29dd51bc4', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (47, 0, '0f400d6d9486cd1512489c6d7d750704', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (55, 0, 'e858352375e3b96b2b8e5b9407053189', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (56, 0, 'e858352375e3b96b2b8e5b9407053189', 'Loa LED mini h??nh qu??? t??o cho ??i???n tho???i/PSP/m??y t??nh b???ng', 2, 130000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (57, 0, 'e858352375e3b96b2b8e5b9407053189', 'Samsung Galaxy Tab 3 8.0 (SM-T311) 8.0', 4, 8500000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (58, 0, '421450256403fef7b76d6f38847ac97f', 'Th??? nh??? SD Transcend 16GB class 10', 6, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (59, 0, '2ac52429967c3233c08ba7e11d0a451e', 'Laptop Toshiba Port??g?? Z30 i7 4500U/4G/256 SSD/Win8 - B???c', 14, 28000000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (60, 0, 'aacec09f120974293c6e3fd9c938170d', 'Loa LED mini h??nh qu??? t??o cho ??i???n tho???i/PSP/m??y t??nh b???ng', 2, 130000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (61, 0, 'aacec09f120974293c6e3fd9c938170d', 'Laptop Toshiba Port??g?? Z30 i7 4500U/4G/256 SSD/Win8 - B???c', 14, 28000000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (62, 0, '3ff34de9da7d8ad4b40fc037599bf396', 'Samsung Galaxy Tab 3 8.0 (SM-T311) 8.0', 4, 8500000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (63, 0, '65c855b7c67eebc177aea713ebdb5037', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Tr???ng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (73, 0, 'b2c2cfa1be0f330c4d48d1aa8edf5d52', 'Chu???t d??y Wintop M-288 1600dpi - tr???ng', 5, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (75, 0, 'b2c2cfa1be0f330c4d48d1aa8edf5d52', 'HUB chia c???ng USB 3.0, 4 c???ng d??nh cho PC, laptop, mp3, chu???t', 1, 420000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (77, 0, '142c5b3cf46fe52d3002fc513355fb66', 'Chu???t d??y Wintop M-288 1600dpi - tr???ng', 5, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (78, 0, '142c5b3cf46fe52d3002fc513355fb66', 'Samsung Galaxy Tab 3 8.0 (SM-T311) 8.0', 4, 8500000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (79, 0, '142c5b3cf46fe52d3002fc513355fb66', 'Th??? nh??? SD Transcend 16GB class 10', 6, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (80, 0, 'db8c131312f54b80f1a669b33d39df3e', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (81, 0, 'c6e70a73aa846dcdfa4510bde6e2678a', 'Loa LED mini h??nh qu??? t??o cho ??i???n tho???i/PSP/m??y t??nh b???ng', 2, 130000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (82, 0, 'c6e70a73aa846dcdfa4510bde6e2678a', 'HUB chia c???ng USB 3.0, 4 c???ng d??nh cho PC, laptop, mp3, chu???t', 1, 420000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (83, 0, 'f3611490a480c4457051294b4ca1046e', 'Laptop Toshiba Port??g?? Z30 i7 4500U/4G/256 SSD/Win8 - B???c', 14, 28000000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (84, 0, '8c6bed3d04fdd26ec438cca311ec5be6', 'Sony Vaio Pro SVP13213SG i5 4200U/4G/128 SSD/Win8 - ??en', 16, 2350000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (90, 0, 'cdcfe74a739f6dc6fe58622f83ad53ae', 'Samsung Galaxy Trend Plus S7580 4', 15, 3359000, 7);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (91, 0, '06a439383cd4ecb0b430c1e94b6694c9', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (92, 0, '15fc955dee18a5f768b1b7bd2c9e1f87', 'Chu???t d??y Wintop M-288 1600dpi - tr???ng', 5, 80000, 2);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (93, 0, 'f539cfdd2cdc9f03906ccc654485c470', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Tr???ng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (94, 0, 'cfe3c740945b8478fbd43d121487fb58', 'Chu???t d??y Wintop M-288 1600dpi - tr???ng', 5, 80000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (95, 0, 'cfe3c740945b8478fbd43d121487fb58', 'iPhone 4 8GB 3.5', 13, 8100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (96, 0, '796621847fbb66babe4bc53c37c436bc', 'Samsung Galaxy Trend Plus S7580 4', 15, 3359000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (97, 0, 'bcef2116e5fc4513ef4631748093f650', 'iPhone 4 8GB 3.5', 13, 8100000, 5);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (98, 0, 'bcef2116e5fc4513ef4631748093f650', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Tr???ng', 7, 14100000, 1);
INSERT INTO shop_cart_detail (`id`, `cartid`, `session_id`, `productname`, `productid`, `s_price`, `s_qty`) VALUES (100, 0, '47d76089e875d2086df570e8a9c82e56', 'iPhone 5 32GB 4.0\" Dual-core 1.2GHz 8MP 1440mAh - Tr???ng', 7, 14100000, 1);
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

INSERT INTO shop_payment (`payment_id`, `parentid`, `payment_code`, `payment_name`, `payment_des`, `payment_img`, `merchant_id`, `access_code`, `secure_hash`, `url_pay`, `ordering`, `published`) VALUES (13, 0, '', 'Thanh to??n khi nh???n h??ng COD', '<p>\r\n	B???n s??? thanh to&aacute;n ti???n cho nh&acirc;n vi&ecirc;n giao h&agrave;ng c???a <strong>aomuavietnam.com,</strong> sau khi nh???n v&agrave; ki???m tra h&agrave;ng h&oacute;a</p>\r\n', '0', '', '', '', '', 0, 1);
INSERT INTO shop_payment (`payment_id`, `parentid`, `payment_code`, `payment_name`, `payment_des`, `payment_img`, `merchant_id`, `access_code`, `secure_hash`, `url_pay`, `ordering`, `published`) VALUES (12, 0, '', 'Chuy???n kho???n ng??n h??ng', '<p>\r\n	B???n s??? chuy???n kho???n cho aomuavietnam.com qua t&agrave;i kho???n&nbsp;</p>\r\n<p>\r\n	l??u minh tri???t: <strong>090704313041 </strong>T???i Ng&acirc;n h&agrave;ng<strong> HSBC</strong>, T&ograve;a nh&agrave; Metropolitan, 235 ?????ng Kh???i, Qu???n 1, H??? Ch&iacute; Minh&lrm;.</p>\r\n', '', '', '', '', '', 0, 1);


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

INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (18, 'L401', 24, 13, 'Loa mini bluetooth beatbox S10', 'loa-mini-bluetooth-beatbox-s10', 'loa-mini-bluetooth-beatbox-s10-1.jpg', 1395625835, '550000', '350000', 36, '<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	??</p>\r\n<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<span style=\"color: rgb(128, 0, 128); font-size: small;\"><strong>*??Gi???i thi???u s???n ph???m:</strong></span></p>\r\n<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	- T???n H?????ng Ch???t L?????ng ??m Thanh V?????t Tr???i, S???ng ?????ng, R?? N??t V???i Loa Bluetooth Beat SK-S10 ??? Thi???t K??? Nh??? G???n, Ti???n L???i Khi Mang ??i Xa.??</p>\r\n<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<strong><img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/loa_bluetooth5%281%29.png\" style=\"display: block; margin-left: auto; margin-right: auto; width: 370px; height: 300px;\" /></strong></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	-Tr???i nghi???m nghe nh???c v???i loa k???t n???i b???ng??Bluetooth, loa mini kh??ng d??y s??? d???ng cho: ??iPhone??, ??iPad??, iPod, PSP, Laptop, MP3, ??SmartPhone, m??y t??nh b???ng c??c lo???i...</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" height=\"348\" src=\"http://shoptinhte.com/files/assets/LOA/newminioutdoorwirelessbluetoot.jpg\" style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" width=\"411\" /></p>\r\n<p data-mce-style=\"text-align: left;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	- Loa Bluetooth Speaker Beatbox SK-S10 s??? d???ng cho: iPhone, iPad, iPod, PSP, Laptop, MP3, SmartPhone, m??y t??nh b???ng c??c lo???i...<br />\r\n	- Tr???i nghi???m nghe nh???c v???i loa k???t n???i b???ng Bluetooth.<br />\r\n	- L???p v??? ngo??i b???ng h???p kim ch???ng tr???y s?????c c???c t???t g???m nhi???u m??u s???c l???a ch???n (xanh d????ng, ?????, cam, x??m n??u)<br />\r\n	- Thi???t k??? tinh t???, c??ng ngh??? ?????t ph??, s??? d???ng ????n gi???n, ki???u ????ng g??i ?????c ????o<br />\r\n	- C??ng ngh??? ??m thanh Air Bass ?????c quy???n , t??ng c?????ng ??m tr???m, ??m thanh trong, to ch???c, kh??ng b??? t??nh tr???ng r?? loa</p>\r\n<p data-mce-style=\"text-align: center;\" style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-align: center;\">\r\n	.<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none;\" height=\"369\" src=\"http://shoptinhte.com/files/assets/LOA/loa_bluetooth_beat_01.jpg\" style=\"float: none;\" width=\"398\" /><br />\r\n	??</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<strong>??</strong></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	?? ?? ?? ?? ?? ?? ?? ??Thi???t k??? tinh t???, c??ng ngh??? ?????t ph??, s??? d???ng ????n gi???n, ki???u ????ng g??i ?????c ????o.??Ph??t nh???c qua bluetooth??c???a c??c thi???t b??? c?? ch???c n??ng??ph??t nh???c qua bluetooth.</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	??<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/loa_bluetooth_beat_01.jpg\" style=\"display: block; margin-left: auto; margin-right: auto; width: 311px; height: 276px;\" /></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	?? ?? ?? ?? ?? ?? C??ng ngh??? ??m thanh??Air Bass ?????c quy???n , t??ng c?????ng ??m tr???m, ??m thanh trong, to ch???c, kh??ng b??? t??nh tr???ng r????loa. Thi???t k??? v?????loa??ch???c ch???n, m??n??loa?????????c b???c c???n th???n ko s??? h???ng m??n loa.</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	??<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/beatboxminispeaker.jpg\" style=\"display: block; margin-left: auto; margin-right: auto; width: 354px; height: 263px;\" /></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	?? ?? ?? Chi???c loa??Beats bluetooth??c?? ??m thanh bass kh?? t???t, chuy??n bass tr???m m???nh. B???n ????? chi???c??loa Beatsbox??tr??n m???t b??n th?? nh??? ????? v???t g?? ch???n l???i nh??, ko kh??o l?? n?? rung m???t h???i s??? r???t ngay.????<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/bluetooth_wireless_speaker_por.jpg\" style=\"display: block; margin-left: auto; margin-right: auto; width: 405px; height: 250px;\" /></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	?? ?? ?? ?? ?? ?? V???i ch???c n??ng??<strong>ph??t nh???c qua bluetooth</strong>,??Beatsbox??cho b???n th??m ti???n d???ng, kh??ng v?????ng v??u d??y nh??? khi ch??i game hay nghe ??i???n tho???i khi ??ang nghe nh???c m?? c?? cu???c g???i ?????n. V???n c?? d??y c??p k???t n???i ??m thanh n???u b???n c???n d??ng n??.</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/loabluetoothbeatssks100n322.jpg\" style=\"display: block; margin-left: auto; margin-right: auto; width: 401px; height: 309px;\" /></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	Ngo??i ra b???n c?? th??? c???m th??? nh??? th????<strong>loa c??ng ph??t nh???c t??? th??? nh???</strong>??n??y ???????c. Qu?? ti???n ph???i ko n??o?</p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<img alt=\"\" data-mce-=\"\" data-mce-style=\"float: none; display: block; margin-left: auto; margin-right: auto;\" src=\"/data/images/loa_bluetooth_aomuavietnam.com14.png\" style=\"display: block; margin-left: auto; margin-right: auto; width: 277px; height: 370px;\" /></p>\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" data-mce-style=\"height: 396px;\" style=\"color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); height: 396px;\" width=\"556\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"xl63\" colspan=\"2\" height=\"33\" width=\"162\">\r\n				<br />\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\"><strong>?? Th??ng s??? k??? thu???t:</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Bluetooth phi??n b???n</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">??V2.1</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Ph???m vi l??m vi???c</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">10m</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Th???i gian l??m vi???c:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">??5 gi???</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">K??ch th?????c:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">??60 x 60 x 50mm</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Loa Output:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">3w</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">T???n s??? ????p ???ng:??</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">280HZ - 16KHz</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Signal-to-noise:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">????? 95dB</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">??Distortion:??</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">??? 0,5%</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Pin ??i???n ??p / c??ng su???t:??</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">520mAh</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">Pin s???c ??i???n ??p:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">5V ?? 0.5V</span></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"xl63\" data-mce-style=\"text-align: center;\" height=\"33\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">M??u s???c:</span></td>\r\n			<td class=\"xl64\" data-mce-style=\"text-align: center;\" style=\"text-align: center;\">\r\n				<span data-mce-style=\"font-size: small;\" style=\"font-size: small;\">???????, v??ng, ??en, b???c, cr??m.</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<strong>??</strong></p>\r\n<p style=\"line-height: 18px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">\r\n	<span data-mce-style=\"color: #0000ff;\" style=\"color: rgb(0, 0, 255);\"><strong>H??y nhanh tay g???i cho ch??ng t??i ????? s??? h???u cho m??nh m???t??thi???t b??? gi???i tr?? ??a nhi???m t???t nh???t, ??n?? th???c s??? tr??? th??nh??l?? c??? m??y gi???i tr?? c???n c?? cho gia ????nh b???n!</strong></span></p>\r\n<p>\r\n	??</p>\r\n', 'Ch???t li???u h???p kim nh???a ABS h??? tr??? ch??i th??? TF (8G).\r\n- Bluetooth: Bluetooth V2.1 EDR.\r\n- Pin: 450mah.\r\n- C??ng su???t: 3w.\r\n- Th???i gian ho???t ?????ng: 4 gi???.\r\n- Th???i gian s???c: 2,5 gi???.\r\n- K??ch th?????c: (60 x 60 x 50)mm.\r\n- M??u s???c: ?????, xanh, v??ng, ??en, b???c, cr??m.', 1, 1, 1, 1, 1, 0, 0, 159, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (19, 'M101', 67, 9, 'Monitor Dell 170x (vu??ng)', 'monitor-dell-170x-vuong', 'monitor-dell-170x-vuong-1.jpg', 1395628421, '1800000', '1500000', 16, '', '- Panel Size: 17\"; Aspect Ratio 4:3;\r\n- Panel Type: TN - Twisted Nematic;\r\n- Max Resolution 1280 x 1024 at 60 Hz;\r\n- Contrast Ratio: 800:1 (typical);\r\n- Brightness: 250cd/m2 (typicall);\r\n- Response Time: 5 ms (typical);\r\n- Viewing Angle 160?? / 160?? (typical);\r\n- Color Support: 16.7 million colors.', 1, 1, 1, 1, 0, 0, 1, 104, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (20, 'PCM01', 27, 13, 'Mouse Newmen G9', 'mouse-newmen-g9', 'mouse-newmen-g9-1.jpg', 1407566945, '890000', '870000', 2, '', 'T??nh n??ng n???i b???t:\r\n\r\n- Chu???t Laser d??ng cho game th???\r\n- ????? ph??n gi???i 6000dpi\r\n- K??m theo 9 bi ??i???u ch???nh ????? n???ng c???a chu???t\r\n- C?? ch??? ????? l???p tr??nh ph??m t???t\r\n- B???o h??nh 1 n??m \r\n', 1, 1, 1, 1, 0, 0, 0, 2, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (21, 'PCSKP01', 25, 13, 'Headphone Level 10M HT - LTM010ECBL Tt eSports (Black)', 'headphone-level-10m-ht-ltm010ecbl-tt-esports-black', 'headphone-level-10m-ht-ltm010ecbl-tt-esports-black-1.jpg', 1407567387, '2600000', '2500000', 3, '<p>\r\n	<span style=\"clear:both !important; text-align:left; font-weight:bold;\">T&iacute;nh n??ng n???i b???t:</span></p>\r\n<div class=\"thongtinsp\">\r\n	<p>\r\n		Headset chuy&ecirc;n nghi???p d&agrave;nh cho game th???, t&iacute;ch h???p mic ch???t l?????ng cao, d&acirc;y d&agrave;i 3m, t&iacute;ch h???p n&uacute;t ch???nh mic tr&ecirc;n d&acirc;y, Headset ?????u ti&ecirc;n tr&ecirc;n th??? gi???i ???????c thi???t k??? b???i h&atilde;ng xe BMW USA, l&agrave;m nguy&ecirc;n kh???i t??? nh&ocirc;m, v&agrave;nh tai to, r???ng gi&uacute;p game th??? ??eo th???i gian</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (22, 'Tab01', 83, 13, 'M??y t??nh b???ng Haier HG739 7\"', 'may-tinh-bang-haier-hg739-7', 'may-tinh-bang-haier-hg739-7-1.jpg', 1407567743, '1700000', '1500000', 11, '<p>\r\n	<span style=\"clear:both !important; text-align:left; font-weight:bold;\">T&iacute;nh n??ng n???i b???t:</span></p>\r\n<div class=\"thongtinsp\">\r\n	<p>\r\n		<span>- A23 ARM Cortex-A7 Dual core 2x1.5GHz, 512KB L2 Cache,&nbsp; Mali 400 MP2 graphics</span><br />\r\n		<span>- 1GB DDR3 + 8GB Support microSD&trade; card (up to 32GB)</span><br />\r\n		<span>- Camera tr?????c 0.3MP, camera sau 0.3MP</span><br />\r\n		<span>- G-sensor c???m bi???n chuy???n ?????ng</span><br />\r\n		<span>- Wireless b/g/n, 1x Micro USB (OTG)</span><br />\r\n		<span>- LCD 7&rdquo; (1024x600), c???m ???ng ??i???n dung 5 ??i???m Android&trade; 4.4</span><br />\r\n		<span>- 192 x 117 x 9mm<br />\r\n		- Pin 2500mAh</span></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO shop_product (`productid`, `barcode`, `catid`, `manufactureid`, `productname`, `producturl`, `productimg`, `date_time`, `price_front`, `price`, `percent`, `content`, `phu_kien`, `is_home`, `status`, `tinhtrang_hang`, `ordering`, `icon_hot`, `icon_deal`, `icon_new`, `hits`, `published`) VALUES (23, 'PCSKP02', 24, 13, 'Loa Bose Companion 5', 'loa-bose-companion-5', 'loa-bose-companion-5-1.jpg', 1407569999, '12000000', '11500000', 4, '<p>\r\n	<span style=\"clear:both !important; text-align:left; font-weight:bold;\">T&iacute;nh n??ng n???i b???t:</span></p>\r\n<div class=\"thongtinsp\">\r\n	<p>\r\n		<strong>1Sub</strong>, <strong>2 Speakers</strong>, tich h???p <strong>soundcard</strong> <strong>Bose </strong>c???ng <strong>USB</strong> cho &acirc;m thanh <strong>surround</strong></p>\r\n	<div class=\"motasanpham\">\r\n		<h3>\r\n			M&ocirc; t??? s???n ph???m:</h3>\r\n		<br />\r\n		<p>\r\n			Control pod &bull; 2 &frac12;&quot;H x 1 1/8&quot;D<br />\r\n			<br />\r\n			Two satellite speakers &bull; 8 9/10&quot;H x 5 4/5&quot;W x 3 4/5&quot;D &bull; (22.5 x 14.7 x 9.7 cm) &bull; 1.9 lbs (.09 kg)<br />\r\n			<br />\r\n			Acoustimass&reg; module &bull; 8 1/2&quot;H x 6 3/4&quot;W x 16 3/4&quot;D &bull; (21.8 x 17.3 x 42.5 cm) &bull; 15.4 lbs (6.99 kg)<br />\r\n			<br />\r\n			System in carton &bull; 10 1/2&quot;L x 15 1/4&quot;W x 19 3/4&quot;H &bull; (26.7 x 38.6 x 50.1 cm) &bull; 27 lbs (12.3 kg)</p>\r\n	</div>\r\n	<p>\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 1, 1, 1, 1, 1, 1, 1, 1, 1);


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
INSERT INTO signup_deal (`id`, `user_id`, `email`) VALUES (4, 0, 'Vui l??ng nh???p Email ????? nh???n Deal');
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

INSERT INTO user_group (`group_id`, `group_name`, `site`) VALUES (18, 'Qu???n tr??? cao c???p', 'admin');
INSERT INTO user_group (`group_id`, `group_name`, `site`) VALUES (17, 'Qu???n tr??? th?????ng', 'admin');
INSERT INTO user_group (`group_id`, `group_name`, `site`) VALUES (1, 'Th??nh vi??n', 'site');


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

INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (1, 0, 'H??nh ???nh', 'images');
INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (2, 0, 'File', 'files');
INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (9, 1, 'H??ng s???n xu???t', 'images/manufacture');
INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (8, 1, 'slideshow', 'images/slideshow');
INSERT INTO vfile (`id`, `parentid`, `name`, `path`) VALUES (3, 0, 'Media', 'media');


