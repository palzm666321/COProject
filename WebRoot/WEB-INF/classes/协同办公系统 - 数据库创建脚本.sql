-- 删除office数据库
DROP DATABASE IF EXISTS office ;

-- 创建office数据库
CREATE DATABASE office CHARACTER SET UTF8 ;

-- 使用数据库
USE office ;

-- 1、删除角色-权限组表 
DROP TABLE IF EXISTS role_groups ;
-- 2、删除数据表 —— 文档表
DROP TABLE IF EXISTS document;
-- 3、删除数据表 —— 文档类型表
DROP TABLE IF EXISTS doctype;
-- 4、删除数据表 —— 公告-用户记录表
DROP TABLE IF EXISTS user_notice;
-- 5、删除数据表 —— 公告表
DROP TABLE IF EXISTS notice;
-- 6、删除数据表 —— 任务表
DROP TABLE IF EXISTS task;
-- 7、删除数据表 —— 任务类型表
DROP TABLE IF EXISTS tasktype;
-- 8、删除数据表 —— 项目表
DROP TABLE IF EXISTS project;
-- 9、删除数据表 —— 用户表
DROP TABLE IF EXISTS user;
-- 10、删除数据表 —— 角色表
DROP TABLE IF EXISTS role;
-- 11、删除数据表 —— 权限表
DROP TABLE IF EXISTS action;
-- 12、删除数据表 —— 权限组表
DROP TABLE IF EXISTS groups;


-- 创建角色表
CREATE TABLE role (
	rid					INT	AUTO_INCREMENT ,
	title				VARCHAR(50)	NOT NULL ,
	note				TEXT,
	CONSTRAINT pk_rid PRIMARY KEY(rid)
) engine=innodb ;
-- 创建权限组表 
CREATE TABLE groups (
	gid				INT 		AUTO_INCREMENT ,
	title			VARCHAR(50),
	note			TEXT,
	CONSTRAINT pk_gid PRIMARY KEY(gid)
);
-- 创建权限表
CREATE TABLE action (
	actid				INT	AUTO_INCREMENT ,
	title				VARCHAR(50)	NOT NULL ,
	url					VARCHAR(200)	NOT NULL ,
	gid					INT ,
	CONSTRAINT pk_actid PRIMARY KEY(actid) ,
	CONSTRAINT fk_gid5 FOREIGN KEY(gid) REFERENCES groups(gid) ON DELETE CASCADE 
) engine=innodb ;

-- 创建角色-权限关系表
CREATE TABLE role_groups (
	rid					INT	,
	gid					INT ,
	CONSTRAINT fk_rid1 FOREIGN KEY(rid) REFERENCES role(rid) ON DELETE CASCADE ,
	CONSTRAINT fk_gid6 FOREIGN KEY(gid) REFERENCES groups(gid) ON DELETE CASCADE
) engine=innodb ;

-- 创建用户表
CREATE TABLE user (
	userid				VARCHAR(50) ,
	password			VARCHAR(32)	NOT NULL ,
	name				VARCHAR(50)	NOT NULL ,
	level				INT		NOT NULL ,
	phone				VARCHAR(50),
	email				VARCHAR(50),
	photo				VARCHAR(200)	DEFAULT 'nophoto.jpg',
	rid					INT,
	lastlogin			DATETIME,
	lockflag			INT,
	CONSTRAINT pk_userid PRIMARY KEY (userid) ,
	CONSTRAINT fk_rid2 FOREIGN KEY(rid) REFERENCES role(rid) ON DELETE SET NULL
) engine=innodb ;

-- 创建公告表
CREATE TABLE notice (
	snid				INT	AUTO_INCREMENT ,
	userid				VARCHAR(50),
	title				VARCHAR(50),
	pubdate				DATETIME,
	content				TEXT,
	level				INT,
	rnum				INT	,
	CONSTRAINT pk_snid PRIMARY KEY(snid) ,
	CONSTRAINT fk_userid7 FOREIGN KEY(userid) REFERENCES user(userid)
) engine=innodb ;

