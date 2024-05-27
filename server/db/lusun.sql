SET NAMES utf8mb4;

# Dump of table gen_table
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';



# Dump of table gen_table_column
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` int DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';



# Dump of table sys_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) NOT NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) NOT NULL DEFAULT '' COMMENT '岗位编码',
  `config_value` varchar(500) NOT NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) NOT NULL DEFAULT 'N' COMMENT '系统内置',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;

INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `status`, `del_flag`)
VALUES
	(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2024-05-27 09:37:01.000000','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow','0','0'),
	(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-05-27 09:37:01.000000','',NULL,'初始化密码 123456','0','0'),
	(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-05-27 09:37:01.000000','',NULL,'深色主题theme-dark，浅色主题theme-light','0','0'),
	(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2024-05-27 09:37:01.000000','',NULL,'是否开启验证码功能（true开启，false关闭）','0','0'),
	(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2024-05-27 09:37:01.000000','',NULL,'是否开启注册用户功能（true开启，false关闭）','0','0'),
	(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-05-27 09:37:01.000000','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）','0','0'),
	(100,'测试一下','sys.index.skinName','sys.index.skinName','N','','2024-05-27 16:26:10.344501','','2024-05-27 16:26:38.000000','sys.index.skinName','0','1');

/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_dept
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` int NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父部门ID',
  `ancestors` varchar(50) NOT NULL DEFAULT '0' COMMENT '祖级列表',
  `dept_name` varchar(30) NOT NULL COMMENT '部门名称',
  `order_num` int NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) NOT NULL COMMENT '负责人',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '联系电话',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;

INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(100,0,'0','原则科技',0,'nest-admin','15888888888','ry@qq.com','0','0','admin','2024-05-27 09:37:00.000000','','2024-05-27 18:11:18.000000',NULL),
	(101,100,'0,100','深圳总公司',1,'nest-admin','15888888888','ry@qq.com','0','0','admin','2024-05-27 09:37:00.000000','',NULL,NULL),
	(102,100,'0,100','长沙分公司',2,'nest-admin','15888888888','ry@qq.com','0','1','admin','2024-05-27 09:37:00.000000','','2024-05-27 18:11:42.000000',NULL),
	(103,101,'0,100,101','研发部门',1,'nest-admin','15888888888','ry@qq.com','0','0','admin','2024-05-27 09:37:00.000000','',NULL,NULL),
	(104,101,'0,100,101','市场部门',2,'nest-admin','15888888888','ry@qq.com','0','0','admin','2024-05-27 09:37:00.000000','',NULL,NULL),
	(105,101,'0,100,101','测试部门',3,'nest-admin','15888888888','ry@qq.com','0','0','admin','2024-05-27 09:37:00.000000','',NULL,NULL),
	(106,101,'0,100,101','财务部门',4,'nest-admin','15888888888','ry@qq.com','0','0','admin','2024-05-27 09:37:00.000000','',NULL,NULL),
	(107,101,'0,100,101','运维部门',5,'nest-admin','15888888888','ry@qq.com','0','0','admin','2024-05-27 09:37:00.000000','',NULL,NULL),
	(108,102,'0,100,102','市场部门',1,'nest-admin','15888888888','ry@qq.com','0','1','admin','2024-05-27 09:37:00.000000','','2024-05-27 18:11:45.000000',NULL),
	(109,102,'0,100,102','财务部门',2,'nest-admin','15888888888','ry@qq.com','0','1','admin','2024-05-27 09:37:00.000000','','2024-05-27 18:11:47.000000',NULL),
	(200,100,'0,100','研发部',1,'阿博','','','0','0','','2024-05-27 18:12:04.921123','','2024-05-27 18:12:04.921123',NULL);

