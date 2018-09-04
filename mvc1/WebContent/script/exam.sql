DROP TABLE IF EXISTS exam_user;
CREATE TABLE exam_user (
	user_id varchar(10) NOT NULL COMMENT '学号、老师号、管理员号',
	user_name varchar(45) NOT NULL COMMENT '姓名',
	password varchar(255) NOT NULL COMMENT '密码',
	tel varchar(20) DEFAULT NULL COMMENT '联系电话',
	email varchar(255) DEFAULT NULL COMMENT '邮箱',
	address varchar(255) DEFAULT NULL COMMENT '地址',
	birthday date NOT NULL COMMENT '生日',
	gender int(11) NOT NULL COMMENT '性别\n0：男，1：女',
	last_lock_time datetime DEFAULT '2016-01-01 00:00:00',
	login_fail_count tinyint(1) DEFAULT '0',
PRIMARY KEY (user_id)) ENGINE=InnoDB DEFAULT CHARSET=utf8;