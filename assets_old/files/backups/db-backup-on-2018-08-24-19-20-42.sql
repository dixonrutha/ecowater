#
# TABLE STRUCTURE FOR: eco_access_rights
#

DROP TABLE IF EXISTS `eco_access_rights`;

CREATE TABLE `eco_access_rights` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `banceasy_view` tinyint(4) DEFAULT NULL,
  `banceasy_add` tinyint(4) DEFAULT NULL,
  `banceasy_edit` tinyint(4) DEFAULT NULL,
  `banceasy_delete` tinyint(4) DEFAULT NULL,
  `banceasy_customer_view` tinyint(4) DEFAULT NULL,
  `banceasy_customer_add` tinyint(4) DEFAULT NULL,
  `banceasy_customer_edit` tinyint(4) DEFAULT NULL,
  `banceasy_customer_delete` tinyint(4) DEFAULT NULL,
  `banceasy_loan_view` tinyint(4) DEFAULT NULL,
  `banceasy_loan_add` tinyint(4) DEFAULT NULL,
  `banceasy_loan_edit` tinyint(4) DEFAULT NULL,
  `banceasy_loan_delete` tinyint(4) DEFAULT NULL,
  `banceasy_zone` tinyint(4) DEFAULT NULL,
  `banceasy_mandateshelf` tinyint(4) DEFAULT NULL,
  `banceasy_recon` tinyint(4) DEFAULT NULL,
  `creditadmin_view` tinyint(4) DEFAULT NULL,
  `creditadmin_add` tinyint(4) DEFAULT NULL,
  `creditadmin_edit` tinyint(4) DEFAULT NULL,
  `creditadmin_delete` tinyint(4) DEFAULT NULL,
  `opsdocs_admin` tinyint(4) DEFAULT NULL,
  `opsdocs_view` tinyint(4) DEFAULT NULL,
  `opsdocs_add` tinyint(4) DEFAULT NULL,
  `opsdocs_edit` tinyint(4) DEFAULT NULL,
  `opsdocs_delete` tinyint(4) DEFAULT NULL,
  `opsdocscategory_all` tinyint(4) DEFAULT NULL,
  `opsdocssubcategory_all` tinyint(4) DEFAULT NULL,
  `referencenumber_view` tinyint(4) DEFAULT NULL,
  `referencenumber_add` tinyint(4) DEFAULT NULL,
  `referencenumber_edit` tinyint(4) DEFAULT NULL,
  `referencenumber_delete` tinyint(4) DEFAULT NULL,
  `cib_client_view` tinyint(4) DEFAULT NULL,
  `cib_client_add` tinyint(4) DEFAULT NULL,
  `cib_client_edit` tinyint(4) DEFAULT NULL,
  `cib_client_delete` tinyint(4) DEFAULT NULL,
  `cib_ticket_view` tinyint(4) DEFAULT NULL,
  `cib_ticket_add` tinyint(4) DEFAULT NULL,
  `cib_ticket_edit` tinyint(4) DEFAULT NULL,
  `cib_ticket_delete` tinyint(4) DEFAULT NULL,
  `cib_ticket_comment` tinyint(4) DEFAULT NULL,
  `cib_ticket_close` tinyint(4) DEFAULT NULL,
  `cib_staff` tinyint(4) DEFAULT NULL,
  `cib_product` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (2, 3, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (12, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (13, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (14, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (15, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (16, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (17, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: eco_audittrails
#

DROP TABLE IF EXISTS `eco_audittrails`;

CREATE TABLE `eco_audittrails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `action_type` enum('Read','Create','Update','Remove','Login','Logout') NOT NULL,
  `action` text NOT NULL,
  `ip` varchar(55) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: eco_branch
#

DROP TABLE IF EXISTS `eco_branch`;

CREATE TABLE `eco_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `branch_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `physical_addr` text COLLATE utf8_unicode_ci NOT NULL,
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `branch_code` (`branch_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, BR-001, Mwanza, Plot No. 52, Block M, Rufiji Street, P.O. Box 10435, Mwanza, O, 2018-08-19 12:59:07, 2018-08-20 09:54:34);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, BR-002, Dodoma, Dodoma, Tanzania, O, 2018-08-24 19:14:47, 2018-08-24 19:14:47);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (3, BR-003, Dar es salaam, Mikocheni, Dar es salaam, O, 2018-08-24 19:15:07, 2018-08-24 19:15:07);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, BR-004, Nairobi, Nairobi, Kenya, O, 2018-08-24 19:15:25, 2018-08-24 19:15:25);


#
# TABLE STRUCTURE FOR: eco_campus
#

DROP TABLE IF EXISTS `eco_campus`;

CREATE TABLE `eco_campus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campus_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `campus_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `branch_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `physical_addr` text COLLATE utf8_unicode_ci NOT NULL,
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campus_code` (`campus_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, CA-000001, SAUT MAIN CAMPUS, BR-001, P.O. Box 307, Malimbe, Mwanza, O, 2018-08-19 14:17:38, 2018-08-20 09:56:21);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, CA-000002, UDSM MLIMANI, BR-003, UDSM, O, 2018-08-24 19:16:09, 2018-08-24 19:16:09);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (3, CA-000003, IFM MWANZA, BR-001, Sekotoure Road, O, 2018-08-24 19:16:59, 2018-08-24 19:16:59);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, CA-000004, IFM DAR, BR-003, Posta, Dar es salaam, O, 2018-08-24 19:17:25, 2018-08-24 19:17:25);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, CA-000005, CBE DODOMA, BR-002, Dodoma, Tanzania, O, 2018-08-24 19:17:50, 2018-08-24 19:17:50);


#
# TABLE STRUCTURE FOR: eco_card_stat
#

DROP TABLE IF EXISTS `eco_card_stat`;

CREATE TABLE `eco_card_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_card_topup
#

DROP TABLE IF EXISTS `eco_card_topup`;

CREATE TABLE `eco_card_topup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `card_ime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_ref_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(20,2) NOT NULL,
  `txn_status` enum('SUCCESS','FAIL','','') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_cards
#

DROP TABLE IF EXISTS `eco_cards`;

CREATE TABLE `eco_cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `curr_balance` double(20,2) NOT NULL,
  `occupied` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `card_stat` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `lost` enum('N','Y') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `demaged` enum('N','Y') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'O',
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, IC-000001, 0.00, N, Active, N, N, O, 2018-08-22 11:57:33, 2018-08-24 14:12:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, IC-000002, 0.00, N, Active, N, N, O, 2018-08-22 12:06:49, 2018-08-22 12:06:49);


#
# TABLE STRUCTURE FOR: eco_groups
#

DROP TABLE IF EXISTS `eco_groups`;

CREATE TABLE `eco_groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `eco_groups` (`id`, `name`, `description`) VALUES (1, admin, Administrator);
INSERT INTO `eco_groups` (`id`, `name`, `description`) VALUES (2, members, General User);


#
# TABLE STRUCTURE FOR: eco_login_attempts
#

DROP TABLE IF EXISTS `eco_login_attempts`;

CREATE TABLE `eco_login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: eco_material
#

DROP TABLE IF EXISTS `eco_material`;

CREATE TABLE `eco_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `material_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `clean_days` int(11) NOT NULL,
  `replace_days` int(11) NOT NULL,
  `record_stat` enum('O','C','','') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_menus
#

DROP TABLE IF EXISTS `eco_menus`;

CREATE TABLE `eco_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `menu_icon` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_link` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `menu_title` int(11) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (1, Menus, NULL, settings/menus, 1, 4);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (2, Menu Titles, NULL, settings/menutitles, 1, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (3, Users, NULL, settings/users, 1, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (4, Users Groups, NULL, settings/usergroups, 1, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (16, Notifications, NULL, settings/notifications, 1, 5);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (23, Databse Backup, NULL, settings/backup, 1, 7);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (24, Branch, NULL, branch/listBranches, 10, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (25, Campus, NULL, campus/listCampus, 11, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (26, Station, NULL, stations/listStations, 12, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (27, Filters, NULL, materials/listFilters, 14, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (28, Card, NULL, card/listCards, 15, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (29, Add Subscriber, NULL, subscriber/addSubscriber, 13, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (30, Subscribers, NULL, subscribers/listSubscribers, 13, 1);


#
# TABLE STRUCTURE FOR: eco_menutitles
#

DROP TABLE IF EXISTS `eco_menutitles`;

CREATE TABLE `eco_menutitles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `title_icon` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (1, Settings, fa-cogs, 20);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (9, Report, fa fa-book, 19);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (10, Branch, fa fa-bank, 2);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (11, Campus, fa fa-square, 3);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (12, Stations, fa fa-tint, 4);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (13, Subsribers, fa fa-users, 1);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (14, Materials, fa fa-tag, 5);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (15, Card, fa fa-credit-card, 6);


#
# TABLE STRUCTURE FOR: eco_notification_access
#

DROP TABLE IF EXISTS `eco_notification_access`;

CREATE TABLE `eco_notification_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL,
  `user_group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (1, 3, 4);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (2, 1, 4);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (3, 4, 4);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (4, 2, 4);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (6, 3, 1);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (7, 1, 1);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (8, 4, 1);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (9, 2, 1);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (10, 4, 17);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (11, 1, 17);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (12, 3, 17);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (13, 2, 17);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (14, 4, 20);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (15, 1, 20);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (16, 3, 20);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (17, 2, 20);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (18, 5, 1);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (20, 5, 18);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (21, 5, 21);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (22, 5, 22);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (23, 5, 23);
INSERT INTO `eco_notification_access` (`id`, `notification_id`, `user_group`) VALUES (24, 5, 24);


#
# TABLE STRUCTURE FOR: eco_notifications
#

DROP TABLE IF EXISTS `eco_notifications`;

CREATE TABLE `eco_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_station_maint_hist
#

DROP TABLE IF EXISTS `eco_station_maint_hist`;

CREATE TABLE `eco_station_maint_hist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `material_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `cleaned` enum('Y','N','','') COLLATE utf8_unicode_ci NOT NULL,
  `replaced` enum('Y','N','','') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_station_material
#

DROP TABLE IF EXISTS `eco_station_material`;

CREATE TABLE `eco_station_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `station_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `material_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `date_replaced` date DEFAULT NULL,
  `date_cleaned` date DEFAULT NULL,
  `next_replacement` date DEFAULT NULL,
  `next_cleaning` date DEFAULT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_station_operate_stat
#

DROP TABLE IF EXISTS `eco_station_operate_stat`;

CREATE TABLE `eco_station_operate_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_station_operate_stat` (`id`, `name`, `code`) VALUES (1, Operating, OP);
INSERT INTO `eco_station_operate_stat` (`id`, `name`, `code`) VALUES (2, Fault, FA);


#
# TABLE STRUCTURE FOR: eco_stations
#

DROP TABLE IF EXISTS `eco_stations`;

CREATE TABLE `eco_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gsm` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `station_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `station_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `campus_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `operational_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, 255766978710, , Utawala, CA-000001, OP, O, 2018-08-19 17:10:03, 2018-08-20 09:57:46);
INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (3, 255754510366, , Rugambwa, CA-000001, OP, O, 2018-08-20 10:01:04, 2018-08-20 10:04:14);
INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, 255754510366, , Main Campus, CA-000001, OP, O, 2018-08-20 10:02:07, 2018-08-20 10:04:29);
INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, 255754510366, , Lovoir, CA-000001, OP, O, 2018-08-20 10:03:15, 2018-08-20 10:04:36);
INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (6, 255754510366, , Mega Station, CA-000001, OP, O, 2018-08-20 10:03:54, 2018-08-20 10:04:47);


#
# TABLE STRUCTURE FOR: eco_subscribers
#

DROP TABLE IF EXISTS `eco_subscribers`;

CREATE TABLE `eco_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_account` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `card_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `campus_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `record_stat` enum('OPEN','CLOSED','SUSPENDED') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_usergroups
#

DROP TABLE IF EXISTS `eco_usergroups`;

CREATE TABLE `eco_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `group_description` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (1, Admin, System Administrator);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (3, Branch Manager, Member);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (4, Campus Manager, NULL);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (5, Cashier, NULL);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (6, Instrumentation Officer, NULL);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (7, Cashier, NULL);


#
# TABLE STRUCTURE FOR: eco_usergroupsaccess
#

DROP TABLE IF EXISTS `eco_usergroupsaccess`;

CREATE TABLE `eco_usergroupsaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` int(11) NOT NULL,
  `menu_name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (1, 1, 6);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (3, 2, 5);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (4, 2, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (5, 2, 10);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (10, 4, 12);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (11, 4, 5);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (12, 4, 13);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (13, 4, 9);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (14, 4, 10);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (22, 16, 12);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (23, 16, 10);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (24, 16, 5);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (25, 16, 13);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (26, 16, 9);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (27, 17, 12);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (28, 17, 5);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (29, 17, 13);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (30, 17, 9);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (31, 17, 10);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (34, 18, 19);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (35, 18, 20);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (36, 18, 21);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (37, 18, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (39, 19, 19);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (40, 19, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (41, 20, 10);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (42, 20, 12);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (43, 20, 13);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (44, 20, 5);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (45, 20, 9);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (46, 20, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (47, 20, 7);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (48, 17, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (49, 17, 19);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (50, 21, 7);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (51, 21, 19);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (52, 21, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (53, 22, 24);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (54, 22, 29);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (55, 22, 27);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (56, 22, 28);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (57, 22, 25);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (58, 22, 26);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (59, 22, 19);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (64, 24, 24);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (65, 24, 29);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (66, 25, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (67, 26, 31);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (68, 24, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (69, 17, 36);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (70, 24, 38);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (71, 27, 38);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (72, 27, 39);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (73, 24, 39);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (74, 24, 40);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (75, 24, 41);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (76, 24, 44);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (77, 24, 45);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (78, 27, 44);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (79, 27, 45);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (80, 27, 41);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (81, 24, 43);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (82, 27, 43);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (83, 24, 46);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (84, 23, 39);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (85, 28, 11);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (86, 28, 47);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (87, 23, 50);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (88, 27, 50);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (89, 29, 50);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (90, 30, 50);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (91, 31, 50);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (92, 24, 50);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (93, 24, 52);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (94, 6, 27);


#
# TABLE STRUCTURE FOR: eco_users
#

DROP TABLE IF EXISTS `eco_users`;

CREATE TABLE `eco_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `department` int(11) NOT NULL,
  `branch` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_group` int(11) NOT NULL,
  `mobile_no` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned NOT NULL,
  `remember_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `branch`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`) VALUES (1, Innocent Ruseke, admin, $2y$08$XaR1/uNt2a8h/Zf9UUH5f.hp9V59PZniIj1U12OeEGja8OCOp3EPO, 0, TZ1, 1, 255712821881, rusekeinno@gmail.com, 43s5ekzy8tusggg.jpg, Active, 2016-04-25 00:00:00, 2018-08-24 19:14:16, , NULL, NULL, NULL, 0, NULL, 0, 1535127256, 1, NULL);
INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `branch`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`) VALUES (5, Steve Matiku, smatiku, $2y$08$XaR1/uNt2a8h/Zf9UUH5f.hp9V59PZniIj1U12OeEGja8OCOp3EPO, 1, TZ1, 3, 07111111111, steven@smartfittanzania.co.tz, NULL, Active, 2018-02-07 00:00:00, 2018-08-24 19:03:55, , NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL);
INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `branch`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`) VALUES (6, Hellen Mamkwe, instrument, $2y$08$g1yiJUx.PH4YZQWTcEcnmO9W64abL65r3EADzlLdmuyLZ1Utx5UHu, 0, NULL, 6, NULL, maganga@smartfittanzania.co.tz, NULL, Active, 2018-08-24 19:08:07, 2018-08-24 19:08:37, 196.249.102.252, NULL, NULL, NULL, 0, NULL, 1535126887, 1535126917, 1, NULL);


#
# TABLE STRUCTURE FOR: eco_users_groups
#

DROP TABLE IF EXISTS `eco_users_groups`;

CREATE TABLE `eco_users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (1, 1, 1);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (2, 1, 2);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (6, 6, 2);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (3, 37, 2);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (4, 38, 2);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (5, 39, 2);


#
# TABLE STRUCTURE FOR: eco_water_sales
#

DROP TABLE IF EXISTS `eco_water_sales`;

CREATE TABLE `eco_water_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eco_ref_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `card_no` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `units` double(3,2) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `purchase_date` date NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_water_unit_price
#

DROP TABLE IF EXISTS `eco_water_unit_price`;

CREATE TABLE `eco_water_unit_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` double(5,0) NOT NULL,
  `price` double(20,2) NOT NULL,
  `start_date` datetime NOT NULL,
  `maker_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: eco_water_unit_price_hist
#

DROP TABLE IF EXISTS `eco_water_unit_price_hist`;

CREATE TABLE `eco_water_unit_price_hist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` double(5,0) NOT NULL,
  `price` double(20,2) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `maker_id` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