-- 创建用户公告阅读记录信息表
CREATE TABLE user_notice (
	userid				VARCHAR(50),
	snid				INT,
	rdate				DATETIME ,
	CONSTRAINT fk_userid3 FOREIGN KEY(userid) REFERENCES user(userid) ON DELETE CASCADE ,
	CONSTRAINT fk_snid3 FOREIGN KEY(snid) REFERENCES notice(snid) ON DELETE CASCADE 
) engine=innodb;

-- 创建文档类型表
CREATE TABLE doctype (
	dtid				INT 	AUTO_INCREMENT ,
	title				VARCHAR(50)	NOT NULL ,
	CONSTRAINT pk_dtid PRIMARY KEY (dtid)
) engine=innodb ;

-- 创建文档表
CREATE TABLE document (
	did					INT 	AUTO_INCREMENT ,
	userid				VARCHAR(50),
	dtid				INT,
	title				VARCHAR(50)	NOT NULL ,
	content				TEXT,
	file				VARCHAR(200),
	pubdate				DATETIME,
	CONSTRAINT pk_did PRIMARY KEY (did) ,
	CONSTRAINT fk_dtid FOREIGN KEY(dtid) REFERENCES doctype(dtid) ,
	CONSTRAINT fk_userid FOREIGN KEY(userid) REFERENCES user(userid)
) engine=innodb ;

-- 创建项目表
CREATE TABLE project (
	proid				INT 	AUTO_INCREMENT ,
	creid				VARCHAR(50),
	title				VARCHAR(50),
	mgr					VARCHAR(50),
	name				VARCHAR(50),
	note				TEXT,
	pubdate				DATETIME,
	CONSTRAINT pk_proid PRIMARY KEY(proid) ,
	CONSTRAINT fk_creid FOREIGN KEY(creid) REFERENCES user(userid) ON DELETE SET NULL ,
	CONSTRAINT fk_mgr FOREIGN KEY(mgr) REFERENCES user(userid) ON DELETE SET NULL
) engine=innodb ;

-- 创建任务类型表
CREATE TABLE tasktype (
	ttid				INT  	AUTO_INCREMENT ,
	title				VARCHAR(50)	NOT NULL ,
	CONSTRAINT pk_ttid PRIMARY KEY(ttid)
) engine=innodb ;

-- 创建任务表
CREATE TABLE task (
	tid				INT 	AUTO_INCREMENT ,
	creator				VARCHAR(50),
	receiver			VARCHAR(50),
	canceler			VARCHAR(50),
	ttid				INT,
	proid				INT,
	title				VARCHAR(50),
	expiredate			DATETIME,
	createdate			DATETIME,
	finishdate 			DATETIME,
	status				INT,
	lastupdatedate		DATETIME ,
	priority			INT ,
	expend				INT,
	estimate			INT,
	note				TEXT,
	rnote				TEXT,
	cnote				TEXT,
	CONSTRAINT pk_tid PRIMARY KEY(tid) ,
	CONSTRAINT fk_creator FOREIGN KEY(creator) REFERENCES user(userid) ON DELETE SET NULL ,
	CONSTRAINT fk_receiver FOREIGN KEY(receiver) REFERENCES user(userid) ON DELETE SET NULL ,
	CONSTRAINT fk_canceler FOREIGN KEY(canceler) REFERENCES user(userid) ON DELETE SET NULL ,
	CONSTRAINT fk_ttid FOREIGN KEY(ttid) REFERENCES tasktype(ttid) ON DELETE SET NULL ,
	CONSTRAINT fk_proid FOREIGN KEY(proid) REFERENCES project(proid) ON DELETE CASCADE
) engine=innodb ;

-- 测试数据 —— 角色信息
INSERT INTO role(title,note) VALUES ('超级管理员组','-') ;
INSERT INTO role(title,note) VALUES ('普通管理员组','-') ;
INSERT INTO role(title,note) VALUES ('信息管理员组','-') ;
INSERT INTO role(title,note) VALUES ('项目经理','-') ;
INSERT INTO role(title,note) VALUES ('普通员工','-') ;

