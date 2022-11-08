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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (2, 3, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (12, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (13, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (14, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (15, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (16, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (17, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (18, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `eco_access_rights` (`id`, `group_id`, `banceasy_view`, `banceasy_add`, `banceasy_edit`, `banceasy_delete`, `banceasy_customer_view`, `banceasy_customer_add`, `banceasy_customer_edit`, `banceasy_customer_delete`, `banceasy_loan_view`, `banceasy_loan_add`, `banceasy_loan_edit`, `banceasy_loan_delete`, `banceasy_zone`, `banceasy_mandateshelf`, `banceasy_recon`, `creditadmin_view`, `creditadmin_add`, `creditadmin_edit`, `creditadmin_delete`, `opsdocs_admin`, `opsdocs_view`, `opsdocs_add`, `opsdocs_edit`, `opsdocs_delete`, `opsdocscategory_all`, `opsdocssubcategory_all`, `referencenumber_view`, `referencenumber_add`, `referencenumber_edit`, `referencenumber_delete`, `cib_client_view`, `cib_client_add`, `cib_client_edit`, `cib_client_delete`, `cib_ticket_view`, `cib_ticket_add`, `cib_ticket_edit`, `cib_ticket_delete`, `cib_ticket_comment`, `cib_ticket_close`, `cib_staff`, `cib_product`) VALUES (19, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, BR-001, Mwanza, Plot No. 52, Block M, Rufiji Street, P.O. Box 10435, Mwanza, O, 2018-08-19 12:59:07, 2018-08-20 09:54:34);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, BR-002, Dodoma, Dodoma, Tanzania, C, 2018-10-20 13:43:09, 2018-10-20 13:43:09);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (3, BR-003, Morogoro, Morogoro, Tanzania, C, 2018-10-20 13:43:30, 2018-10-20 13:44:42);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, BR-004, Dare es salaam, Dar es salaam, Tanzania, C, 2018-10-20 13:43:49, 2018-10-20 13:44:27);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, BR-005, Mbeya, Mbeya, Tanzania, C, 2018-10-20 13:44:15, 2018-10-20 13:44:16);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (6, BR-006, Arusha, Arusha, Tanzania, C, 2018-10-20 16:59:56, 2018-10-20 16:59:56);
INSERT INTO `eco_branch` (`id`, `branch_code`, `branch_name`, `physical_addr`, `record_stat`, `date_registered`, `date_updated`) VALUES (7, BR-007, Moshi, Kilimanjaro, C, 2018-10-20 17:00:40, 2018-10-20 17:00:40);


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
  `inc_num` int(5) NOT NULL,
  `record_stat` enum('O','C','D') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_campus_code` (`campus_code`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, CA-000001, SAUT MAIN CAMPUS, BR-001, P.O. Box 307, Malimbe, Mwanza, 1, O, 2018-08-19 14:17:38, 2018-10-21 16:09:55);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, CA-000002, UDSM MLIMANI CAMPUS, BR-004, Mlimani, Dar es salaam, 2, O, 2018-10-20 13:45:27, 2018-10-21 16:10:04);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (3, CA-000003, UDOM MAIN CAMPUS, BR-002, Dodoma, Tanzania, 3, O, 2018-10-20 13:46:10, 2018-10-21 16:10:07);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, CA-000004, SUA MAIN CAMPUS, BR-003, Morogoro, 4, O, 2018-10-20 13:47:45, 2018-10-21 16:10:11);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, CA-000005, SUA MAZIMBU CAMPUS, BR-003, Morogoro, Tanzania, 5, O, 2018-10-20 13:48:34, 2018-10-21 16:10:15);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (6, CA-000006, MZUMBE MAIN CAPUS, BR-003, Morogoro, Tanzania, 6, O, 2018-10-20 13:49:36, 2018-10-21 16:10:19);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (7, CA-000007, MUST MAIN CAMPUS, BR-005, Mbeya, Tanzania, 7, O, 2018-10-20 13:51:19, 2018-10-21 16:10:23);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (8, CA-000008, ARU MAIN CAMPUS, BR-004, Ardhi, Dar es salaam, 8, O, 2018-10-20 13:53:11, 2018-10-21 16:10:26);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (9, CA-000009, CBE DAR CAMPUS, BR-004, Posta, Dar es salaam, 9, O, 2018-10-20 13:59:44, 2018-10-21 16:10:31);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (20, CA-000010, IFM DAR CAMPUS, BR-004, Posta, Dar es salaam, 10, O, 2018-10-21 18:03:13, 2018-10-21 18:03:13);
INSERT INTO `eco_campus` (`id`, `campus_code`, `campus_name`, `branch_code`, `physical_addr`, `inc_num`, `record_stat`, `date_registered`, `date_updated`) VALUES (21, CA-000011, CUHAS, BR-001, Bugando, Mwanza, 11, O, 2018-10-21 21:40:48, 2018-10-21 21:40:48);


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
  `trn_ref_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double(20,2) NOT NULL,
  `trn_status` enum('SUCCESS','FAIL','','') COLLATE utf8_unicode_ci NOT NULL,
  `trn_date` date NOT NULL,
  `pos` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SYSTEM',
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_trn_ref_no` (`trn_ref_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1134 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1, IC-000098, , POS06021729092018, 1000.00, SUCCESS, 2018-08-15, POS-1, RECHARGE, admin, 2018-09-29 17:06:02, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (2, IC-000099, , POS06481729092018, 1000.00, SUCCESS, 2018-08-15, POS-1, RECHARGE, admin, 2018-09-29 17:06:48, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (3, IC-000145, , POS07511729092018, 2000.00, SUCCESS, 2018-08-20, POS-1, RECHARGE, admin, 2018-09-29 17:07:51, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (4, IC-000053, , POS09591729092018, 1000.00, SUCCESS, 2018-08-28, POS-1, RECHARGE, admin, 2018-09-29 17:09:59, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (5, IC-000107, , POS12281729092018, 1000.00, SUCCESS, 2018-08-31, POS-1, RECHARGE, admin, 2018-09-29 17:12:28, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (6, IC-000071, , POS14191729092018, 5000.00, SUCCESS, 2018-09-03, POS-1, RECHARGE, admin, 2018-09-29 17:14:19, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (7, IC-000007, , POS14491729092018, 5000.00, SUCCESS, 2018-09-03, POS-1, RECHARGE, admin, 2018-09-29 17:14:49, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (8, IC-000201, , POS15131729092018, 1500.00, SUCCESS, 2018-09-03, POS-1, RECHARGE, admin, 2018-09-29 17:15:13, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (9, IC-000066, , POS15421729092018, 1000.00, SUCCESS, 2018-09-03, POS-1, RECHARGE, admin, 2018-09-29 17:15:42, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (10, IC-000026, , POS16311729092018, 2000.00, SUCCESS, 2018-09-04, POS-1, RECHARGE, admin, 2018-09-29 17:16:31, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (11, IC-000061, , POS17121729092018, 1500.00, SUCCESS, 2018-09-04, POS-1, RECHARGE, admin, 2018-09-29 17:17:12, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (12, IC-000070, , POS17571729092018, 5000.00, SUCCESS, 2018-09-04, POS-1, RECHARGE, admin, 2018-09-29 17:17:57, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (13, IC-000053, , POS20151729092018, 1000.00, SUCCESS, 2018-09-06, POS-1, RECHARGE, admin, 2018-09-29 17:20:15, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (14, IC-000011, , POS21031729092018, 1000.00, SUCCESS, 2018-09-07, POS-1, RECHARGE, admin, 2018-09-29 17:21:03, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (15, IC-000028, , POS21411729092018, 1000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, admin, 2018-09-29 17:21:41, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (16, IC-000020, , POS23261729092018, 1000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, admin, 2018-09-29 17:23:26, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (17, IC-000103, , POS23491729092018, 500.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, admin, 2018-09-29 17:23:49, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (18, IC-000011, , POS24251729092018, 1000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, admin, 2018-09-29 17:24:25, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (19, IC-000025, , POS25341729092018, 1000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, admin, 2018-09-29 17:25:34, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (20, IC-000025, , POS25571729092018, 5000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, admin, 2018-09-29 17:25:57, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (21, IC-000201, , POS27241729092018, 10000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, admin, 2018-09-29 17:27:24, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (22, IC-000011, , POS28121729092018, 1000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, admin, 2018-09-29 17:28:12, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (23, IC-000008, , POS28431729092018, 1000.00, SUCCESS, 2018-09-11, POS-1, RECHARGE, admin, 2018-09-29 17:28:43, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (24, IC-000011, , POS29131729092018, 1000.00, SUCCESS, 2018-09-11, POS-1, RECHARGE, admin, 2018-09-29 17:29:13, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (25, IC-000022, , POS30121729092018, 1000.00, SUCCESS, 2018-09-11, POS-1, RECHARGE, admin, 2018-09-29 17:30:12, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (26, IC-000023, , POS31231729092018, 2000.00, SUCCESS, 2018-09-11, POS-1, RECHARGE, admin, 2018-09-29 17:31:23, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (27, IC-000011, , POS31461729092018, 1500.00, SUCCESS, 2018-09-11, POS-1, RECHARGE, admin, 2018-09-29 17:31:46, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (28, IC-000145, , POS32421729092018, 5000.00, SUCCESS, 2018-09-12, POS-1, RECHARGE, admin, 2018-09-29 17:32:42, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (29, IC-000143, , POS33421729092018, 1000.00, SUCCESS, 2018-09-12, POS-1, RECHARGE, admin, 2018-09-29 17:33:42, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (30, IC-000093, , POS34111729092018, 1000.00, SUCCESS, 2018-09-13, POS-1, RECHARGE, admin, 2018-09-29 17:34:11, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (31, IC-000147, , POS34341729092018, 2000.00, SUCCESS, 2018-09-13, POS-1, RECHARGE, admin, 2018-09-29 17:34:34, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (32, IC-000011, , POS35541729092018, 2000.00, SUCCESS, 2018-09-13, POS-1, RECHARGE, admin, 2018-09-29 17:35:54, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (33, IC-000093, , POS38101729092018, 2000.00, SUCCESS, 2018-09-13, POS-1, RECHARGE, admin, 2018-09-29 17:38:10, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (34, IC-000100, , POS38481729092018, 1000.00, SUCCESS, 2018-09-13, POS-1, RECHARGE, admin, 2018-09-29 17:38:48, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (35, IC-000097, , POS40191729092018, 1000.00, SUCCESS, 2018-09-14, POS-1, RECHARGE, admin, 2018-09-29 17:40:19, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (36, IC-000070, , POS41541729092018, 3000.00, SUCCESS, 2018-09-14, POS-1, RECHARGE, admin, 2018-09-29 17:41:54, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (37, IC-000011, , POS42511729092018, 1000.00, SUCCESS, 2018-09-14, POS-1, RECHARGE, admin, 2018-09-29 17:42:51, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (38, IC-000002, , POS43401729092018, 1000.00, SUCCESS, 2018-09-14, POS-1, RECHARGE, admin, 2018-09-29 17:43:40, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (39, IC-000102, , POS44471729092018, 1000.00, SUCCESS, 2018-09-15, POS-1, RECHARGE, admin, 2018-09-29 17:44:47, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (40, IC-000113, , POS45201729092018, 1000.00, SUCCESS, 2018-09-15, POS-1, RECHARGE, admin, 2018-09-29 17:45:20, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (41, IC-000109, , POS47371729092018, 1000.00, SUCCESS, 2018-09-17, POS-1, RECHARGE, admin, 2018-09-29 17:47:37, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (42, IC-000105, , POS47561729092018, 1000.00, SUCCESS, 2018-09-17, POS-1, RECHARGE, admin, 2018-09-29 17:47:56, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (43, IC-000162, , POS48291729092018, 1000.00, SUCCESS, 2018-09-17, POS-1, RECHARGE, admin, 2018-09-29 17:48:29, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (44, IC-000011, , POS49361729092018, 1000.00, SUCCESS, 2018-09-17, POS-1, RECHARGE, admin, 2018-09-29 17:49:36, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (45, IC-000093, , POS51051729092018, 1000.00, SUCCESS, 2018-09-17, POS-1, RECHARGE, admin, 2018-09-29 17:51:05, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (46, IC-000201, , POS51461729092018, 1000.00, SUCCESS, 2018-09-17, POS-1, RECHARGE, admin, 2018-09-29 17:51:46, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (47, IC-000114, , POS53221729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:53:22, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (48, IC-000114, , POS53231729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:53:23, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (49, IC-000094, , POS54431729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:54:43, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (50, IC-000112, , POS55331729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:55:33, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (51, IC-000095, , POS56031729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:56:03, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (52, IC-000111, , POS56461729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:56:46, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (53, IC-000025, , POS57101729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:57:10, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (54, IC-000083, , POS58011729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:58:01, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (55, IC-000082, , POS59041729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:59:04, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (56, IC-000105, , POS59281729092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:59:28, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (57, IC-000093, , POS59561729092018, 2000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 17:59:56, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (58, IC-000028, , POS00161829092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 18:00:16, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (59, IC-000039, , POS00401829092018, 1000.00, SUCCESS, 2018-09-19, POS-1, RECHARGE, admin, 2018-09-29 18:00:40, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (60, IC-000085, , POS01141829092018, 1000.00, SUCCESS, 2018-09-20, POS-1, RECHARGE, admin, 2018-09-29 18:01:14, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (61, IC-000180, , POS01431829092018, 1000.00, SUCCESS, 2018-09-20, POS-1, RECHARGE, admin, 2018-09-29 18:01:43, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (62, IC-000023, , POS02551829092018, 4000.00, SUCCESS, 2018-09-21, POS-1, RECHARGE, admin, 2018-09-29 18:02:55, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (63, IC-000162, , POS03191829092018, 1000.00, SUCCESS, 2018-09-21, POS-1, RECHARGE, admin, 2018-09-29 18:03:19, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (64, IC-000056, , POS05221829092018, 1000.00, SUCCESS, 2018-09-21, POS-1, RECHARGE, admin, 2018-09-29 18:05:22, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (65, IC-000055, , POS05411829092018, 1000.00, SUCCESS, 2018-09-21, POS-1, RECHARGE, admin, 2018-09-29 18:05:41, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (66, IC-000054, , POS06081829092018, 1000.00, SUCCESS, 2018-09-21, POS-1, RECHARGE, admin, 2018-09-29 18:06:08, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (67, IC-000059, , POS09161829092018, 1000.00, SUCCESS, 2018-09-22, POS-1, RECHARGE, admin, 2018-09-29 18:09:16, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (68, IC-000070, , POS10301829092018, 5000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:10:30, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (69, IC-000086, , POS10521829092018, 5000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:10:52, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (70, IC-000067, , POS11121829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:11:12, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (71, IC-000079, , POS12161829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:12:16, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (72, IC-000064, , POS12341829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:12:34, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (73, IC-000062, , POS12581829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:12:58, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (74, IC-000065, , POS13231829092018, 5000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:13:23, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (75, IC-000060, , POS13441829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:13:44, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (76, IC-000086, , POS14051829092018, 5000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:14:05, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (77, IC-000068, , POS14221829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:14:22, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (78, IC-000069, , POS14431829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:14:43, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (79, IC-000072, , POS15011829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:15:01, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (80, IC-000023, , POS15501829092018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:15:50, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (81, IC-000103, , POS16121829092018, 2000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:16:12, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (82, IC-000028, , POS16321829092018, 2000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, admin, 2018-09-29 18:16:32, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (83, IC-000060, , POS17291829092018, 1000.00, SUCCESS, 2018-09-27, POS-1, RECHARGE, admin, 2018-09-29 18:17:29, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (84, IC-000014, , POS18001829092018, 2000.00, SUCCESS, 2018-09-27, POS-1, RECHARGE, admin, 2018-09-29 18:18:00, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (85, IC-000180, , POS18171829092018, 2000.00, SUCCESS, 2018-09-27, POS-1, RECHARGE, admin, 2018-09-29 18:18:17, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (86, IC-000074, , POS18341829092018, 1000.00, SUCCESS, 2018-09-27, POS-1, RECHARGE, admin, 2018-09-29 18:18:34, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (87, IC-000075, , POS18481829092018, 1000.00, SUCCESS, 2018-09-27, POS-1, RECHARGE, admin, 2018-09-29 18:18:48, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (88, IC-000078, , POS19011829092018, 1000.00, SUCCESS, 2018-09-27, POS-1, RECHARGE, admin, 2018-09-29 18:19:01, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (89, IC-000051, , POS19181829092018, 1000.00, SUCCESS, 2018-09-28, POS-1, RECHARGE, admin, 2018-09-29 18:19:18, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (90, IC-000080, , POS19491829092018, 1000.00, SUCCESS, 2018-09-28, POS-1, RECHARGE, admin, 2018-09-29 18:19:49, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (91, IC-000077, , POS20511829092018, 1000.00, SUCCESS, 2018-09-28, POS-1, RECHARGE, admin, 2018-09-29 18:20:51, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (92, IC-000088, , POS21391829092018, 1000.00, SUCCESS, 2018-09-28, POS-1, RECHARGE, admin, 2018-09-29 18:21:39, 2018-09-30 10:25:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (93, IC-000150, , POS14451003102018, 1000.00, SUCCESS, 2018-10-02, POS-1, RECHARGE, admin, 2018-10-03 10:14:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (94, IC-000092, , POS15431003102018, 1000.00, SUCCESS, 2018-10-02, POS-1, RECHARGE, admin, 2018-10-03 10:15:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (95, IC-000090, , POS15591003102018, 1000.00, SUCCESS, 2018-10-02, POS-1, RECHARGE, admin, 2018-10-03 10:15:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (96, IC-000115, , POS16181003102018, 1000.00, SUCCESS, 2018-10-02, POS-1, RECHARGE, admin, 2018-10-03 10:16:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (97, IC-000120, , POS16511003102018, 1000.00, SUCCESS, 2018-10-02, POS-1, RECHARGE, admin, 2018-10-03 10:16:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (98, IC-000101, , POS13351803102018, 1000.00, SUCCESS, 2018-10-03, POS-1, RECHARGE, admin, 2018-10-03 18:13:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (99, IC-000127, , POS15461803102018, 1000.00, SUCCESS, 2018-10-03, POS-1, RECHARGE, admin, 2018-10-03 18:15:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (100, IC-000089, , POS19101803102018, 2000.00, SUCCESS, 2018-10-01, POS-1, RECHARGE, admin, 2018-10-03 18:19:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (101, IC-000084, , POS19541803102018, 1000.00, SUCCESS, 2018-10-01, POS-1, RECHARGE, admin, 2018-10-03 18:19:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (102, IC-000057, , POS23201803102018, 1000.00, SUCCESS, 2018-09-22, POS-1, RECHARGE, admin, 2018-10-03 18:23:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (103, IC-000101, , POS44032004102018, 1000.00, SUCCESS, 2018-10-03, POS-1, RECHARGE, nanah, 2018-10-04 20:44:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (104, IC-000025, , POS03232104102018, 4000.00, SUCCESS, 2018-10-04, POS-1, RECHARGE, nanah, 2018-10-04 21:03:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (105, IC-000109, , POS04432104102018, 1000.00, SUCCESS, 2018-10-04, POS-1, RECHARGE, nanah, 2018-10-04 21:04:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (106, IC-000120, , POS05182104102018, 1000.00, SUCCESS, 2018-10-04, POS-1, RECHARGE, nanah, 2018-10-04 21:05:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (107, IC-000004, , POS04021706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:04:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (108, IC-000005, , POS10281706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:10:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (109, IC-000006, , POS11151706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:11:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (110, IC-000002, , POS12151706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:12:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (111, IC-000021, , POS14401706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:14:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (112, IC-000022, , POS16441706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:16:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (113, IC-000023, , POS17471706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:17:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (114, IC-000007, , POS18461706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:18:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (115, IC-000008, , POS19421706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:19:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (116, IC-000009, , POS20131706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:20:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (117, IC-000010, , POS20341706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:20:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (118, IC-000011, , POS21111706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:21:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (119, IC-000012, , POS21321706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:21:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (120, IC-000013, , POS21541706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, RECHARGE, admin, 2018-10-06 17:21:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (121, IC-000063, , POS21581706102018, 1500.00, SUCCESS, 2018-09-04, POS-1, RECHARGE, dmaganga, 2018-10-06 17:21:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (122, IC-000014, , POS22171706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:22:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (123, IC-000015, , POS22441706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:22:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (124, IC-000016, , POS23591706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:23:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (125, IC-000058, , POS24171706102018, 1000.00, SUCCESS, 2018-09-04, POS-1, RECHARGE, dmaganga, 2018-10-06 17:24:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (126, IC-000058, , POS24591706102018, 2000.00, SUCCESS, 2018-09-06, POS-1, RECHARGE, dmaganga, 2018-10-06 17:24:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (127, IC-000017, , POS25181706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:25:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (128, IC-000018, , POS25401706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:25:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (129, IC-000019, , POS26271706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:26:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (130, IC-000173, , POS27001706102018, 1000.00, SUCCESS, 2018-09-04, POS-1, RECHARGE, dmaganga, 2018-10-06 17:27:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (131, IC-000020, , POS27051706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:27:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (132, IC-000103, , POS28001706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:28:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (133, IC-000003, , POS28381706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:28:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (134, IC-000024, , POS29131706102018, 999.98, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:29:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (135, IC-000053, , POS29391706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:29:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (136, IC-000052, , POS30201706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:30:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (137, IC-000011, , POS39331706102018, 2000.00, SUCCESS, 2018-09-13, POS-1, RECHARGE, dmaganga, 2018-10-06 17:39:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (138, IC-000028, , POS42541706102018, 1000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, dmaganga, 2018-10-06 17:42:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (139, IC-000050, , POS44201706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:44:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (140, IC-000049, , POS49581706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:49:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (141, IC-000029, , POS49591706102018, 1000.00, SUCCESS, 2018-09-08, POS-1, RECHARGE, dmaganga, 2018-10-06 17:49:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (142, IC-000048, , POS50181706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:50:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (143, IC-000047, , POS50401706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:50:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (144, IC-000046, , POS51091706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:51:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (145, IC-000045, , POS53321706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:53:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (146, IC-000044, , POS53551706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:53:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (147, IC-000043, , POS54191706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:54:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (148, IC-000042, , POS54471706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:54:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (149, IC-000041, , POS55041706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:55:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (150, IC-000040, , POS55331706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:55:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (151, IC-000039, , POS56071706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:56:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (152, IC-000038, , POS56281706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:56:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (153, IC-000037, , POS56461706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 17:56:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (154, IC-000036, , POS57241706102018, 1000.00, SUCCESS, 2018-08-15, POS-1, RECHARGE, admin, 2018-10-06 17:57:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (155, IC-000035, , POS00011806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:00:01, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (156, IC-000034, , POS00241806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:00:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (157, IC-000037, , POS00261806102018, 850.00, SUCCESS, 2018-09-11, POS-1, RECHARGE, dmaganga, 2018-10-06 18:00:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (158, IC-000033, , POS00491806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:00:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (159, IC-000032, , POS01211806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:01:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (160, IC-000031, , POS02001806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:02:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (161, IC-000030, , POS02481806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:02:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (162, IC-000029, , POS03051806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:03:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (163, IC-000028, , POS03471806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:03:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (164, IC-000018, , POS04231806102018, 5000.00, SUCCESS, 2018-09-11, POS-1, RECHARGE, dmaganga, 2018-10-06 18:04:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (165, IC-000027, , POS04441806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:04:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (166, IC-000026, , POS06021806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:06:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (167, IC-000025, , POS06441806102018, 1000.00, SUCCESS, 2018-08-15, POS-1, SPECIAL_OFFER, admin, 2018-10-06 18:06:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (169, IC-000097, , POS19301806102018, 1000.00, SUCCESS, 2018-09-13, POS-1, RECHARGE, dmaganga, 2018-10-06 18:19:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (170, IC-000156, , POS49211806102018, 1000.00, SUCCESS, 2018-08-31, POS-1, RECHARGE, dmaganga, 2018-10-06 18:49:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (171, IC-000156, , POS50121806102018, 1000.00, SUCCESS, 2018-09-07, POS-1, RECHARGE, dmaganga, 2018-10-06 18:50:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (172, IC-000018, , POS33332206102018, 5000.00, SUCCESS, 2018-09-21, POS-1, RECHARGE, nanah, 2018-10-06 22:33:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (173, IC-000156, , POS00212306102018, 1000.00, SUCCESS, 2018-09-27, POS-1, RECHARGE, nanah, 2018-10-06 23:00:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (174, IC-000081, , POS09572306102018, 1000.00, SUCCESS, 2018-09-28, POS-1, RECHARGE, nanah, 2018-10-06 23:09:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (175, IC-000087, , POS22332306102018, 1000.00, SUCCESS, 2018-09-28, POS-1, RECHARGE, nanah, 2018-10-06 23:22:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (176, IC-000067, , POS33312306102018, 1000.00, SUCCESS, 2018-09-25, POS-1, RECHARGE, nanah, 2018-10-06 23:33:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (177, IC-000053, , POS09111108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 11:09:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (178, IC-000107, , POS09441108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 11:09:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (179, IC-000135, , POS10121108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 11:10:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (180, IC-000198, , POS34391108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 11:34:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (181, IC-000192, , POS37241108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 11:37:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (182, IC-000190, , POS38471108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, admin, 2018-10-08 11:38:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (183, IC-000191, , POS39201108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 11:39:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (184, IC-000018, , POS43051108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, admin, 2018-10-08 11:43:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (185, IC-000193, , POS43071108102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 11:43:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (186, IC-000197, , POS33271308102018, 4000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 13:33:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (187, IC-000196, , POS36581308102018, 3000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 13:36:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (188, IC-000195, , POS29251408102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 14:29:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (189, IC-000106, , POS43371408102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 14:43:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (190, IC-000142, , POS08281508102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 15:08:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (191, IC-000104, , POS42361608102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 16:42:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (192, IC-000119, , POS07491808102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 18:07:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (193, IC-000118, , POS30151808102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 18:30:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (197, IC-000122, , POS40431808102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, nanah, 2018-10-08 18:40:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (198, IC-000103, , POS21482208102018, 1000.00, SUCCESS, 2018-10-08, POS-1, RECHARGE, admin, 2018-10-08 22:21:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (199, IC-000133, , POS36151109102018, 1500.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, nanah, 2018-10-09 11:36:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (200, IC-000180, , POS11331209102018, 1000.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, nanah, 2018-10-09 12:11:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (201, IC-000161, , POS28411509102018, 1000.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, nanah, 2018-10-09 15:28:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (202, IC-000186, , POS19541609102018, 1500.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, nanah, 2018-10-09 16:19:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (203, IC-000185, , POS03591709102018, 1000.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, nanah, 2018-10-09 17:03:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (204, IC-000158, , POS06271709102018, 1000.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, nanah, 2018-10-09 17:06:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (205, IC-000139, , POS09321709102018, 1000.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, admin, 2018-10-09 17:09:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (206, IC-000200, , POS11131709102018, 1000.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, nanah, 2018-10-09 17:11:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (207, IC-000174, , POS14271809102018, 1000.00, SUCCESS, 2018-10-09, POS-1, RECHARGE, nanah, 2018-10-09 18:14:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (208, IC-000207, , POS39070910102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, nanah, 2018-10-10 09:39:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (209, IC-000035, , POS39270910102018, 5000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, dmaganga, 2018-10-10 09:39:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (210, IC-000222, , POS41440910102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, nanah, 2018-10-10 09:41:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (211, IC-000203, , POS46020910102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, nanah, 2018-10-10 09:46:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (212, IC-000182, , POS09071310102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, dmaganga, 2018-10-10 13:09:07, 2018-10-12 10:15:17);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (213, IC-000240, , POS56261310102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, nanah, 2018-10-10 13:56:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (214, IC-000209, , POS58141310102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, nanah, 2018-10-10 13:58:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (215, IC-000208, , POS02241410102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, nanah, 2018-10-10 14:02:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (216, IC-000202, , POS09391410102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, nanah, 2018-10-10 14:09:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (217, IC-000189, , POS24501410102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, admin, 2018-10-10 14:24:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (218, IC-000140, , POS37471510102018, 3000.00, SUCCESS, 2018-10-10, POS-1, RECHARGE, admin, 2018-10-10 15:37:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (219, IC-000229, , POS43271011102018, 3000.00, SUCCESS, 2018-10-11, POS-1, RECHARGE, nanah, 2018-10-11 10:43:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (220, IC-000091, , POS17191111102018, 2000.00, SUCCESS, 2018-10-11, POS-1, RECHARGE, dmaganga, 2018-10-11 11:17:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (221, IC-000156, , POS21191111102018, 1000.00, SUCCESS, 2018-10-11, POS-1, RECHARGE, dmaganga, 2018-10-11 11:21:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (222, IC-000215, , POS20181211102018, 3000.00, SUCCESS, 2018-10-11, POS-1, RECHARGE, nanah, 2018-10-11 12:20:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (224, IC-000139, , POS45231411102018, 1000.00, SUCCESS, 2018-10-11, POS-1, RECHARGE, nanah, 2018-10-11 14:45:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (225, IC-000170, , POS28191511102018, 3000.00, SUCCESS, 2018-10-11, POS-1, RECHARGE, dmaganga, 2018-10-11 15:28:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (226, IC-000216, , POS07441012102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, nanah, 2018-10-12 10:07:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (227, IC-000103, , POS25261112102018, 8000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, bakari, 2018-10-12 11:25:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (229, IC-000249, , POS36041212102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, victor2018, 2018-10-12 12:36:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (230, IC-000135, , POS43381212102018, 1000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, bakari, 2018-10-12 12:43:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (231, IC-000241, , POS09241312102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, nanah, 2018-10-12 13:09:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (232, IC-000235, , POS14551312102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, nanah, 2018-10-12 13:14:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (233, IC-000153, , POS38101312102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, bakari, 2018-10-12 13:38:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (234, IC-000233, , POS38111312102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, nanah, 2018-10-12 13:38:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (235, IC-000237, , POS38311312102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, admin, 2018-10-12 13:38:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (236, IC-000221, , POS46021312102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, admin, 2018-10-12 13:46:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (237, IC-000230, , POS53401312102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, admin, 2018-10-12 13:53:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (238, IC-000212, , POS56581312102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, victor2018, 2018-10-12 13:56:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (239, IC-000011, , POS57561312102018, 1000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, bakari, 2018-10-12 13:57:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (240, IC-000003, , POS58361312102018, 1000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, bakari, 2018-10-12 13:58:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (241, IC-000234, , POS22091512102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, nanah, 2018-10-12 15:22:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (242, IC-000228, , POS44291512102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, nanah, 2018-10-12 15:44:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (243, IC-000247, , POS42191612102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, victor2018, 2018-10-12 16:42:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (244, IC-000124, , POS01201712102018, 3000.00, SUCCESS, 2018-10-12, POS-1, RECHARGE, victor2018, 2018-10-12 17:01:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (245, IC-000093, , POS18081113102018, 2000.00, SUCCESS, 2018-10-13, POS-1, RECHARGE, bakari, 2018-10-13 11:18:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (246, IC-000197, , POS19391113102018, 2000.00, SUCCESS, 2018-10-13, POS-1, RECHARGE, bakari, 2018-10-13 11:19:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (247, IC-000231, , POS37271113102018, 3000.00, SUCCESS, 2018-10-13, POS-1, RECHARGE, nanah, 2018-10-13 11:37:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (248, IC-000211, , POS51111113102018, 3000.00, SUCCESS, 2018-10-13, POS-1, RECHARGE, nanah, 2018-10-13 11:51:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (249, IC-000226, , POS09461213102018, 3000.00, SUCCESS, 2018-10-13, POS-1, RECHARGE, victor2018, 2018-10-13 12:09:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (250, IC-000236, , POS21481213102018, 3000.00, SUCCESS, 2018-10-13, POS-1, RECHARGE, victor2018, 2018-10-13 12:21:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (251, IC-000220, , POS31551213102018, 3000.00, SUCCESS, 2018-10-13, POS-1, RECHARGE, nanah, 2018-10-13 12:31:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (252, IC-000206, , POS03451313102018, 3000.00, SUCCESS, 2018-10-13, POS-1, RECHARGE, victor2018, 2018-10-13 13:03:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (253, IC-000184, , POS52530915102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 09:52:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (254, IC-000250, , POS54240915102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 09:54:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (255, IC-000169, , POS10351015102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 10:10:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (256, IC-000246, , POS47591015102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 10:47:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (257, IC-000204, , POS50071015102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 10:50:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (258, IC-000227, , POS53121015102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 10:53:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (259, IC-000245, , POS06311115102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 11:06:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (260, IC-000223, , POS07531115102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 11:07:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (261, IC-000239, , POS31421115102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 11:31:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (262, IC-000217, , POS55181115102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 11:55:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (263, IC-000201, , POS55561115102018, 1000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 11:55:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (264, IC-000178, , POS25091215102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 12:25:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (265, IC-000151, , POS44291215102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 12:44:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (266, IC-000205, , POS53281215102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, nanah, 2018-10-15 12:53:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (267, IC-000261, , POS34351315102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, victor2018, 2018-10-15 13:34:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (268, IC-000219, , POS01151415102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, nanah, 2018-10-15 14:01:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (269, IC-000213, , POS02201415102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 14:02:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (270, IC-000218, , POS08331415102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, nanah, 2018-10-15 14:08:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (271, IC-000214, , POS09391415102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 14:09:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (272, IC-000248, , POS37071415102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, nanah, 2018-10-15 14:37:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (273, IC-000141, , POS38221415102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 14:38:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (274, IC-000238, , POS51551415102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, nanah, 2018-10-15 14:51:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (275, IC-000210, , POS15071515102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 15:15:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (276, IC-000243, , POS31551515102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, admin, 2018-10-15 15:31:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (277, IC-000244, , POS32091515102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, nanah, 2018-10-15 15:32:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (278, IC-000122, , POS32431515102018, 1000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 15:32:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (279, IC-000137, , POS46231515102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 15:46:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (280, IC-000002, , POS48381515102018, 1000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 15:48:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (281, IC-000225, , POS03311615102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, victor2018, 2018-10-15 16:03:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (282, IC-000242, , POS38331615102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, victor2018, 2018-10-15 16:38:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (283, IC-000232, , POS03261715102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, victor2018, 2018-10-15 17:03:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (284, IC-000131, , POS09421715102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, victor2018, 2018-10-15 17:09:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (285, IC-000167, , POS42471715102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 17:42:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (286, IC-000138, , POS45561715102018, 3000.00, SUCCESS, 2018-10-15, POS-1, RECHARGE, bakari, 2018-10-15 17:45:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (287, IC-000370, , POS25151016102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 10:25:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (288, IC-000361, , POS39051016102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 10:39:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (289, IC-000368, , POS41471016102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 10:41:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (290, IC-000351, , POS44111016102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 10:44:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (291, IC-000197, , POS49041016102018, 5000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, dmaganga, 2018-10-16 10:49:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (292, IC-000360, , POS54401016102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 10:54:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (293, IC-000309, , POS32221116102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 11:32:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (294, IC-000290, , POS12551216102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 12:12:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (295, IC-000327, , POS58571216102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 12:58:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (296, IC-000333, , POS03581316102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 13:03:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (297, IC-000310, , POS42051316102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 13:42:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (298, IC-000344, , POS46121316102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 13:46:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (299, IC-000316, , POS53181316102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 13:53:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (300, IC-000362, , POS18121416102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 14:18:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (301, IC-000132, , POS28431416102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, bakari, 2018-10-16 14:28:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (302, IC-000323, , POS00171516102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 15:00:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (303, IC-000168, , POS07241516102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, bakari, 2018-10-16 15:07:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (304, IC-000289, , POS10451516102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 15:10:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (305, IC-000287, , POS15141516102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 15:15:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (306, IC-000364, , POS41371516102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 15:41:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (307, IC-000365, , POS58531516102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 15:58:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (308, IC-000300, , POS08591616102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 16:08:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (309, IC-000330, , POS49021616102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 16:49:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (310, IC-000181, , POS49551616102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, bakari, 2018-10-16 16:49:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (311, IC-000187, , POS58501616102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, bakari, 2018-10-16 16:58:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (312, IC-000278, , POS09421716102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 17:09:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (313, IC-000179, , POS26081716102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, bakari, 2018-10-16 17:26:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (314, IC-000188, , POS33361716102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, bakari, 2018-10-16 17:33:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (315, IC-000305, , POS37131716102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 17:37:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (316, IC-000322, , POS43211716102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 17:43:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (317, IC-000363, , POS45091716102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 17:45:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (318, IC-000093, , POS48181716102018, 1000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, nanah, 2018-10-16 17:48:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (319, IC-000125, , POS39061816102018, 3000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, dmaganga, 2018-10-16 18:39:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (320, IC-000108, , POS32242016102018, 1000.00, SUCCESS, 2018-10-16, POS-1, RECHARGE, bakari, 2018-10-16 20:32:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (321, IC-000262, , POS15551017102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, admin, 2018-10-17 10:15:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (322, IC-000388, , POS18291017102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, admin, 2018-10-17 10:18:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (323, IC-000308, , POS43211017102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, admin, 2018-10-17 10:43:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (324, IC-000356, , POS45521017102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, admin, 2018-10-17 10:45:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (325, IC-000299, , POS48231017102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, admin, 2018-10-17 10:48:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (326, IC-000355, , POS01041117102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 11:01:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (327, IC-000329, , POS36091217102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 12:36:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (328, IC-000135, , POS54421217102018, 1000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, dmaganga, 2018-10-17 12:54:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (329, IC-000358, , POS08101317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 13:08:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (330, IC-000367, , POS11021317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 13:11:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (331, IC-000283, , POS12461317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 13:12:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (332, IC-000267, , POS16011317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 13:16:01, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (333, IC-000264, , POS17391317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 13:17:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (334, IC-000357, , POS18391317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, admin, 2018-10-17 13:18:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (335, IC-000268, , POS19001317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, admin, 2018-10-17 13:19:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (336, IC-000315, , POS25341317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 13:25:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (337, IC-000281, , POS35271317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 13:35:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (338, IC-000340, , POS45371317102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, admin, 2018-10-17 13:45:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (339, IC-000296, , POS31581417102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 14:31:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (340, IC-000199, , POS31161517102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, bakari, 2018-10-17 15:31:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (341, IC-000321, , POS37111517102018, 3000.00, SUCCESS, 2018-10-17, POS-1, RECHARGE, nanah, 2018-10-17 15:37:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (342, IC-000103, , POS01421018102018, 1000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, bakari, 2018-10-18 10:01:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (343, IC-000159, , POS13361018102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, dmaganga, 2018-10-18 10:13:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (344, IC-000163, , POS16151018102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, dmaganga, 2018-10-18 10:16:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (345, IC-000288, , POS27591018102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, bakari, 2018-10-18 10:27:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (346, IC-000273, , POS46531118102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 11:46:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (347, IC-000286, , POS49111118102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 11:49:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (348, IC-000303, , POS39281218102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 12:39:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (349, IC-000320, , POS51511218102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 12:51:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (350, IC-000359, , POS13471318102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 13:13:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (351, IC-000282, , POS19451418102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 14:19:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (352, IC-000276, , POS21441418102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 14:21:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (353, IC-000343, , POS11421618102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 16:11:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (354, IC-000371, , POS13391618102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 16:13:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (355, IC-000337, , POS15331618102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 16:15:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (356, IC-000291, , POS18031618102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 16:18:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (357, IC-000274, , POS38021618102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 16:38:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (358, IC-000331, , POS44461618102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 16:44:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (359, IC-000002, , POS50341618102018, 2000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, bakari, 2018-10-18 16:50:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (360, IC-000285, , POS43221718102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 17:43:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (361, IC-000279, , POS10331818102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 18:10:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (362, IC-000328, , POS14191818102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 18:14:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (363, IC-000280, , POS25451818102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 18:25:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (364, IC-000342, , POS29401818102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 18:29:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (365, IC-000324, , POS42221818102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 18:42:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (366, IC-000373, , POS48521818102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, nanah, 2018-10-18 18:48:52, 2018-10-19 13:45:21);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (367, IC-000379, , POS34471119102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 11:34:47, 2018-10-19 12:27:15);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (368, IC-000292, , POS39441119102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, admin, 2018-10-19 11:39:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (369, IC-000372, , POS42251119102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, admin, 2018-10-19 11:42:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (370, IC-000265, , POS43381119102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 11:43:38, 2018-10-19 12:27:20);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (371, IC-000349, , POS53161119102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 11:53:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (372, IC-000258, , POS09571219102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 12:09:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (373, IC-000354, , POS10591219102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, victor2018, 2018-10-19 12:10:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (374, IC-000301, , POS30091219102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 12:30:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (375, IC-000380, , POS56401219102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 12:56:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (376, IC-000253, , POS01211419102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 14:01:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (377, IC-000257, , POS04221419102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 14:04:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (378, IC-000260, , POS15421419102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 14:15:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (379, IC-000252, , POS50171419102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, admin, 2018-10-19 14:50:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (380, IC-000319, , POS01031619102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 16:01:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (381, IC-000366, , POS07211619102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 16:07:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (382, IC-000263, , POS13301619102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, admin, 2018-10-19 16:13:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (383, IC-000128, , POS19531619102018, 1000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, bakari, 2018-10-19 16:19:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (384, IC-000254, , POS21591619102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, bakari, 2018-10-19 16:21:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (385, IC-000255, , POS27471619102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 16:27:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (386, IC-000256, , POS30131619102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 16:30:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (387, IC-000251, , POS32501619102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, admin, 2018-10-19 16:32:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (388, IC-000332, , POS33131619102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, nanah, 2018-10-19 16:33:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (389, IC-000298, , POS34481719102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, bakari, 2018-10-19 17:34:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (390, IC-000313, , POS41211719102018, 3000.00, SUCCESS, 2018-10-18, POS-1, RECHARGE, bakari, 2018-10-19 17:41:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (391, IC-000295, , POS00411819102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, bakari, 2018-10-19 18:00:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (392, IC-000297, , POS08481819102018, 3000.00, SUCCESS, 2018-10-19, POS-1, RECHARGE, bakari, 2018-10-19 18:08:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (393, IC-000002, , POS49220920102018, 2000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 09:49:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (394, IC-000306, , POS00421120102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 11:00:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (395, IC-000293, , POS11511220102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 12:11:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (396, IC-000284, , POS23331220102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, victor2018, 2018-10-20 12:23:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (397, IC-000194, , POS24241220102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, admin, 2018-10-20 12:24:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (398, IC-000318, , POS25471220102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 12:25:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (399, IC-000272, , POS26271220102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, victor2018, 2018-10-20 12:26:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (400, IC-000307, , POS51101320102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 13:51:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (401, IC-000123, , POS08031420102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, admin, 2018-10-20 14:08:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (402, IC-000259, , POS19321420102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 14:19:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (403, IC-000271, , POS22161420102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 14:22:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (404, IC-000103, , POS33031420102018, 1000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, dmaganga, 2018-10-20 14:33:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (405, IC-000369, , POS15231520102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 15:15:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (406, IC-000314, , POS18371520102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 15:18:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (407, IC-000277, , POS58301520102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 15:58:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (408, IC-000294, , POS49381620102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, victor2018, 2018-10-20 16:49:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (409, IC-000311, , POS55221620102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 16:55:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (410, IC-000387, , POS58071620102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, victor2018, 2018-10-20 16:58:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (411, IC-000378, , POS00311720102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, victor2018, 2018-10-20 17:00:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (412, IC-000325, , POS00411720102018, 3000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 17:00:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (413, IC-000093, , POS16441720102018, 1000.00, SUCCESS, 2018-10-20, POS-1, RECHARGE, bakari, 2018-10-20 17:16:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (414, IC-000269, , POS47190922102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, bakari, 2018-10-22 09:47:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (415, IC-000336, , POS07191022102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 10:07:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (416, IC-000347, , POS18521022102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 10:18:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (417, IC-000312, , POS21281022102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 10:21:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (418, IC-000353, , POS26331022102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 10:26:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (419, IC-000133, , POS09271122102018, 2000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, dmaganga, 2018-10-22 11:09:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (420, IC-000345, , POS49571122102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 11:49:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (421, IC-000326, , POS53161122102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 11:53:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (422, IC-000334, , POS53581122102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 11:53:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (423, IC-000341, , POS59311122102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 11:59:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (424, IC-000338, , POS09171222102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 12:09:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (425, IC-000023, , POS15341222102018, 4000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, dmaganga, 2018-10-22 12:15:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (426, IC-000275, , POS47181222102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 12:47:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (427, IC-000304, , POS50381222102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 12:50:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (428, IC-000108, , POS55361222102018, 1000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, dmaganga, 2018-10-22 12:55:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (429, IC-000317, , POS06201322102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 13:06:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (430, IC-000352, , POS06421322102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 13:06:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (431, IC-000039, , POS08061322102018, 2000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, dmaganga, 2018-10-22 13:08:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (432, IC-000348, , POS10061322102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 13:10:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (433, IC-000350, , POS23011322102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 13:23:01, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (434, IC-000346, , POS34511322102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 13:34:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (435, IC-000386, , POS45331322102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, bakari, 2018-10-22 13:45:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (436, IC-000177, , POS59321322102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, bakari, 2018-10-22 13:59:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (437, IC-000302, , POS00141422102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 14:00:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (438, IC-000382, , POS23411422102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 14:23:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (439, IC-000384, , POS27541422102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 14:27:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (440, IC-000381, , POS07541522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 15:07:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (441, IC-000377, , POS08331522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, bakari, 2018-10-22 15:08:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (442, IC-000266, , POS10001522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 15:10:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (443, IC-000385, , POS12261522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 15:12:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (444, IC-000100, , POS13341522102018, 2000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, bakari, 2018-10-22 15:13:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (445, IC-000278, , POS14301522102018, 1000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 15:14:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (446, IC-000376, , POS18451522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 15:18:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (447, IC-000374, , POS20081522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 15:20:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (448, IC-000390, , POS23371522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 15:23:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (449, IC-000270, , POS30101522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 15:30:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (450, IC-000389, , POS33151522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 15:33:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (451, IC-000375, , POS58131522102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 15:58:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (452, IC-000165, , POS36511622102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 16:36:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (453, IC-000183, , POS39111622102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 16:39:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (454, IC-000175, , POS44291622102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 16:44:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (455, IC-000201, , POS02231722102018, 1000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 17:02:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (456, IC-000152, , POS06021722102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 17:06:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (457, IC-000124, , POS08151722102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, victor2018, 2018-10-22 17:08:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (458, IC-000155, , POS09341722102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 17:09:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (459, IC-000134, , POS54151722102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 17:54:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (460, IC-000339, , POS56291722102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 17:56:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (461, IC-000161, , POS57511722102018, 1000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 17:57:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (462, IC-000119, , POS13341822102018, 1000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, admin, 2018-10-22 18:13:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (463, IC-000160, , POS53201822102018, 3000.00, SUCCESS, 2018-10-22, POS-1, RECHARGE, nanah, 2018-10-22 18:53:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (464, IC-000149, , POS17031123102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 11:17:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (465, IC-000410, , POS47111123102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, bakari, 2018-10-23 11:47:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (466, IC-000130, , POS48061123102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 11:48:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (467, IC-000450, , POS12031223102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 12:12:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (468, IC-000383, , POS17481223102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 12:17:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (469, IC-000171, , POS28341223102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 12:28:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (470, IC-000401, , POS43391223102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, bakari, 2018-10-23 12:43:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (471, IC-000449, , POS10241323102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 13:10:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (472, IC-000442, , POS15391323102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 13:15:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (473, IC-000157, , POS19481423102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 14:19:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (474, IC-000335, , POS23301423102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 14:23:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (475, IC-000113, , POS26201423102018, 2000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, dmaganga, 2018-10-23 14:26:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (476, IC-000176, , POS29501423102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 14:29:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (477, IC-000404, , POS31021423102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, admin, 2018-10-23 14:31:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (478, IC-000172, , POS44181423102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 14:44:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (479, IC-000443, , POS49171423102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 14:49:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (480, IC-000444, , POS57171423102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 14:57:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (481, IC-000448, , POS58591423102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 14:58:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (482, IC-000441, , POS00381523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:00:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (483, IC-000445, , POS03031523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:03:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (484, IC-000446, , POS05031523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:05:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (485, IC-000447, , POS08321523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:08:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (486, IC-000411, , POS13321523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:13:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (487, IC-000412, , POS15281523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:15:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (488, IC-000413, , POS17031523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:17:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (489, IC-000414, , POS19011523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:19:01, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (490, IC-000415, , POS21111523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:21:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (491, IC-000416, , POS23001523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:23:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (492, IC-000417, , POS24591523102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 15:24:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (493, IC-000418, , POS22231623102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, nanah, 2018-10-23 16:22:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (494, IC-000420, , POS05201723102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, bakari, 2018-10-23 17:05:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (495, IC-000419, , POS18061723102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, bakari, 2018-10-23 17:18:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (496, IC-000129, , POS27562123102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, bakari, 2018-10-23 21:27:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (497, IC-000431, , POS25502323102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, bakari, 2018-10-23 23:25:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (498, IC-000403, , POS39362323102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, bakari, 2018-10-23 23:39:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (499, IC-000405, , POS40162323102018, 3000.00, SUCCESS, 2018-10-23, POS-1, RECHARGE, bakari, 2018-10-23 23:40:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (500, IC-000434, , POS36050924102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 09:36:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (501, IC-000422, , POS37390924102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 09:37:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (502, IC-000429, , POS40520924102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 09:40:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (503, IC-000429, , POS52150924102018, 5000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 09:52:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (504, IC-000423, , POS26281024102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 10:26:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (505, IC-000430, , POS27571024102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 10:27:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (506, IC-000424, , POS31051024102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 10:31:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (507, IC-000426, , POS40411024102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 10:40:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (508, IC-000426, , POS41321024102018, 2000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 10:41:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (509, IC-000421, , POS13471124102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 11:13:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (510, IC-000023, , POS34131124102018, 1000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 11:34:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (511, IC-000427, , POS53231224102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 12:53:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (512, IC-000406, , POS55261224102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 12:55:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (513, IC-000433, , POS58451224102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 12:58:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (514, IC-000197, , POS11001324102018, 5000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 13:11:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (515, IC-000402, , POS17541324102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 13:17:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (516, IC-000437, , POS19391324102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 13:19:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (517, IC-000407, , POS26531324102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, nanah, 2018-10-24 13:26:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (518, IC-000070, , POS29091324102018, 2000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 13:29:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (519, IC-000425, , POS34041324102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 13:34:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (520, IC-000428, , POS41511324102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 13:41:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (521, IC-000436, , POS46241324102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 13:46:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (522, IC-000432, , POS24481424102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 14:24:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (523, IC-000063, , POS24531424102018, 1000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 14:24:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (524, IC-000409, , POS26311424102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 14:26:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (525, IC-000438, , POS39411424102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 14:39:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (526, IC-000408, , POS46221424102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 14:46:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (527, IC-000439, , POS52251424102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 14:52:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (528, IC-000497, , POS54221424102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 14:54:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (529, IC-000440, , POS06031524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 15:06:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (530, IC-000435, , POS09531524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 15:09:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (531, IC-000491, , POS18421524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:18:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (532, IC-000459, , POS20301524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:20:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (533, IC-000460, , POS22231524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:22:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (534, IC-000492, , POS24551524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:24:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (535, IC-000493, , POS26381524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:26:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (536, IC-000494, , POS28301524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:28:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (537, IC-000453, , POS44531524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:44:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (538, IC-000456, , POS47461524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:47:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (539, IC-000452, , POS50531524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:50:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (540, IC-000454, , POS54031524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:54:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (541, IC-000455, , POS55281524102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 15:55:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (542, IC-000103, , POS18331624102018, 1000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, dmaganga, 2018-10-24 16:18:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (543, IC-000457, , POS39051624102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 16:39:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (544, IC-000451, , POS09411724102018, 3000.00, SUCCESS, 2018-10-24, POS-1, RECHARGE, bakari, 2018-10-24 17:09:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (545, IC-000499, , POS28410925102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 09:28:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (546, IC-000495, , POS33431025102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 10:33:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (547, IC-000498, , POS10041125102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 11:10:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (548, IC-000471, , POS36171125102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 11:36:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (549, IC-000472, , POS39091125102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 11:39:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (550, IC-000496, , POS52251125102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 11:52:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (551, IC-000500, , POS56111125102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 11:56:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (552, IC-000474, , POS01251225102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 12:01:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (553, IC-000473, , POS38391225102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 12:38:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (554, IC-000458, , POS56551225102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 12:56:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (555, IC-000470, , POS00291325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 13:00:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (556, IC-000469, , POS04141325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 13:04:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (557, IC-000461, , POS14211325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 13:14:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (558, IC-000481, , POS29301325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 13:29:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (559, IC-000462, , POS30591325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 13:30:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (560, IC-000477, , POS33421325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, SPECIAL_OFFER, dmaganga, 2018-10-25 13:33:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (561, IC-000135, , POS34351325102018, 500.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 13:34:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (562, IC-000023, , POS37241325102018, 1000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 13:37:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (563, IC-000467, , POS38131325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 13:38:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (564, IC-000463, , POS43581325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 13:43:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (565, IC-000468, , POS47161325102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 13:47:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (566, IC-000466, , POS02331425102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 14:02:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (567, IC-000465, , POS26351525102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 15:26:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (568, IC-000464, , POS27051625102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, bakari, 2018-10-25 16:27:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (569, IC-000206, , POS01081725102018, 1000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 17:01:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (570, IC-000475, , POS07361725102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 17:07:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (571, IC-000145, , POS37101725102018, 5000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 17:37:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (572, IC-000023, , POS39031725102018, 3000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 17:39:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (573, IC-000330, , POS24301825102018, 1000.00, SUCCESS, 2018-10-25, POS-1, RECHARGE, dmaganga, 2018-10-25 18:24:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (574, IC-000002, , POS52590926102018, 2000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 09:52:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (575, IC-000488, , POS03241026102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, bakari, 2018-10-26 10:03:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (576, IC-000489, , POS15501126102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 11:15:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (577, IC-000180, , POS26321126102018, 2000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 11:26:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (578, IC-000490, , POS06541226102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, bakari, 2018-10-26 12:06:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (579, IC-000480, , POS23061226102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 12:23:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (580, IC-000479, , POS34201226102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 12:34:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (581, IC-000053, , POS49121226102018, 1000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 12:49:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (582, IC-000476, , POS52411326102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 13:52:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (583, IC-000517, , POS03331426102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, bakari, 2018-10-26 14:03:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (584, IC-000516, , POS18281426102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, bakari, 2018-10-26 14:18:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (585, IC-000487, , POS46591426102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 14:46:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (586, IC-000524, , POS50181426102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 14:50:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (587, IC-000525, , POS50511426102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 14:50:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (588, IC-000530, , POS23251526102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, bakari, 2018-10-26 15:23:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (589, IC-000570, , POS24041526102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 15:24:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (590, IC-000529, , POS26121526102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, bakari, 2018-10-26 15:26:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (591, IC-000514, , POS34241526102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, bakari, 2018-10-26 15:34:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (592, IC-000561, , POS25401626102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 16:25:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (593, IC-000569, , POS43161626102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 16:43:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (594, IC-000023, , POS50131626102018, 1000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 16:50:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (595, IC-000515, , POS51001726102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, bakari, 2018-10-26 17:51:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (596, IC-000484, , POS02551926102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 19:02:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (597, IC-000512, , POS03211926102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 19:03:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (598, IC-000513, , POS03521926102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 19:03:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (599, IC-000526, , POS04221926102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 19:04:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (600, IC-000522, , POS04511926102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 19:04:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (601, IC-000521, , POS05351926102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 19:05:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (602, IC-000482, , POS06281926102018, 3000.00, SUCCESS, 2018-10-26, POS-1, RECHARGE, dmaganga, 2018-10-26 19:06:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (603, IC-000478, , POS00411027102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, bakari, 2018-10-27 10:00:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (604, IC-000448, , POS22191027102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 10:22:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (605, IC-000156, , POS44521027102018, 5000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 10:44:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (606, IC-000511, , POS53541127102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, bakari, 2018-10-27 11:53:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (607, IC-000520, , POS00051227102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, bakari, 2018-10-27 12:00:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (608, IC-000483, , POS49531227102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, bakari, 2018-10-27 12:49:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (609, IC-000140, , POS57051227102018, 2000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 12:57:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (610, IC-000486, , POS21221327102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, bakari, 2018-10-27 13:21:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (611, IC-000562, , POS34591327102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 13:34:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (612, IC-000296, , POS23021527102018, 5000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 15:23:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (613, IC-000527, , POS43381527102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 15:43:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (614, IC-000523, , POS47221527102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 15:47:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (615, IC-000221, , POS57491527102018, 2000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 15:57:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (616, IC-000174, , POS05441627102018, 2000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 16:05:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (617, IC-000023, , POS45301727102018, 1000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, dmaganga, 2018-10-27 17:45:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (618, IC-000564, , POS05502227102018, 3000.00, SUCCESS, 2018-10-27, POS-1, RECHARGE, admin, 2018-10-27 22:05:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (619, IC-000285, , POS01481228102018, 5000.00, SUCCESS, 2018-10-28, POS-1, RECHARGE, admin, 2018-10-28 12:01:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (620, IC-000025, , POS03051228102018, 4000.00, SUCCESS, 2018-10-28, POS-1, RECHARGE, admin, 2018-10-28 12:03:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (621, IC-000505, , POS54191129102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, bakari, 2018-10-29 11:54:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (622, IC-000504, , POS15041329102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, bakari, 2018-10-29 13:15:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (623, IC-000501, , POS19331329102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, bakari, 2018-10-29 13:19:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (624, IC-000539, , POS27491329102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, victor2018, 2018-10-29 13:27:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (625, IC-000532, , POS30311329102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, victor2018, 2018-10-29 13:30:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (626, IC-000534, , POS33141329102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, bakari, 2018-10-29 13:33:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (627, IC-000507, , POS34111329102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, victor2018, 2018-10-29 13:34:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (628, IC-000331, , POS39211329102018, 5000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, bakari, 2018-10-29 13:39:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (630, IC-000535, , POS23581429102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, bakari, 2018-10-29 14:23:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (631, IC-000002, , POS48191429102018, 1000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 14:48:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (632, IC-000545, , POS15581529102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 15:15:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (633, IC-000503, , POS16021529102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, victor2018, 2018-10-29 15:16:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (634, IC-000546, , POS36081529102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 15:36:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (635, IC-000550, , POS36411529102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 15:36:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (636, IC-000502, , POS44221529102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, victor2018, 2018-10-29 15:44:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (637, IC-000563, , POS50141529102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, bakari, 2018-10-29 15:50:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (638, IC-000543, , POS03331629102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 16:03:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (639, IC-000541, , POS07591629102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 16:07:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (640, IC-000101, , POS25131629102018, 1000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 16:25:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (641, IC-000528, , POS33171629102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, bakari, 2018-10-29 16:33:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (642, IC-000548, , POS39261629102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 16:39:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (643, IC-000102, , POS56051629102018, 1000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 16:56:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (644, IC-000544, , POS58421629102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 16:58:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (645, IC-000161, , POS35071729102018, 5000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 17:35:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (646, IC-000547, , POS39331729102018, 3000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 17:39:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (647, IC-000475, , POS09151829102018, 5000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 18:09:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (648, IC-000150, , POS55411829102018, 1000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-29 18:55:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (649, IC-000485, , POS17590830102018, 2000.00, SUCCESS, 2018-10-29, POS-1, RECHARGE, admin, 2018-10-30 08:17:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (650, IC-000568, , POS10561130102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 11:10:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (651, IC-000103, , POS18111130102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, bakari, 2018-10-30 11:18:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (652, IC-000510, , POS31521130102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 11:31:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (653, IC-000559, , POS31551130102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, bakari, 2018-10-30 11:31:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (654, IC-000538, , POS36001130102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 11:36:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (655, IC-000301, , POS07221230102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, bakari, 2018-10-30 12:07:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (656, IC-000549, , POS08361230102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 12:08:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (657, IC-000537, , POS26121230102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 12:26:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (658, IC-000531, , POS39111230102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 12:39:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (659, IC-000506, , POS52001330102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 13:52:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (660, IC-000509, , POS53231330102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 13:53:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (661, IC-000566, , POS06171430102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 14:06:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (662, IC-000565, , POS07421430102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 14:07:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (663, IC-000519, , POS11291430102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 14:11:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (664, IC-000540, , POS51371430102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 14:51:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (665, IC-000456, , POS57221430102018, 5000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, bakari, 2018-10-30 14:57:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (666, IC-000567, , POS12211530102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 15:12:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (667, IC-000536, , POS39121530102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, nanah, 2018-10-30 15:39:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (668, IC-000555, , POS19121630102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, dmaganga, 2018-10-30 16:19:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (669, IC-000508, , POS33301630102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, bakari, 2018-10-30 16:33:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (670, IC-000533, , POS12051730102018, 3000.00, SUCCESS, 2018-10-30, POS-1, RECHARGE, bakari, 2018-10-30 17:12:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (671, IC-000581, , POS59401031102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, dmaganga, 2018-10-31 10:59:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (672, IC-000023, , POS00581131102018, 5000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, dmaganga, 2018-10-31 11:00:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (673, IC-000554, , POS02121231102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 12:02:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (674, IC-000560, , POS15061231102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 12:15:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (675, IC-000551, , POS36421231102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 12:36:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (676, IC-000557, , POS48181331102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 13:48:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (677, IC-000188, , POS30311431102018, 2000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 14:30:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (678, IC-000287, , POS31271431102018, 1000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 14:31:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (679, IC-000553, , POS39241531102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 15:39:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (680, IC-000552, , POS35491631102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 16:35:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (681, IC-000558, , POS54241631102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, bakari, 2018-10-31 16:54:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (682, IC-000585, , POS20351731102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 17:20:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (683, IC-000589, , POS29171731102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 17:29:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (684, IC-000582, , POS29491731102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 17:29:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (685, IC-000590, , POS30131731102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 17:30:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (686, IC-000586, , POS30381731102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 17:30:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (687, IC-000130, , POS31411731102018, 1000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 17:31:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (688, IC-000136, , POS33041731102018, 2000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 17:33:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (689, IC-000325, , POS37501731102018, 2000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 17:37:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (690, IC-000583, , POS58101831102018, 3000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 18:58:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (691, IC-000119, , POS11381931102018, 1000.00, SUCCESS, 2018-10-31, POS-1, RECHARGE, admin, 2018-10-31 19:11:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (692, IC-000573, , POS18431001112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, nanah, 2018-11-01 10:18:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (693, IC-000580, , POS54101001112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, nanah, 2018-11-01 10:54:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (694, IC-000570, , POS51581201112018, 1000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, bakari, 2018-11-01 12:51:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (695, IC-000135, , POS19101301112018, 1000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, bakari, 2018-11-01 13:19:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (696, IC-000201, , POS41221301112018, 1000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, dmaganga, 2018-11-01 13:41:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (697, IC-000242, , POS42151301112018, 1300.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, dmaganga, 2018-11-01 13:42:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (698, IC-000132, , POS43041301112018, 2000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, dmaganga, 2018-11-01 13:43:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (699, IC-000593, , POS42431401112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, admin, 2018-11-01 14:42:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (700, IC-000591, , POS43311401112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, dmaganga, 2018-11-01 14:43:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (701, IC-000600, , POS03221501112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, admin, 2018-11-01 15:03:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (702, IC-000485, , POS51021601112018, 2000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, dmaganga, 2018-11-01 16:51:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (703, IC-000584, , POS52401601112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, victor2018, 2018-11-01 16:52:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (704, IC-000587, , POS00291701112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, victor2018, 2018-11-01 17:00:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (705, IC-000576, , POS24031701112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, bakari, 2018-11-01 17:24:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (706, IC-000577, , POS34451701112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, bakari, 2018-11-01 17:34:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (707, IC-000588, , POS04561801112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, bakari, 2018-11-01 18:04:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (708, IC-000592, , POS12281801112018, 3000.00, SUCCESS, 2018-11-01, POS-1, RECHARGE, admin, 2018-11-01 18:12:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (709, IC-000261, , POS53061302112018, 1000.00, SUCCESS, 2018-11-02, POS-1, RECHARGE, bakari, 2018-11-02 13:53:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (710, IC-000574, , POS59411402112018, 3000.00, SUCCESS, 2018-11-02, POS-1, RECHARGE, bakari, 2018-11-02 14:59:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (711, IC-000598, , POS02461502112018, 3000.00, SUCCESS, 2018-11-02, POS-1, RECHARGE, bakari, 2018-11-02 15:02:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (712, IC-000103, , POS57291404112018, 2000.00, SUCCESS, 2018-11-04, POS-1, RECHARGE, bakari, 2018-11-04 14:57:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (713, IC-000069, , POS18181205112018, 1000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 12:18:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (714, IC-000594, , POS27161205112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 12:27:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (715, IC-000595, , POS31371205112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 12:31:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (716, IC-000589, , POS56371205112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 12:56:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (717, IC-000589, , POS57281205112018, 400.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 12:57:28, 2018-11-05 13:58:51);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (718, IC-000596, , POS59361205112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, nanah, 2018-11-05 12:59:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (719, IC-000579, , POS01031305112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, nanah, 2018-11-05 13:01:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (720, IC-000107, , POS20191305112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 13:20:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (721, IC-000107, , POS21211305112018, 400.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 13:21:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (722, IC-000571, , POS36181305112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, nanah, 2018-11-05 13:36:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (723, IC-000455, , POS40241305112018, 1000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 13:40:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (724, IC-000455, , POS41041305112018, 200.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 13:41:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (725, IC-000308, , POS51301305112018, 6000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 13:51:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (726, IC-000308, , POS52051305112018, 1200.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 13:52:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (727, IC-000599, , POS58501305112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 13:58:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (728, IC-000572, , POS07521405112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, nanah, 2018-11-05 14:07:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (729, IC-000570, , POS13141405112018, 1000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 14:13:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (730, IC-000063, , POS14401405112018, 1000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 14:14:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (731, IC-000570, , POS15131405112018, 200.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 14:15:13, 2018-11-05 18:09:32);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (732, IC-000063, , POS16301405112018, 200.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 14:16:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (733, IC-000131, , POS18571405112018, 3000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 14:18:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (734, IC-000102, , POS21341405112018, 1000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, nanah, 2018-11-05 14:21:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (735, IC-000131, , POS23161405112018, 600.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 14:23:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (736, IC-000417, , POS48191405112018, 1000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 14:48:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (737, IC-000417, , POS50461405112018, 200.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 14:50:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (738, IC-000562, , POS35051505112018, 1000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 15:35:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (739, IC-000562, , POS35501505112018, 200.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 15:35:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (740, IC-000578, , POS49531505112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, nanah, 2018-11-05 15:49:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (741, IC-000597, , POS29391605112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 16:29:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (742, IC-000039, , POS59021605112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 16:59:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (743, IC-000039, , POS59341605112018, 400.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 16:59:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (744, IC-000485, , POS20271705112018, 3000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 17:20:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (745, IC-000485, , POS21081705112018, 600.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 17:21:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (746, IC-000429, , POS47401705112018, 5000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 17:47:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (747, IC-000429, , POS50031705112018, 1000.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 17:50:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (748, IC-000522, , POS31121805112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 18:31:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (749, IC-000522, , POS31391805112018, 400.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 18:31:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (750, IC-000639, , POS35281805112018, 3000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 18:35:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (751, IC-000431, , POS55391805112018, 3000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 18:55:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (752, IC-000431, , POS56231805112018, 600.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-05 18:56:23, 2018-11-06 11:36:36);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (753, IC-000631, , POS07481905112018, 2000.00, SUCCESS, 2018-11-05, POS-1, RECHARGE, bakari, 2018-11-05 19:07:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (754, IC-000629, , POS16170906112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 09:16:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (755, IC-000002, , POS27420906112018, 9600.00, SUCCESS, 2018-11-05, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 09:27:42, 2018-11-06 11:35:42);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (756, IC-000201, , POS36570906112018, 9600.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 09:36:57, 2018-11-06 11:35:46);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (757, IC-000075, , POS39490906112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 09:39:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (758, IC-000075, , POS40410906112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 09:40:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (759, IC-000103, , POS43530906112018, 9600.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 09:43:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (760, IC-000496, , POS23491006112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 10:23:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (761, IC-000496, , POS27391006112018, 400.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 10:27:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (762, IC-000622, , POS04191106112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, nanah, 2018-11-06 11:04:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (763, IC-000623, , POS07521106112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 11:07:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (764, IC-000375, , POS11591106112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 11:11:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (765, IC-000375, , POS13051106112018, 400.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 11:13:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (766, IC-000354, , POS17181106112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 11:17:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (767, IC-000354, , POS18501106112018, 400.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 11:18:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (768, IC-000624, , POS30161106112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, nanah, 2018-11-06 11:30:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (769, IC-000625, , POS42521106112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, nanah, 2018-11-06 11:42:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (770, IC-000495, , POS45241106112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 11:45:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (771, IC-000495, , POS46481106112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 11:46:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (772, IC-000630, , POS06441206112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, nanah, 2018-11-06 12:06:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (773, IC-000263, , POS07541206112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 12:07:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (774, IC-000263, , POS08561206112018, 400.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 12:08:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (775, IC-000621, , POS49321206112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 12:49:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (776, IC-000135, , POS56511206112018, 9600.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 12:56:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (777, IC-000531, , POS49561306112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 13:49:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (778, IC-000531, , POS50311306112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 13:50:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (779, IC-000302, , POS53431306112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 13:53:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (780, IC-000302, , POS55351306112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 13:55:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (781, IC-000338, , POS07371406112018, 1600.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 14:07:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (782, IC-000338, , POS08321406112018, 320.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 14:08:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (783, IC-000130, , POS10431406112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 14:10:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (784, IC-000130, , POS11241406112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 14:11:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (785, IC-000627, , POS31211406112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 14:31:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (786, IC-000093, , POS42561406112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 14:42:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (787, IC-000093, , POS43251406112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, bakari, 2018-11-06 14:43:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (788, IC-000634, , POS47141406112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 14:47:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (789, IC-000091, , POS18311506112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 15:18:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (790, IC-000091, , POS18591506112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, admin, 2018-11-06 15:18:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (791, IC-000626, , POS21121506112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 15:21:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (792, IC-000640, , POS46151506112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, dmaganga, 2018-11-06 15:46:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (793, IC-000217, , POS18321606112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 16:18:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (794, IC-000217, , POS18511606112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, admin, 2018-11-06 16:18:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (795, IC-000637, , POS39181606112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 16:39:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (796, IC-000258, , POS55551606112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 16:55:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (797, IC-000258, , POS56221606112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, admin, 2018-11-06 16:56:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (798, IC-000635, , POS58121606112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 16:58:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (799, IC-000638, , POS18191706112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, bakari, 2018-11-06 17:18:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (800, IC-000544, , POS18521706112018, 5000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 17:18:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (801, IC-000544, , POS19191706112018, 1000.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, admin, 2018-11-06 17:19:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (802, IC-000633, , POS27281706112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 17:27:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (803, IC-000628, , POS31441706112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 17:31:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (804, IC-000475, , POS07281806112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 18:07:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (805, IC-000475, , POS07581806112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, admin, 2018-11-06 18:07:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (806, IC-000632, , POS34311806112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 18:34:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (807, IC-000252, , POS36391906112018, 2000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 19:36:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (808, IC-000252, , POS41581906112018, 400.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, admin, 2018-11-06 19:41:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (809, IC-000360, , POS52011906112018, 1000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 19:52:01, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (810, IC-000360, , POS52321906112018, 200.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, admin, 2018-11-06 19:52:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (811, IC-000035, , POS53381906112018, 5000.00, SUCCESS, 2018-11-06, POS-1, RECHARGE, admin, 2018-11-06 19:53:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (812, IC-000035, , POS54011906112018, 1000.00, SUCCESS, 2018-11-06, POS-1, SPECIAL_OFFER, admin, 2018-11-06 19:54:01, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (813, IC-000601, , POS16160907112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 09:16:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (814, IC-000570, , POS16530907112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 09:16:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (815, IC-000602, , POS24270907112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 09:24:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (816, IC-000603, , POS35090907112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 09:35:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (817, IC-000606, , POS46501007112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 10:46:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (818, IC-000095, , POS12241107112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 11:12:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (819, IC-000095, , POS13181107112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 11:13:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (820, IC-000604, , POS35591107112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 11:35:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (821, IC-000608, , POS39361107112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 11:39:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (822, IC-000532, , POS51521107112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 11:51:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (823, IC-000532, , POS52241107112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 11:52:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (824, IC-000194, , POS53471107112018, 5000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 11:53:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (825, IC-000194, , POS54261107112018, 1000.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 11:54:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (826, IC-000534, , POS04111207112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 12:04:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (827, IC-000534, , POS05171207112018, 400.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 12:05:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (828, IC-000165, , POS09201207112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 12:09:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (829, IC-000610, , POS10041207112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 12:10:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (830, IC-000165, , POS10101207112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 12:10:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (831, IC-000643, , POS13251207112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 12:13:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (832, IC-000197, , POS14081207112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 12:14:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (833, IC-000197, , POS14541207112018, 400.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 12:14:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (834, IC-000588, , POS23561207112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 12:23:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (835, IC-000303, , POS55111207112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 12:55:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (836, IC-000303, , POS55401207112018, 400.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 12:55:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (837, IC-000206, , POS56111207112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 12:56:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (838, IC-000206, , POS57041207112018, 400.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 12:57:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (839, IC-000614, , POS21161307112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 13:21:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (840, IC-000616, , POS29051307112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 13:29:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (841, IC-000613, , POS39221307112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 13:39:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (842, IC-000609, , POS45571307112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 13:45:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (843, IC-000612, , POS48121307112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 13:48:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (844, IC-000605, , POS48181307112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 13:48:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (845, IC-000611, , POS50051307112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 13:50:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (846, IC-000644, , POS51531307112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 13:51:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (847, IC-000554, , POS58481307112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 13:58:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (848, IC-000554, , POS59281307112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 13:59:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (849, IC-000484, , POS18251407112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 14:18:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (850, IC-000484, , POS18591407112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 14:18:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (851, IC-000423, , POS19381407112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 14:19:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (852, IC-000423, , POS22071407112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 14:22:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (853, IC-000195, , POS29261407112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 14:29:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (854, IC-000195, , POS30031407112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 14:30:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (855, IC-000641, , POS05061507112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 15:05:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (856, IC-000279, , POS06061507112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 15:06:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (857, IC-000065, , POS08591507112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 15:08:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (858, IC-000065, , POS11041507112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 15:11:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (859, IC-000279, , POS12041507112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 15:12:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (860, IC-000642, , POS20401507112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 15:20:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (861, IC-000645, , POS27191507112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, nanah, 2018-11-07 15:27:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (862, IC-000650, , POS37311507112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 15:37:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (863, IC-000646, , POS15161607112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 16:15:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (864, IC-000648, , POS15441607112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 16:15:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (865, IC-000688, , POS22161607112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 16:22:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (866, IC-000212, , POS31131607112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 16:31:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (867, IC-000212, , POS31421607112018, 400.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, admin, 2018-11-07 16:31:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (868, IC-000689, , POS38111607112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 16:38:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (869, IC-000482, , POS46141607112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 16:46:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (870, IC-000309, , POS56181607112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, bakari, 2018-11-07 16:56:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (871, IC-000309, , POS57061607112018, 400.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, bakari, 2018-11-07 16:57:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (872, IC-000690, , POS00361707112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 17:00:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (873, IC-000482, , POS03561707112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, admin, 2018-11-07 17:03:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (874, IC-000681, , POS57231707112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 17:57:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (875, IC-000219, , POS59471707112018, 1000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 17:59:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (876, IC-000219, , POS00081807112018, 200.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, admin, 2018-11-07 18:00:08, 2018-11-08 15:33:50);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (877, IC-000527, , POS24161807112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 18:24:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (878, IC-000527, , POS25061807112018, 400.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, admin, 2018-11-07 18:25:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (879, IC-000428, , POS49301807112018, 2000.00, SUCCESS, 2018-11-07, POS-1, RECHARGE, admin, 2018-11-07 18:49:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (880, IC-000428, , POS50141807112018, 400.00, SUCCESS, 2018-11-07, POS-1, SPECIAL_OFFER, admin, 2018-11-07 18:50:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (881, IC-000580, , POS00181008112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 10:00:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (882, IC-000014, , POS01121008112018, 5000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 10:01:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (883, IC-000014, , POS03031008112018, 1000.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, bakari, 2018-11-08 10:03:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (884, IC-000615, , POS06551008112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 10:06:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (885, IC-000649, , POS16401108112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, nanah, 2018-11-08 11:16:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (886, IC-000686, , POS34241108112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 11:34:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (887, IC-000620, , POS19121208112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 12:19:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (888, IC-000510, , POS32411208112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 12:32:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (889, IC-000510, , POS33181208112018, 400.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, bakari, 2018-11-08 12:33:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (890, IC-000456, , POS35001208112018, 3000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 12:35:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (891, IC-000456, , POS35391208112018, 600.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, bakari, 2018-11-08 12:35:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (892, IC-000617, , POS50041208112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 12:50:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (893, IC-000685, , POS52431208112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, nanah, 2018-11-08 12:52:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (894, IC-000647, , POS58421208112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 12:58:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (895, IC-000054, , POS08351308112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 13:08:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (896, IC-000106, , POS09201308112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 13:09:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (897, IC-000106, , POS13471308112018, 200.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, bakari, 2018-11-08 13:13:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (898, IC-000683, , POS15571308112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 13:15:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (899, IC-000687, , POS27371308112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 13:27:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (900, IC-000691, , POS42181308112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 13:42:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (901, IC-000293, , POS57051308112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 13:57:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (902, IC-000293, , POS00081408112018, 200.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, bakari, 2018-11-08 14:00:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (903, IC-000692, , POS04031408112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 14:04:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (904, IC-000693, , POS11491408112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 14:11:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (905, IC-000695, , POS14071408112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 14:14:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (906, IC-000696, , POS21051408112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 14:21:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (907, IC-000697, , POS25371408112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 14:25:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (908, IC-000698, , POS31321408112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 14:31:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (909, IC-000419, , POS11331508112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 15:11:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (910, IC-000419, , POS12301508112018, 200.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, admin, 2018-11-08 15:12:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (911, IC-000694, , POS20191508112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 15:20:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (912, IC-000684, , POS44221508112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 15:44:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (913, IC-000607, , POS45511508112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 15:45:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (914, IC-000619, , POS48271508112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 15:48:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (915, IC-000618, , POS50511508112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 15:50:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (916, IC-000699, , POS39071608112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, bakari, 2018-11-08 16:39:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (917, IC-000079, , POS43561608112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 16:43:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (918, IC-000079, , POS44191608112018, 200.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, admin, 2018-11-08 16:44:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (919, IC-000550, , POS57221608112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 16:57:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (920, IC-000550, , POS57471608112018, 200.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, admin, 2018-11-08 16:57:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (921, IC-000154, , POS07521708112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 17:07:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (922, IC-000154, , POS08211708112018, 200.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, admin, 2018-11-08 17:08:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (923, IC-000674, , POS35101708112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 17:35:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (924, IC-000169, , POS24021808112018, 5000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 18:24:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (925, IC-000169, , POS25071808112018, 1000.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, admin, 2018-11-08 18:25:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (926, IC-000673, , POS49461808112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, dmaganga, 2018-11-08 18:49:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (927, IC-000109, , POS29211908112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 19:29:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (928, IC-000255, , POS38591908112018, 5000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 19:38:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (929, IC-000255, , POS39491908112018, 1000.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, admin, 2018-11-08 19:39:49, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (930, IC-000700, , POS41361908112018, 1000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 19:41:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (931, IC-000480, , POS42251908112018, 5000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 19:42:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (932, IC-000480, , POS42511908112018, 1000.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, admin, 2018-11-08 19:42:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (933, IC-000671, , POS19302008112018, 2000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 20:19:30, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (934, IC-000577, , POS30392008112018, 3000.00, SUCCESS, 2018-11-08, POS-1, RECHARGE, admin, 2018-11-08 20:30:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (935, IC-000577, , POS31112008112018, 600.00, SUCCESS, 2018-11-08, POS-1, SPECIAL_OFFER, admin, 2018-11-08 20:31:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (936, IC-000635, , POS34110809112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 08:34:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (937, IC-000675, , POS02071009112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 10:02:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (938, IC-000680, , POS59421009112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, nanah, 2018-11-09 10:59:42, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (939, IC-000682, , POS01371109112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, nanah, 2018-11-09 11:01:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (940, IC-000670, , POS08141109112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, nanah, 2018-11-09 11:08:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (941, IC-000435, , POS11371109112018, 1000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 11:11:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (942, IC-000435, , POS14141109112018, 200.00, SUCCESS, 2018-11-09, POS-1, SPECIAL_OFFER, bakari, 2018-11-09 11:14:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (943, IC-000669, , POS35261109112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 11:35:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (944, IC-000668, , POS37221109112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 11:37:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (945, IC-000667, , POS38021109112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 11:38:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (946, IC-000023, , POS38391109112018, 7000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 11:38:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (947, IC-000023, , POS39121109112018, 1400.00, SUCCESS, 2018-11-09, POS-1, SPECIAL_OFFER, dmaganga, 2018-11-09 11:39:12, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (948, IC-000683, , POS42041109112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 11:42:04, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (949, IC-000666, , POS06551209112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 12:06:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (950, IC-000665, , POS09461209112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 12:09:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (951, IC-000661, , POS56571209112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 12:56:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (952, IC-000664, , POS57271209112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 12:57:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (953, IC-000662, , POS58241209112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 12:58:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (954, IC-000663, , POS56171309112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 13:56:17, 2018-11-11 13:56:29);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (955, IC-000651, , POS06171409112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 14:06:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (956, IC-000655, , POS20291409112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 14:20:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (957, IC-000672, , POS21461409112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 14:21:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (958, IC-000656, , POS51541409112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 14:51:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (959, IC-000187, , POS01441509112018, 5000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 15:01:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (960, IC-000187, , POS02501509112018, 1000.00, SUCCESS, 2018-11-09, POS-1, SPECIAL_OFFER, bakari, 2018-11-09 15:02:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (961, IC-000653, , POS12441509112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 15:12:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (962, IC-000654, , POS26241509112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 15:26:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (963, IC-000660, , POS00351609112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 16:00:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (964, IC-000492, , POS03371609112018, 1000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, admin, 2018-11-09 16:03:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (965, IC-000657, , POS03471609112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 16:03:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (966, IC-000492, , POS04101609112018, 200.00, SUCCESS, 2018-11-09, POS-1, SPECIAL_OFFER, admin, 2018-11-09 16:04:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (967, IC-000221, , POS28271609112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 16:28:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (968, IC-000221, , POS30341609112018, 400.00, SUCCESS, 2018-11-09, POS-1, SPECIAL_OFFER, bakari, 2018-11-09 16:30:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (969, IC-000658, , POS38241609112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 16:38:24, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (970, IC-000659, , POS45351609112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, bakari, 2018-11-09 16:45:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (971, IC-000676, , POS51331609112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 16:51:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (972, IC-000678, , POS58361609112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 16:58:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (973, IC-000513, , POS00541709112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 17:00:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (974, IC-000513, , POS02411709112018, 400.00, SUCCESS, 2018-11-09, POS-1, SPECIAL_OFFER, dmaganga, 2018-11-09 17:02:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (975, IC-000677, , POS14391709112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 17:14:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (976, IC-000318, , POS15131709112018, 10000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 17:15:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (977, IC-000318, , POS16181709112018, 2000.00, SUCCESS, 2018-11-09, POS-1, SPECIAL_OFFER, dmaganga, 2018-11-09 17:16:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (978, IC-000247, , POS24231709112018, 3000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, dmaganga, 2018-11-09 17:24:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (979, IC-000247, , POS24561709112018, 600.00, SUCCESS, 2018-11-09, POS-1, SPECIAL_OFFER, dmaganga, 2018-11-09 17:24:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (980, IC-000679, , POS43591809112018, 2000.00, SUCCESS, 2018-11-09, POS-1, RECHARGE, admin, 2018-11-09 18:43:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (981, IC-000287, , POS02151510112018, 1000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, bakari, 2018-11-10 15:02:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (982, IC-000287, , POS03141510112018, 2000.00, SUCCESS, 2018-11-10, POS-1, SPECIAL_OFFER, bakari, 2018-11-10 15:03:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (983, IC-000703, , POS10171510112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 15:10:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (984, IC-000704, , POS12371510112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 15:12:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (985, IC-000709, , POS43351610112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 16:43:35, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (986, IC-000706, , POS13081710112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 17:13:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (987, IC-000702, , POS13291710112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 17:13:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (988, IC-000705, , POS13561710112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 17:13:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (989, IC-000708, , POS28261710112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 17:28:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (990, IC-000701, , POS05021810112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 18:05:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (991, IC-000713, , POS07101810112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 18:07:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (992, IC-000729, , POS09391810112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 18:09:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (993, IC-000730, , POS18201810112018, 2000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 18:18:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (994, IC-000160, , POS31151810112018, 2500.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 18:31:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (995, IC-000160, , POS31381810112018, 500.00, SUCCESS, 2018-11-10, POS-1, SPECIAL_OFFER, admin, 2018-11-10 18:31:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (996, IC-000383, , POS48551810112018, 1000.00, SUCCESS, 2018-11-10, POS-1, RECHARGE, admin, 2018-11-10 18:48:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (997, IC-000383, , POS49191810112018, 200.00, SUCCESS, 2018-11-10, POS-1, SPECIAL_OFFER, admin, 2018-11-10 18:49:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (998, IC-000711, , POS15571211112018, 2000.00, SUCCESS, 2018-11-11, POS-1, RECHARGE, admin, 2018-11-11 12:15:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (999, IC-000712, , POS35501311112018, 2000.00, SUCCESS, 2018-11-11, POS-1, RECHARGE, admin, 2018-11-11 13:35:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1000, IC-000201, , POS03591411112018, 1000.00, SUCCESS, 2018-11-11, POS-1, RECHARGE, admin, 2018-11-11 14:03:59, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1001, IC-000720, , POS22271411112018, 2000.00, SUCCESS, 2018-11-11, POS-1, RECHARGE, admin, 2018-11-11 14:22:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1002, IC-000503, , POS22151811112018, 3000.00, SUCCESS, 2018-11-11, POS-1, RECHARGE, admin, 2018-11-11 18:22:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1003, IC-000503, , POS22551811112018, 600.00, SUCCESS, 2018-11-11, POS-1, SPECIAL_OFFER, admin, 2018-11-11 18:22:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1004, IC-000635, , POS01471911112018, 2000.00, SUCCESS, 2018-11-11, POS-1, RECHARGE, admin, 2018-11-11 19:01:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1005, IC-000522, , POS02201911112018, 2500.00, SUCCESS, 2018-11-11, POS-1, RECHARGE, admin, 2018-11-11 19:02:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1006, IC-000557, , POS01281012112018, 1000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 10:01:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1007, IC-000242, , POS10571012112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 10:10:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1008, IC-000359, , POS30281112112018, 5000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 11:30:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1009, IC-000719, , POS57131112112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 11:57:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1010, IC-000728, , POS06581212112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 12:06:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1011, IC-000707, , POS12091212112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 12:12:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1012, IC-000718, , POS14001212112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 12:14:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1013, IC-000642, , POS22191212112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 12:22:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1014, IC-000727, , POS30221212112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 12:30:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1015, IC-000726, , POS12271312112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 13:12:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1016, IC-000725, , POS13341312112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 13:13:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1017, IC-000724, , POS29081312112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 13:29:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1018, IC-000721, , POS35091312112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 13:35:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1019, IC-000723, , POS39311312112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 13:39:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1020, IC-000740, , POS41411312112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 13:41:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1021, IC-000665, , POS49501312112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 13:49:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1022, IC-000699, , POS52481312112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 13:52:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1023, IC-000417, , POS07271412112018, 1000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 14:07:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1024, IC-000739, , POS40581412112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 14:40:58, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1025, IC-000731, , POS42381412112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 14:42:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1026, IC-000737, , POS43061412112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 14:43:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1027, IC-000606, , POS43471412112018, 4000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 14:43:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1028, IC-000732, , POS44431412112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 14:44:43, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1029, IC-000733, , POS50331412112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, nanah, 2018-11-12 14:50:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1030, IC-000735, , POS54151612112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 16:54:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1031, IC-000681, , POS55111612112018, 1000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 16:55:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1032, IC-000026, , POS02341712112018, 1000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 17:02:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1033, IC-000736, , POS06171712112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 17:06:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1034, IC-000714, , POS32131712112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 17:32:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1035, IC-000738, , POS50031712112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 17:50:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1036, IC-000717, , POS51371712112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 17:51:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1037, IC-000507, , POS52331712112018, 3000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 17:52:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1038, IC-000716, , POS02141812112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 18:02:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1039, IC-000715, , POS05091812112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 18:05:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1040, IC-000750, , POS07101812112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 18:07:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1041, IC-000691, , POS45051812112018, 1000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, bakari, 2018-11-12 18:45:05, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1042, IC-000741, , POS02391912112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 19:02:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1043, IC-000749, , POS09261912112018, 2000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 19:09:26, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1044, IC-000435, , POS39391912112018, 1000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 19:39:39, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1045, IC-000352, , POS38002012112018, 4000.00, SUCCESS, 2018-11-12, POS-1, RECHARGE, admin, 2018-11-12 20:38:00, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1046, IC-000747, , POS54150913112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 09:54:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1047, IC-000746, , POS01131013112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 10:01:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1048, IC-000745, , POS20201113112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 11:20:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1049, IC-000091, , POS35371113112018, 5000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 11:35:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1050, IC-000623, , POS50171313112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 13:50:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1051, IC-000745, , POS52561313112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 13:52:56, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1052, IC-000748, , POS56141313112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 13:56:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1053, IC-000742, , POS58331313112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 13:58:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1054, IC-000675, , POS04111413112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 14:04:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1055, IC-000744, , POS05521413112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 14:05:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1056, IC-000743, , POS23131413112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 14:23:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1057, IC-000761, , POS35201413112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 14:35:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1058, IC-000762, , POS36211413112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 14:36:21, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1059, IC-000770, , POS43271413112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 14:43:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1060, IC-000763, , POS34461513112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 15:34:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1061, IC-000768, , POS42331513112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 15:42:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1062, IC-000769, , POS44251513112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 15:44:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1063, IC-000766, , POS11481613112018, 3000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 16:11:48, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1064, IC-000767, , POS21521613112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 16:21:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1065, IC-000767, , POS24451613112018, 4000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 16:24:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1066, IC-000649, , POS55191713112018, 3000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 17:55:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1067, IC-000578, , POS35071813112018, 500.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 18:35:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1068, IC-000435, , POS57571813112018, 1000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 18:57:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1069, IC-000639, , POS17361913112018, 1500.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 19:17:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1070, IC-000765, , POS18271913112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 19:18:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1071, IC-000760, , POS21061913112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 19:21:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1072, IC-000758, , POS19572013112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 20:19:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1073, IC-000694, , POS58252313112018, 2000.00, SUCCESS, 2018-11-13, POS-1, RECHARGE, bakari, 2018-11-13 23:58:25, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1074, IC-000759, , POS59410814112018, 2000.00, SUCCESS, 2018-11-14, POS-2, RECHARGE, nanah, 2018-11-14 08:59:41, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1075, IC-000220, , POS52131014112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, bakari, 2018-11-14 10:52:13, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1076, IC-000757, , POS50521214112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 12:50:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1077, IC-000570, , POS07221314112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 13:07:22, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1078, IC-000755, , POS53141314112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 13:53:14, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1079, IC-000135, , POS17531414112018, 1000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 14:17:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1080, IC-000754, , POS36571414112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 14:36:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1081, IC-000600, , POS02471514112018, 5000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 15:02:47, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1082, IC-000635, , POS13171514112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 15:13:17, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1083, IC-000103, , POS24071514112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, bakari, 2018-11-14 15:24:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1084, IC-000753, , POS52551514112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, admin, 2018-11-14 15:52:55, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1085, IC-000751, , POS53381514112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 15:53:38, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1086, IC-000756, , POS00081614112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 16:00:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1087, IC-000402, , POS00331614112018, 5000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 16:00:33, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1088, IC-000719, , POS01181614112018, 5000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 16:01:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1089, IC-000108, , POS01441614112018, 1000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 16:01:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1090, IC-000262, , POS02311614112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 16:02:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1091, IC-000752, , POS08201614112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, nanah, 2018-11-14 16:08:20, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1092, IC-000475, , POS03231714112018, 1000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, bakari, 2018-11-14 17:03:23, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1093, IC-000113, , POS05061714112018, 1000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, bakari, 2018-11-14 17:05:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1094, IC-000157, , POS40401814112018, 1000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, bakari, 2018-11-14 18:40:40, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1095, IC-000315, , POS40451914112018, 5000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, bakari, 2018-11-14 19:40:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1096, IC-000369, , POS41361914112018, 5000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, bakari, 2018-11-14 19:41:36, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1097, IC-000771, , POS44461914112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, bakari, 2018-11-14 19:44:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1098, IC-000500, , POS26022014112018, 3000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, admin, 2018-11-14 20:26:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1099, IC-000500, , POS27442014112018, 2000.00, SUCCESS, 2018-11-14, POS-1, RECHARGE, admin, 2018-11-14 20:27:44, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1100, IC-000669, , POS07571015112018, 5000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 10:07:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1101, IC-000775, , POS49531015112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 10:49:53, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1102, IC-000773, , POS20181215112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 12:20:18, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1103, IC-000774, , POS25151215112018, 2000.00, SUCCESS, 2018-11-15, POS-2, RECHARGE, nanah, 2018-11-15 12:25:15, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1104, IC-000682, , POS27081215112018, 1000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 12:27:08, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1105, IC-000772, , POS28371215112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 12:28:37, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1106, IC-000661, , POS33091215112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 12:33:09, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1107, IC-000777, , POS59291215112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 12:59:29, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1108, IC-000778, , POS12521315112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 13:12:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1109, IC-000023, , POS14101315112018, 3000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 13:14:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1110, IC-000776, , POS22541315112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 13:22:54, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1111, IC-000780, , POS26461315112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 13:26:46, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1112, IC-000779, , POS36161315112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 13:36:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1113, IC-000528, , POS43281315112018, 5000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 13:43:28, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1114, IC-000781, , POS53271315112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 13:53:27, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1115, IC-000782, , POS57031315112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, admin, 2018-11-15 13:57:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1116, IC-000790, , POS02311515112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 15:02:31, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1117, IC-000783, , POS19451515112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 15:19:45, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1118, IC-000785, , POS38321515112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 15:38:32, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1119, IC-000687, , POS47571515112018, 1000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, nanah, 2018-11-15 15:47:57, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1120, IC-000787, , POS40521615112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 16:40:52, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1121, IC-000788, , POS21061715112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 17:21:06, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1122, IC-000786, , POS22101715112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 17:22:10, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1123, IC-000635, , POS23341715112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 17:23:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1124, IC-000069, , POS12111815112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 18:12:11, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1125, IC-000543, , POS15071815112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 18:15:07, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1126, IC-000590, , POS33341815112018, 5000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 18:33:34, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1127, IC-000681, , POS46021815112018, 1000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 18:46:02, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1128, IC-000791, , POS57161815112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 18:57:16, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1129, IC-000590, , POS58501815112018, 2500.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 18:58:50, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1130, IC-000797, , POS24511915112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 19:24:51, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1131, IC-000798, , POS29191915112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 19:29:19, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1132, IC-000678, , POS31031915112018, 2000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 19:31:03, NULL);
INSERT INTO `eco_card_topup` (`id`, `card_no`, `card_ime`, `trn_ref_no`, `amount`, `trn_status`, `trn_date`, `pos`, `category`, `maker_id`, `date_registered`, `date_updated`) VALUES (1133, IC-000251, , POS32241915112018, 5000.00, SUCCESS, 2018-11-15, POS-1, RECHARGE, bakari, 2018-11-15 19:32:24, NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, IC-000001, 0.00, N, Active, N, N, O, 2018-08-22 11:57:33, 2018-11-13 15:33:28);
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
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (19, IC-000018, 0.00, Y, Active, N, N, O, 2018-08-28 13:25:05, 2018-10-05 08:24:14);
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
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (30, IC-000029, 0.00, Y, Active, N, N, O, 2018-08-28 13:36:40, 2018-10-06 15:59:33);
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
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (58, IC-000057, 0.00, Y, Active, N, N, O, 2018-08-28 13:47:38, 2018-10-03 18:22:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (59, IC-000058, 0.00, N, Active, Y, N, O, 2018-08-28 13:48:14, 2018-11-15 19:42:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (61, IC-000060, 0.00, Y, Active, N, N, O, 2018-08-28 13:48:55, 2018-09-24 22:54:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (62, IC-000061, 0.00, Y, Active, N, N, O, 2018-08-28 13:49:26, 2018-09-11 09:16:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (63, IC-000062, 0.00, Y, Active, N, N, O, 2018-08-28 13:49:54, 2018-09-25 22:45:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (64, IC-000063, 0.00, Y, Active, N, N, O, 2018-08-28 13:50:17, 2018-10-06 15:50:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (65, IC-000064, 0.00, Y, Active, N, N, O, 2018-08-28 13:50:36, 2018-09-25 22:43:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (66, IC-000065, 0.00, Y, Active, N, N, O, 2018-08-28 13:51:18, 2018-09-25 22:49:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (67, IC-000066, 0.00, Y, Active, N, N, O, 2018-08-28 13:54:06, 2018-09-11 09:18:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (68, IC-000067, 0.00, Y, Active, N, N, O, 2018-08-28 13:55:08, 2018-09-24 22:59:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (69, IC-000068, 0.00, Y, Active, N, N, O, 2018-08-28 13:55:31, 2018-09-25 22:55:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (70, IC-000069, 0.00, Y, Active, N, N, O, 2018-08-28 13:55:46, 2018-09-25 22:58:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (71, IC-000070, 0.00, Y, Active, N, N, O, 2018-08-28 13:56:03, 2018-09-11 09:19:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (72, IC-000071, 0.00, Y, Active, N, N, O, 2018-08-28 13:56:20, 2018-09-11 09:20:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (73, IC-000072, 0.00, Y, Active, N, N, O, 2018-08-28 13:56:34, 2018-09-25 23:00:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (74, IC-000073, 0.00, Y, Active, N, N, O, 2018-08-28 13:56:45, 2018-09-27 10:16:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (75, IC-000074, 0.00, Y, Active, N, N, O, 2018-08-28 13:57:05, 2018-09-27 17:19:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (76, IC-000075, 0.00, Y, Active, N, N, O, 2018-08-28 13:58:20, 2018-09-27 17:25:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (77, IC-000076, 0.00, Y, Active, N, N, O, 2018-08-28 13:58:46, 2018-09-27 17:15:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (78, IC-000077, 0.00, Y, Active, N, N, O, 2018-08-28 13:59:02, 2018-09-29 18:14:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (79, IC-000078, 0.00, Y, Active, N, N, O, 2018-08-28 13:59:14, 2018-09-27 17:17:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (80, IC-000079, 0.00, Y, Active, N, N, O, 2018-08-28 13:59:27, 2018-09-25 22:37:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (81, IC-000080, 0.00, Y, Active, N, N, O, 2018-08-28 13:59:58, 2018-09-29 18:18:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (82, IC-000081, 0.00, Y, Active, N, N, O, 2018-08-28 14:00:19, 2018-09-29 18:20:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (83, IC-000082, 0.00, Y, Active, N, N, O, 2018-08-28 14:00:43, 2018-09-20 09:16:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (84, IC-000083, 0.00, Y, Active, N, N, O, 2018-08-28 14:00:55, 2018-09-20 09:15:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (85, IC-000084, 0.00, Y, Active, N, N, O, 2018-08-28 14:01:13, 2018-10-03 18:18:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (86, IC-000085, 0.00, Y, Active, N, N, O, 2018-08-28 14:01:45, 2018-09-20 09:23:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (87, IC-000086, 0.00, Y, Active, N, N, O, 2018-08-28 14:02:26, 2018-09-24 22:56:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (89, IC-000087, 0.00, Y, Active, N, N, O, 2018-08-28 14:03:17, 2018-09-29 18:51:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (90, IC-000088, 0.00, Y, Active, N, N, O, 2018-08-28 14:03:47, 2018-09-29 18:12:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (91, IC-000089, 0.00, Y, Active, N, N, O, 2018-08-28 14:04:04, 2018-10-03 18:17:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (92, IC-000090, 0.00, Y, Active, N, N, O, 2018-08-28 14:04:24, 2018-10-03 10:11:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (93, IC-000091, 0.00, Y, Active, N, N, O, 2018-08-28 14:04:47, 2018-10-08 11:04:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (94, IC-000092, 0.00, Y, Active, N, N, O, 2018-08-28 14:05:24, 2018-10-03 10:12:29);
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
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (112, IC-000201, 0.00, Y, Active, N, N, O, 2018-09-11 09:34:43, 2018-09-26 13:10:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (113, IC-000145, 0.00, Y, Active, N, N, O, 2018-09-13 23:01:47, 2018-09-13 23:02:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (114, IC-000147, 0.00, Y, Active, N, N, O, 2018-09-13 23:03:48, 2018-09-14 00:43:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (115, IC-000113, 0.00, Y, Active, N, N, O, 2018-09-16 10:36:58, 2018-09-16 10:39:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (116, IC-000104, 0.00, Y, Active, N, N, O, 2018-09-17 17:17:01, 2018-10-08 16:41:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (117, IC-000105, 0.00, Y, Active, N, N, O, 2018-09-17 17:17:23, 2018-09-17 18:13:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (118, IC-000106, 0.00, Y, Active, N, N, O, 2018-09-17 17:17:44, 2018-10-08 14:43:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (119, IC-000108, 0.00, Y, Active, N, N, O, 2018-09-17 17:18:03, 2018-10-16 14:53:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (120, IC-000109, 0.00, Y, Active, N, N, O, 2018-09-17 17:18:16, 2018-11-08 15:38:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (122, IC-000111, 0.00, Y, Active, N, N, O, 2018-09-17 17:18:59, 2018-09-19 10:34:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (124, IC-000114, 0.00, Y, Active, N, N, O, 2018-09-17 17:19:50, 2018-09-19 10:24:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (125, IC-000115, 0.00, Y, Active, N, N, O, 2018-09-17 17:20:10, 2018-10-03 10:13:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (126, IC-000116, 0.00, Y, Active, N, N, O, 2018-09-17 17:20:29, 2018-10-06 15:23:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (127, IC-000117, 0.00, Y, Active, N, N, O, 2018-09-17 17:22:40, 2018-10-06 15:24:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (128, IC-000118, 0.00, Y, Active, N, N, O, 2018-09-17 17:23:12, 2018-10-08 18:29:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (129, IC-000119, 0.00, Y, Active, N, N, O, 2018-09-17 17:23:24, 2018-10-08 17:55:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (130, IC-000120, 0.00, Y, Active, N, N, O, 2018-09-17 17:23:38, 2018-10-03 10:13:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (131, IC-000121, 0.00, Y, Active, N, N, O, 2018-09-17 17:24:11, 2018-10-04 20:54:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (132, IC-000122, 0.00, Y, Active, N, N, O, 2018-09-17 17:24:23, 2018-10-08 18:38:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (133, IC-000123, 0.00, Y, Active, N, N, O, 2018-09-17 17:24:40, 2018-10-20 14:07:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (134, IC-000124, 0.00, Y, Active, N, N, O, 2018-09-17 17:24:54, 2018-10-22 17:07:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (135, IC-000125, 0.00, Y, Active, N, N, O, 2018-09-17 17:25:06, 2018-10-16 10:55:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (136, IC-000126, 0.00, Y, Active, N, N, O, 2018-09-17 17:25:13, 2018-10-04 20:52:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (138, IC-000128, 0.00, Y, Active, N, N, O, 2018-09-17 17:25:36, 2018-10-04 20:56:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (139, IC-000129, 0.00, Y, Active, N, N, O, 2018-09-17 17:25:45, 2018-10-23 21:26:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (140, IC-000130, 0.00, Y, Active, N, N, O, 2018-09-17 17:25:53, 2018-10-23 11:09:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (141, IC-000131, 0.00, Y, Active, N, N, O, 2018-09-17 17:26:11, 2018-10-15 17:08:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (142, IC-000132, 0.00, Y, Active, N, N, O, 2018-09-17 17:26:19, 2018-10-16 14:27:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (143, IC-000133, 0.00, Y, Active, N, N, O, 2018-09-17 17:26:32, 2018-10-09 11:35:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (144, IC-000134, 0.00, Y, Active, N, N, O, 2018-09-17 17:26:55, 2018-10-22 17:53:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (145, IC-000135, 0.00, Y, Active, N, N, O, 2018-09-17 17:27:09, 2018-10-08 08:00:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (146, IC-000136, 0.00, Y, Active, N, N, O, 2018-09-17 17:28:42, 2018-10-06 15:26:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (147, IC-000137, 0.00, Y, Active, N, N, O, 2018-09-17 17:28:49, 2018-10-15 15:44:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (148, IC-000138, 0.00, Y, Active, N, N, O, 2018-09-17 17:29:02, 2018-10-15 17:45:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (149, IC-000139, 0.00, Y, Active, N, N, O, 2018-09-17 17:29:12, 2018-10-09 17:09:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (150, IC-000140, 0.00, Y, Active, N, N, O, 2018-09-17 17:29:44, 2018-10-10 15:37:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (151, IC-000141, 0.00, Y, Active, N, N, O, 2018-09-17 17:29:56, 2018-10-15 14:36:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (152, IC-000144, 0.00, N, Active, N, N, O, 2018-09-17 17:30:03, 2018-09-17 17:30:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (153, IC-000146, 0.00, N, Active, N, N, O, 2018-09-17 17:30:21, 2018-09-17 17:30:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (154, IC-000148, 0.00, N, Active, N, N, O, 2018-09-17 17:30:40, 2018-09-17 17:30:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (155, IC-000149, 0.00, Y, Active, N, N, O, 2018-09-17 17:30:57, 2018-10-23 11:16:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (156, IC-000150, 0.00, Y, Active, N, N, O, 2018-09-17 17:31:08, 2018-09-17 18:08:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (157, IC-000151, 0.00, Y, Active, N, N, O, 2018-09-17 17:31:24, 2018-10-15 12:44:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (158, IC-000152, 0.00, Y, Active, N, N, O, 2018-09-17 17:31:35, 2018-10-22 17:04:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (159, IC-000153, 0.00, Y, Active, N, N, O, 2018-09-17 17:31:43, 2018-10-12 13:36:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (160, IC-000155, 0.00, Y, Active, N, N, O, 2018-09-17 17:32:19, 2018-10-22 17:09:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (161, IC-000157, 0.00, Y, Active, N, N, O, 2018-09-17 17:32:35, 2018-10-23 14:19:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (162, IC-000158, 0.00, Y, Active, N, N, O, 2018-09-17 17:33:03, 2018-10-09 17:05:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (163, IC-000159, 0.00, Y, Active, N, N, O, 2018-09-17 17:33:17, 2018-10-18 10:12:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (164, IC-000160, 0.00, Y, Active, N, N, O, 2018-09-17 17:33:28, 2018-10-22 18:52:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (165, IC-000162, 0.00, Y, Active, N, N, O, 2018-09-17 17:33:48, 2018-09-17 18:16:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (166, IC-000142, 0.00, Y, Active, N, N, O, 2018-09-17 17:36:05, 2018-10-08 15:08:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (167, IC-000161, 0.00, Y, Active, N, N, O, 2018-09-17 17:38:45, 2018-10-09 15:24:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (168, IC-000163, 0.00, Y, Active, N, N, O, 2018-09-18 15:15:02, 2018-10-18 10:14:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (169, IC-000112, 0.00, Y, Active, N, N, O, 2018-09-19 10:39:38, 2018-10-10 10:07:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (170, IC-000180, 0.00, Y, Active, N, N, O, 2018-09-20 09:25:02, 2018-10-10 10:23:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (171, IC-000164, 0.00, N, Active, N, N, O, 2018-09-20 12:04:15, 2018-10-10 10:24:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (172, IC-000165, 0.00, Y, Active, N, N, O, 2018-09-20 12:05:23, 2018-10-22 16:36:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (173, IC-000166, 0.00, Y, Active, N, N, O, 2018-09-20 12:05:51, 2018-10-10 10:24:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (174, IC-000168, 0.00, Y, Active, N, N, O, 2018-09-20 12:06:15, 2018-10-16 14:59:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (175, IC-000167, 0.00, Y, Active, N, N, O, 2018-09-20 12:06:32, 2018-10-15 17:41:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (176, IC-000169, 0.00, Y, Active, N, N, O, 2018-09-20 12:06:48, 2018-10-15 10:09:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (177, IC-000170, 0.00, Y, Active, N, N, O, 2018-09-20 12:07:14, 2018-10-11 15:26:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (178, IC-000171, 0.00, Y, Active, N, N, O, 2018-09-20 12:07:33, 2018-10-23 12:27:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (179, IC-000172, 0.00, Y, Active, N, N, O, 2018-09-20 12:07:50, 2018-10-23 14:32:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (180, IC-000173, 0.00, Y, Active, N, N, O, 2018-09-20 12:08:03, 2018-10-10 10:27:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (181, IC-000174, 0.00, Y, Active, N, N, O, 2018-09-20 12:08:20, 2018-10-10 10:32:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (182, IC-000175, 0.00, Y, Active, N, N, O, 2018-09-20 12:08:36, 2018-10-22 16:44:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (183, IC-000176, 0.00, Y, Active, N, N, O, 2018-09-20 12:08:51, 2018-10-23 14:26:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (184, IC-000178, 0.00, Y, Active, N, N, O, 2018-09-20 12:09:13, 2018-10-15 12:24:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (185, IC-000179, 0.00, Y, Active, N, N, O, 2018-09-20 12:10:18, 2018-10-16 17:25:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (186, IC-000181, 0.00, Y, Active, N, N, O, 2018-09-20 12:10:47, 2018-10-16 16:49:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (187, IC-000182, 0.00, Y, Active, N, N, O, 2018-09-20 12:11:18, 2018-10-10 13:07:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (188, IC-000183, 0.00, Y, Active, N, N, O, 2018-09-20 12:11:41, 2018-10-22 16:38:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (189, IC-000184, 0.00, Y, Active, N, N, O, 2018-09-20 12:12:29, 2018-10-15 09:51:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (190, IC-000185, 0.00, Y, Active, N, N, O, 2018-09-20 12:12:57, 2018-10-10 10:31:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (191, IC-000186, 0.00, Y, Active, N, N, O, 2018-09-20 12:13:15, 2018-10-10 10:31:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (192, IC-000187, 0.00, Y, Active, N, N, O, 2018-09-20 12:13:33, 2018-10-16 16:58:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (193, IC-000188, 0.00, Y, Active, N, N, O, 2018-09-20 12:13:45, 2018-10-16 17:32:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (194, IC-000189, 0.00, Y, Active, N, N, O, 2018-09-20 12:14:01, 2018-10-10 14:24:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (195, IC-000190, 0.00, Y, Active, N, N, O, 2018-09-20 12:14:19, 2018-10-10 10:34:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (196, IC-000191, 0.00, Y, Active, N, N, O, 2018-09-20 12:14:31, 2018-10-10 10:34:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (197, IC-000192, 0.00, Y, Active, N, N, O, 2018-09-20 12:14:46, 2018-10-10 10:33:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (198, IC-000194, 0.00, Y, Active, N, N, O, 2018-09-20 12:15:04, 2018-10-20 12:23:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (199, IC-000195, 0.00, Y, Active, N, N, O, 2018-09-20 12:15:18, 2018-10-10 10:34:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (200, IC-000196, 0.00, Y, Active, N, N, O, 2018-09-20 12:15:29, 2018-10-10 10:20:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (201, IC-000197, 0.00, Y, Active, N, N, O, 2018-09-20 12:15:47, 2018-10-10 10:18:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (202, IC-000198, 0.00, Y, Active, N, N, O, 2018-09-20 12:16:18, 2018-10-10 10:12:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (203, IC-000199, 0.00, Y, Active, N, N, O, 2018-09-20 12:16:38, 2018-10-17 15:28:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (204, IC-000200, 0.00, Y, Active, N, N, O, 2018-09-20 12:17:16, 2018-10-10 10:19:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (205, IC-000202, 0.00, Y, Active, N, N, O, 2018-09-20 12:17:33, 2018-10-10 14:08:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (206, IC-000203, 0.00, Y, Active, N, N, O, 2018-09-20 12:17:50, 2018-10-10 09:45:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (207, IC-000204, 0.00, Y, Active, N, N, O, 2018-09-20 12:18:24, 2018-10-15 10:49:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (208, IC-000205, 0.00, Y, Active, N, N, O, 2018-09-20 12:18:38, 2018-10-15 12:52:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (209, IC-000206, 0.00, Y, Active, N, N, O, 2018-09-20 12:18:46, 2018-10-13 13:02:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (210, IC-000207, 0.00, Y, Active, N, N, O, 2018-09-20 12:19:05, 2018-10-10 10:19:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (211, IC-000208, 0.00, Y, Active, N, N, O, 2018-09-20 12:19:17, 2018-10-10 14:01:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (212, IC-000209, 0.00, Y, Active, N, N, O, 2018-09-20 12:19:48, 2018-10-10 13:57:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (213, IC-000210, 0.00, Y, Active, N, N, O, 2018-09-20 12:20:05, 2018-10-15 15:14:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (214, IC-000211, 0.00, Y, Active, N, N, O, 2018-09-20 12:20:15, 2018-10-13 11:50:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (215, IC-000212, 0.00, Y, Active, N, N, O, 2018-09-20 12:20:28, 2018-10-12 13:55:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (216, IC-000213, 0.00, Y, Active, N, N, O, 2018-09-20 12:20:40, 2018-10-15 14:01:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (217, IC-000214, 0.00, Y, Active, N, N, O, 2018-09-20 12:20:52, 2018-10-15 14:08:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (218, IC-000215, 0.00, Y, Active, N, N, O, 2018-09-20 12:21:02, 2018-10-11 12:19:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (219, IC-000216, 0.00, Y, Active, N, N, O, 2018-09-20 12:21:11, 2018-10-12 10:07:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (220, IC-000217, 0.00, Y, Active, N, N, O, 2018-09-20 12:21:22, 2018-10-15 11:54:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (221, IC-000218, 0.00, Y, Active, N, N, O, 2018-09-20 12:21:31, 2018-10-15 14:08:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (222, IC-000219, 0.00, Y, Active, N, N, O, 2018-09-20 12:21:44, 2018-10-15 14:00:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (223, IC-000220, 0.00, Y, Active, N, N, O, 2018-09-20 12:22:00, 2018-10-13 12:31:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (224, IC-000221, 0.00, Y, Active, N, N, O, 2018-09-20 12:22:27, 2018-10-12 13:45:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (225, IC-000222, 0.00, Y, Active, N, N, O, 2018-09-20 12:25:37, 2018-10-10 09:40:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (226, IC-000223, 0.00, Y, Active, N, N, O, 2018-09-20 12:25:53, 2018-10-15 11:07:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (227, IC-000224, 0.00, Y, Active, N, N, O, 2018-09-20 12:26:16, 2018-10-12 17:09:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (228, IC-000225, 0.00, Y, Active, N, N, O, 2018-09-20 12:26:36, 2018-10-15 16:02:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (229, IC-000226, 0.00, Y, Active, N, N, O, 2018-09-20 12:26:47, 2018-10-13 12:08:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (230, IC-000227, 0.00, Y, Active, N, N, O, 2018-09-20 12:26:56, 2018-10-15 10:52:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (231, IC-000228, 0.00, Y, Active, N, N, O, 2018-09-20 12:27:11, 2018-10-12 15:43:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (232, IC-000229, 0.00, Y, Active, N, N, O, 2018-09-20 12:27:24, 2018-10-11 10:43:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (233, IC-000230, 0.00, Y, Active, N, N, O, 2018-09-20 12:27:33, 2018-10-12 13:53:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (234, IC-000059, 0.00, N, Active, N, N, O, 2018-09-22 16:55:00, 2018-10-08 08:00:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (235, IC-000156, 0.00, Y, Active, N, N, O, 2018-09-27 10:15:03, 2018-10-10 10:21:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (236, IC-000127, 0.00, N, Active, N, N, O, 2018-10-04 20:09:56, 2018-10-10 10:22:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (237, IC-000110, 0.00, Y, Active, N, N, O, 2018-10-04 20:47:28, 2018-10-16 15:19:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (238, IC-000193, 0.00, Y, Active, N, N, O, 2018-10-08 11:40:43, 2018-10-10 10:22:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (239, IC-000233, 0.00, Y, Active, N, N, O, 2018-10-10 09:21:24, 2018-10-12 13:37:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (240, IC-000239, 0.00, Y, Active, N, N, O, 2018-10-10 09:21:45, 2018-10-15 11:31:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (241, IC-000234, 0.00, Y, Active, N, N, O, 2018-10-10 09:21:58, 2018-10-12 15:21:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (242, IC-000235, 0.00, Y, Active, N, N, O, 2018-10-10 09:22:12, 2018-10-12 13:14:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (243, IC-000248, 0.00, Y, Active, N, N, O, 2018-10-10 09:26:10, 2018-10-15 14:36:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (244, IC-000238, 0.00, Y, Active, N, N, O, 2018-10-10 09:28:14, 2018-10-15 14:50:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (245, IC-000240, 0.00, Y, Active, N, N, O, 2018-10-10 09:28:36, 2018-10-10 13:55:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (246, IC-000237, 0.00, Y, Active, N, N, O, 2018-10-10 09:28:47, 2018-10-12 13:37:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (247, IC-000232, 0.00, Y, Active, N, N, O, 2018-10-10 09:30:34, 2018-10-15 17:02:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (248, IC-000231, 0.00, Y, Active, N, N, O, 2018-10-10 09:30:45, 2018-10-13 11:36:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (249, IC-000243, 0.00, Y, Active, N, N, O, 2018-10-10 09:48:58, 2018-10-15 15:31:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (250, IC-000242, 0.00, Y, Active, N, N, O, 2018-10-10 09:49:14, 2018-10-15 16:37:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (251, IC-000241, 0.00, Y, Active, N, N, O, 2018-10-10 09:49:40, 2018-10-12 13:08:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (252, IC-000250, 0.00, Y, Active, N, N, O, 2018-10-10 09:49:59, 2018-10-15 09:53:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (253, IC-000244, 0.00, Y, Active, N, N, O, 2018-10-10 09:50:22, 2018-10-15 14:07:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (254, IC-000249, 0.00, Y, Active, N, N, O, 2018-10-10 09:50:41, 2018-10-12 12:34:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (255, IC-000246, 0.00, Y, Active, N, N, O, 2018-10-10 09:53:09, 2018-10-15 10:47:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (256, IC-000236, 0.00, Y, Active, N, N, O, 2018-10-10 09:53:24, 2018-10-13 12:20:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (257, IC-000261, 0.00, Y, Active, N, N, O, 2018-10-10 09:53:40, 2018-10-15 13:33:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (258, IC-000247, 0.00, Y, Active, N, N, O, 2018-10-10 09:54:05, 2018-10-12 16:41:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (259, IC-000273, 0.00, Y, Active, N, N, O, 2018-10-15 10:26:23, 2018-10-18 11:46:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (260, IC-000301, 0.00, Y, Active, N, N, O, 2018-10-15 10:26:49, 2018-10-19 12:29:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (261, IC-000288, 0.00, Y, Active, N, N, O, 2018-10-15 10:27:05, 2018-10-18 10:27:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (262, IC-000306, 0.00, Y, Active, N, N, O, 2018-10-15 10:27:22, 2018-10-20 10:59:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (263, IC-000281, 0.00, Y, Active, N, N, O, 2018-10-15 10:28:03, 2018-10-17 13:09:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (264, IC-000336, 0.00, Y, Active, N, N, O, 2018-10-15 10:28:39, 2018-10-22 10:06:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (265, IC-000282, 0.00, Y, Active, N, N, O, 2018-10-15 10:29:02, 2018-10-18 14:18:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (266, IC-000311, 0.00, Y, Active, N, N, O, 2018-10-15 10:29:15, 2018-10-20 16:54:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (267, IC-000309, 0.00, Y, Active, N, N, O, 2018-10-15 10:31:39, 2018-10-16 11:31:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (268, IC-000283, 0.00, Y, Active, N, N, O, 2018-10-15 10:31:58, 2018-10-17 13:12:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (269, IC-000345, 0.00, Y, Active, N, N, O, 2018-10-15 10:32:45, 2018-10-22 11:49:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (270, IC-000287, 0.00, Y, Active, N, N, O, 2018-10-15 10:33:22, 2018-10-16 15:14:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (271, IC-000344, 0.00, Y, Active, N, N, O, 2018-10-15 10:34:04, 2018-10-16 13:45:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (272, IC-000333, 0.00, Y, Active, N, N, O, 2018-10-15 10:34:27, 2018-10-16 13:03:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (273, IC-000343, 0.00, Y, Active, N, N, O, 2018-10-15 10:34:44, 2018-10-18 16:11:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (274, IC-000342, 0.00, Y, Active, N, N, O, 2018-10-15 10:34:56, 2018-10-18 18:29:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (275, IC-000348, 0.00, Y, Active, N, N, O, 2018-10-15 10:35:21, 2018-10-22 13:09:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (276, IC-000351, 0.00, Y, Active, N, N, O, 2018-10-15 10:39:18, 2018-10-16 10:43:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (277, IC-000330, 0.00, Y, Active, N, N, O, 2018-10-15 10:39:42, 2018-10-16 16:48:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (278, IC-000327, 0.00, Y, Active, N, N, O, 2018-10-15 10:39:52, 2018-10-16 12:58:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (279, IC-000337, 0.00, Y, Active, N, N, O, 2018-10-15 10:40:07, 2018-10-18 16:14:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (280, IC-000346, 0.00, Y, Active, N, N, O, 2018-10-15 10:40:17, 2018-10-22 13:34:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (281, IC-000245, 0.00, Y, Active, N, N, O, 2018-10-15 10:54:30, 2018-10-15 11:06:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (282, IC-000352, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 13:06:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (283, IC-000353, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 10:26:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (284, IC-000354, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-19 12:10:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (285, IC-000355, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-17 11:00:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (286, IC-000356, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-17 10:45:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (287, IC-000357, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-17 13:17:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (288, IC-000358, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-30 14:45:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (289, IC-000359, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-18 13:13:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (290, IC-000360, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-16 10:54:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (291, IC-000361, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-16 10:38:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (292, IC-000362, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-16 14:17:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (293, IC-000363, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-16 17:44:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (294, IC-000364, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-16 15:41:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (295, IC-000365, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-16 15:58:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (296, IC-000366, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-19 16:06:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (297, IC-000367, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-17 13:10:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (298, IC-000368, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-16 10:41:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (299, IC-000369, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-20 15:09:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (300, IC-000370, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-16 10:24:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (301, IC-000371, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-18 16:13:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (302, IC-000372, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-19 11:41:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (303, IC-000373, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-18 18:48:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (304, IC-000374, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 15:19:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (305, IC-000375, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 15:32:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (306, IC-000376, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 15:18:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (307, IC-000377, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 15:07:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (308, IC-000378, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-20 16:59:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (309, IC-000379, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-19 11:33:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (310, IC-000380, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-19 12:55:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (311, IC-000381, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 15:07:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (312, IC-000382, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 14:23:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (313, IC-000383, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 12:16:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (314, IC-000384, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 14:27:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (315, IC-000385, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 15:11:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (316, IC-000386, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 13:42:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (317, IC-000387, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-20 16:57:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (318, IC-000388, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-17 10:17:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (319, IC-000389, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 15:31:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (320, IC-000390, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-22 15:23:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (321, IC-000391, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (322, IC-000392, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (323, IC-000393, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (324, IC-000394, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (325, IC-000395, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (326, IC-000396, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (327, IC-000397, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (328, IC-000398, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (329, IC-000399, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (330, IC-000400, 0.00, N, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-15 10:58:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (331, IC-000401, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 12:42:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (332, IC-000402, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 13:17:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (333, IC-000403, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 14:43:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (334, IC-000404, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 14:30:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (335, IC-000405, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 15:09:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (336, IC-000406, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 12:54:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (337, IC-000407, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 13:26:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (338, IC-000408, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 14:45:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (339, IC-000409, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 14:24:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (340, IC-000410, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 11:46:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (341, IC-000411, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 15:13:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (342, IC-000412, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 15:15:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (343, IC-000413, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 15:16:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (344, IC-000414, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 15:18:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (345, IC-000415, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 15:20:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (346, IC-000416, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 15:22:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (347, IC-000417, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 15:24:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (348, IC-000418, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 16:22:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (349, IC-000419, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 17:16:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (350, IC-000420, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 17:04:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (351, IC-000421, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 11:12:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (352, IC-000422, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 09:37:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (353, IC-000423, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 10:25:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (354, IC-000424, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 10:29:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (355, IC-000425, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 13:33:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (356, IC-000426, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 10:39:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (357, IC-000427, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 12:52:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (358, IC-000428, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 13:41:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (359, IC-000429, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 09:40:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (360, IC-000430, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 10:27:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (361, IC-000431, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-23 23:25:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (362, IC-000432, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 14:23:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (363, IC-000433, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 12:56:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (364, IC-000434, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 09:35:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (365, IC-000435, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:14, 2018-10-24 15:08:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (366, IC-000436, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 13:45:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (367, IC-000437, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 13:19:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (368, IC-000438, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 14:38:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (369, IC-000439, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 14:51:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (370, IC-000440, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:05:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (371, IC-000441, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 15:00:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (372, IC-000442, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 13:13:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (373, IC-000443, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 14:47:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (374, IC-000444, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 14:51:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (375, IC-000445, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 15:02:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (376, IC-000446, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 15:04:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (377, IC-000447, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 15:08:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (378, IC-000448, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 14:58:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (379, IC-000449, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 11:58:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (380, IC-000450, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-23 12:04:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (381, IC-000451, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 17:08:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (382, IC-000452, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:50:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (383, IC-000453, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:44:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (384, IC-000454, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:53:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (385, IC-000455, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:54:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (386, IC-000456, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:46:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (387, IC-000457, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 16:38:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (388, IC-000458, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 12:56:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (389, IC-000459, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:20:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (390, IC-000460, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:21:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (391, IC-000461, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 13:13:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (392, IC-000462, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 13:29:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (393, IC-000463, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 13:40:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (394, IC-000464, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 16:26:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (395, IC-000465, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 15:25:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (396, IC-000466, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 14:01:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (397, IC-000467, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 13:32:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (398, IC-000468, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 13:46:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (399, IC-000469, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 13:03:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (400, IC-000470, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 12:59:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (401, IC-000471, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 11:35:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (402, IC-000472, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 11:37:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (403, IC-000473, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 12:37:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (404, IC-000474, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 11:59:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (405, IC-000475, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 17:05:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (406, IC-000476, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 13:52:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (407, IC-000477, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 13:32:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (408, IC-000478, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 09:59:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (409, IC-000479, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 12:33:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (410, IC-000480, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 12:22:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (411, IC-000481, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 13:28:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (412, IC-000482, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 15:46:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (413, IC-000483, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 12:44:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (414, IC-000484, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 18:56:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (415, IC-000485, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 16:26:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (416, IC-000486, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 12:51:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (417, IC-000487, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 14:46:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (418, IC-000488, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 10:02:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (419, IC-000489, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 10:57:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (420, IC-000490, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 17:55:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (421, IC-000491, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:16:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (422, IC-000492, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:24:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (423, IC-000493, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:26:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (424, IC-000494, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 15:27:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (425, IC-000495, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 10:33:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (426, IC-000496, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 11:51:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (427, IC-000497, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-24 14:53:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (428, IC-000498, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 11:09:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (429, IC-000499, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 09:27:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (430, IC-000500, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-25 11:55:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (431, IC-000501, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 13:18:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (432, IC-000502, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 15:42:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (433, IC-000503, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 15:13:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (434, IC-000504, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 13:14:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (435, IC-000505, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 11:53:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (436, IC-000506, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 13:51:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (437, IC-000507, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 13:32:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (438, IC-000508, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 16:32:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (439, IC-000509, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 13:52:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (440, IC-000510, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 11:28:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (441, IC-000511, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 11:40:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (442, IC-000512, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 18:58:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (443, IC-000513, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 18:59:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (444, IC-000514, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 15:33:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (445, IC-000515, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 17:27:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (446, IC-000516, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 14:17:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (447, IC-000517, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 14:00:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (448, IC-000518, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 13:23:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (449, IC-000519, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 14:10:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (450, IC-000520, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 11:59:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (451, IC-000521, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 19:02:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (452, IC-000522, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 19:01:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (453, IC-000523, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 15:45:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (454, IC-000524, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 14:48:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (455, IC-000525, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 14:49:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (456, IC-000526, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 19:00:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (457, IC-000527, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 15:42:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (458, IC-000528, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 16:32:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (459, IC-000529, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 15:24:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (460, IC-000530, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 15:21:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (461, IC-000531, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 12:35:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (462, IC-000532, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 13:29:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (463, IC-000533, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 17:10:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (464, IC-000534, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 13:32:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (465, IC-000535, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 14:22:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (466, IC-000536, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 15:38:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (467, IC-000537, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 12:25:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (468, IC-000538, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 11:35:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (469, IC-000539, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 13:26:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (470, IC-000540, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 14:51:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (471, IC-000541, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 16:07:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (472, IC-000542, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 13:58:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (473, IC-000543, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 16:02:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (474, IC-000544, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 16:58:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (475, IC-000545, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 15:15:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (476, IC-000546, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 15:35:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (477, IC-000547, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 17:39:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (478, IC-000548, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 16:38:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (479, IC-000549, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 12:07:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (480, IC-000550, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 15:34:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (481, IC-000551, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 12:35:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (482, IC-000552, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 16:34:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (483, IC-000553, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 15:38:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (484, IC-000554, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 12:00:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (485, IC-000555, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 16:18:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (486, IC-000556, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 14:45:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (487, IC-000557, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 13:47:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (488, IC-000558, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 16:53:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (489, IC-000559, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 11:31:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (490, IC-000560, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 12:14:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (491, IC-000561, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 16:24:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (492, IC-000562, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 13:34:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (493, IC-000563, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-29 15:49:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (494, IC-000564, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-27 22:04:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (495, IC-000565, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 14:07:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (496, IC-000566, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 14:02:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (497, IC-000567, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 15:11:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (498, IC-000568, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-30 10:57:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (499, IC-000569, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 16:42:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (500, IC-000570, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-26 15:23:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (501, IC-000571, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 13:31:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (502, IC-000572, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 14:06:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (503, IC-000573, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 10:18:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (504, IC-000574, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-02 14:58:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (505, IC-000575, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 19:49:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (506, IC-000576, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 17:22:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (507, IC-000577, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 17:33:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (508, IC-000578, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 15:49:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (509, IC-000579, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 13:00:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (510, IC-000580, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 10:53:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (511, IC-000581, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 10:58:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (512, IC-000582, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 17:26:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (513, IC-000583, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 18:57:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (514, IC-000584, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 16:51:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (515, IC-000585, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 17:19:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (516, IC-000586, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 17:28:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (517, IC-000587, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 16:59:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (518, IC-000588, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 12:23:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (519, IC-000589, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 17:25:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (520, IC-000590, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-10-31 17:27:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (521, IC-000591, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 14:42:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (522, IC-000592, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 18:11:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (523, IC-000593, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 14:42:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (524, IC-000594, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 12:25:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (525, IC-000595, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 12:30:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (526, IC-000596, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 12:52:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (527, IC-000597, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 16:27:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (528, IC-000598, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-02 15:01:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (529, IC-000599, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 13:57:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (530, IC-000600, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-01 15:02:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (531, IC-000601, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 09:15:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (532, IC-000602, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 09:23:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (533, IC-000603, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 09:33:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (534, IC-000604, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 11:35:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (535, IC-000605, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 13:47:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (536, IC-000606, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 10:46:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (537, IC-000607, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 15:44:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (538, IC-000608, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 11:38:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (539, IC-000609, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 13:45:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (540, IC-000610, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 12:09:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (541, IC-000611, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 13:49:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (542, IC-000612, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 13:47:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (543, IC-000613, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 13:38:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (544, IC-000614, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 13:20:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (545, IC-000615, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 10:04:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (546, IC-000616, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 13:21:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (547, IC-000617, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 12:47:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (548, IC-000618, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 15:50:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (549, IC-000619, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 15:47:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (550, IC-000620, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 12:17:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (551, IC-000621, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 12:48:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (552, IC-000622, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 11:03:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (553, IC-000623, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 11:07:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (554, IC-000624, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 11:29:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (555, IC-000625, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 11:42:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (556, IC-000626, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 15:20:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (557, IC-000627, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 14:30:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (558, IC-000628, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 17:31:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (559, IC-000629, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 09:15:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (560, IC-000630, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 12:06:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (561, IC-000631, 0.00, N, Active, Y, N, O, 2018-10-15 10:58:15, 2018-11-13 07:53:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (562, IC-000632, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 18:34:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (563, IC-000633, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 17:26:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (564, IC-000634, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 14:46:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (565, IC-000635, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 16:40:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (566, IC-000636, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 15:30:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (567, IC-000637, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 16:38:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (568, IC-000638, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 17:17:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (569, IC-000639, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-05 18:34:43);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (570, IC-000640, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-06 15:45:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (571, IC-000641, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 15:04:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (572, IC-000642, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 15:17:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (573, IC-000643, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 12:12:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (574, IC-000644, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 13:50:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (575, IC-000645, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 15:26:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (576, IC-000646, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 16:10:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (577, IC-000647, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 12:56:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (578, IC-000648, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 16:14:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (579, IC-000649, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 11:14:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (580, IC-000650, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 15:36:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (581, IC-000651, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 14:03:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (582, IC-000652, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 14:03:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (583, IC-000653, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 15:08:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (584, IC-000654, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 15:25:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (585, IC-000655, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 14:15:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (586, IC-000656, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 14:50:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (587, IC-000657, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 16:02:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (588, IC-000658, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 16:37:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (589, IC-000659, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 16:44:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (590, IC-000660, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 15:59:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (591, IC-000661, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 14:03:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (592, IC-000662, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 12:53:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (593, IC-000663, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 13:50:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (594, IC-000664, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 12:51:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (595, IC-000665, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 12:08:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (596, IC-000666, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 12:06:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (597, IC-000667, 0.00, N, Active, Y, N, O, 2018-10-15 10:58:15, 2018-11-13 07:53:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (598, IC-000668, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 11:34:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (599, IC-000669, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 11:13:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (600, IC-000670, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 11:06:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (601, IC-000671, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 20:17:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (602, IC-000672, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 14:17:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (603, IC-000673, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 18:49:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (604, IC-000674, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 17:34:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (605, IC-000675, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 10:01:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (606, IC-000676, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 16:50:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (607, IC-000677, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 17:11:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (608, IC-000678, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 16:57:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (609, IC-000679, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 18:43:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (610, IC-000680, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 10:59:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (611, IC-000681, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 17:56:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (612, IC-000682, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-09 11:00:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (613, IC-000683, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 13:12:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (614, IC-000684, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 15:43:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (615, IC-000685, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 12:51:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (616, IC-000686, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 11:33:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (617, IC-000687, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 13:26:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (618, IC-000688, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 16:21:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (619, IC-000689, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 16:37:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (620, IC-000690, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-07 17:00:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (621, IC-000691, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 13:41:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (622, IC-000692, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 14:01:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (623, IC-000693, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 14:06:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (624, IC-000694, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 15:19:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (625, IC-000695, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 14:08:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (626, IC-000696, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 14:19:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (627, IC-000697, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 14:24:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (628, IC-000698, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 14:30:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (629, IC-000699, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 16:38:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (630, IC-000700, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-08 19:37:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (631, IC-000701, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 18:04:29);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (632, IC-000702, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 17:12:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (633, IC-000703, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 15:08:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (634, IC-000704, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 15:11:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (635, IC-000705, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 17:11:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (636, IC-000706, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 17:10:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (637, IC-000707, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 12:10:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (638, IC-000708, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 17:27:50);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (639, IC-000709, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 16:42:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (640, IC-000710, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 19:18:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (641, IC-000711, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-11 12:15:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (642, IC-000712, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-11 13:35:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (643, IC-000713, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 18:06:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (644, IC-000714, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 17:31:01);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (645, IC-000715, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 18:04:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (646, IC-000716, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 18:01:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (647, IC-000717, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 17:50:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (648, IC-000718, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 12:05:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (649, IC-000719, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 11:56:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (650, IC-000720, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-11 14:21:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (651, IC-000721, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 13:34:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (652, IC-000722, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 10:12:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (653, IC-000723, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 13:37:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (654, IC-000724, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 13:28:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (655, IC-000725, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 13:12:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (656, IC-000726, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 13:12:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (657, IC-000727, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 12:29:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (658, IC-000728, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 12:05:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (659, IC-000729, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 18:08:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (660, IC-000730, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-10 18:17:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (661, IC-000731, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 14:41:59);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (662, IC-000732, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 14:44:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (663, IC-000733, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 14:50:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (664, IC-000734, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 15:25:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (665, IC-000735, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 16:53:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (666, IC-000736, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 17:05:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (667, IC-000737, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 14:42:27);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (668, IC-000738, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 17:49:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (669, IC-000739, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 14:40:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (670, IC-000740, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 13:41:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (671, IC-000741, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 19:01:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (672, IC-000742, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 13:26:54);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (673, IC-000743, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 13:36:41);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (674, IC-000744, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 13:39:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (675, IC-000745, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 11:18:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (676, IC-000746, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 09:57:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (677, IC-000747, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 09:50:58);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (678, IC-000748, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 13:19:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (679, IC-000749, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 19:08:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (680, IC-000750, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-12 18:06:42);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (681, IC-000751, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-14 15:52:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (682, IC-000752, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-14 16:07:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (683, IC-000753, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-14 15:51:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (684, IC-000754, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-14 14:36:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (685, IC-000755, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-14 13:51:10);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (686, IC-000756, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-14 15:56:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (687, IC-000757, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-14 12:49:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (688, IC-000758, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 20:18:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (689, IC-000759, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-14 08:59:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (690, IC-000760, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 19:20:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (691, IC-000761, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 14:27:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (692, IC-000762, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 14:31:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (693, IC-000763, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 15:33:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (694, IC-000764, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 14:33:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (695, IC-000765, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 19:16:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (696, IC-000766, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 16:10:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (697, IC-000767, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 16:20:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (698, IC-000768, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:15, 2018-11-13 15:41:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (699, IC-000769, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-13 15:43:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (700, IC-000770, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-13 14:40:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (701, IC-000771, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-14 19:43:11);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (702, IC-000772, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 12:22:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (703, IC-000773, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 12:18:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (704, IC-000774, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 12:24:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (705, IC-000775, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 10:49:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (706, IC-000776, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 13:22:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (707, IC-000777, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 12:57:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (708, IC-000778, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 13:12:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (709, IC-000779, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 13:35:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (710, IC-000780, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 13:21:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (711, IC-000781, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 13:52:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (712, IC-000782, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 13:56:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (713, IC-000783, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 15:19:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (714, IC-000784, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 19:21:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (715, IC-000785, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 15:38:05);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (716, IC-000786, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 17:08:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (717, IC-000787, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 16:35:18);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (718, IC-000788, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 17:11:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (719, IC-000789, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 14:34:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (720, IC-000790, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 15:02:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (721, IC-000791, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 18:56:25);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (722, IC-000792, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (723, IC-000793, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (724, IC-000794, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (725, IC-000795, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (726, IC-000796, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (727, IC-000797, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 19:23:46);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (728, IC-000798, 0.00, Y, Active, N, N, O, 2018-10-15 10:58:16, 2018-11-15 19:28:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (729, IC-000799, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (730, IC-000800, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (731, IC-000801, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (732, IC-000802, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (733, IC-000803, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (734, IC-000804, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (735, IC-000805, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (736, IC-000806, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (737, IC-000807, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (738, IC-000808, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (739, IC-000809, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (740, IC-000810, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (741, IC-000811, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (742, IC-000812, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (743, IC-000813, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (744, IC-000814, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (745, IC-000815, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (746, IC-000816, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (747, IC-000817, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (748, IC-000818, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (749, IC-000819, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (750, IC-000820, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (751, IC-000821, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (752, IC-000822, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (753, IC-000823, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (754, IC-000824, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (755, IC-000825, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (756, IC-000826, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (757, IC-000827, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (758, IC-000828, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (759, IC-000829, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (760, IC-000830, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (761, IC-000831, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (762, IC-000832, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (763, IC-000833, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (764, IC-000834, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (765, IC-000835, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (766, IC-000836, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (767, IC-000837, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (768, IC-000838, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (769, IC-000839, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (770, IC-000840, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (771, IC-000841, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (772, IC-000842, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (773, IC-000843, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (774, IC-000844, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (775, IC-000845, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (776, IC-000846, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (777, IC-000847, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (778, IC-000848, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (779, IC-000849, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (780, IC-000850, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (781, IC-000851, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (782, IC-000852, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (783, IC-000853, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (784, IC-000854, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (785, IC-000855, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (786, IC-000856, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (787, IC-000857, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (788, IC-000858, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (789, IC-000859, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (790, IC-000860, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (791, IC-000861, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (792, IC-000862, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (793, IC-000863, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (794, IC-000864, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (795, IC-000865, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (796, IC-000866, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (797, IC-000867, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (798, IC-000868, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (799, IC-000869, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (800, IC-000870, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (801, IC-000871, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (802, IC-000872, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (803, IC-000873, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (804, IC-000874, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (805, IC-000875, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (806, IC-000876, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (807, IC-000877, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (808, IC-000878, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (809, IC-000879, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (810, IC-000880, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (811, IC-000881, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (812, IC-000882, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (813, IC-000883, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (814, IC-000884, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (815, IC-000885, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (816, IC-000886, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (817, IC-000887, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (818, IC-000888, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (819, IC-000889, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (820, IC-000890, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (821, IC-000891, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (822, IC-000892, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (823, IC-000893, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (824, IC-000894, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (825, IC-000895, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (826, IC-000896, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (827, IC-000897, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (828, IC-000898, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (829, IC-000899, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (830, IC-000900, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (831, IC-000901, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (832, IC-000902, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (833, IC-000903, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (834, IC-000904, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (835, IC-000905, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (836, IC-000906, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (837, IC-000907, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (838, IC-000908, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (839, IC-000909, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (840, IC-000910, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (841, IC-000911, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (842, IC-000912, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (843, IC-000913, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (844, IC-000914, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (845, IC-000915, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (846, IC-000916, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (847, IC-000917, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (848, IC-000918, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (849, IC-000919, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (850, IC-000920, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (851, IC-000921, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (852, IC-000922, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (853, IC-000923, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (854, IC-000924, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (855, IC-000925, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (856, IC-000926, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (857, IC-000927, 0.00, N, Active, N, N, O, 2018-10-15 10:58:16, 2018-10-15 10:58:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (858, IC-000928, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (859, IC-000929, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (860, IC-000930, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (861, IC-000931, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (862, IC-000932, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (863, IC-000933, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (864, IC-000934, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (865, IC-000935, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (866, IC-000936, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (867, IC-000937, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (868, IC-000938, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (869, IC-000939, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (870, IC-000940, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (871, IC-000941, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (872, IC-000942, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (873, IC-000943, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (874, IC-000944, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (875, IC-000945, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (876, IC-000946, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (877, IC-000947, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (878, IC-000948, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (879, IC-000949, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (880, IC-000950, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (881, IC-000951, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (882, IC-000952, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (883, IC-000953, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (884, IC-000954, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (885, IC-000955, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (886, IC-000956, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (887, IC-000957, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (888, IC-000958, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (889, IC-000959, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (890, IC-000960, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (891, IC-000961, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (892, IC-000962, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (893, IC-000963, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (894, IC-000964, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (895, IC-000965, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (896, IC-000966, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (897, IC-000967, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (898, IC-000968, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (899, IC-000969, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (900, IC-000970, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (901, IC-000971, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (902, IC-000972, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (903, IC-000973, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (904, IC-000974, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (905, IC-000975, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (906, IC-000976, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (907, IC-000977, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (908, IC-000978, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (909, IC-000979, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (910, IC-000980, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (911, IC-000981, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (912, IC-000982, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (913, IC-000983, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (914, IC-000984, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (915, IC-000985, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (916, IC-000986, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (917, IC-000987, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (918, IC-000988, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (919, IC-000989, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (920, IC-000990, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (921, IC-000991, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (922, IC-000992, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-11-08 14:01:35);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (923, IC-000993, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (924, IC-000994, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (925, IC-000995, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (926, IC-000996, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (927, IC-000997, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (928, IC-000998, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (929, IC-000999, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (930, IC-001000, 0.00, N, Active, N, N, O, 2018-10-15 10:58:17, 2018-10-15 10:58:17);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (931, IC-000177, 0.00, Y, Active, N, N, O, 2018-10-16 09:45:35, 2018-10-22 13:52:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (932, IC-000262, 0.00, Y, Active, N, N, O, 2018-10-16 09:49:28, 2018-10-17 10:15:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (933, IC-000263, 0.00, Y, Active, N, N, O, 2018-10-16 09:49:49, 2018-10-19 16:12:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (934, IC-000264, 0.00, Y, Active, N, N, O, 2018-10-16 09:50:07, 2018-10-17 13:17:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (935, IC-000265, 0.00, Y, Active, N, N, O, 2018-10-16 09:50:42, 2018-10-19 11:42:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (936, IC-000266, 0.00, Y, Active, N, N, O, 2018-10-16 09:50:56, 2018-10-22 15:09:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (937, IC-000267, 0.00, Y, Active, N, N, O, 2018-10-16 09:51:12, 2018-10-17 13:15:33);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (938, IC-000268, 0.00, Y, Active, N, N, O, 2018-10-16 09:51:35, 2018-10-17 13:18:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (939, IC-000269, 0.00, Y, Active, N, N, O, 2018-10-16 09:51:54, 2018-10-22 09:46:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (940, IC-000270, 0.00, Y, Active, N, N, O, 2018-10-16 09:52:09, 2018-10-22 15:29:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (941, IC-000251, 0.00, Y, Active, N, N, O, 2018-10-16 09:52:55, 2018-10-19 16:32:22);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (942, IC-000252, 0.00, Y, Active, N, N, O, 2018-10-16 09:53:20, 2018-10-19 14:49:30);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (943, IC-000253, 0.00, Y, Active, N, N, O, 2018-10-16 09:53:44, 2018-10-19 14:00:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (944, IC-000254, 0.00, Y, Active, N, N, O, 2018-10-16 09:54:03, 2018-10-19 16:21:23);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (945, IC-000255, 0.00, Y, Active, N, N, O, 2018-10-16 09:54:23, 2018-10-19 16:27:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (946, IC-000256, 0.00, Y, Active, N, N, O, 2018-10-16 09:54:52, 2018-10-19 16:29:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (947, IC-000257, 0.00, Y, Active, N, N, O, 2018-10-16 09:55:08, 2018-10-19 14:03:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (948, IC-000258, 0.00, Y, Active, N, N, O, 2018-10-16 09:55:21, 2018-10-19 12:09:19);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (949, IC-000259, 0.00, Y, Active, N, N, O, 2018-10-16 09:55:39, 2018-10-20 14:18:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (950, IC-000260, 0.00, Y, Active, N, N, O, 2018-10-16 09:55:55, 2018-10-19 14:15:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (951, IC-000271, 0.00, Y, Active, N, N, O, 2018-10-16 09:57:20, 2018-10-20 14:21:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (952, IC-000272, 0.00, Y, Active, N, N, O, 2018-10-16 09:57:33, 2018-10-20 12:25:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (953, IC-000274, 0.00, Y, Active, N, N, O, 2018-10-16 09:57:48, 2018-10-18 16:37:34);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (954, IC-000275, 0.00, Y, Active, N, N, O, 2018-10-16 09:58:04, 2018-10-22 12:46:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (955, IC-000280, 0.00, Y, Active, N, N, O, 2018-10-16 09:58:26, 2018-10-18 18:25:16);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (956, IC-000279, 0.00, Y, Active, N, N, O, 2018-10-16 09:58:41, 2018-10-18 18:10:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (957, IC-000278, 0.00, Y, Active, N, N, O, 2018-10-16 09:58:54, 2018-10-16 17:09:08);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (958, IC-000276, 0.00, Y, Active, N, N, O, 2018-10-16 09:59:23, 2018-10-18 14:21:02);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (959, IC-000277, 0.00, Y, Active, N, N, O, 2018-10-16 09:59:49, 2018-10-20 15:57:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (960, IC-000284, 0.00, Y, Active, N, N, O, 2018-10-16 10:08:16, 2018-10-20 12:22:00);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (961, IC-000285, 0.00, Y, Active, N, N, O, 2018-10-16 10:08:24, 2018-10-18 17:42:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (962, IC-000286, 0.00, Y, Active, N, N, O, 2018-10-16 10:08:36, 2018-10-18 11:48:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (963, IC-000289, 0.00, Y, Active, N, N, O, 2018-10-16 10:08:56, 2018-10-16 15:10:09);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (964, IC-000290, 0.00, Y, Active, N, N, O, 2018-10-16 10:09:30, 2018-10-16 12:12:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (965, IC-000302, 0.00, Y, Active, N, N, O, 2018-10-16 10:10:44, 2018-10-22 13:59:39);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (966, IC-000303, 0.00, Y, Active, N, N, O, 2018-10-16 10:10:53, 2018-10-18 12:38:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (967, IC-000304, 0.00, Y, Active, N, N, O, 2018-10-16 10:11:05, 2018-10-22 12:50:06);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (968, IC-000305, 0.00, Y, Active, N, N, O, 2018-10-16 10:11:19, 2018-10-16 17:36:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (969, IC-000307, 0.00, Y, Active, N, N, O, 2018-10-16 10:11:43, 2018-10-20 12:23:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (970, IC-000308, 0.00, Y, Active, N, N, O, 2018-10-16 10:12:06, 2018-10-17 10:42:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (971, IC-000310, 0.00, Y, Active, N, N, O, 2018-10-16 10:12:35, 2018-10-16 13:41:36);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (972, IC-000291, 0.00, Y, Active, N, N, O, 2018-10-16 10:14:49, 2018-10-18 16:17:38);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (973, IC-000292, 0.00, Y, Active, N, N, O, 2018-10-16 10:15:03, 2018-10-19 11:39:15);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (974, IC-000293, 0.00, Y, Active, N, N, O, 2018-10-16 10:15:14, 2018-10-20 12:10:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (975, IC-000294, 0.00, Y, Active, N, N, O, 2018-10-16 10:15:22, 2018-10-20 16:48:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (976, IC-000295, 0.00, Y, Active, N, N, O, 2018-10-16 10:15:36, 2018-10-19 17:59:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (977, IC-000296, 0.00, Y, Active, N, N, O, 2018-10-16 10:15:53, 2018-10-17 14:31:32);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (978, IC-000297, 0.00, Y, Active, N, N, O, 2018-10-16 10:16:39, 2018-10-19 18:07:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (979, IC-000298, 0.00, Y, Active, N, N, O, 2018-10-16 10:16:49, 2018-10-19 17:34:03);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (980, IC-000299, 0.00, Y, Active, N, N, O, 2018-10-16 10:16:59, 2018-10-17 10:47:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (981, IC-000300, 0.00, Y, Active, N, N, O, 2018-10-16 10:17:27, 2018-10-16 16:08:37);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (982, IC-000312, 0.00, Y, Active, N, N, O, 2018-10-16 10:18:08, 2018-10-22 10:20:53);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (983, IC-000317, 0.00, Y, Active, N, N, O, 2018-10-16 10:18:15, 2018-10-22 13:05:56);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (984, IC-000313, 0.00, Y, Active, N, N, O, 2018-10-16 10:19:21, 2018-10-19 17:39:31);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (985, IC-000314, 0.00, Y, Active, N, N, O, 2018-10-16 10:19:33, 2018-10-20 15:17:51);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (986, IC-000315, 0.00, Y, Active, N, N, O, 2018-10-16 10:19:40, 2018-10-17 13:25:12);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (987, IC-000316, 0.00, Y, Active, N, N, O, 2018-10-16 10:19:50, 2018-10-16 13:52:44);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (988, IC-000318, 0.00, Y, Active, N, N, O, 2018-10-16 10:20:06, 2018-10-20 12:24:24);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (989, IC-000319, 0.00, Y, Active, N, N, O, 2018-10-16 10:20:13, 2018-10-19 14:20:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (990, IC-000320, 0.00, Y, Active, N, N, O, 2018-10-16 10:20:23, 2018-10-18 12:51:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (991, IC-000321, 0.00, Y, Active, N, N, O, 2018-10-16 10:20:59, 2018-10-17 15:34:13);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (992, IC-000322, 0.00, Y, Active, N, N, O, 2018-10-16 10:21:06, 2018-10-16 17:42:45);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (993, IC-000323, 0.00, Y, Active, N, N, O, 2018-10-16 10:21:15, 2018-10-16 14:59:47);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (994, IC-000324, 0.00, Y, Active, N, N, O, 2018-10-16 10:21:21, 2018-10-18 18:41:52);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (995, IC-000325, 0.00, Y, Active, N, N, O, 2018-10-16 10:21:30, 2018-10-20 16:57:04);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (996, IC-000328, 0.00, Y, Active, N, N, O, 2018-10-16 10:21:44, 2018-10-18 18:13:55);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (997, IC-000329, 0.00, Y, Active, N, N, O, 2018-10-16 10:21:57, 2018-10-17 12:35:40);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (998, IC-000331, 0.00, Y, Active, N, N, O, 2018-10-16 10:22:18, 2018-10-18 16:44:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (999, IC-000332, 0.00, N, Active, Y, N, O, 2018-10-16 10:22:28, 2018-11-08 19:37:14);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1000, IC-000340, 0.00, Y, Active, N, N, O, 2018-10-16 16:54:46, 2018-10-17 13:43:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1001, IC-000349, 0.00, Y, Active, N, N, O, 2018-10-19 11:43:12, 2018-10-19 11:52:26);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1002, IC-000347, 0.00, Y, Active, N, N, O, 2018-10-22 10:10:56, 2018-10-22 10:18:20);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1003, IC-000341, 0.00, Y, Active, N, N, O, 2018-10-22 10:22:44, 2018-10-22 11:58:57);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1004, IC-000334, 0.00, Y, Active, N, N, O, 2018-10-22 10:23:09, 2018-10-22 11:53:21);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1005, IC-000326, 0.00, Y, Active, N, N, O, 2018-10-22 11:49:28, 2018-10-22 11:52:07);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1006, IC-000338, 0.00, Y, Active, N, N, O, 2018-10-22 12:00:37, 2018-10-22 12:07:48);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1007, IC-000350, 0.00, Y, Active, N, N, O, 2018-10-22 13:03:26, 2018-10-22 13:22:28);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1008, IC-000339, 0.00, Y, Active, N, N, O, 2018-10-22 17:53:55, 2018-10-22 17:54:49);
INSERT INTO `eco_cards` (`id`, `card_no`, `curr_balance`, `occupied`, `card_stat`, `lost`, `demaged`, `record_stat`, `date_registered`, `date_updated`) VALUES (1009, IC-000335, 0.00, Y, Active, N, N, O, 2018-10-23 08:11:01, 2018-10-23 14:21:55);


#
# TABLE STRUCTURE FOR: eco_commands_incoming
#

DROP TABLE IF EXISTS `eco_commands_incoming`;

CREATE TABLE `eco_commands_incoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msisdn` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `code_processed` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1, NULL, 255754510366, Test SMS, , 2018-09-30 20:00:45, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (2, NULL, 255754510366, Testing, , 2018-09-30 20:00:45, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (3, NULL, 255766978710, 0754510366 OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (4, NULL, 255766978710, 1>>Card:198545.11
Cash:56722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (5, NULL, 255766978710, 2>>Card:201330.83
Cash:98461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (6, NULL, 255766978710, 1>>Card:198545.11
Cash:56722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (7, NULL, 255766978710, 2>>Card:201330.83
Cash:98461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (8, NULL, 255766978710, 1>>Card:198545.11
Cash:56722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (9, NULL, 255766978710, 2>>Card:201330.83
Cash:98461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (10, NULL, 255766978710, 1>>Card:198545.11
Cash:56722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (11, NULL, 255766978710, 2>>Card:201330.83
Cash:98461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (12, NULL, 255766978710, shutdown OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (13, NULL, 255766978710, MC# Power Off
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (14, NULL, 255766978710, start OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (15, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (16, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (17, NULL, 255766978710, shutdown OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (18, NULL, 255766978710, MC# Power Off
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (19, NULL, 255766978710, 0754510366 OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (20, NULL, AIRTEL, UNI OFA! Pata Bando lako la Chuo linalokupa Dakika kibao, MB na SMS. Piga *149*99# kisha chagua 7 UNI OFA, , 2018-09-30 20:00:45, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (21, NULL, 255766978710, 1>>Card:203058.25
Cash:57972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (22, NULL, 255766978710, 2>>Card:206397.75
Cash:107061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (23, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (24, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (25, NULL, 255766978710, 1>>Card:203058.25
Cash:58472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (26, NULL, 255766978710, 2>>Card:206397.75
Cash:107561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (27, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (28, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (29, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (30, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (31, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (32, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (33, NULL, 255766978710, 1>>Card:203508.70
Cash:58722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (34, NULL, 255766978710, 2>>Card:206696.15
Cash:108911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (35, NULL, 255766978710, 1>>Card:203508.70
Cash:58922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (36, NULL, 255766978710, 2>>Card:207296.15
Cash:111561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (37, NULL, 255766978710, 1>>Card:203508.70
Cash:58922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (38, NULL, 255766978710, 2>>Card:207296.15
Cash:111561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (47, NULL, 255766978710, 1>>Card:203771.13
Cash:59122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (48, NULL, 255766978710, 2>>Card:207489.27
Cash:111961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (49, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (50, NULL, 255766978710, 1>>Card:203771.13
Cash:59122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (51, NULL, 255766978710, 2>>Card:207489.27
Cash:112161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (52, NULL, 255766978710, 1>>Card:203971.13
Cash:59122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (53, NULL, 255766978710, 2>>Card:207489.27
Cash:112361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (54, NULL, 255766978710, 1>>Card:203971.13
Cash:59122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (55, NULL, 255766978710, 2>>Card:207489.27
Cash:112361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (56, NULL, 255766978710, 1>>Card:203971.13
Cash:59122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (57, NULL, 255766978710, 2>>Card:207489.27
Cash:112361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (58, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (59, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (60, NULL, 255766978710, 1>>Card:204124.62
Cash:59222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (61, NULL, 255766978710, 2>>Card:207969.57
Cash:113861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (62, NULL, 255766978710, 1>>Card:204241.25
Cash:59722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (63, NULL, 255766978710, 2>>Card:208769.57
Cash:116161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (64, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (65, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (66, NULL, 255766978710, 1>>Card:205739.08
Cash:60022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (67, NULL, 255766978710, 2>>Card:212636.25
Cash:117511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (68, NULL, 255766978710, 1>>Card:205956.96
Cash:60022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (69, NULL, 255766978710, 2>>Card:212758.55
Cash:117611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (70, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (71, NULL, 255766978710, 1>>Card:206576.82
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (72, NULL, 255766978710, 2>>Card:214158.55
Cash:120161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (73, NULL, 255766978710, 1>>Card:206576.82
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (74, NULL, 255766978710, 2>>Card:214158.55
Cash:120161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (75, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (76, NULL, 255766978710, 1>>Card:206576.82
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (77, NULL, 255766978710, 2>>Card:214158.55
Cash:120161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (78, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (79, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (80, NULL, 255766978710, 1>>Card:206576.82
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (81, NULL, 255766978710, 2>>Card:214158.55
Cash:120161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (82, NULL, 255766978710, 1>>Card:206576.82
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (83, NULL, 255766978710, 2>>Card:214158.55
Cash:120461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (84, NULL, 255766978710, 1>>Card:206639.40
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (85, NULL, 255766978710, 2>>Card:214389.84
Cash:120461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (86, NULL, 255766978710, 1>>Card:206639.40
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (87, NULL, 255766978710, 2>>Card:214786.83
Cash:121161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (88, NULL, 255766978710, 1>>Card:206924.77
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (89, NULL, 255766978710, 2>>Card:214786.83
Cash:122061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (90, NULL, 255766978710, 1>>Card:206924.77
Cash:60922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (91, NULL, 255766978710, 2>>Card:215059.24
Cash:122261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (92, NULL, AIRTEL, Angalia muvi ya Geto la Uswazi ndani ya Kwese iflix. Bofya http://bit.ly/2w9c0FD ufurahie. Piga *149*98# kununua bando upate dabo!, AngaliamuviyaGetolaUswazindaniyaKweseiflix.Bo, 2018-10-02 11:59:00, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (93, NULL, 255766978710, 1>>Card:208481.60
Cash:61822.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (94, NULL, 255766978710, 2>>Card:217547.06
Cash:126661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (95, NULL, 255766978710, 1>>Card:208481.60
Cash:61972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (96, NULL, 255766978710, 2>>Card:217547.06
Cash:126911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (97, NULL, 255766978710, 1>>Card:208481.60
Cash:61972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (98, NULL, 255766978710, 2>>Card:217547.06
Cash:126911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (99, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (100, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (101, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (102, NULL, 255766978710, 1>>Card:208481.60
Cash:62172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (103, NULL, 255766978710, 2>>Card:217747.06
Cash:127411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (104, NULL, 255766978710, 1>>Card:208820.07
Cash:62172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (105, NULL, 255766978710, 2>>Card:217747.06
Cash:127411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (106, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (107, NULL, AIRTEL, Angalia muvi ya Geto la Uswazi ndani ya Kwese iflix. Bofya http://bit.ly/2w9c0FD ufurahie. Piga *149*98# kununua bando upate dabo!, AngaliamuviyaGetolaUswazindaniyaKweseiflix.Bo, 2018-10-03 09:54:39, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (108, NULL, 255766978710, 1>>Card:209128.76
Cash:62172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (109, NULL, 255766978710, 2>>Card:218029.36
Cash:128961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (110, NULL, 255766978710, 1>>Card:210100.49
Cash:62872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (111, NULL, 255766978710, 2>>Card:219208.22
Cash:131611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (112, NULL, 255766978710, 1>>Card:210100.49
Cash:62872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (113, NULL, 255766978710, 2>>Card:220545.71
Cash:132611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (114, NULL, 255766978710, 1>>Card:210364.31
Cash:62922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (115, NULL, 255766978710, 2>>Card:220545.71
Cash:132811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (116, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (117, NULL, 255766978710, 1>>Card:210364.31
Cash:62922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (118, NULL, 255766978710, 2>>Card:221328.67
Cash:132911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (119, NULL, 255766978710, 1>>Card:210893.84
Cash:62972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (120, NULL, 255766978710, 2>>Card:222128.67
Cash:133511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (121, NULL, 255766978710, 1>>Card:215797.97
Cash:63122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (122, NULL, 255766978710, 2>>Card:228818.37
Cash:137411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (123, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (124, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (125, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (126, NULL, 255766978710, 1>>Card:216243.63
Cash:63922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (127, NULL, 255766978710, 2>>Card:230446.36
Cash:139211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (128, NULL, 255766978710, 1>>Card:216243.63
Cash:63922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (129, NULL, 255766978710, 2>>Card:231110.28
Cash:139211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (130, NULL, 255766978710, 1>>Card:216643.63
Cash:63922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (131, NULL, 255766978710, 2>>Card:231110.28
Cash:139211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (132, NULL, 255766978710, 1>>Card:216643.63
Cash:63922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (133, NULL, 255766978710, 2>>Card:231310.28
Cash:139211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (134, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (135, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (136, NULL, AIRTEL, Angalia muvi ya Geto la Uswazi ndani ya Kwese iflix. Bofya http://bit.ly/2w9c0FD ufurahie. Piga *149*98# kununua bando upate dabo!, AngaliamuviyaGetolaUswazindaniyaKweseiflix.Bo, 2018-10-05 10:22:24, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (137, NULL, 255766978710, 1>>Card:216758.77
Cash:64122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (138, NULL, 255766978710, 2>>Card:232437.48
Cash:141911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (139, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (140, NULL, 255766978710, 1>>Card:216958.77
Cash:64122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (141, NULL, 255766978710, 2>>Card:233597.01
Cash:143211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (142, NULL, 255766978710, 1>>Card:217666.96
Cash:64272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (143, NULL, 255766978710, 2>>Card:234729.43
Cash:145811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (144, NULL, 255766978710, 1>>Card:217666.96
Cash:64472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (145, NULL, 255766978710, 2>>Card:235060.64
Cash:146711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (146, NULL, 255766978710, 1>>Card:217666.96
Cash:64472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (147, NULL, 255766978710, 2>>Card:235060.64
Cash:146911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (148, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (149, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (150, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (151, NULL, 255766978710, 1>>Card:217666.96
Cash:64472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (152, NULL, 255766978710, 2>>Card:235060.64
Cash:147311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (153, NULL, 255766978710, 1>>Card:217666.96
Cash:64472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (154, NULL, 255766978710, 2>>Card:235060.64
Cash:147311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (155, NULL, 255766978710, 1>>Card:217666.96
Cash:64472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (156, NULL, 255766978710, 2>>Card:235060.64
Cash:147511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (157, NULL, 255766978710, 1>>Card:222951.48
Cash:66322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (158, NULL, 255766978710, 2>>Card:235708.93
Cash:154661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (159, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (160, NULL, 255766978710, 1>>Card:223151.48
Cash:66522.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (161, NULL, 255766978710, 2>>Card:236407.79
Cash:154961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (162, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (163, NULL, 255766978710, 1>>Card:223151.48
Cash:66772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (164, NULL, 255766978710, 2>>Card:236407.79
Cash:155161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (165, NULL, 255766978710, 1>>Card:223151.48
Cash:67022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (166, NULL, 255766978710, 2>>Card:236807.79
Cash:160011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (167, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (168, NULL, 255766978710, 1>>Card:223351.48
Cash:67072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (169, NULL, 255766978710, 2>>Card:236807.79
Cash:164011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (170, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (171, NULL, 255766978710, 1>>Card:223664.64
Cash:67072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (172, NULL, 255766978710, 2>>Card:237007.79
Cash:164411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (173, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-08 09:41:18, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (174, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (175, NULL, 255766978710, MC1# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (176, NULL, 255766978710, 1>>Card:225864.64
Cash:67472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (177, NULL, 255766978710, 2>>Card:238289.46
Cash:165611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (178, NULL, 255766978710, 1>>Card:226491.23
Cash:68372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (179, NULL, 255766978710, 2>>Card:241128.13
Cash:168311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (180, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (181, NULL, 255766978710, 1>>Card:226491.23
Cash:68472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (182, NULL, 255766978710, 2>>Card:243219.72
Cash:169461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (183, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (184, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (185, NULL, 255766978710, 1>>Card:226657.25
Cash:68722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (186, NULL, 255766978710, 2>>Card:243781.56
Cash:170961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (187, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (188, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-09 08:54:22, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (189, NULL, 255766978710, 1>>Card:227363.95
Cash:68722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (190, NULL, 255766978710, 2>>Card:246146.09
Cash:172661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (191, NULL, 255766978710, 1>>Card:227363.95
Cash:68722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (192, NULL, 255766978710, 2>>Card:246146.09
Cash:172661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (193, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (194, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (195, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (196, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (197, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (198, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (199, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (200, NULL, 255766978710, MC1# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (201, NULL, 255766978710, 1>>Card:228332.97
Cash:69022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (202, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (203, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (204, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (205, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (206, NULL, 255766978710, MC1# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (207, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (208, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (209, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-10 09:00:44, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (210, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (211, NULL, 255766978710, 1>>Card:229713.44
Cash:71772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (212, NULL, 255766978710, 2>>Card:251312.16
Cash:180911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (213, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (214, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (215, NULL, 255766978710, 1>>Card:229804.26
Cash:71872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (216, NULL, 255766978710, 2>>Card:251787.11
Cash:182311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (217, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (218, NULL, 255766978710, 1>>Card:229804.26
Cash:72122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (219, NULL, 255766978710, 2>>Card:252525.97
Cash:182311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (220, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (221, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-11 08:58:39, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (222, NULL, 255766978710, 1>>Card:229804.26
Cash:72122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (223, NULL, 255766978710, 2>>Card:252525.97
Cash:182611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (224, NULL, AIRTEL, Mambo, Piga *149*29# sasa kupata mwito mzuri wa simu yako uwaburudishe wanaokupigia wakati wote, Mambo,Piga*149*29#sasakupatamwitomzuriwasimuy, 2018-10-11 13:28:22, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (225, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (226, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (227, NULL, 255766978710, 1>>Card:230884.04
Cash:73172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (228, NULL, 255766978710, 2>>Card:257901.02
Cash:184911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (229, NULL, 255766978710, 1>>Card:230884.04
Cash:73722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (230, NULL, 255766978710, 2>>Card:259501.02
Cash:186961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (231, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (232, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-12 09:02:28, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (233, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (234, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (235, NULL, 255766978710, 1>>Card:232440.87
Cash:73972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (236, NULL, 255766978710, 2>>Card:259501.02
Cash:186961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (237, NULL, 255766978710, MC2# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (238, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (239, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (240, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (241, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (242, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (243, NULL, 255766978710, 1>>Card:233398.37
Cash:74472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (244, NULL, 255766978710, 2>>Card:262661.79
Cash:187711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (245, NULL, 255766978710, 1>>Card:239248.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (246, NULL, 255766978710, 2>>Card:265492.15
Cash:188311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (247, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (248, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (249, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (250, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (251, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (252, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (253, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (254, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (255, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (256, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (257, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (258, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (259, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (260, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-13 11:02:58, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (261, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (262, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (263, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (264, NULL, 255766978710, MC1# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (265, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (266, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (267, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (268, NULL, 255766978710, 1>>Card:239248.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (269, NULL, 255766978710, 2>>Card:266071.96
Cash:188511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (270, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (271, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (272, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (273, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (274, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (275, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (276, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (277, NULL, 255766978710, MC1# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (278, NULL, 255766978710, 1>>Card:239448.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (279, NULL, 255766978710, 2>>Card:271210.07
Cash:189511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (280, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (281, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (282, NULL, 255766978710, 1>>Card:239448.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (283, NULL, 255766978710, 2>>Card:272586.17
Cash:190111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (284, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (285, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (286, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (287, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (288, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (289, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (290, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (291, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (292, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (293, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (294, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (295, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (296, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (297, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (298, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (299, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (300, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (301, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (302, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (303, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (304, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (305, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (306, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (307, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (308, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (309, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (310, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (311, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (312, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (313, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (314, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (315, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (316, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (317, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (318, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (319, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (320, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (321, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (322, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (323, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (324, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (325, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (326, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (327, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (328, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (329, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (330, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (331, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (332, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (333, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (334, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (335, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (336, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (337, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (338, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (339, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (340, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (341, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (342, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (343, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (344, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (345, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (346, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (347, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (348, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (349, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (350, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (351, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (352, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (353, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (354, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (355, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (356, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (357, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (358, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (359, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (360, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (361, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (362, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (363, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (364, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (365, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (366, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (367, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (368, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (369, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (370, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (371, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (372, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (373, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (374, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (375, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (376, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (377, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (378, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (379, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (380, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (381, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (382, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (383, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (384, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (385, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (386, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (387, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (388, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (389, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (390, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (391, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (392, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (393, NULL, 255766978710, 2>>Card:272586.17
Cash:190111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (394, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (395, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (396, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (397, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (398, NULL, 255766978710, 1>>Card:239848.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (399, NULL, 255766978710, 2>>Card:273186.17
Cash:190111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (400, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (401, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (402, NULL, 255766978710, 1>>Card:239848.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (403, NULL, 255766978710, 2>>Card:273186.17
Cash:190111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (404, NULL, 255766978710, 1>>Card:239848.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (405, NULL, 255766978710, 2>>Card:274519.05
Cash:190111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (406, NULL, 255766978710, 1>>Card:239848.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (407, NULL, 255766978710, 2>>Card:274919.05
Cash:190111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (408, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (409, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (410, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (411, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (412, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (413, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (414, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (415, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (416, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (417, NULL, 255766978710, 2>>Card:274919.05
Cash:190211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (418, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (419, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (420, NULL, 255766978710, 1>>Card:239848.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (421, NULL, 255766978710, 2>>Card:274919.05
Cash:190211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (422, NULL, 255766978710, 1>>Card:239848.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (423, NULL, 255766978710, 2>>Card:274919.05
Cash:190211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (424, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (425, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (426, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (427, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (428, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (429, NULL, 255766978710, 2>>Card:274919.05
Cash:190211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (430, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (431, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (432, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (433, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (434, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (435, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (436, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (437, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (438, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (439, NULL, 255766978710, 2>>Card:274919.05
Cash:190211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (440, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (441, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (442, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (443, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (444, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (445, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (446, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (447, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (448, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (449, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (450, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (451, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (452, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (453, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (454, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (455, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (456, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (457, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (458, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (459, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (460, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (461, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (462, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (463, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (464, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (465, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (466, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (467, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (468, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (469, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (470, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (471, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (472, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (473, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (474, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (475, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (476, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (477, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (478, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (479, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (480, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (481, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (482, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (483, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (484, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (485, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (486, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (487, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (488, NULL, AIRTEL, Pata dakika 20 kwa SH1,000/= kupiga India,China, Marekani na Canada Piga *149*13# endelea kufurahia kupiga simu katika nchi nyingi zaidi ya 20 kwa bei nafuu., Patadakika20kwaSH1,000/=kupigaIndia,China,Mar, 2018-10-15 09:19:04, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (489, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-15 09:19:06, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (490, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (491, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (492, NULL, 255766978710, 1>>Card:239848.55
Cash:74972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (493, NULL, 255766978710, 2>>Card:275239.01
Cash:190511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (494, NULL, 255766978710, 1>>Card:240448.11
Cash:75122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (495, NULL, 255766978710, 2>>Card:278383.06
Cash:190511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (496, NULL, 255766978710, 1>>Card:242503.59
Cash:75622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (497, NULL, 255766978710, 2>>Card:279722.34
Cash:191511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (498, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (499, NULL, 255766978710, 1>>Card:243332.38
Cash:75922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (500, NULL, 255766978710, 2>>Card:280053.84
Cash:191611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (501, NULL, 255766978710, 1>>Card:245792.87
Cash:76522.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (502, NULL, 255766978710, 2>>Card:282123.54
Cash:192311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (503, NULL, 255766978710, 1>>Card:246548.71
Cash:76772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (504, NULL, 255766978710, 2>>Card:282777.80
Cash:192511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (505, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (506, NULL, 255766978710, 1>>Card:246548.71
Cash:76772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (507, NULL, 255766978710, 2>>Card:282977.80
Cash:192511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (508, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-16 09:38:03, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (509, NULL, 255766978710, 1>>Card:247148.71
Cash:76822.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (510, NULL, 255766978710, 2>>Card:284355.28
Cash:192711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (511, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (512, NULL, 255766978710, 1>>Card:250763.87
Cash:77172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (513, NULL, 255766978710, 2>>Card:289344.97
Cash:195011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (514, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (515, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (516, NULL, 255766978710, 1>>Card:252932.54
Cash:77872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (517, NULL, 255766978710, 2>>Card:290099.01
Cash:195211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (518, NULL, 255766978710, 1>>Card:252932.54
Cash:77872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (519, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (520, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-17 09:32:13, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (521, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (522, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (523, NULL, 255766978710, 1>>Card:253132.54
Cash:77872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (524, NULL, 255766978710, 2>>Card:290299.01
Cash:195211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (525, NULL, AIRTEL, Jiimarishe kiimani kwa mistari ya dini na upate kubarikiwa.Tuma neno INJILI kwenda 15640 kwa mistari ya biblia au tuma ISLAM kwenda 15640 kwa mistari ya Quran, Jiimarishekiimanikwamistariyadininaupatekubar, 2018-10-17 11:26:56, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (526, NULL, 255766978710, 1>>Card:256526.82
Cash:78772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (527, NULL, 255766978710, 2>>Card:292294.72
Cash:195211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (528, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (529, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (530, NULL, 255766978710, 1>>Card:258935.72
Cash:79422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (531, NULL, 255766978710, 2>>Card:294589.73
Cash:195311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (532, NULL, 255766978710, 1>>Card:260687.58
Cash:79472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (533, NULL, 255766978710, 2>>Card:296310.24
Cash:195511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (534, NULL, 255766978710, 1>>Card:261687.58
Cash:79572.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (535, NULL, 255766978710, 2>>Card:296416.91
Cash:195611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (536, NULL, 255766978710, 1>>Card:263887.58
Cash:79972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (537, NULL, 255766978710, 2>>Card:297093.65
Cash:196211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (538, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (539, NULL, 255766978710, 1>>Card:264487.58
Cash:80672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (540, NULL, 255766978710, 2>>Card:297693.65
Cash:196411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (541, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (542, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (543, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (544, NULL, 255766978710, 1>>Card:264487.58
Cash:80672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (545, NULL, 255766978710, 2>>Card:297693.65
Cash:196611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (546, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-18 09:08:23, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (547, NULL, 255766978710, 1>>Card:264487.58
Cash:80672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (548, NULL, 255766978710, 2>>Card:297893.65
Cash:196611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (549, NULL, AIRTEL, OFA! Je unataka kuongeza faida ya Biashara yako, pata vidokezo muhimu kwa siku7 BURE. Tuma FEDHA kwenda 15610 sasa! Baada ya ofa, jiunge kwa Sh200 tu kwa siku, OFA!JeunatakakuongezafaidayaBiasharayako,pata, 2018-10-18 11:56:06, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (550, NULL, 255766978710, 1>>Card:264811.54
Cash:80922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (551, NULL, 255766978710, 2>>Card:299148.37
Cash:196811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (552, NULL, 255766978710, 1>>Card:265892.94
Cash:81172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (553, NULL, 255766978710, 2>>Card:300334.69
Cash:197111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (554, NULL, 255766978710, 1>>Card:267670.16
Cash:81722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (555, NULL, 255766978710, 2>>Card:302322.55
Cash:197311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (556, NULL, 255766978710, 1>>Card:268325.85
Cash:82372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (557, NULL, 255766978710, 2>>Card:302528.07
Cash:197311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (558, NULL, 255766978710, 1>>Card:268325.85
Cash:82372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (559, NULL, 255766978710, 2>>Card:302528.07
Cash:197311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (560, NULL, 255766978710, 1>>Card:269125.85
Cash:82672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (561, NULL, 255766978710, 2>>Card:303669.22
Cash:197811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (562, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (563, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (564, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (565, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (566, NULL, 255766978710, 1>>Card:269125.85
Cash:82672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (567, NULL, 255766978710, 2>>Card:303669.22
Cash:197811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (568, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-19 09:23:01, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (569, NULL, 255766978710, 1>>Card:269125.85
Cash:82672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (570, NULL, 255766978710, 2>>Card:303812.67
Cash:197811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (571, NULL, 255766978710, 2>>Card:305924.40
Cash:198461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (572, NULL, 255766978710, 1>>Card:270744.62
Cash:82972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (573, NULL, 255766978710, 1>>Card:272086.11
Cash:83372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (574, NULL, 255766978710, 2>>Card:307903.26
Cash:199361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (575, NULL, 255766978710, MC1#
On Sell
Lack Water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (576, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (577, NULL, 255766978710, 1>>Card:272835.49
Cash:83472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (578, NULL, 255766978710, 2>>Card:309240.60
Cash:200361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (579, NULL, 255766978710, 1>>Card:273454.80
Cash:83772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (580, NULL, 255766978710, 2>>Card:310135.45
Cash:200861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (581, NULL, 255766978710, 1>>Card:276420.59
Cash:84072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (582, NULL, 255766978710, 2>>Card:311811.79
Cash:203061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (583, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (584, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (585, NULL, 255766978710, 1>>Card:277223.07
Cash:84322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (586, NULL, 255766978710, 2>>Card:313164.85
Cash:203061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (587, NULL, 255766978710, 1>>Card:277223.07
Cash:84322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (588, NULL, 255766978710, 2>>Card:313504.63
Cash:203061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (589, NULL, 255766978710, shutdown OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (590, NULL, 255766978710, start OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (591, NULL, 255766978710, 1>>Card:277827.66
Cash:84322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (592, NULL, 255766978710, 2>>Card:314239.02
Cash:203061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (593, NULL, 255766978710, shutdown OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (594, NULL, 255766978710, start OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (595, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (596, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (597, NULL, 255766978710, 1>>Card:277827.66
Cash:84322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (598, NULL, 255766978710, 2>>Card:314239.02
Cash:203061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (599, NULL, 255766978710, 1>>Card:278021.66
Cash:84322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (600, NULL, 255766978710, 2>>Card:314439.02
Cash:203061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (601, NULL, 255766978710, 1>>Card:278051.18
Cash:84472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (602, NULL, 255766978710, 2>>Card:314439.02
Cash:203061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (603, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (604, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (605, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (606, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (607, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (608, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (609, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (610, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (611, NULL, 255766978710, 1>>Card:281606.03
Cash:84922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (612, NULL, 255766978710, 2>>Card:317741.51
Cash:203461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (613, NULL, 255766978710, 1>>Card:282903.47
Cash:85122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (614, NULL, 255766978710, 2>>Card:320670.07
Cash:203961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (615, NULL, 255766978710, 1>>Card:283544.34
Cash:86222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (616, NULL, 255766978710, 2>>Card:321615.25
Cash:204161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (617, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (618, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (619, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (620, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-22 09:06:47, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (621, NULL, 255766978710, 1>>Card:284197.48
Cash:86272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (622, NULL, 255766978710, 2>>Card:324241.08
Cash:204161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (623, NULL, 255766978710, 1>>Card:286514.22
Cash:86322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (624, NULL, 255766978710, 2>>Card:325516.05
Cash:204361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (625, NULL, 255766978710, 1>>Card:291632.18
Cash:86822.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (626, NULL, 255766978710, 2>>Card:328636.96
Cash:205161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (627, NULL, 255766978710, 1>>Card:293259.60
Cash:87922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (628, NULL, 255766978710, 2>>Card:332174.97
Cash:207761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (629, NULL, 255766978710, 1>>Card:294190.16
Cash:88122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (630, NULL, 255766978710, 2>>Card:332680.08
Cash:207761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (631, NULL, 255766978710, 1>>Card:294906.17
Cash:88222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (632, NULL, 255766978710, 2>>Card:332996.49
Cash:207761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (633, NULL, 255766978710, 1>>Card:295805.45
Cash:88322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (634, NULL, 255766978710, 2>>Card:334874.27
Cash:207761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (635, NULL, 255766978710, 1>>Card:299422.27
Cash:89122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (636, NULL, 255766978710, 2>>Card:335595.18
Cash:208661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (637, NULL, 255766978710, 1>>Card:299941.33
Cash:89172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (638, NULL, 255766978710, 2>>Card:336434.74
Cash:208661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (639, NULL, 255766978710, 1>>Card:302312.16
Cash:90772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (640, NULL, 255766978710, 2>>Card:339931.87
Cash:209961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (641, NULL, 255766978710, 1>>Card:302370.36
Cash:90872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (642, NULL, 255766978710, 2>>Card:339931.87
Cash:209961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (643, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (644, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (645, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (646, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (647, NULL, 255766978710, 1>>Card:302370.36
Cash:90872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (648, NULL, 255766978710, 2>>Card:339931.87
Cash:209961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (649, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-23 09:01:01, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (650, NULL, 255766978710, 1>>Card:303417.33
Cash:91022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (651, NULL, 255766978710, 2>>Card:342018.17
Cash:211161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (652, NULL, 255766978710, 1>>Card:306579.01
Cash:92022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (653, NULL, 255766978710, 2>>Card:346615.11
Cash:212061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (654, NULL, 255766978710, 1>>Card:308613.87
Cash:92072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (655, NULL, 255766978710, 2>>Card:348040.99
Cash:212061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (656, NULL, 255766978710, 1>>Card:312532.98
Cash:93272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (657, NULL, 255766978710, 2>>Card:353146.16
Cash:213061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (658, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (659, NULL, 255766978710, 1>>Card:314047.60
Cash:94022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (660, NULL, 255766978710, 2>>Card:356303.96
Cash:214061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (661, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (662, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (663, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (664, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (665, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (666, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (667, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-24 09:02:30, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (668, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (669, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (670, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (671, NULL, 255766978710, MC1# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (672, NULL, 255766978710, MC2# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (673, NULL, 255766978710, MC1# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (674, NULL, 255766978710, MC1# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (675, NULL, 255766978710, 1>>Card:315408.08
Cash:94172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (676, NULL, 255766978710, 2>>Card:356917.91
Cash:214261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (677, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (678, NULL, 255766978710, MC1# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (679, NULL, 255766978710, MC1# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (680, NULL, 255766978710, MC1# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (681, NULL, 255766978710, MC1# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (682, NULL, 255766978710, MC1# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (683, NULL, 255766978710, MC1# Flow Error, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (684, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (685, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (686, NULL, 255766978710, 1>>Card:317517.07
Cash:95422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (687, NULL, 255766978710, 2>>Card:359565.61
Cash:214861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (688, NULL, AIRTEL, Je unatafuta wapi utapata game nzuri kwa ajili ya mwanao, Pakua GAMES kali, haraka na rahisi kwenye simu yako kwa Tsh150 tu kwa siku. Piga *149*80# sasa, Jeunatafutawapiutapatagamenzurikwaajiliyamwan, 2018-10-24 12:45:53, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (689, NULL, 255766978710, 1>>Card:322198.51
Cash:96572.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (690, NULL, 255766978710, 2>>Card:364975.30
Cash:215361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (691, NULL, 255766978710, 1>>Card:323740.26
Cash:96722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (692, NULL, 255766978710, 2>>Card:366621.61
Cash:215561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (693, NULL, 255766978710, MC1# Lack Water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (694, NULL, 255766978710, 1>>Card:330449.83
Cash:97772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (695, NULL, 255766978710, 2>>Card:377153.98
Cash:216361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (696, NULL, 255766978710, 1>>Card:335183.76
Cash:100172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (697, NULL, 255766978710, 2>>Card:384597.63
Cash:217661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (698, NULL, 255766978710, 1>>Card:335183.76
Cash:100172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (699, NULL, 255766978710, 2>>Card:384797.63
Cash:217661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (700, NULL, 255766978710, 1>>Card:335183.76
Cash:100172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (701, NULL, 255766978710, 2>>Card:384797.63
Cash:217661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (702, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (703, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (704, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (705, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (706, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (707, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (708, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (709, NULL, AIRTEL, BANDO SPESHO KWA AJILI YAKO! MB 500 unapata MB 500 nyingine BURE kwa sh1000tu kwa saa 24. Piga *149*98# upate bando hili!, BANDOSPESHOKWAAJILIYAKO!MB500unapataMB500nyin, 2018-10-25 09:07:43, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (710, NULL, 255766978710, 1>>Card:335362.12
Cash:100372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (711, NULL, 255766978710, 2>>Card:386387.31
Cash:217861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (712, NULL, 255766978710, 1>>Card:335362.12
Cash:100372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (713, NULL, 255766978710, 2>>Card:386387.31
Cash:217861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (714, NULL, AIRTEL, OFAA MSIMU MPYA! Pata Dondoo za soka kwa wiki moja BURE. Tuma neno SOKA kwenda 15610 sasa! Baada ya ofa hii, utajiunga kwa Sh200 tu kwa siku., OFAAMSIMUMPYA!PataDondoozasokakwawikimojaBURE, 2018-10-25 10:49:09, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (715, NULL, 255766978710, 1>>Card:336348.29
Cash:100622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (716, NULL, 255766978710, 2>>Card:388457.29
Cash:218061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (717, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (718, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (719, NULL, 255766978710, 1>>Card:337875.33
Cash:101422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (720, NULL, 255766978710, 2>>Card:390989.39
Cash:218261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (721, NULL, 255766978710, 1>>Card:347118.07
Cash:103272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (722, NULL, 255766978710, 2>>Card:402859.59
Cash:218261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (723, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (724, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (725, NULL, 255766978710, 1>>Card:349656.79
Cash:104172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (726, NULL, 255766978710, 2>>Card:406904.63
Cash:218561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (727, NULL, 255766978710, 1>>Card:350344.54
Cash:104572.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (728, NULL, 255766978710, 2>>Card:408070.49
Cash:219061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (729, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (730, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (731, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (732, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (733, NULL, 255766978710, 1>>Card:350344.54
Cash:104572.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (734, NULL, 255766978710, 2>>Card:408070.49
Cash:219061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (735, NULL, 255766978710, 1>>Card:350859.37
Cash:104622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (736, NULL, 255766978710, 2>>Card:409055.18
Cash:219261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (737, NULL, 255766978710, 1>>Card:350859.37
Cash:104622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (738, NULL, 255766978710, 2>>Card:409055.18
Cash:219261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (739, NULL, 255766978710, 1>>Card:350859.37
Cash:104622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (740, NULL, 255766978710, 2>>Card:409055.18
Cash:219261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (741, NULL, AIRTEL, OFA MAALUM! Nunua GB 1 upate BONUS ya GB 1 BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, OFAMAALUM!NunuaGB1upateBONUSyaGB1BUREkwash200, 2018-10-26 09:48:14, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (742, NULL, 255766978710, 1>>Card:351621.68
Cash:104922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (743, NULL, 255766978710, 2>>Card:410644.41
Cash:219261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (744, NULL, 255766978710, 1>>Card:351855.49
Cash:104972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (745, NULL, 255766978710, 2>>Card:411201.27
Cash:219261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (746, NULL, 255766978710, 1>>Card:354280.61
Cash:105872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (747, NULL, 255766978710, 2>>Card:414437.27
Cash:219761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (748, NULL, 255766978710, 1>>Card:359088.31
Cash:106372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (749, NULL, 255766978710, 2>>Card:418046.30
Cash:219761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (750, NULL, 255766978710, 1>>Card:364961.92
Cash:107822.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (751, NULL, 255766978710, 2>>Card:425030.12
Cash:221561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (752, NULL, 255766978710, 1>>Card:365206.04
Cash:108322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (753, NULL, 255766978710, 2>>Card:426826.07
Cash:221761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (754, NULL, 255766978710, 1>>Card:367057.67
Cash:109122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (755, NULL, 255766978710, 2>>Card:428273.28
Cash:222961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (756, NULL, 255766978710, 1>>Card:367257.67
Cash:109372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (757, NULL, 255766978710, 2>>Card:428502.95
Cash:223561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (758, NULL, 255766978710, 1>>Card:369832.53
Cash:110922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (759, NULL, 255766978710, 2>>Card:429947.00
Cash:223761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (760, NULL, 255766978710, 1>>Card:369832.53
Cash:110922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (761, NULL, 255766978710, 2>>Card:430147.00
Cash:224161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (762, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (763, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (764, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (765, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (766, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (767, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (768, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (769, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (770, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (771, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (772, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (773, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (774, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (775, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (776, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (777, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (778, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (779, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (780, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (781, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (782, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (783, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (784, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (785, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (786, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (787, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (788, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (789, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (790, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (791, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (792, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (793, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (794, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (795, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (796, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (797, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (798, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (799, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (800, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (801, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (802, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (803, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (804, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (805, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (806, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (807, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (808, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (809, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (810, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (811, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (812, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (813, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (814, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (815, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (816, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (817, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (818, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (819, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (820, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (821, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (822, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (823, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (824, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (825, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (826, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (827, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (828, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (829, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (830, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (831, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (832, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (833, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (834, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (835, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (836, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (837, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (838, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (839, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (840, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (841, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (842, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (843, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (844, NULL, 255766978710, MC2#
Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (845, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (846, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (847, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (848, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (849, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (850, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (851, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (852, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (853, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (854, NULL, AIRTEL, OFA MAALUM! Nunua GB 1 upate BONUS ya GB 1 BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, OFAMAALUM!NunuaGB1upateBONUSyaGB1BUREkwash200, 2018-10-27 09:19:21, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (855, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (856, NULL, 255766978710, 1>>Card:374442.54
Cash:112472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (857, NULL, 255766978710, 2>>Card:435994.23
Cash:225361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (858, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (859, NULL, 255766978710, 1>>Card:379205.70
Cash:114672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (860, NULL, 255766978710, 2>>Card:444005.37
Cash:226661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (861, NULL, 255766978710, 1>>Card:379205.70
Cash:114872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (862, NULL, 255766978710, 2>>Card:444005.37
Cash:226661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (863, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (864, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (865, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (866, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (867, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (868, NULL, 255766978710, 1>>Card:379396.29
Cash:114872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (869, NULL, 255766978710, 2>>Card:444172.12
Cash:226861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (870, NULL, 255766978710, 1>>Card:379974.14
Cash:115422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (871, NULL, 255766978710, 2>>Card:449632.90
Cash:226861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (872, NULL, 255766978710, 1>>Card:381374.14
Cash:115622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (873, NULL, 255766978710, 2>>Card:450868.42
Cash:227861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (874, NULL, 255766978710, 1>>Card:382650.97
Cash:116172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (875, NULL, 255766978710, 2>>Card:453121.02
Cash:228361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (876, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (877, NULL, 255766978710, 1>>Card:383119.69
Cash:116172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (878, NULL, 255766978710, 2>>Card:454073.83
Cash:228361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (879, NULL, 255766978710, 1>>Card:385021.71
Cash:117772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (880, NULL, 255766978710, 2>>Card:458155.21
Cash:229961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (881, NULL, 255766978710, 1>>Card:385970.87
Cash:118222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (882, NULL, 255766978710, 2>>Card:459894.65
Cash:230161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (883, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (884, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (885, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (886, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (887, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (888, NULL, 255766978710, MC1# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (889, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (890, NULL, 255766978710, MC1# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (891, NULL, AIRTEL, OFA MAALUM! Nunua GB 1 upate BONUS ya GB 1 BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, OFAMAALUM!NunuaGB1upateBONUSyaGB1BUREkwash200, 2018-10-29 09:40:13, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (892, NULL, 255766978710, 1>>Card:387714.40
Cash:118272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (893, NULL, 255766978710, 2>>Card:461573.31
Cash:230761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (894, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (895, NULL, 255766978710, 1>>Card:392582.96
Cash:120622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (896, NULL, 255766978710, 2>>Card:467897.49
Cash:232311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (897, NULL, 255766978710, 1>>Card:392856.38
Cash:120622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (898, NULL, 255766978710, 2>>Card:468007.16
Cash:232311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (899, NULL, 255766978710, 1>>Card:392856.38
Cash:120622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (900, NULL, 255766978710, 2>>Card:468171.66
Cash:232311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (901, NULL, 255766978710, 1>>Card:393827.92
Cash:121022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (902, NULL, 255766978710, 2>>Card:470078.22
Cash:232311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (903, NULL, 255766978710, 1>>Card:394170.04
Cash:121322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (904, NULL, 255766978710, 2>>Card:470816.67
Cash:232311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (905, NULL, 255766978710, 1>>Card:395419.38
Cash:121922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (906, NULL, 255766978710, 2>>Card:473931.75
Cash:233361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (907, NULL, 255766978710, 1>>Card:396222.14
Cash:121922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (908, NULL, 255766978710, 2>>Card:475779.86
Cash:233361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (909, NULL, 255766978710, 1>>Card:399341.92
Cash:123972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (910, NULL, 255766978710, 2>>Card:480274.32
Cash:233761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (911, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (912, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (913, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (914, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (915, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (916, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (917, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (918, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (919, NULL, AIRTEL, OFA MAALUM! Nunua GB 1 upate BONUS ya GB 1 BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, OFAMAALUM!NunuaGB1upateBONUSyaGB1BUREkwash200, 2018-10-30 09:26:22, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (920, NULL, 255766978710, 1>>Card:404342.85
Cash:126372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (921, NULL, 255766978710, 2>>Card:484279.28
Cash:235161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (922, NULL, 255766978710, 1>>Card:405795.42
Cash:126772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (923, NULL, 255766978710, 2>>Card:487664.09
Cash:235161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (924, NULL, 255766978710, 1>>Card:406772.35
Cash:127022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (925, NULL, 255766978710, 2>>Card:488374.22
Cash:235361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (926, NULL, 255766978710, 1>>Card:406772.35
Cash:127022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (927, NULL, 255766978710, 2>>Card:488374.22
Cash:235361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (928, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (929, NULL, 255766978710, 1>>Card:411471.29
Cash:128772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (930, NULL, 255766978710, 2>>Card:495245.83
Cash:235861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (931, NULL, 255766978710, 1>>Card:412354.13
Cash:130222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (932, NULL, 255766978710, 2>>Card:496112.35
Cash:235861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (933, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (934, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (935, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (936, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (937, NULL, 255766978710, 1>>Card:412354.13
Cash:130222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (938, NULL, 255766978710, 2>>Card:496312.35
Cash:235961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (939, NULL, AIRTEL, OFA MAALUM! Nunua GB 1 upate BONUS ya GB 1 BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, OFAMAALUM!NunuaGB1upateBONUSyaGB1BUREkwash200, 2018-10-31 09:38:37, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (940, NULL, AIRTEL, Penzi lako ni tamu kama asali, nakupenda waubani wangu! Linogeshe penzi lako kwa meseji tamu za mahaba. Tuma neno ASALI kwenda 15630 sasa., Penzilakonitamukamaasali,nakupendawaubaniwang, 2018-10-31 11:44:38, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (941, NULL, 255766978710, 1>>Card:415607.79
Cash:132422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (942, NULL, 255766978710, 2>>Card:499919.50
Cash:236461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (943, NULL, 255766978710, 1>>Card:420926.60
Cash:133822.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (944, NULL, 255766978710, 2>>Card:507925.77
Cash:237511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (945, NULL, 255766978710, 1>>Card:421867.79
Cash:134122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (946, NULL, 255766978710, 2>>Card:509188.72
Cash:237511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (947, NULL, 255766978710, 1>>Card:423067.79
Cash:134122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (948, NULL, 255766978710, 2>>Card:514471.88
Cash:237511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (949, NULL, 255766978710, 1>>Card:428442.73
Cash:135622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (950, NULL, 255766978710, 2>>Card:518759.15
Cash:238411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (951, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (952, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (953, NULL, 255766978710, 1>>Card:429042.73
Cash:136722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (954, NULL, 255766978710, 2>>Card:524278.37
Cash:240011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (955, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (956, NULL, 255766978710, 1>>Card:432138.71
Cash:137772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (957, NULL, 255766978710, 2>>Card:529948.08
Cash:241611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (958, NULL, 255766978710, 1>>Card:436007.29
Cash:139322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (959, NULL, 255766978710, 2>>Card:535887.92
Cash:242411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (960, NULL, 255766978710, 1>>Card:436007.29
Cash:139322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (961, NULL, 255766978710, 2>>Card:535887.92
Cash:242411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (962, NULL, 255766978710, 1>>Card:440002.69
Cash:141072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (963, NULL, 255766978710, 2>>Card:540999.19
Cash:243211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (964, NULL, 255766978710, 1>>Card:440002.69
Cash:141072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (965, NULL, 255766978710, 2>>Card:540999.19
Cash:243211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (966, NULL, 255766978710, 1>>Card:440002.69
Cash:141272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (967, NULL, 255766978710, 2>>Card:540999.19
Cash:243211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (968, NULL, 255766978710, 1>>Card:441441.20
Cash:141572.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (969, NULL, 255766978710, 2>>Card:543033.71
Cash:243911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (970, NULL, 255766978710, 1>>Card:441918.35
Cash:142122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (971, NULL, 255766978710, 2>>Card:545223.12
Cash:244211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (972, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (973, NULL, 255766978710, MC1#
On Sell
long time no make water
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (974, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (975, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (976, NULL, 255766978710, 1>>Card:442113.61
Cash:142372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (977, NULL, 255766978710, 2>>Card:545623.12
Cash:244211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (978, NULL, 255766978710, 1>>Card:442866.09
Cash:142622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (979, NULL, 255766978710, 2>>Card:546968.81
Cash:244261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (980, NULL, 255766978710, 1>>Card:444746.48
Cash:142972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (981, NULL, 255766978710, 2>>Card:550277.44
Cash:244461.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (982, NULL, 255766978710, 1>>Card:449311.84
Cash:145272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (983, NULL, 255766978710, 2>>Card:555214.67
Cash:245361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (984, NULL, 255766978710, 1>>Card:449311.84
Cash:145272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (985, NULL, 255766978710, 2>>Card:555214.67
Cash:245361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (986, NULL, 255766978710, 1>>Card:450466.83
Cash:145622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (987, NULL, 255766978710, 2>>Card:555904.89
Cash:246361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (988, NULL, 255766978710, 1>>Card:452075.08
Cash:146722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (989, NULL, 255766978710, 2>>Card:557899.71
Cash:247661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (990, NULL, 255766978710, 1>>Card:452075.08
Cash:146722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (991, NULL, 255766978710, 2>>Card:557899.71
Cash:247661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (992, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (993, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (994, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (995, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (996, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (997, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (998, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (999, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1000, NULL, 255766978710, 1>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1001, NULL, 255766978710, 2>>Board Communication Error!

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1002, NULL, AIRTEL, Angalia EPL, West Ham na Burney LEO kupitia KWESE saa 11.30jioni, bofya http://bit.ly/2w9c0FD. Kununua bando, piga *149*98# upate mara mbili!, AngaliaEPL,WestHamnaBurneyLEOkupitiaKWESEsaa1, 2018-11-03 10:15:45, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1003, NULL, 255766978710, 1>>Card:458613.31
Cash:148472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1004, NULL, 255766978710, 2>>Card:557899.71
Cash:248361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1005, NULL, 255766978710, 1>>Card:465619.62
Cash:151222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1006, NULL, 255766978710, 2>>Card:563726.62
Cash:249561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1007, NULL, 255766978710, MC1#
Make Water
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1008, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1009, NULL, 255766978710, 1>>Card:467229.60
Cash:151422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1010, NULL, 255766978710, 2>>Card:563726.62
Cash:249561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1011, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1012, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1013, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1014, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1015, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1016, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1017, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1018, NULL, 255766978710, 1>>Card:469056.68
Cash:152622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1019, NULL, 255766978710, 2>>Card:564820.29
Cash:249561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1020, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1021, NULL, 255766978710, 1>>Card:471200.62
Cash:153072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1022, NULL, 255766978710, 2>>Card:569203.67
Cash:250261.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1023, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1024, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1025, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1026, NULL, 255766978710, 1>>Card:473403.85
Cash:153772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1027, NULL, 255766978710, 2>>Card:572722.06
Cash:251161.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1028, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1029, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1030, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1031, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1032, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1033, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1034, NULL, AIRTEL, DABO BANDO! GB 1 unapata GB 1 nyingine BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, DABOBANDO!GB1unapataGB1nyingineBUREkwash2000t, 2018-11-05 09:41:52, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1035, NULL, 255766978710, 1>>Card:479483.34
Cash:155422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1036, NULL, 255766978710, 2>>Card:578974.70
Cash:252361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1037, NULL, 255766978710, 1>>Card:479483.34
Cash:155422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1038, NULL, 255766978710, 2>>Card:578974.70
Cash:252361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1039, NULL, 255766978710, 1>>Card:481283.34
Cash:156172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1040, NULL, 255766978710, 2>>Card:580619.67
Cash:252361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1041, NULL, 255766978710, 1>>Card:484989.90
Cash:157972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1042, NULL, 255766978710, 2>>Card:586003.23
Cash:252861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1043, NULL, 255766978710, 1>>Card:485147.55
Cash:157972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1044, NULL, 255766978710, 2>>Card:587543.91
Cash:252861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1045, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1046, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1047, NULL, 255766978710, 1>>Card:494160.82
Cash:161122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1048, NULL, 255766978710, 2>>Card:596971.83
Cash:255011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1049, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1050, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1051, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1052, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1053, NULL, 255766978710, 1>>Card:496733.03
Cash:161422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1054, NULL, 255766978710, 2>>Card:599272.53
Cash:255011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1055, NULL, AIRTEL, DABO BANDO! GB 1 unapata GB 1 nyingine BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, DABOBANDO!GB1unapataGB1nyingineBUREkwash2000t, 2018-11-06 10:13:15, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1056, NULL, 255766978710, 1>>Card:501697.61
Cash:162722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1057, NULL, 255766978710, 2>>Card:603193.05
Cash:255611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1058, NULL, 255766978710, 1>>Card:503800.65
Cash:163372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1059, NULL, 255766978710, 2>>Card:607758.69
Cash:256811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1060, NULL, 255766978710, 1>>Card:505933.76
Cash:164472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1061, NULL, 255766978710, 2>>Card:610052.28
Cash:256911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1062, NULL, 255766978710, 1>>Card:508851.74
Cash:165772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1063, NULL, 255766978710, 2>>Card:615603.55
Cash:257511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1064, NULL, 255766978710, 1>>Card:510130.57
Cash:166172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1065, NULL, 255766978710, 2>>Card:617280.42
Cash:257711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1066, NULL, 255766978710, 1>>Card:514734.69
Cash:168122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1067, NULL, 255766978710, 2>>Card:621432.03
Cash:258811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1068, NULL, 255766978710, 1>>Card:516893.10
Cash:168372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1069, NULL, 255766978710, 2>>Card:625232.72
Cash:259011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1070, NULL, 255766978710, 1>>Card:517762.28
Cash:168672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1071, NULL, 255766978710, 2>>Card:626917.64
Cash:259511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1072, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1073, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1074, NULL, 255766978710, 1>>Card:520850.62
Cash:169522.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1075, NULL, 255766978710, 2>>Card:629345.53
Cash:259811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1076, NULL, 255766978710, 1>>Card:521050.62
Cash:169772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1077, NULL, 255766978710, 2>>Card:630456.55
Cash:259811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1078, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1079, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1080, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1081, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1082, NULL, AIRTEL, DABO BANDO! GB 1 unapata GB 1 nyingine BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, DABOBANDO!GB1unapataGB1nyingineBUREkwash2000t, 2018-11-07 09:51:37, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1083, NULL, 255766978710, 1>>Card:530004.88
Cash:172772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1084, NULL, 255766978710, 2>>Card:645202.44
Cash:262011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1085, NULL, 255766978710, 1>>Card:530975.71
Cash:173172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1086, NULL, 255766978710, 2>>Card:647421.35
Cash:262611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1087, NULL, AIRTEL, ISHIKISTAA WIKIENDI HII! Kutana na msanii unayempenda upate kufurahia maisha naye, au shinda Smartphone kali. Tuma STAA kwenda 15670 kujiunga sh99 kwa siku, ISHIKISTAAWIKIENDIHII!Kutananamsaniiunayempen, 2018-11-07 14:58:37, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1088, NULL, 255766978710, 1>>Card:540906.93
Cash:174922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1089, NULL, 255766978710, 2>>Card:656521.50
Cash:263911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1090, NULL, 255766978710, 1>>Card:547392.89
Cash:175772.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1091, NULL, 255766978710, 2>>Card:660899.10
Cash:264311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1092, NULL, 255766978710, 1>>Card:548519.97
Cash:176172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1093, NULL, 255766978710, 2>>Card:662187.05
Cash:264511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1094, NULL, AIRTEL, Wafurahishe wakupigiao kwa kuweka BAILA kama muito wa simu yako kutoka kwa Diamond Platinumz A.K.A Simba. Piga  *149*29# kujiunga., WafurahishewakupigiaokwakuwekaBAILAkamamuitow, 2018-11-07 19:08:52, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1095, NULL, 255766978710, 1>>Card:550366.11
Cash:176722.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1096, NULL, 255766978710, 2>>Card:666948.92
Cash:264711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1097, NULL, 255766978710, 1>>Card:553546.55
Cash:178122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1098, NULL, 255766978710, 2>>Card:669709.78
Cash:265011.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1099, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1100, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1101, NULL, 255766978710, MC1#
On Sell
long time no make water
long time no get cash
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1102, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1103, NULL, 255766978710, 1>>Card:554479.23
Cash:178472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1104, NULL, 255766978710, 2>>Card:670561.02
Cash:265411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1105, NULL, AIRTEL, DABO BANDO! GB 1 unapata GB 1 nyingine BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, DABOBANDO!GB1unapataGB1nyingineBUREkwash2000t, 2018-11-08 09:43:10, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1106, NULL, 255766978710, 1>>Card:566532.64
Cash:182522.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1107, NULL, 255766978710, 2>>Card:682506.81
Cash:266411.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1108, NULL, 255766978710, 1>>Card:572127.78
Cash:184922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1109, NULL, 255766978710, 2>>Card:688153.19
Cash:267811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1110, NULL, 255766978710, 1>>Card:580731.57
Cash:185972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1111, NULL, 255766978710, 2>>Card:693301.50
Cash:269111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1112, NULL, 255766978710, 1>>Card:585923.95
Cash:186272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1113, NULL, 255766978710, 2>>Card:697271.07
Cash:269111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1114, NULL, 255766978710, 1>>Card:586830.31
Cash:186522.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1115, NULL, 255766978710, 2>>Card:697848.60
Cash:270711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1116, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1117, NULL, 255766978710, 2>>Card:699963.56
Cash:270711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1118, NULL, 255766978710, 2>>Card:699963.56
Cash:270711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1119, NULL, 255766978710, MC1#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1120, NULL, 255766978710, MC2#
On Sell
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1121, NULL, 255766978710, 1>>Card:589546.72
Cash:189372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1122, NULL, 255766978710, 1>>Card:589546.72
Cash:189372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1123, NULL, 255766978710, 1>>Card:589546.72
Cash:189372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1124, NULL, 255766978710, 2>>Card:699963.56
Cash:270711.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1125, NULL, 255766978710, 1>>Card:589546.72
Cash:190072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1126, NULL, 255766978710, 2>>Card:700104.69
Cash:270911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1127, NULL, 255766978710, 1>>Card:589546.72
Cash:190122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1128, NULL, 255766978710, 2>>Card:700104.69
Cash:270911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1129, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1130, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1131, NULL, 255766978710, 1>>Card:589546.72
Cash:190122.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1132, NULL, 255766978710, 2>>Card:700104.69
Cash:270911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1133, NULL, 255766978710, 1>>Card:592237.16
Cash:190922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1134, NULL, 255766978710, 2>>Card:701971.21
Cash:271111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1135, NULL, AIRTEL, DABO BANDO! GB 1 unapata GB 1 nyingine BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, DABOBANDO!GB1unapataGB1nyingineBUREkwash2000t, 2018-11-09 10:08:35, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1136, NULL, 255766978710, 1>>Card:593636.17
Cash:191372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1137, NULL, 255766978710, 2>>Card:703926.75
Cash:271111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1138, NULL, 255766978710, 1>>Card:604763.01
Cash:192622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1139, NULL, 255766978710, 2>>Card:716553.43
Cash:272511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1140, NULL, 255766978710, 1>>Card:610726.32
Cash:193322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1141, NULL, 255766978710, 2>>Card:719462.21
Cash:272811.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1142, NULL, 255766978710, 1>>Card:613197.79
Cash:194472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1143, NULL, 255766978710, 2>>Card:724426.29
Cash:273111.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1144, NULL, 255766978710, 1>>Card:615774.34
Cash:195472.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1145, NULL, 255766978710, 2>>Card:727175.07
Cash:273211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1146, NULL, 255766978710, 1>>Card:618425.12
Cash:196422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1147, NULL, 255766978710, 2>>Card:731383.75
Cash:273661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1148, NULL, 255766978710, 1>>Card:618425.12
Cash:197022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1149, NULL, 255766978710, 2>>Card:731583.75
Cash:273661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1150, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1151, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1152, NULL, 255766978710, 1>>Card:618425.12
Cash:197022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1153, NULL, 255766978710, 2>>Card:731941.51
Cash:273661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1154, NULL, AIRTEL, DABO BANDO! GB 1 unapata GB 1 nyingine BURE kwa sh2000tu kwa siku3. Piga *149*98# upate bando hili!, DABOBANDO!GB1unapataGB1nyingineBUREkwash2000t, 2018-11-10 09:21:17, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1155, NULL, 255766978710, 1>>Card:627616.01
Cash:199172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1156, NULL, 255766978710, 2>>Card:736743.81
Cash:273861.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1157, NULL, 255766978710, 1>>Card:630392.08
Cash:199672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1158, NULL, 255766978710, 2>>Card:740353.73
Cash:274561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1159, NULL, 255766978710, 1>>Card:630392.08
Cash:199672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1160, NULL, 255766978710, 2>>Card:740772.16
Cash:274561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1161, NULL, 255766978710, 1>>Card:630392.08
Cash:199672.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1162, NULL, 255766978710, 2>>Card:740772.16
Cash:274761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1163, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1164, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1165, NULL, 255766978710, 1>>Card:636975.22
Cash:201222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1166, NULL, 255766978710, 2>>Card:746683.81
Cash:275661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1167, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1168, NULL, 255766978710, 2>>Card:752324.77
Cash:276361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1169, NULL, 255766978710, 1>>Card:641703.88
Cash:203922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1170, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1171, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1172, NULL, 255766978710, 1>>Card:642081.44
Cash:204172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1173, NULL, 255766978710, 2>>Card:753357.17
Cash:276361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1174, NULL, 255766978710, 1>>Card:642081.44
Cash:204172.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1175, NULL, 255766978710, 2>>Card:753357.17
Cash:276361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1176, NULL, 255766978710, 1>>Card:643657.91
Cash:204422.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1177, NULL, 255766978710, 2>>Card:754978.66
Cash:276361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1178, NULL, AIRTEL, BANDO SPESHO! Nunua MB 500 upate MB 500 BURE kwa Tsh1000 kwa saa24. Piga *149*98# kujiunga. Hii ni ya kwako tu!, BANDOSPESHO!NunuaMB500upateMB500BUREkwaTsh100, 2018-11-12 10:17:09, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1179, NULL, 255766978710, 1>>Card:662908.06
Cash:212372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1180, NULL, 255766978710, 2>>Card:777622.30
Cash:278361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1181, NULL, 255766978710, 1>>Card:664359.34
Cash:213622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1182, NULL, 255766978710, 2>>Card:780382.77
Cash:278361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1183, NULL, 255766978710, reboot OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1184, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1185, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1186, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1187, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1188, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1189, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1190, NULL, 255766978710, MC2# Stop Sale
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1191, NULL, 255766978710, 1>>Card:669241.39
Cash:215372.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1192, NULL, 255766978710, 2>>Card:784664.82
Cash:280561.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1193, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1194, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1195, NULL, AIRTEL, BANDO SPESHO! Nunua MB 500 upate MB 500 BURE kwa Tsh1000 kwa saa24. Piga *149*98# kujiunga. Hii ni ya kwako tu!, BANDOSPESHO!NunuaMB500upateMB500BUREkwaTsh100, 2018-11-13 11:15:46, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1196, NULL, AIRTEL, Mpendwa Mteja jiunge na huduma zetu za ziada, piga *149*29# Miito Mbalimbali, *149*12# Kutafuta Kazi, *149*92# Mpira wa miguu, *149*80# Michezo Mbalimbali, MpendwaMtejajiungenahudumazetuzaziada,piga*14, 2018-11-13 11:33:54, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1197, NULL, 255766978710, 1>>Card:677443.19
Cash:218272.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1198, NULL, 255766978710, 2>>Card:795192.42
Cash:281611.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1199, NULL, 255766978710, 1>>Card:690211.15
Cash:223972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1200, NULL, 255766978710, 2>>Card:806771.35
Cash:283211.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1201, NULL, 255766978710, 1>>Card:694914.77
Cash:225022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1202, NULL, 255766978710, 2>>Card:813098.20
Cash:284911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1203, NULL, 255766978710, shutdown OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1204, NULL, 255766978710, start OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1205, NULL, 255766978710, 1>>Card:698813.99
Cash:225072.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1206, NULL, 255766978710, 2>>Card:813246.52
Cash:285311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1207, NULL, 255766978710, 1>>Card:699950.47
Cash:225222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1208, NULL, 255766978710, 2>>Card:813845.18
Cash:285311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1209, NULL, 255766978710, 1>>Card:700620.06
Cash:226322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1210, NULL, 255766978710, 2>>Card:815716.30
Cash:285511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1211, NULL, 255766978710, 1>>Card:700788.54
Cash:226322.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1212, NULL, 255766978710, 2>>Card:815716.30
Cash:285511.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1213, NULL, 255766978710, 1>>Card:703212.96
Cash:227522.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1214, NULL, 255766978710, 2>>Card:820017.83
Cash:286911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1215, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1216, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1217, NULL, AIRTEL, BANDO SPESHO! Nunua MB 500 upate MB 500 BURE kwa Tsh1000 kwa saa24. Piga *149*98# kujiunga. Hii ni ya kwako tu!, BANDOSPESHO!NunuaMB500upateMB500BUREkwaTsh100, 2018-11-14 09:39:22, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1218, NULL, 255766978710, 1>>Card:706400.12
Cash:228622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1219, NULL, 255766978710, 2>>Card:823748.82
Cash:287311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1220, NULL, 255766978710, 1>>Card:706875.42
Cash:228872.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1221, NULL, 255766978710, 2>>Card:824771.31
Cash:287311.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1222, NULL, AIRTEL, Endelea kuwatumbuiza wanaokupigia simu! Piga *149*29*70# kwa Fire ya Diamond Platnumz, Endeleakuwatumbuizawanaokupigiasimu!Piga*149*, 2018-11-14 11:45:48, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1223, NULL, 255766978710, 1>>Card:726256.47
Cash:236922.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1224, NULL, 255766978710, 2>>Card:845704.84
Cash:291661.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1225, NULL, 255766978710, shutdown OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1226, NULL, 255766978710, start OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1227, NULL, 255766978710, shutdown OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1228, NULL, 255766978710, start OK
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1229, NULL, 255766978710, 1>>Card:734907.57
Cash:238972.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1230, NULL, 255766978710, 2>>Card:859617.82
Cash:292761.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1231, NULL, 255766978710, 1>>Card:735723.44
Cash:239222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1232, NULL, 255766978710, 2>>Card:859817.82
Cash:292961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1233, NULL, 255766978710, 1>>Card:736450.51
Cash:239222.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1234, NULL, 255766978710, 2>>Card:860681.20
Cash:292961.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1235, NULL, 255766978710, 1>>Card:739799.11
Cash:241522.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1236, NULL, 255766978710, 2>>Card:863423.69
Cash:293361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1237, NULL, 255766978710, 1>>Card:739999.11
Cash:241522.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1238, NULL, 255766978710, 2>>Card:863623.69
Cash:293361.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1239, NULL, 255766978710, MC1# long time no make water, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1240, NULL, 255766978710, MC1# long time no get cash, pls check
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1241, NULL, AIRTEL, Je una ndugu Nje ya nchi! Usijali, sasa Airtel inakupatia viwango nafuu vya kupiga simu za Kimataifa kwenda nchi zaidi ya 20. Piga *149*13# na ufurahie., JeunanduguNjeyanchi!Usijali,sasaAirtelinakupa, 2018-11-15 09:26:41, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1242, NULL, AIRTEL, BANDO SPESHO! Nunua MB 500 upate MB 500 BURE kwa Tsh1000 kwa saa24. Piga *149*98# kujiunga. Hii ni ya kwako tu!, BANDOSPESHO!NunuaMB500upateMB500BUREkwaTsh100, 2018-11-15 10:25:32, NULL);
INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1243, NULL, 255766978710, 1>>Card:753228.81
Cash:244572.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1244, NULL, 255766978710, 2>>Card:875876.49
Cash:295061.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1245, NULL, 255766978710, 1>>Card:760319.10
Cash:248622.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1246, NULL, 255766978710, 2>>Card:884191.27
Cash:295911.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1247, NULL, 255766978710, 1>>Card:769597.95
Cash:250022.00

INSERT INTO `eco_commands_incoming` (`id`, `reference`, `msisdn`, `code`, `code_processed`, `date_registered`, `date_updated`) VALUES (1248, NULL, 255766978710, 2>>Card:895037.20
Cash:296961.00



#
# TABLE STRUCTURE FOR: eco_filters
#

DROP TABLE IF EXISTS `eco_filters`;

CREATE TABLE `eco_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `filter_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `clean_days` int(11) DEFAULT NULL,
  `replace_days` int(11) NOT NULL,
  `record_stat` enum('O','C') COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `material_code` (`filter_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (1, QS, Quartz Sand Filter, 7, 720, O, 2018-09-09 16:04:56, 2018-09-09 16:04:56);
INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (2, AC, Activated Carbon Filter, 7, 360, O, 2018-09-09 16:06:52, 2018-09-09 16:06:52);
INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (4, PP, PP-Filter, 7, 60, O, 2018-09-09 16:09:24, 2018-09-09 16:09:24);
INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (5, RO, RO-Membrane, 7, 720, O, 2018-09-09 16:10:03, 2018-09-09 16:10:03);
INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (6, PAC, Post Activated Carbon Filter, NULL, 180, O, 2018-09-09 16:12:03, 2018-09-09 16:12:03);
INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (7, MIN, Mineral Filter, NULL, 180, O, 2018-09-09 16:12:24, 2018-09-09 16:12:24);
INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (8, OG, Ozone Generator, NULL, 90, O, 2018-09-09 16:13:01, 2018-09-09 16:13:01);
INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (9, UV, UV-Light Sterilizer, NULL, 208, O, 2018-10-20 07:32:46, 2018-10-20 07:32:46);
INSERT INTO `eco_filters` (`id`, `filter_code`, `filter_desc`, `clean_days`, `replace_days`, `record_stat`, `date_registered`, `date_updated`) VALUES (10, PWT, Pure Water Tank, 30, 0, O, 2018-10-20 18:57:13, 2018-10-20 18:57:13);


#
# TABLE STRUCTURE FOR: eco_filters_maintenance
#

DROP TABLE IF EXISTS `eco_filters_maintenance`;

CREATE TABLE `eco_filters_maintenance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `station_gsm` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_cleaned` date DEFAULT NULL,
  `next_cleaning` date DEFAULT NULL,
  `date_replaced` date DEFAULT NULL,
  `next_replacement` date DEFAULT NULL,
  `maker_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SYSTEM',
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (1, QS, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (2, AC, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (3, PP, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (4, RO, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (5, PAC, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (6, MIN, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (7, OG, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (8, UV, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (9, PWT, 255766978710, NULL, NULL, NULL, NULL, admin, 2018-10-27 12:59:41, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (10, QS, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (11, AC, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (12, PP, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (13, RO, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (14, PAC, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (15, MIN, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (16, OG, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (17, UV, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (18, PWT, 255754510366, NULL, NULL, NULL, NULL, admin, 2018-10-27 13:02:12, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (19, QS, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (20, AC, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (21, PP, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (22, RO, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (23, PAC, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (24, MIN, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (25, OG, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (26, UV, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);
INSERT INTO `eco_filters_maintenance` (`id`, `filter_code`, `station_gsm`, `date_cleaned`, `next_cleaning`, `date_replaced`, `next_replacement`, `maker_id`, `date_registered`, `date_updated`) VALUES (27, PWT, 33344545, NULL, NULL, NULL, NULL, SYSTEM, 2018-10-27 18:44:47, NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (1, Menus, NULL, settings/menus, 1, 4);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (2, Menu Titles, NULL, settings/menutitles, 1, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (3, Users, NULL, settings/users, 1, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (4, Users Groups, NULL, settings/usergroups, 1, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (16, Notifications, NULL, settings/notifications, 1, 5);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (23, Databse Backup, NULL, settings/backup, 1, 7);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (24, Branches List, NULL, branch/listBranches, 10, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (25, Campuses List, NULL, campus/listCampus, 11, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (26, Stations List, NULL, stations/listStations, 12, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (27, Filters, NULL, maintenancecentre/listFilters, 14, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (28, Card, NULL, card/listCards, 15, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (29, Add Subscriber, NULL, subscribers/newSubscriber, 13, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (30, Subscribers List, NULL, subscribers/listSubscribers, 13, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (31, Sales History, NULL, stations/salesHistory, 12, 10);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (32, POS, NULL, topup/posList, 16, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (33, Card TopUp, NULL, topup/cardTopup, 16, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (34, Water Bills, fa fa-tint, utilities/water, 19, NULL);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (35, Electricity Billl, NULL, utilities/electrcity, 19, NULL);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (36, Sub Categories, NULL, subscribers/subCategories, 1, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (37, Subscribers Bulk SMS, NULL, sms/subsribersBulkSMS, 17, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (38, Impact Reports, NULL, analytics/Impact, 9, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (39, Subscription Fees, NULL, subscribers/subscriptionfee, 13, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (40, Loyalties, NULL, loyalty/loyalties, 20, 1);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (41, Price Configurations, NULL, configirations/priceconfigurations, 1, NULL);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (42, Quality Assurance, NULL, maintenancecentre/qualityassurance, 14, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (43, Stations Bulk SMS, NULL, messagingcentre/stationsbulksms, 17, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (44, Users Bulk SMS, NULL, messagingcentre/usersbulksms, 17, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (45, Loyalty-Invoices, NULL, loyalty/loyaltyinvoices, 20, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (46, Utility-Invoices, NULL, utilitybills/utilityinvoices, 19, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (47, Subscribers Reports, NULL, analytics/subscribersreports, 9, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (48, Revenues Reports, NULL, analytics/revenuereports, 9, 3);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (49, Performance Reports, NULL, analytics/performancereports, 9, 4);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (50, Volume Reports, NULL, analytics/volumereports, 9, 5);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (51, SMS Templates, NULL, messagingcentre/smstemplates, 17, 4);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (52, Filters Maintenance, NULL, maintenancecentre/filtersMaintenance, 14, 2);
INSERT INTO `eco_menus` (`id`, `menu_name`, `menu_icon`, `page_link`, `menu_title`, `sort`) VALUES (53, POS Balances, fa fa-dollar, topup/posbalances, 16, 2);


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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (1, Configurations, fa-cogs, 20);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (9, Analytics, fa-book, 19);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (10, Branch, fa fa-bank, 2);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (11, Campus, fa fa-square, 3);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (12, Stations, fa fa-tint, 4);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (13, Subsribers, fa fa-users, 1);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (14, Maintenance Centre, fa fa-tag, 5);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (15, Card, fa fa-credit-card, 6);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (16, Top Up, fa fa-dollar, 7);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (17, Messaging Centre, fa-envelope, 9);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (18, Bottles, fa fa-tag, 8);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (19, Utility Bills, fa fa-tint, 7);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (20, Loyalty, fa fa-dollar, 10);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (21, Audit Trail, fa-cogs, 20);
INSERT INTO `eco_menutitles` (`id`, `title_name`, `title_icon`, `sort`) VALUES (22, Fundraiser, fa fa-dollar, 20);


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
# TABLE STRUCTURE FOR: eco_sms_outgoing
#

DROP TABLE IF EXISTS `eco_sms_outgoing`;

CREATE TABLE `eco_sms_outgoing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `maker_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=425 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (1, MULTIPLE SUB, <p>sdcdfccvcvcdfcvc</p>, admin, 2018-10-01 15:29:21, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (2, MULTIPLE SUB, <p>Wateja wote watapata hii SMS.</p><p><u>Second paragraph</u>.</p><p></p><ol><li>One<br></li><li>Two<br></li><li>Three<br></li></ol><p></p><p><a target="_blank" rel="nofollow" href="http://ecowater.com">http://ecowater.com/</a> <br></p>, admin, 2018-10-01 15:31:28, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (3, MULTIPLE SUB, <p>Wateja wote watapata hii SMS.</p><p><u>Second paragraph</u>.</p><p></p><ol><li>One<br></li><li>Two<br></li><li>Three<br></li></ol><p></p><p><a target="_blank" rel="nofollow" href="http://ecowater.com">http://ecowater.com/</a> <br></p>, admin, 2018-10-01 15:34:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (4, MULTIPLE SUB, <p>Wateja wote watapata hii SM. Test SMS</p>, admin, 2018-10-01 15:37:18, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (5, MULTIPLE SUB,          Hellow, this is a test sms to all sub.
Do not reply please.               , admin, 2018-10-01 15:45:30, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (6, MULTIPLE SUB,          Hellow, this is a test sms to all sub.
Do not reply please.               , admin, 2018-10-01 15:57:53, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (7, MULTIPLE SUB, Hellow, this is a test sms to all sub.
Do not reply please.               , admin, 2018-10-01 16:02:14, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (8, MULTIPLE SUB, This is a test SMS.Single paragraph., admin, 2018-10-01 16:09:42, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (9, MULTIPLE SUB,  Thank you for being part of our community!
With your help together with many others who are drinking our water, we have been able to avoid over 3,000 single use plastic bottles for the past 2 months. We feel proud that we are jointly taking initiatives to preserve our planet. Drink today, Preserve tomorrow !, admin, 2018-10-02 07:23:33, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (10, MULTIPLE SUB,  Thank you for being part of our community!
With your help together with many others who are drinking our water, we have been able to avoid over 3,000 single use plastic bottles for the past 2 months. We feel proud that we are jointly taking initiatives to preserve our planet. Drink today, Preserve tomorrow !, admin, 2018-10-02 07:25:59, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (11, MULTIPLE SUB, Thank you for being part of our community!
With your help together with many others who are drinking our water, we have been able to avoid over 3,000 single use plastic bottles for the past 2 months. We feel proud that we are jointly taking initiatives to preserve our planet. Drink today, Preserve tomorrow !, admin, 2018-10-02 07:28:35, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (12, MULTIPLE SUB, Thank you for being part of our community!
With your help together with many others who are drinking our water, we have been able to avoid over 3,000 single use plastic bottles for the past 2 months. We feel proud that we are jointly taking initiatives to preserve our planet. Drink today, Preserve tomorrow !, admin, 2018-10-02 07:30:14, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (13, MULTIPLE SUB, Thank you for being part of our community!
With your help together with many others who are drinking our water, we have been able to avoid over 3,000 single use plastic bottles for the past 2 months. We feel proud that we are jointly taking initiatives to preserve our planet. Drink today, Preserve tomorrow !, admin, 2018-10-02 07:30:34, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (14, MULTIPLE SUB,  Thank you for being part of our community!
With your help together with many others who are drinking our water, we have been able to avoid over 3,000 single use plastic bottles for the past 2 months. We feel proud that we are jointly taking initiatives to preserve our planet. Drink today, Preserve tomorrow ! , admin, 2018-10-02 07:49:52, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (18, 255754510366, 123456inquire amount, SYSTEM, 2018-10-03 23:00:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (17, 255766978710, 123456inquire amount, SYSTEM, 2018-10-03 23:00:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (19, 255766978710, 123456inquire amount, SYSTEM, 2018-10-04 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (20, 255754510366, 123456inquire amount, SYSTEM, 2018-10-04 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (21, 255766978710, 123456inquire amount, SYSTEM, 2018-10-05 23:00:05, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (22, 255754510366, 123456inquire amount, SYSTEM, 2018-10-05 23:00:06, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (23, MULTIPLE SUB, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month, admin, 2018-10-06 18:17:38, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (24, MULTIPLE SUB, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month, admin, 2018-10-06 18:20:44, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (25, MULTIPLE SUB, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month, admin, 2018-10-06 18:20:47, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (26, MULTIPLE SUB, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month, admin, 2018-10-06 18:21:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (27, 255769918748, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:14, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (28, 255785777667, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:14, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (29, 255759876427, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:15, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (30, 255765610550, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:15, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (31, 255758060163, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:15, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (32, 255758007979, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:16, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (33, 255756078779, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:16, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (34, 255754448727, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:16, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (35, 255754866599, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:17, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (36, 255762338827, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:17, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (37, 255762708271, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:18, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (38, 255744797618, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:18, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (39, 255754806081, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:18, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (40, 255743878613, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:19, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (41, 255712906062, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:19, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (42, 255714032550, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:19, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (43, 255754510366, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:20, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (44, 255745019213, Dear Customer, we would like to thank you for being part of Ecowater Family. Happy Customer Service Month., admin, 2018-10-06 18:42:20, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (45, 255766978710, 123456inquire amount, SYSTEM, 2018-10-06 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (46, 255766978710, 123456inquire amount, SYSTEM, 2018-10-07 23:00:06, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (47, 255766978710, 123456inquire amount, SYSTEM, 2018-10-08 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (48, 255766978710, 123456inquire amount, SYSTEM, 2018-10-09 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (49, 255766978710, 123456inquire amount, SYSTEM, 2018-10-10 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (50, 255766978710, 123456inquire amount, SYSTEM, 2018-10-11 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (51, 255766978710, 123456inquire amount, SYSTEM, 2018-10-12 23:00:11, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (52, 255766978710, 123456inquire amount, SYSTEM, 2018-10-13 23:00:10, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (53, 255766978710, 123456inquire amount, SYSTEM, 2018-10-14 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (54, 255766978710, 123456inquire amount, SYSTEM, 2018-10-15 23:00:05, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (55, 255766978710, 123456inquire amount, SYSTEM, 2018-10-16 23:00:05, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (56, 255766978710, 123456inquire amount, SYSTEM, 2018-10-17 23:00:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (57, 255766978710, 123456inquire amount, SYSTEM, 2018-10-18 23:00:05, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (58, 255766978710, 123456inquire amount, SYSTEM, 2018-10-19 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (59, 255766978710, 123456inquire amount, SYSTEM, 2018-10-20 23:00:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (60, 255766978710, 123456inquire amount, SYSTEM, 2018-10-21 23:00:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (61, 255625590951, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:31, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (62, 255769918748, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:31, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (63, 255785777667, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:32, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (64, 255759876427, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:32, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (65, 255755076450, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:33, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (66, 255755994403, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:33, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (67,  255714141450, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:34, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (68, 255767130886, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:34, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (69, 255756643595, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:34, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (70, 255713578009, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:35, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (71, 255764217161, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:35, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (72, 255756829416, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:36, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (73, 255766928850, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:36, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (74, 255767272012, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:36, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (75, 255759643495, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:37, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (76, 255784228209, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:37, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (77, 255766145599, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:38, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (78, 255757593683, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:38, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (79, 255765754430, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:39, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (80, 255742067560, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:39, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (81, 255765610550, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:39, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (82, 255766105689, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:40, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (83, 255752082106, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:41, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (84, 255757633511, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:41, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (85,  255653311018, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:42, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (86, 255758060163, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:42, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (87, 255674564178, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:43, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (88, 255755729526, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:43, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (89, 255762968869, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:44, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (90, 255769759622, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:44, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (91, 255768828377, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:44, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (92, 255754895048, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:45, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (93, 255786128120, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:45, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (94, 255753941583, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:45, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (95, 255765345955, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:46, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (96, 255746134003, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:46, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (97, 255673598803, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:47, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (98, 255759530554, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:47, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (99, 255758041923, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:47, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (100, 255765058703, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:48, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (101, 255762014540, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:48, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (102, 255753152632, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:48, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (103, 255746181860, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:49, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (104, 255717254926, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:49, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (105, 255765770071, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:49, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (106, 255758370214, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:50, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (107, 255754043887, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:50, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (108, 255654235557, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:50, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (109, 255758007979, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:51, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (110, 255756078779, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:51, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (111, 255754448727, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:52, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (112, 255745531590, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:52, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (113, 255766327423, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:52, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (114, 255745559150, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:53, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (115, 255659344551, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:53, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (116, 255716867015, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:53, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (117, 255754866599, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:54, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (118, 255786337705, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:54, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (119, 255783137059, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:54, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (120, 255754525953, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:55, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (121, 255759929293, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:56, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (122, 255715915005, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:56, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (123, 255767457061, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:56, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (124, 255767457061, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:57, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (125, 255746117797, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:57, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (126, 255769570803, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:57, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (127, 255753818504, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:58, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (128, 255762708271, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:58, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (129, 255744797618, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:58, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (130, 255754896006, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:59, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (131, 255756302544, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:59, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (132, 255758513487, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:33:59, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (133, 255742044290, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:00, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (134, 255754830597, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:00, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (135, 255754806081, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:00, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (136, 255759795420, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:01, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (137, 255753013212, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:01, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (138, 255743878613, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:02, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (139, 255716271485, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:02, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (140, 255769575521, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:02, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (141, 255765336044, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (142, 255743074281, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (143, 255756929320, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:03, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (144, 255753812873, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:04, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (145, 255768533831, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:05, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (146, 255716209342, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:06, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (147, 255769040981, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:06, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (148, 255768112229, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:07, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (149, 255714032550, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:07, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (150, 255743234837, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:07, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (151, 255766380493, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:08, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (152, 255659344551, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:08, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (153, 255755427270    , Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:09, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (154, 255753351519, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:09, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (155, 255767652268, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:09, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (156, 255764943305, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:10, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (157, 255754510366, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:10, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (158, 255763027733, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:10, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (159, 255685750834, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:11, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (160, 255766217966, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:11, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (161, 255713045333, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:11, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (162, 255754401998, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:12, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (163, 255654640233, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:12, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (164, 255745501716, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:12, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (165, 255742483602, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:13, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (166, 255752961919, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:13, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (167, 255744663962, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:13, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (168, 255655689897, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:14, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (169, 255759279709, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:14, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (170, 255715151830, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:15, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (171, 255759050336, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:15, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (172, 255752907336, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:15, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (173, 255784318358, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:16, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (174, 255654580705, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:16, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (175, 255757135096, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:17, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (176, 255765284170, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:17, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (177, 255759613342, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:17, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (178, 255784546044, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:18, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (179, 255744909663, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:18, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (180, 255766620912, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:18, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (181, 255754284834, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:19, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (182, 255789580416, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:19, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (183, 255768155356, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:20, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (184, 255745019213, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:20, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (185, 255677838121, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:20, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (186, 255755599416, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:21, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (187, 255767660833, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:21, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (188, 255754353945, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:21, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (189, 255767141313, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:22, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (190, 255716076984, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:22, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (191, 255788675914, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:22, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (192, 255712059367, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:23, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (193, 255766474878, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:23, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (194, 255759353035, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:24, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (195, 255763450915, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:24, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (196, 255765098528, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:24, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (197, 255753696496, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:25, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (198, 0758223730, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:25, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (199, 255762338827, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:25, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (200, 255762909967, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:26, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (201, 255653215427, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:26, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (202, 255762507453, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:26, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (203, 255753995617, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:27, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (204, 255713959625, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:27, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (205, 255762088686, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:27, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (206, 255762695610, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:28, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (207, 255756922188, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:28, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (208, 255752112146, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:29, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (209, 255763460665, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:29, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (210, 255745856746, Dear Customer, Thank you for being part of the Ecowater Family. Our goal is to make your hydration hustle free, by giving you access to clean, safe and affordable drinking water in a way that produces less or no plastic waste. If you have a minute, Please click the link below and help to fill out our survey form and help us to understand how we can serve you better. https://enketo.ona.io/x/#aVlFM5rG, admin, 2018-10-22 11:34:29, NULL);
INSERT INTO `eco_sms_outgoing` (`id`, `receiver`, `message`, `maker_id`, `date_registered`, `date_updated`) VALUES (399, 255766978710, 123456inquire amount, SYSTEM, 2018-10-22 23:00:07, NULL);


#
#



#