/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_dict_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` int NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_sort` int NOT NULL DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) NOT NULL COMMENT '字典标签',
  `dict_value` varchar(100) NOT NULL COMMENT '字典键值',
  `dict_type` varchar(100) NOT NULL COMMENT '字典类型',
  `css_class` varchar(100) NOT NULL DEFAULT '' COMMENT '样式属性',
  `list_class` varchar(100) NOT NULL COMMENT '表格回显样式',
  `is_default` char(1) NOT NULL DEFAULT 'N' COMMENT '是否默认',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;

INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`)
VALUES
	(1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-05-27 09:37:01.000000','',NULL,'性别男','0'),
	(2,2,'女','1','sys_user_sex','','','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'性别女','0'),
	(3,3,'未知','2','sys_user_sex','','','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'性别未知','0'),
	(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-05-27 09:37:01.000000','',NULL,'显示菜单','0'),
	(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'隐藏菜单','0'),
	(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-05-27 09:37:01.000000','',NULL,'正常状态','0'),
	(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'停用状态','0'),
	(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-05-27 09:37:01.000000','',NULL,'正常状态','0'),
	(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'停用状态','0'),
	(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-05-27 09:37:01.000000','',NULL,'默认分组','0'),
	(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'系统分组','0'),
	(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-05-27 09:37:01.000000','',NULL,'系统默认是','0'),
	(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'系统默认否','0'),
	(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-05-27 09:37:01.000000','',NULL,'通知','0'),
	(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'公告','0'),
	(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-05-27 09:37:01.000000','',NULL,'正常状态','0'),
	(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'关闭状态','0'),
	(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'其他操作','0'),
	(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'新增操作','0'),
	(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'修改操作','0'),
	(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'删除操作','0'),
	(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'授权操作','0'),
	(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'导出操作','0'),
	(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'导入操作','0'),
	(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'强退操作','0'),
	(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'生成操作','0'),
	(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'清空操作','0'),
	(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'正常状态','0'),
	(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-05-27 09:37:01.000000','',NULL,'停用状态','0');

/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_dict_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` int NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) NOT NULL COMMENT '字典名称',
  `dict_type` varchar(100) NOT NULL COMMENT '字典类型',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `IDX_f4e4273658733a3bbe6a2479bf` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;

INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`)
VALUES
	(1,'用户性别','sys_user_sex','0','admin','2024-05-27 09:37:01.000000','',NULL,'用户性别列表','0'),
	(2,'菜单状态','sys_show_hide','0','admin','2024-05-27 09:37:01.000000','',NULL,'菜单状态列表','0'),
	(3,'系统开关','sys_normal_disable','0','admin','2024-05-27 09:37:01.000000','',NULL,'系统开关列表','0'),
	(4,'任务状态','sys_job_status','0','admin','2024-05-27 09:37:01.000000','',NULL,'任务状态列表','0'),
	(5,'任务分组','sys_job_group','0','admin','2024-05-27 09:37:01.000000','',NULL,'任务分组列表','0'),
	(6,'系统是否','sys_yes_no','0','admin','2024-05-27 09:37:01.000000','',NULL,'系统是否列表','0'),
	(7,'通知类型','sys_notice_type','0','admin','2024-05-27 09:37:01.000000','',NULL,'通知类型列表','0'),
	(8,'通知状态','sys_notice_status','0','admin','2024-05-27 09:37:01.000000','',NULL,'通知状态列表','0'),
	(9,'操作类型','sys_oper_type','0','admin','2024-05-27 09:37:01.000000','',NULL,'操作类型列表','0'),
	(10,'系统状态','sys_common_status','0','admin','2024-05-27 09:37:01.000000','',NULL,'登录状态列表','0');

/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_job
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` int NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;

