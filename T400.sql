/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t400`;
CREATE DATABASE IF NOT EXISTS `t400` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t400`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'jiankangyizhan_types', '驿站类型', 1, '驿站类型1', NULL, NULL, '2023-05-29 02:47:59'),
	(2, 'jiankangyizhan_types', '驿站类型', 2, '驿站类型2', NULL, NULL, '2023-05-29 02:47:59'),
	(3, 'jiankangyizhan_types', '驿站类型', 3, '驿站类型3', NULL, NULL, '2023-05-29 02:47:59'),
	(4, 'jiankangyizhan_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-05-29 02:48:00'),
	(5, 'tijian_types', '体检服务类型', 1, '体检服务类型1', NULL, NULL, '2023-05-29 02:48:00'),
	(6, 'tijian_types', '体检服务类型', 2, '体检服务类型2', NULL, NULL, '2023-05-29 02:48:00'),
	(7, 'tijian_types', '体检服务类型', 3, '体检服务类型3', NULL, NULL, '2023-05-29 02:48:00'),
	(8, 'tijian_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-05-29 02:48:00'),
	(9, 'tijian_yuyue_yesno_types', '预约状态', 1, '待审核', NULL, NULL, '2023-05-29 02:48:00'),
	(10, 'tijian_yuyue_yesno_types', '预约状态', 2, '同意', NULL, NULL, '2023-05-29 02:48:00'),
	(11, 'tijian_yuyue_yesno_types', '预约状态', 3, '拒绝', NULL, NULL, '2023-05-29 02:48:00'),
	(12, 'yonghuqingjia_types', '请假类型', 1, '生病', NULL, NULL, '2023-05-29 02:48:00'),
	(13, 'yonghuqingjia_types', '请假类型', 2, '有事', NULL, NULL, '2023-05-29 02:48:00'),
	(14, 'yonghuqingjia_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-05-29 02:48:00'),
	(15, 'yonghuqingjia_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-05-29 02:48:00'),
	(16, 'yonghuqingjia_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-05-29 02:48:00'),
	(17, 'ziceyichang_types', '隔离状态', 1, '隔离中', NULL, NULL, '2023-05-29 02:48:00'),
	(18, 'ziceyichang_types', '隔离状态', 2, '观察期', NULL, NULL, '2023-05-29 02:48:00'),
	(19, 'ziceyichang_types', '隔离状态', 2, '已恢复', NULL, NULL, '2023-05-29 02:48:00'),
	(20, 'news_types', '资讯类型', 1, '资讯类型1', NULL, NULL, '2023-05-29 02:48:00'),
	(21, 'news_types', '资讯类型', 2, '资讯类型2', NULL, NULL, '2023-05-29 02:48:00'),
	(22, 'news_types', '资讯类型', 3, '资讯类型3', NULL, NULL, '2023-05-29 02:48:00'),
	(23, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-05-29 02:48:00'),
	(24, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-05-29 02:48:00'),
	(25, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-05-29 02:48:00'),
	(26, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-05-29 02:48:00');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `jiaoshi_id` int DEFAULT NULL COMMENT '教师',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='校园论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `jiaoshi_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, NULL, '发布内容1', 230, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', 78, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, '帖子标题3', 2, NULL, NULL, '发布内容3', 474, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, '帖子标题4', 1, NULL, NULL, '发布内容4', 82, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, '帖子标题5', 1, NULL, NULL, '发布内容5', 144, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, '帖子标题6', 1, NULL, NULL, '发布内容6', 168, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, '帖子标题7', 1, NULL, NULL, '发布内容7', 283, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, '帖子标题8', 2, NULL, NULL, '发布内容8', 437, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(9, '帖子标题9', 1, NULL, NULL, '发布内容9', 172, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, '帖子标题10', 3, NULL, NULL, '发布内容10', 427, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, '帖子标题11', 1, NULL, NULL, '发布内容11', 110, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, '帖子标题12', 2, NULL, NULL, '发布内容12', 10, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, '帖子标题13', 3, NULL, NULL, '发布内容13', 102, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(14, '帖子标题14', 2, NULL, NULL, '发布内容14', 369, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(15, NULL, 1, NULL, NULL, '11111111111111111111111', 14, 2, '2023-05-29 06:39:50', NULL, '2023-05-29 06:39:50'),
	(18, NULL, NULL, 1, NULL, '2222222222222222', 14, 2, '2023-05-29 06:41:00', NULL, '2023-05-29 06:41:00'),
	(19, NULL, NULL, NULL, 1, '333333333333333333333333', 14, 2, '2023-05-29 06:42:25', NULL, '2023-05-29 06:42:25'),
	(20, NULL, 1, NULL, NULL, '666', 14, 2, '2024-08-13 08:01:48', NULL, '2024-08-13 08:01:48');

DROP TABLE IF EXISTS `jiankangtianbao`;
CREATE TABLE IF NOT EXISTS `jiankangtianbao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `jiankangtianbao_name` varchar(200) DEFAULT NULL COMMENT '填报标题 Search111 ',
  `jiankangtianbao_tiwen` decimal(10,2) DEFAULT NULL COMMENT '当前体温',
  `jiankangtianbao_text` longtext COMMENT '填报详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '填报时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='每日健康填报';

DELETE FROM `jiankangtianbao`;
INSERT INTO `jiankangtianbao` (`id`, `yonghu_id`, `jiankangtianbao_name`, `jiankangtianbao_tiwen`, `jiankangtianbao_text`, `insert_time`, `create_time`) VALUES
	(1, 3, '填报标题1', 15.48, '填报详情1', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, 3, '填报标题2', 633.81, '填报详情2', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, 3, '填报标题3', 339.71, '填报详情3', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, 3, '填报标题4', 153.56, '填报详情4', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, 3, '填报标题5', 667.92, '填报详情5', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, 1, '填报标题6', 420.85, '填报详情6', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, 3, '填报标题7', 229.54, '填报详情7', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, 3, '填报标题8', 822.51, '填报详情8', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(9, 2, '填报标题9', 38.05, '填报详情9', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, 3, '填报标题10', 985.47, '填报详情10', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, 1, '填报标题11', 98.94, '填报详情11', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, 1, '填报标题12', 124.08, '填报详情12', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, 2, '填报标题13', 84.91, '填报详情13', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(14, 3, '填报标题14', 869.86, '填报详情14', '2023-05-29 02:48:23', '2023-05-29 02:48:23');

DROP TABLE IF EXISTS `jiankangyizhan`;
CREATE TABLE IF NOT EXISTS `jiankangyizhan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiankangyizhan_name` varchar(200) DEFAULT NULL COMMENT '驿站名称  Search111 ',
  `jiankangyizhan_photo` varchar(200) DEFAULT NULL COMMENT '驿站照片',
  `jiankangyizhan_address` varchar(200) DEFAULT NULL COMMENT '驿站地址',
  `jiankangyizhan_fzr` varchar(200) DEFAULT NULL COMMENT '负责人',
  `jiankangyizhan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `jiankangyizhan_types` int DEFAULT NULL COMMENT '驿站类型 Search111',
  `jiankangyizhan_clicknum` int DEFAULT NULL COMMENT '驿站热度',
  `jiankangyizhan_content` longtext COMMENT '驿站介绍 ',
  `data_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='健康驿站';

DELETE FROM `jiankangyizhan`;
INSERT INTO `jiankangyizhan` (`id`, `jiankangyizhan_name`, `jiankangyizhan_photo`, `jiankangyizhan_address`, `jiankangyizhan_fzr`, `jiankangyizhan_phone`, `jiankangyizhan_types`, `jiankangyizhan_clicknum`, `jiankangyizhan_content`, `data_delete`, `insert_time`, `create_time`) VALUES
	(1, '驿站名称1', 'upload/jiankangyizhan1.jpg', '驿站地址1', '负责人1', '17703786901', 1, 185, '驿站介绍1', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, '驿站名称2', 'upload/jiankangyizhan2.jpg', '驿站地址2', '负责人2', '17703786902', 3, 73, '驿站介绍2', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, '驿站名称3', 'upload/jiankangyizhan3.jpg', '驿站地址3', '负责人3', '17703786903', 2, 356, '驿站介绍3', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, '驿站名称4', 'upload/jiankangyizhan4.jpg', '驿站地址4', '负责人4', '17703786904', 1, 463, '驿站介绍4', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, '驿站名称5', 'upload/jiankangyizhan5.jpg', '驿站地址5', '负责人5', '17703786905', 3, 306, '驿站介绍5', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, '驿站名称6', 'upload/jiankangyizhan6.jpg', '驿站地址6', '负责人6', '17703786906', 1, 329, '驿站介绍6', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, '驿站名称7', 'upload/jiankangyizhan7.jpg', '驿站地址7', '负责人7', '17703786907', 1, 55, '驿站介绍7', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, '驿站名称8', 'upload/jiankangyizhan1.jpg', '驿站地址8', '负责人8', '17703786908', 2, 367, '驿站介绍8', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(9, '驿站名称9', 'upload/jiankangyizhan2.jpg', '驿站地址9', '负责人9', '17703786909', 3, 439, '驿站介绍9', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, '驿站名称10', 'upload/jiankangyizhan3.jpg', '驿站地址10', '负责人10', '17703786910', 3, 154, '驿站介绍10', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, '驿站名称11', 'upload/jiankangyizhan4.jpg', '驿站地址11', '负责人11', '17703786911', 1, 495, '驿站介绍11', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, '驿站名称12', 'upload/jiankangyizhan5.jpg', '驿站地址12', '负责人12', '17703786912', 2, 415, '驿站介绍12', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, '驿站名称13', 'upload/jiankangyizhan6.jpg', '驿站地址13', '负责人13', '17703786913', 3, 71, '驿站介绍13', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(14, '驿站名称14', 'upload/jiankangyizhan7.jpg', '驿站地址14', '负责人14', '17703786914', 3, 343, '驿站介绍14', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23');

DROP TABLE IF EXISTS `jiankangyizhan_collection`;
CREATE TABLE IF NOT EXISTS `jiankangyizhan_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiankangyizhan_id` int DEFAULT NULL COMMENT '驿站',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `jiankangyizhan_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='驿站收藏';

DELETE FROM `jiankangyizhan_collection`;
INSERT INTO `jiankangyizhan_collection` (`id`, `jiankangyizhan_id`, `yonghu_id`, `jiankangyizhan_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, 2, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, 3, 1, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, 4, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, 5, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, 11, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, 12, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, 13, 1, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(14, 14, 3, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(15, 9, 1, 1, '2024-08-13 08:01:54', '2024-08-13 08:01:54');

DROP TABLE IF EXISTS `jiankangyizhan_liuyan`;
CREATE TABLE IF NOT EXISTS `jiankangyizhan_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiankangyizhan_id` int DEFAULT NULL COMMENT '驿站',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `jiankangyizhan_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='驿站留言';

DELETE FROM `jiankangyizhan_liuyan`;
INSERT INTO `jiankangyizhan_liuyan` (`id`, `jiankangyizhan_id`, `yonghu_id`, `jiankangyizhan_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '留言内容1', '2023-05-29 02:48:23', '回复信息1', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, 2, 1, '留言内容2', '2023-05-29 02:48:23', '回复信息2', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, 3, 2, '留言内容3', '2023-05-29 02:48:23', '回复信息3', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, 4, 3, '留言内容4', '2023-05-29 02:48:23', '回复信息4', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, 5, 2, '留言内容5', '2023-05-29 02:48:23', '回复信息5', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, 6, 1, '留言内容6', '2023-05-29 02:48:23', '回复信息6', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, 7, 2, '留言内容7', '2023-05-29 02:48:23', '回复信息7', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, 8, 3, '留言内容8', '2023-05-29 02:48:23', '回复信息8', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(9, 9, 3, '留言内容9', '2023-05-29 02:48:23', '回复信息9', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, 10, 1, '留言内容10', '2023-05-29 02:48:23', '回复信息10', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, 11, 1, '留言内容11', '2023-05-29 02:48:23', '回复信息11', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, 12, 3, '留言内容12', '2023-05-29 02:48:23', '回复信息12', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, 13, 3, '留言内容13', '2023-05-29 02:48:23', '回复信息13', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(14, 14, 3, '留言内容14', '2023-05-29 02:48:23', '回复信息14', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(15, 9, 1, '66', '2024-08-13 08:01:57', NULL, NULL, '2024-08-13 08:01:57');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师名称 Search111 ',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '教师手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '教师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `jiaoshi_email` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  `data_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `username`, `password`, `jiaoshi_name`, `jiaoshi_phone`, `jiaoshi_photo`, `sex_types`, `jiaoshi_email`, `data_delete`, `insert_time`, `create_time`) VALUES
	(1, '教师1', '123456', '教师名称1', '17703786901', 'upload/jiaoshi1.jpg', 1, '1@qq.com', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, '教师2', '123456', '教师名称2', '17703786902', 'upload/jiaoshi2.jpg', 2, '2@qq.com', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, '教师3', '123456', '教师名称3', '17703786903', 'upload/jiaoshi3.jpg', 1, '3@qq.com', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='校园健康资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '资讯标题1', 3, 'upload/news1.jpg', '2023-05-29 02:48:23', '资讯详情1', '2023-05-29 02:48:23'),
	(2, '资讯标题2', 1, 'upload/news2.jpg', '2023-05-29 02:48:23', '资讯详情2', '2023-05-29 02:48:23'),
	(3, '资讯标题3', 2, 'upload/news3.jpg', '2023-05-29 02:48:23', '资讯详情3', '2023-05-29 02:48:23'),
	(4, '资讯标题4', 3, 'upload/news4.jpg', '2023-05-29 02:48:23', '资讯详情4', '2023-05-29 02:48:23'),
	(5, '资讯标题5', 2, 'upload/news5.jpg', '2023-05-29 02:48:23', '资讯详情5', '2023-05-29 02:48:23'),
	(6, '资讯标题6', 3, 'upload/news6.jpg', '2023-05-29 02:48:23', '资讯详情6', '2023-05-29 02:48:23'),
	(7, '资讯标题7', 1, 'upload/news7.jpg', '2023-05-29 02:48:23', '资讯详情7', '2023-05-29 02:48:23'),
	(8, '资讯标题8', 2, 'upload/news8.jpg', '2023-05-29 02:48:23', '资讯详情8', '2023-05-29 02:48:23'),
	(9, '资讯标题9', 1, 'upload/news9.jpg', '2023-05-29 02:48:23', '资讯详情9', '2023-05-29 02:48:23'),
	(10, '资讯标题10', 1, 'upload/news10.jpg', '2023-05-29 02:48:23', '资讯详情10', '2023-05-29 02:48:23'),
	(11, '资讯标题11', 1, 'upload/news11.jpg', '2023-05-29 02:48:23', '资讯详情11', '2023-05-29 02:48:23'),
	(12, '资讯标题12', 2, 'upload/news12.jpg', '2023-05-29 02:48:23', '资讯详情12', '2023-05-29 02:48:23'),
	(13, '资讯标题13', 1, 'upload/news13.jpg', '2023-05-29 02:48:23', '资讯详情13', '2023-05-29 02:48:23'),
	(14, '资讯标题14', 2, 'upload/news14.jpg', '2023-05-29 02:48:23', '资讯详情14', '2023-05-29 02:48:23');

DROP TABLE IF EXISTS `tijian`;
CREATE TABLE IF NOT EXISTS `tijian` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jiankangyizhan_id` int DEFAULT NULL COMMENT '驿站',
  `tijian_name` varchar(200) DEFAULT NULL COMMENT '体检服务名称  Search111 ',
  `tijian_photo` varchar(200) DEFAULT NULL COMMENT '体检服务照片',
  `tijian_types` int DEFAULT NULL COMMENT '体检服务类型 Search111',
  `tijian_price` decimal(10,2) DEFAULT NULL COMMENT '体检费用',
  `tijian_clicknum` int DEFAULT NULL COMMENT '体检服务热度',
  `tijian_content` longtext COMMENT '体检服务介绍 ',
  `data_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='体检服务';

DELETE FROM `tijian`;
INSERT INTO `tijian` (`id`, `jiankangyizhan_id`, `tijian_name`, `tijian_photo`, `tijian_types`, `tijian_price`, `tijian_clicknum`, `tijian_content`, `data_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, '体检服务名称1', 'upload/tijian1.jpg', 1, 551.58, 111, '体检服务介绍1', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, 2, '体检服务名称2', 'upload/tijian2.jpg', 2, 102.04, 135, '体检服务介绍2', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, 3, '体检服务名称3', 'upload/tijian3.jpg', 3, 842.27, 90, '体检服务介绍3', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, 4, '体检服务名称4', 'upload/tijian4.jpg', 1, 183.54, 47, '体检服务介绍4', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, 5, '体检服务名称5', 'upload/tijian5.jpg', 2, 130.49, 210, '体检服务介绍5', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, 6, '体检服务名称6', 'upload/tijian6.jpg', 1, 262.11, 248, '体检服务介绍6', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, 7, '体检服务名称7', 'upload/tijian7.jpg', 1, 762.12, 191, '体检服务介绍7', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, 8, '体检服务名称8', 'upload/tijian8.jpg', 2, 958.82, 4, '体检服务介绍8', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(9, 9, '体检服务名称9', 'upload/tijian9.jpg', 3, 111.54, 272, '体检服务介绍9', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, 10, '体检服务名称10', 'upload/tijian10.jpg', 1, 836.95, 314, '体检服务介绍10', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, 11, '体检服务名称11', 'upload/tijian11.jpg', 3, 112.89, 422, '体检服务介绍11', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, 12, '体检服务名称12', 'upload/tijian12.jpg', 3, 323.59, 294, '体检服务介绍12', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, 13, '体检服务名称13', 'upload/tijian13.jpg', 3, 615.03, 117, '体检服务介绍13', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(14, 14, '体检服务名称14', 'upload/tijian14.jpg', 2, 367.34, 101, '体检服务介绍14', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23');

DROP TABLE IF EXISTS `tijian_collection`;
CREATE TABLE IF NOT EXISTS `tijian_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tijian_id` int DEFAULT NULL COMMENT '体检服务',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `tijian_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='服务收藏';

DELETE FROM `tijian_collection`;
INSERT INTO `tijian_collection` (`id`, `tijian_id`, `yonghu_id`, `tijian_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, 2, 3, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, 3, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, 4, 1, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, 5, 3, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, 6, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, 7, 3, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, 8, 3, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, 10, 3, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, 11, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, 12, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, 13, 2, 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(15, 9, 1, 1, '2023-05-29 06:30:44', '2023-05-29 06:30:44'),
	(16, 10, 1, 1, '2024-08-13 08:02:10', '2024-08-13 08:02:10');

DROP TABLE IF EXISTS `tijian_liuyan`;
CREATE TABLE IF NOT EXISTS `tijian_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tijian_id` int DEFAULT NULL COMMENT '体检服务',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `tijian_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='服务留言';

DELETE FROM `tijian_liuyan`;
INSERT INTO `tijian_liuyan` (`id`, `tijian_id`, `yonghu_id`, `tijian_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '留言内容1', '2023-05-29 02:48:23', '回复信息1', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, 2, 3, '留言内容2', '2023-05-29 02:48:23', '回复信息2', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, 3, 1, '留言内容3', '2023-05-29 02:48:23', '回复信息3', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, 4, 1, '留言内容4', '2023-05-29 02:48:23', '回复信息4', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, 5, 2, '留言内容5', '2023-05-29 02:48:23', '回复信息5', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, 6, 3, '留言内容6', '2023-05-29 02:48:23', '回复信息6', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, 7, 2, '留言内容7', '2023-05-29 02:48:23', '回复信息7', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, 8, 3, '留言内容8', '2023-05-29 02:48:23', '回复信息8', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(9, 9, 2, '留言内容9', '2023-05-29 02:48:23', '回复信息9', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, 10, 1, '留言内容10', '2023-05-29 02:48:23', '回复信息10', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, 11, 1, '留言内容11', '2023-05-29 02:48:23', '回复信息11', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, 12, 1, '留言内容12', '2023-05-29 02:48:23', '回复信息12', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, 13, 2, '留言内容13', '2023-05-29 02:48:23', '回复信息13', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(14, 14, 1, '留言内容14', '2023-05-29 02:48:23', '回复信息14', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(15, 12, 1, '123', '2023-05-29 06:29:40', NULL, NULL, '2023-05-29 06:29:40'),
	(16, 14, 1, '33333333', '2023-05-29 06:38:34', '123123', '2023-05-29 06:41:31', '2023-05-29 06:38:34');

DROP TABLE IF EXISTS `tijian_yuyue`;
CREATE TABLE IF NOT EXISTS `tijian_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tijian_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111 ',
  `tijian_id` int DEFAULT NULL COMMENT '体检服务',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `tijian_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `tijian_yuyue_text` longtext COMMENT '预约备注',
  `tijian_yuyue_yesno_types` int DEFAULT NULL COMMENT '预约状态 Search111 ',
  `tijian_yuyue_yesno_text` longtext COMMENT '审核回复',
  `tijian_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='体检预约';

DELETE FROM `tijian_yuyue`;
INSERT INTO `tijian_yuyue` (`id`, `tijian_yuyue_uuid_number`, `tijian_id`, `yonghu_id`, `tijian_yuyue_time`, `tijian_yuyue_text`, `tijian_yuyue_yesno_types`, `tijian_yuyue_yesno_text`, `tijian_yuyue_shenhe_time`, `insert_time`, `create_time`) VALUES
	(1, '1685328503214', 1, 3, '2023-05-29 02:48:23', '预约备注1', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, '1685328503148', 2, 3, '2023-05-29 02:48:23', '预约备注2', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, '1685328503241', 3, 1, '2023-05-29 02:48:23', '预约备注3', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, '1685328503238', 4, 3, '2023-05-29 02:48:23', '预约备注4', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, '1685328503145', 5, 2, '2023-05-29 02:48:23', '预约备注5', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, '1685328503207', 6, 1, '2023-05-29 02:48:23', '预约备注6', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, '1685328503154', 7, 3, '2023-05-29 02:48:23', '预约备注7', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, '1685328503225', 8, 2, '2023-05-29 02:48:23', '预约备注8', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(9, '1685328503145', 9, 3, '2023-05-29 02:48:23', '预约备注9', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, '1685328503218', 10, 1, '2023-05-29 02:48:23', '预约备注10', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, '1685328503155', 11, 3, '2023-05-29 02:48:23', '预约备注11', 1, NULL, NULL, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, '1685328503181', 12, 2, '2023-05-29 02:48:23', '预约备注12', 2, '2', '2023-05-29 06:41:50', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(15, '1685341801835', 12, 1, '2023-05-30 00:30:41', '备注111111111111111111', 3, '1', '2023-05-29 06:41:45', '2023-05-29 06:30:02', '2023-05-29 06:30:02'),
	(17, '1723536134145', 10, 1, '2024-08-13 08:02:11', '666', 1, NULL, NULL, '2024-08-13 08:02:14', '2024-08-13 08:02:14');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '学生', '93cly0h8wxuumra3lk2b76ucv4xgtwyp', '2023-05-29 03:23:08', '2024-08-13 09:01:36'),
	(2, 1, 'admin', 'users', '管理员', 'egez5p03rnwqsc72try2o9z0dxswk803', '2023-05-29 03:35:50', '2024-08-13 08:59:53'),
	(3, 1, 'a1', 'jiaoshi', '教师', 'v8vcqaxfk9lspjal0b7hqqjeykpkgrox', '2023-05-29 06:35:35', '2024-08-13 09:01:24');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-05-29 02:47:59');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `data_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `data_delete`, `insert_time`, `create_time`) VALUES
	(1, '学生1', '123456', '学生名称1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, '学生2', '123456', '学生名称2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, '学生3', '123456', '学生名称3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23');

DROP TABLE IF EXISTS `yonghuqingjia`;
CREATE TABLE IF NOT EXISTS `yonghuqingjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '学生',
  `yonghuqingjia_text` longtext COMMENT '请假缘由',
  `yonghuqingjia_types` int DEFAULT NULL COMMENT '请假类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `yonghuqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `yonghuqingjia_number` int DEFAULT NULL COMMENT '请假天数',
  `yonghuqingjia_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111 ',
  `yonghuqingjia_yesno_text` longtext COMMENT '处理意见',
  `yonghuqingjia_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='学生请假';

DELETE FROM `yonghuqingjia`;
INSERT INTO `yonghuqingjia` (`id`, `yonghu_id`, `yonghuqingjia_text`, `yonghuqingjia_types`, `insert_time`, `yonghuqingjia_time`, `yonghuqingjia_number`, `yonghuqingjia_yesno_types`, `yonghuqingjia_yesno_text`, `yonghuqingjia_shenhe_time`, `create_time`) VALUES
	(1, 2, '请假缘由1', 2, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 193, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(2, 1, '请假缘由2', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 261, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(3, 1, '请假缘由3', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 368, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(4, 2, '请假缘由4', 2, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 204, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(5, 1, '请假缘由5', 2, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 377, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(6, 2, '请假缘由6', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 191, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(7, 1, '请假缘由7', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 178, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(8, 3, '请假缘由8', 2, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 50, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(9, 1, '请假缘由9', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 10, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(10, 2, '请假缘由10', 2, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 468, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(11, 1, '请假缘由11', 2, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 180, 1, NULL, NULL, '2023-05-29 02:48:23'),
	(12, 3, '请假缘由12', 1, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 342, 2, '123', '2023-05-29 06:41:22', '2023-05-29 02:48:23'),
	(13, 1, '请假缘由13', 2, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 392, 3, '12111', '2023-05-29 06:35:52', '2023-05-29 02:48:23'),
	(14, 1, '请假缘由14', 2, '2023-05-29 02:48:23', '2023-05-29 02:48:23', 55, 2, '123', '2023-05-29 06:35:47', '2023-05-29 02:48:23'),
	(15, 1, '123', 1, '2023-05-29 06:39:24', '2023-05-29 16:00:00', 3, 3, '1111111111', '2023-05-29 06:40:36', '2023-05-29 06:39:24');

DROP TABLE IF EXISTS `ziceyichang`;
CREATE TABLE IF NOT EXISTS `ziceyichang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiankangyizhan_id` int DEFAULT NULL COMMENT '驿站',
  `ziceyichang_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `ziceyichang_mingc` varchar(200) DEFAULT NULL COMMENT '隔离人名称 Search111 ',
  `ziceyichang_tiwen` decimal(10,2) DEFAULT NULL COMMENT '体温',
  `ziceyichang_types` int DEFAULT NULL COMMENT '隔离状态 Search111',
  `ziceyichang_text` longtext COMMENT '详情信息',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='自测异常信息';

DELETE FROM `ziceyichang`;
INSERT INTO `ziceyichang` (`id`, `jiankangyizhan_id`, `ziceyichang_name`, `ziceyichang_mingc`, `ziceyichang_tiwen`, `ziceyichang_types`, `ziceyichang_text`, `insert_time`, `create_time`) VALUES
	(1, 1, '标题1', '隔离人名称1', 188.45, 1, '详情信息1', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(2, 2, '标题2', '隔离人名称2', 799.68, 2, '详情信息2', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(3, 3, '标题3', '隔离人名称3', 481.63, 1, '详情信息3', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(4, 4, '标题4', '隔离人名称4', 81.22, 2, '详情信息4', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(5, 5, '标题5', '隔离人名称5', 553.79, 2, '详情信息5', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(6, 6, '标题6', '隔离人名称6', 506.64, 2, '详情信息6', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(7, 7, '标题7', '隔离人名称7', 8.28, 2, '详情信息7', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(8, 8, '标题8', '隔离人名称8', 919.93, 2, '详情信息8', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(9, 9, '标题9', '隔离人名称9', 929.21, 1, '详情信息9', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(10, 10, '标题10', '隔离人名称10', 892.80, 1, '详情信息10', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(11, 11, '标题11', '隔离人名称11', 474.53, 1, '详情信息11', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(12, 12, '标题12', '隔离人名称12', 848.11, 1, '详情信息12', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(13, 13, '标题13', '隔离人名称13', 521.66, 1, '详情信息13', '2023-05-29 02:48:23', '2023-05-29 02:48:23'),
	(14, 14, '标题14', '隔离人名称14', 993.62, 2, '详情信息14', '2023-05-29 02:48:23', '2023-05-29 02:48:23');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
