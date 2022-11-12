/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: alert_profile
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `alert_profile` (
  `idprofile` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sms` varchar(60) NOT NULL,
  `account_number` varchar(60) NOT NULL,
  `idMsgType` varchar(60) NOT NULL,
  `idFlow` varchar(60) NOT NULL,
  `message_template` varchar(255) NOT NULL,
  `internal_alert_email` varchar(255) NOT NULL,
  `idalert_type` varchar(60) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idprofile`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: alert_type
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `alert_type` (
  `idalert_type` int(11) NOT NULL AUTO_INCREMENT,
  `alert_type_name` varchar(60) NOT NULL,
  `alert_type_comment` varchar(60) NOT NULL,
  PRIMARY KEY (`idalert_type`),
  UNIQUE KEY `alert_type_name` (`alert_type_name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: employee
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` binary(16) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m103
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m103` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m190
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m190` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m192
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m192` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m195
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m195` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m196
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m196` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m199
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m199` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m202
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m202` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m295
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m295` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m299
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m299` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m300
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m300` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m320
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m320` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m420
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m420` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m518
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m518` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m535
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m535` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m536
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m536` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m537
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m537` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m545
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m545` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m548
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m548` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m564
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m564` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m566
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m566` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m599
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m599` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m671
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m671` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m730
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m730` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m750
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m750` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m754
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m754` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m759
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m759` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m790
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m790` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m799
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m799` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m900
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m900` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m910
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m910` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m935
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m935` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m940
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m940` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m950
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m950` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m991
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m991` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m995
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m995` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: m999
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `m999` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(255) DEFAULT NULL,
  `dir` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `jsondata` longtext NOT NULL,
  `cdatetime` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: menu
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `menu` (
  `id` varchar(255) NOT NULL,
  `title` varchar(60) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `baseId` varchar(255) DEFAULT '0',
  `isBaseId` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(60) DEFAULT NULL,
  `originatorBaseId` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: message_flow
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `message_flow` (
  `idFlow` int(11) NOT NULL AUTO_INCREMENT,
  `meesage_flow_name` varchar(60) NOT NULL,
  `meesage_flow_comment` varchar(60) NOT NULL,
  PRIMARY KEY (`idFlow`),
  UNIQUE KEY `meesage_flow_name` (`meesage_flow_name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: message_headers
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `message_headers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messagetype` varchar(60) NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `jsondata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: message_record
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `message_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` varchar(60) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_type_UNIQUE` (`message_type`)
) ENGINE = InnoDB AUTO_INCREMENT = 4530 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: message_type
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `message_type` (
  `idMsgType` int(11) NOT NULL AUTO_INCREMENT,
  `message_type_name` varchar(60) NOT NULL,
  `message_type_comment` varchar(60) NOT NULL,
  PRIMARY KEY (`idMsgType`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: oldusers
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `oldusers` (
  `idsys_users` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `uid` varchar(150) DEFAULT NULL,
  `acl_role` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `authtype` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`idsys_users`),
  UNIQUE KEY `phone` (`phone`, `username`, `email`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: role
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `role` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: rolemenu
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `rolemenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` varchar(255) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 24 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: routes
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `routes` (
  `id` int(11) NOT NULL,
  `apiName` varchar(60) NOT NULL DEFAULT 'test',
  `protocol` varchar(60) NOT NULL DEFAULT 'http',
  `host` text NOT NULL,
  `port` int(60) NOT NULL DEFAULT '3000',
  `path` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_auth_ad
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_auth_ad` (
  `idsettings_auth_ad` int(11) NOT NULL,
  `ad_dc_prim` varchar(100) DEFAULT NULL,
  `ad_dc_sec` varchar(100) DEFAULT NULL,
  `ad_basedn` varchar(100) DEFAULT NULL,
  `ad_domain` varchar(45) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idsettings_auth_ad`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_auth_ldap
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_auth_ldap` (
  `idsettings_auth_LDAP` int(11) NOT NULL AUTO_INCREMENT,
  `ldap_user` varchar(60) DEFAULT NULL,
  `ldap_url` varchar(100) DEFAULT NULL,
  `ldap_password` varchar(255) DEFAULT NULL,
  `ldap_domain` varchar(45) DEFAULT NULL,
  `enabled` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsettings_auth_LDAP`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_auth_oauth
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_auth_oauth` (
  `idsettings_auth_oauth` int(11) NOT NULL AUTO_INCREMENT,
  `oauth_url` varchar(250) DEFAULT NULL,
  `oauth_api_key` varchar(100) DEFAULT NULL,
  `oauth_api_secret` varchar(100) DEFAULT NULL,
  `oauth_redirect_url` varchar(200) DEFAULT NULL,
  `enabled` int(11) NOT NULL DEFAULT '0',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsettings_auth_oauth`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_auth_type
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_auth_type` (
  `idsettings_authentication_type` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsettings_authentication_type`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_authentication
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_authentication` (
  `idsettings_authentication` int(11) NOT NULL AUTO_INCREMENT,
  `auth_type` int(11) DEFAULT NULL,
  `mfa` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idsettings_authentication`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_company
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_company` (
  `idsettings_company` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(45) DEFAULT NULL,
  `comp_logo` varchar(45) DEFAULT NULL,
  `comp_slogan` varchar(45) DEFAULT NULL,
  `comp_email` varchar(45) DEFAULT NULL,
  `comp_url` varchar(45) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`idsettings_company`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_email
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_email` (
  `idsettings_sms` int(11) NOT NULL AUTO_INCREMENT,
  `smtpHost` varchar(45) DEFAULT NULL,
  `smtpPort` int(11) DEFAULT NULL,
  `smtpTLS` tinyint(4) DEFAULT NULL,
  `smtpUser` varchar(45) DEFAULT NULL,
  `smtpPass` varchar(45) DEFAULT NULL,
  `smtpFrom` varchar(45) DEFAULT NULL,
  `enabled` int(11) NOT NULL DEFAULT '0',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsettings_sms`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_paths
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_paths` (
  `idsettings_paths` int(11) NOT NULL AUTO_INCREMENT,
  `src_swift_main_path` varchar(60) NOT NULL,
  `src_swift_docs_path_print` varchar(45) DEFAULT NULL,
  `src_swift_docs_path_pdf` varchar(45) DEFAULT NULL,
  `src_swift_docs_path_img` varchar(45) DEFAULT NULL,
  `src_swift_docs_path_txt` varchar(45) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsettings_paths`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: settings_token
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `settings_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issuer` varchar(60) NOT NULL DEFAULT 'ipronetswift',
  `audience` varchar(60) NOT NULL DEFAULT 'swiftpanel',
  `timetolive` varchar(60) NOT NULL DEFAULT '10min',
  `token_name` varchar(60) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: smsgateway
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `smsgateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway` varchar(60) NOT NULL,
  `gatewayurl` varchar(500) NOT NULL,
  `gatewaykeys` varchar(255) NOT NULL,
  `gatewaypassword` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: swift_message_metadata
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `swift_message_metadata` (
  `idswift_message_metadata` int(11) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `swift_mt` int(11) DEFAULT NULL,
  `swift_dir` tinyint(4) DEFAULT NULL,
  `src_bic` varchar(45) DEFAULT NULL,
  `dest_bic` varchar(45) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `pdf_file_location` varchar(45) DEFAULT NULL,
  `unique_mt_dir_acct` varchar(45) DEFAULT NULL,
  `swift_headers` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idswift_message_metadata`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sys_user_roles
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `sys_user_roles` (
  `idsys_user_roles` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `describe` varchar(45) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsys_user_roles`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sys_users_status
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `sys_users_status` (
  `idsys_users_status` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `describe` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsys_users_status`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: systemprofile
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `systemprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Company` varchar(255) NOT NULL,
  `AppName` varchar(60) NOT NULL,
  `SystemToken` varchar(600) NOT NULL,
  `SystemKeys` varchar(300) NOT NULL,
  `ipList` varchar(600) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Company` (`Company`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: usermenu
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `usermenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `menuid` varchar(255) NOT NULL,
  `accessType` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `uid` varchar(150) DEFAULT NULL,
  `roleid` varchar(60) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `authtype` int(11) DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`, `username`, `email`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: alert_profile
# ------------------------------------------------------------

INSERT INTO
  `alert_profile` (
    `idprofile`,
    `CustomerName`,
    `email`,
    `sms`,
    `account_number`,
    `idMsgType`,
    `idFlow`,
    `message_template`,
    `internal_alert_email`,
    `idalert_type`,
    `createdAt`,
    `updatedAt`,
    `deletedAt`,
    `status`
  )
VALUES
  (
    1,
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '2021-12-26 17:12:10',
    '2021-12-30 15:06:52',
    '2021-12-26 23:55:05',
    0
  );
INSERT INTO
  `alert_profile` (
    `idprofile`,
    `CustomerName`,
    `email`,
    `sms`,
    `account_number`,
    `idMsgType`,
    `idFlow`,
    `message_template`,
    `internal_alert_email`,
    `idalert_type`,
    `createdAt`,
    `updatedAt`,
    `deletedAt`,
    `status`
  )
VALUES
  (
    2,
    'Manzi',
    'manzi@test.com',
    '0260132570',
    '`111',
    '101',
    'inwards',
    'Hello',
    'manzi@test.com',
    'sms',
    '2021-12-26 17:42:29',
    '2022-05-01 21:44:06',
    NULL,
    0
  );
INSERT INTO
  `alert_profile` (
    `idprofile`,
    `CustomerName`,
    `email`,
    `sms`,
    `account_number`,
    `idMsgType`,
    `idFlow`,
    `message_template`,
    `internal_alert_email`,
    `idalert_type`,
    `createdAt`,
    `updatedAt`,
    `deletedAt`,
    `status`
  )
VALUES
  (
    3,
    'Manzi',
    'manzi@test.com',
    '0269313257',
    '`111',
    '101',
    'inwards',
    'Hello Boss',
    'mis@calbank.net',
    'sms',
    '2022-05-02 18:15:07',
    NULL,
    NULL,
    1
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: alert_type
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: employee
# ------------------------------------------------------------

INSERT INTO
  `employee` (`emp_id`, `name`)
VALUES
  (
    X'b9d7041a478211ec9a7254bf64489f9c',
    'John Doe'
  );
INSERT INTO
  `employee` (`emp_id`, `name`)
VALUES
  (
    X'b9d793a7478211ec9a7254bf64489f9c',
    'Johnny Dope'
  );
INSERT INTO
  `employee` (`emp_id`, `name`)
VALUES
  (
    X'b9d796ac478211ec9a7254bf64489f9c',
    'Jason Gillespie'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m103
# ------------------------------------------------------------

INSERT INTO
  `m103` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00170530.prt',
    'outwards',
    'ACCCGHACXXX',
    'AREXGHACXXX',
    '{\"NetStatus\":\"Network Ack\",\"docname\":\"00170530.prt\",\"fincopy\":\"GIS\",\"finmsg\":1,\"cdate\":\"09/30/21\",\"ctime\":\"15:59:15\",\"cdatetime\":\"09/30/21 15:59:15\",\"dir\":\"outwards\",\"mtype\":\"103\",\"Sender\":\"ACCCGHACXXX\",\"Reciever\":\"AREXGHACXXX\",\"F59_2\":\"ABAKOBI RURAL BANKMADINAAMUH\",\"F20\":\"Sender s Reference\",\"F20_1\":\"FT21273BMMJJ\",\"F23\":\"Bank Operation Code\",\"F23_1\":\"CRED\",\"F32\":\"Val Dte/Curr/Interbnk Settld Amt\",\"F32_1\":\"30 September 2021\",\"F32_2\":\"GHS (GHANA CEDI)\",\"F32_3\":\"774.94\",\"F50\":\"Ordering Customer-Name & Address\",\"F50_1\":\"GHS1240000300002\",\"F50_2\":\"CAL BANK CUSTODY SERVICES\",\"F50_3\":\"23 INDEPENDENCE AVENUE\",\"F59\":\"Beneficiary Customer-Name & Addr\",\"F59_1\":\"3001120000355251\",\"F59_3\":\"ELIZABETH\",\"F70\":\"Remittance Information\",\"F70_1\":\"CLAIM BENEFIT ON USOPS IFO AMUH\",\"F70_2\":\"ELIZABETH\",\"F71\":\"Details of Charges\",\"F71_1\":\"OUR\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"ACCHEAD OFFICE\",\"F72_2\":\"--------------------------- Message Trailer ------------------------\",\"F72_3\":\"87EC6916FBB2}\",\"F72_4\":\"MAC & PAC-Equivalent\",\"F72_5\":\"---------------------------- Interventions -------------------------\",\"F72_6\":\"Network Report\",\"F72_7\":\"300921 15\",\"F72_8\":\"SWIFT Interface\",\"F72_9\":\"SYSTEM\",\"F72_10\":\"Text\",\"F72_11\":\"F21ACCCGHACAXXX3976425773}{4\"}',
    '2021-09-30 15:59:15',
    '2022-03-12 08:55:01'
  );
INSERT INTO
  `m103` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00170536.prt',
    'outwards',
    'ACCCGHACXXX',
    'FBLIGHACXXX',
    '{\"NetStatus\":\"Network Ack\",\"docname\":\"00170536.prt\",\"fincopy\":\"GIS\",\"finmsg\":1,\"cdate\":\"09/30/21\",\"ctime\":\"16:00:06\",\"cdatetime\":\"09/30/21 16:00:06\",\"dir\":\"outwards\",\"mtype\":\"103\",\"Sender\":\"ACCCGHACXXX\",\"Reciever\":\"FBLIGHACXXX\",\"F59_2\":\"NON PD SETTLEMENT ACCOUNT\",\"F20\":\"Sender s Reference\",\"F20_1\":\"FT21273XG68K\",\"F23\":\"Bank Operation Code\",\"F23_1\":\"CRED\",\"F32\":\"Val Dte/Curr/Interbnk Settld Amt\",\"F32_1\":\"30 September 2021\",\"F32_2\":\"GHS (GHANA CEDI)\",\"F32_3\":\"11,999,999.74\",\"F50\":\"Ordering Customer-Name & Address\",\"F50_1\":\"GHS1240000300002\",\"F50_2\":\"CAL BANK CUSTODY SERVICE\",\"F50_3\":\"23 INDEPENDENCE AVENUE STREET\",\"F59\":\"Beneficiary Customer-Name & Addr\",\"F59_1\":\"1000022225472\",\"F70\":\"Remittance Information\",\"F70_1\":\"PAYMENT AGAINST BUY 11999999.74\",\"F70_2\":\"DAAKYE TRUST 10YR BOND AT 20.5PER\",\"F70_3\":\"VD 28.4.21 MT 16.4.31\",\"F71\":\"Details of Charges\",\"F71_1\":\"OUR\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"ACCHEAD OFFICE\",\"F72_2\":\"--------------------------- Message Trailer ------------------------\",\"F72_3\":\"AC989383C596}\",\"F72_4\":\"MAC & PAC-Equivalent\",\"F72_5\":\"---------------------------- Interventions -------------------------\",\"F72_6\":\"Network Report\",\"F72_7\":\"300921 15\",\"F72_8\":\"SWIFT Interface\",\"F72_9\":\"SYSTEM\",\"F72_10\":\"Text\",\"F72_11\":\"F21ACCCGHACAXXX3976425779}{4\"}',
    '2021-09-30 16:00:06',
    '2022-03-12 08:55:01'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m190
# ------------------------------------------------------------

INSERT INTO
  `m190` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00182888.prt',
    'inwards',
    'SOGEFRPPXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182888.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/10/22\",\"ctime\":\"15:57:51\",\"cdatetime\":\"02/10/22 15:57:51\",\"dir\":\"inwards\",\"mtype\":\"190\",\"Sender\":\"SOGEFRPPXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"07600041G2J8679\",\"F21\":\"Related Reference\",\"F21_1\":\"FT2204149XYL\",\"F25\":\"Account Identification\",\"F25_1\":\"002013801040\",\"F32\":\"Value Date, Currency Code, Amt\",\"F32_1\":\"10 February 2022\",\"F32_2\":\"EUR (EURO)\",\"F32_3\":\"50.\",\"F52\":\"Ordering Institution - FI BIC\",\"F52_1\":\"SOGEFRPPXXX\",\"F52_2\":\"SOCIETE GENERALE\",\"F52_3\":\"PUTEAUX  FR\",\"F71\":\"Details of Charges\",\"F71_1\":\"OUR CHARGES\",\"F71_2\":\"--------------------------- Message Trailer ------------------------\",\"F71_3\":\"CDADC3DF61EF}\",\"F71_4\":\"MAC-Equivalent\"}',
    '2022-02-10 15:57:51',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m190` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00182403.prt',
    'inwards',
    'SOGEFRPPXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182403.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/09/22\",\"ctime\":\"11:31:09\",\"cdatetime\":\"02/09/22 11:31:09\",\"dir\":\"inwards\",\"mtype\":\"190\",\"Sender\":\"SOGEFRPPXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"07600040G2G0660\",\"F21\":\"Related Reference\",\"F21_1\":\"FT22039K5BPD\",\"F25\":\"Account Identification\",\"F25_1\":\"002013801040\",\"F32\":\"Value Date, Currency Code, Amt\",\"F32_1\":\"09 February 2022\",\"F32_2\":\"EUR (EURO)\",\"F32_3\":\"30.\",\"F52\":\"Ordering Institution - FI BIC\",\"F52_1\":\"SOGEFRPPXXX\",\"F52_2\":\"SOCIETE GENERALE\",\"F52_3\":\"PUTEAUX  FR\",\"F71\":\"Details of Charges\",\"F71_1\":\"OUR CHARGES\",\"F71_2\":\"--------------------------- Message Trailer ------------------------\",\"F71_3\":\"5EA48A0D21C3}\",\"F71_4\":\"MAC-Equivalent\"}',
    '2022-02-09 11:31:09',
    '2022-03-12 09:11:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m192
# ------------------------------------------------------------

INSERT INTO
  `m192` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00184199.prt',
    'inwards',
    'DEUTDEFFXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00184199.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/16/22\",\"ctime\":\"12:39:14\",\"cdatetime\":\"02/16/22 12:39:14\",\"dir\":\"inwards\",\"mtype\":\"192\",\"Sender\":\"DEUTDEFFXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"220216 603071\",\"F21\":\"Related Reference\",\"F21_1\":\"03MT220214151574\",\"F11\":\"MT and Date of the Original Msg\",\"F11_1\":\"103\",\"F11_2\":\"220216\",\"F79\":\"Narrative Descrp of Original Msg\",\"F79_1\":\"CUST\",\"F79_2\":\"--------------------------- Message Trailer ------------------------\",\"F79_3\":\"60849C29EE68}\",\"F79_4\":\"MAC-Equivalent\"}',
    '2022-02-16 12:39:14',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m192` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00188284.prt',
    'inwards',
    'SCBLGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00188284.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/01/22\",\"ctime\":\"07:22:54\",\"cdatetime\":\"03/01/22 07:22:54\",\"dir\":\"inwards\",\"mtype\":\"192\",\"Sender\":\"SCBLGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"GHP220228-000018\",\"F21\":\"Related Reference\",\"F21_1\":\"SE07802202253242\",\"F11\":\"MT and Date of the Original Msg\",\"F11_1\":\"103\",\"F11_2\":\"220225\",\"F79\":\"Narrative Descrp of Original Msg\",\"F79_1\":\"AS PER REMITTER REQUEST\",\"F79_2\":\".20.SE07802202253242\",\"F79_3\":\".23B.CRED\",\"F79_4\":\".32A.220225GHS29662,50\",\"F79_5\":\".33B.GHS29662,50\",\"F79_6\":\".50K.0104205551202\",\"F79_7\":\"EARLY POWER LIMITED\",\"F79_8\":\"HOUSE NUMBER 68 MAHOGANY CRESCENT A\",\"F79_9\":\"YAWASO NIMA, NII ANYETEI KWAO CLOSE\",\"F79_10\":\"P.O.BOX CT 8393, CANTONMENTSGHANA\",\"F79_11\":\".52A.SCBLGHACXXX\",\"F79_12\":\".57A.ACCCGHACXXX\",\"F79_13\":\".59.1400001102917\",\"F79_14\":\"CAMBEG TRADING AND TRANSPORT SERVIC\",\"F79_15\":\"GHANA\",\"F79_16\":\".71A.SHA\",\"F79_17\":\"--------------------------- Message Trailer ------------------------\",\"F79_18\":\"5A873F8EDCE6}\",\"F79_19\":\"MAC-Equivalent\"}',
    '2022-03-01 07:22:54',
    '2022-03-12 09:11:41'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m195
# ------------------------------------------------------------

INSERT INTO
  `m195` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00182335.prt',
    'inwards',
    'BARCGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182335.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/15/22\",\"ctime\":\"11:54:34\",\"cdatetime\":\"03/15/22 11:54:34\",\"dir\":\"inwards\",\"mtype\":\"195\",\"Sender\":\"BARCGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"BAFGH2113822038\",\"F21\":\"Related Reference\",\"F21_1\":\"BAFGH2113820088\",\"F75\":\"Queries\",\"F75_1\":\"0PLEASE RETURN FUNDS TO OURSELVE\",\"F75_2\":\"S.\",\"F79\":\"Narr Desc of Msg Query Relates\",\"F79_1\":\"103 REF\",\"F79_2\":\"GHS Interbank Value Date\",\"F79_3\":\"55000,00 Beneficiary Cu\",\"F79_4\":\"1400000518408 HARRIS AGO AKW\",\"F79_5\":\"EI G2 002 0930 NII NORMAN BORTEI NUNGUA\",\"F79_6\":\"--------------------------- Message Trailer ------------------------\",\"F79_7\":\"B33E72F5061A}\",\"F79_8\":\"MAC-Equivalent\"}',
    '2022-03-15 11:54:34',
    '2022-03-15 06:54:45'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m196
# ------------------------------------------------------------

INSERT INTO
  `m196` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00182090.prt',
    'inwards',
    'BHFBDEFFXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182090.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"01/03/22\",\"ctime\":\"11:07:50\",\"cdatetime\":\"01/03/22 11:07:50\",\"dir\":\"inwards\",\"mtype\":\"196\",\"Sender\":\"BHFBDEFFXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"03ULL02\",\"F21\":\"Related Reference\",\"F21_1\":\"LCENQUIRY\",\"F76\":\"Answers\",\"F76_1\":\"Please give us some further\",\"F76_2\":\"information (affected account\",\"F76_3\":\"number an the date or period\",\"F76_4\":\"of received MT950) We will give you\",\"F76_5\":\"an answer asap.\",\"F76_6\":\"Regards,Vera UllmannAcc. Services\",\"F11\":\"MT and Date of the Original Msg\",\"F11_1\":\"196\",\"F11_2\":\"220103\",\"F11_3\":\"20\",\"F11_4\":\"21\",\"F11_5\":\"79\",\"F11_6\":\".\",\"F11_7\":\"WE REFER TO YOUR MT950 FOR THE FOLLOWING CHARGES\",\"F11_8\":\"KINDLY PROVIDE US WITH THE DETAILS OF THE CHARGES\",\"F11_9\":\"UNDER THE FOLLOWING REF\",\"F11_10\":\"NCOM3111256313\",\"F11_11\":\"NCOM3112200233\",\"F11_12\":\"NCOM03MT201816321455\",\"F11_13\":\"NCOM3113048990\",\"F11_14\":\"NCOM3113524634\",\"F11_15\":\"NCOM3114034357\",\"F11_16\":\"NCOM3115168197\",\"F11_17\":\"NCOM3117180636\",\"F11_18\":\"RGDS\",\"F11_19\":\"--------------------------- Message Trailer ------------------------\",\"F11_20\":\"F0F0FACA54E9}\",\"F11_21\":\"MAC-Equivalent\"}',
    '2022-01-03 11:07:50',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m196` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00182472.prt',
    'inwards',
    'COBADEFFXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182472.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/09/22\",\"ctime\":\"14:32:14\",\"cdatetime\":\"02/09/22 14:32:14\",\"dir\":\"inwards\",\"mtype\":\"196\",\"Sender\":\"COBADEFFXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"INQ2202094750478\",\"F21\":\"Related Reference\",\"F21_1\":\"ENQUIRY\",\"F76\":\"Answers\",\"F76_1\":\"ANSWER\",\"F76_2\":\"DEAR SIRS,\",\"F76_3\":\"PLEASE NOTE THIS DEBIT REPRESENTS\",\"F76_4\":\"THE YEAR END FEE DUE FOR THE\",\"F76_5\":\"BOOKING BALANCE OF 31 DECEMBER\",\"F76_6\":\"2021.\",\"F77\":\"Narrative\",\"F77_1\":\"IN CASE YOU REQUIRE FURTHER DETAILS\",\"F77_2\":\"WE WILL BE HAPPY TO FURNISH YOU A\",\"F77_3\":\"CALCULATION NOTE BY EMAIL. PLEASE\",\"F77_4\":\"LET US  KNOW THE RESPECTIVE EMAIL\",\"F77_5\":\"ADDRESS THE NOTE SHALL BE SENT TO\",\"F77_6\":\"BY RETURN SWIFT OR EMAIL TO\",\"F77_7\":\"FI.CLIENTSERVICES.2(AT)COMMERZBANK.\",\"F77_8\":\"COM\",\"F77_9\":\".\",\"F77_10\":\"WE HOPE THIS INFORMATION IS OF\",\"F77_11\":\"ASSISTANCE TO YOU.\",\"F77_12\":\".\",\"F77_13\":\"BEST REGARDS\",\"F77_14\":\"COMMERZBANK AG\",\"F77_15\":\"CORPORATE CLIENTS - INSTITUTIONALS\",\"F77_16\":\"FI CLIENT SERVICES\",\"F11\":\"MT and Date of the Original Msg\",\"F11_1\":\"199\",\"F11_2\":\"220208\",\"F79\":\"Narr Desc of Orig Msg Ans Relates\",\"F79_1\":\"WE REFER TO A DEBIT ON OUR ACCOUNT WITH YOURSELF\",\"F79_2\":\"FOR EUR378.81 WITH REF NCOM 687VBF3YY3B00001 DD\",\"F79_3\":\"14.01.22\",\"F79_4\":\"KINDLY FURNISH US WITH THE DETAILS OF THE DEBIT\",\"F79_5\":\".\",\"F79_6\":\"REGARDS\",\"F79_7\":\"--------------------------- Message Trailer ------------------------\",\"F79_8\":\"D24D252CE361}\",\"F79_9\":\"MAC-Equivalent\"}',
    '2022-02-09 14:32:14',
    '2022-03-12 09:11:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m199
# ------------------------------------------------------------

INSERT INTO
  `m199` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180012.prt',
    'inwards',
    'MCBLMUMUXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180012.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"07:25:02\",\"cdatetime\":\"03/08/22 07:25:02\",\"dir\":\"inwards\",\"mtype\":\"199\",\"Sender\":\"MCBLMUMUXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"NT01-0066-070322\",\"F79\":\"Narrative\",\"F79_1\":\"FINANCIAL INSTITUTION.\",\"F79_2\":\".\",\"F79_3\":\"WE WOULD LIKE TO ADVISE THAT WE SHALL BE\",\"F79_4\":\"PROCEEDING WITH THE CLOSURE OF OUR EUR ACCOUNT\",\"F79_5\":\"WITH DEUTSCHE BANK FRANKFURT (SWIFT CODE\",\"F79_6\":\"DEUTDEFF) BY END OF MARCH 2022.\",\"F79_7\":\".\",\"F79_8\":\"IN THIS CONNECTION WE SHALL APPRECIATE YOUR\",\"F79_9\":\"AMENDING YOUR RECORDS SO THAT FUNDS MEANT FOR THE\",\"F79_10\":\"MAURITIUS COMMERCIAL BANK LTD (SWIFT CODE\",\"F79_11\":\"MCBLMUMU) ARE HENCEFORTH ROUTED TO OUR EUR\",\"F79_12\":\"ACCOUNT WITH SOCIETE GENERALE PARIS (SWIFT CODE\",\"F79_13\":\"SOGEFRPP).\",\"F79_14\":\".\",\"F79_15\":\"THANKS AND BEST REGARDS\",\"F79_16\":\".\",\"F79_17\":\"GUY MICHEL RIVAUD\",\"F79_18\":\"TEAM LEADER\",\"F79_19\":\"FI COVERAGE\",\"F79_20\":\"FINANCIAL INSTITUTIONS AND SYNDICATION\",\"F79_21\":\"guymichel.rivaudATmcb.mu\",\"F79_22\":\"--------------------------- Message Trailer ------------------------\",\"F79_23\":\"46EBAD3B575A}\",\"F79_24\":\"}\",\"F79_25\":\"}\",\"F79_26\":\"MAC-Equivalent\"}',
    '2022-03-08 07:25:02',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m199` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180268.prt',
    'inwards',
    'CHASUS33XXX',
    'ACCCGHACCBS',
    '{\"NetStatus\":\"--\",\"docname\":\"00180268.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"14:20:42\",\"cdatetime\":\"03/08/22 14:20:42\",\"dir\":\"inwards\",\"mtype\":\"199\",\"Sender\":\"CHASUS33XXX\",\"Reciever\":\"ACCCGHACCBS\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"JPM220217-005452\",\"F21\":\"Related Reference\",\"F21_1\":\"3393662042ES\",\"F79\":\"Narrative\",\"F79_1\":\"5TH REQST NO REPLY TO OUR LAST MESSAGE DD  220303\",\"F79_2\":\"COVDELAY. PLEASE REFER TO OUR MT103 PAYMENT\",\"F79_3\":\"INSTRUCTION DATED 21 2022 WITH VALUE DATE\",\"F79_4\":\"21 2022 FOR VALUE 1,000.00USD.OUR REFERENCE\",\"F79_5\":\"NUMBER 3393662042ES . PLEASE NOTE, THIS MESSAGE IS\",\"F79_6\":\"INTENDED TO BE AN ADVICE ONLY.\",\"F79_7\":\"PLEASE BE ADVISED, THIS MESSAGE REPRESENTS A\",\"F79_8\":\"COURTESY NOTICE OF DELAY OF OUR COVER PAYMENT\",\"F79_9\":\"BEYOND THE INDICATED VALUE DATE. CITIUS33 IS\",\"F79_10\":\"PRESENTLY HOLDING THE ITEM PENDING TRANSACTION\",\"F79_11\":\"DETAILS FOR FURTHER REVIEW FROM THIER COMPLIANCE\",\"F79_12\":\"DEPARTMENT AND REQUIRES NO RESPONSE ON YOUR PART.\",\"F79_13\":\"CITIUS33 ARE UNABLE TO PAY COVER AS THEY AWAIT\",\"F79_14\":\"FINAL DISPOSITION OF THE FUNDS. IN THE EVENT THAT\",\"F79_15\":\"FURTHER DETAILS ARE NEEDED, WE SHALL ADVISE YOU\",\"F79_16\":\"ACCORDINGLY.SHOULD YOU NEED TO RESPOND OR INQUIRE\",\"F79_17\":\"ABOUT THE DELAYED COVER PAYMENT, PLEASE BE SURE TO\",\"F79_18\":\"QUOTE OUR JPMORGAN CHASE BANK, N.A. REFERENCE\",\"F79_19\":\"UETR REF 9DC55F52-7E17-42CE-A151-486165182859\",\"F79_20\":\"REGARDS,\",\"F79_21\":\"USD WIRE INVESTIGATIONS OUR REFERENCE\",\"F79_22\":\"JPM220217-005452\",\"F79_23\":\"JPMORGAN\",\"F79_24\":\"GLOBAL SOLUTIONS CENTER (866) 223-0359\",\"F79_25\":\"--------------------------- Message Trailer ------------------------\",\"F79_26\":\"7CCB48734AF5}\",\"F79_27\":\"MAC-Equivalent\"}',
    '2022-03-08 14:20:42',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m202
# ------------------------------------------------------------

INSERT INTO
  `m202` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180017.prt',
    'inwards',
    'CITIUS33XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180017.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"07:25:56\",\"cdatetime\":\"03/08/22 07:25:56\",\"dir\":\"inwards\",\"mtype\":\"202\",\"Sender\":\"CITIUS33XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"C0020667431201\",\"F21\":\"Related Reference\",\"F21_1\":\"ZD81066DN3591403\",\"F32\":\"Value Date, Currency Code,  Amt\",\"F32_1\":\"07 March 2022\",\"F32_2\":\"USD (US DOLLAR)\",\"F32_3\":\"900.\",\"F52\":\"Ordering Institution - FI BIC\",\"F52_1\":\"UBSWCHZH80A\",\"F52_2\":\"UBS SWITZERLAND AG\",\"F52_3\":\"(HEAD OFFICE)\",\"F52_4\":\"ZURICH  CH\",\"F58\":\"Beneficiary Institution - FI BIC\",\"F58_1\":\"36209949\",\"F58_2\":\"ACCCGHACXXX\",\"F58_3\":\"CAL BANK LIMITED\",\"F58_4\":\"ACCRA  GH\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"INSUBSWUS33XXX\",\"F72_2\":\"BNFISN 007097 OSN 074312 SSN 0458\",\"F72_3\":\"043\",\"F72_4\":\"RECERI INFO NOT TRANSMITTED\",\"F50\":\"Ordering Customer-Name & Address\",\"F50_1\":\"CH630024324329511260R\",\"F50_2\":\"FEDERATION INTERNATIONALE\",\"F50_3\":\"DE NATATION\",\"F50_4\":\"CHEMIN DE BELLEVUE 24A 24B\",\"F50_5\":\"CH 1005 LAUSANNE\",\"F59\":\"Beneficiary Customer-Name & Addr\",\"F59_1\":\"1400003774149\",\"F59_2\":\"AYISHATU F. IDDRISS\",\"F59_3\":\"PO BOX 12036 ACCRA-NORTH\",\"F59_4\":\"GH GH - 00233 ACCRA\",\"F70\":\"Remittance Information\",\"F70_1\":\"ROC71158\",\"F70_2\":\"FEDERATION INTERNATIONA REF.\",\"F70_3\":\"FO-29840\",\"F33\":\"Currency/Instructed Amount\",\"F33_1\":\"USD (US DOLLAR)\",\"F33_2\":\"900.\",\"F33_3\":\"--------------------------- Message Trailer ------------------------\",\"F33_4\":\"D59B346F8219}\",\"F33_5\":\"}\",\"F33_6\":\"MAC-Equivalent\"}',
    '2022-03-08 07:25:56',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m202` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180029.prt',
    'inwards',
    'CITIUS33XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180029.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"07:28:23\",\"cdatetime\":\"03/08/22 07:28:23\",\"dir\":\"inwards\",\"mtype\":\"202\",\"Sender\":\"CITIUS33XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"S0620662D4AD01\",\"F21\":\"Related Reference\",\"F21_1\":\"S657RPXJ92CDASD1\",\"F32\":\"Value Date, Currency Code,  Amt\",\"F32_1\":\"07 March 2022\",\"F32_2\":\"USD (US DOLLAR)\",\"F32_3\":\"4,181.21\",\"F52\":\"Ordering Institution - FI BIC\",\"F52_1\":\"FIRNZAJJXXX\",\"F52_2\":\"FIRSTRAND BANK LIMITED\",\"F52_3\":\"(HEAD OFFICE AND ALL SOUTH AFRICAN OFFICES)\",\"F52_4\":\"SANDTON  ZA\",\"F58\":\"Beneficiary Institution - FI BIC\",\"F58_1\":\"ACCCGHAC\",\"F58_2\":\"CAL BANK LIMITED\",\"F58_3\":\"ACCRA  GH\",\"F50\":\"Ordering Customer-Name & Address\",\"F50_1\":\"62839612290\",\"F50_2\":\"PRO AFRICA FREIGHT (PTY) LTD\",\"F50_3\":\"VASCO DA GAMA BUILDING, GROUND FLOO\",\"F50_4\":\"R, WEST WING, BRUMA, 2026\",\"F50_5\":\"SOUTH AFRICA\",\"F59\":\"Beneficiary Customer-Name & Addr\",\"F59_1\":\"1400002627509\",\"F59_2\":\"OFFSHORE FREIGHT AND SERVICES\",\"F59_3\":\"7TH FLOOR GNAT HEIGHTS,30 INDEPENDE\",\"F59_4\":\"NCE AVENUE,RIDGE,RIDGE,0\",\"F59_5\":\"GHANA\",\"F70\":\"Remittance Information\",\"F70_1\":\"PRO AFRICA FREIGHT\",\"F33\":\"Currency/Instructed Amount\",\"F33_1\":\"USD (US DOLLAR)\",\"F33_2\":\"4,181.21\",\"F33_3\":\"--------------------------- Message Trailer ------------------------\",\"F33_4\":\"633BEAB9BC78}\",\"F33_5\":\"}\",\"F33_6\":\"MAC-Equivalent\"}',
    '2022-03-08 07:28:23',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m295
# ------------------------------------------------------------

INSERT INTO
  `m295` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180275.prt',
    'inwards',
    'BKTRUS33XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180275.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"14:35:33\",\"cdatetime\":\"03/08/22 14:35:33\",\"dir\":\"inwards\",\"mtype\":\"295\",\"Sender\":\"BKTRUS33XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"220307 609479\",\"F21\":\"Related Reference\",\"F21_1\":\"3208692556\",\"F75\":\"Queries\",\"F75_1\":\".\",\"F79\":\"Narr Desc of Msg Query Relates\",\"F79_1\":\"WE REFER TO OUR PAYMENT VALUE DATE 220217 FOR\",\"F79_2\":\"USD 7700.00 UNDER SSN0350228.\",\"F79_3\":\".\",\"F79_4\":\"WE HAVE BEEN ADVISED THAT THE BENEFICIARY DID NOT\",\"F79_5\":\"RECEIVE PAYMENT. PLEASE STATE IF AND WHEN THE\",\"F79_6\":\"TRANSACTION WAS EFFECTED.\",\"F79_7\":\".\",\"F79_8\":\"PLEASE CONFIRM DATE, AMOUNT AND REFERENCE UNDER\",\"F79_9\":\"WHICH THE FINAL BENEFICIARY WAS PAID.\",\"F79_10\":\".\",\"F79_11\":\"PLEASE AVOID DUPLICATION.\",\"F79_12\":\".\",\"F79_13\":\"PLEASE QUOTE OUR REFERENCE NUMBER, Case No. 220307\",\"F79_14\":\"609479 IN ALL FUTURE CORRESPONDENCE RELATING TO\",\"F79_15\":\"THIS CASE.\",\"F79_16\":\".\",\"F79_17\":\"REGARDS, PAYMENT INVESTIGATIONS.\",\"F79_18\":\"--------------------------- Message Trailer ------------------------\",\"F79_19\":\"078047328AAF}\",\"F79_20\":\"MAC-Equivalent\"}',
    '2022-03-08 14:35:33',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m295` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180275.prt',
    'inwards',
    'BKTRUS33XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180275.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"14:35:33\",\"cdatetime\":\"03/08/22 14:35:33\",\"dir\":\"inwards\",\"mtype\":\"295\",\"Sender\":\"BKTRUS33XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"220307 609479\",\"F21\":\"Related Reference\",\"F21_1\":\"3208692556\",\"F75\":\"Queries\",\"F75_1\":\".\",\"F79\":\"Narr Desc of Msg Query Relates\",\"F79_1\":\"WE REFER TO OUR PAYMENT VALUE DATE 220217 FOR\",\"F79_2\":\"USD 7700.00 UNDER SSN0350228.\",\"F79_3\":\".\",\"F79_4\":\"WE HAVE BEEN ADVISED THAT THE BENEFICIARY DID NOT\",\"F79_5\":\"RECEIVE PAYMENT. PLEASE STATE IF AND WHEN THE\",\"F79_6\":\"TRANSACTION WAS EFFECTED.\",\"F79_7\":\".\",\"F79_8\":\"PLEASE CONFIRM DATE, AMOUNT AND REFERENCE UNDER\",\"F79_9\":\"WHICH THE FINAL BENEFICIARY WAS PAID.\",\"F79_10\":\".\",\"F79_11\":\"PLEASE AVOID DUPLICATION.\",\"F79_12\":\".\",\"F79_13\":\"PLEASE QUOTE OUR REFERENCE NUMBER, Case No. 220307\",\"F79_14\":\"609479 IN ALL FUTURE CORRESPONDENCE RELATING TO\",\"F79_15\":\"THIS CASE.\",\"F79_16\":\".\",\"F79_17\":\"REGARDS, PAYMENT INVESTIGATIONS.\",\"F79_18\":\"--------------------------- Message Trailer ------------------------\",\"F79_19\":\"078047328AAF}\",\"F79_20\":\"MAC-Equivalent\"}',
    '2022-03-08 14:35:33',
    '2022-03-12 09:48:36'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m299
# ------------------------------------------------------------

INSERT INTO
  `m299` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180238.prt',
    'inwards',
    'BARCGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180238.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"13:38:49\",\"cdatetime\":\"03/08/22 13:38:49\",\"dir\":\"inwards\",\"mtype\":\"299\",\"Sender\":\"BARCGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"FXL220308120749\",\"F21\":\"Related Reference\",\"F21_1\":\"COLLCAL\",\"F79\":\"Narrative\",\"F79_1\":\"WE HAVE CREDITED YOUR USD ACCOUNT\",\"F79_2\":\"AT BOG WITH USD1160.28 BEING CLRG\",\"F79_3\":\"SETT BO ENTERPRISE INSURANCE CO\",\"F79_4\":\"LTD IFO CROWN INSURANCE BROKERS\",\"F79_5\":\"CHQ NUMBER 958170 VDD08032022\",\"F79_6\":\"--------------------------- Message Trailer ------------------------\",\"F79_7\":\"05809633FCD8}\",\"F79_8\":\"MAC-Equivalent\"}',
    '2022-03-08 13:38:49',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m299` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180386.prt',
    'inwards',
    'ECOCGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180386.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"15:26:15\",\"cdatetime\":\"03/08/22 15:26:15\",\"dir\":\"inwards\",\"mtype\":\"299\",\"Sender\":\"ECOCGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"H98CFCL220671501\",\"F21\":\"Related Reference\",\"F21_1\":\"NON-REF.\",\"F79\":\"Narrative\",\"F79_1\":\"FOREIGN OPERATIONSFOREIGN CHEQUES\",\"F79_2\":\".\",\"F79_3\":\"WE HAVE TODAY REMITTED USD 200 THE BELOW MT\",\"F79_4\":\"205 WITH THE BELOW DETAILS\",\"F79_5\":\".\",\"F79_6\":\"INSURANCE BROKERS ASSOCIATION OF GH\",\"F79_7\":\"RISK MANAGEMENT AND ADVISORY SERV L\",\"F79_8\":\"200\",\"F79_9\":\"542\",\"F79_10\":\".\",\"F79_11\":\"REGARDS\",\"F79_12\":\"PAYMENT SERVICES CENTRE\",\"F79_13\":\"ECOBANK GHANA LTD\",\"F79_14\":\"--------------------------- Message Trailer ------------------------\",\"F79_15\":\"8DCB138F601B}\",\"F79_16\":\"MAC-Equivalent\"}',
    '2022-03-08 15:26:15',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m300
# ------------------------------------------------------------

INSERT INTO
  `m300` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180442.prt',
    'inwards',
    'GTBIGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180442.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"16:24:53\",\"cdatetime\":\"03/08/22 16:24:53\",\"dir\":\"inwards\",\"mtype\":\"300\",\"Sender\":\"GTBIGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F15\":\"New Sequence B\",\"F20\":\"Sender s Reference\",\"F20_1\":\"GTBTRPCONF331764\",\"F21\":\"Related Reference\",\"F21_1\":\"NON REF\",\"F22\":\"Common Reference\",\"F22_1\":\"ACCCAC0738GTBIAC\",\"F94\":\"Scope of Operation\",\"F94_1\":\"BILA\",\"F82\":\"Party A - BIC\",\"F82_1\":\"GTBIGHAC\",\"F82_2\":\"GUARANTY TRUST BANK (GHANA) LTD\",\"F82_3\":\"ACCRA  GH\",\"F87\":\"Party B - BIC\",\"F87_1\":\"ACCCGHAC\",\"F87_2\":\"CAL BANK LIMITED\",\"F87_3\":\"ACCRA  GH\",\"F30\":\"Value Date\",\"F30_1\":\"20220308\",\"F36\":\"Exchange Rate\",\"F36_1\":\"7,3800\",\"F32\":\"Currency, Amount\",\"F32_1\":\"USD (US DOLLAR)\",\"F32_2\":\"2,800,000.00\",\"F57\":\"Receiving Agent - FI BIC\",\"F57_1\":\"BAGHGHAC\",\"F57_2\":\"BANK OF GHANA\",\"F57_3\":\"ACCRA  GH\",\"F57_4\":\"--------------------------- Message Trailer ------------------------\",\"F33\":\"Currency, Amount\",\"F33_1\":\"GHS (GHANA CEDI)\",\"F33_2\":\"20,664,000.00\",\"F57_5\":\"2235248BDC9E}\"}',
    '2022-03-08 16:24:53',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m300` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180137.prt',
    'inwards',
    'SBZAZAJJXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180137.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"11:39:11\",\"cdatetime\":\"03/08/22 11:39:11\",\"dir\":\"inwards\",\"mtype\":\"300\",\"Sender\":\"SBZAZAJJXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F15\":\"New Sequence E\",\"F20\":\"Sender s Reference\",\"F20_1\":\"220308IDOBBJ7VHC\",\"F21\":\"Related Reference\",\"F21_1\":\"NEW\",\"F22\":\"Reporting Jurisdiction\",\"F22_1\":\"OTHR\",\"F82\":\"Party A - BIC\",\"F82_1\":\"SBZAZAJJ\",\"F82_2\":\"STANDARD BANK OF SOUTH AFRICA LIMITED,THE\",\"F82_3\":\"(HEAD OFFICE AND ALL SOUTH AFRICAN OFFICES)\",\"F82_4\":\"JOHANNESBURG  ZA\",\"F87\":\"Party B - BIC\",\"F87_1\":\"ACCCGHAC\",\"F87_2\":\"CAL BANK LIMITED\",\"F87_3\":\"ACCRA  GH\",\"F30\":\"Value Date\",\"F30_1\":\"20220308\",\"F36\":\"Exchange Rate\",\"F36_1\":\"15,3225\",\"F32\":\"Currency, Amount\",\"F32_1\":\"USD (US DOLLAR)\",\"F32_2\":\"100,000.\",\"F57\":\"Receiving Agent - FI BIC\",\"F57_1\":\"SBZAZAJJ\",\"F57_2\":\"STANDARD BANK OF SOUTH AFRICA LIMITED,THE\",\"F57_3\":\"(HEAD OFFICE AND ALL SOUTH AFRICAN OFFICES)\",\"F57_4\":\"JOHANNESBURG  ZA\",\"F33\":\"Currency, Amount\",\"F33_1\":\"ZAR (RAND)\",\"F33_2\":\"1,532,250.\",\"F77\":\"Additional Reporting Information\",\"F77_1\":\"OTHRFSCA\",\"F77_2\":\"--------------------------- Message Trailer ------------------------\",\"F77_3\":\"739CF497079A}\"}',
    '2022-03-08 11:39:11',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m320
# ------------------------------------------------------------

INSERT INTO
  `m320` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180114.prt',
    'inwards',
    'ADNTGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180114.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"10:30:28\",\"cdatetime\":\"03/08/22 10:30:28\",\"dir\":\"inwards\",\"mtype\":\"320\",\"Sender\":\"ADNTGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F15\":\"New Sequence D\",\"F20\":\"Sender s Reference\",\"F20_1\":\"000MMBB220670001\",\"F21\":\"Related Reference\",\"F21_1\":\"000MMBB220670001\",\"F22\":\"Common Reference\",\"F22_1\":\"ACCCAC0013ADNTAC\",\"F82\":\"Party A - BIC\",\"F82_1\":\"ADNTGHAC\",\"F82_2\":\"AGRICULTURAL DEVELOPMENT BANK\",\"F82_3\":\"ACCRA  GH\",\"F87\":\"Party B - BIC\",\"F87_1\":\"ACCCGHAC\",\"F87_2\":\"CAL BANK LIMITED\",\"F87_3\":\"ACCRA  GH\",\"F17\":\"Party A s Role\",\"F17_1\":\"B\",\"F30\":\"Next Interest Due Date\",\"F30_1\":\"20220309\",\"F32\":\"Currency and Principal Amount\",\"F32_1\":\"GHS (GHANA CEDI)\",\"F32_2\":\"80,000,000.\",\"F34\":\"Currency and Interest Amount\",\"F34_1\":\"GHS (GHANA CEDI)\",\"F34_2\":\"28,493.15\",\"F37\":\"Interest Rate\",\"F37_1\":\"13,\",\"F14\":\"Day Count Fraction\",\"F14_1\":\"AFI365\",\"F57\":\"Receiving Agent - FI BIC\",\"F57_1\":\"BAGHGHAC\",\"F57_2\":\"BANK OF GHANA\",\"F57_3\":\"ACCRA  GH\",\"F57_4\":\"--------------------------- Message Trailer ------------------------\",\"F57_5\":\"6F74F22B2B43}\"}',
    '2022-03-08 10:30:28',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m320` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180227.prt',
    'inwards',
    'STBGGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180227.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"13:22:48\",\"cdatetime\":\"03/08/22 13:22:48\",\"dir\":\"inwards\",\"mtype\":\"320\",\"Sender\":\"STBGGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F15\":\"New Sequence D\",\"F20\":\"Sender s Reference\",\"F20_1\":\"166726-4\",\"F21\":\"Related Reference\",\"F21_1\":\"NONREF\",\"F22\":\"Common Reference\",\"F22_1\":\"ACCCAC0013STBGAC\",\"F94\":\"Scope of Operation\",\"F94_1\":\"BILA\",\"F82\":\"Party A - BIC\",\"F82_1\":\"STBGGHACXXX\",\"F82_2\":\"UNITED BANK FOR AFRICA (GHANA) LTD\",\"F82_3\":\"ACCRA  GH\",\"F87\":\"Party B - BIC\",\"F87_1\":\"ACCCGHACXXX\",\"F87_2\":\"CAL BANK LIMITED\",\"F87_3\":\"ACCRA  GH\",\"F17\":\"Party A s Role\",\"F17_1\":\"B\",\"F30\":\"Next Interest Due Date\",\"F30_1\":\"20220309\",\"F32\":\"Currency and Principal Amount\",\"F32_1\":\"GHS (GHANA CEDI)\",\"F32_2\":\"50,000,000.00\",\"F34\":\"Currency and Interest Amount\",\"F34_1\":\"GHS (GHANA CEDI)\",\"F34_2\":\"17,808.22\",\"F37\":\"Interest Rate\",\"F37_1\":\"13,000000\",\"F14\":\"Day Count Fraction\",\"F14_1\":\"ACT365\",\"F57\":\"Receiving Agent - FI BIC\",\"F57_1\":\"0120730026000\",\"F57_2\":\"BAGHGHAC\",\"F57_3\":\"BANK OF GHANA\",\"F57_4\":\"ACCRA  GH\",\"F57_5\":\"--------------------------- Message Trailer ------------------------\",\"F57_6\":\"005D3F7F34CB}\"}',
    '2022-03-08 13:22:48',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m420
# ------------------------------------------------------------

INSERT INTO
  `m420` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00182134.prt',
    'inwards',
    'SOGEFRPPXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182134.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"01/04/22\",\"ctime\":\"07:40:23\",\"cdatetime\":\"01/04/22 07:40:23\",\"dir\":\"inwards\",\"mtype\":\"420\",\"Sender\":\"SOGEFRPPXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Sending Bank s TRN\",\"F20_1\":\"01613-0094406AGK\",\"F21\":\"Related Reference\",\"F21_1\":\"NONREF\",\"F32\":\"Amount Traced\",\"F32_1\":\"D000ST\",\"F32_2\":\"EUR (EURO)\",\"F32_3\":\"142,740.80\",\"F59\":\"Drawee- Name & Address\",\"F59_1\":\"JACOB ABEKA ENT\",\"F59_2\":\"P.O.BOX 664\",\"F59_3\":\"KUMASI GHANA\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"LET US KNOW THE FATE OF DOCUMENTS\",\"F72_2\":\"CORRESPONDING TO THESE REFERENCES\",\"F72_3\":\"ABOVE. PLEASE SEND THE RESPONSE TO\",\"F72_4\":\"OUR ADDRESS SWIFT SOGEFRPP BY\",\"F72_5\":\"INDICATING OUR REFERENCE\",\"F72_6\":\"01613-0094406AGK . BEST REGARDS.\",\"F72_7\":\"--------------------------- Message Trailer ------------------------\",\"F72_8\":\"C9DA34D6D864}\",\"F72_9\":\"}\",\"F72_10\":\"MAC-Equivalent\"}',
    '2022-01-04 07:40:23',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m420` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00182625.prt',
    'inwards',
    'SOGEFRPPXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182625.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/10/22\",\"ctime\":\"06:53:33\",\"cdatetime\":\"02/10/22 06:53:33\",\"dir\":\"inwards\",\"mtype\":\"420\",\"Sender\":\"SOGEFRPPXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Sending Bank s TRN\",\"F20_1\":\"01613-0095058AGK\",\"F21\":\"Related Reference\",\"F21_1\":\"NONREF\",\"F32\":\"Amount Traced\",\"F32_1\":\"D000ST\",\"F32_2\":\"EUR (EURO)\",\"F32_3\":\"66,600.\",\"F59\":\"Drawee- Name & Address\",\"F59_1\":\"JACOB ABEKA ENT\",\"F59_2\":\"P.O.BOX 664\",\"F59_3\":\"KUMASI GHANA\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"LET US KNOW THE FATE OF DOCUMENTS\",\"F72_2\":\"CORRESPONDING TO THESE REFERENCES\",\"F72_3\":\"ABOVE. PLEASE SEND THE RESPONSE TO\",\"F72_4\":\"OUR ADDRESS SWIFT SOGEFRPP BY\",\"F72_5\":\"INDICATING OUR REFERENCE\",\"F72_6\":\"01613-0095058AGK . BEST REGARDS.\",\"F72_7\":\"--------------------------- Message Trailer ------------------------\",\"F72_8\":\"B19FC1FFEFA9}\",\"F72_9\":\"}\",\"F72_10\":\"MAC-Equivalent\"}',
    '2022-02-10 06:53:33',
    '2022-03-12 09:11:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m518
# ------------------------------------------------------------

INSERT INTO
  `m518` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00181230.prt',
    'inwards',
    'FBLIGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181230.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/10/22\",\"ctime\":\"14:37:52\",\"cdatetime\":\"03/10/22 14:37:52\",\"dir\":\"inwards\",\"mtype\":\"518\",\"Sender\":\"FBLIGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SETDET\",\"F20\":\"Reference\",\"F20_1\":\"SEME394781\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date/Time\",\"F98_1\":\"VALU20220310\",\"F22\":\"Indicator\",\"F22_1\":\"SETRTRAD\",\"F90\":\"Price\",\"F90_1\":\"DEALYIEL21,05\",\"F99\":\"Number Count\",\"F99_1\":\"DAAC164\",\"F95\":\"Party\",\"F95_1\":\"REAG\",\"F95_2\":\"BAGHGHAC\",\"F95_3\":\"BANK OF GHANA\",\"F95_4\":\"ACCRA  GH\",\"F70\":\"Narrative\",\"F70_1\":\"FIANTRADE BOND\",\"F70_2\":\"0302-819286\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"CONFFAMT\",\"F36_2\":\"25,000,000.\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN GHGGOG044751\",\"F35_2\":\"BONDGOG-BD-150332-A4430-1531-19.7\",\"F35_3\":\"515Y1503203219.75PCT\",\"F19\":\"Amount\",\"F19_1\":\"ACRU\",\"F19_2\":\"GHS (GHANA CEDI)\",\"F19_3\":\"2,224,587.91\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"C666845C74C6}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-10 14:37:52',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m518` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00181694.prt',
    'inwards',
    'FBLIGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181694.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/11/22\",\"ctime\":\"16:50:33\",\"cdatetime\":\"03/11/22 16:50:33\",\"dir\":\"inwards\",\"mtype\":\"518\",\"Sender\":\"FBLIGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SETDET\",\"F20\":\"Reference\",\"F20_1\":\"SEME395259\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date/Time\",\"F98_1\":\"VALU20220311\",\"F22\":\"Indicator\",\"F22_1\":\"SETRTRAD\",\"F90\":\"Price\",\"F90_1\":\"DEALYIEL20,979989\",\"F99\":\"Number Count\",\"F99_1\":\"DAAC060\",\"F95\":\"Party\",\"F95_1\":\"REAG\",\"F95_2\":\"BAGHGHAC\",\"F95_3\":\"BANK OF GHANA\",\"F95_4\":\"ACCRA  GH\",\"F70\":\"Narrative\",\"F70_1\":\"FIANTRADE BOND\",\"F70_2\":\"0302-819286\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"CONFFAMT\",\"F36_2\":\"2,746,100.\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN GHGESLA58118\",\"F35_2\":\"BONDESLA-BD-291231-A5200-16760D\",\"F35_3\":\"2912203 20.5PCT\",\"F19\":\"Amount\",\"F19_1\":\"ACRU\",\"F19_2\":\"GHS (GHANA CEDI)\",\"F19_3\":\"92,794.04\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"D7A3D78E639C}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-11 16:50:33',
    '2022-03-12 09:11:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m535
# ------------------------------------------------------------

INSERT INTO
  `m535` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180990.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180990.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/09/22\",\"ctime\":\"21:25:28\",\"cdatetime\":\"03/09/22 21:25:28\",\"dir\":\"inwards\",\"mtype\":\"535\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"ADDINFO\",\"F28\":\"Page Nbr/Continuation Indicator\",\"F28_1\":\"0000 ONLY\",\"F13\":\"Number Identification\",\"F13_1\":\"STAT224\",\"F20\":\"Reference\",\"F20_1\":\"SEMES000000094453429\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date\",\"F98_1\":\"PRIC20220308\",\"F22\":\"Indicator\",\"F22_1\":\"PFREWEEK\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F17\":\"Flag\",\"F17_1\":\"CONSN\",\"F94\":\"Place\",\"F94_1\":\"PRICVEND\",\"F94_2\":\"SCBLMUMUSSU\",\"F94_3\":\"STANDARD CHARTERED BANK (MAURITIUS) LTD\",\"F94_4\":\"(SECURITIES SERVICES UNIT)\",\"F94_5\":\"EBENE  MU\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS2325742166\",\"F35_2\":\"REPUBLIC OF GHANA - 0 PCT SNR MTN 0\",\"F11\":\"Currency\",\"F11_1\":\"DENO\",\"F11_2\":\"USD (US DOLLAR)\",\"F92\":\"Rate\",\"F92_1\":\"EXCH\",\"F90\":\"Price\",\"F90_1\":\"INDCACTU\",\"F90_2\":\"USD (US DOLLAR)\",\"F90_3\":\"0,5445\",\"F93\":\"Balance\",\"F93_1\":\"AVAIFAMT21450000,\",\"F19\":\"Amount\",\"F19_1\":\"HOLS\",\"F19_2\":\"GHS (GHANA CEDI)\",\"F19_3\":\"95,375,002.17\",\"F92_2\":\"USD (US DOLLAR)\",\"F92_3\":\"\",\"F92_4\":\"GHS (GHANA CEDI)\",\"F92_5\":\"6,6003987\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"9D5EFB4998C7}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-09 21:25:28',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m535` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180547.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180547.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"21:21:59\",\"cdatetime\":\"03/08/22 21:21:59\",\"dir\":\"inwards\",\"mtype\":\"535\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"ADDINFO\",\"F28\":\"Page Nbr/Continuation Indicator\",\"F28_1\":\"0000 ONLY\",\"F13\":\"Number Identification\",\"F13_1\":\"STAT223\",\"F20\":\"Reference\",\"F20_1\":\"SEMES000000094352198\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date\",\"F98_1\":\"PRIC20220307\",\"F22\":\"Indicator\",\"F22_1\":\"PFREWEEK\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F17\":\"Flag\",\"F17_1\":\"CONSN\",\"F94\":\"Place\",\"F94_1\":\"PRICVEND\",\"F94_2\":\"SCBLMUMUSSU\",\"F94_3\":\"STANDARD CHARTERED BANK (MAURITIUS) LTD\",\"F94_4\":\"(SECURITIES SERVICES UNIT)\",\"F94_5\":\"EBENE  MU\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS2325742166\",\"F35_2\":\"REPUBLIC OF GHANA - 0 PCT SNR MTN 0\",\"F11\":\"Currency\",\"F11_1\":\"DENO\",\"F11_2\":\"USD (US DOLLAR)\",\"F92\":\"Rate\",\"F92_1\":\"EXCH\",\"F90\":\"Price\",\"F90_1\":\"INDCACTU\",\"F90_2\":\"USD (US DOLLAR)\",\"F90_3\":\"0,574\",\"F93\":\"Balance\",\"F93_1\":\"AVAIFAMT21450000,\",\"F19\":\"Amount\",\"F19_1\":\"HOLS\",\"F19_2\":\"GHS (GHANA CEDI)\",\"F19_3\":\"99,749,317.4\",\"F92_2\":\"USD (US DOLLAR)\",\"F92_3\":\"\",\"F92_4\":\"GHS (GHANA CEDI)\",\"F92_5\":\"6,6003987\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"8374F640966F}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-08 21:21:59',
    '2022-03-12 09:11:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m536
# ------------------------------------------------------------

INSERT INTO
  `m536` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00181377.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181377.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/10/22\",\"ctime\":\"21:34:24\",\"cdatetime\":\"03/10/22 21:34:24\",\"dir\":\"inwards\",\"mtype\":\"536\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SUBSAFE\",\"F28\":\"Page Nbr/Continuation Indicator\",\"F28_1\":\"0000 ONLY\",\"F13\":\"Number Identification\",\"F13_1\":\"LINK541\",\"F20\":\"Reference\",\"F20_1\":\"RELACAL EUROBOND\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date/Time\",\"F98_1\":\"VALU20220310\",\"F69\":\"Period\",\"F69_1\":\"STAT2022031020220310\",\"F22\":\"Indicator\",\"F22_1\":\"BENEYBEN\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F17\":\"Flag\",\"F17_1\":\"CONSN\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS1108847531\",\"F35_2\":\"REPUBLIC OF GHANA - 8.125 PCT SNR N\",\"F90\":\"Price\",\"F90_1\":\"INDCACTU\",\"F90_2\":\"USD (US DOLLAR)\",\"F90_3\":\"0,6953\",\"F94\":\"Place\",\"F94_1\":\"SAFENCSD\",\"F93\":\"Balance\",\"F93_1\":\"FICLFAMT4300000,\",\"F94_2\":\"SCBLMUMUSSU\",\"F94_3\":\"STANDARD CHARTERED BANK (MAURITIUS) LTD\",\"F94_4\":\"(SECURITIES SERVICES UNIT)\",\"F94_5\":\"EBENE  MU\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"PSTAFAMT\",\"F36_2\":\"3,300,000.\",\"F19\":\"Amount\",\"F19_1\":\"PSTA\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"2,611,193.27\",\"F95\":\"Party\",\"F95_1\":\"PSET\",\"F95_2\":\"MGTCBEBE\",\"F95_3\":\"EUROCLEAR BANK S.A  N.V\",\"F95_4\":\"BRUSSELS  BE\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"332DA91AE7A4}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-10 21:34:24',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m536` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00181377.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181377.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/10/22\",\"ctime\":\"21:34:24\",\"cdatetime\":\"03/10/22 21:34:24\",\"dir\":\"inwards\",\"mtype\":\"536\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SUBSAFE\",\"F28\":\"Page Nbr/Continuation Indicator\",\"F28_1\":\"0000 ONLY\",\"F13\":\"Number Identification\",\"F13_1\":\"LINK541\",\"F20\":\"Reference\",\"F20_1\":\"RELACAL EUROBOND\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date/Time\",\"F98_1\":\"VALU20220310\",\"F69\":\"Period\",\"F69_1\":\"STAT2022031020220310\",\"F22\":\"Indicator\",\"F22_1\":\"BENEYBEN\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F17\":\"Flag\",\"F17_1\":\"CONSN\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS1108847531\",\"F35_2\":\"REPUBLIC OF GHANA - 8.125 PCT SNR N\",\"F90\":\"Price\",\"F90_1\":\"INDCACTU\",\"F90_2\":\"USD (US DOLLAR)\",\"F90_3\":\"0,6953\",\"F94\":\"Place\",\"F94_1\":\"SAFENCSD\",\"F93\":\"Balance\",\"F93_1\":\"FICLFAMT4300000,\",\"F94_2\":\"SCBLMUMUSSU\",\"F94_3\":\"STANDARD CHARTERED BANK (MAURITIUS) LTD\",\"F94_4\":\"(SECURITIES SERVICES UNIT)\",\"F94_5\":\"EBENE  MU\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"PSTAFAMT\",\"F36_2\":\"3,300,000.\",\"F19\":\"Amount\",\"F19_1\":\"PSTA\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"2,611,193.27\",\"F95\":\"Party\",\"F95_1\":\"PSET\",\"F95_2\":\"MGTCBEBE\",\"F95_3\":\"EUROCLEAR BANK S.A  N.V\",\"F95_4\":\"BRUSSELS  BE\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"332DA91AE7A4}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-10 21:34:24',
    '2022-03-12 09:48:36'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m537
# ------------------------------------------------------------

INSERT INTO
  `m537` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180548.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180548.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"21:26:12\",\"cdatetime\":\"03/08/22 21:26:12\",\"dir\":\"inwards\",\"mtype\":\"537\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"STAT\",\"F28\":\"Page Nbr/Continuation Indicator\",\"F28_1\":\"0000 ONLY\",\"F13\":\"Number Identification\",\"F13_1\":\"LINK541\",\"F20\":\"Reference\",\"F20_1\":\"RELACAL EURO 202201\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date/Time\",\"F98_1\":\"TRAD20220308\",\"F22\":\"Indicator\",\"F22_1\":\"BENEYBEN\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F17\":\"Flag\",\"F17_1\":\"ACTIY\",\"F25\":\"Status Code\",\"F25_1\":\"SETTPENF\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS1108847531\",\"F35_2\":\"REPUBLIC OF GHANA - 8.125 PCT SNR N\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"PSTAFAMT\",\"F36_2\":\"3,300,000.\",\"F19\":\"Amount\",\"F19_1\":\"PSTA\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"2,611,193.27\",\"F95\":\"Party\",\"F95_1\":\"PSET\",\"F95_2\":\"MGTCBEBE\",\"F95_3\":\"EUROCLEAR BANK S.A  N.V\",\"F95_4\":\"BRUSSELS  BE\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"FA07E302D505}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-08 21:26:12',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m537` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180989.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180989.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/09/22\",\"ctime\":\"21:23:56\",\"cdatetime\":\"03/09/22 21:23:56\",\"dir\":\"inwards\",\"mtype\":\"537\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"STAT\",\"F28\":\"Page Nbr/Continuation Indicator\",\"F28_1\":\"0000 ONLY\",\"F13\":\"Number Identification\",\"F13_1\":\"LINK541\",\"F20\":\"Reference\",\"F20_1\":\"RELACAL EUROBOND\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date/Time\",\"F98_1\":\"TRAD20220304\",\"F22\":\"Indicator\",\"F22_1\":\"BENEYBEN\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F17\":\"Flag\",\"F17_1\":\"ACTIY\",\"F25\":\"Status Code\",\"F25_1\":\"SETTPENF\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS1108847531\",\"F35_2\":\"REPUBLIC OF GHANA - 8.125 PCT SNR N\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"PSTAFAMT\",\"F36_2\":\"3,300,000.\",\"F19\":\"Amount\",\"F19_1\":\"PSTA\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"2,611,193.27\",\"F95\":\"Party\",\"F95_1\":\"PSET\",\"F95_2\":\"MGTCBEBE\",\"F95_3\":\"EUROCLEAR BANK S.A  N.V\",\"F95_4\":\"BRUSSELS  BE\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"5DB573EED9ED}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-09 21:23:56',
    '2022-03-12 09:11:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m545
# ------------------------------------------------------------

INSERT INTO
  `m545` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00181079.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181079.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/10/22\",\"ctime\":\"08:34:05\",\"cdatetime\":\"03/10/22 08:34:05\",\"dir\":\"inwards\",\"mtype\":\"545\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SETDET\",\"F20\":\"Reference\",\"F20_1\":\"RELACAL EUROBOND\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date/Time\",\"F98_1\":\"VALU20220310\",\"F13\":\"Number Identification\",\"F13_1\":\"LINK541\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS1108847531\",\"F35_2\":\"REPUBLIC OF GHANA - 8.125 PCT SNR N\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"ESTTFAMT\",\"F36_2\":\"3,300,000.\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F22\":\"Indicator\",\"F22_1\":\"SETRTRAD\",\"F95\":\"Party\",\"F95_1\":\"DEAGECLR99063\",\"F95_2\":\"MGTCBEBE\",\"F95_3\":\"EUROCLEAR BANK S.A  N.V\",\"F95_4\":\"BRUSSELS  BE\",\"F19\":\"Amount\",\"F19_1\":\"ESTT\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"2,611,193.27\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"7CB44B71CD55}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-10 08:34:05',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m545` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00181079.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181079.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/10/22\",\"ctime\":\"08:34:05\",\"cdatetime\":\"03/10/22 08:34:05\",\"dir\":\"inwards\",\"mtype\":\"545\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SETDET\",\"F20\":\"Reference\",\"F20_1\":\"RELACAL EUROBOND\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F98\":\"Date/Time\",\"F98_1\":\"VALU20220310\",\"F13\":\"Number Identification\",\"F13_1\":\"LINK541\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS1108847531\",\"F35_2\":\"REPUBLIC OF GHANA - 8.125 PCT SNR N\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"ESTTFAMT\",\"F36_2\":\"3,300,000.\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F22\":\"Indicator\",\"F22_1\":\"SETRTRAD\",\"F95\":\"Party\",\"F95_1\":\"DEAGECLR99063\",\"F95_2\":\"MGTCBEBE\",\"F95_3\":\"EUROCLEAR BANK S.A  N.V\",\"F95_4\":\"BRUSSELS  BE\",\"F19\":\"Amount\",\"F19_1\":\"ESTT\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"2,611,193.27\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"7CB44B71CD55}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-10 08:34:05',
    '2022-03-12 09:48:36'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m548
# ------------------------------------------------------------

INSERT INTO
  `m548` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00181046.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181046.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/10/22\",\"ctime\":\"08:16:36\",\"cdatetime\":\"03/10/22 08:16:36\",\"dir\":\"inwards\",\"mtype\":\"548\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SETTRAN\",\"F20\":\"Reference\",\"F20_1\":\"RELACAL EUROBOND\",\"F23\":\"Function of the Message\",\"F23_1\":\"INST\",\"F98\":\"Date/Time\",\"F98_1\":\"MTCH20220310091415\",\"F13\":\"Number Identification\",\"F13_1\":\"LINK541\",\"F25\":\"Status Code\",\"F25_1\":\"SETTPENF\",\"F24\":\"Reason Code\",\"F24_1\":\"PENFBATC\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS1108847531\",\"F35_2\":\"REPUBLIC OF GHANA - 8.125 PCT SNR N\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"SETTFAMT\",\"F36_2\":\"3,300,000.\",\"F19\":\"Amount\",\"F19_1\":\"SETT\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"2,611,193.27\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F22\":\"Indicator\",\"F22_1\":\"SETRTRAD\",\"F95\":\"Party\",\"F95_1\":\"PSET\",\"F95_2\":\"MGTCBEBE\",\"F95_3\":\"EUROCLEAR BANK S.A  N.V\",\"F95_4\":\"BRUSSELS  BE\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"1B3483AA5459}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-10 08:16:36',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m548` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180545.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180545.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"20:32:19\",\"cdatetime\":\"03/08/22 20:32:19\",\"dir\":\"inwards\",\"mtype\":\"548\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SETTRAN\",\"F20\":\"Reference\",\"F20_1\":\"RELACAL EURO 202201\",\"F23\":\"Function of the Message\",\"F23_1\":\"INST\",\"F98\":\"Date/Time\",\"F98_1\":\"TRAD20220308\",\"F13\":\"Number Identification\",\"F13_1\":\"LINK541\",\"F25\":\"Status Code\",\"F25_1\":\"SETTPENF\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS1108847531\",\"F35_2\":\"REPUBLIC OF GHANA - 8.125 PCT SNR N\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"SETTFAMT\",\"F36_2\":\"3,300,000.\",\"F19\":\"Amount\",\"F19_1\":\"SETT\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"2,611,193.27\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F22\":\"Indicator\",\"F22_1\":\"SETRTRAD\",\"F95\":\"Party\",\"F95_1\":\"PSET\",\"F95_2\":\"MGTCBEBE\",\"F95_3\":\"EUROCLEAR BANK S.A  N.V\",\"F95_4\":\"BRUSSELS  BE\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"02F17255AB92}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-08 20:32:19',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m564
# ------------------------------------------------------------

INSERT INTO
  `m564` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00189856.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00189856.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/04/22\",\"ctime\":\"17:37:48\",\"cdatetime\":\"03/04/22 17:37:48\",\"dir\":\"inwards\",\"mtype\":\"564\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"ADDINFO\",\"F28\":\"Page Nbr/Continuation Indicator\",\"F28_1\":\"0000 ONLY\",\"F20\":\"Reference\",\"F20_1\":\"SEME5601E174071A6754\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F22\":\"Indicator\",\"F22_1\":\"CRDBCRED\",\"F98\":\"Date/Time\",\"F98_1\":\"VALU20220407\",\"F25\":\"Status Code\",\"F25_1\":\"PROCCOMP\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS2325748106\",\"F35_2\":\"REPUBLIC OF GHANA - 7.75 PCT SNR MT\",\"F11\":\"Currency\",\"F11_1\":\"OPTN\",\"F11_2\":\"USD (US DOLLAR)\",\"F92\":\"Rate\",\"F92_1\":\"TAXR0,\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"MINOFAMT\",\"F36_2\":\"0.0001\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F93\":\"Balance\",\"F93_1\":\"SETTFAMTELIG3600000,\",\"F69\":\"Period\",\"F69_1\":\"INPE2021100720220407\",\"F99\":\"Number Count\",\"F99_1\":\"DAAC180\",\"F13\":\"Number Identification\",\"F13_1\":\"CAON001\",\"F17\":\"Flag\",\"F17_1\":\"DFLTY\",\"F70\":\"Narrative\",\"F70_1\":\"DISCPLEASE FIND FURTHER INFORMATION\",\"F70_2\":\"ABOUT DATA PROTECTION ON OUR\",\"F70_3\":\"\",\"F70_4\":\"www.clearstream.comclearst\",\"F70_5\":\"ream-enabout-clearstreamdue dilig\",\"F70_6\":\"encegdprdataprotection\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"916B2CB4F9F3}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-04 17:37:48',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m564` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00189856.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00189856.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/04/22\",\"ctime\":\"17:37:48\",\"cdatetime\":\"03/04/22 17:37:48\",\"dir\":\"inwards\",\"mtype\":\"564\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"ADDINFO\",\"F28\":\"Page Nbr/Continuation Indicator\",\"F28_1\":\"0000 ONLY\",\"F20\":\"Reference\",\"F20_1\":\"SEME5601E174071A6754\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F22\":\"Indicator\",\"F22_1\":\"CRDBCRED\",\"F98\":\"Date/Time\",\"F98_1\":\"VALU20220407\",\"F25\":\"Status Code\",\"F25_1\":\"PROCCOMP\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS2325748106\",\"F35_2\":\"REPUBLIC OF GHANA - 7.75 PCT SNR MT\",\"F11\":\"Currency\",\"F11_1\":\"OPTN\",\"F11_2\":\"USD (US DOLLAR)\",\"F92\":\"Rate\",\"F92_1\":\"TAXR0,\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"MINOFAMT\",\"F36_2\":\"0.0001\",\"F97\":\"Account\",\"F97_1\":\"SAFE134374600001\",\"F93\":\"Balance\",\"F93_1\":\"SETTFAMTELIG3600000,\",\"F69\":\"Period\",\"F69_1\":\"INPE2021100720220407\",\"F99\":\"Number Count\",\"F99_1\":\"DAAC180\",\"F13\":\"Number Identification\",\"F13_1\":\"CAON001\",\"F17\":\"Flag\",\"F17_1\":\"DFLTY\",\"F70\":\"Narrative\",\"F70_1\":\"DISCPLEASE FIND FURTHER INFORMATION\",\"F70_2\":\"ABOUT DATA PROTECTION ON OUR\",\"F70_3\":\"\",\"F70_4\":\"www.clearstream.comclearst\",\"F70_5\":\"ream-enabout-clearstreamdue dilig\",\"F70_6\":\"encegdprdataprotection\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"916B2CB4F9F3}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-04 17:37:48',
    '2022-03-12 09:48:41'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m566
# ------------------------------------------------------------

INSERT INTO
  `m566` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00189930.prt',
    'inwards',
    'SCBLGHACSSU',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00189930.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"04/07/22\",\"ctime\":\"12:19:28\",\"cdatetime\":\"04/07/22 12:19:28\",\"dir\":\"inwards\",\"mtype\":\"566\",\"Sender\":\"SCBLGHACSSU\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"CACONF\",\"F20\":\"Reference\",\"F20_1\":\"PREVB8AAB82D2B858DE5\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F22\":\"Indicator\",\"F22_1\":\"CONTACTU\",\"F98\":\"Date/Time\",\"F98_1\":\"PAYD20220407\",\"F13\":\"Number Identification\",\"F13_1\":\"CAON001\",\"F97\":\"Account\",\"F97_1\":\"CASH8705080026300\",\"F35\":\"ID of the Financial Instrument\",\"F35_1\":\"ISIN XS2325748106\",\"F35_2\":\"REPUBLIC OF GHANA - 7.75 PCT SNR MT\",\"F11\":\"Currency\",\"F11_1\":\"OPTN\",\"F11_2\":\"USD (US DOLLAR)\",\"F92\":\"Rate\",\"F92_1\":\"TAXR0,\",\"F36\":\"Quantity of Financial Instrument\",\"F36_1\":\"MINOFAMT\",\"F36_2\":\"0.0001\",\"F93\":\"Balance\",\"F93_1\":\"SETTFAMT3600000,\",\"F69\":\"Period\",\"F69_1\":\"INPE2021100720220407\",\"F99\":\"Number Count\",\"F99_1\":\"DAAC180\",\"F19\":\"Amount\",\"F19_1\":\"NETT\",\"F19_2\":\"USD (US DOLLAR)\",\"F19_3\":\"139,500.\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"3EBD586F5215}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-04-07 12:19:28',
    '2022-04-07 07:19:45'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m599
# ------------------------------------------------------------

INSERT INTO
  `m599` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00183923.prt',
    'inwards',
    'SBICGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00183923.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/15/22\",\"ctime\":\"15:38:34\",\"cdatetime\":\"02/15/22 15:38:34\",\"dir\":\"inwards\",\"mtype\":\"599\",\"Sender\":\"SBICGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"25646218\",\"F21\":\"Related Reference\",\"F21_1\":\"25646218\",\"F79\":\"Narrative\",\"F79_1\":\"WE REFER TO OUR REPO TRADE VD 11.02.2022\",\"F79_2\":\"WITH CSD REF NO. 50051102 FOR GHS85,000,000.00\",\"F79_3\":\"INTEREST RATE OF 12.95 PERCENT AND INTEREST\",\"F79_4\":\"AMOUNT OF GHS90472.60 MATURING 14.02.2022.\",\"F79_5\":\"SECURITY ID IS GOG-BD-020326-A5563-1736-18.30\",\"F79_6\":\".\",\"F79_7\":\"PLEASE ACCEPT THIS MESSAGE AS AN AUTHENTIC\",\"F79_8\":\"AND FORMAL CONFIRMATION FOR TRADE WITH\",\"F79_9\":\"DETAILS ABOVE.\",\"F79_10\":\".\",\"F79_11\":\"REGARDS,\",\"F79_12\":\"GMO\",\"F79_13\":\"STANBIC BANK GHANA\",\"F79_14\":\"--------------------------- Message Trailer ------------------------\",\"F79_15\":\"3531D85D182B}\",\"F79_16\":\"MAC-Equivalent\"}',
    '2022-02-15 15:38:34',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m599` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00184910.prt',
    'inwards',
    'SBICGHACXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00184910.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/18/22\",\"ctime\":\"12:25:34\",\"cdatetime\":\"02/18/22 12:25:34\",\"dir\":\"inwards\",\"mtype\":\"599\",\"Sender\":\"SBICGHACXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"25658630\",\"F21\":\"Related Reference\",\"F21_1\":\"25658630\",\"F79\":\"Narrative\",\"F79_1\":\"WE REFER TO OUR REPO TRADE VD 14.02.2022\",\"F79_2\":\"WITH CSD REF NO. 94601402 FOR GHS50,000,000.00\",\"F79_3\":\"INTEREST RATE OF 12.95 PERCENT AND INTEREST\",\"F79_4\":\"AMOUNT OF GHS17739.73 MATURING 15.02.2022.\",\"F79_5\":\"SECURITY ID IS GOG-BD-020326-A5563-1736-18.30\",\"F79_6\":\".\",\"F79_7\":\"PLEASE ACCEPT THIS MESSAGE AS AN AUTHENTIC\",\"F79_8\":\"AND FORMAL CONFIRMATION FOR TRADE WITH\",\"F79_9\":\"DETAILS ABOVE.\",\"F79_10\":\".\",\"F79_11\":\"REGARDS,\",\"F79_12\":\"GMO\",\"F79_13\":\"STANBIC BANK GHANA\",\"F79_14\":\"--------------------------- Message Trailer ------------------------\",\"F79_15\":\"E65D486FAD37}\",\"F79_16\":\"MAC-Equivalent\"}',
    '2022-02-18 12:25:34',
    '2022-03-12 09:11:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m671
# ------------------------------------------------------------

INSERT INTO
  `m671` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180613.prt',
    'inwards',
    'DXDXXXXXXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180613.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/09/22\",\"ctime\":\"09:01:12\",\"cdatetime\":\"03/09/22 09:01:12\",\"dir\":\"inwards\",\"mtype\":\"671\",\"Sender\":\"DXDXXXXXXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"OTHRDET\",\"F20\":\"Reference\",\"F20_1\":\"SEMEBAPPITRUB\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F95\":\"Party\",\"F95_1\":\"BENM\",\"F95_2\":\"BAPPIT22\",\"F95_3\":\"BANCO BPM SPA\",\"F95_4\":\"(HEAD OFFICE)\",\"F95_5\":\"MILANO  IT\",\"F22\":\"Indicator\",\"F22_1\":\"MARKCASH\",\"F11\":\"Currency\",\"F11_1\":\"SETT\",\"F11_2\":\"RUB (RUSSIAN RUBLE)\",\"F98\":\"Date\",\"F98_1\":\"EFFD20220309\",\"F97\":\"Account\",\"F97_1\":\"CASHRU044525700.30101810200000000700\",\"F70\":\"Narrative\",\"F70_1\":\"ADTXTHE STANDARD SETTLEMENT\",\"F70_2\":\"INSTRUCTIONS SHOULD BE USED WHEN\",\"F70_3\":\"MAKING PAYMENTS FOR ALL PRODUCT\",\"F70_4\":\"TYPES INCLUDING COMMERCIAL\",\"F70_5\":\"PAYMENTS. THIS CHANGE APPLIES TO\",\"F70_6\":\"ALL NEW AND OUTSTANDING\",\"F70_7\":\"TRANSACTIONS WITH A SETTLEMENT DATE\",\"F70_8\":\"ON OR AFTER MARCH 9TH, 2022\",\"F70_9\":\"30111810500000100000\",\"F70_10\":\"AO RAIFFEISENBANK MOSCOV\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"44556C51083A}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-09 09:01:12',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m671` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180670.prt',
    'inwards',
    'EBEBXXXXXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180670.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/09/22\",\"ctime\":\"10:46:15\",\"cdatetime\":\"03/09/22 10:46:15\",\"dir\":\"inwards\",\"mtype\":\"671\",\"Sender\":\"EBEBXXXXXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F16\":\"End of Block\",\"F16_1\":\"SSIDET\",\"F20\":\"Reference\",\"F20_1\":\"SEMERMA22001124638\",\"F23\":\"Function of the Message\",\"F23_1\":\"NEWM\",\"F95\":\"Party\",\"F95_1\":\"BENM\",\"F95_2\":\"UBSBCHZZXXX\",\"F95_3\":\"UBS AG\",\"F95_4\":\"ZURICH  CH\",\"F22\":\"Indicator\",\"F22_1\":\"MARKCASH\",\"F11\":\"Currency\",\"F11_1\":\"SETT\",\"F11_2\":\"RUB (RUSSIAN RUBLE)\",\"F98\":\"Date\",\"F98_1\":\"EFFD20220309\",\"F97\":\"Account\",\"F97_1\":\"CASH.\",\"F70\":\"Narrative\",\"F70_1\":\"ADTXWITH SBERBANK.\",\"F70_2\":\"PLEASE FORWARD\",\"F70_3\":\"THIS NOTIFICATION IMMEDIATELY TO\",\"F70_4\":\"ALL YOUR OFFICES, BRANCHES AND\",\"F70_5\":\"OPERATING ENTITIES TO UPDATE THEIR\",\"F70_6\":\"RECORDS ACCORDINGLY\",\"F70_7\":\"IN THE EVENT OF ANY\",\"F70_8\":\"QUESTIONS REGARDING THIS\",\"F70_9\":\"COMMUNICATION PLEASE CONTACT YOUR\",\"F70_10\":\"USUAL COUNTERPARTY\",\"F16_2\":\"--------------------------- Message Trailer ------------------------\",\"F16_3\":\"06A571AAA212}\",\"F16_4\":\"MAC-Equivalent\"}',
    '2022-03-09 10:46:15',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m730
# ------------------------------------------------------------

INSERT INTO
  `m730` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180575.prt',
    'inwards',
    'SCBLGB2LXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180575.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/09/22\",\"ctime\":\"07:24:25\",\"cdatetime\":\"03/09/22 07:24:25\",\"dir\":\"inwards\",\"mtype\":\"730\",\"Sender\":\"SCBLGB2LXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Sender s Reference\",\"F20_1\":\"779113497206-T\",\"F21\":\"Receiver s Reference\",\"F21_1\":\"CL001SCDP220021\",\"F30\":\"Date of Msg Being Acknowledged\",\"F30_1\":\"220308\",\"F71\":\"Charges\",\"F71_1\":\"PLEASE REMIT USD 110 AND USD 35 TO\",\"F71_2\":\"OUR USD AC NO.3582088442001 HELD\",\"F71_3\":\"WITH SCBLUS33 BEING OUR ADVISING\",\"F71_4\":\"AND SWIFT COMMISSION.\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"THIS LETTER OF CREDIT HAS BEEN\",\"F72_2\":\"PROCESSED BY SCB LONDON. WE ARE\",\"F72_3\":\"CURRENTLY SEEKING INTERNAL APPROVAL\",\"F72_4\":\"TO ADD OUR CONFIRMATION AND SHALL\",\"F72_5\":\"REVERT ONCE WE RECEIVE THE\",\"F72_6\":\"NECESSARY APPROVAL.\",\"F72_7\":\"--------------------------- Message Trailer ------------------------\",\"F72_8\":\"7DB861A687EC}\",\"F72_9\":\"}\",\"F72_10\":\"MAC-Equivalent\"}',
    '2022-03-09 07:24:25',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m730` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00181672.prt',
    'inwards',
    'SCBLGB2LXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181672.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/11/22\",\"ctime\":\"16:46:59\",\"cdatetime\":\"03/11/22 16:46:59\",\"dir\":\"inwards\",\"mtype\":\"730\",\"Sender\":\"SCBLGB2LXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Sender s Reference\",\"F20_1\":\"779113497206-T\",\"F21\":\"Receiver s Reference\",\"F21_1\":\"CL001SCDP220021\",\"F30\":\"Date of Msg Being Acknowledged\",\"F30_1\":\"220311\",\"F71\":\"Charges\",\"F71_1\":\"PLEASE REMIT USD 85 + USD 35 TO\",\"F71_2\":\"OURUSD AC NO.3582088442001 HELD\",\"F71_3\":\"WITH SCBLUS33 BEING OUR AMENDMENT\",\"F71_4\":\"AND SWIFT CHARGES\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"THE AMENDMENT HAS BEEN\",\"F72_2\":\"PROCESSED BY SCB LONDON.\",\"F72_3\":\"--------------------------- Message Trailer ------------------------\",\"F72_4\":\"9A119C535431}\",\"F72_5\":\"MAC-Equivalent\"}',
    '2022-03-11 16:46:59',
    '2022-03-12 09:11:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m750
# ------------------------------------------------------------

INSERT INTO
  `m750` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00182110.prt',
    'inwards',
    'CHASUS33XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182110.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"01/03/22\",\"ctime\":\"20:18:44\",\"cdatetime\":\"01/03/22 20:18:44\",\"dir\":\"inwards\",\"mtype\":\"750\",\"Sender\":\"CHASUS33XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Sender s Reference\",\"F20_1\":\"NUSCGF087597\",\"F21\":\"Related Reference\",\"F21_1\":\"CL001CTSP21-0047\",\"F32\":\"Principal Amount\",\"F32_1\":\"USD (US DOLLAR)\",\"F32_2\":\"412,405.00\",\"F34\":\"Total Amount to be Paid\",\"F34_1\":\"USD (US DOLLAR)\",\"F34_2\":\"412,405.00\",\"F77\":\"Discrepancies\",\"F77_1\":\"1. INVOICE AND LICENSE CERTIFICATE EVIDENCED\",\"F77_2\":\"APPLICANT NAME AS  INTELLIGENT CARD\",\"F77_3\":\"PRODUCTION\",\"F77_4\":\"SYSTEMS LIMITED  IO\",\"F77_5\":\"INTELLIGENT CARD PRODUCTION SYS. LIMITED\",\"F77_6\":\"AS FIELD 50 OF THE LC.\",\"F77_7\":\"2. INVOICE OMITS TO SHOW THE COUNTRY NAME  GHANA\",\"F77_8\":\"UNDER APPLICANT S ADDRESS.\",\"F77_9\":\"3. INVOICE AND LICENSE CERTIFICATE EVIDENCED\",\"F77_10\":\"GOODS DESCRIPTION NOT AS PER LC FIELD 45A.\",\"F77_11\":\"4. PL EVIDENCED INCORRECT LC NUMBER.\",\"F77_12\":\"--------------------------- Message Trailer ------------------------\",\"F77_13\":\"7277B6F38A44}\",\"F77_14\":\"MAC-Equivalent\"}',
    '2022-01-03 20:18:44',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m750` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00182110.prt',
    'inwards',
    'CHASUS33XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182110.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"01/03/22\",\"ctime\":\"20:18:44\",\"cdatetime\":\"01/03/22 20:18:44\",\"dir\":\"inwards\",\"mtype\":\"750\",\"Sender\":\"CHASUS33XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Sender s Reference\",\"F20_1\":\"NUSCGF087597\",\"F21\":\"Related Reference\",\"F21_1\":\"CL001CTSP21-0047\",\"F32\":\"Principal Amount\",\"F32_1\":\"USD (US DOLLAR)\",\"F32_2\":\"412,405.00\",\"F34\":\"Total Amount to be Paid\",\"F34_1\":\"USD (US DOLLAR)\",\"F34_2\":\"412,405.00\",\"F77\":\"Discrepancies\",\"F77_1\":\"1. INVOICE AND LICENSE CERTIFICATE EVIDENCED\",\"F77_2\":\"APPLICANT NAME AS  INTELLIGENT CARD\",\"F77_3\":\"PRODUCTION\",\"F77_4\":\"SYSTEMS LIMITED  IO\",\"F77_5\":\"INTELLIGENT CARD PRODUCTION SYS. LIMITED\",\"F77_6\":\"AS FIELD 50 OF THE LC.\",\"F77_7\":\"2. INVOICE OMITS TO SHOW THE COUNTRY NAME  GHANA\",\"F77_8\":\"UNDER APPLICANT S ADDRESS.\",\"F77_9\":\"3. INVOICE AND LICENSE CERTIFICATE EVIDENCED\",\"F77_10\":\"GOODS DESCRIPTION NOT AS PER LC FIELD 45A.\",\"F77_11\":\"4. PL EVIDENCED INCORRECT LC NUMBER.\",\"F77_12\":\"--------------------------- Message Trailer ------------------------\",\"F77_13\":\"7277B6F38A44}\",\"F77_14\":\"MAC-Equivalent\"}',
    '2022-01-03 20:18:44',
    '2022-03-12 09:48:37'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m754
# ------------------------------------------------------------

INSERT INTO
  `m754` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00183367.prt',
    'inwards',
    'CITIIE2XTRD',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00183367.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/14/22\",\"ctime\":\"07:29:30\",\"cdatetime\":\"02/14/22 07:29:30\",\"dir\":\"inwards\",\"mtype\":\"754\",\"Sender\":\"CITIIE2XTRD\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Sender s Reference\",\"F20_1\":\"6137631051\",\"F21\":\"Related Reference\",\"F21_1\":\"CL001CTSP21-0047\",\"F32\":\"Principal Amt Paid/Accepted/Negd\",\"F32_1\":\"USD (US DOLLAR)\",\"F32_2\":\"589,150.\",\"F71\":\"Charges Deducted\",\"F71_1\":\"LESS YOUR CHARGES USD 100.00\",\"F34\":\"Total Amount Claimed\",\"F34_1\":\"11 February 2022\",\"F34_2\":\"USD (US DOLLAR)\",\"F34_3\":\"589,050.\",\"F77\":\"Narrative\",\"F77_1\":\"PLEASE BE INFORMED THAT WE HAVE\",\"F77_2\":\"FORWARDED DOCUMENTS TO YOUR GOOD\",\"F77_3\":\"BANK DATED 10-FEB-2022 ON APPROVAL\",\"F77_4\":\"BASIS. AS PER YOUR AUTHORITY WE\",\"F77_5\":\"HAVE CLAIMED REIMBURSEMENT FROM\",\"F77_6\":\"CITIUS33 FOR THE BILL AMOUNT LESS\",\"F77_7\":\"YOUR CHARGES.\",\"F77_8\":\"--------------------------- Message Trailer ------------------------\",\"F77_9\":\"218B9250B5FB}\",\"F77_10\":\"}\",\"F77_11\":\"MAC-Equivalent\"}',
    '2022-02-14 07:29:30',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m754` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00182668.prt',
    'inwards',
    'BHFBDEFF500',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00182668.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/10/22\",\"ctime\":\"08:46:27\",\"cdatetime\":\"02/10/22 08:46:27\",\"dir\":\"inwards\",\"mtype\":\"754\",\"Sender\":\"BHFBDEFF500\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Sender s Reference\",\"F20_1\":\"BE21B03500-001\",\"F21\":\"Related Reference\",\"F21_1\":\"CL025BHDP21-0068\",\"F32\":\"Principal Amt Paid/Accepted/Negd\",\"F32_1\":\"31 January 2022\",\"F32_2\":\"EUR (EURO)\",\"F32_3\":\"115,708.36\",\"F71\":\"Charges Deducted\",\"F71_1\":\"CORCOMEUR100,\",\"F73\":\"Charges Added\",\"F73_1\":\"COMMEUR1461,36\",\"F73_2\":\"TELECHAREUR54,\",\"F73_3\":\"POSTEUR80,\",\"F34\":\"Total Amount Claimed\",\"F34_1\":\"11 April 2022\",\"F34_2\":\"EUR (EURO)\",\"F34_3\":\"117,203.72\",\"F53\":\"Reimbursing Bank - FI BIC\",\"F53_1\":\"DEUTDEFFXXX\",\"F53_2\":\"DEUTSCHE BANK AG\",\"F53_3\":\"FRANKFURT AM MAIN  DE\",\"F77\":\"Narrative\",\"F77_1\":\"we refer to your mt 799 dd. 220209.\",\"F77_2\":\"please also see our separate mt\",\"F77_3\":\"799 dd. 220210.\",\"F77_4\":\"--------------------------- Message Trailer ------------------------\",\"F77_5\":\"7053D6178602}\",\"F77_6\":\"MAC-Equivalent\"}',
    '2022-02-10 08:46:27',
    '2022-03-12 09:11:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m759
# ------------------------------------------------------------

INSERT INTO
  `m759` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180355.prt',
    'inwards',
    'BHFBDEFF500',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180355.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"04/08/22\",\"ctime\":\"12:47:17\",\"cdatetime\":\"04/08/22 12:47:17\",\"dir\":\"inwards\",\"mtype\":\"759\",\"Sender\":\"BHFBDEFF500\",\"Reciever\":\"ACCCGHACXXX\",\"F27\":\"Sequence of Total\",\"F27_1\":\"1\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"BP22B04176-001-1\",\"F21\":\"Related Reference\",\"F21_1\":\"CL001BHDP22-0027\",\"F22\":\"Form of Undertaking\",\"F22_1\":\"DOCR\",\"F23\":\"Function of the Message\",\"F23_1\":\"OTHERFNC\",\"F52\":\"Issuer - FI BIC\",\"F52_1\":\"BHFBDEFF500\",\"F52_2\":\"ODDO BHF AKTIENGESELLSCHAFT\",\"F52_3\":\"FRANKFURT AM MAIN  DE\",\"F45\":\"Narrative\",\"F45_1\":\"we have prepaid our payment undertaking in\",\"F45_2\":\"accordance with article 12b ucp 600\",\"F45_3\":\"Trx 0038583 B95978\",\"F45_4\":\"--------------------------- Message Trailer ------------------------\",\"F45_5\":\"730789646707}\",\"F45_6\":\"MAC-Equivalent\"}',
    '2022-04-08 12:47:17',
    '2022-04-08 07:47:31'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m790
# ------------------------------------------------------------

INSERT INTO
  `m790` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00184951.prt',
    'inwards',
    'BHFBDEFF500',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00184951.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/23/22\",\"ctime\":\"15:18:40\",\"cdatetime\":\"03/23/22 15:18:40\",\"dir\":\"inwards\",\"mtype\":\"790\",\"Sender\":\"BHFBDEFF500\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"LE21B03686\",\"F21\":\"Related Reference\",\"F21_1\":\"CL030BHDP21-0080\",\"F25\":\"Account Identification\",\"F25_1\":\"0300741561\",\"F32\":\"Value Date, Currency Code, Amt\",\"F32_1\":\"23 March 2022\",\"F32_2\":\"USD (US DOLLAR)\",\"F32_3\":\"186.\",\"F71\":\"Details of Charges\",\"F71_1\":\"TELECHARUSD20,\",\"F71_2\":\"COMMUSD166,\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"ref is made to our SWIFT MT 799\",\"F72_2\":\"dd. 220316\",\"F72_3\":\"--------------------------- Message Trailer ------------------------\",\"F72_4\":\"9668DF849FC1}\",\"F72_5\":\"MAC-Equivalent\"}',
    '2022-03-23 15:18:40',
    '2022-03-23 10:19:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m799
# ------------------------------------------------------------

INSERT INTO
  `m799` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180033.prt',
    'inwards',
    'DEUTDEFFHUB',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180033.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"07:29:05\",\"cdatetime\":\"03/08/22 07:29:05\",\"dir\":\"inwards\",\"mtype\":\"799\",\"Sender\":\"DEUTDEFFHUB\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"784XLF2100591\",\"F21\":\"Related Reference\",\"F21_1\":\"CL004DBDP21-0058\",\"F79\":\"Narrative\",\"F79_1\":\"Msg sent by order of DEUTINBBXXX\",\"F79_2\":\"3RD REMINDER\",\"F79_3\":\"784XLF2100591\",\"F79_4\":\"CL004DBDP21-0058\",\"F79_5\":\"USD 75,716.02\",\"F79_6\":\"USD 74,548.89\",\"F79_7\":\"USD 1,167.13\",\"F79_8\":\".\",\"F79_9\":\"TH REFERENCE TO OUR BILL REF NO 784XLF2100591\",\"F79_10\":\"WE HAVE RECEIVED THE PAYMENT WITH SHORTFALL OF\",\"F79_11\":\"USD 1,167.13 PROVIDE US THE BREAKUP OF YOUR\",\"F79_12\":\"CHARGES OR\",\"F79_13\":\"REMIT THE SAME ON URGENT BASIS.\",\"F79_14\":\".\",\"F79_15\":\"REGARDS,\",\"F79_16\":\"TRS\",\"F79_17\":\"--------------------------- Message Trailer ------------------------\",\"F79_18\":\"39083F81A601}\",\"F79_19\":\"}\",\"F79_20\":\"MAC-Equivalent\"}',
    '2022-03-08 07:29:05',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m799` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180048.prt',
    'inwards',
    'BKTRUS33XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180048.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"07:34:44\",\"cdatetime\":\"03/08/22 07:34:44\",\"dir\":\"inwards\",\"mtype\":\"799\",\"Sender\":\"BKTRUS33XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"220304 200292\",\"F21\":\"Related Reference\",\"F21_1\":\"CL001SCDP21-0091\",\"F79\":\"Narrative\",\"F79_1\":\"LC DEPT\",\"F79_2\":\"ACCCGHAC\",\"F79_3\":\"CL001SCDP21-0091\",\"F79_4\":\"AXISINBBTFC\",\"F79_5\":\"0019FUGC2201191\",\"F79_6\":\"USD76749,50\",\"F79_7\":\"03142022\",\"F79_8\":\".\",\"F79_9\":\"WE ARE IN RECEIPT OF A REIMBURSEMENT CLAIM WITH\",\"F79_10\":\"ABOVE DETAILS WHICH REMAINS UNPAID AS WE ARE\",\"F79_11\":\"UNABLE TO IDENTIFY YOUR REIMBURSEMENT\",\"F79_12\":\"AUTHORIZATION UNDER THE LETTER OF CREDIT NUMBER\",\"F79_13\":\"PROVIDED BY THE CLAIMING BANK. IF THIS IS A VALID\",\"F79_14\":\"LC NUMBER, PLEASE PROVIDE US WITH AUTHORITY TO\",\"F79_15\":\"HONOR THIS CLAIM BY REPLYING TO THIS MESSAGE AND\",\"F79_16\":\"PROVIDING US WITH THE CORRECT LC NUMBER, MAXIMUM\",\"F79_17\":\"AMOUNT AVAILABLE, EXPIRY DATE (IF ANY), ADVISING\",\"F79_18\":\"BANK NAME, AND FEE INSTRUCTIONS RELATED TO OUR\",\"F79_19\":\"FEES AS WELL AS CLAIMING BANK CHARGES. ALSO KINDLY\",\"F79_20\":\"CONFIRM WHETHER YOURAUTHORITY IS APPLICABLE TO URR\",\"F79_21\":\"LATEST VERSION FOR US TO PROCESS YOUR AUTHORITY\",\"F79_22\":\".\",\"F79_23\":\"QUOTE OUR REFERENCE NUMBER 220304 200292\",\"F79_24\":\"REGARDS,\",\"F79_25\":\"TRADE REIMBURSEMENTS INVESTIGATIONS\",\"F79_26\":\"--------------------------- Message Trailer ------------------------\",\"F79_27\":\"E6F453DBBED4}\",\"F79_28\":\"}\",\"F79_29\":\"MAC-Equivalent\"}',
    '2022-03-08 07:34:44',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m900
# ------------------------------------------------------------

INSERT INTO
  `m900` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180058.prt',
    'inwards',
    'BAGHGHA2XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180058.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"08:52:34\",\"cdatetime\":\"03/08/22 08:52:34\",\"dir\":\"inwards\",\"mtype\":\"900\",\"Sender\":\"BAGHGHA2XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"0009209777\",\"F21\":\"Related Reference\",\"F21_1\":\"N-5673-0013\",\"F25\":\"Account Identification\",\"F25_1\":\"0120730004000\",\"F32\":\"Value Date, Currency Code,  Amt\",\"F32_1\":\"08 March 2022\",\"F32_2\":\"GHS (GHANA CEDI)\",\"F32_3\":\"2,934,523.97\",\"F52\":\"Ordering Institution - FI BIC\",\"F52_1\":\"BAGHGHA4\",\"F52_2\":\"BANK OF GHANA\",\"F52_3\":\"ACCRA  GH\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"ACCBng Sett. for 182-DAY TB 1788\",\"F72_2\":\"--------------------------- Message Trailer ------------------------\",\"F72_3\":\"4A553B129C1C}\"}',
    '2022-03-08 08:52:34',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m900` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180057.prt',
    'inwards',
    'BAGHGHA2XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180057.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"08:52:23\",\"cdatetime\":\"03/08/22 08:52:23\",\"dir\":\"inwards\",\"mtype\":\"900\",\"Sender\":\"BAGHGHA2XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"0009209750\",\"F21\":\"Related Reference\",\"F21_1\":\"N-5672-0013\",\"F25\":\"Account Identification\",\"F25_1\":\"0120730004000\",\"F32\":\"Value Date, Currency Code,  Amt\",\"F32_1\":\"08 March 2022\",\"F32_2\":\"GHS (GHANA CEDI)\",\"F32_3\":\"30,714,670.70\",\"F52\":\"Ordering Institution - FI BIC\",\"F52_1\":\"BAGHGHA4\",\"F52_2\":\"BANK OF GHANA\",\"F52_3\":\"ACCRA  GH\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"ACCBng Sett. for 91-DAY TB 1788\",\"F72_2\":\"--------------------------- Message Trailer ------------------------\",\"F72_3\":\"72A75EFD9C58}\"}',
    '2022-03-08 08:52:23',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m910
# ------------------------------------------------------------

INSERT INTO
  `m910` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180097.prt',
    'inwards',
    'BAGHGHA2XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180097.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"09:25:21\",\"cdatetime\":\"03/08/22 09:25:21\",\"dir\":\"inwards\",\"mtype\":\"910\",\"Sender\":\"BAGHGHA2XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"0009211097\",\"F21\":\"Related Reference\",\"F21_1\":\"C-4462-0019\",\"F25\":\"Account Identification\",\"F25_1\":\"0120730004000\",\"F32\":\"Value Date, Currency Code,  Amt\",\"F32_1\":\"08 March 2022\",\"F32_2\":\"GHS (GHANA CEDI)\",\"F32_3\":\"5,423,738.00\",\"F52\":\"Ordering Institution - FI BIC\",\"F52_1\":\"BAGHGHA4\",\"F52_2\":\"BANK OF GHANA\",\"F52_3\":\"ACCRA  GH\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"ACCMP-070322-A5566-1736-0\",\"F72_2\":\"--------------------------- Message Trailer ------------------------\",\"F72_3\":\"17A893B2C1CF}\"}',
    '2022-03-08 09:25:21',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m910` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180096.prt',
    'inwards',
    'BAGHGHA2XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180096.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"09:25:11\",\"cdatetime\":\"03/08/22 09:25:11\",\"dir\":\"inwards\",\"mtype\":\"910\",\"Sender\":\"BAGHGHA2XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"0009211024\",\"F21\":\"Related Reference\",\"F21_1\":\"C-4460-0007\",\"F25\":\"Account Identification\",\"F25_1\":\"0120730004000\",\"F32\":\"Value Date, Currency Code,  Amt\",\"F32_1\":\"08 March 2022\",\"F32_2\":\"GHS (GHANA CEDI)\",\"F32_3\":\"680,514.00\",\"F52\":\"Ordering Institution - FI BIC\",\"F52_1\":\"BAGHGHA4\",\"F52_2\":\"BANK OF GHANA\",\"F52_3\":\"ACCRA  GH\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"ACCMP-070322-A5704-1762-0\",\"F72_2\":\"--------------------------- Message Trailer ------------------------\",\"F72_3\":\"072DC1FD9811}\"}',
    '2022-03-08 09:25:11',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m935
# ------------------------------------------------------------

INSERT INTO
  `m935` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00186158.prt',
    'inwards',
    'SBZAZAJJXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00186158.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/28/22\",\"ctime\":\"07:39:34\",\"cdatetime\":\"03/28/22 07:39:34\",\"dir\":\"inwards\",\"mtype\":\"935\",\"Sender\":\"SBZAZAJJXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"08400001ZV016108\",\"F25\":\"Account Identification\",\"F25_1\":\"7221521\",\"F30\":\"Effective Date of New Rate\",\"F30_1\":\"220325\",\"F37\":\"New Interest Rate\",\"F37_1\":\"D9,75\",\"F37_2\":\"--------------------------- Message Trailer ------------------------\",\"F37_3\":\"8F5156951861}\",\"F37_4\":\"}\"}',
    '2022-03-28 07:39:34',
    '2022-03-28 02:39:45'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m940
# ------------------------------------------------------------

INSERT INTO
  `m940` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00183870.prt',
    'inwards',
    'GHIBGB2LXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00183870.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/21/22\",\"ctime\":\"07:03:13\",\"cdatetime\":\"03/21/22 07:03:13\",\"dir\":\"inwards\",\"mtype\":\"940\",\"Sender\":\"GHIBGB2LXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"20220318-74\",\"F25\":\"Account Identification\",\"F25_1\":\"01714511\",\"F28\":\"Statement Number/Sequence Number\",\"F28_1\":\"741\",\"F60\":\"First Opening Balance\",\"F60_1\":\"Credit\",\"F60_2\":\"19 September 2021\",\"F60_3\":\"JPY (YEN)\",\"F60_4\":\"548,738.\",\"F62\":\"Closing Balance (Booked Funds)\",\"F62_1\":\"Credit\",\"F62_2\":\"20 March 2022\",\"F62_3\":\"JPY (YEN)\",\"F62_4\":\"548,738.\",\"F64\":\"Closing Avail Bal (Avail Funds)\",\"F64_1\":\"Credit\",\"F64_2\":\"20 March 2022\",\"F64_3\":\"JPY (YEN)\",\"F64_4\":\"548,738.\",\"F64_5\":\"--------------------------- Message Trailer ------------------------\",\"F64_6\":\"4A22468D4651}\"}',
    '2022-03-21 07:03:13',
    '2022-03-21 02:03:31'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m950
# ------------------------------------------------------------

INSERT INTO
  `m950` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180002.prt',
    'inwards',
    'BMCEFRPPXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180002.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"06:03:09\",\"cdatetime\":\"03/08/22 06:03:09\",\"dir\":\"inwards\",\"mtype\":\"950\",\"Sender\":\"BMCEFRPPXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"ACCCGHACXXX\",\"F25\":\"Account Identification\",\"F25_1\":\"0000125007741234\",\"F28\":\"Statement Number/Sequence Number\",\"F28_1\":\"2065\",\"F60\":\"First Opening Balance\",\"F60_1\":\"Credit\",\"F60_2\":\"07 March 2022\",\"F60_3\":\"GBP (POUND STERLING)\",\"F60_4\":\"9,020.93\",\"F62\":\"Closing Balance (Booked Funds)\",\"F62_1\":\"Credit\",\"F62_2\":\"07 March 2022\",\"F62_3\":\"GBP (POUND STERLING)\",\"F62_4\":\"9,020.93\",\"F62_5\":\"--------------------------- Message Trailer ------------------------\",\"F62_6\":\"EAC502BF29CD}\"}',
    '2022-03-08 06:03:09',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m950` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180009.prt',
    'inwards',
    'GHIBGB2LXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180009.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/08/22\",\"ctime\":\"07:06:00\",\"cdatetime\":\"03/08/22 07:06:00\",\"dir\":\"inwards\",\"mtype\":\"950\",\"Sender\":\"GHIBGB2LXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"20220307-3835\",\"F25\":\"Account Identification\",\"F25_1\":\"01714502\",\"F28\":\"Statement Number/Sequence Number\",\"F28_1\":\"38351\",\"F60\":\"First Opening Balance\",\"F60_1\":\"Credit\",\"F60_2\":\"06 March 2022\",\"F60_3\":\"USD (US DOLLAR)\",\"F60_4\":\"327,582.22\",\"F61\":\"Statement Line\",\"F61_1\":\"Value  Entr F Code Reference                      Amount        Ma\",\"F61_2\":\"220304 0307 D NCHK MONEYGRAM                     3,563.19     C\",\"F61_3\":\"FT2206317243\",\"F61_4\":\"Inward Telex Payment\",\"F61_5\":\"220307 0307 D NCHK MONEYGRAM                     7,684.74     C\",\"F61_6\":\"FT2206626391\",\"F61_7\":\"Inward Telex Payment\",\"F62\":\"Closing Balance (Booked Funds)\",\"F62_1\":\"Credit\",\"F62_2\":\"07 March 2022\",\"F62_3\":\"USD (US DOLLAR)\",\"F62_4\":\"338,830.15\",\"F64\":\"Closing Avail Bal (Avail Funds)\",\"F64_1\":\"Credit\",\"F64_2\":\"07 March 2022\",\"F64_3\":\"USD (US DOLLAR)\",\"F64_4\":\"336,760.74\",\"F64_5\":\"--------------------------- Message Trailer ------------------------\",\"F64_6\":\"64DDC47A5092}\"}',
    '2022-03-08 07:06:00',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m991
# ------------------------------------------------------------

INSERT INTO
  `m991` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00184912.prt',
    'inwards',
    'CRGEITGG057',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00184912.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"02/18/22\",\"ctime\":\"12:26:45\",\"cdatetime\":\"02/18/22 12:26:45\",\"dir\":\"inwards\",\"mtype\":\"991\",\"Sender\":\"CRGEITGG057\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"00057INT16016100\",\"F21\":\"Related Reference\",\"F21_1\":\"100016095981\",\"F32\":\"Currency Code, Amount\",\"F32_1\":\"EUR (EURO)\",\"F32_2\":\"35.\",\"F71\":\"Details of Charges\",\"F71_1\":\"OUR CHGS ON YOUR MT103 DTD 16022022\",\"F71_2\":\"THRU UNCRITMMXXX REF SEE FIELD 21\",\"F71_3\":\"FIELD 32 EUR 385.034,75\",\"F71_4\":\"FIELD 71 OUR\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"PLEASE\",\"F72_2\":\"REMIT US,AT YOUR BEST CONVENIENCE\",\"F72_3\":\"EUR 35,00\",\"F72_4\":\"AS PER OUR CHARGES\",\"F72_5\":\"QUOTING OUR FIELD 20 - BEST REGAR\",\"F72_6\":\"--------------------------- Message Trailer ------------------------\",\"F72_7\":\"F7F7D931F13F}\"}',
    '2022-02-18 12:26:45',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m991` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00189959.prt',
    'inwards',
    'CRGEITGG057',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00189959.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/07/22\",\"ctime\":\"12:02:29\",\"cdatetime\":\"03/07/22 12:02:29\",\"dir\":\"inwards\",\"mtype\":\"991\",\"Sender\":\"CRGEITGG057\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"00057INT16016100\",\"F21\":\"Related Reference\",\"F21_1\":\"100016095981\",\"F32\":\"Currency Code, Amount\",\"F32_1\":\"EUR (EURO)\",\"F32_2\":\"35.\",\"F71\":\"Details of Charges\",\"F71_1\":\"OUR CHGS ON YOUR MT103 DTD 16022022\",\"F71_2\":\"THRU UNCRITMMXXX REF SEE FIELD 21\",\"F71_3\":\"FIELD 32 EUR 385.034,75\",\"F71_4\":\"FIELD 71 OUR\",\"F72\":\"Sender to Receiver Information\",\"F72_1\":\"FIRST REMINDER\",\"F72_2\":\"PLS EFFECT THE PAYMENT QUOTING OU\",\"F72_3\":\"FIELD 20. D I S R E G A R D THI\",\"F72_4\":\"MSG IF PYMNT ALREADY EFFECTED.\",\"F72_5\":\"THANKS AND REGARDS\",\"F72_6\":\"--------------------------- Message Trailer ------------------------\",\"F72_7\":\"5C595DBA2814}\"}',
    '2022-03-07 12:02:29',
    '2022-03-12 09:11:41'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m995
# ------------------------------------------------------------

INSERT INTO
  `m995` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00181380.prt',
    'inwards',
    'KOEXKRSEXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00181380.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/11/22\",\"ctime\":\"06:02:00\",\"cdatetime\":\"03/11/22 06:02:00\",\"dir\":\"inwards\",\"mtype\":\"995\",\"Sender\":\"KOEXKRSEXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"0374EUP220200003\",\"F21\":\"Related Reference\",\"F21_1\":\"CL099CTDP21-0089\",\"F75\":\"Queries\",\"F75_1\":\"2\",\"F77\":\"Narrative\",\"F77_1\":\"PLS TREAT THIS MSG AS MT795 DUE TO\",\"F77_2\":\"NO-BKE\",\"F77_3\":\"LC DEPT\",\"F77_4\":\"OUR DOCUMENT DATED 20220217\",\"F77_5\":\"FOR USD 49,136.00\",\"F77_6\":\"WE HAVE NOT YET RECEIVED YR NOTICE\",\"F77_7\":\"OF ACCEPTANCE AND DUE DATE UP THIS\",\"F77_8\":\"TIME. PLS INVESTIGATE AND ADVISE\",\"F77_9\":\"YOUR ACCEPTANCE AND DUE DATE OF\",\"F77_10\":\"ABOVE DOCUMENT\",\"F77_11\":\"(SECOND TRACER)\",\"F77_12\":\"--------------------------- Message Trailer ------------------------\",\"F77_13\":\"AD95793402A2}\",\"F77_14\":\"}\"}',
    '2022-03-11 06:02:00',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m995` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00189498.prt',
    'inwards',
    'KOEXKRSEXXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00189498.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/04/22\",\"ctime\":\"06:01:36\",\"cdatetime\":\"03/04/22 06:01:36\",\"dir\":\"inwards\",\"mtype\":\"995\",\"Sender\":\"KOEXKRSEXXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"0374EUP220200003\",\"F21\":\"Related Reference\",\"F21_1\":\"CL099CTDP21-0089\",\"F75\":\"Queries\",\"F75_1\":\"2\",\"F77\":\"Narrative\",\"F77_1\":\"PLS TREAT THIS MSG AS MT795 DUE TO\",\"F77_2\":\"NO-BKE\",\"F77_3\":\"LC DEPT\",\"F77_4\":\"OUR DOCUMENT DATED 20220217\",\"F77_5\":\"FOR USD 49,136.00\",\"F77_6\":\"WE HAVE NOT YET RECEIVED YR NOTICE\",\"F77_7\":\"OF ACCEPTANCE AND DUE DATE UP THIS\",\"F77_8\":\"TIME. PLS INVESTIGATE AND ADVISE\",\"F77_9\":\"YOUR ACCEPTANCE AND DUE DATE OF\",\"F77_10\":\"ABOVE DOCUMENT\",\"F77_11\":\"(FIRST TRACER)\",\"F77_12\":\"--------------------------- Message Trailer ------------------------\",\"F77_13\":\"09BD9816CF50}\",\"F77_14\":\"}\"}',
    '2022-03-04 06:01:36',
    '2022-03-12 09:11:41'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: m999
# ------------------------------------------------------------

INSERT INTO
  `m999` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    1,
    '00180682.prt',
    'inwards',
    'PNBPUS3NNYC',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180682.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/09/22\",\"ctime\":\"11:41:10\",\"cdatetime\":\"03/09/22 11:41:10\",\"dir\":\"inwards\",\"mtype\":\"999\",\"Sender\":\"PNBPUS3NNYC\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"WACNY2206821016\",\"F21\":\"Related Reference\",\"F21_1\":\"CDC012SP22-0037\",\"F79\":\"Narrative\",\"F79_1\":\"NARRATIVE\",\"F79_2\":\"PLEASE BE ADVISED THAT WE ACKNOWLEDGE RECEIPT OF\",\"F79_3\":\"YOUR MESSAGE DATED 392022 REF CDC012SP22-0037\",\"F79_4\":\"AND ARE TAKING THE APPROPRIATE ACTIONS TO RESOLVE\",\"F79_5\":\"THIS MATTER. WE WILL REVERT IN DUE COURSE . PLEASE\",\"F79_6\":\"QUOTE OUR REFERENCE WACNY2206821016 ON ALL FUTURE\",\"F79_7\":\"CORRESPONDENCE.\",\"F79_8\":\"REGARDS,\",\"F79_9\":\"CUSTOMER CARE AGENT, CUSTOMER CARE\",\"F79_10\":\"--------------------------- Message Trailer ------------------------\",\"F79_11\":\"17B2006AB58F}\"}',
    '2022-03-09 11:41:10',
    '2022-03-12 08:55:09'
  );
INSERT INTO
  `m999` (
    `id`,
    `docname`,
    `dir`,
    `sender`,
    `reciever`,
    `jsondata`,
    `cdatetime`,
    `createdAt`
  )
VALUES
  (
    2,
    '00180773.prt',
    'inwards',
    'CITIUS33XXX',
    'ACCCGHACXXX',
    '{\"NetStatus\":\"--\",\"docname\":\"00180773.prt\",\"fincopy\":\"--\",\"finmsg\":0,\"cdate\":\"03/09/22\",\"ctime\":\"13:47:28\",\"cdatetime\":\"03/09/22 13:47:28\",\"dir\":\"inwards\",\"mtype\":\"999\",\"Sender\":\"CITIUS33XXX\",\"Reciever\":\"ACCCGHACXXX\",\"F20\":\"Transaction Reference Number\",\"F20_1\":\"CIT220309-004944\",\"F21\":\"Related Reference\",\"F21_1\":\"CALINR20220309\",\"F79\":\"Narrative\",\"F79_1\":\"RE YOUR SWIFT 199 DD 392022 CONCERNING\",\"F79_2\":\"5,000.00USD.\",\"F79_3\":\"DEAR SIRMADAM,\",\"F79_4\":\"REGARDING YOUR SWIFT 199 DATED 09-MAR-2022\",\"F79_5\":\"REFERENCE CALINR20220309 CONCERNING\",\"F79_6\":\"5,000.00USD DATED 07-MAR-2022.\",\"F79_7\":\"WE WISH TO INFORM YOU THAT WE ARE IN RECEIPT OF\",\"F79_8\":\"YOUR INQUIRY AND ARE GIVING THIS MATTER OUR\",\"F79_9\":\"IMMEDIATE ATTENTION. WE WILL BE CONTACTING YOU\",\"F79_10\":\"SHORTLY TO ADVISE THE STATUS OF OUR\",\"F79_11\":\"INVESTIGATION.\",\"F79_12\":\"PLEASE QUOTE OUR REFERENCE CIT220309-004944 ON\",\"F79_13\":\"ALL FUTURE CORRESPONDENCE REGARDING THIS MATTER.\",\"F79_14\":\"REGARDS,\",\"F79_15\":\"USD FT INVESTIGATIONS\",\"F79_16\":\"OUR REF CIT220309-004944\",\"F79_17\":\"--------------------------- Message Trailer ------------------------\",\"F79_18\":\"ACC8FAF536E7}\"}',
    '2022-03-09 13:47:28',
    '2022-03-12 09:11:38'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: menu
# ------------------------------------------------------------

INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '1cf373de-b82d-4315-855e-a83dea5ebef9',
    'Manage Profiles',
    '/settings/profiles',
    'ad168cbe-34f9-453c-8742-f9ef3418fcd0',
    1,
    1,
    '',
    'ad168cbe-34f9-453c-8742-f9ef3418fcd0',
    '2022-08-24 15:59:11',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    'Manage Users',
    '#',
    '0',
    0,
    1,
    'people_outline',
    NULL,
    '2022-08-24 14:32:50',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '25b55a18-d149-48c5-a4f1-76d021c3878d',
    'Add Path',
    '/settings/newpath',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    1,
    1,
    '',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    '2022-08-24 14:28:25',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '2a6be426-20c3-4a2e-9dc0-84343cdf65d7',
    'Create Headers',
    '/swift/messagetypesh',
    '66dab742-cadf-40cd-945c-de1ff7ebc1c7',
    1,
    1,
    '',
    '66dab742-cadf-40cd-945c-de1ff7ebc1c7',
    '2022-08-24 16:05:33',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '3a9ed137-e893-46f1-beef-c7e10fd31b47',
    'Authentication',
    '/settings/auths',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    1,
    1,
    '',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    '2022-08-24 14:27:03',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '48ea63a7-dacc-42a3-9356-4a5c9e0e10fd',
    'Add Role',
    '/settings/newrole',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    1,
    1,
    '',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    '2022-08-24 17:54:48',
    NULL,
    '2022-08-24 23:00:49'
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '5387573f-f7c1-44de-8dc9-028956d4a48e',
    'Add User',
    '/settings/newuser',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    1,
    1,
    '',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    '2022-08-24 17:55:50',
    NULL,
    '2022-08-24 23:02:53'
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '559a1784-5c83-40fa-aa5b-6fb058e66ef0',
    'Manage Roles',
    '/settings/roles',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    1,
    1,
    '',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    '2022-08-24 17:55:17',
    NULL,
    '2022-08-24 23:02:19'
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '66dab742-cadf-40cd-945c-de1ff7ebc1c7',
    'SWIFT Messages',
    '#',
    '0',
    0,
    1,
    'mail',
    NULL,
    '2022-08-24 16:02:07',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '7bda5719-a929-45df-a39c-e6c85696af02',
    'Dashboard',
    '/swift/',
    '0',
    0,
    1,
    'settings_input_svideo',
    NULL,
    '2022-08-24 14:21:43',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '7d815876-388b-4913-b1af-b44614fa0472',
    'Company',
    '/settings/company/',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    1,
    1,
    '',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    '2022-08-24 14:25:28',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '9aa12476-eae9-4c22-9b96-b95d6ed3bc38',
    'Add Profile',
    '/settings/newprofile',
    'ad168cbe-34f9-453c-8742-f9ef3418fcd0',
    1,
    1,
    '',
    'ad168cbe-34f9-453c-8742-f9ef3418fcd0',
    '2022-08-24 15:58:17',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '9e3210c2-011e-4d98-82c3-b9aa9478500d',
    'Messages',
    '/swift/messagetypes',
    '66dab742-cadf-40cd-945c-de1ff7ebc1c7',
    1,
    1,
    '',
    '66dab742-cadf-40cd-945c-de1ff7ebc1c7',
    '2022-08-24 16:07:55',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'a8d9de37-3ff8-4afa-965b-3ae530e003c7',
    'Notification Gateway',
    '/settings/noticegw',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    1,
    1,
    '',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    '2022-08-24 14:31:03',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'ad168cbe-34f9-453c-8742-f9ef3418fcd0',
    'Alert Profiles',
    '#',
    '0',
    0,
    1,
    'notifications',
    NULL,
    '2022-08-24 15:29:52',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'b3b21f51-1f2a-436d-ad78-ad1a636fd9ca',
    'Role Menus',
    '/settings/rolemenus',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    1,
    1,
    '',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    '2022-08-24 17:57:38',
    NULL,
    '2022-08-24 23:04:37'
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'b4403f56-3da3-4651-b2f0-447c704d30d5',
    'User Menus',
    '/settings/usermenus',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    1,
    0,
    '',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    '2022-08-24 17:58:10',
    '2022-08-24 23:14:08',
    '2022-08-24 23:05:44'
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'b8c0efd5-a397-4280-b8d3-880bf839035e',
    'Manage User',
    '/settings/users',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    1,
    1,
    '',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    '2022-08-24 17:56:52',
    NULL,
    '2022-08-24 23:04:05'
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'c1af2ecf-13d9-4de6-9a63-009287bb6f3b',
    'Manage Role',
    '/settings/roles',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    1,
    1,
    '',
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    '2022-08-24 14:57:57',
    '2022-08-24 22:08:53',
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    'Settings',
    '#',
    '0',
    0,
    1,
    'settings',
    NULL,
    '2022-08-24 14:23:51',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'e533c18b-e1d0-4bf9-bece-92209d536bda',
    'Manage Paths',
    '/settings/paths',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    1,
    1,
    '',
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    '2022-08-24 14:30:13',
    NULL,
    NULL
  );
INSERT INTO
  `menu` (
    `id`,
    `title`,
    `url`,
    `baseId`,
    `isBaseId`,
    `status`,
    `icon`,
    `originatorBaseId`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'fd8814ca-9d85-4f53-bd37-260be2626faa',
    'Update Headers',
    '/swift/messagetypeshu',
    '66dab742-cadf-40cd-945c-de1ff7ebc1c7',
    1,
    1,
    '',
    '66dab742-cadf-40cd-945c-de1ff7ebc1c7',
    '2022-08-24 16:06:29',
    NULL,
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: message_flow
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: message_headers
# ------------------------------------------------------------

INSERT INTO
  `message_headers` (
    `id`,
    `messagetype`,
    `isdefault`,
    `version`,
    `jsondata`,
    `createdBy`,
    `createdAt`
  )
VALUES
  (
    1,
    'm103',
    1,
    100,
    '{\"headers\":[{\"title\":\"Status\",\"data\":\"NetStatus\"},{\"title\":\"Document\",\"data\":\"docname\"},{\"title\":\"Date\",\"data\":\"cdate\"},{\"title\":\"Time\",\"data\":\"ctime\"},{\"title\":\"Date-Time\",\"data\":\"cdatetime\"},{\"title\":\"Flow\",\"data\":\"dir\"},{\"title\":\"Message-Type\",\"data\":\"mtype\"},{\"title\":\"Sender\",\"data\":\"Sender\"},{\"title\":\"Receiver\",\"data\":\"Reciever\"},{\"title\":\"Reference\",\"data\":\"F20_1\"},{\"title\":\"Currency\",\"data\":\"F32_2\"},{\"title\":\"Remittance Info\",\"data\":\"F70_1\"}]}',
    'gashie',
    '2022-05-07 07:28:58'
  );
INSERT INTO
  `message_headers` (
    `id`,
    `messagetype`,
    `isdefault`,
    `version`,
    `jsondata`,
    `createdBy`,
    `createdAt`
  )
VALUES
  (
    2,
    'm199',
    1,
    100,
    '{\"headers\":[{\"title\":\"Status\",\"data\":\"NetStatus\"},{\"title\":\"Document\",\"data\":\"docname\"},{\"title\":\"Date\",\"data\":\"cdate\"},{\"title\":\"Time\",\"data\":\"ctime\"},{\"title\":\"Date-Time\",\"data\":\"cdatetime\"}]}',
    'gashie',
    '2022-05-07 07:54:44'
  );
INSERT INTO
  `message_headers` (
    `id`,
    `messagetype`,
    `isdefault`,
    `version`,
    `jsondata`,
    `createdBy`,
    `createdAt`
  )
VALUES
  (
    3,
    'm950',
    1,
    100,
    '{\"headers\":[{\"title\":\"\",\"data\":\"NetStatus\"},{\"title\":\"Date\",\"data\":\"cdate\"},{\"title\":\"Time\",\"data\":\"ctime\"},{\"title\":\"Date- Time\",\"data\":\"cdatetime\"},{\"title\":\"Sender\",\"data\":\"Sender\"},{\"title\":\"Reciever\",\"data\":\"Reciever\"},{\"title\":\"Reference\",\"data\":\"F20_1\"},{\"title\":\"Account ID\",\"data\":\"F25_1\"}]}',
    'gashie',
    '2022-06-04 11:42:49'
  );
INSERT INTO
  `message_headers` (
    `id`,
    `messagetype`,
    `isdefault`,
    `version`,
    `jsondata`,
    `createdBy`,
    `createdAt`
  )
VALUES
  (
    4,
    'm202',
    1,
    100,
    '{\"headers\":[{\"title\":\"type=\\\"text\\\"\",\"data\":\"NetStatus\"},{\"title\":\"Document\",\"data\":\"docname\"},{\"title\":\"Date\",\"data\":\"cdate\"},{\"title\":\"Time\",\"data\":\"ctime\"},{\"title\":\"DateTime\",\"data\":\"cdatetime\"},{\"title\":\"MessageTpe\",\"data\":\"mtype\"},{\"title\":\"Sender\",\"data\":\"Sender\"}]}',
    'gashie',
    '2022-07-16 09:16:11'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: message_record
# ------------------------------------------------------------

INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (1, 'm103', 'system', '2022-03-12 08:55:00');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (270, 'm950', 'system', '2022-03-12 08:55:05');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (272, 'm199', 'system', '2022-03-12 08:55:05');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (273, 'm202', 'system', '2022-03-12 08:55:05');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (277, 'm799', 'system', '2022-03-12 08:55:05');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (284, 'm900', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (285, 'm910', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (289, 'm320', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (294, 'm299', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (302, 'm295', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (313, 'm300', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (343, 'm671', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (431, 'm535', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (445, 'm545', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (465, 'm518', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (506, 'm548', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (523, 'm536', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (582, 'm537', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (600, 'm730', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (617, 'm999', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (865, 'm750', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (963, 'm995', 'system', '2022-03-12 08:55:06');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (1156, 'm190', 'system', '2022-03-12 08:55:07');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (1289, 'm196', 'system', '2022-03-12 08:55:07');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (1318, 'm420', 'system', '2022-03-12 08:55:07');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (1380, 'm754', 'system', '2022-03-12 08:55:07');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (1811, 'm192', 'system', '2022-03-12 08:55:07');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (2346, 'm599', 'system', '2022-03-12 08:55:07');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (2763, 'm991', 'system', '2022-03-12 08:55:08');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (4077, 'm564', 'system', '2022-03-12 08:55:09');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (4524, 'm195', 'system', '2022-03-15 06:54:45');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (4525, 'm940', 'system', '2022-03-21 02:03:30');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (4526, 'm790', 'system', '2022-03-23 10:19:00');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (4527, 'm935', 'system', '2022-03-28 02:39:45');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (4528, 'm566', 'system', '2022-04-07 07:19:45');
INSERT INTO
  `message_record` (`id`, `message_type`, `createdBy`, `createdAt`)
VALUES
  (4529, 'm759', 'system', '2022-04-08 07:47:30');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: message_type
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: oldusers
# ------------------------------------------------------------

INSERT INTO
  `oldusers` (
    `idsys_users`,
    `fullname`,
    `phone`,
    `username`,
    `email`,
    `password`,
    `uid`,
    `acl_role`,
    `status`,
    `timestamp`,
    `authtype`,
    `updatedAt`,
    `deletedAt`
  )
VALUES
  (
    5,
    'gashie',
    '0271565656',
    'test',
    'rico@test.com',
    '$2b$10$F9uknoHI6T3s2dx9oilXR.BTQ.Kcl84OzOz74loire9Oj/YZsYpZ2',
    '0C8f452lrzPtLjQKjc06Qkot1636223405',
    16,
    1,
    '2021-11-06 18:31:32',
    4,
    NULL,
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: role
# ------------------------------------------------------------

INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '098f6bcd4621d373cade4e832627b4f6',
    'test',
    0,
    '2022-08-01 15:19:44',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '21232f297a57a5a743894a0e4a801fc3',
    'admin',
    1,
    '2022-07-17 04:27:30',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '372c4bcc-ec81-11ec-8ea0-0242ac120002',
    'NormalUser',
    1,
    '2022-06-15 03:01:12',
    NULL,
    '2022-08-02 22:03:49'
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '41d5e808720c8ee71257214e952a6721',
    'Test4',
    0,
    '2022-08-02 17:07:20',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '429a5260-ec81-11ec-8ea0-0242ac120002',
    'Administrator',
    1,
    '2022-06-15 03:01:12',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '55d2cdee-ec81-11ec-8ea0-0242ac120002',
    'Teller',
    1,
    '2022-06-15 03:02:02',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '5e40d09fa0529781afd1254a42913847',
    'test8',
    0,
    '2022-08-04 06:54:15',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '607deae4-ec81-11ec-8ea0-0242ac120002',
    'Operations',
    1,
    '2022-06-15 03:02:02',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '7a7161cf-d5a1-4caa-a861-afe3c09e4678',
    'gashie',
    0,
    '2022-07-17 05:08:00',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    '8206d629db9722aa6c56cda609cecdbd',
    'TestAdmin',
    0,
    '2022-08-21 10:25:07',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'b3f66ec1535de7702c38e94408fa4a17',
    'Test3',
    0,
    '2022-08-02 17:05:44',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'c454552d52d55d3ef56408742887362b',
    'Test2',
    0,
    '2022-08-02 15:42:10',
    NULL,
    NULL
  );
INSERT INTO
  `role` (
    `id`,
    `title`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    'e1b849f9631ffc1829b2e31402373e3c',
    'Test1',
    0,
    '2022-08-02 15:40:16',
    NULL,
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: rolemenu
# ------------------------------------------------------------

INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    '7bda5719-a929-45df-a39c-e6c85696af02',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:14:09',
    NULL,
    '2022-08-25 00:14:24'
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:17:51',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    '1ecd4d9b-be37-4d26-a0bd-726b4ee8cdc0',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:18:15',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'ad168cbe-34f9-453c-8742-f9ef3418fcd0',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:18:28',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    '66dab742-cadf-40cd-945c-de1ff7ebc1c7',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:18:43',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    '7d815876-388b-4913-b1af-b44614fa0472',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:18:57',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    '3a9ed137-e893-46f1-beef-c7e10fd31b47',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:19:12',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    '25b55a18-d149-48c5-a4f1-76d021c3878d',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:19:24',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    'e533c18b-e1d0-4bf9-bece-92209d536bda',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:19:34',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    'a8d9de37-3ff8-4afa-965b-3ae530e003c7',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:19:45',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    '48ea63a7-dacc-42a3-9356-4a5c9e0e10fd',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:19:56',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    '559a1784-5c83-40fa-aa5b-6fb058e66ef0',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:20:18',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    '5387573f-f7c1-44de-8dc9-028956d4a48e',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:20:42',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    'b8c0efd5-a397-4280-b8d3-880bf839035e',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:20:56',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    15,
    'b3b21f51-1f2a-436d-ad78-ad1a636fd9ca',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:21:28',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    16,
    '9aa12476-eae9-4c22-9b96-b95d6ed3bc38',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:21:59',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    17,
    '1cf373de-b82d-4315-855e-a83dea5ebef9',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:22:27',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    18,
    '2a6be426-20c3-4a2e-9dc0-84343cdf65d7',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:23:35',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    19,
    'fd8814ca-9d85-4f53-bd37-260be2626faa',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:23:54',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    20,
    '9e3210c2-011e-4d98-82c3-b9aa9478500d',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2022-08-24 19:24:13',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    21,
    '7bda5719-a929-45df-a39c-e6c85696af02',
    '372c4bcc-ec81-11ec-8ea0-0242ac120002',
    1,
    '2022-08-27 07:26:19',
    NULL,
    '2022-08-27 13:06:23'
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    22,
    'cd846d7b-3a53-41d3-882f-2dac6951cd49',
    '372c4bcc-ec81-11ec-8ea0-0242ac120002',
    1,
    '2022-08-27 07:30:00',
    NULL,
    NULL
  );
INSERT INTO
  `rolemenu` (
    `id`,
    `menuid`,
    `roleid`,
    `status`,
    `createdAt`,
    `deletedAt`,
    `updatedAt`
  )
VALUES
  (
    23,
    '7d815876-388b-4913-b1af-b44614fa0472',
    '372c4bcc-ec81-11ec-8ea0-0242ac120002',
    1,
    '2022-08-27 07:30:40',
    NULL,
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: routes
# ------------------------------------------------------------

INSERT INTO
  `routes` (
    `id`,
    `apiName`,
    `protocol`,
    `host`,
    `port`,
    `path`,
    `status`,
    `createdAt`,
    `updateAt`,
    `deletedAt`
  )
VALUES
  (
    1,
    'ums',
    'http',
    'http://localhost:3117/api/v1/',
    3117,
    'ums',
    1,
    '2022-06-17 04:40:40',
    NULL,
    NULL
  );
INSERT INTO
  `routes` (
    `id`,
    `apiName`,
    `protocol`,
    `host`,
    `port`,
    `path`,
    `status`,
    `createdAt`,
    `updateAt`,
    `deletedAt`
  )
VALUES
  (
    2,
    'umsss',
    'http',
    ' http://localhost:3117',
    3117,
    'ums',
    0,
    '2022-06-17 04:40:40',
    NULL,
    NULL
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_auth_ad
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_auth_ldap
# ------------------------------------------------------------

INSERT INTO
  `settings_auth_ldap` (
    `idsettings_auth_LDAP`,
    `ldap_user`,
    `ldap_url`,
    `ldap_password`,
    `ldap_domain`,
    `enabled`
  )
VALUES
  (
    1,
    'albert',
    'http://10.130.16.77:500',
    'pass1',
    'test.com',
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_auth_oauth
# ------------------------------------------------------------

INSERT INTO
  `settings_auth_oauth` (
    `idsettings_auth_oauth`,
    `oauth_url`,
    `oauth_api_key`,
    `oauth_api_secret`,
    `oauth_redirect_url`,
    `enabled`,
    `CreatedAt`
  )
VALUES
  (
    3,
    'http://10.130.16.77:5000',
    '25www',
    'new',
    'http://10.130.16.77:5000/callback',
    0,
    '2021-11-06 18:28:36'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_auth_type
# ------------------------------------------------------------

INSERT INTO
  `settings_auth_type` (
    `idsettings_authentication_type`,
    `name`,
    `description`
  )
VALUES
  (1, 'OAUTH', 'For OAUTH settings');
INSERT INTO
  `settings_auth_type` (
    `idsettings_authentication_type`,
    `name`,
    `description`
  )
VALUES
  (2, 'LDAP', 'For LDAP Settings');
INSERT INTO
  `settings_auth_type` (
    `idsettings_authentication_type`,
    `name`,
    `description`
  )
VALUES
  (3, 'AD', 'For Acitve Directory Settings');
INSERT INTO
  `settings_auth_type` (
    `idsettings_authentication_type`,
    `name`,
    `description`
  )
VALUES
  (4, 'Local', 'For Local Authentication');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_authentication
# ------------------------------------------------------------

INSERT INTO
  `settings_authentication` (`idsettings_authentication`, `auth_type`, `mfa`)
VALUES
  (1, 1, 1);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_company
# ------------------------------------------------------------

INSERT INTO
  `settings_company` (
    `idsettings_company`,
    `comp_name`,
    `comp_logo`,
    `comp_slogan`,
    `comp_email`,
    `comp_url`,
    `timestamp`,
    `address`
  )
VALUES
  (
    9,
    'up',
    NULL,
    'up',
    'up@up.com',
    'https://www.test.com',
    '2021-12-31 06:15:31',
    'ok'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_email
# ------------------------------------------------------------

INSERT INTO
  `settings_email` (
    `idsettings_sms`,
    `smtpHost`,
    `smtpPort`,
    `smtpTLS`,
    `smtpUser`,
    `smtpPass`,
    `smtpFrom`,
    `enabled`,
    `timestamp`
  )
VALUES
  (
    4,
    'smtp.mailtrap.io',
    2525,
    1,
    'CAL.1234$',
    'test',
    'noreply@ipronet.com Swift Process Engine',
    1,
    '2021-11-06 18:21:47'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_paths
# ------------------------------------------------------------

INSERT INTO
  `settings_paths` (
    `idsettings_paths`,
    `src_swift_main_path`,
    `src_swift_docs_path_print`,
    `src_swift_docs_path_pdf`,
    `src_swift_docs_path_img`,
    `src_swift_docs_path_txt`,
    `timestamp`
  )
VALUES
  (
    1,
    '/home/BackEnd/swiftalerts/src_dir/',
    'mypath',
    '/home/BackEnd/swiftalerts/pdf/',
    '/home/BackEnd/swiftalerts/img/',
    '/home/BackEnd/swiftalerts/src_dir/',
    '2021-12-30 09:05:06'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: settings_token
# ------------------------------------------------------------

INSERT INTO
  `settings_token` (
    `id`,
    `issuer`,
    `audience`,
    `timetolive`,
    `token_name`,
    `create_at`
  )
VALUES
  (
    1,
    'ipronet.com',
    'http://localhost:7000/swiftapp/v1/auth',
    '10min',
    'sauth',
    '2021-10-21 04:37:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: smsgateway
# ------------------------------------------------------------

INSERT INTO
  `smsgateway` (
    `id`,
    `gateway`,
    `gatewayurl`,
    `gatewaykeys`,
    `gatewaypassword`,
    `balance`,
    `createdAt`,
    `updatedAt`,
    `deletedAt`,
    `status`
  )
VALUES
  (
    1,
    'Sesa SMs',
    'sms.gashie.net/api/sms',
    '11112212csmdnbsjdhbq211kkk',
    'Pasv.1234$',
    4000,
    '2021-12-31 09:30:13',
    NULL,
    NULL,
    1
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: swift_message_metadata
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sys_user_roles
# ------------------------------------------------------------

INSERT INTO
  `sys_user_roles` (`idsys_user_roles`, `name`, `describe`, `code`)
VALUES
  (1, 'GLOBAL_ADMIN', 'All system access', 2);
INSERT INTO
  `sys_user_roles` (`idsys_user_roles`, `name`, `describe`, `code`)
VALUES
  (
    2,
    'ALERT_PROFILE_ADMIN',
    'Manages the Alert Menu\'s settings',
    4
  );
INSERT INTO
  `sys_user_roles` (`idsys_user_roles`, `name`, `describe`, `code`)
VALUES
  (
    3,
    'SYS_ADMIN',
    'Manages the users and settings on the system',
    8
  );
INSERT INTO
  `sys_user_roles` (`idsys_user_roles`, `name`, `describe`, `code`)
VALUES
  (4, 'GENERAL_USER', 'Default system user', 16);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sys_users_status
# ------------------------------------------------------------

INSERT INTO
  `sys_users_status` (`idsys_users_status`, `name`, `describe`)
VALUES
  (1, 'Enable', 'User can access the platform');
INSERT INTO
  `sys_users_status` (`idsys_users_status`, `name`, `describe`)
VALUES
  (2, 'Disable', 'User cannot access the system');
INSERT INTO
  `sys_users_status` (`idsys_users_status`, `name`, `describe`)
VALUES
  (
    3,
    'Pending',
    'User access is pending authorisation'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: systemprofile
# ------------------------------------------------------------

INSERT INTO
  `systemprofile` (
    `id`,
    `Company`,
    `AppName`,
    `SystemToken`,
    `SystemKeys`,
    `ipList`,
    `createdAt`,
    `updatedAt`,
    `deletedAt`,
    `status`
  )
VALUES
  (
    1,
    'CALBANK PLC',
    'SWIFT',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IlVaVzQxLVgxMTU0LTcxR0MxLUY1MUNCLURBM0NCLUJDRCIsInN0YXRlIjowLCJpYXQiOjE2NDA5NTU4MzMsImV4cCI6MTY0MTA0MjIzM30.T8LxWEqKfbIo59_JdjLubeDGkJEUmpl6oUKyJWTE3No',
    'UZW41-X1154-71GC1-F51CB-DA3CB-BCD',
    '192.168.0.90',
    '2021-12-31 07:03:53',
    NULL,
    NULL,
    0
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: usermenu
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
    `id`,
    `fullname`,
    `phone`,
    `username`,
    `email`,
    `password`,
    `uid`,
    `roleid`,
    `status`,
    `timestamp`,
    `authtype`,
    `updatedAt`,
    `deletedAt`
  )
VALUES
  (
    5,
    'Richard gashie',
    '0271565656',
    'test',
    'rico@test.com',
    '$2b$10$F9uknoHI6T3s2dx9oilXR.BTQ.Kcl84OzOz74loire9Oj/YZsYpZ2',
    '0C8f452lrzPtLjQKjc06Qkot1636223405',
    '21232f297a57a5a743894a0e4a801fc3',
    1,
    '2021-11-06 18:31:32',
    4,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `id`,
    `fullname`,
    `phone`,
    `username`,
    `email`,
    `password`,
    `uid`,
    `roleid`,
    `status`,
    `timestamp`,
    `authtype`,
    `updatedAt`,
    `deletedAt`
  )
VALUES
  (
    6,
    'Bill',
    '02544455754',
    'test2',
    'b@gmail.com',
    '$2b$10$OCiLdbrXGWd6hgaZNHU7zekmyFZwmH96oy.sE09E6dCt6pD86l9rC',
    '0CZoikcxdcIi3gXQ54PLX3rO1661101754',
    '372c4bcc-ec81-11ec-8ea0-0242ac120002',
    1,
    '2022-08-21 12:09:18',
    4,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `id`,
    `fullname`,
    `phone`,
    `username`,
    `email`,
    `password`,
    `uid`,
    `roleid`,
    `status`,
    `timestamp`,
    `authtype`,
    `updatedAt`,
    `deletedAt`
  )
VALUES
  (
    7,
    'George',
    '0245554788',
    'test3',
    'g@gmail.com',
    '$2b$10$S37OeNctbJob5qRQnJuODuAHKtgdjExQ9S6XCVGxB1Wf98g0rIb1u',
    '0CZoj0j0E6BrzxVdAOBCiIuN1661101754',
    '098f6bcd4621d373cade4e832627b4f6',
    1,
    '2022-08-21 12:10:20',
    4,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `id`,
    `fullname`,
    `phone`,
    `username`,
    `email`,
    `password`,
    `uid`,
    `roleid`,
    `status`,
    `timestamp`,
    `authtype`,
    `updatedAt`,
    `deletedAt`
  )
VALUES
  (
    8,
    'Hans',
    '02455558884',
    'test4',
    'h@gmail.com',
    '$2b$10$c9Wj.FFcIj52S7qPPq670e4J1SmyuGxPxWCsDHlfhKrXRP8FGzZk.',
    '0CZoliZI5WvGEjyImc6IoyWj1661102217',
    '607deae4-ec81-11ec-8ea0-0242ac120002',
    1,
    '2022-08-21 12:21:05',
    4,
    NULL,
    NULL
  );
INSERT INTO
  `users` (
    `id`,
    `fullname`,
    `phone`,
    `username`,
    `email`,
    `password`,
    `uid`,
    `roleid`,
    `status`,
    `timestamp`,
    `authtype`,
    `updatedAt`,
    `deletedAt`
  )
VALUES
  (
    9,
    'Joe Boy',
    '0542225444',
    'joe',
    'j@gmail.com',
    '$2b$10$AA0wOWlJwpm/UlMV5ZBxpeG/6OuL6ucFWee.zeYhsvZm8HibVYX6e',
    '0CaP3GWhNyPPzujDNC0CLhdI1661638520',
    '372c4bcc-ec81-11ec-8ea0-0242ac120002',
    1,
    '2022-08-27 17:16:35',
    4,
    NULL,
    NULL
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