INSERT INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-05-27 09:37:01','',NULL,''),
	(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-05-27 09:37:01','',NULL,''),
	(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-05-27 09:37:01','',NULL,'');

/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_job_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` int NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';



# Dump of table sys_logininfor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` int NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) NOT NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) NOT NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) NOT NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) NOT NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `msg` varchar(255) NOT NULL DEFAULT '' COMMENT '提示消息',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `login_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;

INSERT INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `login_location`, `browser`, `os`, `status`, `msg`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`, `login_time`)
VALUES
	(100,'admin','::1','北京市海淀区 联通ADSL','Chrome 125.0.0','Mac OS X','0','登录成功','','2024-05-27 09:38:11.341060','','2024-05-27 09:38:11.341060',NULL,'0','2024-05-27 09:38:11.341060'),
	(101,'admin','127.0.0.1',' 本机地址','Chrome 125.0.0','Mac OS X','0','登录成功','','2024-05-27 14:30:38.879015','','2024-05-27 14:30:38.879015',NULL,'0','2024-05-27 14:30:38.879015'),
	(102,'admin','::1','北京市 联通','Chrome 125.0.0','Mac OS X','0','登录成功','','2024-05-27 15:04:14.218302','','2024-05-27 15:04:14.218302',NULL,'0','2024-05-27 15:04:14.218302');

