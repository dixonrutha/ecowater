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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (2, 3, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (12, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (13, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (14, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (15, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (16, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (17, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (18, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, IC-000001, 0.00, N, Active, N, N, O, 2018-08-22 11:57:33, 2018-09-16 10:36:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, IC-000002, 0.00, Y, Active, N, N, O, 2018-08-22 12:06:49, 2018-08-31 09:27:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (3, IC-000003, 0.00, Y, Active, N, N, O, 2018-08-28 13:08:20, 2018-08-28 14:12:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, IC-000004, 0.00, Y, Active, N, N, O, 2018-08-28 13:08:49, 2018-09-09 22:02:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, IC-000005, 0.00, Y, Active, N, N, O, 2018-08-28 13:09:48, 2018-09-09 22:03:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (6, IC-000006, 0.00, Y, Active, N, N, O, 2018-08-28 13:11:21, 2018-09-09 22:04:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (7, IC-000007, 0.00, Y, Active, N, N, O, 2018-08-28 13:12:06, 2018-09-09 22:05:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (8, IC-000008, 0.00, Y, Active, N, N, O, 2018-08-28 13:13:12, 2018-09-11 08:36:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (9, IC-000009, 0.00, Y, Active, N, N, O, 2018-08-28 13:13:46, 2018-09-09 22:06:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (10, IC-000010, 0.00, Y, Active, N, N, O, 2018-08-28 13:14:15, 2018-09-09 22:07:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (11, IC-000011, 0.00, Y, Active, N, N, O, 2018-08-28 13:17:05, 2018-09-09 22:08:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (12, IC-000012, 0.00, Y, Active, N, N, O, 2018-08-28 13:17:37, 2018-09-09 22:09:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (13, IC-000013, 0.00, Y, Active, N, N, O, 2018-08-28 13:17:54, 2018-09-09 22:10:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (15, IC-000014, 0.00, Y, Active, N, N, O, 2018-08-28 13:18:41, 2018-09-09 22:11:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (16, IC-000015, 0.00, Y, Active, N, N, O, 2018-08-28 13:18:56, 2018-09-09 22:11:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (17, IC-000016, 0.00, Y, Active, N, N, O, 2018-08-28 13:24:33, 2018-09-09 22:12:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (18, IC-000017, 0.00, Y, Active, N, N, O, 2018-08-28 13:24:47, 2018-09-09 22:13:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (19, IC-000018, 0.00, N, Active, N, N, O, 2018-08-28 13:25:05, 2018-09-15 22:57:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (20, IC-000019, 0.00, Y, Active, N, N, O, 2018-08-28 13:25:45, 2018-09-09 22:13:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (21, IC-000020, 0.00, Y, Active, N, N, O, 2018-08-28 13:26:00, 2018-09-09 22:14:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (22, IC-000021, 0.00, Y, Active, N, N, O, 2018-08-28 13:26:52, 2018-09-09 22:15:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (23, IC-000022, 0.00, Y, Active, N, N, O, 2018-08-28 13:27:08, 2018-09-12 09:04:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (24, IC-000023, 0.00, Y, Active, N, N, O, 2018-08-28 13:27:29, 2018-09-12 09:11:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (25, IC-000024, 0.00, Y, Active, N, N, O, 2018-08-28 13:27:42, 2018-09-12 09:16:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (26, IC-000025, 0.00, Y, Active, N, N, O, 2018-08-28 13:27:59, 2018-09-10 09:00:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (27, IC-000026, 0.00, Y, Active, N, N, O, 2018-08-28 13:28:16, 2018-09-10 09:02:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (28, IC-000027, 0.00, Y, Active, N, N, O, 2018-08-28 13:28:39, 2018-09-10 09:04:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (29, IC-000028, 0.00, Y, Active, N, N, O, 2018-08-28 13:36:16, 2018-09-10 09:06:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (30, IC-000029, 0.00, N, Active, N, N, O, 2018-08-28 13:36:40, 2018-08-28 13:36:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (31, IC-000030, 0.00, Y, Active, N, N, O, 2018-08-28 13:37:12, 2018-09-10 09:18:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (32, IC-000031, 0.00, Y, Active, N, N, O, 2018-08-28 13:37:35, 2018-09-10 09:20:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (33, IC-000032, 0.00, Y, Active, N, N, O, 2018-08-28 13:37:54, 2018-09-10 09:21:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (34, IC-000033, 0.00, Y, Active, N, N, O, 2018-08-28 13:38:12, 2018-09-10 09:23:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (35, IC-000034, 0.00, Y, Active, N, N, O, 2018-08-28 13:38:27, 2018-09-21 13:56:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (36, IC-000035, 0.00, Y, Active, N, N, O, 2018-08-28 13:38:42, 2018-09-10 09:24:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (37, IC-000036, 0.00, Y, Active, N, N, O, 2018-08-28 13:38:58, 2018-09-10 09:26:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (38, IC-000037, 0.00, Y, Active, N, N, O, 2018-08-28 13:39:29, 2018-09-10 09:28:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (39, IC-000038, 0.00, Y, Active, N, N, O, 2018-08-28 13:39:51, 2018-09-10 09:29:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (40, IC-000039, 0.00, Y, Active, N, N, O, 2018-08-28 13:40:05, 2018-09-10 09:30:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (41, IC-000040, 0.00, Y, Active, N, N, O, 2018-08-28 13:40:23, 2018-09-11 08:48:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (42, IC-000041, 0.00, Y, Active, N, N, O, 2018-08-28 13:40:43, 2018-09-11 08:50:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (43, IC-000042, 0.00, Y, Active, N, N, O, 2018-08-28 13:41:07, 2018-09-11 08:51:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (44, IC-000043, 0.00, Y, Active, N, N, O, 2018-08-28 13:41:44, 2018-09-11 08:53:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (45, IC-000044, 0.00, Y, Active, N, N, O, 2018-08-28 13:42:02, 2018-09-11 08:54:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (46, IC-000045, 0.00, Y, Active, N, N, O, 2018-08-28 13:42:19, 2018-09-11 08:55:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (47, IC-000046, 0.00, Y, Active, N, N, O, 2018-08-28 13:42:47, 2018-09-11 08:57:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (48, IC-000047, 0.00, Y, Active, N, N, O, 2018-08-28 13:43:13, 2018-09-11 09:03:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (49, IC-000048, 0.00, Y, Active, N, N, O, 2018-08-28 13:43:52, 2018-09-11 09:04:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (50, IC-000049, 0.00, Y, Active, N, N, O, 2018-08-28 13:44:15, 2018-09-11 09:07:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (51, IC-000050, 0.00, Y, Active, N, N, O, 2018-08-28 13:44:40, 2018-09-11 09:09:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (52, IC-000051, 0.00, Y, Active, N, N, O, 2018-08-28 13:45:37, 2018-09-11 09:10:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (53, IC-000052, 0.00, Y, Active, N, N, O, 2018-08-28 13:45:55, 2018-09-11 09:12:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (54, IC-000053, 0.00, Y, Active, N, N, O, 2018-08-28 13:46:10, 2018-09-11 09:15:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (55, IC-000054, 0.00, Y, Active, N, N, O, 2018-08-28 13:46:31, 2018-09-22 12:06:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (56, IC-000055, 0.00, Y, Active, N, N, O, 2018-08-28 13:46:51, 2018-09-22 12:08:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (57, IC-000056, 0.00, Y, Active, N, N, O, 2018-08-28 13:47:07, 2018-09-22 12:10:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (58, IC-000057, 0.00, N, Active, N, N, O, 2018-08-28 13:47:38, 2018-08-28 13:47:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (59, IC-000058, 0.00, N, Active, N, N, O, 2018-08-28 13:48:14, 2018-08-28 13:48:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (61, IC-000060, 0.00, N, Active, N, N, O, 2018-08-28 13:48:55, 2018-08-28 13:48:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (62, IC-000061, 0.00, Y, Active, N, N, O, 2018-08-28 13:49:26, 2018-09-11 09:16:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (63, IC-000062, 0.00, N, Active, N, N, O, 2018-08-28 13:49:54, 2018-08-28 13:49:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (64, IC-000063, 0.00, N, Active, N, N, O, 2018-08-28 13:50:17, 2018-08-28 13:50:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (65, IC-000064, 0.00, N, Active, N, N, O, 2018-08-28 13:50:36, 2018-08-28 13:50:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (66, IC-000065, 0.00, N, Active, N, N, O, 2018-08-28 13:51:18, 2018-08-28 13:51:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (67, IC-000066, 0.00, Y, Active, N, N, O, 2018-08-28 13:54:06, 2018-09-11 09:18:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (68, IC-000067, 0.00, N, Active, N, N, O, 2018-08-28 13:55:08, 2018-08-28 13:55:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (69, IC-000068, 0.00, N, Active, N, N, O, 2018-08-28 13:55:31, 2018-08-28 13:55:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (70, IC-000069, 0.00, N, Active, N, N, O, 2018-08-28 13:55:46, 2018-08-28 13:55:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (71, IC-000070, 0.00, Y, Active, N, N, O, 2018-08-28 13:56:03, 2018-09-11 09:19:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (72, IC-000071, 0.00, Y, Active, N, N, O, 2018-08-28 13:56:20, 2018-09-11 09:20:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (73, IC-000072, 0.00, N, Active, N, N, O, 2018-08-28 13:56:34, 2018-08-28 13:56:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (74, IC-000073, 0.00, N, Active, N, N, O, 2018-08-28 13:56:45, 2018-08-28 13:56:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (75, IC-000074, 0.00, N, Active, N, N, O, 2018-08-28 13:57:05, 2018-08-28 13:57:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (76, IC-000075, 0.00, N, Active, N, N, O, 2018-08-28 13:58:20, 2018-08-28 13:58:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (77, IC-000076, 0.00, N, Active, N, N, O, 2018-08-28 13:58:46, 2018-08-28 13:58:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (78, IC-000077, 0.00, N, Active, N, N, O, 2018-08-28 13:59:02, 2018-08-28 13:59:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (79, IC-000078, 0.00, N, Active, N, N, O, 2018-08-28 13:59:14, 2018-08-28 13:59:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (80, IC-000079, 0.00, N, Active, N, N, O, 2018-08-28 13:59:27, 2018-08-28 13:59:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (81, IC-000080, 0.00, N, Active, N, N, O, 2018-08-28 13:59:58, 2018-08-28 13:59:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (82, IC-000081, 0.00, N, Active, N, N, O, 2018-08-28 14:00:19, 2018-08-28 14:00:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (83, IC-000082, 0.00, Y, Active, N, N, O, 2018-08-28 14:00:43, 2018-09-20 09:16:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (84, IC-000083, 0.00, Y, Active, N, N, O, 2018-08-28 14:00:55, 2018-09-20 09:15:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (85, IC-000084, 0.00, N, Active, N, N, O, 2018-08-28 14:01:13, 2018-08-28 14:01:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (86, IC-000085, 0.00, Y, Active, N, N, O, 2018-08-28 14:01:45, 2018-09-20 09:23:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (87, IC-000086, 0.00, N, Active, N, N, O, 2018-08-28 14:02:26, 2018-08-28 14:02:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (89, IC-000087, 0.00, N, Active, N, N, O, 2018-08-28 14:03:17, 2018-08-28 14:03:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (90, IC-000088, 0.00, N, Active, N, N, O, 2018-08-28 14:03:47, 2018-08-28 14:03:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (91, IC-000089, 0.00, N, Active, N, N, O, 2018-08-28 14:04:04, 2018-08-28 14:04:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (92, IC-000090, 0.00, N, Active, N, N, O, 2018-08-28 14:04:24, 2018-08-28 14:04:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (93, IC-000091, 0.00, N, Active, N, N, O, 2018-08-28 14:04:47, 2018-08-28 14:04:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (94, IC-000092, 0.00, N, Active, N, N, O, 2018-08-28 14:05:24, 2018-08-28 14:05:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (95, IC-000093, 0.00, Y, Active, N, N, O, 2018-08-28 14:05:52, 2018-09-13 23:00:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (98, IC-000094, 0.00, Y, Active, N, N, O, 2018-08-28 14:09:06, 2018-09-19 10:47:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (99, IC-000095, 0.00, Y, Active, N, N, O, 2018-08-28 14:09:26, 2018-09-19 10:29:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (100, IC-000096, 0.00, N, Active, N, N, O, 2018-08-28 14:09:41, 2018-08-28 14:09:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (101, IC-000097, 0.00, Y, Active, N, N, O, 2018-08-28 14:09:55, 2018-09-13 23:07:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (102, IC-000098, 0.00, Y, Active, N, N, O, 2018-08-28 14:10:17, 2018-09-11 09:22:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (103, IC-000099, 0.00, Y, Active, N, N, O, 2018-08-28 14:10:32, 2018-09-11 09:23:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (104, IC-000100, 0.00, Y, Active, N, N, O, 2018-08-28 14:10:52, 2018-09-13 23:10:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (105, IC-000101, 0.00, Y, Active, N, N, O, 2018-09-08 16:06:39, 2018-09-17 18:09:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (106, IC-000102, 0.00, Y, Active, N, N, O, 2018-09-08 16:06:51, 2018-09-16 10:36:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (107, IC-000103, 0.00, Y, Active, N, N, O, 2018-09-08 16:07:38, 2018-09-08 16:09:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (108, IC-000107, 0.00, Y, Active, N, N, O, 2018-09-11 09:28:04, 2018-09-11 09:37:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (109, IC-000143, 0.00, Y, Active, N, N, O, 2018-09-11 09:30:30, 2018-09-13 22:40:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (110, IC-000154, 0.00, Y, Active, N, N, O, 2018-09-11 09:32:42, 2018-09-13 23:11:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (111, IC-000156, 0.00, Y, Active, N, N, O, 2018-09-11 09:33:04, 2018-09-12 22:36:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (112, IC-000201, 0.00, N, Active, N, N, O, 2018-09-11 09:34:43, 2018-09-11 09:34:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (113, IC-000145, 0.00, Y, Active, N, N, O, 2018-09-13 23:01:47, 2018-09-13 23:02:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (114, IC-000147, 0.00, Y, Active, N, N, O, 2018-09-13 23:03:48, 2018-09-14 00:43:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (115, IC-000113, 0.00, Y, Active, N, N, O, 2018-09-16 10:36:58, 2018-09-16 10:39:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (116, IC-000104, 0.00, N, Active, N, N, O, 2018-09-17 17:17:01, 2018-09-17 17:17:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (117, IC-000105, 0.00, Y, Active, N, N, O, 2018-09-17 17:17:23, 2018-09-17 18:13:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (118, IC-000106, 0.00, N, Active, N, N, O, 2018-09-17 17:17:44, 2018-09-17 17:17:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (119, IC-000108, 0.00, N, Active, N, N, O, 2018-09-17 17:18:03, 2018-09-17 17:18:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (120, IC-000109, 0.00, Y, Active, N, N, O, 2018-09-17 17:18:16, 2018-09-17 18:02:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (121, IC-000110, 0.00, N, Active, N, N, O, 2018-09-17 17:18:32, 2018-09-17 17:18:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (122, IC-000111, 0.00, Y, Active, N, N, O, 2018-09-17 17:18:59, 2018-09-19 10:34:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (124, IC-000114, 0.00, Y, Active, N, N, O, 2018-09-17 17:19:50, 2018-09-19 10:24:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (125, IC-000115, 0.00, N, Active, N, N, O, 2018-09-17 17:20:10, 2018-09-17 17:20:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (126, IC-000116, 0.00, N, Active, N, N, O, 2018-09-17 17:20:29, 2018-09-17 17:20:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (127, IC-000117, 0.00, N, Active, N, N, O, 2018-09-17 17:22:40, 2018-09-17 17:22:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (128, IC-000118, 0.00, N, Active, N, N, O, 2018-09-17 17:23:12, 2018-09-17 17:23:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (129, IC-000119, 0.00, N, Active, N, N, O, 2018-09-17 17:23:24, 2018-09-17 17:23:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (130, IC-000120, 0.00, N, Active, N, N, O, 2018-09-17 17:23:38, 2018-09-17 17:23:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (131, IC-000121, 0.00, N, Active, N, N, O, 2018-09-17 17:24:11, 2018-09-17 17:24:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (132, IC-000122, 0.00, N, Active, N, N, O, 2018-09-17 17:24:23, 2018-09-17 17:24:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (133, IC-000123, 0.00, N, Active, N, N, O, 2018-09-17 17:24:40, 2018-09-17 17:24:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (134, IC-000124, 0.00, N, Active, N, N, O, 2018-09-17 17:24:54, 2018-09-17 17:24:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (135, IC-000125, 0.00, N, Active, N, N, O, 2018-09-17 17:25:06, 2018-09-17 17:25:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (136, IC-000126, 0.00, N, Active, N, N, O, 2018-09-17 17:25:13, 2018-09-17 17:25:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (137, IC-000127, 0.00, N, Active, N, N, O, 2018-09-17 17:25:22, 2018-09-17 17:25:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (138, IC-000128, 0.00, N, Active, N, N, O, 2018-09-17 17:25:36, 2018-09-17 17:25:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (139, IC-000129, 0.00, N, Active, N, N, O, 2018-09-17 17:25:45, 2018-09-17 17:25:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (140, IC-000130, 0.00, N, Active, N, N, O, 2018-09-17 17:25:53, 2018-09-17 17:25:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (141, IC-000131, 0.00, N, Active, N, N, O, 2018-09-17 17:26:11, 2018-09-17 17:26:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (142, IC-000132, 0.00, N, Active, N, N, O, 2018-09-17 17:26:19, 2018-09-17 17:26:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (143, IC-000133, 0.00, N, Active, N, N, O, 2018-09-17 17:26:32, 2018-09-17 17:26:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (144, IC-000134, 0.00, N, Active, N, N, O, 2018-09-17 17:26:55, 2018-09-17 17:26:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (145, IC-000135, 0.00, N, Active, N, N, O, 2018-09-17 17:27:09, 2018-09-17 17:27:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (146, IC-000136, 0.00, N, Active, N, N, O, 2018-09-17 17:28:42, 2018-09-17 17:28:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (147, IC-000137, 0.00, N, Active, N, N, O, 2018-09-17 17:28:49, 2018-09-17 17:28:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (148, IC-000138, 0.00, N, Active, N, N, O, 2018-09-17 17:29:02, 2018-09-17 17:29:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (149, IC-000139, 0.00, N, Active, N, N, O, 2018-09-17 17:29:12, 2018-09-17 17:29:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (150, IC-000140, 0.00, N, Active, N, N, O, 2018-09-17 17:29:44, 2018-09-17 17:29:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (151, IC-000141, 0.00, N, Active, N, N, O, 2018-09-17 17:29:56, 2018-09-17 17:29:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (152, IC-000144, 0.00, N, Active, N, N, O, 2018-09-17 17:30:03, 2018-09-17 17:30:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (153, IC-000146, 0.00, N, Active, N, N, O, 2018-09-17 17:30:21, 2018-09-17 17:30:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (154, IC-000148, 0.00, N, Active, N, N, O, 2018-09-17 17:30:40, 2018-09-17 17:30:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (155, IC-000149, 0.00, N, Active, N, N, O, 2018-09-17 17:30:57, 2018-09-17 17:30:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (156, IC-000150, 0.00, Y, Active, N, N, O, 2018-09-17 17:31:08, 2018-09-17 18:08:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (157, IC-000151, 0.00, N, Active, N, N, O, 2018-09-17 17:31:24, 2018-09-17 17:31:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (158, IC-000152, 0.00, N, Active, N, N, O, 2018-09-17 17:31:35, 2018-09-17 17:31:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (159, IC-000153, 0.00, N, Active, N, N, O, 2018-09-17 17:31:43, 2018-09-17 17:31:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (160, IC-000155, 0.00, N, Active, N, N, O, 2018-09-17 17:32:19, 2018-09-17 17:32:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (161, IC-000157, 0.00, N, Active, N, N, O, 2018-09-17 17:32:35, 2018-09-17 17:32:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (162, IC-000158, 0.00, N, Active, N, N, O, 2018-09-17 17:33:03, 2018-09-17 17:33:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (163, IC-000159, 0.00, N, Active, N, N, O, 2018-09-17 17:33:17, 2018-09-22 16:56:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (164, IC-000160, 0.00, N, Active, N, N, O, 2018-09-17 17:33:28, 2018-09-17 17:33:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (165, IC-000162, 0.00, Y, Active, N, N, O, 2018-09-17 17:33:48, 2018-09-17 18:16:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (166, IC-000142, 0.00, N, Active, N, N, O, 2018-09-17 17:36:05, 2018-09-17 17:36:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (167, IC-000161, 0.00, N, Active, N, N, O, 2018-09-17 17:38:45, 2018-09-17 17:38:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (168, IC-000163, 0.00, N, Active, N, N, O, 2018-09-18 15:15:02, 2018-09-18 15:15:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (169, IC-000112, 1000.00, Y, Active, N, N, O, 2018-09-19 10:39:38, 2018-09-19 10:48:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (170, IC-000180, 1000.00, Y, Active, N, N, O, 2018-09-20 09:25:02, 2018-09-20 09:26:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (171, IC-000164, 1000.00, N, Active, N, N, O, 2018-09-20 12:04:15, 2018-09-20 12:04:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (172, IC-000165, 1000.00, N, Active, N, N, O, 2018-09-20 12:05:23, 2018-09-20 12:05:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (173, IC-000166, 1000.00, N, Active, N, N, O, 2018-09-20 12:05:51, 2018-09-20 12:05:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (174, IC-000168, 1000.00, N, Active, N, N, O, 2018-09-20 12:06:15, 2018-09-20 12:06:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (175, IC-000167, 1000.00, N, Active, N, N, O, 2018-09-20 12:06:32, 2018-09-20 12:06:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (176, IC-000169, 1000.00, N, Active, N, N, O, 2018-09-20 12:06:48, 2018-09-20 12:06:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (177, IC-000170, 1000.00, N, Active, N, N, O, 2018-09-20 12:07:14, 2018-09-20 12:07:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (178, IC-000171, 1000.00, N, Active, N, N, O, 2018-09-20 12:07:33, 2018-09-20 12:07:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (179, IC-000172, 1000.00, N, Active, N, N, O, 2018-09-20 12:07:50, 2018-09-20 12:07:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (180, IC-000173, 1000.00, N, Active, N, N, O, 2018-09-20 12:08:03, 2018-09-20 12:08:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (181, IC-000174, 1000.00, N, Active, N, N, O, 2018-09-20 12:08:20, 2018-09-20 12:08:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (182, IC-000175, 1000.00, N, Active, N, N, O, 2018-09-20 12:08:36, 2018-09-20 12:08:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (183, IC-000176, 1000.00, N, Active, N, N, O, 2018-09-20 12:08:51, 2018-09-20 12:08:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (184, IC-000178, 1000.00, N, Active, N, N, O, 2018-09-20 12:09:13, 2018-09-20 12:09:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (185, IC-000179, 1000.00, N, Active, N, N, O, 2018-09-20 12:10:18, 2018-09-20 12:10:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (186, IC-000181, 1000.00, N, Active, N, N, O, 2018-09-20 12:10:47, 2018-09-20 12:10:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (187, IC-000182, 1000.00, N, Active, N, N, O, 2018-09-20 12:11:18, 2018-09-20 12:11:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (188, IC-000183, 1000.00, N, Active, N, N, O, 2018-09-20 12:11:41, 2018-09-20 12:11:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (189, IC-000184, 1000.00, N, Active, N, N, O, 2018-09-20 12:12:29, 2018-09-20 12:12:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (190, IC-000185, 1000.00, N, Active, N, N, O, 2018-09-20 12:12:57, 2018-09-20 12:12:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (191, IC-000186, 1000.00, N, Active, N, N, O, 2018-09-20 12:13:15, 2018-09-20 12:13:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (192, IC-000187, 1000.00, N, Active, N, N, O, 2018-09-20 12:13:33, 2018-09-20 12:13:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (193, IC-000188, 1000.00, N, Active, N, N, O, 2018-09-20 12:13:45, 2018-09-20 12:13:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (194, IC-000189, 1000.00, N, Active, N, N, O, 2018-09-20 12:14:01, 2018-09-20 12:14:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (195, IC-000190, 1000.00, N, Active, N, N, O, 2018-09-20 12:14:19, 2018-09-20 12:14:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (196, IC-000191, 1000.00, N, Active, N, N, O, 2018-09-20 12:14:31, 2018-09-20 12:14:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (197, IC-000192, 1000.00, N, Active, N, N, O, 2018-09-20 12:14:46, 2018-09-20 12:14:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (198, IC-000194, 1000.00, N, Active, N, N, O, 2018-09-20 12:15:04, 2018-09-20 12:15:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (199, IC-000195, 1000.00, N, Active, N, N, O, 2018-09-20 12:15:18, 2018-09-20 12:15:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (200, IC-000196, 1000.00, N, Active, N, N, O, 2018-09-20 12:15:29, 2018-09-20 12:15:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (201, IC-000197, 1000.00, N, Active, N, N, O, 2018-09-20 12:15:47, 2018-09-20 12:15:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (202, IC-000198, 1000.00, N, Active, N, N, O, 2018-09-20 12:16:18, 2018-09-20 12:16:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (203, IC-000199, 1000.00, N, Active, N, N, O, 2018-09-20 12:16:38, 2018-09-20 12:16:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (204, IC-000200, 1000.00, N, Active, N, N, O, 2018-09-20 12:17:16, 2018-09-20 12:17:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (205, IC-000202, 1000.00, N, Active, N, N, O, 2018-09-20 12:17:33, 2018-09-20 12:17:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (206, IC-000203, 1000.00, N, Active, N, N, O, 2018-09-20 12:17:50, 2018-09-20 12:17:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (207, IC-000204, 1000.00, N, Active, N, N, O, 2018-09-20 12:18:24, 2018-09-20 12:18:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (208, IC-000205, 1000.00, N, Active, N, N, O, 2018-09-20 12:18:38, 2018-09-20 12:18:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (209, IC-000206, 1000.00, N, Active, N, N, O, 2018-09-20 12:18:46, 2018-09-20 12:18:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (210, IC-000207, 1000.00, N, Active, N, N, O, 2018-09-20 12:19:05, 2018-09-20 12:19:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (211, IC-000208, 1000.00, N, Active, N, N, O, 2018-09-20 12:19:17, 2018-09-20 12:19:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (212, IC-000209, 1000.00, N, Active, N, N, O, 2018-09-20 12:19:48, 2018-09-20 12:19:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (213, IC-000210, 1000.00, N, Active, N, N, O, 2018-09-20 12:20:05, 2018-09-20 12:20:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (214, IC-000211, 1000.00, N, Active, N, N, O, 2018-09-20 12:20:15, 2018-09-20 12:20:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (215, IC-000212, 1000.00, N, Active, N, N, O, 2018-09-20 12:20:28, 2018-09-20 12:20:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (216, IC-000213, 1000.00, N, Active, N, N, O, 2018-09-20 12:20:40, 2018-09-20 12:20:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (217, IC-000214, 1000.00, N, Active, N, N, O, 2018-09-20 12:20:52, 2018-09-20 12:20:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (218, IC-000215, 1000.00, N, Active, N, N, O, 2018-09-20 12:21:02, 2018-09-20 12:21:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (219, IC-000216, 1000.00, N, Active, N, N, O, 2018-09-20 12:21:11, 2018-09-20 12:21:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (220, IC-000217, 1000.00, N, Active, N, N, O, 2018-09-20 12:21:22, 2018-09-20 12:21:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (221, IC-000218, 1000.00, N, Active, N, N, O, 2018-09-20 12:21:31, 2018-09-20 12:21:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (222, IC-000219, 1000.00, N, Active, N, N, O, 2018-09-20 12:21:44, 2018-09-20 12:21:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (223, IC-000220, 1000.00, N, Active, N, N, O, 2018-09-20 12:22:00, 2018-09-20 12:22:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (224, IC-000221, 1000.00, N, Active, N, N, O, 2018-09-20 12:22:27, 2018-09-20 12:22:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (225, IC-000222, 1000.00, N, Active, N, N, O, 2018-09-20 12:25:37, 2018-09-20 12:25:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (226, IC-000223, 1000.00, N, Active, N, N, O, 2018-09-20 12:25:53, 2018-09-20 12:25:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (227, IC-000224, 1000.00, N, Active, N, N, O, 2018-09-20 12:26:16, 2018-09-20 12:26:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (228, IC-000225, 1000.00, N, Active, N, N, O, 2018-09-20 12:26:36, 2018-09-20 12:26:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (229, IC-000226, 1000.00, N, Active, N, N, O, 2018-09-20 12:26:47, 2018-09-20 12:26:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (230, IC-000227, 1000.00, N, Active, N, N, O, 2018-09-20 12:26:56, 2018-09-20 12:26:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (231, IC-000228, 1000.00, N, Active, N, N, O, 2018-09-20 12:27:11, 2018-09-20 12:27:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (232, IC-000229, 1000.00, N, Active, N, N, O, 2018-09-20 12:27:24, 2018-09-20 12:27:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (233, IC-000230, 1000.00, N, Active, N, N, O, 2018-09-20 12:27:33, 2018-09-20 12:27:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (234, IC-000059, 1000.00, Y, Active, N, N, O, 2018-09-22 16:55:00, 2018-09-22 16:56:38);


#
# TABLE STRUCTURE FOR: eco_filters
#

DROP TABLE IF EXISTS `eco_filters`;

CREATE TABLE `eco_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `material_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `clean_days` int(11) DEFAULT NULL,
  `replace_days` int(11) NOT NULL,
  `record_stat` enum('O','C') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `material_code` (`material_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_filters` (`id`, `material_code`, `material_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, QS, Quartz Sand Filter, 7, 720, O, 2018-09-09 16:04:56, 2018-09-09 16:04:56);
INSERT INTO `eco_filters` (`id`, `material_code`, `material_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, AC, Activated Carbon Filter, 7, 360, O, 2018-09-09 16:06:52, 2018-09-09 16:06:52);
INSERT INTO `eco_filters` (`id`, `material_code`, `material_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, PP, PP-Filter, 7, 60, O, 2018-09-09 16:09:24, 2018-09-09 16:09:24);
INSERT INTO `eco_filters` (`id`, `material_code`, `material_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, RO, RO-Membrane, 7, 720, O, 2018-09-09 16:10:03, 2018-09-09 16:10:03);
INSERT INTO `eco_filters` (`id`, `material_code`, `material_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (6, PAC, Post Activated Carbon Filter, NULL, 180, O, 2018-09-09 16:12:03, 2018-09-09 16:12:03);
INSERT INTO `eco_filters` (`id`, `material_code`, `material_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (7, MIN, Mineral Filter, NULL, 180, O, 2018-09-09 16:12:24, 2018-09-09 16:12:24);
INSERT INTO `eco_filters` (`id`, `material_code`, `material_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (8, OG, Ozone Generator, NULL, 90, O, 2018-09-09 16:13:01, 2018-09-09 16:13:01);


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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (29, Add Subscriber, NULL, subscribers/newSubscriber, 13, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (30, Subscribers, NULL, subscribers/listSubscribers, 13, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (31, Sales History, NULL, stations/salesHistory, 12, 10);


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
# TABLE STRUCTURE FOR: eco_station_sales_hist
#

DROP TABLE IF EXISTS `eco_station_sales_hist`;

CREATE TABLE `eco_station_sales_hist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `station_gsm` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `d1_open_bal_card` double(20,2) DEFAULT NULL,
  `d1_closing_bal_card` double(20,2) DEFAULT NULL,
  `d1_open_bal_cash` double(20,2) DEFAULT NULL,
  `d1_closing_bal_cash` double(20,2) DEFAULT NULL,
  `d2_open_bal_card` double(20,2) DEFAULT NULL,
  `d2_closing_bal_card` double(20,2) DEFAULT NULL,
  `d2_open_bal_cash` double(20,2) DEFAULT NULL,
  `d2_closing_bal_cash` double(20,2) DEFAULT NULL,
  `maker_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (9, 2018-09-07, 255766978710, 0.00, 140299.02, 0.00, 40922.00, 0.00, 124655.70, 0.00, 43961.00, , 2018-09-08 20:08:54, 2018-09-08 20:09:42);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (10, 2018-09-08, 255766978710, 140299.02, 145052.65, 40922.00, 41572.00, 124655.70, 132960.80, 43961.00, 44461.00, , 2018-09-08 20:11:06, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (11, 2018-09-09, 255766978710, 145052.65, 145543.17, 41572.00, 41772.00, 132960.80, 133360.80, 44461.00, 44961.00, , 2018-09-09 20:49:29, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (12, 2018-09-10, 255766978710, 145543.17, 149140.88, 41772.00, 42272.00, 133360.80, 136067.26, 44961.00, 46911.00, , 2018-09-10 18:33:58, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (13, 2018-09-11, 255766978710, 149140.88, 153101.20, 42272.00, 43422.00, 136067.26, 138950.72, 46911.00, 49411.00, , 2018-09-11 20:02:51, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (14, 2018-09-12, 255766978710, 153101.20, 154216.29, 43422.00, 44472.00, 138950.72, 139833.76, 49411.00, 52461.00, , 2018-09-13 22:25:40, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (15, 2018-09-13, 255766978710, 154216.29, 158020.97, 44472.00, 45472.00, 139833.76, 142620.46, 52461.00, 55461.00, , 2018-09-13 22:28:06, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (28, 2018-09-22, 255766978710, 185484.07, 186260.19, 52122.00, 52222.00, 180329.70, 181382.14, 79461.00, 81061.00, , 2018-09-22 22:19:21, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (18, 2018-09-14, 255766978710, 158020.97, 167575.42, 45472.00, 46472.00, 142620.46, 147205.58, 55461.00, 57761.00, , 2018-09-15 23:30:23, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (19, 2018-09-15, 255766978710, 167575.42, 168893.04, 46472.00, 47022.00, 147205.58, 148803.80, 57761.00, 58611.00, , 2018-09-15 23:31:40, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (21, 2018-09-16, 255766978710, 168893.04, 169093.04, 47022.00, 47272.00, 148803.80, 148803.80, 58611.00, 59811.00, , 2018-09-16 18:05:51, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (22, 2018-09-17, 255766978710, 169093.04, 172497.45, 47272.00, 48222.00, 148803.80, 153649.57, 59811.00, 62361.00, , 2018-09-17 17:43:52, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (24, 2018-09-18, 255766978710, 172497.45, 175651.26, 48222.00, 49722.00, 153649.57, 158931.91, 62361.00, 66411.00, , 2018-09-19 10:52:52, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (25, 2018-09-19, 255766978710, 175651.26, 178009.51, 49722.00, 50672.00, 158931.91, 168521.52, 66411.00, 71311.00, , 2018-09-20 09:08:42, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (26, 2018-09-20, 255766978710, 178009.51, 180336.93, 50672.00, 51222.00, 168521.52, 170462.23, 71311.00, 74011.00, , 2018-09-22 11:56:56, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (27, 2018-09-21, 255766978710, 180336.93, 185484.07, 51222.00, 52122.00, 170462.23, 180329.70, 74011.00, 79461.00, , 2018-09-22 11:59:05, NULL);
INSERT INTO `eco_station_sales_hist` (`id`, `date`, `station_gsm`, `d1_open_bal_card`, `d1_closing_bal_card`, `d1_open_bal_cash`, `d1_closing_bal_cash`, `d2_open_bal_card`, `d2_closing_bal_card`, `d2_open_bal_cash`, `d2_closing_bal_cash`, `maker_id`, `date_registered`, `date_updated`) VALUES (29, 2018-09-23, 255766978710, 186260.19, 186260.19, 52222.00, 52222.00, 181382.14, 181782.14, 81061.00, 81761.00, , 2018-09-23 18:46:44, NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, 255766978710, , Utawala, CA-000001, OP, O, 2018-08-19 17:10:03, 2018-08-20 09:57:46);
INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, 255754510366, , Mega Station, CA-000001, OP, O, 2018-09-22 22:25:59, 2018-09-22 22:29:10);
INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (3, 255746461166, , Rugambwa, CA-000001, OP, O, 2018-09-22 22:27:23, 2018-09-22 22:28:53);
INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, 255756656355, , Lovoir, CA-000001, OP, O, 2018-09-22 22:28:01, 2018-09-22 22:28:44);
INSERT INTO `eco_stations` (`id`, `gsm`, `station_code`, `station_name`, `campus_code`, `operational_status`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, 255759751564, , Main Campus, CA-000001, OP, O, 2018-09-22 22:28:33, 2018-09-22 22:28:33);


#
# TABLE STRUCTURE FOR: eco_subscribers
#

DROP TABLE IF EXISTS `eco_subscribers`;

CREATE TABLE `eco_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_account` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sub_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('M','F') COLLATE utf8_unicode_ci NOT NULL,
  `card_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `campus_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `record_stat` enum('OPEN','CLOSED','SUSPENDED') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, 1808261024, SHIJA KELVIN, M, IC-000102, 255625590951, CA-000001, OPEN, 2018-08-26 10:24:53, 2018-09-16 10:36:21);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, 1808281412, NASRA NASSOR, F, IC-000003, 255769918748, CA-000001, OPEN, 2018-08-28 14:12:36, 2018-08-28 14:12:36);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (3, 1808310927, DENNIS MAGANGA, M, IC-000002, 255785777667, CA-000001, OPEN, 2018-08-31 09:27:28, 2018-08-31 09:27:28);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, 1809081609, FRANCO BAKARI, M, IC-000103, 255759876427, CA-000001, OPEN, 2018-09-08 16:09:13, 2018-09-08 16:09:13);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, 1809092202, ZABIBU HAYESHI, M, IC-000004, 255755076450, CA-000001, OPEN, 2018-09-09 22:02:22, 2018-09-09 22:02:22);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (6, 1809092203, ZAINABU MACHEMA, F, IC-000005, 255755994403, CA-000001, OPEN, 2018-09-09 22:03:08, 2018-09-09 22:03:08);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (7, 1809092204, KASSIM BAKARI, M, IC-000006,  255714141450, CA-000001, OPEN, 2018-09-09 22:04:46, 2018-09-16 01:27:41);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (8, 1809092205, STEVEN ALEX, M, IC-000007, 255767130886, CA-000001, OPEN, 2018-09-09 22:05:23, 2018-09-09 22:05:23);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (9, 1809092206, ANNA CHAMBO, M, IC-000009, 255756643595, CA-000001, OPEN, 2018-09-09 22:06:19, 2018-09-09 22:06:19);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (10, 1809092207, AMIRY ABDALLAH KOZZY , M, IC-000010, 255713578009, CA-000001, OPEN, 2018-09-09 22:07:10, 2018-09-09 22:07:10);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (11, 1809092208, ONESMO BEYANGA, M, IC-000011, 255764217161, CA-000001, OPEN, 2018-09-09 22:08:05, 2018-09-09 22:08:05);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (12, 1809092209, DAVID MUZAHULA , M, IC-000012, 255756829416, CA-000001, OPEN, 2018-09-09 22:09:12, 2018-09-09 22:09:12);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (13, 1809092210, EVALINE NYARUFUNJO, M, IC-000013, 255766928850, CA-000001, OPEN, 2018-09-09 22:10:22, 2018-09-09 22:10:22);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (14, 1809092211, NOEL NDYASI, M, IC-000014, 255767272012, CA-000001, OPEN, 2018-09-09 22:11:08, 2018-09-09 22:11:08);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (15, 1809092211, DAMAS CHARLES , M, IC-000015, 255759643495, CA-000001, OPEN, 2018-09-09 22:11:42, 2018-09-09 22:11:42);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (16, 1809092212, DAMAS MAIKO, M, IC-000016, 255784228209, CA-000001, OPEN, 2018-09-09 22:12:29, 2018-09-09 22:12:29);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (17, 1809092213, AGNES ALBERTO, F, IC-000017, 255766145599, CA-000001, OPEN, 2018-09-09 22:13:04, 2018-09-09 22:13:04);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (18, 1809092213, GODEFRIDA FREDERICK, M, IC-000019, 255757593683, CA-000001, OPEN, 2018-09-09 22:13:58, 2018-09-09 22:13:58);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (19, 1809092214, SABINA PASCHALE, F, IC-000020, 255765754430, CA-000001, OPEN, 2018-09-09 22:14:35, 2018-09-09 22:14:35);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (20, 1809092215, SR. DEMETRIA MKULU, M, IC-000021, 255742067560, CA-000001, OPEN, 2018-09-09 22:15:37, 2018-09-09 22:15:37);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (21, 1809100900, SHABANI SHAIBU, M, IC-000025, 255765610550, CA-000001, OPEN, 2018-09-10 09:00:28, 2018-09-10 09:00:28);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (22, 1809100902, MEDARD WILFRED, M, IC-000026, 255766105689, CA-000001, OPEN, 2018-09-10 09:02:59, 2018-09-10 09:02:59);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (23, 1809100904, ANNA GAUNDENSI, F, IC-000027, 255752082106, CA-000001, OPEN, 2018-09-10 09:04:45, 2018-09-10 09:04:45);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (24, 1809100906, HALIMA KUHENGA, F, IC-000028, 255757633511, CA-000001, OPEN, 2018-09-10 09:06:26, 2018-09-10 09:06:26);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (25, 1809100918, CATHERINE PAUL, M, IC-000030,  255653311018, CA-000001, OPEN, 2018-09-10 09:18:54, 2018-09-10 09:18:54);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (26, 1809100920, ISSA ADIEMA, M, IC-000031, 255758060163, CA-000001, OPEN, 2018-09-10 09:20:32, 2018-09-10 09:20:32);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (27, 1809100921, THOMAS THOMAS HARIFA, M, IC-000032, 255674564178, CA-000001, OPEN, 2018-09-10 09:21:48, 2018-09-10 09:21:48);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (28, 1809100923, IDDY MSAFIRI, M, IC-000033, 255755729526, CA-000001, OPEN, 2018-09-10 09:23:25, 2018-09-10 09:23:25);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (29, 1809100924, FRANK KATABI, M, IC-000035, 255762968869, CA-000001, OPEN, 2018-09-10 09:24:51, 2018-09-10 09:24:51);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (30, 1809100926, BASIL MBUNA, M, IC-000036, 255769759622, CA-000001, OPEN, 2018-09-10 09:26:27, 2018-09-10 09:26:27);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (31, 1809100928, FR. TITUS KAHWILI, M, IC-000037, 255768828377, CA-000001, OPEN, 2018-09-10 09:28:10, 2018-09-10 09:28:10);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (32, 1809100929, ROSALIA BITABONA, F, IC-000038, 255754895048, CA-000001, OPEN, 2018-09-10 09:29:26, 2018-09-10 09:29:26);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (33, 1809100930, AGNES REMMY, F, IC-000039, 255786128120, CA-000001, OPEN, 2018-09-10 09:30:45, 2018-09-10 09:30:45);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (34, 1809110836, Jesca Aloyce, F, IC-000008, 0753941583, CA-000001, OPEN, 2018-09-11 08:36:58, 2018-09-11 08:36:58);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (35, 1809110848, MAJALIWA BICHULILIZI, M, IC-000040, 255765345955, CA-000001, OPEN, 2018-09-11 08:48:51, 2018-09-11 08:48:51);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (36, 1809110850, MAUREEN DAVID, F, IC-000041, 255746134003, CA-000001, OPEN, 2018-09-11 08:50:10, 2018-09-11 08:50:10);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (37, 1809110851, LUCAS MAGAMBO, M, IC-000042, 255673598803, CA-000001, OPEN, 2018-09-11 08:51:31, 2018-09-11 08:51:31);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (38, 1809110853, SR. MAMBA CHARLOTTE, F, IC-000043, 255759530554, CA-000001, OPEN, 2018-09-11 08:53:06, 2018-09-11 08:53:06);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (39, 1809110854, JULIANA MAYEJI, F, IC-000044, 255758041923, CA-000001, OPEN, 2018-09-11 08:54:09, 2018-09-11 08:54:09);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (40, 1809110855, NAOMI BARAKA NAFARI, F, IC-000045, 255765058703, CA-000001, OPEN, 2018-09-11 08:55:51, 2018-09-11 08:55:51);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (41, 1809110857, HAMIS JUMA, M, IC-000046, 255762014540, CA-000001, OPEN, 2018-09-11 08:57:33, 2018-09-11 08:57:33);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (42, 1809110903, WINFRIED KABADI, F, IC-000047, 255753152632, CA-000001, OPEN, 2018-09-11 09:03:04, 2018-09-11 09:03:04);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (43, 1809110904, REINFRIDA KABADI, F, IC-000048, 255746181860, CA-000001, OPEN, 2018-09-11 09:04:54, 2018-09-11 09:04:54);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (44, 1809110907, BORNAMATHEW NURU, M, IC-000049, 255717254926, CA-000001, OPEN, 2018-09-11 09:07:37, 2018-09-11 09:07:37);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (45, 1809110909, MAMBA, M, IC-000050, 255765770071, CA-000001, OPEN, 2018-09-11 09:09:31, 2018-09-11 09:09:31);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (46, 1809110910, HILARY LUCIANO, M, IC-000051, 2550758370214, CA-000001, OPEN, 2018-09-11 09:10:59, 2018-09-11 09:10:59);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (47, 1809110912, FELICIANA RWEIKIZA, F, IC-000052, 255754043887, CA-000001, OPEN, 2018-09-11 09:12:17, 2018-09-11 09:12:17);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (48, 1809110915, ANTUSA MLEMA, F, IC-000053, 255654235557, CA-000001, OPEN, 2018-09-11 09:15:50, 2018-09-11 09:15:50);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (49, 1809110916, JULIANA NGELEJA, F, IC-000061, 255758007979, CA-000001, OPEN, 2018-09-11 09:16:58, 2018-09-11 09:16:58);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (50, 1809110918, RICHARD MISSIWA, M, IC-000066, 255756078779, CA-000001, OPEN, 2018-09-11 09:18:11, 2018-09-11 09:18:11);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (51, 1809110919, ELIMBINGI MASSAWE, M, IC-000070, 255754448727, CA-000001, OPEN, 2018-09-11 09:19:49, 2018-09-11 09:19:49);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (52, 1809110920, DANIEL NAILA, M, IC-000071, 255745531590, CA-000001, OPEN, 2018-09-11 09:20:55, 2018-09-11 09:20:55);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (53, 1809110922, IRENE SANAGAWE, F, IC-000098, 255766327423, CA-000001, OPEN, 2018-09-11 09:22:03, 2018-09-11 09:22:03);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (54, 1809110923, MWANAIDI MATUNDA, F, IC-000099, 255745559150, CA-000001, OPEN, 2018-09-11 09:23:00, 2018-09-11 09:23:00);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (55, 1809110937, BEDA MSONDA, M, IC-000107, 255659344551, CA-000001, OPEN, 2018-09-11 09:37:15, 2018-09-16 01:30:18);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (56, 1809120904, HEMED MOHAMED, M, IC-000022, 2555716867015, CA-000001, OPEN, 2018-09-12 09:04:58, 2018-09-12 09:04:58);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (57, 1809120911, HUSNA ANTHONY, F, IC-000023, 255754866599, CA-000001, OPEN, 2018-09-12 09:11:50, 2018-09-12 09:11:50);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (58, 1809120916, EDITH GAUDINE, F, IC-000024, 255786337705, CA-000001, OPEN, 2018-09-12 09:16:51, 2018-09-12 09:16:51);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (59, 1809122236, BENARD PENDO, M, IC-000156, 255783137059, CA-000001, OPEN, 2018-09-12 22:36:08, 2018-09-12 22:36:08);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (60, 1809132240, VICENT FARES, M, IC-000143, 255754525953, CA-000001, OPEN, 2018-09-13 22:40:46, 2018-09-13 22:40:46);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (61, 1809132300, VALENTINE BRUNO, M, IC-000093, 255759929293, CA-000001, OPEN, 2018-09-13 23:00:33, 2018-09-13 23:00:33);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (62, 1809132302, LIVING KOMU, M, IC-000145, 255715915005, CA-000001, OPEN, 2018-09-13 23:02:47, 2018-09-13 23:02:47);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (63, 1809132307,  GODFREY KIFFUMU, M, IC-000097, 255767457061, CA-000001, OPEN, 2018-09-13 23:07:35, 2018-09-13 23:07:35);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (64, 1809132310, GODFREY ANTHONY, M, IC-000100, 255767457061, CA-000001, OPEN, 2018-09-13 23:10:50, 2018-09-13 23:10:50);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (65, 1809132311, SR. AKOTH FRANCISCA, F, IC-000154, 255754510366, CA-000001, OPEN, 2018-09-13 23:11:39, 2018-09-13 23:11:39);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (66, 1809140043, SISCO SINGU, M, IC-000147, 255769570803, CA-000001, OPEN, 2018-09-14 00:43:22, 2018-09-14 00:43:22);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (67, 1809161039, IVAN KIVINGE, M, IC-000113, 255753818504, CA-000001, OPEN, 2018-09-16 10:39:47, 2018-09-16 10:39:47);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (68, 1809171802, WILLIAM  MOLERI, M, IC-000109, 255762338827, CA-000001, OPEN, 2018-09-17 18:02:06, 2018-09-17 18:02:06);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (69, 1809171808, RISE JOHN, M, IC-000150, 255762708271, CA-000001, OPEN, 2018-09-17 18:08:06, 2018-09-17 18:08:06);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (70, 1809171809, YOHANA CONSTANTINE, M, IC-000101, 255744797618, CA-000001, OPEN, 2018-09-17 18:09:55, 2018-09-17 18:09:55);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (71, 1809171813, SIMON EMMANUEL, M, IC-000105, 255754896006, CA-000001, OPEN, 2018-09-17 18:13:24, 2018-09-17 18:13:24);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (72, 1809171816, JONAS DANIEL , M, IC-000162, 255756302544, CA-000001, OPEN, 2018-09-17 18:16:08, 2018-09-17 18:16:08);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (73, 1809191024, EMMANUEL M PASCAL, M, IC-000114, 255758513487, CA-000001, OPEN, 2018-09-19 10:24:57, 2018-09-19 20:46:03);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (74, 1809191027, ENOCK WHOZA, M, IC-000094, 255742044290, CA-000001, OPEN, 2018-09-19 10:27:00, 2018-09-19 10:47:46);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (75, 1809191029, BARINABAS KATIGULA, M, IC-000095, 255754830597, CA-000001, OPEN, 2018-09-19 10:29:42, 2018-09-19 10:29:42);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (76, 1809191034, CLARENCE MALASA, M, IC-000111, 255754806081, CA-000001, OPEN, 2018-09-19 10:34:51, 2018-09-19 10:34:51);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (77, 1809191048, HAGAI ANANIA, M, IC-000112, 255759795420, CA-000001, OPEN, 2018-09-19 10:48:34, 2018-09-19 10:48:34);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (78, 1809200915, JOSHUA MAINA, M, IC-000083, 255753013212, CA-000001, OPEN, 2018-09-20 09:15:35, 2018-09-20 09:15:35);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (79, 1809200916, MUSSA MAJARIWA, M, IC-000082, 255743878613, CA-000001, OPEN, 2018-09-20 09:16:29, 2018-09-20 09:16:29);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (80, 1809200923, PENNUELY EZEKIEL, F, IC-000085, 255716271485, CA-000001, OPEN, 2018-09-20 09:23:40, 2018-09-20 09:23:40);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (81, 1809200926, SUZAN SADICK, F, IC-000180, 255769575521, CA-000001, OPEN, 2018-09-20 09:26:02, 2018-09-20 09:26:02);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (82, 1809211356, INNOCENT ANDASON, M, IC-000034, 255765336044, CA-000001, OPEN, 2018-09-21 13:56:03, 2018-09-21 13:56:03);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (83, 1809221206, ALICIA DEUS, F, IC-000054, 255743074281, CA-000001, OPEN, 2018-09-22 12:06:29, 2018-09-22 12:06:29);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (84, 1809221208, BARAKA KASINGE, M, IC-000055, 255756929320, CA-000001, OPEN, 2018-09-22 12:08:56, 2018-09-22 12:08:56);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (85, 1809221210, ZAMUHALTHA SALUM, F, IC-000056, 255753812873, CA-000001, OPEN, 2018-09-22 12:10:26, 2018-09-22 12:10:26);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (86, 1809221648, ANNA MSACK, F, IC-000059, 255768533831, CA-000001, OPEN, 2018-09-22 16:48:53, 2018-09-22 16:48:53);
INSERT INTO `eco_subscribers` (`id`, `sub_account`, `sub_name`, `gender`, `card_no`, `mobile`, `campus_code`, `record_stat`, `date_registered`, `date_updated`) VALUES (87, 1809221650, ANNA MSACK, F, IC-000059, 255768533831, CA-000001, OPEN, 2018-09-22 16:50:37, 2018-09-22 16:56:38);


#
# TABLE STRUCTURE FOR: eco_usergroups
#

DROP TABLE IF EXISTS `eco_usergroups`;

CREATE TABLE `eco_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `group_description` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (1, Admin, System Administrator);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (3, Branch Manager, Leads all branch related activities);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (4, Campus Manager, A Representative of the hosting organization);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (5, Cashier, NULL);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (6, Instrumentation Officer, Attends all technical issues of the Branch);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (7, Cashier, Responsible for data entry and transactions within the campus);
INSERT INTO `eco_usergroups` (`id`, `group_name`, `group_description`) VALUES (8, Managing Partner, Entitled to view everything);


#
# TABLE STRUCTURE FOR: eco_usergroupsaccess
#

DROP TABLE IF EXISTS `eco_usergroupsaccess`;

CREATE TABLE `eco_usergroupsaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` int(11) NOT NULL,
  `menu_name` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (95, 7, 29);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (96, 7, 30);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (97, 7, 28);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (98, 7, 26);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (99, 7, 24);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (100, 7, 25);
INSERT INTO `eco_usergroupsaccess` (`id`, `group_name`, `menu_name`) VALUES (101, 7, 31);


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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `branch`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`) VALUES (1, Innocent Ruseke, admin, $2y$08$XaR1/uNt2a8h/Zf9UUH5f.hp9V59PZniIj1U12OeEGja8OCOp3EPO, 0, TZ1, 1, 255712821881, rusekeinno@gmail.com, 43s5ekzy8tusggg.jpg, Active, 2016-04-25 00:00:00, 2018-09-23 21:19:41, , NULL, NULL, NULL, 0, NULL, 0, 1537726781, 1, NULL);
INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `branch`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`) VALUES (5, Steve Matiku, smatiku, $2y$08$XaR1/uNt2a8h/Zf9UUH5f.hp9V59PZniIj1U12OeEGja8OCOp3EPO, 1, TZ1, 3, 07111111111, steven@smartfittanzania.co.tz, NULL, Active, 2018-02-07 00:00:00, 2018-08-24 19:03:55, , NULL, NULL, NULL, 0, NULL, 0, NULL, 1, NULL);
INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `branch`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`) VALUES (6, Hellen Mamkwe, instrument, $2y$08$g1yiJUx.PH4YZQWTcEcnmO9W64abL65r3EADzlLdmuyLZ1Utx5UHu, 0, NULL, 6, NULL, maganga@smartfittanzania.co.tz, NULL, Active, 2018-08-24 19:08:07, 2018-08-24 19:08:37, 196.249.102.252, NULL, NULL, NULL, 0, NULL, 1535126887, 1535126917, 1, NULL);
INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `branch`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`) VALUES (7, Nasra Nassor, nanah, $2y$08$RrhQtqVoXWcXC3gYnqUE0OVggrp7uNrkdxCaL/UyW4AOtU3Bta0li, 0, NULL, 7, NULL, nasra@smartfittanzania.co.tz, NULL, Active, 2018-09-10 19:18:33, 2018-09-23 20:49:49, 196.249.100.64, NULL, NULL, NULL, 0, NULL, 1536596313, 1537724989, 1, NULL);
INSERT INTO `eco_users` (`id`, `name`, `username`, `password`, `department`, `branch`, `user_group`, `mobile_no`, `email`, `photo`, `status`, `created`, `updated`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `company`) VALUES (8, Faustine Matiku, fmatiku, $2y$08$c3gQ1fHMER6yyq72N5WUq.SD6i.N5VL5HrHuW7R5nFTkjSMKejshu, 0, NULL, 8, NULL, fmatiku@smartfittanzania.co.tz, NULL, Active, 2018-09-23 08:29:33, 2018-09-23 08:29:33, 169.255.184.84, NULL, NULL, NULL, 0, NULL, 1537680573, NULL, 1, NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (1, 1, 1);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (2, 1, 2);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (6, 6, 2);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (7, 7, 2);
INSERT INTO `eco_users_groups` (`id`, `user_id`, `group_id`) VALUES (8, 8, 2);
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

