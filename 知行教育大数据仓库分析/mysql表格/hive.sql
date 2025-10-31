/*
 Navicat Premium Dump SQL

 Source Server         : edu.centos
 Source Server Type    : MySQL
 Source Server Version : 50726 (5.7.26)
 Source Host           : 192.168.52.150:3306
 Source Schema         : hive

 Target Server Type    : MySQL
 Target Server Version : 50726 (5.7.26)
 File Encoding         : 65001

 Date: 01/11/2025 02:32:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for AUX_TABLE
-- ----------------------------
DROP TABLE IF EXISTS `AUX_TABLE`;
CREATE TABLE `AUX_TABLE`  (
  `MT_KEY1` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `MT_KEY2` bigint(20) NOT NULL,
  `MT_COMMENT` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MT_KEY1`, `MT_KEY2`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of AUX_TABLE
-- ----------------------------

-- ----------------------------
-- Table structure for BUCKETING_COLS
-- ----------------------------
DROP TABLE IF EXISTS `BUCKETING_COLS`;
CREATE TABLE `BUCKETING_COLS`  (
  `SD_ID` bigint(20) NOT NULL,
  `BUCKET_COL_NAME` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`SD_ID`, `INTEGER_IDX`) USING BTREE,
  INDEX `BUCKETING_COLS_N49`(`SD_ID`) USING BTREE,
  CONSTRAINT `BUCKETING_COLS_FK1` FOREIGN KEY (`SD_ID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of BUCKETING_COLS
-- ----------------------------
INSERT INTO `BUCKETING_COLS` VALUES (1279, 'id', 0);
INSERT INTO `BUCKETING_COLS` VALUES (1289, 'rid', 0);
INSERT INTO `BUCKETING_COLS` VALUES (1290, 'customer_id', 0);
INSERT INTO `BUCKETING_COLS` VALUES (1341, 'customer_relationship_id', 0);

-- ----------------------------
-- Table structure for CDH_VERSION
-- ----------------------------
DROP TABLE IF EXISTS `CDH_VERSION`;
CREATE TABLE `CDH_VERSION`  (
  `VER_ID` bigint(20) NOT NULL,
  `SCHEMA_VERSION` varchar(127) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `VERSION_COMMENT` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`VER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of CDH_VERSION
-- ----------------------------
INSERT INTO `CDH_VERSION` VALUES (1, '2.1.1-cdh6.2.0', 'Hive release version 2.1.1 for CDH 6.2.0');

-- ----------------------------
-- Table structure for CDS
-- ----------------------------
DROP TABLE IF EXISTS `CDS`;
CREATE TABLE `CDS`  (
  `CD_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CD_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of CDS
-- ----------------------------
INSERT INTO `CDS` VALUES (39);
INSERT INTO `CDS` VALUES (231);
INSERT INTO `CDS` VALUES (373);
INSERT INTO `CDS` VALUES (374);
INSERT INTO `CDS` VALUES (376);
INSERT INTO `CDS` VALUES (377);
INSERT INTO `CDS` VALUES (378);
INSERT INTO `CDS` VALUES (394);
INSERT INTO `CDS` VALUES (532);
INSERT INTO `CDS` VALUES (534);
INSERT INTO `CDS` VALUES (535);
INSERT INTO `CDS` VALUES (536);
INSERT INTO `CDS` VALUES (537);
INSERT INTO `CDS` VALUES (538);
INSERT INTO `CDS` VALUES (540);
INSERT INTO `CDS` VALUES (541);
INSERT INTO `CDS` VALUES (542);
INSERT INTO `CDS` VALUES (544);
INSERT INTO `CDS` VALUES (551);
INSERT INTO `CDS` VALUES (562);
INSERT INTO `CDS` VALUES (575);
INSERT INTO `CDS` VALUES (576);
INSERT INTO `CDS` VALUES (577);
INSERT INTO `CDS` VALUES (578);
INSERT INTO `CDS` VALUES (579);
INSERT INTO `CDS` VALUES (580);
INSERT INTO `CDS` VALUES (581);
INSERT INTO `CDS` VALUES (582);
INSERT INTO `CDS` VALUES (583);

-- ----------------------------
-- Table structure for COLUMNS_V2
-- ----------------------------
DROP TABLE IF EXISTS `COLUMNS_V2`;
CREATE TABLE `COLUMNS_V2`  (
  `CD_ID` bigint(20) NOT NULL,
  `COMMENT` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `COLUMN_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `TYPE_NAME` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`CD_ID`, `COLUMN_NAME`) USING BTREE,
  INDEX `COLUMNS_V2_N49`(`CD_ID`) USING BTREE,
  CONSTRAINT `COLUMNS_V2_FK1` FOREIGN KEY (`CD_ID`) REFERENCES `CDS` (`CD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of COLUMNS_V2
-- ----------------------------
INSERT INTO `COLUMNS_V2` VALUES (39, NULL, 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (39, '??', 'name', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (231, NULL, 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (231, NULL, 'name', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (373, '??', 'area', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (373, '?????? ', 'begin_time', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (373, '?????', 'browser_name', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (373, '??', 'city', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (373, '????', 'country', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (373, '??????', 'create_date_time', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (373, '??????', 'create_time', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (373, '??????', 'end_time', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (373, '??', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (373, 'IP??', 'ip', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (373, '???????????', 'last_agent_msg_time_stamp', 'string', 18);
INSERT INTO `COLUMNS_V2` VALUES (373, '???????????', 'last_customer_msg_time_stamp', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (373, '??????', 'manual_time', 'string', 14);
INSERT INTO `COLUMNS_V2` VALUES (373, '???????', 'msg_count', 'int', 20);
INSERT INTO `COLUMNS_V2` VALUES (373, '????', 'origin_channel', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (373, '????', 'os_info', 'string', 22);
INSERT INTO `COLUMNS_V2` VALUES (373, '?', 'province', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (373, '???????', 'reply_msg_count', 'int', 19);
INSERT INTO `COLUMNS_V2` VALUES (373, '???', 'seo_keywords', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (373, '????', 'seo_source', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (373, '??sessionId', 'session_id', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (373, '??id', 'sid', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (373, '????', 'user_match', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (374, '??????', 'from_url', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (374, '??????', 'history', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (374, '????MySQL', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (374, '??????', 'landing_page_url', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (374, '???????', 'other_params', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (374, '??????', 'platform_description', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (374, '??????', 'referrer', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (374, '????title', 'url_title', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (376, '??', 'area', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (376, '??????', 'create_time', 'bigint', 2);
INSERT INTO `COLUMNS_V2` VALUES (376, '??????', 'from_url', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (376, '??????', 'history', 'string', 14);
INSERT INTO `COLUMNS_V2` VALUES (376, '??', 'hourinfo', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (376, 'IP??', 'ip', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (376, '??????', 'landing_page_url', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (376, '???????', 'msg_count', 'int', 6);
INSERT INTO `COLUMNS_V2` VALUES (376, '????', 'origin_channel', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (376, '???????', 'other_params', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (376, '??????', 'platform_description', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (376, '??????', 'referrer', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (376, '????', 'seo_source', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (376, '??sessionId', 'session_id', 'string', 0);
INSERT INTO `COLUMNS_V2` VALUES (376, '??id', 'sid', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (376, '????title', 'url_title', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (377, '????', 'area', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (377, '??????', 'from_url', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (377, '???????1.???2.?????3.?????4.???????5.????', 'grouptype', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (377, '??????????', 'hourinfo', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (377, '??IP???count', 'ip_total', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (377, '????', 'origin_channel', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (377, '????', 'seo_source', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (377, '??sessionid???count', 'sessionid_total', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (377, '??sid???count', 'sid_total', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (377, '????', 'time_str', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (377, '???????1???????2??????3??????4???????5??????', 'time_type', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (378, '????', 'area', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (378, '???????1.???2.????', 'grouptype', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (378, '??????????', 'hourinfo', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (378, '??IP???count', 'ip_total', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (378, '????', 'origin_channel', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (378, '??sessionid???count', 'sessionid_total', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (378, '??sid???count', 'sid_total', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (378, '????', 'time_str', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (378, '???????1???????2??????3??????4???????5??????', 'time_type', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (394, NULL, 'city', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (394, NULL, 'hno', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (394, NULL, 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (394, NULL, 'street', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'anticipat_signup_date', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (532, '??id', 'appeal_id', 'int', 50);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'belonged', 'int', 53);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'belonged_time', 'string', 54);
INSERT INTO `COLUMNS_V2` VALUES (532, '???', 'belonger', 'int', 6);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????', 'belonger_name', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'belonger_time', 'string', 55);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'business_scrm_department_id', 'int', 10);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'close_state', 'string', 48);
INSERT INTO `COLUMNS_V2` VALUES (532, '????????', 'close_time', 'string', 49);
INSERT INTO `COLUMNS_V2` VALUES (532, '??', 'comment', 'string', 23);
INSERT INTO `COLUMNS_V2` VALUES (532, '??ID', 'course_id', 'int', 45);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'course_name', 'string', 46);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'create_date_time', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (532, '???', 'creator', 'int', 19);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????', 'creator_name', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (532, '????????==???????????? ???', 'current_creator', 'int', 20);
INSERT INTO `COLUMNS_V2` VALUES (532, '????id', 'customer_id', 'int', 4);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'delete_comment', 'string', 47);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'delete_reason', 'string', 41);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'delete_time', 'string', 44);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????????', 'deleted', 'int', 3);
INSERT INTO `COLUMNS_V2` VALUES (532, '???', 'deleter', 'int', 42);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????', 'deleter_name', 'string', 43);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????', 'distribution_handler', 'int', 9);
INSERT INTO `COLUMNS_V2` VALUES (532, 'ems???id', 'ems_student_id', 'int', 40);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'end_time', 'string', 61);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????id', 'first_customer_clue_id', 'int', 24);
INSERT INTO `COLUMNS_V2` VALUES (532, '???????id', 'first_id', 'int', 5);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????0-?????1-?????2-?????3-???????4-???????5-????', 'follow_type', 'int', 58);
INSERT INTO `COLUMNS_V2` VALUES (532, '????id', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????', 'initial_belonger', 'int', 8);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'intention_study_type', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (532, '??ems??id', 'itcast_clazz_id', 'int', 36);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'itcast_clazz_time', 'string', 37);
INSERT INTO `COLUMNS_V2` VALUES (532, '??Id', 'itcast_school_id', 'int', 14);
INSERT INTO `COLUMNS_V2` VALUES (532, '??Id', 'itcast_subject_id', 'int', 15);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????id', 'last_customer_clue_id', 'int', 25);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'last_visit_time', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'level', 'string', 18);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'lock_state', 'string', 34);
INSERT INTO `COLUMNS_V2` VALUES (532, '????????', 'lock_time', 'string', 35);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'next_visit_time', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'notice_state', 'string', 32);
INSERT INTO `COLUMNS_V2` VALUES (532, '????????', 'notice_time', 'string', 33);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'origin_channel', 'string', 22);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'origin_type', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'payment_state', 'string', 28);
INSERT INTO `COLUMNS_V2` VALUES (532, '????????', 'payment_time', 'string', 29);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'payment_url', 'string', 38);
INSERT INTO `COLUMNS_V2` VALUES (532, '????????', 'payment_url_time', 'string', 39);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'process_state', 'string', 26);
INSERT INTO `COLUMNS_V2` VALUES (532, '????????', 'process_time', 'string', 27);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'signup_state', 'string', 30);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'signup_time', 'string', 31);
INSERT INTO `COLUMNS_V2` VALUES (532, '??', 'tenant', 'int', 51);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'total_fee', 'decimal(10,0)', 52);
INSERT INTO `COLUMNS_V2` VALUES (532, '???', 'transfer', 'int', 56);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????????OA??', 'transfer_bxg_belonger_name', 'string', 60);
INSERT INTO `COLUMNS_V2` VALUES (532, '?????????OA??', 'transfer_bxg_oa_account', 'string', 59);
INSERT INTO `COLUMNS_V2` VALUES (532, '????', 'transfer_time', 'string', 57);
INSERT INTO `COLUMNS_V2` VALUES (532, '??????', 'update_date_time', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (534, '????', 'area', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (534, '????', 'birth_year', 'int', 7);
INSERT INTO `COLUMNS_V2` VALUES (534, '?????ID???????????', 'bxg_student_id', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (534, '????', 'create_date_time', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (534, '???ID', 'creator', 'int', 17);
INSERT INTO `COLUMNS_V2` VALUES (534, '????id', 'customer_relationship_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (534, '?????????', 'deleted', 'int', 4);
INSERT INTO `COLUMNS_V2` VALUES (534, '??', 'email', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (534, '??', 'gender', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (534, '????', 'graduation_date', 'date', 15);
INSERT INTO `COLUMNS_V2` VALUES (534, 'key id', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (534, '????', 'idcard', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (534, '????', 'leave_school_date', 'date', 14);
INSERT INTO `COLUMNS_V2` VALUES (534, '??id', 'md_id', 'int', 21);
INSERT INTO `COLUMNS_V2` VALUES (534, '??', 'name', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (534, '????', 'origin_channel', 'string', 19);
INSERT INTO `COLUMNS_V2` VALUES (534, '????', 'origin_type', 'string', 18);
INSERT INTO `COLUMNS_V2` VALUES (534, '???', 'phone', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (534, 'qq?', 'qq', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (534, NULL, 'tenant', 'int', 20);
INSERT INTO `COLUMNS_V2` VALUES (534, '??????', 'update_date_time', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (534, '??', 'wechat', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (535, '????', 'code', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (535, '????', 'create_date_time', 'timestamp', 1);
INSERT INTO `COLUMNS_V2` VALUES (535, '?????????', 'deleted', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (535, '????', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (535, '????', 'name', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (535, '??', 'tenant', 'int', 6);
INSERT INTO `COLUMNS_V2` VALUES (535, '??????', 'update_date_time', 'timestamp', 2);
INSERT INTO `COLUMNS_V2` VALUES (536, '????', 'code', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (536, '????', 'create_date_time', 'timestamp', 1);
INSERT INTO `COLUMNS_V2` VALUES (536, '?????????', 'deleted', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (536, '????', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (536, '????', 'name', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (536, '??', 'tenant', 'int', 6);
INSERT INTO `COLUMNS_V2` VALUES (536, '??????', 'update_date_time', 'timestamp', 2);
INSERT INTO `COLUMNS_V2` VALUES (537, '????', 'create_date_time', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (537, '???', 'creator', 'int', 10);
INSERT INTO `COLUMNS_V2` VALUES (537, '????????', 'cross_school', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (537, '?????????', 'deleted', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (537, 'OA??????????', 'department_id', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (537, 'OA?????', 'department_name', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (537, '?????OA????', 'email', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (537, 'ems????', 'ems_user_name', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (537, '??id', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (537, '????', 'job_number', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (537, '??????', 'last_login_date', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (537, '????', 'leave_office', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (537, '????', 'leave_office_time', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (537, '????????????????OA???????????', 'phone', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (537, '???????', 'real_name', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (537, '????', 'reinstated_time', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (537, '??????????', 'remote_login', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (537, 'SCRM????id', 'scrm_department_id', 'int', 14);
INSERT INTO `COLUMNS_V2` VALUES (537, '????ID', 'superior_leaders_id', 'int', 18);
INSERT INTO `COLUMNS_V2` VALUES (537, '????', 'tdepart_id', 'int', 19);
INSERT INTO `COLUMNS_V2` VALUES (537, '??', 'tenant', 'int', 20);
INSERT INTO `COLUMNS_V2` VALUES (537, '??????', 'update_date_time', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (538, '????', 'create_date_time', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (538, '???', 'creator', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (538, '????', 'deleted', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (538, '????', 'depart_level', 'int', 9);
INSERT INTO `COLUMNS_V2` VALUES (538, '???????????', 'depart_line', 'int', 11);
INSERT INTO `COLUMNS_V2` VALUES (538, '?????????1', 'depart_sign', 'int', 10);
INSERT INTO `COLUMNS_V2` VALUES (538, '????', 'depart_sort', 'int', 12);
INSERT INTO `COLUMNS_V2` VALUES (538, '????', 'disable_flag', 'int', 13);
INSERT INTO `COLUMNS_V2` VALUES (538, '??id', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (538, '?????', 'id_path', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (538, '????', 'name', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (538, '???id', 'parent_id', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (538, '????', 'tdepart_code', 'int', 7);
INSERT INTO `COLUMNS_V2` VALUES (538, '??', 'tenant', 'int', 14);
INSERT INTO `COLUMNS_V2` VALUES (538, '????', 'update_date_time', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (540, '????', 'create_date_time', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (540, '???', 'creator', 'int', 7);
INSERT INTO `COLUMNS_V2` VALUES (540, '??id', 'customer_id', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (540, '?????', 'deleted', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (540, '????', 'hourinfo', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (540, '??id', 'itcast_school_id', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (540, '??id', 'itcast_subject_id', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (540, '????', 'origin_type', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (540, '????:0.???1.??', 'origin_type_stat', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (540, 'id', 'rid', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (541, '????', 'area', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (541, '?????0.????1.???', 'clue_state_stat', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (541, '????', 'create_date_time', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (541, 'id??', 'customer_id', 'string', 0);
INSERT INTO `COLUMNS_V2` VALUES (541, '?????', 'deleted', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (541, '????', 'hourinfo', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (541, '??id', 'itcast_school_id', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (541, '????', 'itcast_school_name', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (541, '??id', 'itcast_subject_id', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (541, '????', 'itcast_subject_name', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (541, '????', 'origin_type', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (541, '????:0.???1.??', 'origin_type_stat', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (541, '?????id', 'tdepart_id', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (541, '??????', 'tdepart_name', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (542, '????', 'area', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (542, '?????0.????1.???', 'clue_state_stat', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (542, '???????', 'customer_total', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (542, '???????1.?????2.?????3.??????????4.?????5.????;', 'grouptype', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (542, '????', 'hourinfo', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (542, '??id', 'itcast_school_id', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (542, '????', 'itcast_school_name', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (542, '??id', 'itcast_subject_id', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (542, '????', 'itcast_subject_name', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (542, '????', 'origin_type', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (542, '????:0.???1.??', 'origin_type_stat', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (542, '?????id', 'tdepart_id', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (542, '??????', 'tdepart_name', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (542, '????', 'time_str', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (542, '?????1???????2??????3??????4??????5??????', 'time_type', 'string', 14);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'anticipat_signup_date', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (544, '??id', 'appeal_id', 'int', 50);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'belonged', 'int', 53);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'belonged_time', 'string', 54);
INSERT INTO `COLUMNS_V2` VALUES (544, '???', 'belonger', 'int', 6);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????', 'belonger_name', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'belonger_time', 'string', 55);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'business_scrm_department_id', 'int', 10);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'close_state', 'string', 48);
INSERT INTO `COLUMNS_V2` VALUES (544, '????????', 'close_time', 'string', 49);
INSERT INTO `COLUMNS_V2` VALUES (544, '??', 'comment', 'string', 23);
INSERT INTO `COLUMNS_V2` VALUES (544, '??ID', 'course_id', 'int', 45);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'course_name', 'string', 46);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'create_date_time', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (544, '???', 'creator', 'int', 19);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????', 'creator_name', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (544, '????????==???????????? ???', 'current_creator', 'int', 20);
INSERT INTO `COLUMNS_V2` VALUES (544, '????id', 'customer_id', 'int', 4);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'delete_comment', 'string', 47);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'delete_reason', 'string', 41);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'delete_time', 'string', 44);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????????', 'deleted', 'int', 3);
INSERT INTO `COLUMNS_V2` VALUES (544, '???', 'deleter', 'int', 42);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????', 'deleter_name', 'string', 43);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????', 'distribution_handler', 'int', 9);
INSERT INTO `COLUMNS_V2` VALUES (544, 'ems???id', 'ems_student_id', 'int', 40);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'end_time', 'string', 61);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????id', 'first_customer_clue_id', 'int', 24);
INSERT INTO `COLUMNS_V2` VALUES (544, '???????id', 'first_id', 'int', 5);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????0-?????1-?????2-?????3-???????4-???????5-????', 'follow_type', 'int', 58);
INSERT INTO `COLUMNS_V2` VALUES (544, '????id', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????', 'initial_belonger', 'int', 8);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'intention_study_type', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (544, '??ems??id', 'itcast_clazz_id', 'int', 36);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'itcast_clazz_time', 'string', 37);
INSERT INTO `COLUMNS_V2` VALUES (544, '??Id', 'itcast_school_id', 'int', 14);
INSERT INTO `COLUMNS_V2` VALUES (544, '??Id', 'itcast_subject_id', 'int', 15);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????id', 'last_customer_clue_id', 'int', 25);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'last_visit_time', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'level', 'string', 18);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'lock_state', 'string', 34);
INSERT INTO `COLUMNS_V2` VALUES (544, '????????', 'lock_time', 'string', 35);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'next_visit_time', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'notice_state', 'string', 32);
INSERT INTO `COLUMNS_V2` VALUES (544, '????????', 'notice_time', 'string', 33);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'origin_channel', 'string', 22);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'origin_type', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'payment_state', 'string', 28);
INSERT INTO `COLUMNS_V2` VALUES (544, '????????', 'payment_time', 'string', 29);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'payment_url', 'string', 38);
INSERT INTO `COLUMNS_V2` VALUES (544, '????????', 'payment_url_time', 'string', 39);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'process_state', 'string', 26);
INSERT INTO `COLUMNS_V2` VALUES (544, '????????', 'process_time', 'string', 27);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'signup_state', 'string', 30);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'signup_time', 'string', 31);
INSERT INTO `COLUMNS_V2` VALUES (544, '??', 'tenant', 'int', 51);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'total_fee', 'decimal(10,0)', 52);
INSERT INTO `COLUMNS_V2` VALUES (544, '???', 'transfer', 'int', 56);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????????OA??', 'transfer_bxg_belonger_name', 'string', 60);
INSERT INTO `COLUMNS_V2` VALUES (544, '?????????OA??', 'transfer_bxg_oa_account', 'string', 59);
INSERT INTO `COLUMNS_V2` VALUES (544, '????', 'transfer_time', 'string', 57);
INSERT INTO `COLUMNS_V2` VALUES (544, '??????', 'update_date_time', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (551, '??id', 'activity_id', 'string', 71);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'activity_name', 'string', 72);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'anticipat_signup_date', 'string', 56);
INSERT INTO `COLUMNS_V2` VALUES (551, '??', 'area', 'string', 33);
INSERT INTO `COLUMNS_V2` VALUES (551, '?????? ', 'begin_time', 'string', 22);
INSERT INTO `COLUMNS_V2` VALUES (551, '?????', 'browser_name', 'string', 31);
INSERT INTO `COLUMNS_V2` VALUES (551, '??', 'city', 'string', 36);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'clue_state', 'string', 57);
INSERT INTO `COLUMNS_V2` VALUES (551, '??', 'comment', 'string', 26);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'country', 'string', 34);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'course_id', 'int', 66);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'course_name', 'string', 67);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'create_date_time', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'create_time', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (551, '???', 'creator', 'int', 37);
INSERT INTO `COLUMNS_V2` VALUES (551, '??id', 'customer_id', 'int', 4);
INSERT INTO `COLUMNS_V2` VALUES (551, '????id', 'customer_relationship_id', 'int', 5);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'customer_state', 'string', 54);
INSERT INTO `COLUMNS_V2` VALUES (551, '?????????', 'deleted', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (551, '??', 'email', 'string', 47);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'end_time', 'string', 29);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'ends_time', 'string', 76);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'finish_reason', 'string', 27);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'finish_user', 'string', 28);
INSERT INTO `COLUMNS_V2` VALUES (551, '?????0-?????1-?????2-?????3-???????4-???????5-????', 'follow_type', 'int', 73);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'from_url', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (551, '??', 'gender', 'string', 48);
INSERT INTO `COLUMNS_V2` VALUES (551, 'customer_clue_id', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'idcard', 'string', 39);
INSERT INTO `COLUMNS_V2` VALUES (551, '???????URL??', 'info_source', 'string', 64);
INSERT INTO `COLUMNS_V2` VALUES (551, '???????URL', 'info_url', 'string', 63);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'information_way', 'string', 51);
INSERT INTO `COLUMNS_V2` VALUES (551, 'IP??', 'ip', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????(?????) 0:?? 1???', 'is_repeat', 'int', 69);
INSERT INTO `COLUMNS_V2` VALUES (551, '??', 'itcast_school', 'string', 42);
INSERT INTO `COLUMNS_V2` VALUES (551, '??Id', 'itcast_school_id', 'int', 41);
INSERT INTO `COLUMNS_V2` VALUES (551, '??', 'itcast_subject', 'string', 44);
INSERT INTO `COLUMNS_V2` VALUES (551, '??Id', 'itcast_subject_id', 'int', 43);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'landing_page_url', 'string', 18);
INSERT INTO `COLUMNS_V2` VALUES (551, '????????URL??', 'landing_source', 'string', 62);
INSERT INTO `COLUMNS_V2` VALUES (551, '????????URL', 'landing_url', 'string', 61);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'level', 'string', 49);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'manual_time', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (551, '???????', 'msg_count', 'int', 25);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'name', 'string', 38);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'origin_channel', 'string', 65);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'origin_type', 'string', 50);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'os_info', 'string', 32);
INSERT INTO `COLUMNS_V2` VALUES (551, '???', 'phone', 'string', 40);
INSERT INTO `COLUMNS_V2` VALUES (551, '???? ?pc-????|wap-wap??|sdk-app??|weixin-?????', 'platform', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'platform_description', 'string', 30);
INSERT INTO `COLUMNS_V2` VALUES (551, '?', 'province', 'string', 35);
INSERT INTO `COLUMNS_V2` VALUES (551, 'qq?', 'qq', 'string', 46);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'referrer', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (551, '???????', 'reply_msg_count', 'int', 23);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 's_name', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (551, 'SCRM????id', 'scrm_department_id', 'int', 58);
INSERT INTO `COLUMNS_V2` VALUES (551, '???', 'seo_keywords', 'string', 14);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'seo_source', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (551, '????id', 'session_id', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (551, '???????', 'shunt_employee_group_id', 'int', 75);
INSERT INTO `COLUMNS_V2` VALUES (551, '???????id', 'shunt_mode_id', 'int', 74);
INSERT INTO `COLUMNS_V2` VALUES (551, '??id', 'sid', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (551, '???undeal??? deal ??? finish ??? changePeer ????', 'status', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (551, '????????URL??', 'superior_source', 'string', 60);
INSERT INTO `COLUMNS_V2` VALUES (551, '????????URL', 'superior_url', 'string', 59);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'technical_directions', 'string', 53);
INSERT INTO `COLUMNS_V2` VALUES (551, '??id', 'tenant', 'int', 70);
INSERT INTO `COLUMNS_V2` VALUES (551, '?????', 'to_peer', 'string', 20);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'total_msg_count', 'int', 24);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'update_date_time', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (551, '????title', 'url_title', 'string', 19);
INSERT INTO `COLUMNS_V2` VALUES (551, '????', 'users', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (551, '????????????', 'valid', 'string', 55);
INSERT INTO `COLUMNS_V2` VALUES (551, '??', 'wechat', 'string', 45);
INSERT INTO `COLUMNS_V2` VALUES (551, '??????', 'working_years', 'string', 52);
INSERT INTO `COLUMNS_V2` VALUES (551, 'zhuge??id', 'zhuge_session_id', 'string', 68);
INSERT INTO `COLUMNS_V2` VALUES (562, '??id', 'activity_id', 'string', 71);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'activity_name', 'string', 72);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'anticipat_signup_date', 'string', 56);
INSERT INTO `COLUMNS_V2` VALUES (562, '??', 'area', 'string', 33);
INSERT INTO `COLUMNS_V2` VALUES (562, '?????? ', 'begin_time', 'string', 22);
INSERT INTO `COLUMNS_V2` VALUES (562, '?????', 'browser_name', 'string', 31);
INSERT INTO `COLUMNS_V2` VALUES (562, '??', 'city', 'string', 36);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'clue_state', 'string', 57);
INSERT INTO `COLUMNS_V2` VALUES (562, '??', 'comment', 'string', 26);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'country', 'string', 34);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'course_id', 'int', 66);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'course_name', 'string', 67);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'create_date_time', 'string', 1);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'create_time', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (562, '???', 'creator', 'int', 37);
INSERT INTO `COLUMNS_V2` VALUES (562, '??id', 'customer_id', 'int', 4);
INSERT INTO `COLUMNS_V2` VALUES (562, '????id', 'customer_relationship_id', 'int', 5);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'customer_state', 'string', 54);
INSERT INTO `COLUMNS_V2` VALUES (562, '?????????', 'deleted', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (562, '??', 'email', 'string', 47);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'end_time', 'string', 29);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'ends_time', 'string', 76);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'finish_reason', 'string', 27);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'finish_user', 'string', 28);
INSERT INTO `COLUMNS_V2` VALUES (562, '?????0-?????1-?????2-?????3-???????4-???????5-????', 'follow_type', 'int', 73);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'from_url', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (562, '??', 'gender', 'string', 48);
INSERT INTO `COLUMNS_V2` VALUES (562, 'customer_clue_id', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'idcard', 'string', 39);
INSERT INTO `COLUMNS_V2` VALUES (562, '???????URL??', 'info_source', 'string', 64);
INSERT INTO `COLUMNS_V2` VALUES (562, '???????URL', 'info_url', 'string', 63);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'information_way', 'string', 51);
INSERT INTO `COLUMNS_V2` VALUES (562, 'IP??', 'ip', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????(?????) 0:?? 1???', 'is_repeat', 'int', 69);
INSERT INTO `COLUMNS_V2` VALUES (562, '??', 'itcast_school', 'string', 42);
INSERT INTO `COLUMNS_V2` VALUES (562, '??Id', 'itcast_school_id', 'int', 41);
INSERT INTO `COLUMNS_V2` VALUES (562, '??', 'itcast_subject', 'string', 44);
INSERT INTO `COLUMNS_V2` VALUES (562, '??Id', 'itcast_subject_id', 'int', 43);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'landing_page_url', 'string', 18);
INSERT INTO `COLUMNS_V2` VALUES (562, '????????URL??', 'landing_source', 'string', 62);
INSERT INTO `COLUMNS_V2` VALUES (562, '????????URL', 'landing_url', 'string', 61);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'level', 'string', 49);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'manual_time', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (562, '???????', 'msg_count', 'int', 25);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'name', 'string', 38);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'origin_channel', 'string', 65);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'origin_type', 'string', 50);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'os_info', 'string', 32);
INSERT INTO `COLUMNS_V2` VALUES (562, '???', 'phone', 'string', 40);
INSERT INTO `COLUMNS_V2` VALUES (562, '???? ?pc-????|wap-wap??|sdk-app??|weixin-?????', 'platform', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'platform_description', 'string', 30);
INSERT INTO `COLUMNS_V2` VALUES (562, '?', 'province', 'string', 35);
INSERT INTO `COLUMNS_V2` VALUES (562, 'qq?', 'qq', 'string', 46);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'referrer', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (562, '???????', 'reply_msg_count', 'int', 23);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 's_name', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (562, 'SCRM????id', 'scrm_department_id', 'int', 58);
INSERT INTO `COLUMNS_V2` VALUES (562, '???', 'seo_keywords', 'string', 14);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'seo_source', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (562, '????id', 'session_id', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (562, '???????', 'shunt_employee_group_id', 'int', 75);
INSERT INTO `COLUMNS_V2` VALUES (562, '???????id', 'shunt_mode_id', 'int', 74);
INSERT INTO `COLUMNS_V2` VALUES (562, '??id', 'sid', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (562, '???undeal??? deal ??? finish ??? changePeer ????', 'status', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (562, '????????URL??', 'superior_source', 'string', 60);
INSERT INTO `COLUMNS_V2` VALUES (562, '????????URL', 'superior_url', 'string', 59);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'technical_directions', 'string', 53);
INSERT INTO `COLUMNS_V2` VALUES (562, '??id', 'tenant', 'int', 70);
INSERT INTO `COLUMNS_V2` VALUES (562, '?????', 'to_peer', 'string', 20);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'total_msg_count', 'int', 24);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'update_date_time', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (562, '????title', 'url_title', 'string', 19);
INSERT INTO `COLUMNS_V2` VALUES (562, '????', 'users', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (562, '????????????', 'valid', 'string', 55);
INSERT INTO `COLUMNS_V2` VALUES (562, '??', 'wechat', 'string', 45);
INSERT INTO `COLUMNS_V2` VALUES (562, '??????', 'working_years', 'string', 52);
INSERT INTO `COLUMNS_V2` VALUES (562, 'zhuge??id', 'zhuge_session_id', 'string', 68);
INSERT INTO `COLUMNS_V2` VALUES (575, '??id', 'class_id', 'int', 3);
INSERT INTO `COLUMNS_V2` VALUES (575, '????', 'create_time', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (575, NULL, 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (575, '?????  0 ?? 1 ??', 'inner_flag', 'int', 7);
INSERT INTO `COLUMNS_V2` VALUES (575, '??ip??', 'inner_ip', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (575, '???? 1 ?? 2 ?? 3 ??', 'normal_class_flag', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (575, '?????? 0 ? 1?  ????????????????????????1??????1 ?????0   (???)', 'share_state', 'int', 9);
INSERT INTO `COLUMNS_V2` VALUES (575, '????', 'signin_date', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (575, '????', 'signin_time', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (575, '???? 1 ???? 2 ???? 3 ????', 'signin_type', 'int', 8);
INSERT INTO `COLUMNS_V2` VALUES (575, '??id', 'student_id', 'int', 4);
INSERT INTO `COLUMNS_V2` VALUES (575, '????id normal_class_flag=2 ??tbh_school_time_table ?? normal_class_flag=1 ?? tbh_class_time_table', 'time_table_id', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (576, '???', 'audit_person', 'int', 4);
INSERT INTO `COLUMNS_V2` VALUES (576, '????', 'audit_remark', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (576, '???? 0 ??? 1 ?? 2 ???', 'audit_state', 'int', 3);
INSERT INTO `COLUMNS_V2` VALUES (576, '????', 'audit_time', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (576, '??????', 'begin_time', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (576, '1??? 2??? 3????', 'begin_time_type', 'int', 10);
INSERT INTO `COLUMNS_V2` VALUES (576, '????  0 ??? 1 ???', 'cancel_state', 'int', 14);
INSERT INTO `COLUMNS_V2` VALUES (576, '????', 'cancel_time', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (576, '??id', 'class_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (576, '????', 'create_time', 'string', 19);
INSERT INTO `COLUMNS_V2` VALUES (576, '??/????', 'days', 'float', 13);
INSERT INTO `COLUMNS_V2` VALUES (576, '??????', 'end_time', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (576, '1??? 2??? 3????', 'end_time_type', 'int', 12);
INSERT INTO `COLUMNS_V2` VALUES (576, NULL, 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (576, '????  1 ?? 2 ??', 'leave_reason', 'int', 8);
INSERT INTO `COLUMNS_V2` VALUES (576, '??/????', 'leave_remark', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (576, '????  1 ?? 2 ?? ?????????????????????????', 'leave_type', 'int', 7);
INSERT INTO `COLUMNS_V2` VALUES (576, '???id???leave_type =2 ???????', 'old_leave_id', 'int', 16);
INSERT INTO `COLUMNS_V2` VALUES (576, '??id', 'student_id', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (576, '?????0??? 1????', 'valid_state', 'int', 18);
INSERT INTO `COLUMNS_V2` VALUES (577, '??????', 'answer_job_number', 'string', 20);
INSERT INTO `COLUMNS_V2` VALUES (577, '????id', 'answer_teacher_id', 'int', 18);
INSERT INTO `COLUMNS_V2` VALUES (577, '??????', 'answer_teacher_name', 'string', 19);
INSERT INTO `COLUMNS_V2` VALUES (577, '????id', 'base_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (577, '????', 'class_date', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (577, '??id', 'class_id', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (577, '???? 0 ???? 1 AB?? 2 AB?? 3 ????', 'class_mode', 'int', 11);
INSERT INTO `COLUMNS_V2` VALUES (577, '??id', 'classroom_id', 'int', 8);
INSERT INTO `COLUMNS_V2` VALUES (577, '????', 'classroom_name', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (577, '????', 'content', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (577, '????', 'create_time', 'string', 22);
INSERT INTO `COLUMNS_V2` VALUES (577, 'id', 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (577, '???? 0 ? 1 ?', 'is_outline', 'int', 10);
INSERT INTO `COLUMNS_V2` VALUES (577, '????0?? 1???', 'is_pay', 'int', 13);
INSERT INTO `COLUMNS_V2` VALUES (577, '???????0?? 1???', 'is_stage_exam', 'int', 12);
INSERT INTO `COLUMNS_V2` VALUES (577, '??????0?? 1???', 'is_subsidy', 'int', 17);
INSERT INTO `COLUMNS_V2` VALUES (577, '??', 'job_number', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (577, '??', 'remark', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (577, '??id', 'teacher_id', 'int', 5);
INSERT INTO `COLUMNS_V2` VALUES (577, '????', 'teacher_name', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (577, '?????????', 'tutor_job_number', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (577, '???????id', 'tutor_teacher_id', 'int', 14);
INSERT INTO `COLUMNS_V2` VALUES (577, '??????', 'tutor_teacher_name', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????', 'afternoon_begin_time', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????', 'afternoon_end_time', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????id', 'afternoon_template_id', 'int', 5);
INSERT INTO `COLUMNS_V2` VALUES (578, '??id', 'class_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (578, '???', 'create_person', 'int', 14);
INSERT INTO `COLUMNS_V2` VALUES (578, '????', 'create_time', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????', 'evening_begin_time', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????', 'evening_end_time', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????id', 'evening_template_id', 'int', 8);
INSERT INTO `COLUMNS_V2` VALUES (578, NULL, 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????', 'morning_begin_time', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????', 'morning_end_time', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????id', 'morning_template_id', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (578, '??', 'remark', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????', 'use_begin_date', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (578, '??????', 'use_end_date', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (579, '??id', 'class_id', 'int', 3);
INSERT INTO `COLUMNS_V2` VALUES (579, NULL, 'id', 'int', 0);
INSERT INTO `COLUMNS_V2` VALUES (579, '??id', 'school_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (579, '????', 'studying_date', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (579, '??????', 'studying_student_count', 'int', 4);
INSERT INTO `COLUMNS_V2` VALUES (579, '??id', 'subject_id', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (580, '??????', 'afternoon_leave_count', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (580, '??id', 'class_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (580, '??', 'dateinfo', 'string', 0);
INSERT INTO `COLUMNS_V2` VALUES (580, '???????', 'evening_leave_count', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (580, '??????', 'morning_leave_count', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (581, '??????', 'afternoon_truant_count', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (581, '??id', 'class_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (581, '??', 'dateinfo', 'string', 0);
INSERT INTO `COLUMNS_V2` VALUES (581, '???????', 'evening_truant_count', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (581, '??????', 'morning_truant_count', 'string', 2);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'afternoon_att_count', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (582, '?????', 'afternoon_att_ratio', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'afternoon_late_count', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (582, '?????', 'afternoon_late_ratio', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'afternoon_leave_count', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (582, '?????', 'afternoon_leave_ratio', 'string', 18);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'afternoon_truant_count', 'string', 23);
INSERT INTO `COLUMNS_V2` VALUES (582, '?????', 'afternoon_truant_ratio', 'string', 24);
INSERT INTO `COLUMNS_V2` VALUES (582, '??id', 'class_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (582, '??', 'dateinfo', 'string', 0);
INSERT INTO `COLUMNS_V2` VALUES (582, '???????', 'evening_att_count', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'evening_att_ratio', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (582, '???????', 'evening_late_count', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'evening_late_ratio', 'string', 14);
INSERT INTO `COLUMNS_V2` VALUES (582, '???????', 'evening_leave_count', 'string', 19);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'evening_leave_ratio', 'string', 20);
INSERT INTO `COLUMNS_V2` VALUES (582, '???????', 'evening_truant_count', 'string', 25);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'evening_truant_ratio', 'string', 26);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'morning_att_count', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (582, '?????', 'morning_att_ratio', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'morning_late_count', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (582, '?????', 'morning_late_ratio', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'morning_leave_count', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (582, '?????', 'morning_leave_ratio', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'morning_truant_count', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (582, '?????', 'morning_truant_ratio', 'string', 22);
INSERT INTO `COLUMNS_V2` VALUES (582, '??????', 'studying_student_count', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'afternoon_att_count', 'string', 5);
INSERT INTO `COLUMNS_V2` VALUES (583, '?????', 'afternoon_att_ratio', 'string', 6);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'afternoon_late_count', 'string', 11);
INSERT INTO `COLUMNS_V2` VALUES (583, '?????', 'afternoon_late_ratio', 'string', 12);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'afternoon_leave_count', 'string', 17);
INSERT INTO `COLUMNS_V2` VALUES (583, '?????', 'afternoon_leave_ratio', 'string', 18);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'afternoon_truant_count', 'string', 23);
INSERT INTO `COLUMNS_V2` VALUES (583, '?????', 'afternoon_truant_ratio', 'string', 24);
INSERT INTO `COLUMNS_V2` VALUES (583, '??id', 'class_id', 'int', 1);
INSERT INTO `COLUMNS_V2` VALUES (583, '??', 'dateinfo', 'string', 0);
INSERT INTO `COLUMNS_V2` VALUES (583, '???????', 'evening_att_count', 'string', 7);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'evening_att_ratio', 'string', 8);
INSERT INTO `COLUMNS_V2` VALUES (583, '???????', 'evening_late_count', 'string', 13);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'evening_late_ratio', 'string', 14);
INSERT INTO `COLUMNS_V2` VALUES (583, '???????', 'evening_leave_count', 'string', 19);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'evening_leave_ratio', 'string', 20);
INSERT INTO `COLUMNS_V2` VALUES (583, '???????', 'evening_truant_count', 'string', 25);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'evening_truant_ratio', 'string', 26);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'morning_att_count', 'string', 3);
INSERT INTO `COLUMNS_V2` VALUES (583, '?????', 'morning_att_ratio', 'string', 4);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'morning_late_count', 'string', 9);
INSERT INTO `COLUMNS_V2` VALUES (583, '?????', 'morning_late_ratio', 'string', 10);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'morning_leave_count', 'string', 15);
INSERT INTO `COLUMNS_V2` VALUES (583, '?????', 'morning_leave_ratio', 'string', 16);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'morning_truant_count', 'string', 21);
INSERT INTO `COLUMNS_V2` VALUES (583, '?????', 'morning_truant_ratio', 'string', 22);
INSERT INTO `COLUMNS_V2` VALUES (583, '??????', 'studying_student_count', 'int', 2);
INSERT INTO `COLUMNS_V2` VALUES (583, '???????1???????2??????3??????4??????5??????', 'time_type', 'string', 27);

-- ----------------------------
-- Table structure for COMPACTION_QUEUE
-- ----------------------------
DROP TABLE IF EXISTS `COMPACTION_QUEUE`;
CREATE TABLE `COMPACTION_QUEUE`  (
  `CQ_ID` bigint(20) NOT NULL,
  `CQ_DATABASE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CQ_TABLE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CQ_PARTITION` varchar(767) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CQ_STATE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CQ_TYPE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CQ_TBLPROPERTIES` varchar(2048) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CQ_WORKER_ID` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CQ_START` bigint(20) NULL DEFAULT NULL,
  `CQ_RUN_AS` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CQ_HIGHEST_TXN_ID` bigint(20) NULL DEFAULT NULL,
  `CQ_META_INFO` varbinary(2048) NULL DEFAULT NULL,
  `CQ_HADOOP_JOB_ID` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CQ_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of COMPACTION_QUEUE
-- ----------------------------

-- ----------------------------
-- Table structure for COMPLETED_COMPACTIONS
-- ----------------------------
DROP TABLE IF EXISTS `COMPLETED_COMPACTIONS`;
CREATE TABLE `COMPLETED_COMPACTIONS`  (
  `CC_ID` bigint(20) NOT NULL,
  `CC_DATABASE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CC_TABLE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CC_PARTITION` varchar(767) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CC_STATE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CC_TYPE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CC_TBLPROPERTIES` varchar(2048) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CC_WORKER_ID` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CC_START` bigint(20) NULL DEFAULT NULL,
  `CC_END` bigint(20) NULL DEFAULT NULL,
  `CC_RUN_AS` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CC_HIGHEST_TXN_ID` bigint(20) NULL DEFAULT NULL,
  `CC_META_INFO` varbinary(2048) NULL DEFAULT NULL,
  `CC_HADOOP_JOB_ID` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CC_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of COMPLETED_COMPACTIONS
-- ----------------------------

-- ----------------------------
-- Table structure for COMPLETED_TXN_COMPONENTS
-- ----------------------------
DROP TABLE IF EXISTS `COMPLETED_TXN_COMPONENTS`;
CREATE TABLE `COMPLETED_TXN_COMPONENTS`  (
  `CTC_TXNID` bigint(20) NOT NULL,
  `CTC_DATABASE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CTC_TABLE` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `CTC_PARTITION` varchar(767) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of COMPLETED_TXN_COMPONENTS
-- ----------------------------

-- ----------------------------
-- Table structure for DATABASE_PARAMS
-- ----------------------------
DROP TABLE IF EXISTS `DATABASE_PARAMS`;
CREATE TABLE `DATABASE_PARAMS`  (
  `DB_ID` bigint(20) NOT NULL,
  `PARAM_KEY` varchar(180) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PARAM_VALUE` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`DB_ID`, `PARAM_KEY`) USING BTREE,
  INDEX `DATABASE_PARAMS_N49`(`DB_ID`) USING BTREE,
  CONSTRAINT `DATABASE_PARAMS_FK1` FOREIGN KEY (`DB_ID`) REFERENCES `DBS` (`DB_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DATABASE_PARAMS
-- ----------------------------

-- ----------------------------
-- Table structure for DBS
-- ----------------------------
DROP TABLE IF EXISTS `DBS`;
CREATE TABLE `DBS`  (
  `DB_ID` bigint(20) NOT NULL,
  `DESC` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `DB_LOCATION_URI` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `OWNER_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `OWNER_TYPE` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `CREATE_TIME` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`DB_ID`) USING BTREE,
  UNIQUE INDEX `UNIQUE_DATABASE`(`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DBS
-- ----------------------------
INSERT INTO `DBS` VALUES (1, 'Default Hive database', 'hdfs://hadoop01:8020/user/hive/warehouse', 'default', 'public', 'ROLE', 1584688849);
INSERT INTO `DBS` VALUES (43, NULL, 'hdfs://hadoop01:8020/user/hive/warehouse/test.db', 'test', 'hue', 'USER', 1584696418);
INSERT INTO `DBS` VALUES (236, NULL, 'hdfs://hadoop01:8020/user/hive/warehouse/day02_edu.db', 'day02_edu', 'hue', 'USER', 1760018837);
INSERT INTO `DBS` VALUES (378, NULL, 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db', 'itcast_ods', 'hue', 'USER', 1761373386);
INSERT INTO `DBS` VALUES (380, NULL, 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwd.db', 'itcast_dwd', 'hue', 'USER', 1761373707);
INSERT INTO `DBS` VALUES (381, NULL, 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db', 'itcast_dws', 'hue', 'USER', 1761373867);
INSERT INTO `DBS` VALUES (397, NULL, 'hdfs://hadoop01:8020/user/hive/warehouse/hivesqoop.db', 'hivesqoop', 'hue', 'USER', 1761378284);
INSERT INTO `DBS` VALUES (537, NULL, 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db', 'itcast_dimen', 'hue', 'USER', 1761901931);
INSERT INTO `DBS` VALUES (539, NULL, 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwm.db', 'itcast_dwm', 'hue', 'USER', 1761902111);

-- ----------------------------
-- Table structure for DB_PRIVS
-- ----------------------------
DROP TABLE IF EXISTS `DB_PRIVS`;
CREATE TABLE `DB_PRIVS`  (
  `DB_GRANT_ID` bigint(20) NOT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `DB_ID` bigint(20) NULL DEFAULT NULL,
  `GRANT_OPTION` smallint(6) NOT NULL,
  `GRANTOR` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `GRANTOR_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `DB_PRIV` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`DB_GRANT_ID`) USING BTREE,
  UNIQUE INDEX `DBPRIVILEGEINDEX`(`DB_ID`, `PRINCIPAL_NAME`, `PRINCIPAL_TYPE`, `DB_PRIV`, `GRANTOR`, `GRANTOR_TYPE`) USING BTREE,
  INDEX `DB_PRIVS_N49`(`DB_ID`) USING BTREE,
  CONSTRAINT `DB_PRIVS_FK1` FOREIGN KEY (`DB_ID`) REFERENCES `DBS` (`DB_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DB_PRIVS
-- ----------------------------

-- ----------------------------
-- Table structure for DELEGATION_TOKENS
-- ----------------------------
DROP TABLE IF EXISTS `DELEGATION_TOKENS`;
CREATE TABLE `DELEGATION_TOKENS`  (
  `TOKEN_IDENT` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `TOKEN` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`TOKEN_IDENT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DELEGATION_TOKENS
-- ----------------------------

-- ----------------------------
-- Table structure for FUNCS
-- ----------------------------
DROP TABLE IF EXISTS `FUNCS`;
CREATE TABLE `FUNCS`  (
  `FUNC_ID` bigint(20) NOT NULL,
  `CLASS_NAME` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `DB_ID` bigint(20) NULL DEFAULT NULL,
  `FUNC_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `FUNC_TYPE` int(11) NOT NULL,
  `OWNER_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `OWNER_TYPE` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`FUNC_ID`) USING BTREE,
  UNIQUE INDEX `UNIQUEFUNCTION`(`FUNC_NAME`, `DB_ID`) USING BTREE,
  INDEX `FUNCS_N49`(`DB_ID`) USING BTREE,
  CONSTRAINT `FUNCS_FK1` FOREIGN KEY (`DB_ID`) REFERENCES `DBS` (`DB_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of FUNCS
-- ----------------------------

-- ----------------------------
-- Table structure for FUNC_RU
-- ----------------------------
DROP TABLE IF EXISTS `FUNC_RU`;
CREATE TABLE `FUNC_RU`  (
  `FUNC_ID` bigint(20) NOT NULL,
  `RESOURCE_TYPE` int(11) NOT NULL,
  `RESOURCE_URI` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`FUNC_ID`, `INTEGER_IDX`) USING BTREE,
  CONSTRAINT `FUNC_RU_FK1` FOREIGN KEY (`FUNC_ID`) REFERENCES `FUNCS` (`FUNC_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of FUNC_RU
-- ----------------------------

-- ----------------------------
-- Table structure for GLOBAL_PRIVS
-- ----------------------------
DROP TABLE IF EXISTS `GLOBAL_PRIVS`;
CREATE TABLE `GLOBAL_PRIVS`  (
  `USER_GRANT_ID` bigint(20) NOT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `GRANT_OPTION` smallint(6) NOT NULL,
  `GRANTOR` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `GRANTOR_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `USER_PRIV` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`USER_GRANT_ID`) USING BTREE,
  UNIQUE INDEX `GLOBALPRIVILEGEINDEX`(`PRINCIPAL_NAME`, `PRINCIPAL_TYPE`, `USER_PRIV`, `GRANTOR`, `GRANTOR_TYPE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of GLOBAL_PRIVS
-- ----------------------------
INSERT INTO `GLOBAL_PRIVS` VALUES (1, 1584688849, 1, 'admin', 'ROLE', 'admin', 'ROLE', 'All');

-- ----------------------------
-- Table structure for HIVE_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `HIVE_LOCKS`;
CREATE TABLE `HIVE_LOCKS`  (
  `HL_LOCK_EXT_ID` bigint(20) NOT NULL,
  `HL_LOCK_INT_ID` bigint(20) NOT NULL,
  `HL_TXNID` bigint(20) NULL DEFAULT NULL,
  `HL_DB` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HL_TABLE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `HL_PARTITION` varchar(767) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `HL_LOCK_STATE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HL_LOCK_TYPE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HL_LAST_HEARTBEAT` bigint(20) NOT NULL,
  `HL_ACQUIRED_AT` bigint(20) NULL DEFAULT NULL,
  `HL_USER` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HL_HOST` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `HL_HEARTBEAT_COUNT` int(11) NULL DEFAULT NULL,
  `HL_AGENT_INFO` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `HL_BLOCKEDBY_EXT_ID` bigint(20) NULL DEFAULT NULL,
  `HL_BLOCKEDBY_INT_ID` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`HL_LOCK_EXT_ID`, `HL_LOCK_INT_ID`) USING BTREE,
  INDEX `HIVE_LOCK_TXNID_INDEX`(`HL_TXNID`) USING BTREE,
  INDEX `HL_TXNID_IDX`(`HL_TXNID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of HIVE_LOCKS
-- ----------------------------

-- ----------------------------
-- Table structure for IDXS
-- ----------------------------
DROP TABLE IF EXISTS `IDXS`;
CREATE TABLE `IDXS`  (
  `INDEX_ID` bigint(20) NOT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `DEFERRED_REBUILD` bit(1) NOT NULL,
  `INDEX_HANDLER_CLASS` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `INDEX_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `INDEX_TBL_ID` bigint(20) NULL DEFAULT NULL,
  `LAST_ACCESS_TIME` int(11) NOT NULL,
  `ORIG_TBL_ID` bigint(20) NULL DEFAULT NULL,
  `SD_ID` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`INDEX_ID`) USING BTREE,
  UNIQUE INDEX `UNIQUEINDEX`(`INDEX_NAME`, `ORIG_TBL_ID`) USING BTREE,
  INDEX `IDXS_N51`(`SD_ID`) USING BTREE,
  INDEX `IDXS_N50`(`INDEX_TBL_ID`) USING BTREE,
  INDEX `IDXS_N49`(`ORIG_TBL_ID`) USING BTREE,
  CONSTRAINT `IDXS_FK1` FOREIGN KEY (`ORIG_TBL_ID`) REFERENCES `TBLS` (`TBL_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXS_FK2` FOREIGN KEY (`SD_ID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `IDXS_FK3` FOREIGN KEY (`INDEX_TBL_ID`) REFERENCES `TBLS` (`TBL_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of IDXS
-- ----------------------------

-- ----------------------------
-- Table structure for INDEX_PARAMS
-- ----------------------------
DROP TABLE IF EXISTS `INDEX_PARAMS`;
CREATE TABLE `INDEX_PARAMS`  (
  `INDEX_ID` bigint(20) NOT NULL,
  `PARAM_KEY` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PARAM_VALUE` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`INDEX_ID`, `PARAM_KEY`) USING BTREE,
  INDEX `INDEX_PARAMS_N49`(`INDEX_ID`) USING BTREE,
  CONSTRAINT `INDEX_PARAMS_FK1` FOREIGN KEY (`INDEX_ID`) REFERENCES `IDXS` (`INDEX_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of INDEX_PARAMS
-- ----------------------------

-- ----------------------------
-- Table structure for KEY_CONSTRAINTS
-- ----------------------------
DROP TABLE IF EXISTS `KEY_CONSTRAINTS`;
CREATE TABLE `KEY_CONSTRAINTS`  (
  `CHILD_CD_ID` bigint(20) NULL DEFAULT NULL,
  `CHILD_INTEGER_IDX` int(11) NULL DEFAULT NULL,
  `CHILD_TBL_ID` bigint(20) NULL DEFAULT NULL,
  `PARENT_CD_ID` bigint(20) NOT NULL,
  `PARENT_INTEGER_IDX` int(11) NOT NULL,
  `PARENT_TBL_ID` bigint(20) NOT NULL,
  `POSITION` bigint(20) NOT NULL,
  `CONSTRAINT_NAME` varchar(400) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `CONSTRAINT_TYPE` smallint(6) NOT NULL,
  `UPDATE_RULE` smallint(6) NULL DEFAULT NULL,
  `DELETE_RULE` smallint(6) NULL DEFAULT NULL,
  `ENABLE_VALIDATE_RELY` smallint(6) NOT NULL,
  PRIMARY KEY (`CONSTRAINT_NAME`, `POSITION`) USING BTREE,
  INDEX `CONSTRAINTS_PARENT_TABLE_ID_INDEX`(`PARENT_TBL_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of KEY_CONSTRAINTS
-- ----------------------------

-- ----------------------------
-- Table structure for MASTER_KEYS
-- ----------------------------
DROP TABLE IF EXISTS `MASTER_KEYS`;
CREATE TABLE `MASTER_KEYS`  (
  `KEY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MASTER_KEY` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`KEY_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of MASTER_KEYS
-- ----------------------------

-- ----------------------------
-- Table structure for METASTORE_DB_PROPERTIES
-- ----------------------------
DROP TABLE IF EXISTS `METASTORE_DB_PROPERTIES`;
CREATE TABLE `METASTORE_DB_PROPERTIES`  (
  `PROPERTY_KEY` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PROPERTY_VALUE` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DESCRIPTION` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PROPERTY_KEY`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of METASTORE_DB_PROPERTIES
-- ----------------------------

-- ----------------------------
-- Table structure for NEXT_COMPACTION_QUEUE_ID
-- ----------------------------
DROP TABLE IF EXISTS `NEXT_COMPACTION_QUEUE_ID`;
CREATE TABLE `NEXT_COMPACTION_QUEUE_ID`  (
  `NCQ_NEXT` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of NEXT_COMPACTION_QUEUE_ID
-- ----------------------------
INSERT INTO `NEXT_COMPACTION_QUEUE_ID` VALUES (1);

-- ----------------------------
-- Table structure for NEXT_LOCK_ID
-- ----------------------------
DROP TABLE IF EXISTS `NEXT_LOCK_ID`;
CREATE TABLE `NEXT_LOCK_ID`  (
  `NL_NEXT` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of NEXT_LOCK_ID
-- ----------------------------
INSERT INTO `NEXT_LOCK_ID` VALUES (1);

-- ----------------------------
-- Table structure for NEXT_TXN_ID
-- ----------------------------
DROP TABLE IF EXISTS `NEXT_TXN_ID`;
CREATE TABLE `NEXT_TXN_ID`  (
  `NTXN_NEXT` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of NEXT_TXN_ID
-- ----------------------------
INSERT INTO `NEXT_TXN_ID` VALUES (1);

-- ----------------------------
-- Table structure for NOTIFICATION_LOG
-- ----------------------------
DROP TABLE IF EXISTS `NOTIFICATION_LOG`;
CREATE TABLE `NOTIFICATION_LOG`  (
  `NL_ID` bigint(20) NOT NULL,
  `EVENT_ID` bigint(20) NOT NULL,
  `EVENT_TIME` int(11) NOT NULL,
  `EVENT_TYPE` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `DB_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TBL_NAME` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `MESSAGE` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`NL_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of NOTIFICATION_LOG
-- ----------------------------

-- ----------------------------
-- Table structure for NOTIFICATION_SEQUENCE
-- ----------------------------
DROP TABLE IF EXISTS `NOTIFICATION_SEQUENCE`;
CREATE TABLE `NOTIFICATION_SEQUENCE`  (
  `NNI_ID` bigint(20) NOT NULL,
  `NEXT_EVENT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`NNI_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of NOTIFICATION_SEQUENCE
-- ----------------------------

-- ----------------------------
-- Table structure for NUCLEUS_TABLES
-- ----------------------------
DROP TABLE IF EXISTS `NUCLEUS_TABLES`;
CREATE TABLE `NUCLEUS_TABLES`  (
  `CLASS_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `TABLE_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `TYPE` varchar(4) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `OWNER` varchar(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `VERSION` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `INTERFACE_NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`CLASS_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of NUCLEUS_TABLES
-- ----------------------------
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MColumnDescriptor', '`CDS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MColumnDescriptor.cols', '`COLUMNS_V2`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MConstraint', '`KEY_CONSTRAINTS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MDBPrivilege', '`DB_PRIVS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MDatabase', '`DBS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MDatabase.parameters', '`DATABASE_PARAMS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MFunction', '`FUNCS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MFunction.resourceUris', '`FUNC_RU`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MGlobalPrivilege', '`GLOBAL_PRIVS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MIndex', '`IDXS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MIndex.parameters', '`INDEX_PARAMS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MPartition', '`PARTITIONS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MPartition.parameters', '`PARTITION_PARAMS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MPartition.values', '`PARTITION_KEY_VALS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MPartitionColumnPrivilege', '`PART_COL_PRIVS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MPartitionPrivilege', '`PART_PRIVS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MRole', '`ROLES`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MSerDeInfo', '`SERDES`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MSerDeInfo.parameters', '`SERDE_PARAMS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStorageDescriptor', '`SDS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStorageDescriptor.bucketCols', '`BUCKETING_COLS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStorageDescriptor.parameters', '`SD_PARAMS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStorageDescriptor.skewedColNames', '`SKEWED_COL_NAMES`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStorageDescriptor.skewedColValueLocationMaps', '`SKEWED_COL_VALUE_LOC_MAP`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStorageDescriptor.skewedColValues', '`SKEWED_VALUES`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStorageDescriptor.sortCols', '`SORT_COLS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStringList', '`SKEWED_STRING_LIST`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MStringList.internalList', '`SKEWED_STRING_LIST_VALUES`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MTable', '`TBLS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MTable.parameters', '`TABLE_PARAMS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MTable.partitionKeys', '`PARTITION_KEYS`', 'SCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MTableColumnPrivilege', '`TBL_COL_PRIVS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MTableColumnStatistics', '`TAB_COL_STATS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MTablePrivilege', '`TBL_PRIVS`', 'FCO', '1', 'DataNucleus', NULL);
INSERT INTO `NUCLEUS_TABLES` VALUES ('org.apache.hadoop.hive.metastore.model.MVersionTable', '`VERSION`', 'FCO', '1', 'DataNucleus', NULL);

-- ----------------------------
-- Table structure for PARTITIONS
-- ----------------------------
DROP TABLE IF EXISTS `PARTITIONS`;
CREATE TABLE `PARTITIONS`  (
  `PART_ID` bigint(20) NOT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `LAST_ACCESS_TIME` int(11) NOT NULL,
  `PART_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `SD_ID` bigint(20) NULL DEFAULT NULL,
  `TBL_ID` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`PART_ID`) USING BTREE,
  UNIQUE INDEX `UNIQUEPARTITION`(`PART_NAME`, `TBL_ID`) USING BTREE,
  INDEX `PARTITIONS_N49`(`TBL_ID`) USING BTREE,
  INDEX `PARTITIONS_N50`(`SD_ID`) USING BTREE,
  CONSTRAINT `PARTITIONS_FK1` FOREIGN KEY (`TBL_ID`) REFERENCES `TBLS` (`TBL_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `PARTITIONS_FK2` FOREIGN KEY (`SD_ID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PARTITIONS
-- ----------------------------
INSERT INTO `PARTITIONS` VALUES (677, 1761385873, 0, 'starts_time=2021-09-24', 966, 373);
INSERT INTO `PARTITIONS` VALUES (680, 1761386202, 0, 'start_time=2021-09-24', 970, 374);
INSERT INTO `PARTITIONS` VALUES (704, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=01', 998, 376);
INSERT INTO `PARTITIONS` VALUES (705, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=25', 999, 376);
INSERT INTO `PARTITIONS` VALUES (712, 0, 0, 'yearinfo=2019/quarterinfo=-1/monthinfo=-1/dayinfo=-1', 1009, 377);
INSERT INTO `PARTITIONS` VALUES (713, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=-1/dayinfo=-1', 1010, 377);
INSERT INTO `PARTITIONS` VALUES (724, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=-1', 1026, 377);
INSERT INTO `PARTITIONS` VALUES (727, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=25', 1030, 377);
INSERT INTO `PARTITIONS` VALUES (728, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=01', 1031, 377);
INSERT INTO `PARTITIONS` VALUES (757, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=25', 1074, 378);
INSERT INTO `PARTITIONS` VALUES (758, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=01', 1075, 378);
INSERT INTO `PARTITIONS` VALUES (761, 0, 0, 'yearinfo=2019/quarterinfo=-1/monthinfo=-1/dayinfo=-1', 1079, 378);
INSERT INTO `PARTITIONS` VALUES (762, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=-1/dayinfo=-1', 1080, 378);
INSERT INTO `PARTITIONS` VALUES (763, 0, 0, 'yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=-1', 1081, 378);
INSERT INTO `PARTITIONS` VALUES (780, 1761398007, 0, 'starts_time=2021-09-26', 1106, 373);
INSERT INTO `PARTITIONS` VALUES (783, 1761398407, 0, 'start_time=2021-09-26', 1110, 374);
INSERT INTO `PARTITIONS` VALUES (954, 1761910370, 0, 'dt=2021-10-07', 1387, 575);
INSERT INTO `PARTITIONS` VALUES (955, 1761910421, 0, 'dt=2021-10-07', 1388, 576);
INSERT INTO `PARTITIONS` VALUES (958, 1761910472, 0, 'dt=2021-10-07', 1392, 579);
INSERT INTO `PARTITIONS` VALUES (959, 1761910511, 0, 'dt=2021-10-07', 1393, 577);
INSERT INTO `PARTITIONS` VALUES (960, 1761910547, 0, 'dt=2021-10-07', 1394, 578);

-- ----------------------------
-- Table structure for PARTITION_EVENTS
-- ----------------------------
DROP TABLE IF EXISTS `PARTITION_EVENTS`;
CREATE TABLE `PARTITION_EVENTS`  (
  `PART_NAME_ID` bigint(20) NOT NULL,
  `DB_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `EVENT_TIME` bigint(20) NOT NULL,
  `EVENT_TYPE` int(11) NOT NULL,
  `PARTITION_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `TBL_NAME` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`PART_NAME_ID`) USING BTREE,
  INDEX `PARTITIONEVENTINDEX`(`PARTITION_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PARTITION_EVENTS
-- ----------------------------

-- ----------------------------
-- Table structure for PARTITION_KEYS
-- ----------------------------
DROP TABLE IF EXISTS `PARTITION_KEYS`;
CREATE TABLE `PARTITION_KEYS`  (
  `TBL_ID` bigint(20) NOT NULL,
  `PKEY_COMMENT` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PKEY_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PKEY_TYPE` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`TBL_ID`, `PKEY_NAME`) USING BTREE,
  INDEX `PARTITION_KEYS_N49`(`TBL_ID`) USING BTREE,
  CONSTRAINT `PARTITION_KEYS_FK1` FOREIGN KEY (`TBL_ID`) REFERENCES `TBLS` (`TBL_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PARTITION_KEYS
-- ----------------------------
INSERT INTO `PARTITION_KEYS` VALUES (373, NULL, 'starts_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (374, NULL, 'start_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (376, NULL, 'dayinfo', 'string', 3);
INSERT INTO `PARTITION_KEYS` VALUES (376, NULL, 'monthinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (376, NULL, 'quarterinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (376, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (377, NULL, 'dayinfo', 'string', 3);
INSERT INTO `PARTITION_KEYS` VALUES (377, NULL, 'monthinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (377, NULL, 'quarterinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (377, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (378, NULL, 'dayinfo', 'string', 3);
INSERT INTO `PARTITION_KEYS` VALUES (378, NULL, 'monthinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (378, NULL, 'quarterinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (378, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (532, NULL, 'start_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (534, NULL, 'start_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (535, NULL, 'start_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (536, NULL, 'start_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (537, NULL, 'start_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (538, NULL, 'start_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (540, NULL, 'dayinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (540, NULL, 'monthinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (540, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (541, NULL, 'dayinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (541, NULL, 'monthinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (541, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (542, NULL, 'dayinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (542, NULL, 'monthinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (542, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (544, NULL, 'start_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (551, NULL, 'starts_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (562, NULL, 'starts_time', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (575, NULL, 'dt', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (576, NULL, 'dt', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (577, NULL, 'dt', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (578, NULL, 'dt', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (579, NULL, 'dt', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (580, NULL, 'dayinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (580, NULL, 'monthinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (580, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (581, NULL, 'dayinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (581, NULL, 'monthinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (581, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (582, NULL, 'dayinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (582, NULL, 'monthinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (582, NULL, 'yearinfo', 'string', 0);
INSERT INTO `PARTITION_KEYS` VALUES (583, NULL, 'dayinfo', 'string', 2);
INSERT INTO `PARTITION_KEYS` VALUES (583, NULL, 'monthinfo', 'string', 1);
INSERT INTO `PARTITION_KEYS` VALUES (583, NULL, 'yearinfo', 'string', 0);

-- ----------------------------
-- Table structure for PARTITION_KEY_VALS
-- ----------------------------
DROP TABLE IF EXISTS `PARTITION_KEY_VALS`;
CREATE TABLE `PARTITION_KEY_VALS`  (
  `PART_ID` bigint(20) NOT NULL,
  `PART_KEY_VAL` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`PART_ID`, `INTEGER_IDX`) USING BTREE,
  INDEX `PARTITION_KEY_VALS_N49`(`PART_ID`) USING BTREE,
  CONSTRAINT `PARTITION_KEY_VALS_FK1` FOREIGN KEY (`PART_ID`) REFERENCES `PARTITIONS` (`PART_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PARTITION_KEY_VALS
-- ----------------------------
INSERT INTO `PARTITION_KEY_VALS` VALUES (677, '2021-09-24', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (680, '2021-09-24', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (704, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (704, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (704, '07', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (704, '01', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (705, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (705, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (705, '07', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (705, '25', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (712, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (712, '-1', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (712, '-1', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (712, '-1', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (713, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (713, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (713, '-1', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (713, '-1', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (724, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (724, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (724, '07', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (724, '-1', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (727, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (727, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (727, '07', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (727, '25', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (728, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (728, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (728, '07', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (728, '01', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (757, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (757, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (757, '07', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (757, '25', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (758, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (758, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (758, '07', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (758, '01', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (761, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (761, '-1', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (761, '-1', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (761, '-1', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (762, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (762, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (762, '-1', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (762, '-1', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (763, '2019', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (763, '3', 1);
INSERT INTO `PARTITION_KEY_VALS` VALUES (763, '07', 2);
INSERT INTO `PARTITION_KEY_VALS` VALUES (763, '-1', 3);
INSERT INTO `PARTITION_KEY_VALS` VALUES (780, '2021-09-26', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (783, '2021-09-26', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (954, '2021-10-07', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (955, '2021-10-07', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (958, '2021-10-07', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (959, '2021-10-07', 0);
INSERT INTO `PARTITION_KEY_VALS` VALUES (960, '2021-10-07', 0);

-- ----------------------------
-- Table structure for PARTITION_PARAMS
-- ----------------------------
DROP TABLE IF EXISTS `PARTITION_PARAMS`;
CREATE TABLE `PARTITION_PARAMS`  (
  `PART_ID` bigint(20) NOT NULL,
  `PARAM_KEY` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PARAM_VALUE` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`PART_ID`, `PARAM_KEY`) USING BTREE,
  INDEX `PARTITION_PARAMS_N49`(`PART_ID`) USING BTREE,
  CONSTRAINT `PARTITION_PARAMS_FK1` FOREIGN KEY (`PART_ID`) REFERENCES `PARTITIONS` (`PART_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PARTITION_PARAMS
-- ----------------------------
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'EXTERNAL', 'TRUE');
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'comment', '???????');
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'orc.compress', 'ZLIB');
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'totalSize', '5126126');
INSERT INTO `PARTITION_PARAMS` VALUES (677, 'transient_lastDdlTime', '1761373390');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'EXTERNAL', 'TRUE');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'comment', 'EMS-PV???');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'orc.compress', 'ZLIB');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'totalSize', '31028351');
INSERT INTO `PARTITION_PARAMS` VALUES (680, 'transient_lastDdlTime', '1761373391');
INSERT INTO `PARTITION_PARAMS` VALUES (704, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (704, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (704, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (704, 'numRows', '105466');
INSERT INTO `PARTITION_PARAMS` VALUES (704, 'rawDataSize', '280870478');
INSERT INTO `PARTITION_PARAMS` VALUES (704, 'totalSize', '52179364');
INSERT INTO `PARTITION_PARAMS` VALUES (704, 'transient_lastDdlTime', '1761388417');
INSERT INTO `PARTITION_PARAMS` VALUES (705, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (705, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (705, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (705, 'numRows', '133');
INSERT INTO `PARTITION_PARAMS` VALUES (705, 'rawDataSize', '361631');
INSERT INTO `PARTITION_PARAMS` VALUES (705, 'totalSize', '83117');
INSERT INTO `PARTITION_PARAMS` VALUES (705, 'transient_lastDdlTime', '1761388417');
INSERT INTO `PARTITION_PARAMS` VALUES (712, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (712, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (712, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (712, 'numRows', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (712, 'rawDataSize', '700');
INSERT INTO `PARTITION_PARAMS` VALUES (712, 'totalSize', '1073');
INSERT INTO `PARTITION_PARAMS` VALUES (712, 'transient_lastDdlTime', '1761389273');
INSERT INTO `PARTITION_PARAMS` VALUES (713, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (713, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (713, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (713, 'numRows', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (713, 'rawDataSize', '702');
INSERT INTO `PARTITION_PARAMS` VALUES (713, 'totalSize', '1099');
INSERT INTO `PARTITION_PARAMS` VALUES (713, 'transient_lastDdlTime', '1761389369');
INSERT INTO `PARTITION_PARAMS` VALUES (724, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (724, 'numFiles', '2');
INSERT INTO `PARTITION_PARAMS` VALUES (724, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (724, 'numRows', '2');
INSERT INTO `PARTITION_PARAMS` VALUES (724, 'rawDataSize', '1406');
INSERT INTO `PARTITION_PARAMS` VALUES (724, 'totalSize', '2204');
INSERT INTO `PARTITION_PARAMS` VALUES (724, 'transient_lastDdlTime', '1761390941');
INSERT INTO `PARTITION_PARAMS` VALUES (727, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (727, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (727, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (727, 'numRows', '66');
INSERT INTO `PARTITION_PARAMS` VALUES (727, 'rawDataSize', '53790');
INSERT INTO `PARTITION_PARAMS` VALUES (727, 'totalSize', '3975');
INSERT INTO `PARTITION_PARAMS` VALUES (727, 'transient_lastDdlTime', '1761391104');
INSERT INTO `PARTITION_PARAMS` VALUES (728, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (728, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (728, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (728, 'numRows', '38523');
INSERT INTO `PARTITION_PARAMS` VALUES (728, 'rawDataSize', '32012613');
INSERT INTO `PARTITION_PARAMS` VALUES (728, 'totalSize', '409846');
INSERT INTO `PARTITION_PARAMS` VALUES (728, 'transient_lastDdlTime', '1761391104');
INSERT INTO `PARTITION_PARAMS` VALUES (757, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (757, 'numFiles', '3');
INSERT INTO `PARTITION_PARAMS` VALUES (757, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (757, 'numRows', '3');
INSERT INTO `PARTITION_PARAMS` VALUES (757, 'rawDataSize', '1630');
INSERT INTO `PARTITION_PARAMS` VALUES (757, 'totalSize', '2889');
INSERT INTO `PARTITION_PARAMS` VALUES (757, 'transient_lastDdlTime', '1761395733');
INSERT INTO `PARTITION_PARAMS` VALUES (758, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (758, 'numFiles', '3');
INSERT INTO `PARTITION_PARAMS` VALUES (758, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (758, 'numRows', '1940');
INSERT INTO `PARTITION_PARAMS` VALUES (758, 'rawDataSize', '1073802');
INSERT INTO `PARTITION_PARAMS` VALUES (758, 'totalSize', '16773');
INSERT INTO `PARTITION_PARAMS` VALUES (758, 'transient_lastDdlTime', '1761395733');
INSERT INTO `PARTITION_PARAMS` VALUES (761, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (761, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (761, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (761, 'numRows', '309');
INSERT INTO `PARTITION_PARAMS` VALUES (761, 'rawDataSize', '168714');
INSERT INTO `PARTITION_PARAMS` VALUES (761, 'totalSize', '5075');
INSERT INTO `PARTITION_PARAMS` VALUES (761, 'transient_lastDdlTime', '1761395553');
INSERT INTO `PARTITION_PARAMS` VALUES (762, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (762, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (762, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (762, 'numRows', '309');
INSERT INTO `PARTITION_PARAMS` VALUES (762, 'rawDataSize', '169332');
INSERT INTO `PARTITION_PARAMS` VALUES (762, 'totalSize', '5087');
INSERT INTO `PARTITION_PARAMS` VALUES (762, 'transient_lastDdlTime', '1761395608');
INSERT INTO `PARTITION_PARAMS` VALUES (763, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `PARTITION_PARAMS` VALUES (763, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (763, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (763, 'numRows', '309');
INSERT INTO `PARTITION_PARAMS` VALUES (763, 'rawDataSize', '169641');
INSERT INTO `PARTITION_PARAMS` VALUES (763, 'totalSize', '5092');
INSERT INTO `PARTITION_PARAMS` VALUES (763, 'transient_lastDdlTime', '1761395669');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'EXTERNAL', 'TRUE');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'comment', '???????');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'orc.compress', 'ZLIB');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'totalSize', '3131432');
INSERT INTO `PARTITION_PARAMS` VALUES (780, 'transient_lastDdlTime', '1761373390');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'EXTERNAL', 'TRUE');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'comment', 'EMS-PV???');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'orc.compress', 'ZLIB');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'totalSize', '31025229');
INSERT INTO `PARTITION_PARAMS` VALUES (783, 'transient_lastDdlTime', '1761373391');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'comment', '???????');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'orc.bloom.filter.columns', 'time_table_id,class_id,signin_date,share_state');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'orc.compress', 'SNAPPY');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'totalSize', '855699');
INSERT INTO `PARTITION_PARAMS` VALUES (954, 'transient_lastDdlTime', '1761910250');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'comment', '???????');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'orc.bloom.filter.columns', 'class_id,audit_state,cancel_state,valid_state');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'orc.compress', 'SNAPPY');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'totalSize', '11856');
INSERT INTO `PARTITION_PARAMS` VALUES (955, 'transient_lastDdlTime', '1761910251');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'comment', '?????????????');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'orc.bloom.filter.columns', 'studying_student_count,studying_date');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'orc.compress', 'SNAPPY');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'totalSize', '349809');
INSERT INTO `PARTITION_PARAMS` VALUES (958, 'transient_lastDdlTime', '1761910286');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'comment', '???????');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'orc.bloom.filter.columns', 'class_id,class_date');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'orc.compress', 'SNAPPY');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'totalSize', '21933');
INSERT INTO `PARTITION_PARAMS` VALUES (959, 'transient_lastDdlTime', '1761910283');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'comment', '???????');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'field.delim', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'numFiles', '1');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'numFilesErasureCoded', '0');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'orc.bloom.filter.columns', 'id,class_id');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'orc.compress', 'SNAPPY');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'serialization.format', '	');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'totalSize', '76284');
INSERT INTO `PARTITION_PARAMS` VALUES (960, 'transient_lastDdlTime', '1761910285');

-- ----------------------------
-- Table structure for PART_COL_PRIVS
-- ----------------------------
DROP TABLE IF EXISTS `PART_COL_PRIVS`;
CREATE TABLE `PART_COL_PRIVS`  (
  `PART_COLUMN_GRANT_ID` bigint(20) NOT NULL,
  `COLUMN_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `GRANT_OPTION` smallint(6) NOT NULL,
  `GRANTOR` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `GRANTOR_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PART_ID` bigint(20) NULL DEFAULT NULL,
  `PRINCIPAL_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PART_COL_PRIV` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`PART_COLUMN_GRANT_ID`) USING BTREE,
  INDEX `PART_COL_PRIVS_N49`(`PART_ID`) USING BTREE,
  INDEX `PARTITIONCOLUMNPRIVILEGEINDEX`(`PART_ID`, `COLUMN_NAME`, `PRINCIPAL_NAME`, `PRINCIPAL_TYPE`, `PART_COL_PRIV`, `GRANTOR`, `GRANTOR_TYPE`) USING BTREE,
  CONSTRAINT `PART_COL_PRIVS_FK1` FOREIGN KEY (`PART_ID`) REFERENCES `PARTITIONS` (`PART_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PART_COL_PRIVS
-- ----------------------------

-- ----------------------------
-- Table structure for PART_COL_STATS
-- ----------------------------
DROP TABLE IF EXISTS `PART_COL_STATS`;
CREATE TABLE `PART_COL_STATS`  (
  `CS_ID` bigint(20) NOT NULL,
  `DB_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `TABLE_NAME` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PARTITION_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `COLUMN_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `COLUMN_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PART_ID` bigint(20) NOT NULL,
  `LONG_LOW_VALUE` bigint(20) NULL DEFAULT NULL,
  `LONG_HIGH_VALUE` bigint(20) NULL DEFAULT NULL,
  `DOUBLE_HIGH_VALUE` double(53, 4) NULL DEFAULT NULL,
  `DOUBLE_LOW_VALUE` double(53, 4) NULL DEFAULT NULL,
  `BIG_DECIMAL_LOW_VALUE` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `BIG_DECIMAL_HIGH_VALUE` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `NUM_NULLS` bigint(20) NOT NULL,
  `NUM_DISTINCTS` bigint(20) NULL DEFAULT NULL,
  `AVG_COL_LEN` double(53, 4) NULL DEFAULT NULL,
  `MAX_COL_LEN` bigint(20) NULL DEFAULT NULL,
  `NUM_TRUES` bigint(20) NULL DEFAULT NULL,
  `NUM_FALSES` bigint(20) NULL DEFAULT NULL,
  `LAST_ANALYZED` bigint(20) NOT NULL,
  PRIMARY KEY (`CS_ID`) USING BTREE,
  INDEX `PART_COL_STATS_FK`(`PART_ID`) USING BTREE,
  INDEX `PCS_STATS_IDX`(`DB_NAME`, `TABLE_NAME`, `COLUMN_NAME`, `PARTITION_NAME`) USING BTREE,
  CONSTRAINT `PART_COL_STATS_FK` FOREIGN KEY (`PART_ID`) REFERENCES `PARTITIONS` (`PART_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PART_COL_STATS
-- ----------------------------

-- ----------------------------
-- Table structure for PART_PRIVS
-- ----------------------------
DROP TABLE IF EXISTS `PART_PRIVS`;
CREATE TABLE `PART_PRIVS`  (
  `PART_GRANT_ID` bigint(20) NOT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `GRANT_OPTION` smallint(6) NOT NULL,
  `GRANTOR` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `GRANTOR_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PART_ID` bigint(20) NULL DEFAULT NULL,
  `PRINCIPAL_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PART_PRIV` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`PART_GRANT_ID`) USING BTREE,
  INDEX `PARTPRIVILEGEINDEX`(`PART_ID`, `PRINCIPAL_NAME`, `PRINCIPAL_TYPE`, `PART_PRIV`, `GRANTOR`, `GRANTOR_TYPE`) USING BTREE,
  INDEX `PART_PRIVS_N49`(`PART_ID`) USING BTREE,
  CONSTRAINT `PART_PRIVS_FK1` FOREIGN KEY (`PART_ID`) REFERENCES `PARTITIONS` (`PART_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of PART_PRIVS
-- ----------------------------

-- ----------------------------
-- Table structure for ROLES
-- ----------------------------
DROP TABLE IF EXISTS `ROLES`;
CREATE TABLE `ROLES`  (
  `ROLE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `OWNER_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `ROLE_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`) USING BTREE,
  UNIQUE INDEX `ROLEENTITYINDEX`(`ROLE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ROLES
-- ----------------------------
INSERT INTO `ROLES` VALUES (1, 1584688849, 'admin', 'admin');
INSERT INTO `ROLES` VALUES (2, 1584688849, 'public', 'public');

-- ----------------------------
-- Table structure for ROLE_MAP
-- ----------------------------
DROP TABLE IF EXISTS `ROLE_MAP`;
CREATE TABLE `ROLE_MAP`  (
  `ROLE_GRANT_ID` bigint(20) NOT NULL,
  `ADD_TIME` int(11) NOT NULL,
  `GRANT_OPTION` smallint(6) NOT NULL,
  `GRANTOR` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `GRANTOR_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `ROLE_ID` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_GRANT_ID`) USING BTREE,
  UNIQUE INDEX `USERROLEMAPINDEX`(`PRINCIPAL_NAME`, `ROLE_ID`, `GRANTOR`, `GRANTOR_TYPE`) USING BTREE,
  INDEX `ROLE_MAP_N49`(`ROLE_ID`) USING BTREE,
  CONSTRAINT `ROLE_MAP_FK1` FOREIGN KEY (`ROLE_ID`) REFERENCES `ROLES` (`ROLE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ROLE_MAP
-- ----------------------------

-- ----------------------------
-- Table structure for SDS
-- ----------------------------
DROP TABLE IF EXISTS `SDS`;
CREATE TABLE `SDS`  (
  `SD_ID` bigint(20) NOT NULL,
  `CD_ID` bigint(20) NULL DEFAULT NULL,
  `INPUT_FORMAT` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `IS_COMPRESSED` bit(1) NOT NULL,
  `IS_STOREDASSUBDIRECTORIES` bit(1) NOT NULL,
  `LOCATION` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `NUM_BUCKETS` int(11) NOT NULL,
  `OUTPUT_FORMAT` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `SERDE_ID` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`SD_ID`) USING BTREE,
  INDEX `SDS_N49`(`SERDE_ID`) USING BTREE,
  INDEX `SDS_N50`(`CD_ID`) USING BTREE,
  CONSTRAINT `SDS_FK1` FOREIGN KEY (`SERDE_ID`) REFERENCES `SERDES` (`SERDE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `SDS_FK2` FOREIGN KEY (`CD_ID`) REFERENCES `CDS` (`CD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SDS
-- ----------------------------
INSERT INTO `SDS` VALUES (90, 39, 'org.apache.hadoop.mapred.TextInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/test.db/test_table', -1, 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat', 90);
INSERT INTO `SDS` VALUES (481, 231, 'org.apache.hadoop.mapred.TextInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/day02_edu.db/stu', -1, 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat', 481);
INSERT INTO `SDS` VALUES (837, 373, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/web_chat_ems_ods', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 837);
INSERT INTO `SDS` VALUES (838, 374, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/web_chat_text_ems_ods', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 838);
INSERT INTO `SDS` VALUES (842, 376, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwd.db/visit_consult_dwd', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 842);
INSERT INTO `SDS` VALUES (843, 377, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/visit_dws', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 843);
INSERT INTO `SDS` VALUES (844, 378, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/consult_dws', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 844);
INSERT INTO `SDS` VALUES (890, 394, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/hivesqoop.db/emp_add_hive', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 890);
INSERT INTO `SDS` VALUES (966, 373, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/web_chat_ems_ods/starts_time=2021-09-24', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 966);
INSERT INTO `SDS` VALUES (970, 374, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/web_chat_text_ems_ods/start_time=2021-09-24', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 970);
INSERT INTO `SDS` VALUES (998, 376, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwd.db/visit_consult_dwd/yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=01', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 998);
INSERT INTO `SDS` VALUES (999, 376, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwd.db/visit_consult_dwd/yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=25', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 999);
INSERT INTO `SDS` VALUES (1009, 377, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/visit_dws/yearinfo=2019/quarterinfo=-1/monthinfo=-1/dayinfo=-1', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1009);
INSERT INTO `SDS` VALUES (1010, 377, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/visit_dws/yearinfo=2019/quarterinfo=3/monthinfo=-1/dayinfo=-1', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1010);
INSERT INTO `SDS` VALUES (1026, 377, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/visit_dws/yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=-1', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1026);
INSERT INTO `SDS` VALUES (1030, 377, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/visit_dws/yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=25', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1030);
INSERT INTO `SDS` VALUES (1031, 377, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/visit_dws/yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=01', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1031);
INSERT INTO `SDS` VALUES (1074, 378, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/consult_dws/yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=25', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1074);
INSERT INTO `SDS` VALUES (1075, 378, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/consult_dws/yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=01', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1075);
INSERT INTO `SDS` VALUES (1079, 378, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/consult_dws/yearinfo=2019/quarterinfo=-1/monthinfo=-1/dayinfo=-1', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1079);
INSERT INTO `SDS` VALUES (1080, 378, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/consult_dws/yearinfo=2019/quarterinfo=3/monthinfo=-1/dayinfo=-1', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1080);
INSERT INTO `SDS` VALUES (1081, 378, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/consult_dws/yearinfo=2019/quarterinfo=3/monthinfo=07/dayinfo=-1', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1081);
INSERT INTO `SDS` VALUES (1106, 373, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/web_chat_ems_ods/starts_time=2021-09-26', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1106);
INSERT INTO `SDS` VALUES (1110, 374, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/web_chat_text_ems_ods/start_time=2021-09-26', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1110);
INSERT INTO `SDS` VALUES (1279, 532, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/customer_relationship', 10, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1279);
INSERT INTO `SDS` VALUES (1281, 534, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/customer', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1281);
INSERT INTO `SDS` VALUES (1282, 535, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/itcast_subject', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1282);
INSERT INTO `SDS` VALUES (1283, 536, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/itcast_school', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1283);
INSERT INTO `SDS` VALUES (1284, 537, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/employee', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1284);
INSERT INTO `SDS` VALUES (1285, 538, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/scrm_department', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1285);
INSERT INTO `SDS` VALUES (1289, 540, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwd.db/itcast_intention_dwd', 10, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1289);
INSERT INTO `SDS` VALUES (1290, 541, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwm.db/itcast_intention_dwm', 10, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1290);
INSERT INTO `SDS` VALUES (1291, 542, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/itcast_intention_dws', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1291);
INSERT INTO `SDS` VALUES (1295, 544, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/customer_relationship_temp', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1295);
INSERT INTO `SDS` VALUES (1310, 551, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/customer_clue_temp', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1310);
INSERT INTO `SDS` VALUES (1341, 562, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/customer_clue', 10, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1341);
INSERT INTO `SDS` VALUES (1378, 575, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/student_signin_ods', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1378);
INSERT INTO `SDS` VALUES (1379, 576, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/student_leave_apply_ods', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1379);
INSERT INTO `SDS` VALUES (1380, 577, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/course_table_upload_detail_dimen', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1380);
INSERT INTO `SDS` VALUES (1381, 578, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/class_time_dimen', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1381);
INSERT INTO `SDS` VALUES (1382, 579, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/class_studying_student_count_dimen', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1382);
INSERT INTO `SDS` VALUES (1383, 580, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwm.db/class_leave_dwm', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1383);
INSERT INTO `SDS` VALUES (1384, 581, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwm.db/class_truant_dwm', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1384);
INSERT INTO `SDS` VALUES (1385, 582, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dwm.db/class_all_dwm', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1385);
INSERT INTO `SDS` VALUES (1386, 583, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dws.db/class_attendance_dws', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1386);
INSERT INTO `SDS` VALUES (1387, 575, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/student_signin_ods/dt=2021-10-07', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1387);
INSERT INTO `SDS` VALUES (1388, 576, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_ods.db/student_leave_apply_ods/dt=2021-10-07', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1388);
INSERT INTO `SDS` VALUES (1392, 579, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/class_studying_student_count_dimen/dt=2021-10-07', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1392);
INSERT INTO `SDS` VALUES (1393, 577, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/course_table_upload_detail_dimen/dt=2021-10-07', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1393);
INSERT INTO `SDS` VALUES (1394, 578, 'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat', b'0', b'0', 'hdfs://hadoop01:8020/user/hive/warehouse/itcast_dimen.db/class_time_dimen/dt=2021-10-07', -1, 'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat', 1394);

-- ----------------------------
-- Table structure for SD_PARAMS
-- ----------------------------
DROP TABLE IF EXISTS `SD_PARAMS`;
CREATE TABLE `SD_PARAMS`  (
  `SD_ID` bigint(20) NOT NULL,
  `PARAM_KEY` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PARAM_VALUE` mediumtext CHARACTER SET latin1 COLLATE latin1_bin NULL,
  PRIMARY KEY (`SD_ID`, `PARAM_KEY`) USING BTREE,
  INDEX `SD_PARAMS_N49`(`SD_ID`) USING BTREE,
  CONSTRAINT `SD_PARAMS_FK1` FOREIGN KEY (`SD_ID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SD_PARAMS
-- ----------------------------

-- ----------------------------
-- Table structure for SEQUENCE_TABLE
-- ----------------------------
DROP TABLE IF EXISTS `SEQUENCE_TABLE`;
CREATE TABLE `SEQUENCE_TABLE`  (
  `SEQUENCE_NAME` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `NEXT_VAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SEQUENCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SEQUENCE_TABLE
-- ----------------------------
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MColumnDescriptor', 661);
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MDatabase', 641);
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MGlobalPrivilege', 6);
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MPartition', 1096);
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MRole', 6);
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MSerDeInfo', 1591);
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MStorageDescriptor', 1591);
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MTable', 661);
INSERT INTO `SEQUENCE_TABLE` VALUES ('org.apache.hadoop.hive.metastore.model.MTablePrivilege', 136);

-- ----------------------------
-- Table structure for SERDES
-- ----------------------------
DROP TABLE IF EXISTS `SERDES`;
CREATE TABLE `SERDES`  (
  `SERDE_ID` bigint(20) NOT NULL,
  `NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `SLIB` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`SERDE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SERDES
-- ----------------------------
INSERT INTO `SERDES` VALUES (90, NULL, 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe');
INSERT INTO `SERDES` VALUES (481, NULL, 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe');
INSERT INTO `SERDES` VALUES (837, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (838, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (842, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (843, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (844, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (890, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (966, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (970, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (998, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (999, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1009, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1010, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1026, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1030, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1031, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1074, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1075, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1079, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1080, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1081, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1106, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1110, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1279, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1281, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1282, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1283, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1284, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1285, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1289, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1290, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1291, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1295, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1310, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1341, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1378, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1379, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1380, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1381, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1382, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1383, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1384, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1385, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1386, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1387, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1388, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1392, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1393, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');
INSERT INTO `SERDES` VALUES (1394, NULL, 'org.apache.hadoop.hive.ql.io.orc.OrcSerde');

-- ----------------------------
-- Table structure for SERDE_PARAMS
-- ----------------------------
DROP TABLE IF EXISTS `SERDE_PARAMS`;
CREATE TABLE `SERDE_PARAMS`  (
  `SERDE_ID` bigint(20) NOT NULL,
  `PARAM_KEY` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PARAM_VALUE` mediumtext CHARACTER SET latin1 COLLATE latin1_bin NULL,
  PRIMARY KEY (`SERDE_ID`, `PARAM_KEY`) USING BTREE,
  INDEX `SERDE_PARAMS_N49`(`SERDE_ID`) USING BTREE,
  CONSTRAINT `SERDE_PARAMS_FK1` FOREIGN KEY (`SERDE_ID`) REFERENCES `SERDES` (`SERDE_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SERDE_PARAMS
-- ----------------------------
INSERT INTO `SERDE_PARAMS` VALUES (90, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (90, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (481, 'serialization.format', '1');
INSERT INTO `SERDE_PARAMS` VALUES (837, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (837, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (838, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (838, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (842, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (842, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (843, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (843, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (844, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (844, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (890, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (890, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (966, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (966, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (970, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (970, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (998, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (998, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (999, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (999, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1009, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1009, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1010, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1010, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1026, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1026, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1030, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1030, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1031, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1031, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1074, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1074, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1075, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1075, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1079, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1079, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1080, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1080, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1081, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1081, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1106, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1106, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1110, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1110, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1279, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1279, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1281, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1281, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1282, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1282, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1283, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1283, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1284, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1284, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1285, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1285, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1289, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1289, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1290, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1290, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1291, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1291, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1295, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1295, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1310, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1310, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1341, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1341, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1378, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1378, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1379, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1379, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1380, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1380, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1381, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1381, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1382, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1382, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1383, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1383, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1384, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1384, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1385, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1385, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1386, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1386, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1387, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1387, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1388, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1388, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1392, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1392, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1393, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1393, 'serialization.format', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1394, 'field.delim', '	');
INSERT INTO `SERDE_PARAMS` VALUES (1394, 'serialization.format', '	');

-- ----------------------------
-- Table structure for SKEWED_COL_NAMES
-- ----------------------------
DROP TABLE IF EXISTS `SKEWED_COL_NAMES`;
CREATE TABLE `SKEWED_COL_NAMES`  (
  `SD_ID` bigint(20) NOT NULL,
  `SKEWED_COL_NAME` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`SD_ID`, `INTEGER_IDX`) USING BTREE,
  INDEX `SKEWED_COL_NAMES_N49`(`SD_ID`) USING BTREE,
  CONSTRAINT `SKEWED_COL_NAMES_FK1` FOREIGN KEY (`SD_ID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SKEWED_COL_NAMES
-- ----------------------------

-- ----------------------------
-- Table structure for SKEWED_COL_VALUE_LOC_MAP
-- ----------------------------
DROP TABLE IF EXISTS `SKEWED_COL_VALUE_LOC_MAP`;
CREATE TABLE `SKEWED_COL_VALUE_LOC_MAP`  (
  `SD_ID` bigint(20) NOT NULL,
  `STRING_LIST_ID_KID` bigint(20) NOT NULL,
  `LOCATION` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`SD_ID`, `STRING_LIST_ID_KID`) USING BTREE,
  INDEX `SKEWED_COL_VALUE_LOC_MAP_N49`(`STRING_LIST_ID_KID`) USING BTREE,
  INDEX `SKEWED_COL_VALUE_LOC_MAP_N50`(`SD_ID`) USING BTREE,
  CONSTRAINT `SKEWED_COL_VALUE_LOC_MAP_FK1` FOREIGN KEY (`SD_ID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `SKEWED_COL_VALUE_LOC_MAP_FK2` FOREIGN KEY (`STRING_LIST_ID_KID`) REFERENCES `SKEWED_STRING_LIST` (`STRING_LIST_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SKEWED_COL_VALUE_LOC_MAP
-- ----------------------------

-- ----------------------------
-- Table structure for SKEWED_STRING_LIST
-- ----------------------------
DROP TABLE IF EXISTS `SKEWED_STRING_LIST`;
CREATE TABLE `SKEWED_STRING_LIST`  (
  `STRING_LIST_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`STRING_LIST_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SKEWED_STRING_LIST
-- ----------------------------

-- ----------------------------
-- Table structure for SKEWED_STRING_LIST_VALUES
-- ----------------------------
DROP TABLE IF EXISTS `SKEWED_STRING_LIST_VALUES`;
CREATE TABLE `SKEWED_STRING_LIST_VALUES`  (
  `STRING_LIST_ID` bigint(20) NOT NULL,
  `STRING_LIST_VALUE` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`STRING_LIST_ID`, `INTEGER_IDX`) USING BTREE,
  INDEX `SKEWED_STRING_LIST_VALUES_N49`(`STRING_LIST_ID`) USING BTREE,
  CONSTRAINT `SKEWED_STRING_LIST_VALUES_FK1` FOREIGN KEY (`STRING_LIST_ID`) REFERENCES `SKEWED_STRING_LIST` (`STRING_LIST_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SKEWED_STRING_LIST_VALUES
-- ----------------------------

-- ----------------------------
-- Table structure for SKEWED_VALUES
-- ----------------------------
DROP TABLE IF EXISTS `SKEWED_VALUES`;
CREATE TABLE `SKEWED_VALUES`  (
  `SD_ID_OID` bigint(20) NOT NULL,
  `STRING_LIST_ID_EID` bigint(20) NOT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`SD_ID_OID`, `INTEGER_IDX`) USING BTREE,
  INDEX `SKEWED_VALUES_N50`(`SD_ID_OID`) USING BTREE,
  INDEX `SKEWED_VALUES_N49`(`STRING_LIST_ID_EID`) USING BTREE,
  CONSTRAINT `SKEWED_VALUES_FK1` FOREIGN KEY (`SD_ID_OID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `SKEWED_VALUES_FK2` FOREIGN KEY (`STRING_LIST_ID_EID`) REFERENCES `SKEWED_STRING_LIST` (`STRING_LIST_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SKEWED_VALUES
-- ----------------------------

-- ----------------------------
-- Table structure for SORT_COLS
-- ----------------------------
DROP TABLE IF EXISTS `SORT_COLS`;
CREATE TABLE `SORT_COLS`  (
  `SD_ID` bigint(20) NOT NULL,
  `COLUMN_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `ORDER` int(11) NOT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`SD_ID`, `INTEGER_IDX`) USING BTREE,
  INDEX `SORT_COLS_N49`(`SD_ID`) USING BTREE,
  CONSTRAINT `SORT_COLS_FK1` FOREIGN KEY (`SD_ID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SORT_COLS
-- ----------------------------
INSERT INTO `SORT_COLS` VALUES (1279, 'id', 1, 0);
INSERT INTO `SORT_COLS` VALUES (1289, 'rid', 1, 0);
INSERT INTO `SORT_COLS` VALUES (1290, 'customer_id', 1, 0);
INSERT INTO `SORT_COLS` VALUES (1341, 'customer_relationship_id', 1, 0);

-- ----------------------------
-- Table structure for TABLE_PARAMS
-- ----------------------------
DROP TABLE IF EXISTS `TABLE_PARAMS`;
CREATE TABLE `TABLE_PARAMS`  (
  `TBL_ID` bigint(20) NOT NULL,
  `PARAM_KEY` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `PARAM_VALUE` mediumtext CHARACTER SET latin1 COLLATE latin1_bin NULL,
  PRIMARY KEY (`TBL_ID`, `PARAM_KEY`) USING BTREE,
  INDEX `TABLE_PARAMS_N49`(`TBL_ID`) USING BTREE,
  CONSTRAINT `TABLE_PARAMS_FK1` FOREIGN KEY (`TBL_ID`) REFERENCES `TBLS` (`TBL_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TABLE_PARAMS
-- ----------------------------
INSERT INTO `TABLE_PARAMS` VALUES (39, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `TABLE_PARAMS` VALUES (39, 'comment', '????');
INSERT INTO `TABLE_PARAMS` VALUES (39, 'numFiles', '1');
INSERT INTO `TABLE_PARAMS` VALUES (39, 'numFilesErasureCoded', '0');
INSERT INTO `TABLE_PARAMS` VALUES (39, 'numRows', '0');
INSERT INTO `TABLE_PARAMS` VALUES (39, 'rawDataSize', '0');
INSERT INTO `TABLE_PARAMS` VALUES (39, 'totalSize', '9');
INSERT INTO `TABLE_PARAMS` VALUES (39, 'transient_lastDdlTime', '1598473663');
INSERT INTO `TABLE_PARAMS` VALUES (231, 'COLUMN_STATS_ACCURATE', '{\"BASIC_STATS\":\"true\"}');
INSERT INTO `TABLE_PARAMS` VALUES (231, 'numFiles', '1');
INSERT INTO `TABLE_PARAMS` VALUES (231, 'numFilesErasureCoded', '0');
INSERT INTO `TABLE_PARAMS` VALUES (231, 'numRows', '1');
INSERT INTO `TABLE_PARAMS` VALUES (231, 'rawDataSize', '8');
INSERT INTO `TABLE_PARAMS` VALUES (231, 'totalSize', '9');
INSERT INTO `TABLE_PARAMS` VALUES (231, 'transient_lastDdlTime', '1760019014');
INSERT INTO `TABLE_PARAMS` VALUES (373, 'EXTERNAL', 'TRUE');
INSERT INTO `TABLE_PARAMS` VALUES (373, 'comment', '???????');
INSERT INTO `TABLE_PARAMS` VALUES (373, 'orc.compress', 'ZLIB');
INSERT INTO `TABLE_PARAMS` VALUES (373, 'transient_lastDdlTime', '1761373390');
INSERT INTO `TABLE_PARAMS` VALUES (374, 'EXTERNAL', 'TRUE');
INSERT INTO `TABLE_PARAMS` VALUES (374, 'comment', 'EMS-PV???');
INSERT INTO `TABLE_PARAMS` VALUES (374, 'orc.compress', 'ZLIB');
INSERT INTO `TABLE_PARAMS` VALUES (374, 'transient_lastDdlTime', '1761373391');
INSERT INTO `TABLE_PARAMS` VALUES (376, 'comment', '????DWD?');
INSERT INTO `TABLE_PARAMS` VALUES (376, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (376, 'transient_lastDdlTime', '1761373709');
INSERT INTO `TABLE_PARAMS` VALUES (377, 'comment', 'EMS????dws?');
INSERT INTO `TABLE_PARAMS` VALUES (377, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (377, 'transient_lastDdlTime', '1761373868');
INSERT INTO `TABLE_PARAMS` VALUES (378, 'comment', '???DWS??');
INSERT INTO `TABLE_PARAMS` VALUES (378, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (378, 'transient_lastDdlTime', '1761373870');
INSERT INTO `TABLE_PARAMS` VALUES (394, 'numFiles', '1');
INSERT INTO `TABLE_PARAMS` VALUES (394, 'numFilesErasureCoded', '0');
INSERT INTO `TABLE_PARAMS` VALUES (394, 'numRows', '0');
INSERT INTO `TABLE_PARAMS` VALUES (394, 'rawDataSize', '0');
INSERT INTO `TABLE_PARAMS` VALUES (394, 'totalSize', '594');
INSERT INTO `TABLE_PARAMS` VALUES (394, 'transient_lastDdlTime', '1761378287');
INSERT INTO `TABLE_PARAMS` VALUES (532, 'SORTBUCKETCOLSPREFIX', 'TRUE');
INSERT INTO `TABLE_PARAMS` VALUES (532, 'comment', '?????');
INSERT INTO `TABLE_PARAMS` VALUES (532, 'orc.compress', 'ZLIB');
INSERT INTO `TABLE_PARAMS` VALUES (532, 'transient_lastDdlTime', '1761901904');
INSERT INTO `TABLE_PARAMS` VALUES (534, 'comment', '???');
INSERT INTO `TABLE_PARAMS` VALUES (534, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (534, 'transient_lastDdlTime', '1761901933');
INSERT INTO `TABLE_PARAMS` VALUES (535, 'comment', '?????');
INSERT INTO `TABLE_PARAMS` VALUES (535, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (535, 'transient_lastDdlTime', '1761901934');
INSERT INTO `TABLE_PARAMS` VALUES (536, 'comment', '?????');
INSERT INTO `TABLE_PARAMS` VALUES (536, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (536, 'transient_lastDdlTime', '1761901935');
INSERT INTO `TABLE_PARAMS` VALUES (537, 'comment', '???');
INSERT INTO `TABLE_PARAMS` VALUES (537, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (537, 'transient_lastDdlTime', '1761901937');
INSERT INTO `TABLE_PARAMS` VALUES (538, 'comment', 'scrm???');
INSERT INTO `TABLE_PARAMS` VALUES (538, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (538, 'transient_lastDdlTime', '1761901938');
INSERT INTO `TABLE_PARAMS` VALUES (540, 'SORTBUCKETCOLSPREFIX', 'TRUE');
INSERT INTO `TABLE_PARAMS` VALUES (540, 'comment', '????dwd?');
INSERT INTO `TABLE_PARAMS` VALUES (540, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (540, 'transient_lastDdlTime', '1761902070');
INSERT INTO `TABLE_PARAMS` VALUES (541, 'SORTBUCKETCOLSPREFIX', 'TRUE');
INSERT INTO `TABLE_PARAMS` VALUES (541, 'comment', '????dwm?');
INSERT INTO `TABLE_PARAMS` VALUES (541, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (541, 'transient_lastDdlTime', '1761902112');
INSERT INTO `TABLE_PARAMS` VALUES (542, 'comment', '????dws?');
INSERT INTO `TABLE_PARAMS` VALUES (542, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (542, 'transient_lastDdlTime', '1761902123');
INSERT INTO `TABLE_PARAMS` VALUES (544, 'comment', '?????');
INSERT INTO `TABLE_PARAMS` VALUES (544, 'orc.compress', 'ZLIB');
INSERT INTO `TABLE_PARAMS` VALUES (544, 'transient_lastDdlTime', '1761902381');
INSERT INTO `TABLE_PARAMS` VALUES (551, 'comment', '?????');
INSERT INTO `TABLE_PARAMS` VALUES (551, 'orc.compress', 'ZLIB');
INSERT INTO `TABLE_PARAMS` VALUES (551, 'transient_lastDdlTime', '1761903811');
INSERT INTO `TABLE_PARAMS` VALUES (562, 'SORTBUCKETCOLSPREFIX', 'TRUE');
INSERT INTO `TABLE_PARAMS` VALUES (562, 'comment', '?????');
INSERT INTO `TABLE_PARAMS` VALUES (562, 'orc.compress', 'ZLIB');
INSERT INTO `TABLE_PARAMS` VALUES (562, 'transient_lastDdlTime', '1761906622');
INSERT INTO `TABLE_PARAMS` VALUES (575, 'comment', '???????');
INSERT INTO `TABLE_PARAMS` VALUES (575, 'orc.bloom.filter.columns', 'time_table_id,class_id,signin_date,share_state');
INSERT INTO `TABLE_PARAMS` VALUES (575, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (575, 'transient_lastDdlTime', '1761910250');
INSERT INTO `TABLE_PARAMS` VALUES (576, 'comment', '???????');
INSERT INTO `TABLE_PARAMS` VALUES (576, 'orc.bloom.filter.columns', 'class_id,audit_state,cancel_state,valid_state');
INSERT INTO `TABLE_PARAMS` VALUES (576, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (576, 'transient_lastDdlTime', '1761910251');
INSERT INTO `TABLE_PARAMS` VALUES (577, 'comment', '???????');
INSERT INTO `TABLE_PARAMS` VALUES (577, 'orc.bloom.filter.columns', 'class_id,class_date');
INSERT INTO `TABLE_PARAMS` VALUES (577, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (577, 'transient_lastDdlTime', '1761910283');
INSERT INTO `TABLE_PARAMS` VALUES (578, 'comment', '???????');
INSERT INTO `TABLE_PARAMS` VALUES (578, 'orc.bloom.filter.columns', 'id,class_id');
INSERT INTO `TABLE_PARAMS` VALUES (578, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (578, 'transient_lastDdlTime', '1761910285');
INSERT INTO `TABLE_PARAMS` VALUES (579, 'comment', '?????????????');
INSERT INTO `TABLE_PARAMS` VALUES (579, 'orc.bloom.filter.columns', 'studying_student_count,studying_date');
INSERT INTO `TABLE_PARAMS` VALUES (579, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (579, 'transient_lastDdlTime', '1761910286');
INSERT INTO `TABLE_PARAMS` VALUES (580, 'comment', '????????');
INSERT INTO `TABLE_PARAMS` VALUES (580, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (580, 'transient_lastDdlTime', '1761910300');
INSERT INTO `TABLE_PARAMS` VALUES (581, 'comment', '????????');
INSERT INTO `TABLE_PARAMS` VALUES (581, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (581, 'transient_lastDdlTime', '1761910301');
INSERT INTO `TABLE_PARAMS` VALUES (582, 'comment', '????????');
INSERT INTO `TABLE_PARAMS` VALUES (582, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (582, 'transient_lastDdlTime', '1761910303');
INSERT INTO `TABLE_PARAMS` VALUES (583, 'comment', '????????');
INSERT INTO `TABLE_PARAMS` VALUES (583, 'orc.compress', 'SNAPPY');
INSERT INTO `TABLE_PARAMS` VALUES (583, 'transient_lastDdlTime', '1761910312');

-- ----------------------------
-- Table structure for TAB_COL_STATS
-- ----------------------------
DROP TABLE IF EXISTS `TAB_COL_STATS`;
CREATE TABLE `TAB_COL_STATS`  (
  `CS_ID` bigint(20) NOT NULL,
  `DB_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `TABLE_NAME` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `COLUMN_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `COLUMN_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `TBL_ID` bigint(20) NOT NULL,
  `LONG_LOW_VALUE` bigint(20) NULL DEFAULT NULL,
  `LONG_HIGH_VALUE` bigint(20) NULL DEFAULT NULL,
  `DOUBLE_HIGH_VALUE` double(53, 4) NULL DEFAULT NULL,
  `DOUBLE_LOW_VALUE` double(53, 4) NULL DEFAULT NULL,
  `BIG_DECIMAL_LOW_VALUE` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `BIG_DECIMAL_HIGH_VALUE` varchar(4000) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `NUM_NULLS` bigint(20) NOT NULL,
  `NUM_DISTINCTS` bigint(20) NULL DEFAULT NULL,
  `AVG_COL_LEN` double(53, 4) NULL DEFAULT NULL,
  `MAX_COL_LEN` bigint(20) NULL DEFAULT NULL,
  `NUM_TRUES` bigint(20) NULL DEFAULT NULL,
  `NUM_FALSES` bigint(20) NULL DEFAULT NULL,
  `LAST_ANALYZED` bigint(20) NOT NULL,
  PRIMARY KEY (`CS_ID`) USING BTREE,
  INDEX `TAB_COL_STATS_FK`(`TBL_ID`) USING BTREE,
  INDEX `TAB_COL_STATS_IDX`(`DB_NAME`, `TABLE_NAME`, `COLUMN_NAME`) USING BTREE,
  CONSTRAINT `TAB_COL_STATS_FK` FOREIGN KEY (`TBL_ID`) REFERENCES `TBLS` (`TBL_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TAB_COL_STATS
-- ----------------------------

-- ----------------------------
-- Table structure for TBLS
-- ----------------------------
DROP TABLE IF EXISTS `TBLS`;
CREATE TABLE `TBLS`  (
  `TBL_ID` bigint(20) NOT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `DB_ID` bigint(20) NULL DEFAULT NULL,
  `LAST_ACCESS_TIME` int(11) NOT NULL,
  `OWNER` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `OWNER_TYPE` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `RETENTION` int(11) NOT NULL,
  `SD_ID` bigint(20) NULL DEFAULT NULL,
  `TBL_NAME` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `TBL_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `VIEW_EXPANDED_TEXT` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `VIEW_ORIGINAL_TEXT` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`TBL_ID`) USING BTREE,
  UNIQUE INDEX `UNIQUETABLE`(`TBL_NAME`, `DB_ID`) USING BTREE,
  INDEX `TBLS_N50`(`SD_ID`) USING BTREE,
  INDEX `TBLS_N49`(`DB_ID`) USING BTREE,
  CONSTRAINT `TBLS_FK1` FOREIGN KEY (`SD_ID`) REFERENCES `SDS` (`SD_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `TBLS_FK2` FOREIGN KEY (`DB_ID`) REFERENCES `DBS` (`DB_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TBLS
-- ----------------------------
INSERT INTO `TBLS` VALUES (39, 1584696787, 43, 0, 'hue', 'USER', 0, 90, 'test_table', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (231, 1760018947, 236, 0, 'hue', 'USER', 0, 481, 'stu', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (373, 1761373390, 378, 0, 'hue', 'USER', 0, 837, 'web_chat_ems', 'EXTERNAL_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (374, 1761373391, 378, 0, 'hue', 'USER', 0, 838, 'web_chat_text_ems', 'EXTERNAL_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (376, 1761373709, 380, 0, 'hue', 'USER', 0, 842, 'visit_consult_dwd', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (377, 1761373868, 381, 0, 'hue', 'USER', 0, 843, 'visit_dws', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (378, 1761373870, 381, 0, 'hue', 'USER', 0, 844, 'consult_dws', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (394, 1761378287, 397, 0, 'hue', 'USER', 0, 890, 'emp_add_hive', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (532, 1761901904, 378, 0, 'hue', 'USER', 0, 1279, 'customer_relationship', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (534, 1761901933, 537, 0, 'hue', 'USER', 0, 1281, 'customer', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (535, 1761901934, 537, 0, 'hue', 'USER', 0, 1282, 'itcast_subject', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (536, 1761901935, 537, 0, 'hue', 'USER', 0, 1283, 'itcast_school', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (537, 1761901937, 537, 0, 'hue', 'USER', 0, 1284, 'employee', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (538, 1761901938, 537, 0, 'hue', 'USER', 0, 1285, 'scrm_department', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (540, 1761902070, 380, 0, 'hue', 'USER', 0, 1289, 'itcast_intention_dwd', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (541, 1761902112, 539, 0, 'hue', 'USER', 0, 1290, 'itcast_intention_dwm', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (542, 1761902123, 381, 0, 'hue', 'USER', 0, 1291, 'itcast_intention_dws', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (544, 1761902381, 378, 0, 'hue', 'USER', 0, 1295, 'customer_relationship_temp', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (551, 1761903811, 378, 0, 'hue', 'USER', 0, 1310, 'customer_clue_temp', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (562, 1761906622, 378, 0, 'hue', 'USER', 0, 1341, 'customer_clue', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (575, 1761910250, 378, 0, 'hue', 'USER', 0, 1378, 'student_signin_ods', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (576, 1761910251, 378, 0, 'hue', 'USER', 0, 1379, 'student_leave_apply_ods', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (577, 1761910283, 537, 0, 'hue', 'USER', 0, 1380, 'course_table_upload_detail_dimen', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (578, 1761910285, 537, 0, 'hue', 'USER', 0, 1381, 'class_time_dimen', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (579, 1761910286, 537, 0, 'hue', 'USER', 0, 1382, 'class_studying_student_count_dimen', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (580, 1761910300, 539, 0, 'hue', 'USER', 0, 1383, 'class_leave_dwm', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (581, 1761910301, 539, 0, 'hue', 'USER', 0, 1384, 'class_truant_dwm', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (582, 1761910303, 539, 0, 'hue', 'USER', 0, 1385, 'class_all_dwm', 'MANAGED_TABLE', NULL, NULL);
INSERT INTO `TBLS` VALUES (583, 1761910312, 381, 0, 'hue', 'USER', 0, 1386, 'class_attendance_dws', 'MANAGED_TABLE', NULL, NULL);

-- ----------------------------
-- Table structure for TBL_COL_PRIVS
-- ----------------------------
DROP TABLE IF EXISTS `TBL_COL_PRIVS`;
CREATE TABLE `TBL_COL_PRIVS`  (
  `TBL_COLUMN_GRANT_ID` bigint(20) NOT NULL,
  `COLUMN_NAME` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `GRANT_OPTION` smallint(6) NOT NULL,
  `GRANTOR` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `GRANTOR_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `TBL_COL_PRIV` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `TBL_ID` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`TBL_COLUMN_GRANT_ID`) USING BTREE,
  INDEX `TABLECOLUMNPRIVILEGEINDEX`(`TBL_ID`, `COLUMN_NAME`, `PRINCIPAL_NAME`, `PRINCIPAL_TYPE`, `TBL_COL_PRIV`, `GRANTOR`, `GRANTOR_TYPE`) USING BTREE,
  INDEX `TBL_COL_PRIVS_N49`(`TBL_ID`) USING BTREE,
  CONSTRAINT `TBL_COL_PRIVS_FK1` FOREIGN KEY (`TBL_ID`) REFERENCES `TBLS` (`TBL_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TBL_COL_PRIVS
-- ----------------------------

-- ----------------------------
-- Table structure for TBL_PRIVS
-- ----------------------------
DROP TABLE IF EXISTS `TBL_PRIVS`;
CREATE TABLE `TBL_PRIVS`  (
  `TBL_GRANT_ID` bigint(20) NOT NULL,
  `CREATE_TIME` int(11) NOT NULL,
  `GRANT_OPTION` smallint(6) NOT NULL,
  `GRANTOR` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `GRANTOR_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `PRINCIPAL_TYPE` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `TBL_PRIV` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `TBL_ID` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`TBL_GRANT_ID`) USING BTREE,
  INDEX `TBL_PRIVS_N49`(`TBL_ID`) USING BTREE,
  INDEX `TABLEPRIVILEGEINDEX`(`TBL_ID`, `PRINCIPAL_NAME`, `PRINCIPAL_TYPE`, `TBL_PRIV`, `GRANTOR`, `GRANTOR_TYPE`) USING BTREE,
  CONSTRAINT `TBL_PRIVS_FK1` FOREIGN KEY (`TBL_ID`) REFERENCES `TBLS` (`TBL_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TBL_PRIVS
-- ----------------------------
INSERT INTO `TBL_PRIVS` VALUES (1, 1584696787, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 39);
INSERT INTO `TBL_PRIVS` VALUES (2, 1584696787, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 39);
INSERT INTO `TBL_PRIVS` VALUES (3, 1584696787, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 39);
INSERT INTO `TBL_PRIVS` VALUES (4, 1584696787, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 39);
INSERT INTO `TBL_PRIVS` VALUES (6, 1760018947, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 231);
INSERT INTO `TBL_PRIVS` VALUES (7, 1760018947, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 231);
INSERT INTO `TBL_PRIVS` VALUES (8, 1760018947, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 231);
INSERT INTO `TBL_PRIVS` VALUES (9, 1760018947, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 231);
INSERT INTO `TBL_PRIVS` VALUES (11, 1761373390, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 373);
INSERT INTO `TBL_PRIVS` VALUES (12, 1761373390, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 373);
INSERT INTO `TBL_PRIVS` VALUES (13, 1761373390, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 373);
INSERT INTO `TBL_PRIVS` VALUES (14, 1761373390, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 373);
INSERT INTO `TBL_PRIVS` VALUES (15, 1761373391, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 374);
INSERT INTO `TBL_PRIVS` VALUES (16, 1761373391, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 374);
INSERT INTO `TBL_PRIVS` VALUES (17, 1761373391, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 374);
INSERT INTO `TBL_PRIVS` VALUES (18, 1761373391, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 374);
INSERT INTO `TBL_PRIVS` VALUES (19, 1761373709, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 376);
INSERT INTO `TBL_PRIVS` VALUES (20, 1761373709, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 376);
INSERT INTO `TBL_PRIVS` VALUES (21, 1761373709, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 376);
INSERT INTO `TBL_PRIVS` VALUES (22, 1761373709, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 376);
INSERT INTO `TBL_PRIVS` VALUES (23, 1761373868, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 377);
INSERT INTO `TBL_PRIVS` VALUES (24, 1761373868, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 377);
INSERT INTO `TBL_PRIVS` VALUES (25, 1761373868, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 377);
INSERT INTO `TBL_PRIVS` VALUES (26, 1761373868, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 377);
INSERT INTO `TBL_PRIVS` VALUES (27, 1761373870, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 378);
INSERT INTO `TBL_PRIVS` VALUES (28, 1761373870, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 378);
INSERT INTO `TBL_PRIVS` VALUES (29, 1761373870, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 378);
INSERT INTO `TBL_PRIVS` VALUES (30, 1761373870, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 378);
INSERT INTO `TBL_PRIVS` VALUES (31, 1761378287, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 394);
INSERT INTO `TBL_PRIVS` VALUES (32, 1761378287, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 394);
INSERT INTO `TBL_PRIVS` VALUES (33, 1761378287, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 394);
INSERT INTO `TBL_PRIVS` VALUES (34, 1761378287, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 394);
INSERT INTO `TBL_PRIVS` VALUES (36, 1761901904, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 532);
INSERT INTO `TBL_PRIVS` VALUES (37, 1761901904, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 532);
INSERT INTO `TBL_PRIVS` VALUES (38, 1761901904, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 532);
INSERT INTO `TBL_PRIVS` VALUES (39, 1761901904, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 532);
INSERT INTO `TBL_PRIVS` VALUES (44, 1761901933, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 534);
INSERT INTO `TBL_PRIVS` VALUES (45, 1761901933, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 534);
INSERT INTO `TBL_PRIVS` VALUES (46, 1761901933, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 534);
INSERT INTO `TBL_PRIVS` VALUES (47, 1761901933, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 534);
INSERT INTO `TBL_PRIVS` VALUES (48, 1761901934, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 535);
INSERT INTO `TBL_PRIVS` VALUES (49, 1761901934, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 535);
INSERT INTO `TBL_PRIVS` VALUES (50, 1761901934, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 535);
INSERT INTO `TBL_PRIVS` VALUES (51, 1761901934, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 535);
INSERT INTO `TBL_PRIVS` VALUES (52, 1761901935, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 536);
INSERT INTO `TBL_PRIVS` VALUES (53, 1761901935, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 536);
INSERT INTO `TBL_PRIVS` VALUES (54, 1761901935, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 536);
INSERT INTO `TBL_PRIVS` VALUES (55, 1761901935, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 536);
INSERT INTO `TBL_PRIVS` VALUES (56, 1761901937, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 537);
INSERT INTO `TBL_PRIVS` VALUES (57, 1761901937, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 537);
INSERT INTO `TBL_PRIVS` VALUES (58, 1761901937, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 537);
INSERT INTO `TBL_PRIVS` VALUES (59, 1761901937, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 537);
INSERT INTO `TBL_PRIVS` VALUES (60, 1761901938, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 538);
INSERT INTO `TBL_PRIVS` VALUES (61, 1761901938, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 538);
INSERT INTO `TBL_PRIVS` VALUES (62, 1761901938, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 538);
INSERT INTO `TBL_PRIVS` VALUES (63, 1761901938, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 538);
INSERT INTO `TBL_PRIVS` VALUES (64, 1761902070, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 540);
INSERT INTO `TBL_PRIVS` VALUES (65, 1761902070, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 540);
INSERT INTO `TBL_PRIVS` VALUES (66, 1761902070, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 540);
INSERT INTO `TBL_PRIVS` VALUES (67, 1761902070, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 540);
INSERT INTO `TBL_PRIVS` VALUES (68, 1761902112, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 541);
INSERT INTO `TBL_PRIVS` VALUES (69, 1761902112, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 541);
INSERT INTO `TBL_PRIVS` VALUES (70, 1761902112, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 541);
INSERT INTO `TBL_PRIVS` VALUES (71, 1761902112, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 541);
INSERT INTO `TBL_PRIVS` VALUES (72, 1761902123, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 542);
INSERT INTO `TBL_PRIVS` VALUES (73, 1761902123, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 542);
INSERT INTO `TBL_PRIVS` VALUES (74, 1761902123, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 542);
INSERT INTO `TBL_PRIVS` VALUES (75, 1761902123, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 542);
INSERT INTO `TBL_PRIVS` VALUES (76, 1761902381, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 544);
INSERT INTO `TBL_PRIVS` VALUES (77, 1761902381, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 544);
INSERT INTO `TBL_PRIVS` VALUES (78, 1761902381, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 544);
INSERT INTO `TBL_PRIVS` VALUES (79, 1761902381, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 544);
INSERT INTO `TBL_PRIVS` VALUES (88, 1761903811, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 551);
INSERT INTO `TBL_PRIVS` VALUES (89, 1761903811, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 551);
INSERT INTO `TBL_PRIVS` VALUES (90, 1761903811, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 551);
INSERT INTO `TBL_PRIVS` VALUES (91, 1761903811, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 551);
INSERT INTO `TBL_PRIVS` VALUES (92, 1761906623, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 562);
INSERT INTO `TBL_PRIVS` VALUES (93, 1761906623, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 562);
INSERT INTO `TBL_PRIVS` VALUES (94, 1761906623, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 562);
INSERT INTO `TBL_PRIVS` VALUES (95, 1761906623, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 562);
INSERT INTO `TBL_PRIVS` VALUES (96, 1761910250, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 575);
INSERT INTO `TBL_PRIVS` VALUES (97, 1761910250, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 575);
INSERT INTO `TBL_PRIVS` VALUES (98, 1761910250, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 575);
INSERT INTO `TBL_PRIVS` VALUES (99, 1761910250, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 575);
INSERT INTO `TBL_PRIVS` VALUES (100, 1761910251, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 576);
INSERT INTO `TBL_PRIVS` VALUES (101, 1761910251, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 576);
INSERT INTO `TBL_PRIVS` VALUES (102, 1761910251, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 576);
INSERT INTO `TBL_PRIVS` VALUES (103, 1761910251, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 576);
INSERT INTO `TBL_PRIVS` VALUES (104, 1761910283, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 577);
INSERT INTO `TBL_PRIVS` VALUES (105, 1761910283, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 577);
INSERT INTO `TBL_PRIVS` VALUES (106, 1761910283, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 577);
INSERT INTO `TBL_PRIVS` VALUES (107, 1761910283, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 577);
INSERT INTO `TBL_PRIVS` VALUES (108, 1761910285, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 578);
INSERT INTO `TBL_PRIVS` VALUES (109, 1761910285, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 578);
INSERT INTO `TBL_PRIVS` VALUES (110, 1761910285, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 578);
INSERT INTO `TBL_PRIVS` VALUES (111, 1761910285, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 578);
INSERT INTO `TBL_PRIVS` VALUES (112, 1761910286, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 579);
INSERT INTO `TBL_PRIVS` VALUES (113, 1761910286, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 579);
INSERT INTO `TBL_PRIVS` VALUES (114, 1761910286, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 579);
INSERT INTO `TBL_PRIVS` VALUES (115, 1761910286, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 579);
INSERT INTO `TBL_PRIVS` VALUES (116, 1761910300, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 580);
INSERT INTO `TBL_PRIVS` VALUES (117, 1761910300, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 580);
INSERT INTO `TBL_PRIVS` VALUES (118, 1761910300, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 580);
INSERT INTO `TBL_PRIVS` VALUES (119, 1761910300, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 580);
INSERT INTO `TBL_PRIVS` VALUES (120, 1761910301, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 581);
INSERT INTO `TBL_PRIVS` VALUES (121, 1761910301, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 581);
INSERT INTO `TBL_PRIVS` VALUES (122, 1761910301, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 581);
INSERT INTO `TBL_PRIVS` VALUES (123, 1761910301, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 581);
INSERT INTO `TBL_PRIVS` VALUES (124, 1761910303, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 582);
INSERT INTO `TBL_PRIVS` VALUES (125, 1761910303, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 582);
INSERT INTO `TBL_PRIVS` VALUES (126, 1761910303, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 582);
INSERT INTO `TBL_PRIVS` VALUES (127, 1761910303, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 582);
INSERT INTO `TBL_PRIVS` VALUES (128, 1761910312, 1, 'hue', 'USER', 'hue', 'USER', 'INSERT', 583);
INSERT INTO `TBL_PRIVS` VALUES (129, 1761910312, 1, 'hue', 'USER', 'hue', 'USER', 'SELECT', 583);
INSERT INTO `TBL_PRIVS` VALUES (130, 1761910312, 1, 'hue', 'USER', 'hue', 'USER', 'UPDATE', 583);
INSERT INTO `TBL_PRIVS` VALUES (131, 1761910312, 1, 'hue', 'USER', 'hue', 'USER', 'DELETE', 583);

-- ----------------------------
-- Table structure for TXNS
-- ----------------------------
DROP TABLE IF EXISTS `TXNS`;
CREATE TABLE `TXNS`  (
  `TXN_ID` bigint(20) NOT NULL,
  `TXN_STATE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TXN_STARTED` bigint(20) NOT NULL,
  `TXN_LAST_HEARTBEAT` bigint(20) NOT NULL,
  `TXN_USER` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TXN_HOST` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TXN_AGENT_INFO` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TXN_META_INFO` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TXN_HEARTBEAT_COUNT` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`TXN_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TXNS
-- ----------------------------

-- ----------------------------
-- Table structure for TXN_COMPONENTS
-- ----------------------------
DROP TABLE IF EXISTS `TXN_COMPONENTS`;
CREATE TABLE `TXN_COMPONENTS`  (
  `TC_TXNID` bigint(20) NOT NULL,
  `TC_DATABASE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TC_TABLE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `TC_PARTITION` varchar(767) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `TC_OPERATION_TYPE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  INDEX `TC_TXNID`(`TC_TXNID`) USING BTREE,
  CONSTRAINT `TXN_COMPONENTS_ibfk_1` FOREIGN KEY (`TC_TXNID`) REFERENCES `TXNS` (`TXN_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TXN_COMPONENTS
-- ----------------------------

-- ----------------------------
-- Table structure for TYPES
-- ----------------------------
DROP TABLE IF EXISTS `TYPES`;
CREATE TABLE `TYPES`  (
  `TYPES_ID` bigint(20) NOT NULL,
  `TYPE_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `TYPE1` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `TYPE2` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  PRIMARY KEY (`TYPES_ID`) USING BTREE,
  UNIQUE INDEX `UNIQUE_TYPE`(`TYPE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TYPES
-- ----------------------------

-- ----------------------------
-- Table structure for TYPE_FIELDS
-- ----------------------------
DROP TABLE IF EXISTS `TYPE_FIELDS`;
CREATE TABLE `TYPE_FIELDS`  (
  `TYPE_NAME` bigint(20) NOT NULL,
  `COMMENT` varchar(256) CHARACTER SET latin1 COLLATE latin1_bin NULL DEFAULT NULL,
  `FIELD_NAME` varchar(128) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `FIELD_TYPE` varchar(767) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `INTEGER_IDX` int(11) NOT NULL,
  PRIMARY KEY (`TYPE_NAME`, `FIELD_NAME`) USING BTREE,
  INDEX `TYPE_FIELDS_N49`(`TYPE_NAME`) USING BTREE,
  CONSTRAINT `TYPE_FIELDS_FK1` FOREIGN KEY (`TYPE_NAME`) REFERENCES `TYPES` (`TYPES_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TYPE_FIELDS
-- ----------------------------

-- ----------------------------
-- Table structure for VERSION
-- ----------------------------
DROP TABLE IF EXISTS `VERSION`;
CREATE TABLE `VERSION`  (
  `VER_ID` bigint(20) NOT NULL,
  `SCHEMA_VERSION` varchar(127) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `VERSION_COMMENT` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`VER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of VERSION
-- ----------------------------
INSERT INTO `VERSION` VALUES (1, '2.1.1', 'Hive release version 2.1.1');

-- ----------------------------
-- Table structure for WRITE_SET
-- ----------------------------
DROP TABLE IF EXISTS `WRITE_SET`;
CREATE TABLE `WRITE_SET`  (
  `WS_DATABASE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `WS_TABLE` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `WS_PARTITION` varchar(767) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `WS_TXNID` bigint(20) NOT NULL,
  `WS_COMMIT_ID` bigint(20) NOT NULL,
  `WS_OPERATION_TYPE` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of WRITE_SET
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