/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` int NOT NULL COMMENT '父菜单ID',
  `order_num` int NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) NOT NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) NOT NULL DEFAULT '' COMMENT '路由参数',
  `is_frame` char(1) NOT NULL DEFAULT '1' COMMENT '是否为外链',
  `is_cache` char(1) NOT NULL DEFAULT '0' COMMENT '是否缓存',
  `menu_type` char(1) NOT NULL DEFAULT 'M' COMMENT '菜单类型',
  `visible` char(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `perms` varchar(100) NOT NULL DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;

INSERT INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`)
VALUES
	(1,'系统管理',0,1,'system',NULL,'','1','0','M','0','0','','system','admin','2024-05-27 09:37:00.000000','',NULL,'系统管理目录','0'),
	(2,'系统监控',0,2,'monitor',NULL,'','1','0','M','0','0','','monitor','admin','2024-05-27 09:37:00.000000','',NULL,'系统监控目录','0'),
	(3,'系统工具',0,3,'tool',NULL,'','1','0','M','0','0','','tool','admin','2024-05-27 09:37:00.000000','',NULL,'系统工具目录','0'),
	(4,'nest-admin官网',0,4,'https://nest-admin.dooring.vip',NULL,'','0','0','M','0','0','','guide','admin','2024-05-27 09:37:00.000000','','2024-05-27 13:46:14.000000','nest-admin官网地址','1'),
	(100,'用户管理',1,1,'user','system/user/index','','1','0','C','0','0','system:user:list','user','admin','2024-05-27 09:37:00.000000','',NULL,'用户管理菜单','0'),
	(101,'角色管理',1,2,'role','system/role/index','','1','0','C','0','0','system:role:list','peoples','admin','2024-05-27 09:37:00.000000','',NULL,'角色管理菜单','0'),
	(102,'菜单管理',1,3,'menu','system/menu/index','','1','0','C','0','0','system:menu:list','tree-table','admin','2024-05-27 09:37:00.000000','',NULL,'菜单管理菜单','0'),
	(103,'部门管理',1,4,'dept','system/dept/index','','1','0','C','0','0','system:dept:list','tree','admin','2024-05-27 09:37:00.000000','',NULL,'部门管理菜单','0'),
	(104,'岗位管理',1,5,'post','system/post/index','','1','0','C','0','0','system:post:list','post','admin','2024-05-27 09:37:00.000000','',NULL,'岗位管理菜单','0'),
	(105,'字典管理',1,6,'dict','system/dict/index','','1','0','C','0','0','system:dict:list','dict','admin','2024-05-27 09:37:00.000000','',NULL,'字典管理菜单','0'),
	(106,'参数设置',1,7,'config','system/config/index','','1','0','C','0','0','system:config:list','edit','admin','2024-05-27 09:37:00.000000','',NULL,'参数设置菜单','0'),
	(107,'通知公告',1,8,'notice','system/notice/index','','1','0','C','0','0','system:notice:list','message','admin','2024-05-27 09:37:00.000000','',NULL,'通知公告菜单','0'),
	(108,'日志管理',1,9,'log','','','1','0','M','0','0','','log','admin','2024-05-27 09:37:00.000000','',NULL,'日志管理菜单','0'),
	(109,'在线用户',2,1,'online','monitor/online/index','','1','0','C','0','0','monitor:online:list','online','admin','2024-05-27 09:37:00.000000','',NULL,'在线用户菜单','0'),
	(110,'定时任务',2,2,'job','monitor/job/index','','1','0','C','0','0','monitor:job:list','job','admin','2024-05-27 09:37:00.000000','',NULL,'定时任务菜单','0'),
	(111,'数据监控',2,3,'druid','monitor/druid/index','','1','0','C','0','0','monitor:druid:list','druid','admin','2024-05-27 09:37:00.000000','',NULL,'数据监控菜单','0'),
	(112,'服务监控',2,4,'server','monitor/server/index','','1','0','C','0','0','monitor:server:list','server','admin','2024-05-27 09:37:00.000000','',NULL,'服务监控菜单','0'),
	(113,'缓存监控',2,5,'cache','monitor/cache/index','','1','0','C','0','0','monitor:cache:list','redis','admin','2024-05-27 09:37:00.000000','',NULL,'缓存监控菜单','0'),
	(114,'缓存列表',2,6,'cacheList','monitor/cache/list','','1','0','C','0','0','monitor:cache:list','redis-list','admin','2024-05-27 09:37:00.000000','',NULL,'缓存列表菜单','0'),
	(115,'表单构建',3,1,'build','tool/build/index','','1','0','C','0','0','tool:build:list','build','admin','2024-05-27 09:37:00.000000','',NULL,'表单构建菜单','0'),
	(116,'代码生成',3,2,'gen','tool/gen/index','','1','0','C','0','0','tool:gen:list','code','admin','2024-05-27 09:37:00.000000','',NULL,'代码生成菜单','0'),
	(117,'系统接口',3,3,'swagger','tool/swagger/index','','1','0','C','0','0','tool:swagger:list','swagger','admin','2024-05-27 09:37:00.000000','',NULL,'系统接口菜单','0'),
	(500,'操作日志',108,1,'operlog','system/operlog/index','','1','0','C','0','1','system:operlog:list','form','admin','2024-05-27 09:37:00.000000','','2024-05-27 18:08:53.000000','操作日志菜单','0'),
	(501,'登录日志',108,2,'logininfor','system/logininfor/index','','1','0','C','0','0','system:logininfor:list','logininfor','admin','2024-05-27 09:37:00.000000','','2024-05-27 17:50:30.000000','登录日志菜单','0'),
	(1000,'用户查询',100,1,'','','','1','0','F','0','0','system:user:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1001,'用户新增',100,2,'','','','1','0','F','0','0','system:user:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1002,'用户修改',100,3,'','','','1','0','F','0','0','system:user:edit','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1003,'用户删除',100,4,'','','','1','0','F','0','0','system:user:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1004,'用户导出',100,5,'','','','1','0','F','0','0','system:user:export','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1005,'用户导入',100,6,'','','','1','0','F','0','0','system:user:import','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1006,'重置密码',100,7,'','','','1','0','F','0','0','system:user:resetPwd','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1007,'角色查询',101,1,'','','','1','0','F','0','0','system:role:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1008,'角色新增',101,2,'','','','1','0','F','0','0','system:role:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1009,'角色修改',101,3,'','','','1','0','F','0','0','system:role:edit','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1010,'角色删除',101,4,'','','','1','0','F','0','0','system:role:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1011,'角色导出',101,5,'','','','1','0','F','0','0','system:role:export','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1012,'菜单查询',102,1,'','','','1','0','F','0','0','system:menu:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1013,'菜单新增',102,2,'','','','1','0','F','0','0','system:menu:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1014,'菜单修改',102,3,'','','','1','0','F','0','0','system:menu:edit','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1015,'菜单删除',102,4,'','','','1','0','F','0','0','system:menu:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1016,'部门查询',103,1,'','','','1','0','F','0','0','system:dept:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1017,'部门新增',103,2,'','','','1','0','F','0','0','system:dept:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1018,'部门修改',103,3,'','','','1','0','F','0','0','system:dept:edit','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1019,'部门删除',103,4,'','','','1','0','F','0','0','system:dept:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1020,'岗位查询',104,1,'','','','1','0','F','0','0','system:post:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1021,'岗位新增',104,2,'','','','1','0','F','0','0','system:post:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1022,'岗位修改',104,3,'','','','1','0','F','0','0','system:post:edit','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1023,'岗位删除',104,4,'','','','1','0','F','0','0','system:post:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1024,'岗位导出',104,5,'','','','1','0','F','0','0','system:post:export','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1025,'字典查询',105,1,'#','','','1','0','F','0','0','system:dict:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1026,'字典新增',105,2,'#','','','1','0','F','0','0','system:dict:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1027,'字典修改',105,3,'#','','','1','0','F','0','0','system:dict:edit','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1028,'字典删除',105,4,'#','','','1','0','F','0','0','system:dict:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1029,'字典导出',105,5,'#','','','1','0','F','0','0','system:dict:export','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1030,'参数查询',106,1,'#','','','1','0','F','0','0','system:config:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1031,'参数新增',106,2,'#','','','1','0','F','0','0','system:config:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1032,'参数修改',106,3,'#','','','1','0','F','0','0','system:config:edit','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1033,'参数删除',106,4,'#','','','1','0','F','0','0','system:config:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1034,'参数导出',106,5,'#','','','1','0','F','0','0','system:config:export','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1035,'公告查询',107,1,'#','','','1','0','F','0','0','system:notice:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1036,'公告新增',107,2,'#','','','1','0','F','0','0','system:notice:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1037,'公告修改',107,3,'#','','','1','0','F','0','0','system:notice:edit','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1038,'公告删除',107,4,'#','','','1','0','F','0','0','system:notice:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1039,'操作查询',500,1,'#','','','1','0','F','0','0','monitor:operlog:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1040,'操作删除',500,2,'#','','','1','0','F','0','0','monitor:operlog:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1041,'日志导出',500,3,'#','','','1','0','F','0','0','monitor:operlog:export','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1042,'登录查询',501,1,'#','','','1','0','F','0','0','monitor:logininfor:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1043,'登录删除',501,2,'#','','','1','0','F','0','0','monitor:logininfor:remove','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1044,'日志导出',501,3,'#','','','1','0','F','0','0','monitor:logininfor:export','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1045,'账户解锁',501,4,'#','','','1','0','F','0','0','monitor:logininfor:unlock','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1046,'在线查询',109,1,'#','','','1','0','F','0','0','monitor:online:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1047,'批量强退',109,2,'#','','','1','0','F','0','0','monitor:online:batchLogout','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1048,'单条强退',109,3,'#','','','1','0','F','0','0','monitor:online:forceLogout','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1049,'任务查询',110,1,'#','','','1','0','F','0','0','monitor:job:query','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1050,'任务新增',110,2,'#','','','1','0','F','0','0','monitor:job:add','#','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(1051,'任务修改',110,3,'#','','','1','0','F','0','0','monitor:job:edit','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1052,'任务删除',110,4,'#','','','1','0','F','0','0','monitor:job:remove','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1053,'状态修改',110,5,'#','','','1','0','F','0','0','monitor:job:changeStatus','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1054,'任务导出',110,6,'#','','','1','0','F','0','0','monitor:job:export','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1055,'生成查询',116,1,'#','','','1','0','F','0','0','tool:gen:query','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1056,'生成修改',116,2,'#','','','1','0','F','0','0','tool:gen:edit','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1057,'生成删除',116,3,'#','','','1','0','F','0','0','tool:gen:remove','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1058,'导入代码',116,4,'#','','','1','0','F','0','0','tool:gen:import','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1059,'预览代码',116,5,'#','','','1','0','F','0','0','tool:gen:preview','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(1060,'生成代码',116,6,'#','','','1','0','F','0','0','tool:gen:code','#','admin','2024-05-27 09:37:01.000000','',NULL,'','0'),
	(2000,'测试菜单',1,0,'admintest',NULL,'','1','0','M','0','0','','cascader','','2024-05-27 14:31:19.898414','','2024-05-27 14:32:01.000000',NULL,'1');

/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_notice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL DEFAULT '' COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型',
  `notice_content` longtext COMMENT '公告内容',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;

INSERT INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `del_flag`, `remark`)
VALUES
	(1,'温馨提醒：2018-07-01 nest-admin新版本发布啦','2','新版本内容','0','admin','2024-05-27 09:37:01.000000','',NULL,'0',NULL),
	(2,'维护通知：2018-07-01 nest-admin系统凌晨维护','1','维护内容','0','admin','2024-05-27 09:37:01.000000','',NULL,'0',NULL);

