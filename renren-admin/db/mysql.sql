# Host: LOCALHOST  (Version: 5.5.15)
# Date: 2018-08-29 14:22:24
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "qrtz_calendars"
#

DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_calendars"
#


#
# Structure for table "qrtz_fired_triggers"
#

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_fired_triggers"
#


#
# Structure for table "qrtz_job_details"
#

DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_job_details"
#

INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler','TASK_1','DEFAULT',NULL,'io.renren.modules.job.utils.ScheduleJob','0','0','0','0',X'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000672656E72656E74000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800'),('RenrenScheduler','TASK_2','DEFAULT',NULL,'io.renren.modules.job.utils.ScheduleJob','0','0','0','0',X'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800');

#
# Structure for table "qrtz_locks"
#

DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_locks"
#

INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler','STATE_ACCESS'),('RenrenScheduler','TRIGGER_ACCESS');

#
# Structure for table "qrtz_paused_trigger_grps"
#

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_paused_trigger_grps"
#


#
# Structure for table "qrtz_scheduler_state"
#

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_scheduler_state"
#

INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler','USER-20171228IO1535520520056',1535521638353,15000);

#
# Structure for table "qrtz_triggers"
#

DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_triggers"
#

INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler','TASK_1','DEFAULT','TASK_1','DEFAULT',NULL,1535522400000,1535520600000,5,'WAITING','CRON',1535198387000,0,NULL,2,X'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158BAF593307874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B020000787000000000000000017400047465737474000672656E72656E74000FE69C89E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000007800'),('RenrenScheduler','TASK_2','DEFAULT','TASK_2','DEFAULT',NULL,1535198400000,-1,5,'PAUSED','CRON',1535198387000,0,NULL,2,X'ACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000D4A4F425F504152414D5F4B45597372002E696F2E72656E72656E2E6D6F64756C65732E6A6F622E656E746974792E5363686564756C654A6F62456E7469747900000000000000010200084C00086265616E4E616D657400124C6A6176612F6C616E672F537472696E673B4C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000E63726F6E45787072657373696F6E71007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C000A6D6574686F644E616D6571007E00094C0006706172616D7371007E00094C000672656D61726B71007E00094C00067374617475737400134C6A6176612F6C616E672F496E74656765723B7870740008746573745461736B7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000158C377C4607874000E3020302F3330202A202A202A203F7372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000574657374327074000FE697A0E58F82E695B0E6B58BE8AF95737200116A6176612E6C616E672E496E746567657212E2A0A4F781873802000149000576616C75657871007E0013000000017800');

#
# Structure for table "qrtz_simprop_triggers"
#

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_simprop_triggers"
#


#
# Structure for table "qrtz_simple_triggers"
#

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_simple_triggers"
#


#
# Structure for table "qrtz_cron_triggers"
#

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_cron_triggers"
#

INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler','TASK_1','DEFAULT','0 0/30 * * * ?','Asia/Shanghai'),('RenrenScheduler','TASK_2','DEFAULT','0 0/30 * * * ?','Asia/Shanghai');

#
# Structure for table "qrtz_blob_triggers"
#

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "qrtz_blob_triggers"
#


#
# Structure for table "schedule_job"
#

DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean����',
  `method_name` varchar(100) DEFAULT NULL COMMENT '������',
  `params` varchar(2000) DEFAULT NULL COMMENT '����',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron���ʽ',
  `status` tinyint(4) DEFAULT NULL COMMENT '����״̬  0������  1����ͣ',
  `remark` varchar(255) DEFAULT NULL COMMENT '��ע',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='��ʱ����';

#
# Data for table "schedule_job"
#

INSERT INTO `schedule_job` VALUES (1,'testTask','test','renren','0 0/30 * * * ?',0,'�в�������','2016-12-01 23:16:46'),(2,'testTask','test2',NULL,'0 0/30 * * * ?',1,'�޲�������','2016-12-03 14:55:56');

#
# Structure for table "schedule_job_log"
#

