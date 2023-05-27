SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` varchar(255) DEFAULT NULL COMMENT '��־���',
  `userid` varchar(255) DEFAULT NULL COMMENT '�û���',
  `time` varchar(255) DEFAULT NULL COMMENT '����ʱ��',
  `type` varchar(255) DEFAULT NULL COMMENT '��������',
  `detail` varchar(255) DEFAULT NULL COMMENT '����',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip',
  KEY `fk_log_userid` (`userid`),
  CONSTRAINT `fk_log_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('a9786c018d854226bdfa0ab74d4045cf', 'liran', '2023-01-11 19:20:43', '��½', '�û���½', null);
INSERT INTO `log` VALUES ('9136815071cc450ba00d9b693247dff2', 'liran', '2023-01-11 19:21:26', '����', '�����û�ͷ��', null);
INSERT INTO `log` VALUES ('2be39dd8511c41259bfa2885353e94ad', 'liran', '2023-01-11 19:21:52', '��½', '�û���½', null);
INSERT INTO `log` VALUES ('a48f35f8d3f84db1addc42cbf8835ac8', 'liran', '2023-01-11 19:22:15', '��½', '�û���½', null);
INSERT INTO `log` VALUES ('48083bcfca7b4dbdb7236561cc118839', 'liran', '2023-01-11 19:22:18', '��½', '�û���½', null);
INSERT INTO `log` VALUES ('2c83a3d453d94f83ac7595b4bb1fc2c6', 'liran', '2023-01-11 19:22:21', '��½', '�û���½', null);
INSERT INTO `log` VALUES ('d05d2127977146dfbd0cf6076283c9e9', 'admin', '2023-01-11 19:23:20', '��½', '�û���½', null);
INSERT INTO `log` VALUES ('19b6f5ec3d6a4a3aacbbae28ea23afd2', 'admin', '2023-01-11 19:24:04', '����', '�����û�ͷ��', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(255) DEFAULT NULL COMMENT '�û���',
  `password` varchar(255) DEFAULT NULL COMMENT '����',
  `nickname` varchar(255) DEFAULT NULL COMMENT '�ǳ�',
  `sex` int(1) DEFAULT NULL COMMENT '�Ա�',
  `age` int(5) DEFAULT NULL COMMENT '����',
  `profilehead` varchar(255) DEFAULT NULL COMMENT 'ͷ��',
  `profile` varchar(255) DEFAULT NULL COMMENT '���',
  `firsttime` varchar(255) DEFAULT NULL COMMENT 'ע��ʱ��',
  `lasttime` varchar(255) DEFAULT NULL COMMENT '����¼ʱ��',
  `status` int(1) DEFAULT NULL COMMENT '�˺�״̬(1���� 0����)',
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('liran', '123456', 'liran', '2', '19', 'upload/members/liran.jpg', 'lili', '2023-01-11 19:22:21', '2023-01-11 19:22:21', '1');
INSERT INTO `user` VALUES ('admin', 'admin', 'admin', '1', '18', 'upload/members/admin.jpg', 'i\'m admin', '2017-01-11 19:22:21', '2017-01-11 19:23:20', '1');