/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_oper_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` int NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NOT NULL DEFAULT '0' COMMENT '业务类型',
  `method` varchar(100) NOT NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) NOT NULL DEFAULT '' COMMENT '请求方式',
  `oper_name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) NOT NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) NOT NULL DEFAULT '' COMMENT '请求URL',
  `oper_location` varchar(255) NOT NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) NOT NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) NOT NULL DEFAULT '' COMMENT '返回参数',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '登录状态',
  `error_msg` varchar(2000) NOT NULL DEFAULT '' COMMENT '错误消息',
  `cost_time` int NOT NULL DEFAULT '0' COMMENT '消耗时间',
  `operator_type` int NOT NULL DEFAULT '0' COMMENT '操作类别',
  `oper_ip` varchar(255) NOT NULL DEFAULT '' COMMENT '主机地址',
  `oper_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;

INSERT INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `oper_name`, `dept_name`, `oper_url`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `cost_time`, `operator_type`, `oper_ip`, `oper_time`)
VALUES
	(1,'',0,'','','','','','','','','0','',0,0,'','2024-05-27 18:05:45.682015');

/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` int NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;

INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `del_flag`)
VALUES
	(1,'ceo','董事长',1,'0','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(2,'se','项目经理',2,'0','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(3,'hr','人力资源',3,'0','admin','2024-05-27 09:37:00.000000','',NULL,'','0'),
	(4,'user','普通员工',4,'0','admin','2024-05-27 09:37:00.000000','','2024-05-27 18:09:47.000000','','1'),
	(5,'1','测试',1,'0','','2024-05-27 16:14:57.127908','','2024-05-27 16:15:05.000000','测试','1'),
	(6,'4','运营专员',4,'0','','2024-05-27 18:10:14.791059','','2024-05-27 18:10:14.791059','运营专员','0');

/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL DEFAULT '0' COMMENT '显示顺序',
  `data_scope` char(1) NOT NULL DEFAULT '1' COMMENT '数据范围',
  `menu_check_strictly` tinyint NOT NULL DEFAULT '0' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint NOT NULL DEFAULT '0' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;

INSERT INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`)
VALUES
	(1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2024-05-27 09:37:00.000000','',NULL,'超级管理员'),
	(2,'普通角色','common',2,'2',1,1,'0','0','admin','2024-05-27 09:37:00.000000','',NULL,'普通角色');

/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_role_dept
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` int NOT NULL DEFAULT '0' COMMENT '角色ID',
  `dept_id` int NOT NULL DEFAULT '0' COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;

INSERT INTO `sys_role_dept` (`role_id`, `dept_id`)
VALUES
	(2,100),
	(2,101),
	(2,105);

/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_role_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` int NOT NULL DEFAULT '0' COMMENT '角色ID',
  `menu_id` int NOT NULL DEFAULT '0' COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;

INSERT INTO `sys_role_menu` (`role_id`, `menu_id`)
VALUES
	(2,1),
	(2,2),
	(2,3),
	(2,4),
	(2,100),
	(2,101),
	(2,102),
	(2,103),
	(2,104),
	(2,105),
	(2,106),
	(2,107),
	(2,108),
	(2,109),
	(2,110),
	(2,111),
	(2,112),
	(2,113),
	(2,114),
	(2,115),
	(2,116),
	(2,117),
	(2,500),
	(2,501),
	(2,1000),
	(2,1001),
	(2,1002),
	(2,1003),
	(2,1004),
	(2,1005),
	(2,1006),
	(2,1007),
	(2,1008),
	(2,1009),
	(2,1010),
	(2,1011),
	(2,1012),
	(2,1013),
	(2,1014),
	(2,1015),
	(2,1016),
	(2,1017),
	(2,1018),
	(2,1019),
	(2,1020),
	(2,1021),
	(2,1022),
	(2,1023),
	(2,1024),
	(2,1025),
	(2,1026),
	(2,1027),
	(2,1028),
	(2,1029),
	(2,1030),
	(2,1031),
	(2,1032),
	(2,1033),
	(2,1034),
	(2,1035),
	(2,1036),
	(2,1037),
	(2,1038),
	(2,1039),
	(2,1040),
	(2,1041),
	(2,1042),
	(2,1043),
	(2,1044),
	(2,1045),
	(2,1046),
	(2,1047),
	(2,1048),
	(2,1049),
	(2,1050),
	(2,1051),
	(2,1052),
	(2,1053),
	(2,1054),
	(2,1055),
	(2,1056),
	(2,1057),
	(2,1058),
	(2,1059),
	(2,1060);

/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_upload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_upload`;

CREATE TABLE `sys_upload` (
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `upload_id` varchar(255) NOT NULL COMMENT '任务Id',
  `size` int NOT NULL COMMENT '文件大小',
  `file_name` varchar(255) NOT NULL COMMENT '文件路径',
  `new_file_name` varchar(255) NOT NULL COMMENT '文件名',
  `url` varchar(255) NOT NULL COMMENT '文件地址',
  `ext` varchar(255) DEFAULT NULL COMMENT '拓展名',
  PRIMARY KEY (`upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文件上传记录';



# Dump of table sys_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` int DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) NOT NULL DEFAULT '00' COMMENT '用户类型',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `phonenumber` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `password` varchar(200) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标志',
  `login_ip` varchar(128) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(6) DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像地址',
  `login_date` timestamp NOT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;

INSERT INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `password`, `status`, `del_flag`, `login_ip`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`, `avatar`, `login_date`)
VALUES
	(1,100,'admin','nest-admin','00','ry@163.com','15888888888','1','$2b$10$d4Z9Iq.v9J4pjX55I9mzRuPHsOMKLupOqxlb/UfbD9oYsYxd5ezeS','0','0','127.0.0.1','admin','2024-05-27 09:37:00.000000','','2024-05-27 18:12:45.000000','管理员','','2024-05-27 15:04:14'),
	(2,100,'ry','nest-admin','00','ry@qq.com','15666666666','1','$2b$10$d4Z9Iq.v9J4pjX55I9mzRuPHsOMKLupOqxlb/UfbD9oYsYxd5ezeS','0','0','127.0.0.1','admin','2024-05-27 09:37:00.000000','','2024-05-27 18:12:51.000000','测试员','','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_user_post
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` int NOT NULL COMMENT '用户ID',
  `post_id` int NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;

INSERT INTO `sys_user_post` (`user_id`, `post_id`)
VALUES
	(1,1),
	(2,2);

/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sys_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` int NOT NULL COMMENT '用户ID',
  `role_id` int NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;

INSERT INTO `sys_user_role` (`user_id`, `role_id`)
VALUES
	(1,1),
	(2,2);

UNLOCK TABLES;