DROP TABLE IF EXISTS `schedule_job_log`;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '������־id',
  `job_id` bigint(20) NOT NULL COMMENT '����id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean����',
  `method_name` varchar(100) DEFAULT NULL COMMENT '������',
  `params` varchar(2000) DEFAULT NULL COMMENT '����',
  `status` tinyint(4) NOT NULL COMMENT '����״̬    0���ɹ�    1��ʧ��',
  `error` varchar(2000) DEFAULT NULL COMMENT 'ʧ����Ϣ',
  `times` int(11) NOT NULL COMMENT '��ʱ(��λ������)',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='��ʱ������־';

#
# Data for table "schedule_job_log"
#

INSERT INTO `schedule_job_log` VALUES (1,1,'testTask','test','renren',0,NULL,1050,'2018-08-25 21:00:00'),(2,1,'testTask','test','renren',0,NULL,1059,'2018-08-25 21:30:00'),(3,1,'testTask','test','renren',0,NULL,1047,'2018-08-25 22:00:00'),(4,1,'testTask','test','renren',0,NULL,1031,'2018-08-25 23:00:00'),(5,1,'testTask','test','renren',0,NULL,1036,'2018-08-27 11:30:00'),(6,1,'testTask','test','renren',0,NULL,1027,'2018-08-27 19:30:00'),(7,1,'testTask','test','renren',0,NULL,1027,'2018-08-27 20:00:00'),(8,1,'testTask','test','renren',0,NULL,1022,'2018-08-27 21:30:00'),(9,1,'testTask','test','renren',0,NULL,1039,'2018-08-27 22:00:00'),(10,1,'testTask','test','renren',0,NULL,1039,'2018-08-27 23:30:00'),(11,1,'testTask','test','renren',0,NULL,1033,'2018-08-28 15:00:00'),(12,1,'testTask','test','renren',0,NULL,1026,'2018-08-28 15:30:00'),(13,1,'testTask','test','renren',0,NULL,1067,'2018-08-28 16:00:00'),(14,1,'testTask','test','renren',0,NULL,1067,'2018-08-28 17:00:00'),(15,1,'testTask','test','renren',0,NULL,1055,'2018-08-28 18:00:00'),(16,1,'testTask','test','renren',0,NULL,1043,'2018-08-28 18:30:00'),(17,1,'testTask','test','renren',0,NULL,1053,'2018-08-28 19:00:00'),(18,1,'testTask','test','renren',0,NULL,1022,'2018-08-28 19:30:00'),(19,1,'testTask','test','renren',0,NULL,1012,'2018-08-28 20:00:00'),(20,1,'testTask','test','renren',0,NULL,1057,'2018-08-28 21:00:00'),(21,1,'testTask','test','renren',0,NULL,1089,'2018-08-28 22:00:00'),(22,1,'testTask','test','renren',0,NULL,1043,'2018-08-28 22:30:00'),(23,1,'testTask','test','renren',0,NULL,1017,'2018-08-28 23:00:00'),(24,1,'testTask','test','renren',0,NULL,1009,'2018-08-28 23:30:03'),(25,1,'testTask','test','renren',0,NULL,1060,'2018-08-29 00:00:00'),(26,1,'testTask','test','renren',0,NULL,1079,'2018-08-29 10:00:00'),(27,1,'testTask','test','renren',0,NULL,1011,'2018-08-29 10:30:00'),(28,1,'testTask','test','renren',0,NULL,1045,'2018-08-29 11:00:00'),(29,1,'testTask','test','renren',0,NULL,1007,'2018-08-29 11:30:00'),(30,1,'testTask','test','renren',0,NULL,1020,'2018-08-29 12:00:00'),(31,1,'testTask','test','renren',0,NULL,1088,'2018-08-29 12:30:00'),(32,1,'testTask','test','renren',0,NULL,1008,'2018-08-29 13:00:00'),(33,1,'testTask','test','renren',0,NULL,1099,'2018-08-29 13:30:00');

#
# Structure for table "sys_config"
#

DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `param_key` varchar(50) DEFAULT NULL COMMENT 'key',
  `param_value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '״̬   0������   1����ʾ',
  `remark` varchar(500) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='ϵͳ������Ϣ��';

#
# Data for table "sys_config"
#

INSERT INTO `sys_config` VALUES (1,'CLOUD_STORAGE_CONFIG_KEY','{\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"aliyunDomain\":\"\",\"aliyunEndPoint\":\"\",\"aliyunPrefix\":\"\",\"qcloudBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuBucketName\":\"ios-app\",\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"type\":1}',0,'�ƴ洢������Ϣ');

#
# Structure for table "sys_dept"
#

DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '�ϼ�����ID��һ������Ϊ0',
  `name` varchar(50) DEFAULT NULL COMMENT '��������',
  `order_num` int(11) DEFAULT NULL COMMENT '����',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�ɾ��  -1����ɾ��  0������',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='���Ź���';

#
# Data for table "sys_dept"
#

INSERT INTO `sys_dept` VALUES (1,0,'��̷���',0,0),(2,1,'��ɽ�ֹ�˾',1,0),(3,1,'�Ϻ��ֹ�˾',2,0),(4,3,'������',0,0),(5,3,'���۲�',1,0),(6,0,'���Բ�',5,0);

#
# Structure for table "sys_dict"
#

DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '�ֵ�����',
  `type` varchar(100) NOT NULL COMMENT '�ֵ�����',
  `code` varchar(100) NOT NULL COMMENT '�ֵ���',
  `value` varchar(1000) NOT NULL COMMENT '�ֵ�ֵ',
  `order_num` int(11) DEFAULT '0' COMMENT '����',
  `remark` varchar(255) DEFAULT NULL COMMENT '��ע',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT 'ɾ�����  -1����ɾ��  0������',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='�����ֵ��';

#
# Data for table "sys_dict"
#

INSERT INTO `sys_dict` VALUES (1,'�Ա�','sex','0','Ů',0,NULL,0),(2,'�Ա�','sex','1','��',1,NULL,0),(3,'�Ա�','sex','2','δ֪',3,NULL,0);

#
# Structure for table "sys_log"
#

DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '�û���',
  `operation` varchar(50) DEFAULT NULL COMMENT '�û�����',
  `method` varchar(200) DEFAULT NULL COMMENT '���󷽷�',
  `params` varchar(5000) DEFAULT NULL COMMENT '�������',
  `time` bigint(20) NOT NULL COMMENT 'ִ��ʱ��(����)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP��ַ',
  `create_date` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='ϵͳ��־';

#
# Data for table "sys_log"
#

INSERT INTO `sys_log` VALUES (1,'admin','����˵�','io.renren.modules.sys.controller.SysMenuController.save()','{\"menuId\":51,\"parentId\":0,\"parentName\":\"һ���˵�\",\"name\":\"ҵ�����\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":1}',22,'0:0:0:0:0:0:0:1','2018-08-25 20:03:58'),(2,'admin','�޸Ĳ˵�','io.renren.modules.sys.controller.SysMenuController.update()','{\"menuId\":41,\"parentId\":1,\"parentName\":\"ϵͳ����\",\"name\":\"�豸����\",\"url\":\"modules/sys/machines.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":6}',18,'0:0:0:0:0:0:0:1','2018-08-25 20:04:52'),(3,'admin','�����ɫ','io.renren.modules.sys.controller.SysRoleController.save()','{\"roleId\":1,\"roleName\":\"��ͨ�û�\",\"remark\":\"��ͨ�û���Ӧ��ʵ�е���ʵ�û�\",\"deptId\":5,\"deptName\":\"���۲�\",\"menuIdList\":[51,41,44,46,49],\"deptIdList\":[],\"createTime\":\"Aug 25, 2018 8:41:18 PM\"}',171,'0:0:0:0:0:0:0:1','2018-08-25 20:41:18'),(4,'admin','�����û�','io.renren.modules.sys.controller.SysUserController.save()','{\"userId\":2,\"username\":\"����\",\"password\":\"3647f8423dbf21e25a163a6c32f3866b04725ce575e2d6f1db77be4d651ed8ed\",\"salt\":\"Kl8wSQYXdpDrNeaL2eUT\",\"email\":\"xxx@exceple.com\",\"mobile\":\"123456789\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Aug 25, 2018 10:46:36 PM\",\"deptId\":4,\"deptName\":\"������\"}',179,'0:0:0:0:0:0:0:1','2018-08-25 22:46:36'),(5,'admin','�޸Ľ�ɫ','io.renren.modules.sys.controller.SysRoleController.update()','{\"roleId\":1,\"roleName\":\"��ͨ�û�\",\"remark\":\"��ͨ�û���Ӧ��ʵ�е���ʵ�û�\",\"deptId\":5,\"deptName\":\"���۲�\",\"menuIdList\":[51,41,42,44,46,47,49,52,53,55],\"deptIdList\":[],\"createTime\":\"Aug 25, 2018 8:41:18 PM\"}',33,'0:0:0:0:0:0:0:1','2018-08-25 22:48:01'),(6,'admin','�޸��û�','io.renren.modules.sys.controller.SysUserController.update()','{\"userId\":2,\"username\":\"����\",\"salt\":\"Kl8wSQYXdpDrNeaL2eUT\",\"email\":\"xxx@exceple.com\",\"mobile\":\"123456789\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Aug 25, 2018 10:46:36 PM\",\"deptId\":5,\"deptName\":\"���۲�\"}',330,'0:0:0:0:0:0:0:1','2018-08-28 23:28:35'),(7,'admin','�޸��û�','io.renren.modules.sys.controller.SysUserController.update()','{\"userId\":2,\"username\":\"����\",\"salt\":\"Kl8wSQYXdpDrNeaL2eUT\",\"email\":\"xxx@exceple.com\",\"mobile\":\"123456789\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Aug 25, 2018 10:46:36 PM\",\"deptId\":4,\"deptName\":\"������\"}',23778,'0:0:0:0:0:0:0:1','2018-08-28 23:29:38'),(8,'admin','�޸��û�','io.renren.modules.sys.controller.SysUserController.update()','{\"userId\":2,\"username\":\"����\",\"salt\":\"Kl8wSQYXdpDrNeaL2eUT\",\"email\":\"xxx@exceple.com\",\"mobile\":\"123456789\",\"status\":1,\"roleIdList\":[1],\"createTime\":\"Aug 25, 2018 10:46:36 PM\",\"deptId\":2,\"deptName\":\"��ɽ�ֹ�˾\"}',10568,'0:0:0:0:0:0:0:1','2018-08-28 23:30:03');

#
# Structure for table "sys_menu"
#

DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '���˵�ID��һ���˵�Ϊ0',
  `name` varchar(50) DEFAULT NULL COMMENT '�˵�����',
  `url` varchar(200) DEFAULT NULL COMMENT '�˵�URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '��Ȩ(����ö��ŷָ����磺user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '����   0��Ŀ¼   1���˵�   2����ť',
  `icon` varchar(50) DEFAULT NULL COMMENT '�˵�ͼ��',
  `order_num` int(11) DEFAULT NULL COMMENT '����',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='�˵�����';

#
# Data for table "sys_menu"
#

INSERT INTO `sys_menu` VALUES (1,0,'ϵͳ����',NULL,NULL,0,'fa fa-cog',0),(2,1,'����Ա����','modules/sys/user.html',NULL,1,'fa fa-user',1),(3,1,'��ɫ����','modules/sys/role.html',NULL,1,'fa fa-user-secret',2),(4,1,'�˵�����','modules/sys/menu.html',NULL,1,'fa fa-th-list',3),(5,1,'SQL���','druid/sql.html',NULL,1,'fa fa-bug',4),(6,1,'��ʱ����','modules/job/schedule.html',NULL,1,'fa fa-tasks',5),(7,6,'�鿴',NULL,'sys:schedule:list,sys:schedule:info',2,NULL,0),(8,6,'����',NULL,'sys:schedule:save',2,NULL,0),(9,6,'�޸�',NULL,'sys:schedule:update',2,NULL,0),(10,6,'ɾ��',NULL,'sys:schedule:delete',2,NULL,0),(11,6,'��ͣ',NULL,'sys:schedule:pause',2,NULL,0),(12,6,'�ָ�',NULL,'sys:schedule:resume',2,NULL,0),(13,6,'����ִ��',NULL,'sys:schedule:run',2,NULL,0),(14,6,'��־�б�',NULL,'sys:schedule:log',2,NULL,0),(15,2,'�鿴',NULL,'sys:user:list,sys:user:info',2,NULL,0),(16,2,'����',NULL,'sys:user:save,sys:role:select',2,NULL,0),(17,2,'�޸�',NULL,'sys:user:update,sys:role:select',2,NULL,0),(18,2,'ɾ��',NULL,'sys:user:delete',2,NULL,0),(19,3,'�鿴',NULL,'sys:role:list,sys:role:info',2,NULL,0),(20,3,'����',NULL,'sys:role:save,sys:menu:perms',2,NULL,0),(21,3,'�޸�',NULL,'sys:role:update,sys:menu:perms',2,NULL,0),(22,3,'ɾ��',NULL,'sys:role:delete',2,NULL,0),(23,4,'�鿴',NULL,'sys:menu:list,sys:menu:info',2,NULL,0),(24,4,'����',NULL,'sys:menu:save,sys:menu:select',2,NULL,0),(25,4,'�޸�',NULL,'sys:menu:update,sys:menu:select',2,NULL,0),(26,4,'ɾ��',NULL,'sys:menu:delete',2,NULL,0),(27,1,'��������','modules/sys/config.html','sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete',1,'fa fa-sun-o',6),(29,1,'ϵͳ��־','modules/sys/log.html','sys:log:list',1,'fa fa-file-text-o',7),(30,1,'�ļ��ϴ�','modules/oss/oss.html','sys:oss:all',1,'fa fa-file-image-o',6),(31,1,'���Ź���','modules/sys/dept.html',NULL,1,'fa fa-file-code-o',1),(32,31,'�鿴',NULL,'sys:dept:list,sys:dept:info',2,NULL,0),(33,31,'����',NULL,'sys:dept:save,sys:dept:select',2,NULL,0),(34,31,'�޸�',NULL,'sys:dept:update,sys:dept:select',2,NULL,0),(35,31,'ɾ��',NULL,'sys:dept:delete',2,NULL,0),(36,1,'�ֵ����','modules/sys/dict.html',NULL,1,'fa fa-bookmark-o',6),(37,36,'�鿴',NULL,'sys:dict:list,sys:dict:info',2,NULL,6),(38,36,'����',NULL,'sys:dict:save',2,NULL,6),(39,36,'�޸�',NULL,'sys:dict:update',2,NULL,6),(40,36,'ɾ��',NULL,'sys:dict:delete',2,NULL,6),(41,51,'�豸����','modules/sys/machines.html',NULL,1,'fa fa-file-code-o',6),(42,41,'�鿴',NULL,'sys:machines:list,sys:machines:info',2,NULL,6),(43,41,'����',NULL,'sys:machines:save',2,NULL,6),(44,41,'�޸�',NULL,'sys:machines:update',2,NULL,6),(45,41,'ɾ��',NULL,'sys:machines:delete',2,NULL,6),(46,51,'��λ����','modules/sys/repos.html',NULL,1,'fa fa-file-code-o',6),(47,46,'�鿴',NULL,'sys:repos:list,sys:repos:info',2,NULL,6),(48,46,'����',NULL,'sys:repos:save',2,NULL,6),(49,46,'�޸�',NULL,'sys:repos:update',2,NULL,6),(50,46,'ɾ��',NULL,'sys:repos:delete',2,NULL,6),(51,0,'ҵ�����',NULL,NULL,0,'fa fa-cog',1),(52,51,'��������','modules/sys/order.html',NULL,1,'fa fa-file-code-o',6),(53,52,'�鿴',NULL,'sys:order:list,sys:order:info',2,NULL,6),(54,52,'����',NULL,'sys:order:save',2,NULL,6),(55,52,'�޸�',NULL,'sys:order:update',2,NULL,6),(56,52,'ɾ��',NULL,'sys:order:delete',2,NULL,6);

#
# Structure for table "sys_oss"
#

DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL��ַ',
  `create_date` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ļ��ϴ�';

#
# Data for table "sys_oss"
#


#
# Structure for table "sys_role"
#

DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '��ɫ����',
  `remark` varchar(100) DEFAULT NULL COMMENT '��ע',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '����ID',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='��ɫ';

#
# Data for table "sys_role"
#

INSERT INTO `sys_role` VALUES (1,'��ͨ�û�','��ͨ�û���Ӧ��ʵ�е���ʵ�û�',5,'2018-08-25 20:41:18');

#
# Structure for table "sys_role_dept"
#

DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '��ɫID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '����ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɫ�벿�Ŷ�Ӧ��ϵ';

#
# Data for table "sys_role_dept"
#


#
# Structure for table "sys_role_menu"
#

DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '��ɫID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '�˵�ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='��ɫ��˵���Ӧ��ϵ';

#
# Data for table "sys_role_menu"
#

INSERT INTO `sys_role_menu` VALUES (6,1,51),(7,1,41),(8,1,42),(9,1,44),(10,1,46),(11,1,47),(12,1,49),(13,1,52),(14,1,53),(15,1,55);

#
# Structure for table "sys_user"
#

DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '�û���',
  `password` varchar(100) DEFAULT NULL COMMENT '����',
  `salt` varchar(20) DEFAULT NULL COMMENT '��',
  `email` varchar(100) DEFAULT NULL COMMENT '����',
  `mobile` varchar(100) DEFAULT NULL COMMENT '�ֻ���',
  `status` tinyint(4) DEFAULT NULL COMMENT '״̬  0������   1������',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '����ID',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='ϵͳ�û�';

#
# Data for table "sys_user"
#

INSERT INTO `sys_user` VALUES (1,'admin','e1153123d7d180ceeb820d577ff119876678732a68eef4e6ffc0b1f06a01f91b','YzcmCZNvbXocrsz9dm8e','root@renren.io','13612345678',1,1,'2016-11-11 11:11:11'),(2,'����','3647f8423dbf21e25a163a6c32f3866b04725ce575e2d6f1db77be4d651ed8ed','Kl8wSQYXdpDrNeaL2eUT','xxx@exceple.com','123456789',1,2,'2018-08-25 22:46:36');

#
# Structure for table "sys_user_role"
#

DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '��ɫID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='�û����ɫ��Ӧ��ϵ';

#
# Data for table "sys_user_role"
#

INSERT INTO `sys_user_role` VALUES (4,2,1);

#
# Structure for table "tb_order"
#

DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `machine_id` bigint(20) NOT NULL COMMENT '�豸id���',
  `create_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `last_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `status` int(11) DEFAULT '0' COMMENT '״̬ Ĭ��0 δ�黹�� 1 �ѹ黹�����ر�',
  `u_id` bigint(20) NOT NULL COMMENT '�û�ID���',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��������';

#
# Data for table "tb_order"
#


#
# Structure for table "tb_repos"
#

DROP TABLE IF EXISTS `tb_repos`;
CREATE TABLE `tb_repos` (
  `repos_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `name` varchar(50) DEFAULT NULL COMMENT '��λ���ƣ��磺A1, B22��',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`repos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��λ����';

#
# Data for table "tb_repos"
#


#
# Structure for table "tb_machines"
#

DROP TABLE IF EXISTS `tb_machines`;
CREATE TABLE `tb_machines` (
  `machines_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `machines_name` varchar(50) DEFAULT NULL COMMENT '�豸����',
  `machines_type` varchar(500) DEFAULT NULL COMMENT '�豸���',
  `machines_status` int(11) DEFAULT '0' COMMENT '�豸״̬ Ĭ��0������1��ά�ޣ�2�ѱ���',
  `machines_category` varchar(50) DEFAULT NULL COMMENT '�豸���� Ĭ�ϴ�ӡ��',
  `repo_id` bigint(20) NOT NULL COMMENT '�豸���ڲ�λ',
  PRIMARY KEY (`machines_id`),
  KEY `mr` (`repo_id`),
  CONSTRAINT `mr` FOREIGN KEY (`repo_id`) REFERENCES `tb_repos` (`repos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�豸����';

#
# Data for table "tb_machines"
#