-- 测试数据 —— 用户表（密码：hello）
INSERT INTO user(userid,name,password,level,photo,rid) VALUES ('admin','超级管理员','5D41402ABC4B2A76B9719D911017C592',0,'nophoto.jpg',1) ;
INSERT INTO user(userid,name,password,level,photo,rid) VALUES ('root','普通管理员','5D41402ABC4B2A76B9719D911017C592',1,'nophoto.jpg',2) ;
INSERT INTO user(userid,name,password,level,photo,rid) VALUES ('info','信息管理员','5D41402ABC4B2A76B9719D911017C592',1,'nophoto.jpg',3) ;
INSERT INTO user(userid,name,password,level,photo,rid) VALUES ('mldnmanager','MLDN项目经理','5D41402ABC4B2A76B9719D911017C592',2,'nophoto.jpg',4) ;
INSERT INTO user(userid,name,password,level,photo,rid) VALUES ('mldnemp','MLDN开发人员','5D41402ABC4B2A76B9719D911017C592',3,'nophoto.jpg',5) ;

-- 测试数据 —— 权限组
INSERT INTO groups(title,note) VALUES ('用户管理','-') ;
INSERT INTO groups(title,note) VALUES ('公告管理','-') ;
INSERT INTO groups(title,note) VALUES ('项目管理','-') ;
INSERT INTO groups(title,note) VALUES ('文档管理','-') ;
INSERT INTO groups(title,note) VALUES ('权限管理','-') ;

INSERT INTO groups(title,note) VALUES ('文档管理','-') ;
INSERT INTO groups(title,note) VALUES ('项目管理','-') ;
INSERT INTO groups(title,note) VALUES ('公告管理','-') ;

INSERT INTO groups(title,note) VALUES ('文档管理','-') ;
INSERT INTO groups(title,note) VALUES ('项目管理','-') ;
INSERT INTO groups(title,note) VALUES ('公告管理','-') ;


-- 测试数据 —— 管理员-权限组关系
INSERT INTO role_groups(rid,gid) VALUES (1,1) ;
INSERT INTO role_groups(rid,gid) VALUES (1,2) ;
INSERT INTO role_groups(rid,gid) VALUES (1,3) ;
INSERT INTO role_groups(rid,gid) VALUES (1,4) ;
INSERT INTO role_groups(rid,gid) VALUES (1,5) ;

INSERT INTO role_groups(rid,gid) VALUES (2,1) ;
INSERT INTO role_groups(rid,gid) VALUES (2,2) ;
INSERT INTO role_groups(rid,gid) VALUES (2,3) ;
INSERT INTO role_groups(rid,gid) VALUES (2,4) ;

INSERT INTO role_groups(rid,gid) VALUES (3,2) ;
INSERT INTO role_groups(rid,gid) VALUES (3,4) ;

INSERT INTO role_groups(rid,gid) VALUES (4,6) ;
INSERT INTO role_groups(rid,gid) VALUES (4,7) ;
INSERT INTO role_groups(rid,gid) VALUES (4,8) ;

INSERT INTO role_groups(rid,gid) VALUES (5,9) ;
INSERT INTO role_groups(rid,gid) VALUES (5,10) ;
INSERT INTO role_groups(rid,gid) VALUES (5,11) ;

-- 测试数据 —— 管理员权限
INSERT INTO action(title,url,gid) VALUES ('添加用户','/pages/jsp/admin/user/UserActionAdmin!insertPre.action',1) ;
INSERT INTO action(title,url,gid) VALUES ('活跃用户列表','/pages/jsp/admin/user/UserActionAdmin!listActive.action',1) ;
INSERT INTO action(title,url,gid) VALUES ('锁定用户列表','/pages/jsp/admin/user/UserActionAdmin!listLock.action',1) ;
INSERT INTO action(title,url,gid) VALUES ('添加公告','/pages/jsp/admin/notice/NoticeActionAdmin!insertPre.action',2) ;
INSERT INTO action(title,url,gid) VALUES ('管理公告','/pages/jsp/admin/notice/NoticeActionAdmin!list.action',2) ;
INSERT INTO action(title,url,gid) VALUES ('发布项目','/pages/jsp/admin/project/ProjectActionAdmin!insertPre.action',3) ;
INSERT INTO action(title,url,gid) VALUES ('项目管理','/pages/jsp/admin/project/ProjectActionAdmin!list.action',3) ;
INSERT INTO action(title,url,gid) VALUES ('任务分类维护','/pages/jsp/admin/task/TasktypeActionAdmin!list.action',3) ;
INSERT INTO action(title,url,gid) VALUES ('上传文档','/pages/jsp/admin/document/DocumentActionAdmin!insertPre.action',4) ;
INSERT INTO action(title,url,gid) VALUES ('文档管理','/pages/jsp/admin/document/DocumentActionAdmin!list.action',4) ;
INSERT INTO action(title,url,gid) VALUES ('文档分类维护','/pages/jsp/admin/document/DoctypeActionAdmin!list.action',4) ;
INSERT INTO action(title,url,gid) VALUES ('管理员管理','/pages/jsp/admin/admin/AdminActionAdmin!list.action',5) ;
INSERT INTO action(title,url,gid) VALUES ('增加角色','/pages/jsp/admin/role/RoleActionAdmin!insertPre.action',5) ;
INSERT INTO action(title,url,gid) VALUES ('角色列表','/pages/jsp/admin/role/RoleActionAdmin!list.action',5) ;
INSERT INTO action(title,url,gid) VALUES ('权限组管理','/pages/jsp/admin/role/GroupsActionAdmin!list.action',5) ;
INSERT INTO action(title,url,gid) VALUES ('权限管理','/pages/jsp/admin/role/ActionActionAdmin!list.action',5) ;

-- 测试数据 —— 项目经理权限
INSERT INTO action(title,url,gid) VALUES ('上传文档','/pages/jsp/manager/document/DocumentActionManager!insertPre.action',6) ;
INSERT INTO action(title,url,gid) VALUES ('文档管理','/pages/jsp/manager/document/DocumentActionManager!admin.action',6) ;
INSERT INTO action(title,url,gid) VALUES ('文档资源库','/pages/jsp/manager/document/DocumentActionManager!list.action',6) ;
INSERT INTO action(title,url,gid) VALUES ('项目列表','/pages/jsp/manager/project/ProjectActionManager!list.action',7) ;
INSERT INTO action(title,url,gid) VALUES ('任务管理','/pages/jsp/manager/task/TaskActionManager!list.action',7) ;
INSERT INTO action(title,url,gid) VALUES ('查看公告','/pages/jsp/manager/task/TaskActionManager!list.action',8) ;

-- 测试数据 —— 普通员工
INSERT INTO action(title,url,gid) VALUES ('上传文档','/pages/jsp/manager/document/DocumentActionManager!insertPre.action',9) ;
INSERT INTO action(title,url,gid) VALUES ('文档管理','/pages/jsp/manager/document/DocumentActionManager!admin.action',9) ;
INSERT INTO action(title,url,gid) VALUES ('文档资源库','/pages/jsp/manager/document/DocumentActionManager!list.action',9) ;
INSERT INTO action(title,url,gid) VALUES ('项目列表','/pages/jsp/manager/project/ProjectActionManager!list.action',10) ;
INSERT INTO action(title,url,gid) VALUES ('我的任务','/pages/jsp/manager/task/TaskActionManager!list.action',10) ;
INSERT INTO action(title,url,gid) VALUES ('查看公告','/pages/jsp/manager/task/TaskActionManager!list.action',11) ;

-- 文档类型
INSERT INTO doctype(title) VALUES ('Java开发') ;
INSERT INTO doctype(title) VALUES ('WEB前端') ;
INSERT INTO doctype(title) VALUES ('项目资料') ;

-- 任务类型
INSERT INTO tasktype(title) VALUES ('需求分析与设计') ;
INSERT INTO tasktype(title) VALUES ('数据库设计') ;
INSERT INTO tasktype(title) VALUES ('编程开发') ;
INSERT INTO tasktype(title) VALUES ('项目整合') ;
INSERT INTO tasktype(title) VALUES ('项目测试') ;
