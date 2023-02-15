-- `smbms_user`
DROP TABLE IF EXISTS `smbms_user`;

create table if not exists `smbms_user`
(
    `id`           bigint            not null auto_increment comment '主键ID' primary key,
    `userCode`     varchar(15)       null comment '用户编码',
    `userName`     varchar(15)       null comment '用户名称',
    `userPassword` varchar(15)       null comment '用户密码',
    `gender`       tinyint default 1 null comment '性别（1:男、 2:女）',
    `birthday`     datetime          null comment '出生日期',
    `phone`        varchar(15)       null comment '手机',
    `address`      varchar(30)       null comment '地址',
    `userRole`     bigint            null comment '用户角色（取自角色表-角色id）',
    `createdBy`    bigint            null comment '创建者（userId）',
    `creationDate` datetime          null comment '创建时间',
    `modifyBy`     bigint            null comment '更新者（userId）',
    `modifyDate`   datetime          null comment '更新时间'
) comment '`smbms_user`';

insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1, 'admin', '柒木', '1234567', 1, '2022-07-27 18:05:05', '15768365996', '石家庄', 1, 1, '2022-12-31 00:28:59',
        '2022-06-07 23:14:18');

insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (2, 'tn', '莫昊然', '00000000', 1, '2022-01-05 10:51:58', '15106055586', '福州', 3, 1, '2022-03-28 02:36:02',
        '2022-12-04 14:32:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (3, 'Gfy', '苏炫明', '00000000', 1, '2022-11-29 23:55:52', '15133052951', '湘潭', 3, 1, '2022-06-28 19:06:38',
        '2022-04-30 16:15:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (4, 'Ucud', '邹哲瀚', '00000000', 1, '2022-09-09 09:00:25', '15804494596', '即墨', 3, 1, '2022-07-19 04:42:36',
        '2022-05-16 14:03:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (5, 'BBJ', '史修洁', '00000000', 1, '2022-12-06 02:33:13', '17582720044', '渭南', 3, 1, '2022-05-26 20:10:01',
        '2022-05-01 10:45:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (6, '3sTf', '王懿轩', '00000000', 1, '2022-12-25 13:28:00', '14560404461', '舟山', 3, 1, '2022-09-06 13:31:56',
        '2022-02-02 10:54:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (7, 'fwl', '张雪松', '00000000', 1, '2022-11-25 20:21:25', '17889104286', '北海', 3, 1, '2022-04-16 08:56:38',
        '2022-04-16 09:13:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (8, '17D', '龚博涛', '00000000', 1, '2022-02-27 18:13:19', '15560598940', '呼和浩特', 3, 1, '2022-09-07 07:42:39',
        '2022-06-20 14:54:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (9, 'O4C', '邱文昊', '00000000', 1, '2022-11-28 19:21:38', '15352236051', '韶关', 3, 1, '2022-11-08 17:02:01',
        '2022-09-04 15:40:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (10, 'sqga', '萧明杰', '00000000', 1, '2022-07-27 18:05:05', '15768365996', '石家庄', 3, 1, '2022-12-31 00:28:59',
        '2022-06-07 23:14:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (11, 'YP', '石伟宸', '00000000', 1, '2022-06-12 02:52:47', '17840373538', '宜宾', 3, 1, '2022-05-27 23:04:14',
        '2022-12-22 15:16:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (12, 'wz3VI', '顾炎彬', '00000000', 1, '2022-05-05 03:31:09', '15668949508', '常熟', 3, 1, '2022-09-16 19:54:01',
        '2022-11-09 13:14:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (13, 'QQ', '卢展鹏', '00000000', 1, '2022-03-07 01:48:40', '14721997251', '苏州', 3, 1, '2022-08-30 08:57:55',
        '2022-02-28 10:49:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (14, 'CSx4q', '邓鸿煊', '00000000', 1, '2022-04-03 21:55:41', '17343528464', '阳泉', 3, 1, '2022-03-09 02:48:05',
        '2022-10-25 20:44:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (15, 'x0xj', '余绍辉', '00000000', 1, '2022-07-22 07:20:23', '17572111474', '衡水', 3, 1, '2022-09-16 11:29:44',
        '2022-03-20 00:31:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (16, 'nEC3g', '余黎昕', '00000000', 1, '2022-06-06 07:12:24', '17388248169', '牡丹江', 3, 1, '2022-12-19 05:09:05',
        '2022-12-23 23:32:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (17, 'SNH', '沈哲瀚', '00000000', 1, '2022-11-01 11:04:37', '15040978496', '广州', 3, 1, '2022-09-08 07:17:05',
        '2022-06-21 15:42:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (18, 'VZc', '郝展鹏', '00000000', 1, '2022-10-27 11:46:46', '18014655862', '宜兴', 3, 1, '2022-03-12 02:21:03',
        '2022-07-13 11:28:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (19, 'sc46', '蔡正豪', '00000000', 1, '2022-06-07 12:47:16', '13788344999', '荣成', 3, 1, '2022-03-23 22:54:07',
        '2022-01-23 02:20:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (20, 'dgA8', '冯伟泽', '00000000', 1, '2022-07-15 12:09:41', '15834041794', '攀枝花', 3, 1, '2022-02-11 20:24:08',
        '2022-10-02 04:03:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (21, 'cqITJ', '方烨伟', '00000000', 1, '2022-12-13 23:47:39', '18883495421', '烟台', 3, 1, '2022-02-03 00:58:18',
        '2022-10-17 18:51:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (22, 'v5', '覃智宸', '00000000', 1, '2022-09-11 21:50:40', '15131023730', '连云港', 3, 1, '2022-04-20 03:26:34',
        '2022-03-25 08:15:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (23, 'Ig', '蔡锦程', '00000000', 1, '2022-01-23 19:33:28', '15753896170', '滨州', 3, 1, '2022-12-02 12:24:16',
        '2022-06-10 03:08:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (24, 'yL', '莫智渊', '00000000', 1, '2022-07-23 13:13:23', '17634558040', '三门峡', 3, 1, '2022-06-27 01:22:43',
        '2022-10-18 03:33:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (25, '9YkUa', '吴博涛', '00000000', 1, '2022-02-21 12:01:49', '14799840503', '武汉', 3, 1, '2022-07-16 19:23:22',
        '2022-06-25 08:06:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (26, 'G4b', '马建辉', '00000000', 1, '2022-03-04 22:14:21', '17272454407', '遵义', 3, 1, '2022-06-07 17:50:57',
        '2022-12-11 23:33:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (27, 'mPk', '王煜城', '00000000', 1, '2022-08-19 01:35:36', '17250164174', '宁波', 3, 1, '2022-04-14 13:47:00',
        '2022-12-26 00:27:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (28, 'oTC', '曹乐驹', '00000000', 1, '2022-11-16 01:01:22', '15202508571', '昆山', 3, 1, '2022-10-20 17:10:03',
        '2022-12-28 17:03:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (29, '30', '贺远航', '00000000', 1, '2022-09-29 18:18:53', '15542814203', '东莞', 3, 1, '2022-07-05 07:38:00',
        '2022-02-23 03:18:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (30, 'ou', '周立轩', '00000000', 1, '2022-03-18 00:16:40', '17771759682', '大连', 3, 1, '2022-08-04 07:57:15',
        '2022-05-25 22:16:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (31, 'UH', '曹绍辉', '00000000', 1, '2022-09-29 00:12:58', '15925233392', '克拉玛依', 3, 1, '2022-02-22 14:11:49',
        '2022-07-04 01:58:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (32, 'kdi', '陈修洁', '00000000', 1, '2022-06-28 21:29:10', '15266708868', '咸阳', 3, 1, '2022-03-05 00:34:31',
        '2022-07-12 02:14:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (33, 'Zbf', '郭靖琪', '00000000', 1, '2022-04-28 14:13:13', '15519748824', '九江', 3, 1, '2022-04-29 02:44:30',
        '2022-08-23 06:22:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (34, 'jsY', '彭鹏飞', '00000000', 1, '2022-01-10 06:55:57', '17093484113', '南通', 3, 1, '2022-07-24 12:23:03',
        '2022-05-10 03:06:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (35, 'MQS9t', '严晟睿', '00000000', 1, '2022-05-31 01:39:41', '15539819460', '东营', 3, 1, '2022-01-18 05:51:04',
        '2022-04-06 20:46:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (36, 'by', '戴哲瀚', '00000000', 1, '2022-11-24 07:45:09', '15290121017', '韶关', 3, 1, '2022-09-06 18:16:00',
        '2022-08-23 07:34:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (37, 'Ce', '张风华', '00000000', 1, '2022-06-10 15:47:13', '15915351290', '石嘴山', 3, 1, '2022-03-05 05:46:09',
        '2022-06-04 21:46:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (38, 'MT', '袁子轩', '00000000', 1, '2022-07-02 22:08:58', '17677008430', '张家港', 3, 1, '2022-06-07 18:51:49',
        '2022-08-22 12:03:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (39, 'Lvmr', '胡鸿煊', '00000000', 1, '2022-08-09 00:44:39', '14774277953', '曲靖', 3, 1, '2022-05-02 09:20:22',
        '2022-06-22 12:00:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (40, 'cp', '熊耀杰', '00000000', 1, '2022-08-26 03:10:47', '15177570364', '大庆', 3, 1, '2022-11-30 12:23:58',
        '2022-03-30 03:33:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (41, 'ItULG', '段远航', '00000000', 1, '2022-08-01 23:19:14', '15789972115', '泉州', 3, 1, '2022-09-05 19:02:51',
        '2022-02-15 05:07:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (42, 'L6Zq', '沈晓啸', '00000000', 1, '2022-09-01 18:09:51', '14757481015', '肇庆', 3, 1, '2022-02-05 14:11:16',
        '2022-01-10 15:49:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (43, 'dov', '薛弘文', '00000000', 1, '2022-10-30 10:56:50', '15041738703', '重庆', 3, 1, '2022-12-02 19:46:45',
        '2022-02-16 17:16:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (44, 'RR3', '武志强', '00000000', 1, '2022-06-26 16:41:42', '14705296515', '长沙', 3, 1, '2022-09-01 20:29:48',
        '2022-04-02 00:53:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (45, 'vqtS', '龙天宇', '00000000', 1, '2022-11-08 20:47:35', '15761188828', '盐城', 3, 1, '2022-08-06 04:09:47',
        '2022-03-08 22:24:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (46, 'g9', '杜博文', '00000000', 1, '2022-03-11 05:03:20', '18351948271', '张家界', 3, 1, '2022-02-25 18:54:06',
        '2022-01-21 17:14:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (47, 'hArhI', '郑立诚', '00000000', 1, '2022-03-18 03:05:48', '14769472172', '杭州', 3, 1, '2022-06-02 18:54:04',
        '2022-01-20 01:11:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (48, 'yR', '叶思远', '00000000', 1, '2022-03-18 05:19:52', '17081551077', '秦皇岛', 3, 1, '2022-03-27 09:35:53',
        '2022-02-13 06:03:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (49, 'D42p', '孔靖琪', '00000000', 1, '2022-08-13 19:21:03', '15399062468', '铜川', 3, 1, '2022-04-26 04:11:41',
        '2022-09-19 02:55:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (50, 'Jm', '任修洁', '00000000', 1, '2022-10-22 11:46:06', '17197432968', '南宁', 3, 1, '2022-06-13 03:03:33',
        '2022-08-11 00:02:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (51, 'km', '李雪松', '00000000', 1, '2022-10-14 02:48:16', '15874589741', '章丘', 3, 1, '2022-12-29 20:20:57',
        '2022-01-19 16:27:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (52, 'jzY1', '黎越泽', '00000000', 1, '2022-07-12 14:59:30', '17555605577', '铜川', 3, 1, '2022-07-31 18:11:51',
        '2022-10-21 05:13:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (53, '5iJcg', '史思', '00000000', 1, '2022-03-20 08:47:24', '15943985726', '太原', 3, 1, '2022-01-05 09:46:53',
        '2022-09-20 09:59:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (54, '9Pl', '傅子默', '00000000', 1, '2022-09-19 23:41:34', '15937415162', '寿光', 3, 1, '2022-05-14 02:31:43',
        '2022-10-27 01:23:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (55, '0bzgY', '廖鸿煊', '00000000', 1, '2022-06-08 15:14:39', '17606098554', '长治', 3, 1, '2022-04-16 17:17:45',
        '2022-04-03 01:01:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (56, 'q6fX', '叶智宸', '00000000', 1, '2022-08-20 11:03:22', '17152742750', '金昌', 3, 1, '2022-02-24 10:29:59',
        '2022-11-26 01:33:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (57, 'GO5', '邓昊天', '00000000', 1, '2022-02-02 11:35:11', '15939478320', '胶南', 3, 1, '2022-05-15 16:45:40',
        '2022-01-11 06:00:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (58, 'e0', '曹泽洋', '00000000', 1, '2022-01-30 06:18:45', '15719225734', '江门', 3, 1, '2022-03-26 06:22:50',
        '2022-08-08 02:07:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (59, 'ODb', '金正豪', '00000000', 1, '2022-10-14 00:19:55', '15019093517', '张家口', 3, 1, '2022-12-11 04:16:05',
        '2022-08-15 17:33:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (60, 'rapiN', '韩越彬', '00000000', 1, '2022-01-07 16:13:02', '15997515028', '清远', 3, 1, '2022-07-16 14:22:47',
        '2022-06-09 21:15:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (61, 'Z6w9Y', '侯文轩', '00000000', 1, '2022-04-20 09:56:47', '15586986702', '招远', 3, 1, '2022-09-28 08:33:20',
        '2022-04-20 09:36:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (62, '9C', '毛致远', '00000000', 1, '2022-06-29 18:06:06', '14574856999', '瓦房店', 3, 1, '2022-11-11 07:57:59',
        '2022-01-04 21:45:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (63, 'lVJ', '彭伟泽', '00000000', 1, '2022-04-12 10:22:34', '17034889855', '玉溪', 3, 1, '2022-06-08 09:48:46',
        '2022-03-28 15:31:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (64, 'iEg', '徐涛', '00000000', 1, '2022-05-22 10:55:14', '14704289247', '莱芜', 3, 1, '2022-07-28 15:15:33',
        '2022-01-22 18:09:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (65, 'Kuk', '邹哲瀚', '00000000', 1, '2022-05-23 00:19:37', '17637079105', '太原', 3, 1, '2022-03-01 09:40:33',
        '2022-06-27 06:12:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (66, 'UtuJ', '谭烨磊', '00000000', 1, '2022-01-08 10:07:26', '15864466258', '河源', 3, 1, '2022-12-19 07:45:01',
        '2022-08-30 02:00:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (67, 'F131', '金越彬', '00000000', 1, '2022-06-02 15:25:57', '18987127809', '临安', 3, 1, '2022-06-07 16:23:36',
        '2022-05-21 01:55:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (68, 'fmtYR', '黄越彬', '00000000', 1, '2022-06-06 03:19:33', '15834426946', '焦作', 3, 1, '2022-10-28 16:38:02',
        '2022-01-02 02:56:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (69, 'AKC7P', '钱思远', '00000000', 1, '2022-11-11 20:18:21', '15137868409', '诸暨', 3, 1, '2022-02-17 13:17:25',
        '2022-05-23 17:41:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (70, 'jj2Qr', '张鹏涛', '00000000', 1, '2022-04-06 13:02:12', '17784607682', '三亚', 3, 1, '2022-09-26 16:44:34',
        '2022-03-06 19:45:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (71, '19WXi', '尹伟祺', '00000000', 1, '2022-06-11 15:41:36', '15750206464', '上海', 3, 1, '2022-03-16 18:25:28',
        '2022-01-03 09:58:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (72, 'QCF3b', '邱擎苍', '00000000', 1, '2022-11-20 07:43:36', '17648349016', '呼和浩特', 3, 1, '2022-02-03 09:35:29',
        '2022-10-27 11:49:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (73, '86kIf', '郭楷瑞', '00000000', 1, '2022-03-28 07:01:12', '18363449885', '成都', 3, 1, '2022-02-18 03:45:41',
        '2022-04-11 12:53:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (74, 'mvzJ', '黄黎昕', '00000000', 1, '2022-01-16 16:47:55', '15245736082', '济宁', 3, 1, '2022-03-03 15:57:46',
        '2022-02-12 11:21:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (75, '7KWLT', '谢修杰', '00000000', 1, '2022-11-18 02:25:07', '15241750594', '海门', 3, 1, '2022-08-27 15:31:39',
        '2022-11-09 05:09:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (76, 'aYfyJ', '黄笑愚', '00000000', 1, '2022-08-20 21:35:51', '15971187620', '东莞', 3, 1, '2022-10-31 18:53:39',
        '2022-12-04 06:45:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (77, 'SlNQP', '于绍辉', '00000000', 1, '2022-05-20 20:40:10', '14537357592', '南充', 3, 1, '2022-11-24 19:50:55',
        '2022-09-11 13:35:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (78, 'LU', '任凯瑞', '00000000', 1, '2022-01-18 09:13:23', '18106103934', '大连', 3, 1, '2022-04-22 00:27:37',
        '2022-04-03 07:37:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (79, 'b6', '侯志泽', '00000000', 1, '2022-05-08 02:32:49', '15601368167', '南昌', 3, 1, '2022-04-30 06:50:00',
        '2022-06-23 21:48:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (80, 'pjT', '谭鹏飞', '00000000', 1, '2022-08-13 04:15:54', '15264527307', '乌鲁木齐', 3, 1, '2022-09-15 11:17:35',
        '2022-01-09 10:17:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (81, 'uLTwJ', '江越泽', '00000000', 1, '2022-07-14 12:34:48', '15152798631', '曲靖', 3, 1, '2022-04-10 21:52:22',
        '2022-10-29 12:06:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (82, 'jR', '覃鸿煊', '00000000', 1, '2022-06-07 17:45:53', '15886300886', '蓬莱', 3, 1, '2022-08-24 15:43:24',
        '2022-01-27 11:39:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (83, 'Cy0T', '谭伟诚', '00000000', 1, '2022-06-02 05:42:25', '15111122152', '银川', 3, 1, '2022-02-04 05:32:30',
        '2022-09-14 15:01:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (84, 'TBsGG', '郝瑾瑜', '00000000', 1, '2022-05-04 12:22:22', '15762438973', '锦州', 3, 1, '2022-03-13 14:08:42',
        '2022-11-28 18:39:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (85, 'Z4', '顾思', '00000000', 1, '2022-06-15 07:52:24', '15205627960', '济南', 3, 1, '2022-08-29 10:04:49',
        '2022-03-08 18:06:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (86, 'eJBiT', '雷雪松', '00000000', 1, '2022-03-01 20:32:03', '17594808369', '锦州', 3, 1, '2022-09-20 11:35:39',
        '2022-12-14 15:56:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (87, 'R98', '蔡越泽', '00000000', 1, '2022-02-08 23:19:01', '17500321508', '胶州', 3, 1, '2022-05-02 06:05:41',
        '2022-09-10 09:11:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (88, 'Xe7B', '余笑愚', '00000000', 1, '2022-06-09 17:19:44', '15947488936', '岳阳', 3, 1, '2022-02-09 02:40:24',
        '2022-01-19 04:19:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (89, 'ZKK', '江峻熙', '00000000', 1, '2022-01-15 04:57:12', '18647293028', '北海', 3, 1, '2022-03-17 15:27:27',
        '2022-10-19 14:19:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (90, '4g3', '夏致远', '00000000', 1, '2022-08-27 20:48:20', '15776443372', '徐州', 3, 1, '2022-01-28 10:01:26',
        '2022-05-23 20:41:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (91, 'yQQ', '程靖琪', '00000000', 1, '2022-07-31 15:48:10', '15021406846', '福州', 3, 1, '2022-07-23 17:04:15',
        '2022-06-13 04:23:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (92, 'YHPXQ', '蒋耀杰', '00000000', 1, '2022-04-21 14:59:10', '14581227682', '烟台', 3, 1, '2022-09-23 10:59:18',
        '2022-11-14 16:31:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (93, 'C0', '吴烨霖', '00000000', 1, '2022-12-22 11:11:51', '15597942771', '东营', 3, 1, '2022-12-09 08:01:33',
        '2022-03-06 14:01:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (94, 'trVL', '范思远', '00000000', 1, '2022-09-13 20:23:41', '15609755979', '马鞍山', 3, 1, '2022-11-08 04:02:46',
        '2022-07-27 15:50:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (95, 'y60', '邱鹏飞', '00000000', 1, '2022-12-09 05:49:04', '15073268360', '衡水', 3, 1, '2022-05-03 16:39:41',
        '2022-11-11 05:24:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (96, '8caF', '莫哲瀚', '00000000', 1, '2022-04-27 15:35:39', '15317450611', '株洲', 3, 1, '2022-08-20 22:41:59',
        '2022-01-02 04:50:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (97, 'R75qO', '曹展鹏', '00000000', 1, '2022-01-08 18:36:23', '17721799099', '遵义', 3, 1, '2022-11-16 22:32:30',
        '2022-03-15 20:34:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (98, 'kt', '范文昊', '00000000', 1, '2022-12-06 15:45:53', '15376813872', '安阳', 3, 1, '2022-05-09 17:46:37',
        '2022-07-18 01:06:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (99, 'bQ', '刘凯瑞', '00000000', 1, '2022-03-06 21:32:13', '17714277586', '营口', 3, 1, '2022-10-28 06:13:38',
        '2022-03-28 03:39:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (100, '4eOz', '贾弘文', '00000000', 1, '2022-01-27 18:07:02', '17395635941', '安阳', 3, 1, '2022-08-11 07:21:18',
        '2022-02-28 06:50:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (101, 'Hh8O2', '孔瑞霖', '00000000', 1, '2022-09-14 09:14:29', '15307427290', '上海', 3, 1, '2022-10-24 13:26:02',
        '2022-11-14 08:04:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (102, 'kJ', '郑正豪', '00000000', 1, '2022-09-19 16:31:58', '17209662931', '天津', 3, 1, '2022-07-14 04:58:06',
        '2022-10-17 02:25:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (103, 'L3iCb', '宋驰', '00000000', 1, '2022-08-19 19:03:52', '15187675926', '泰州', 3, 1, '2022-04-02 03:52:16',
        '2022-08-06 15:05:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (104, 'znOR', '徐凯瑞', '00000000', 1, '2022-07-20 22:32:12', '17803515925', '东莞', 3, 1, '2022-05-18 09:31:05',
        '2022-03-31 18:10:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (105, 'KgqY', '李鹏', '00000000', 1, '2022-04-14 13:39:26', '17055005378', '温州', 3, 1, '2022-09-25 09:24:40',
        '2022-10-20 16:54:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (106, '1rgy', '黎建辉', '00000000', 1, '2022-06-19 12:46:57', '15297003265', '杭州', 3, 1, '2022-10-04 17:24:42',
        '2022-07-29 12:44:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (107, 'nEk', '贺昊天', '00000000', 1, '2022-07-21 13:30:58', '13743780865', '银川', 3, 1, '2022-09-25 08:06:08',
        '2022-07-08 18:22:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (108, '6I3', '黄天宇', '00000000', 1, '2022-06-30 16:18:42', '15749115018', '河源', 3, 1, '2022-07-02 15:56:37',
        '2022-01-09 21:43:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (109, 'oMq', '魏越彬', '00000000', 1, '2022-04-03 20:58:16', '15158630358', '攀枝花', 3, 1, '2022-09-11 11:45:02',
        '2022-10-16 12:19:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (110, 'Fh10p', '雷琪', '00000000', 1, '2022-01-17 01:46:59', '15242802652', '自贡', 3, 1, '2022-06-18 10:27:47',
        '2022-06-18 18:31:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (111, 'P4Vl2', '顾文昊', '00000000', 1, '2022-08-04 06:32:36', '14741702845', '锦州', 3, 1, '2022-07-17 05:40:01',
        '2022-09-23 04:15:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (112, 'xb3', '许鑫磊', '00000000', 1, '2022-10-10 05:35:19', '15253503729', '邢台', 3, 1, '2022-03-01 19:23:36',
        '2022-06-22 01:16:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (113, 'fPY', '韦健柏', '00000000', 1, '2022-10-18 05:34:12', '15623241307', '西宁', 3, 1, '2022-04-09 07:45:56',
        '2022-02-12 01:52:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (114, 'YkLUz', '苏黎昕', '00000000', 1, '2022-08-16 07:35:32', '13595021027', '成都', 3, 1, '2022-12-12 06:19:13',
        '2022-11-23 13:05:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (115, 'zaGhA', '余立诚', '00000000', 1, '2022-06-23 08:57:28', '17123825402', '张家口', 3, 1, '2022-06-11 21:34:08',
        '2022-05-15 12:45:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (116, 'avh', '钟弘文', '00000000', 1, '2022-04-08 16:56:48', '15338854089', '厦门', 3, 1, '2022-06-05 09:29:27',
        '2022-09-10 21:34:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (117, 'yC9bb', '钱子涵', '00000000', 1, '2022-01-17 23:48:01', '15590677915', '惠州', 3, 1, '2022-07-11 16:54:30',
        '2022-01-12 13:32:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (118, 'y0EG', '黄伟祺', '00000000', 1, '2022-04-30 10:07:31', '15139629674', '淮安', 3, 1, '2022-12-13 05:18:51',
        '2022-01-13 09:53:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (119, 'K6ST', '洪展鹏', '00000000', 1, '2022-01-14 06:45:14', '17882402732', '昆山', 3, 1, '2022-06-23 23:51:57',
        '2022-07-12 06:42:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (120, 'Ux', '姜子轩', '00000000', 1, '2022-09-03 04:56:28', '15680513278', '汕头', 3, 1, '2022-12-17 06:03:31',
        '2022-06-25 04:05:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (121, 'KFWhl', '史鑫磊', '00000000', 1, '2022-06-23 02:57:09', '15774542057', '江门', 3, 1, '2022-07-21 19:18:23',
        '2022-07-22 18:20:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (122, 'bxM', '丁天翊', '00000000', 1, '2022-04-07 10:09:02', '15283388879', '丽水', 3, 1, '2022-08-02 19:42:49',
        '2022-04-29 21:51:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (123, 'Ooh', '苏弘文', '00000000', 1, '2022-12-02 16:07:38', '17123331413', '安阳', 3, 1, '2022-10-18 23:41:08',
        '2022-12-31 12:34:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (124, 'z2FJw', '陶泽洋', '00000000', 1, '2022-12-21 15:08:00', '17773478004', '克拉玛依', 3, 1, '2022-02-08 21:29:40',
        '2022-07-03 17:36:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (125, 'LL5bf', '蒋胤祥', '00000000', 1, '2022-08-28 19:34:06', '17207659929', '菏泽', 3, 1, '2022-01-23 19:45:04',
        '2022-08-24 21:37:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (126, 'Uac', '朱雨泽', '00000000', 1, '2022-02-03 21:49:01', '17654740465', '阳江', 3, 1, '2022-04-11 13:51:11',
        '2022-02-21 09:39:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (127, 'Pa6Pu', '张驰', '00000000', 1, '2022-03-11 13:41:06', '14587257130', '淮安', 3, 1, '2022-10-22 02:22:16',
        '2022-12-19 07:06:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (128, 'kAk', '夏子默', '00000000', 1, '2022-10-03 02:30:55', '17043773494', '清远', 3, 1, '2022-02-26 01:42:53',
        '2022-10-18 03:07:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (129, 'AOZor', '戴胤祥', '00000000', 1, '2022-07-29 09:26:44', '15925801123', '临安', 3, 1, '2022-03-26 07:31:19',
        '2022-12-23 15:02:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (130, 'y7YNd', '贺峻熙', '00000000', 1, '2022-06-12 11:45:24', '18128433511', '青岛', 3, 1, '2022-10-07 10:11:16',
        '2022-07-11 07:43:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (131, 'bU2', '魏嘉熙', '00000000', 1, '2022-12-16 12:37:55', '15531782344', '海门', 3, 1, '2022-08-13 23:24:45',
        '2022-07-30 09:22:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (132, '9HafK', '彭鹏', '00000000', 1, '2022-07-18 03:40:54', '17809240669', '莱西', 3, 1, '2022-06-13 15:46:39',
        '2022-06-22 03:42:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (133, 'vCm9', '江文博', '00000000', 1, '2022-05-16 00:14:18', '15606407946', '淄博', 3, 1, '2022-03-01 16:29:18',
        '2022-09-09 20:17:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (134, 'cxO', '杨修杰', '00000000', 1, '2022-07-06 22:40:36', '15684020043', '宜兴', 3, 1, '2022-02-15 03:08:48',
        '2022-03-31 17:06:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (135, 'cSC', '卢嘉懿', '00000000', 1, '2022-07-08 23:34:22', '15518019649', '呼和浩特', 3, 1, '2022-11-09 20:09:04',
        '2022-01-22 05:55:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (136, 'pu', '叶烨伟', '00000000', 1, '2022-07-31 21:22:12', '15041849264', '上海', 3, 1, '2022-10-02 20:35:09',
        '2022-10-14 23:53:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (137, 'fI', '邵智渊', '00000000', 1, '2022-08-03 15:05:14', '17338164180', '清远', 3, 1, '2022-11-07 22:41:59',
        '2022-05-31 00:41:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (138, 'oVCle', '黎博超', '00000000', 1, '2022-05-24 01:18:20', '15727241941', '日照', 3, 1, '2022-06-12 16:44:20',
        '2022-08-17 23:39:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (139, 'EB', '潘熠彤', '00000000', 1, '2022-03-14 17:46:07', '14567979629', '章丘', 3, 1, '2022-05-13 14:57:52',
        '2022-01-17 07:55:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (140, 'Xi7', '廖立轩', '00000000', 1, '2022-01-02 21:45:36', '15888996715', '绵阳', 3, 1, '2022-04-20 13:54:29',
        '2022-05-25 12:15:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (141, 'bml', '覃彬', '00000000', 1, '2022-03-13 23:41:13', '15091730801', '烟台', 3, 1, '2022-07-03 12:08:32',
        '2022-06-15 18:31:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (142, 'nY', '邓志强', '00000000', 1, '2022-12-20 11:40:52', '17154744741', '诸暨', 3, 1, '2022-12-20 03:16:18',
        '2022-12-26 02:27:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (143, 'E6b', '邹天宇', '00000000', 1, '2022-07-10 05:47:10', '15664547203', '句容', 3, 1, '2022-06-03 20:41:29',
        '2022-04-29 19:58:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (144, 'J5', '邵浩然', '00000000', 1, '2022-03-06 05:22:29', '17642624061', '海口', 3, 1, '2022-11-27 17:18:44',
        '2022-09-16 16:19:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (145, 'n4N', '杨梓晨', '00000000', 1, '2022-07-11 03:41:42', '14573920995', '宜昌', 3, 1, '2022-09-20 08:27:23',
        '2022-09-20 11:55:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (146, 'GQYBF', '邓鸿涛', '00000000', 1, '2022-06-20 19:45:34', '15264051302', '溧阳', 3, 1, '2022-11-14 19:16:31',
        '2022-11-11 07:54:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (147, 'I0aR', '姜绍齐', '00000000', 1, '2022-06-08 05:21:05', '15139313529', '抚顺', 3, 1, '2022-08-29 13:43:32',
        '2022-02-15 06:30:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (148, '1NN', '姜峻熙', '00000000', 1, '2022-09-19 17:48:32', '15374869249', '淮安', 3, 1, '2022-02-01 00:19:01',
        '2022-03-20 16:17:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (149, '32z', '曾博涛', '00000000', 1, '2022-09-23 22:49:59', '17275176232', '烟台', 3, 1, '2022-03-02 09:33:33',
        '2022-04-19 04:10:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (150, 'MC', '丁琪', '00000000', 1, '2022-02-10 18:11:47', '14707036494', '衢州', 3, 1, '2022-12-29 06:07:20',
        '2022-09-24 00:24:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (151, 'i0T5m', '胡钰轩', '00000000', 1, '2022-08-11 06:53:42', '15288617330', '泰州', 3, 1, '2022-10-01 21:34:20',
        '2022-10-11 01:27:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (152, 'IfEM', '尹思远', '00000000', 1, '2022-08-12 16:59:45', '15110458616', '成都', 3, 1, '2022-01-09 06:44:21',
        '2022-10-06 16:53:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (153, 'WWR', '杨彬', '00000000', 1, '2022-01-22 02:28:34', '18529276794', '芜湖', 3, 1, '2022-02-07 18:06:08',
        '2022-01-07 16:00:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (154, 'iBK', '白峻熙', '00000000', 1, '2022-11-23 20:35:07', '17281436611', '淄博', 3, 1, '2022-07-04 17:24:51',
        '2022-12-25 06:09:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (155, '8LoZy', '贺雨泽', '00000000', 1, '2022-05-02 01:47:26', '17634135025', '临沂', 3, 1, '2022-10-05 07:40:11',
        '2022-02-14 20:25:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (156, '3tM1y', '萧昊焱', '00000000', 1, '2022-04-27 23:47:26', '13000196551', '鞍山', 3, 1, '2022-07-02 01:44:31',
        '2022-12-17 00:46:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (157, 'hCr', '周智宸', '00000000', 1, '2022-05-07 16:13:13', '17506577048', '无锡', 3, 1, '2022-10-31 19:00:09',
        '2022-09-11 17:08:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (158, 'f5', '谭远航', '00000000', 1, '2022-02-09 22:42:49', '15871337853', '渭南', 3, 1, '2022-07-11 07:42:06',
        '2022-03-23 02:06:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (159, 'tKVd', '阎正豪', '00000000', 1, '2022-05-18 15:57:03', '13995925344', '济宁', 3, 1, '2022-04-02 15:11:52',
        '2022-03-27 04:49:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (160, 'jfM', '卢鸿煊', '00000000', 1, '2022-06-24 17:54:53', '17772477148', '泰安', 3, 1, '2022-09-07 20:02:42',
        '2022-08-12 21:13:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (161, 'lRuU', '戴航', '00000000', 1, '2022-07-08 21:11:48', '17049041899', '阳泉', 3, 1, '2022-07-07 07:56:02',
        '2022-06-24 08:00:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (162, 'LJN', '曹浩宇', '00000000', 1, '2022-04-12 18:32:40', '17687286701', '咸阳', 3, 1, '2022-11-28 18:42:26',
        '2022-04-18 12:41:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (163, 'YW', '邱涛', '00000000', 1, '2022-04-28 06:38:27', '17844058191', '青岛', 3, 1, '2022-12-22 01:22:15',
        '2022-05-23 15:50:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (164, 'eNb', '冯伟祺', '00000000', 1, '2022-12-24 17:16:08', '15612982245', '泸州', 3, 1, '2022-02-16 06:45:19',
        '2022-11-19 14:49:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (165, '21CY', '袁风华', '00000000', 1, '2022-09-29 00:09:52', '15182046335', '莱西', 3, 1, '2022-03-09 18:01:49',
        '2022-04-22 12:50:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (166, 'FM21', '王思源', '00000000', 1, '2022-10-04 01:43:26', '15959741848', '三亚', 3, 1, '2022-08-03 06:28:23',
        '2022-08-04 12:30:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (167, 'dYYQL', '胡雨泽', '00000000', 1, '2022-03-31 07:59:44', '17899146570', '重庆', 3, 1, '2022-08-27 23:33:34',
        '2022-10-15 17:12:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (168, 'u81h', '邵瑾瑜', '00000000', 1, '2022-04-06 04:54:56', '15795230894', '锦州', 3, 1, '2022-10-20 06:51:19',
        '2022-08-01 05:53:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (169, '8x', '阎振家', '00000000', 1, '2022-07-28 14:52:48', '17788661421', '上海', 3, 1, '2022-07-20 11:42:40',
        '2022-06-09 17:25:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (170, '4uR', '郑晋鹏', '00000000', 1, '2022-12-02 08:24:11', '15977907459', '聊城', 3, 1, '2022-11-05 01:38:50',
        '2022-02-03 21:25:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (171, 'HuN', '梁鸿煊', '00000000', 1, '2022-04-27 12:24:32', '18464769848', '潮州', 3, 1, '2022-08-01 14:35:09',
        '2022-02-27 05:11:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (172, 'B5Qj', '高昊天', '00000000', 1, '2022-03-22 22:29:03', '17543107063', '金坛', 3, 1, '2022-12-30 09:01:16',
        '2022-11-12 12:12:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (173, '0MNNL', '孔绍辉', '00000000', 1, '2022-03-28 17:40:36', '15213254176', '唐山', 3, 1, '2022-01-03 08:03:28',
        '2022-09-16 19:42:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (174, 'ulN', '洪俊驰', '00000000', 1, '2022-12-08 18:26:54', '17309959325', '乌鲁木齐', 3, 1, '2022-01-25 10:56:47',
        '2022-02-11 23:06:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (175, 'nhP5', '叶果', '00000000', 1, '2022-02-21 18:58:11', '15707544665', '海口', 3, 1, '2022-09-26 15:14:31',
        '2022-06-11 20:39:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (176, 'nEHk', '白天磊', '00000000', 1, '2022-11-27 02:40:56', '15370475734', '秦皇岛', 3, 1, '2022-11-22 21:54:53',
        '2022-12-21 13:43:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (177, 'aYw', '邹健柏', '00000000', 1, '2022-07-24 14:17:41', '13539265804', '芜湖', 3, 1, '2022-08-01 19:11:38',
        '2022-01-25 01:38:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (178, 'jghGF', '邓天磊', '00000000', 1, '2022-04-25 20:10:15', '15722484865', '银川', 3, 1, '2022-07-15 23:05:29',
        '2022-03-07 22:40:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (179, 'xjhp', '潘金鑫', '00000000', 1, '2022-12-10 18:35:41', '17084710391', '郑州', 3, 1, '2022-05-13 20:06:36',
        '2022-03-05 05:40:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (180, 'qxT2', '萧楷瑞', '00000000', 1, '2022-07-19 13:28:47', '13206165525', '乌鲁木齐', 3, 1, '2022-03-12 10:22:02',
        '2022-09-10 07:00:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (181, 'wpRnw', '丁志强', '00000000', 1, '2022-02-23 15:34:52', '17083836178', '临安', 3, 1, '2022-09-21 08:08:54',
        '2022-01-19 07:22:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (182, '1jx', '徐明杰', '00000000', 1, '2022-09-17 08:13:37', '17891673531', '张家界', 3, 1, '2022-09-26 19:45:18',
        '2022-08-23 21:05:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (183, 'SvvPy', '梁子涵', '00000000', 1, '2022-09-02 00:49:26', '17759703914', '邢台', 3, 1, '2022-01-15 11:59:53',
        '2022-02-09 13:15:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (184, 'ysfFw', '金博超', '00000000', 1, '2022-09-27 03:20:10', '18971208808', '章丘', 3, 1, '2022-02-14 04:09:26',
        '2022-11-22 15:18:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (185, 'LsXML', '侯金鑫', '00000000', 1, '2022-11-29 18:37:13', '17052265098', '岳阳', 3, 1, '2022-02-04 15:31:09',
        '2022-03-21 18:41:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (186, 'IzP', '苏智辉', '00000000', 1, '2022-10-22 09:33:50', '17682931852', '莱州', 3, 1, '2022-12-16 13:58:44',
        '2022-03-06 05:53:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (187, '4bi', '董文', '00000000', 1, '2022-08-04 17:57:41', '17254957509', '德阳', 3, 1, '2022-04-09 10:36:52',
        '2022-08-27 10:33:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (188, 'ZbcsE', '洪君浩', '00000000', 1, '2022-01-26 21:59:27', '17834573228', '包头', 3, 1, '2022-10-26 09:04:44',
        '2022-04-03 07:18:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (189, 'Ynd', '阎修杰', '00000000', 1, '2022-02-12 21:37:40', '14540081635', '青岛', 3, 1, '2022-11-02 10:00:08',
        '2022-01-10 16:19:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (190, 'AR', '陈昊强', '00000000', 1, '2022-11-26 19:06:14', '17699890390', '德阳', 3, 1, '2022-01-06 06:24:07',
        '2022-07-05 19:32:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (191, 'SP9g7', '廖越彬', '00000000', 1, '2022-01-25 04:46:12', '15615504522', '牡丹江', 3, 1, '2022-12-08 06:25:48',
        '2022-02-01 12:39:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (192, 'TrTcs', '杜乐驹', '00000000', 1, '2022-08-28 01:06:58', '13369996573', '重庆', 3, 1, '2022-08-17 01:25:04',
        '2022-06-05 21:38:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (193, 'EAs', '郭哲瀚', '00000000', 1, '2022-12-21 23:19:48', '17373594543', '邯郸', 3, 1, '2022-02-22 01:31:38',
        '2022-11-06 15:04:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (194, 'io4X', '贾弘文', '00000000', 1, '2022-12-15 10:41:58', '17102567168', '汕尾', 3, 1, '2022-04-04 06:51:53',
        '2022-08-22 04:15:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (195, 'oy1D', '史子轩', '00000000', 1, '2022-10-18 17:39:38', '15810288810', '烟台', 3, 1, '2022-05-07 07:24:38',
        '2022-06-23 19:45:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (196, 'cF', '冯绍齐', '00000000', 1, '2022-01-14 05:31:36', '15348245868', '泰州', 3, 1, '2022-12-28 05:06:27',
        '2022-06-14 01:07:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (197, 'MRd', '任鑫磊', '00000000', 1, '2022-10-19 01:18:06', '17106351726', '东营', 3, 1, '2022-08-24 06:57:13',
        '2022-03-05 10:31:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (198, 'bm0LC', '苏越彬', '00000000', 1, '2022-06-26 03:13:11', '15175392210', '玉溪', 3, 1, '2022-11-15 13:14:17',
        '2022-05-09 19:40:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (199, 'fG', '戴鹭洋', '00000000', 1, '2022-12-21 12:54:44', '15745868146', '太原', 3, 1, '2022-10-28 20:41:51',
        '2022-01-05 20:17:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (200, 'ZE', '龚健柏', '00000000', 1, '2022-04-28 03:05:32', '15587791030', '滨州', 3, 1, '2022-11-06 06:02:08',
        '2022-04-01 06:36:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (201, 'FGo9Q', '丁明轩', '00000000', 1, '2022-11-14 01:42:59', '17322971820', '吉林', 3, 1, '2022-01-16 03:28:29',
        '2022-03-28 13:20:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (202, 'ST', '于伟祺', '00000000', 1, '2022-01-20 06:29:23', '15226175015', '宿迁', 3, 1, '2022-08-28 08:13:29',
        '2022-08-02 06:38:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (203, '3Rzws', '冯博涛', '00000000', 1, '2022-05-14 10:12:48', '17882158563', '鞍山', 3, 1, '2022-07-10 00:26:00',
        '2022-02-19 09:34:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (204, 'R6', '雷昊天', '00000000', 1, '2022-11-27 06:42:07', '17189590331', '焦作', 3, 1, '2022-10-13 18:14:08',
        '2022-04-28 20:23:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (205, 'VZhe', '赵泽洋', '00000000', 1, '2022-04-28 20:35:34', '15073259193', '章丘', 3, 1, '2022-07-21 14:17:49',
        '2022-01-26 01:58:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (206, 'sQAnY', '范立果', '00000000', 1, '2022-09-02 06:31:03', '15696472273', '柳州', 3, 1, '2022-09-01 09:02:30',
        '2022-02-11 17:27:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (207, 'flRwM', '卢致远', '00000000', 1, '2022-03-23 20:19:44', '17866789182', '嘉兴', 3, 1, '2022-03-18 14:35:15',
        '2022-07-29 16:21:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (208, 'GV8', '任鹭洋', '00000000', 1, '2022-07-28 19:52:14', '15061053338', '上海', 3, 1, '2022-10-24 05:43:34',
        '2022-02-15 18:06:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (209, 'fs', '金浩宇', '00000000', 1, '2022-02-17 17:19:10', '13371090307', '诸暨', 3, 1, '2022-02-19 13:23:29',
        '2022-09-20 08:57:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (210, 'Qr', '薛瑞霖', '00000000', 1, '2022-09-23 03:09:52', '17242907933', '大同', 3, 1, '2022-03-20 05:45:43',
        '2022-11-15 21:05:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (211, 'xxBiv', '熊浩轩', '00000000', 1, '2022-01-30 14:35:05', '17250664631', '清远', 3, 1, '2022-08-06 01:27:53',
        '2022-08-22 06:32:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (212, 'JC8d', '袁胤祥', '00000000', 1, '2022-05-18 13:12:37', '15646472652', '拉萨', 3, 1, '2022-08-21 07:16:04',
        '2022-10-02 18:46:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (213, 'ZaIk', '朱风华', '00000000', 1, '2022-12-08 23:23:16', '15018453462', '韶关', 3, 1, '2022-10-10 14:27:21',
        '2022-07-24 18:17:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (214, 'ekW', '沈天磊', '00000000', 1, '2022-05-17 05:50:47', '15239683829', '滨州', 3, 1, '2022-03-08 22:22:28',
        '2022-08-31 12:27:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (215, 'E3GW', '邓荣轩', '00000000', 1, '2022-09-02 17:33:55', '15596667094', '东莞', 3, 1, '2022-11-03 04:46:12',
        '2022-08-01 20:18:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (216, 'eG5o', '夏远航', '00000000', 1, '2022-09-24 10:14:10', '17061022806', '洛阳', 3, 1, '2022-04-29 20:28:19',
        '2022-11-30 05:43:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (217, '5A', '万立果', '00000000', 1, '2022-07-21 13:36:46', '15881916670', '成都', 3, 1, '2022-08-14 07:17:14',
        '2022-05-27 02:50:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (218, '6y', '钱乐驹', '00000000', 1, '2022-06-21 16:40:06', '17255421667', '聊城', 3, 1, '2022-03-29 12:11:15',
        '2022-01-21 16:18:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (219, '91', '蒋伟祺', '00000000', 1, '2022-09-02 04:28:42', '17764676176', '柳州', 3, 1, '2022-01-21 14:19:00',
        '2022-05-12 19:03:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (220, 'a5', '覃昊天', '00000000', 1, '2022-07-26 17:28:10', '17158120306', '武汉', 3, 1, '2022-01-24 12:38:11',
        '2022-03-12 20:54:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (221, 'gc', '万驰', '00000000', 1, '2022-04-14 14:22:36', '15313371595', '锦州', 3, 1, '2022-10-24 02:58:57',
        '2022-12-04 22:20:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (222, 'wic', '董展鹏', '00000000', 1, '2022-04-16 17:20:53', '15569985845', '无锡', 3, 1, '2022-10-22 16:28:04',
        '2022-03-29 22:06:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (223, 'cf', '马文昊', '00000000', 1, '2022-04-06 02:34:06', '15885115147', '日照', 3, 1, '2022-02-17 01:49:42',
        '2022-06-16 01:34:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (224, 'Ua', '邓建辉', '00000000', 1, '2022-06-29 15:30:16', '15968535075', '菏泽', 3, 1, '2022-03-22 00:54:44',
        '2022-03-25 02:39:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (225, 'ik', '武泽洋', '00000000', 1, '2022-04-11 10:40:55', '17861377545', '舟山', 3, 1, '2022-12-31 22:56:19',
        '2022-02-05 14:27:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (226, 'WF', '顾昊然', '00000000', 1, '2022-05-22 03:55:30', '18065059262', '阳泉', 3, 1, '2022-10-05 10:45:50',
        '2022-05-09 01:33:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (227, 'E5dR', '贺鹤轩', '00000000', 1, '2022-07-25 13:31:41', '15212268987', '洛阳', 3, 1, '2022-11-27 20:56:57',
        '2022-04-01 00:54:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (228, 'MDA', '白明辉', '00000000', 1, '2022-06-07 18:07:00', '17343371491', '德州', 3, 1, '2022-11-22 19:53:54',
        '2022-07-08 18:04:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (229, 'sEUF', '袁潇然', '00000000', 1, '2022-01-02 03:38:02', '17560698073', '太仓', 3, 1, '2022-03-05 11:33:00',
        '2022-08-24 02:12:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (230, 'bk0', '龙正豪', '00000000', 1, '2022-12-25 10:00:31', '17862243809', '承德', 3, 1, '2022-08-11 16:16:43',
        '2022-06-28 21:58:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (231, '55mL', '张凯瑞', '00000000', 1, '2022-09-28 20:10:53', '17304297948', '遵义', 3, 1, '2022-08-04 06:36:50',
        '2022-06-03 10:26:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (232, 'ikm5n', '夏晓博', '00000000', 1, '2022-07-01 14:17:47', '15227870395', '潮州', 3, 1, '2022-09-01 09:00:44',
        '2022-12-03 13:35:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (233, 'WM', '吕航', '00000000', 1, '2022-11-01 10:53:26', '17155757716', '石家庄', 3, 1, '2022-06-08 10:01:54',
        '2022-08-10 23:00:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (234, 'oW5', '蔡致远', '00000000', 1, '2022-11-25 21:44:05', '15981814596', '太原', 3, 1, '2022-05-10 17:05:08',
        '2022-08-27 23:27:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (235, 'DRn', '周鑫鹏', '00000000', 1, '2022-03-07 18:18:29', '13547648510', '鄂尔多斯', 3, 1, '2022-06-07 01:02:55',
        '2022-10-14 04:34:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (236, 'oie', '毛风华', '00000000', 1, '2022-03-13 11:10:43', '15679736294', '邢台', 3, 1, '2022-07-26 13:12:25',
        '2022-11-06 01:16:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (237, 'o5', '姚黎昕', '00000000', 1, '2022-09-02 16:20:10', '14761125284', '嘉兴', 3, 1, '2022-10-21 01:56:32',
        '2022-10-24 21:24:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (238, 'F2Wq', '彭鹏涛', '00000000', 1, '2022-10-09 01:20:49', '17031473777', '渭南', 3, 1, '2022-02-13 06:02:20',
        '2022-03-31 00:39:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (239, 'J2dQo', '魏耀杰', '00000000', 1, '2022-12-24 17:40:41', '14573038854', '济南', 3, 1, '2022-02-21 16:36:48',
        '2022-05-12 04:47:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (240, 'pjslu', '邹浩然', '00000000', 1, '2022-07-21 02:20:07', '17004923632', '秦皇岛', 3, 1, '2022-03-27 08:15:56',
        '2022-11-14 10:44:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (241, '2LL2', '田航', '00000000', 1, '2022-05-05 22:18:02', '17680191925', '营口', 3, 1, '2022-03-28 14:28:31',
        '2022-09-07 23:51:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (242, 'TuQ', '薛君浩', '00000000', 1, '2022-07-17 20:09:40', '17340380250', '泉州', 3, 1, '2022-10-05 06:35:20',
        '2022-02-04 02:11:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (243, 'ywrsZ', '罗明辉', '00000000', 1, '2022-03-28 07:28:19', '15847943104', '锦州', 3, 1, '2022-08-20 10:43:09',
        '2022-10-30 01:54:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (244, '9My', '崔远航', '00000000', 1, '2022-05-24 18:54:37', '17053745715', '岳阳', 3, 1, '2022-12-13 21:42:48',
        '2022-03-28 23:06:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (245, 'iu', '段晋鹏', '00000000', 1, '2022-03-25 10:45:17', '17091151098', '营口', 3, 1, '2022-06-12 10:25:14',
        '2022-06-12 06:40:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (246, '8PQ', '曹正豪', '00000000', 1, '2022-11-11 13:46:28', '17827301589', '遵义', 3, 1, '2022-01-24 05:19:50',
        '2022-09-14 08:24:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (247, 'HyR', '杜健柏', '00000000', 1, '2022-04-08 17:08:16', '13662338346', '胶州', 3, 1, '2022-07-19 18:32:44',
        '2022-06-27 08:12:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (248, 'qz', '邓晟睿', '00000000', 1, '2022-12-12 11:25:10', '15706292953', '湘潭', 3, 1, '2022-02-19 22:02:32',
        '2022-09-03 22:39:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (249, '4Ja', '钱烨霖', '00000000', 1, '2022-09-24 22:30:35', '17068509172', '宁波', 3, 1, '2022-03-11 20:25:30',
        '2022-03-14 09:27:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (250, 'lE', '胡鹏煊', '00000000', 1, '2022-03-06 02:49:31', '17717426557', '徐州', 3, 1, '2022-04-17 15:13:19',
        '2022-06-06 01:10:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (251, '6d8u', '冯昊然', '00000000', 1, '2022-11-11 07:23:22', '14527347998', '常州', 3, 1, '2022-04-18 02:59:33',
        '2022-01-16 10:47:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (252, 'ujn0', '熊胤祥', '00000000', 1, '2022-07-27 08:01:39', '13691440626', '张家界', 3, 1, '2022-12-27 15:35:40',
        '2022-10-05 01:47:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (253, '30', '唐耀杰', '00000000', 1, '2022-03-16 21:33:42', '14572517987', '滨州', 3, 1, '2022-03-15 02:39:43',
        '2022-10-06 10:56:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (254, 'cIj', '苏瑞霖', '00000000', 1, '2022-06-30 18:05:44', '15926361465', '清远', 3, 1, '2022-01-11 08:44:18',
        '2022-05-10 07:45:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (255, 'Xv', '叶旭尧', '00000000', 1, '2022-02-02 02:38:27', '14741283848', '库尔勒', 3, 1, '2022-10-15 08:21:10',
        '2022-02-14 01:03:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (256, 'iNA', '黄振家', '00000000', 1, '2022-11-02 09:26:40', '15579815374', '焦作', 3, 1, '2022-06-27 18:11:36',
        '2022-02-28 22:16:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (257, 'Jusr7', '韩皓轩', '00000000', 1, '2022-08-24 05:04:36', '17755319554', '烟台', 3, 1, '2022-09-19 07:36:17',
        '2022-06-22 06:06:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (258, 'KTJnC', '唐聪健', '00000000', 1, '2022-07-09 05:41:40', '13693483041', '乌鲁木齐', 3, 1, '2022-03-26 16:21:30',
        '2022-08-01 10:27:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (259, 'WWUP', '卢立辉', '00000000', 1, '2022-04-30 06:18:56', '15362359097', '大同', 3, 1, '2022-01-19 07:24:05',
        '2022-11-16 13:58:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (260, 'or', '郑煜城', '00000000', 1, '2022-09-20 02:28:20', '14765376508', '汕头', 3, 1, '2022-03-24 03:39:16',
        '2022-04-21 04:10:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (261, '6X1', '江绍齐', '00000000', 1, '2022-06-23 09:49:08', '15646913348', '丽水', 3, 1, '2022-04-28 16:27:19',
        '2022-06-19 11:17:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (262, 'hCN', '姚炎彬', '00000000', 1, '2022-02-08 13:23:59', '15261685828', '赤峰', 3, 1, '2022-10-07 20:58:59',
        '2022-12-21 15:43:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (263, '7oe', '孔健雄', '00000000', 1, '2022-03-16 03:42:14', '17230171503', '沈阳', 3, 1, '2022-09-30 10:40:38',
        '2022-09-09 01:01:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (264, 's9', '吕瑾瑜', '00000000', 1, '2022-11-28 19:42:44', '17237552762', '锦州', 3, 1, '2022-11-23 17:11:29',
        '2022-07-06 11:07:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (265, 'eHw', '唐语堂', '00000000', 1, '2022-01-18 01:57:31', '15815002106', '广州', 3, 1, '2022-08-03 06:06:04',
        '2022-05-05 12:51:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (266, 'JD', '侯晓博', '00000000', 1, '2022-12-12 09:52:48', '15791108607', '南昌', 3, 1, '2022-01-15 21:32:50',
        '2022-12-07 13:59:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (267, 'rJ', '熊苑博', '00000000', 1, '2022-11-08 17:43:53', '17535813144', '玉溪', 3, 1, '2022-05-26 07:21:31',
        '2022-07-14 02:52:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (268, 'XK', '卢越彬', '00000000', 1, '2022-05-06 16:30:42', '13719152208', '渭南', 3, 1, '2022-10-06 08:43:50',
        '2022-04-19 20:59:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (269, 'zITb', '钟瑾瑜', '00000000', 1, '2022-11-25 15:00:58', '17636657961', '潍坊', 3, 1, '2022-07-06 11:51:18',
        '2022-06-07 00:28:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (270, 'LY', '彭思淼', '00000000', 1, '2022-03-31 21:04:26', '17634151566', '西宁', 3, 1, '2022-12-27 14:27:51',
        '2022-08-24 00:12:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (271, 'o4f', '杜涛', '00000000', 1, '2022-07-15 10:18:31', '17576418793', '威海', 3, 1, '2022-07-11 03:13:04',
        '2022-11-26 12:10:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (272, 'aD', '王昊然', '00000000', 1, '2022-05-09 01:45:43', '15803958600', '德州', 3, 1, '2022-07-26 00:14:13',
        '2022-08-20 09:04:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (273, 'nSSw7', '薛煜城', '00000000', 1, '2022-09-22 03:47:41', '13840026241', '北海', 3, 1, '2022-08-12 17:17:28',
        '2022-01-18 03:01:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (274, 'UBY', '段远航', '00000000', 1, '2022-08-22 12:05:28', '15827045496', '马鞍山', 3, 1, '2022-03-09 11:06:01',
        '2022-07-03 04:20:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (275, 'mMcH', '于俊驰', '00000000', 1, '2022-11-01 06:10:29', '15992822462', '广州', 3, 1, '2022-06-16 12:47:02',
        '2022-07-16 21:58:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (276, 'vzmqJ', '何鸿煊', '00000000', 1, '2022-05-31 06:17:25', '15127878018', '扬州', 3, 1, '2022-01-03 05:58:06',
        '2022-01-27 02:58:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (277, 'sAb', '白子轩', '00000000', 1, '2022-09-15 16:15:02', '17191587407', '厦门', 3, 1, '2022-11-22 12:44:52',
        '2022-01-01 08:34:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (278, '7OF1', '董聪健', '00000000', 1, '2022-07-21 19:05:11', '13623129518', '舟山', 3, 1, '2022-01-30 05:09:00',
        '2022-03-11 04:18:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (279, 'ewBF', '邹修杰', '00000000', 1, '2022-09-22 04:07:28', '17051480217', '呼和浩特', 3, 1, '2022-11-03 09:18:31',
        '2022-09-14 18:02:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (280, 'ZZ8n', '苏昊然', '00000000', 1, '2022-08-09 07:01:38', '17856307848', '河源', 3, 1, '2022-12-17 10:52:20',
        '2022-10-17 13:11:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (281, 'Ft6Da', '刘瑞霖', '00000000', 1, '2022-10-29 21:36:10', '15265602422', '平顶山', 3, 1, '2022-01-25 21:18:59',
        '2022-11-12 02:47:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (282, '5cSk', '秦越彬', '00000000', 1, '2022-06-15 20:20:22', '15615231840', '张家界', 3, 1, '2022-10-18 05:13:21',
        '2022-03-12 23:21:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (283, 'guSP', '余俊驰', '00000000', 1, '2022-12-30 20:09:31', '17138708943', '沧州', 3, 1, '2022-05-14 12:21:27',
        '2022-06-10 04:05:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (284, 'iiU', '苏泽洋', '00000000', 1, '2022-09-19 11:36:52', '14716939409', '郑州', 3, 1, '2022-05-25 10:04:18',
        '2022-02-17 19:50:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (285, 'eu', '魏鹏涛', '00000000', 1, '2022-04-13 03:09:02', '17057131734', '东莞', 3, 1, '2022-02-10 19:52:13',
        '2022-04-16 15:51:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (286, 'KF', '熊楷瑞', '00000000', 1, '2022-08-24 06:09:20', '14563348924', '赤峰', 3, 1, '2022-03-09 00:28:24',
        '2022-10-08 07:27:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (287, 'Ks4Q', '丁烨霖', '00000000', 1, '2022-05-20 15:53:38', '15974657186', '东营', 3, 1, '2022-06-23 07:12:59',
        '2022-05-21 21:47:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (288, 'RU', '薛伟泽', '00000000', 1, '2022-01-19 01:10:14', '13202297782', '长治', 3, 1, '2022-05-19 11:52:51',
        '2022-12-18 10:53:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (289, 'Sz', '丁文博', '00000000', 1, '2022-08-07 11:46:14', '17159765511', '平顶山', 3, 1, '2022-05-14 08:17:11',
        '2022-07-11 07:07:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (290, 'E6', '史煜城', '00000000', 1, '2022-12-03 18:30:45', '17533756032', '丹东', 3, 1, '2022-04-08 07:12:50',
        '2022-07-13 13:22:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (291, 'A3Nq', '梁烨华', '00000000', 1, '2022-02-20 03:56:35', '17390238805', '桂林', 3, 1, '2022-09-21 18:10:04',
        '2022-05-29 04:26:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (292, 'ESYN', '梁锦程', '00000000', 1, '2022-01-25 01:35:59', '15245136228', '茂名', 3, 1, '2022-01-12 06:23:07',
        '2022-05-30 21:35:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (293, 'yLhb', '贾远航', '00000000', 1, '2022-02-14 12:40:32', '17328721286', '徐州', 3, 1, '2022-10-04 02:42:14',
        '2022-03-09 10:09:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (294, 'lc', '陆修洁', '00000000', 1, '2022-09-20 11:34:01', '15787043054', '云浮', 3, 1, '2022-10-26 19:26:21',
        '2022-04-14 15:25:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (295, '4Alk2', '武天宇', '00000000', 1, '2022-12-09 11:11:29', '17101623309', '石家庄', 3, 1, '2022-07-01 07:32:29',
        '2022-11-28 14:12:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (296, 'uP', '毛思远', '00000000', 1, '2022-02-16 04:26:54', '13589820272', '大庆', 3, 1, '2022-08-23 09:26:46',
        '2022-09-08 21:14:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (297, 'Du0j', '邓立辉', '00000000', 1, '2022-08-01 04:46:20', '15173467956', '攀枝花', 3, 1, '2022-11-24 19:52:18',
        '2022-03-03 09:08:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (298, 'kOWMs', '江立果', '00000000', 1, '2022-01-06 21:56:23', '15851646009', '荆州', 3, 1, '2022-07-26 16:57:40',
        '2022-03-11 08:14:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (299, 'JYrcv', '董鹏', '00000000', 1, '2022-01-16 07:24:53', '17320657446', '深圳', 3, 1, '2022-02-28 04:01:59',
        '2022-03-03 14:40:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (300, '628V', '许昊焱', '00000000', 1, '2022-05-29 23:14:51', '15698685318', '文登', 3, 1, '2022-12-26 01:13:16',
        '2022-04-25 08:53:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (301, 'Vi', '薛文', '00000000', 1, '2022-01-20 08:28:27', '17836705944', '诸暨', 3, 1, '2022-12-17 01:14:16',
        '2022-03-09 13:38:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (302, 'W8G', '叶绍辉', '00000000', 1, '2022-04-22 02:37:22', '15118025673', '泰安', 3, 1, '2022-12-07 10:30:35',
        '2022-09-24 03:40:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (303, 'K4gI', '苏伟宸', '00000000', 1, '2022-07-03 21:31:30', '17843029450', '绍兴', 3, 1, '2022-11-16 12:28:00',
        '2022-06-30 19:41:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (304, 'Pgz', '高思', '00000000', 1, '2022-08-15 02:29:20', '17793581101', '北京', 3, 1, '2022-12-17 11:28:57',
        '2022-03-07 17:52:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (305, 'knwvV', '彭胤祥', '00000000', 1, '2022-04-14 02:37:13', '15908462582', '葫芦岛', 3, 1, '2022-12-13 04:02:40',
        '2022-11-26 12:01:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (306, 'wkD', '郝耀杰', '00000000', 1, '2022-07-31 17:43:06', '17342809131', '平顶山', 3, 1, '2022-05-22 07:41:11',
        '2022-12-01 13:46:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (307, 'kR', '梁靖琪', '00000000', 1, '2022-12-27 17:27:28', '15352528202', '邯郸', 3, 1, '2022-11-08 15:57:12',
        '2022-05-22 04:56:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (308, 'iU4G', '许语堂', '00000000', 1, '2022-10-08 22:44:58', '15675882972', '茂名', 3, 1, '2022-04-25 12:34:18',
        '2022-12-11 18:35:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (309, 'R22', '叶昊天', '00000000', 1, '2022-10-01 23:28:32', '18138733491', '南宁', 3, 1, '2022-04-13 19:59:21',
        '2022-08-13 15:24:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (310, '3Jbjs', '郭越彬', '00000000', 1, '2022-12-11 19:55:14', '13320216029', '库尔勒', 3, 1, '2022-04-15 00:45:48',
        '2022-06-16 11:07:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (311, 'dH', '韩钰轩', '00000000', 1, '2022-08-03 14:31:43', '17674002016', '韶关', 3, 1, '2022-03-14 23:30:36',
        '2022-02-05 07:30:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (312, 'bD', '任博文', '00000000', 1, '2022-05-01 02:02:24', '14538268465', '瓦房店', 3, 1, '2022-05-31 12:21:21',
        '2022-07-29 22:11:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (313, 'qt', '毛智渊', '00000000', 1, '2022-05-31 00:38:06', '15296129716', '莱州', 3, 1, '2022-02-15 15:39:44',
        '2022-12-16 10:55:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (314, 'QB', '陈文', '00000000', 1, '2022-07-03 15:00:02', '15143672072', '深圳', 3, 1, '2022-06-06 10:56:31',
        '2022-03-30 20:06:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (315, 'N8Q', '秦智辉', '00000000', 1, '2022-11-14 15:45:14', '17717332770', '寿光', 3, 1, '2022-11-11 13:05:32',
        '2022-12-05 02:41:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (316, 'usC', '彭志泽', '00000000', 1, '2022-12-06 10:37:37', '17580223968', '秦皇岛', 3, 1, '2022-04-27 22:00:14',
        '2022-03-06 21:29:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (317, 'c46', '方昊天', '00000000', 1, '2022-09-30 14:52:59', '15568596999', '宁波', 3, 1, '2022-04-24 11:37:38',
        '2022-07-23 03:38:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (318, 'FT', '吕鹭洋', '00000000', 1, '2022-07-18 11:35:15', '17713820678', '中山', 3, 1, '2022-05-02 10:22:36',
        '2022-10-13 04:27:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (319, 'Flexi', '梁哲瀚', '00000000', 1, '2022-09-17 06:57:28', '14552971865', '章丘', 3, 1, '2022-10-26 08:33:13',
        '2022-12-27 13:47:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (320, 'E0', '龙聪健', '00000000', 1, '2022-05-16 19:17:11', '15698920325', '长春', 3, 1, '2022-06-30 06:29:01',
        '2022-03-10 04:27:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (321, 'bLKr', '刘潇然', '00000000', 1, '2022-12-07 03:06:01', '15361256591', '齐齐哈尔', 3, 1, '2022-11-13 21:47:31',
        '2022-04-27 07:02:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (322, 'DbMQ', '任绍齐', '00000000', 1, '2022-07-29 01:06:57', '13168558163', '昆明', 3, 1, '2022-04-24 04:58:26',
        '2022-08-17 23:08:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (323, 'H5tv', '秦熠彤', '00000000', 1, '2022-02-15 17:05:34', '14770771938', '阳泉', 3, 1, '2022-04-16 20:35:08',
        '2022-12-13 12:36:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (324, 'Xu', '韩烨霖', '00000000', 1, '2022-05-12 06:06:23', '15114209683', '青岛', 3, 1, '2022-09-10 15:06:42',
        '2022-12-21 19:16:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (325, 'PRFL', '邵瑞霖', '00000000', 1, '2022-04-17 12:00:11', '17873409986', '桂林', 3, 1, '2022-08-21 04:59:03',
        '2022-10-11 23:52:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (326, 'DU', '熊子骞', '00000000', 1, '2022-11-23 21:41:27', '17383432591', '厦门', 3, 1, '2022-06-17 06:57:02',
        '2022-11-19 01:28:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (327, 'Udckd', '杨潇然', '00000000', 1, '2022-08-24 06:49:56', '18078617287', '大连', 3, 1, '2022-04-06 23:13:06',
        '2022-12-06 02:55:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (328, 'aRV0v', '严航', '00000000', 1, '2022-06-28 04:37:39', '15599753524', '银川', 3, 1, '2022-08-24 01:24:00',
        '2022-02-08 13:41:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (329, 'Nt8Z', '马绍齐', '00000000', 1, '2022-07-08 12:52:28', '17119189531', '吉林', 3, 1, '2022-06-13 11:23:59',
        '2022-11-10 22:57:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (330, 'qqw', '毛黎昕', '00000000', 1, '2022-02-27 09:35:20', '15011459088', '瓦房店', 3, 1, '2022-10-13 01:02:57',
        '2022-11-14 18:00:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (331, 'BFcsb', '唐烨霖', '00000000', 1, '2022-05-21 12:55:17', '15272962501', '广州', 3, 1, '2022-07-28 00:57:24',
        '2022-05-31 15:59:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (332, 'WGs', '贾子默', '00000000', 1, '2022-09-19 19:11:20', '15846959313', '包头', 3, 1, '2022-07-13 14:44:57',
        '2022-12-11 16:09:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (333, '9HKf', '邵皓轩', '00000000', 1, '2022-10-03 10:15:04', '17825154098', '韶关', 3, 1, '2022-05-15 10:25:30',
        '2022-10-08 03:05:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (334, 't3', '彭志泽', '00000000', 1, '2022-08-31 12:47:58', '17091557810', '金昌', 3, 1, '2022-11-28 04:00:27',
        '2022-08-23 06:20:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (335, 'rt0', '魏伟宸', '00000000', 1, '2022-10-13 16:34:10', '18183507111', '滨州', 3, 1, '2022-02-04 17:01:14',
        '2022-08-11 17:26:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (336, 'WxL', '崔烨霖', '00000000', 1, '2022-06-27 11:18:22', '14550622234', '抚顺', 3, 1, '2022-12-21 15:08:59',
        '2022-10-23 02:36:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (337, '05', '徐昊强', '00000000', 1, '2022-04-12 13:38:24', '17700106213', '兰州', 3, 1, '2022-09-11 18:57:30',
        '2022-01-22 14:04:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (338, 'oTNU', '赵明哲', '00000000', 1, '2022-08-22 18:28:34', '15518354007', '蓬莱', 3, 1, '2022-08-01 12:54:05',
        '2022-08-11 09:12:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (339, 'BDqc', '徐靖琪', '00000000', 1, '2022-11-25 06:32:52', '17589904987', '常熟', 3, 1, '2022-06-22 20:00:34',
        '2022-04-06 18:25:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (340, 'mD66F', '罗健雄', '00000000', 1, '2022-04-25 13:32:48', '15352978730', '石家庄', 3, 1, '2022-02-16 22:57:44',
        '2022-12-30 17:19:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (341, 'ALI', '黄浩', '00000000', 1, '2022-11-07 13:08:27', '17735844696', '成都', 3, 1, '2022-09-17 10:35:41',
        '2022-03-22 23:50:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (342, 'NMx', '薛智渊', '00000000', 1, '2022-09-09 12:53:29', '17090856524', '太原', 3, 1, '2022-07-19 09:24:12',
        '2022-11-14 17:34:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (343, 'p9d', '廖浩轩', '00000000', 1, '2022-01-08 19:36:00', '15357344649', '厦门', 3, 1, '2022-09-09 01:55:01',
        '2022-11-22 04:46:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (344, 'ld3nS', '胡文博', '00000000', 1, '2022-08-05 13:11:54', '17703069082', '咸阳', 3, 1, '2022-07-19 03:06:20',
        '2022-07-20 00:14:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (345, 'BjiN', '熊晓博', '00000000', 1, '2022-01-27 18:29:48', '17884275489', '柳州', 3, 1, '2022-08-19 21:58:01',
        '2022-04-10 16:27:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (346, 'TGT', '邵子默', '00000000', 1, '2022-01-11 09:15:33', '17859563102', '三亚', 3, 1, '2022-07-17 11:47:30',
        '2022-07-06 07:16:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (347, 'YkowQ', '孟文昊', '00000000', 1, '2022-10-01 12:54:17', '13162571061', '邯郸', 3, 1, '2022-03-09 11:01:12',
        '2022-08-12 13:29:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (348, 'hm', '许瑞霖', '00000000', 1, '2022-01-03 08:51:12', '15848529067', '库尔勒', 3, 1, '2022-08-14 04:03:54',
        '2022-01-22 05:22:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (349, 'hc', '孙弘文', '00000000', 1, '2022-06-08 10:36:25', '15050176715', '潮州', 3, 1, '2022-08-29 01:27:00',
        '2022-07-29 11:24:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (350, '0Unu', '夏立辉', '00000000', 1, '2022-10-05 19:32:53', '18747964575', '齐齐哈尔', 3, 1, '2022-05-20 23:40:10',
        '2022-01-02 02:25:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (351, 'UuD', '邵鹏飞', '00000000', 1, '2022-12-18 05:25:46', '15271619919', '玉溪', 3, 1, '2022-06-05 23:38:23',
        '2022-11-23 03:04:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (352, 'KuuD', '毛振家', '00000000', 1, '2022-10-25 23:49:34', '14730769981', '招远', 3, 1, '2022-08-07 12:09:58',
        '2022-06-14 10:59:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (353, 'ZFHB', '唐智辉', '00000000', 1, '2022-01-26 00:41:11', '17190238998', '滨州', 3, 1, '2022-12-26 15:04:27',
        '2022-05-23 06:41:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (354, 'nGb', '秦文博', '00000000', 1, '2022-06-14 02:33:36', '14598421354', '湖州', 3, 1, '2022-08-01 21:37:54',
        '2022-02-22 09:33:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (355, '21', '万明辉', '00000000', 1, '2022-04-09 12:25:27', '17783399694', '常熟', 3, 1, '2022-12-23 16:43:06',
        '2022-10-14 01:21:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (356, '9J', '金哲瀚', '00000000', 1, '2022-09-10 06:31:14', '15600953455', '西安', 3, 1, '2022-01-11 17:58:36',
        '2022-06-26 21:47:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (357, 'fvy', '姜志强', '00000000', 1, '2022-02-18 03:41:26', '18404569663', '平顶山', 3, 1, '2022-07-31 18:17:05',
        '2022-05-28 06:21:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (358, 'q70Q', '毛鹏', '00000000', 1, '2022-08-21 10:34:17', '17264780074', '汕头', 3, 1, '2022-12-01 22:22:51',
        '2022-01-03 19:36:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (359, '2EFI', '任炫明', '00000000', 1, '2022-05-05 14:58:59', '15065096351', '汕尾', 3, 1, '2022-12-08 14:26:14',
        '2022-12-26 10:44:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (360, 'vnr', '潘伟泽', '00000000', 1, '2022-09-22 21:51:42', '17725077534', '莱西', 3, 1, '2022-09-28 19:47:23',
        '2022-07-16 04:13:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (361, '2x2', '贺子轩', '00000000', 1, '2022-01-01 17:38:43', '14708316178', '南通', 3, 1, '2022-01-06 04:00:53',
        '2022-07-21 06:15:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (362, '2sP3', '毛浩轩', '00000000', 1, '2022-11-10 03:44:52', '17848764804', '阳江', 3, 1, '2022-12-04 16:15:04',
        '2022-03-30 14:13:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (363, 'u7B', '何鸿涛', '00000000', 1, '2022-11-10 15:55:47', '17794582898', '咸阳', 3, 1, '2022-02-06 01:49:10',
        '2022-05-26 02:00:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (364, 'lC', '陈瑞霖', '00000000', 1, '2022-11-08 18:42:37', '17500083193', '南充', 3, 1, '2022-04-12 09:29:14',
        '2022-06-28 01:43:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (365, '17Z', '徐哲瀚', '00000000', 1, '2022-10-24 12:46:00', '17281833980', '包头', 3, 1, '2022-04-20 19:54:03',
        '2022-08-12 22:53:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (366, 'TNF', '戴风华', '00000000', 1, '2022-10-06 17:53:52', '15530755369', '抚顺', 3, 1, '2022-12-19 10:11:54',
        '2022-08-09 12:16:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (367, 'sIVEo', '戴博文', '00000000', 1, '2022-03-12 16:16:21', '17873198924', '临沂', 3, 1, '2022-08-10 10:22:59',
        '2022-08-01 15:56:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (368, '3MdT', '谭果', '00000000', 1, '2022-10-18 12:47:51', '15569284249', '乌鲁木齐', 3, 1, '2022-12-12 02:02:14',
        '2022-07-15 21:55:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (369, 'cLl', '马文博', '00000000', 1, '2022-02-20 10:49:42', '17306237233', '自贡', 3, 1, '2022-11-15 22:18:03',
        '2022-11-08 18:11:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (370, 'bs', '赵旭尧', '00000000', 1, '2022-04-08 17:16:55', '15534700877', '烟台', 3, 1, '2022-04-29 13:59:51',
        '2022-02-04 16:04:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (371, 'HKZyr', '郑乐驹', '00000000', 1, '2022-01-13 07:56:19', '15918726712', '揭阳', 3, 1, '2022-07-23 20:02:28',
        '2022-11-15 15:20:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (372, 'n6', '吴志泽', '00000000', 1, '2022-10-21 11:06:05', '14530755926', '海门', 3, 1, '2022-01-28 02:34:50',
        '2022-06-07 11:08:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (373, 'nrv3', '田子骞', '00000000', 1, '2022-10-08 06:58:03', '17566805030', '江阴', 3, 1, '2022-08-17 20:06:58',
        '2022-05-23 11:35:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (374, '6dfg', '汪子涵', '00000000', 1, '2022-05-01 03:30:37', '17281661745', '大连', 3, 1, '2022-11-20 10:46:56',
        '2022-07-19 05:24:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (375, 'NxoAI', '江立果', '00000000', 1, '2022-08-04 15:39:46', '15818426162', '宜兴', 3, 1, '2022-12-30 11:19:03',
        '2022-07-30 07:55:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (376, 'yWon', '范明轩', '00000000', 1, '2022-09-27 15:18:39', '17721085640', '北海', 3, 1, '2022-07-20 22:31:14',
        '2022-10-16 03:03:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (377, 'CHt9', '马炎彬', '00000000', 1, '2022-04-04 00:22:53', '17561090159', '湖州', 3, 1, '2022-02-25 15:00:40',
        '2022-12-08 13:41:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (378, 'ulNt', '尹嘉熙', '00000000', 1, '2022-07-21 15:00:48', '13884560065', '河源', 3, 1, '2022-08-14 05:54:27',
        '2022-05-08 08:14:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (379, '5m', '杨子轩', '00000000', 1, '2022-03-29 09:20:27', '13304797988', '唐山', 3, 1, '2022-12-10 06:16:50',
        '2022-11-20 22:26:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (380, 'jBv6', '郑擎宇', '00000000', 1, '2022-06-08 14:09:16', '18027181239', '菏泽', 3, 1, '2022-02-16 18:33:54',
        '2022-09-30 13:26:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (381, 'ftm', '罗思聪', '00000000', 1, '2022-04-08 23:49:38', '17757286944', '莱芜', 3, 1, '2022-08-05 19:59:14',
        '2022-12-03 16:12:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (382, 'XfL8', '白博文', '00000000', 1, '2022-05-12 16:01:25', '15128642151', '荆州', 3, 1, '2022-07-16 14:16:24',
        '2022-03-22 16:00:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (383, 'QI', '吴立诚', '00000000', 1, '2022-11-22 07:20:12', '14712818038', '沈阳', 3, 1, '2022-02-10 21:56:54',
        '2022-02-08 05:44:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (384, 'TL', '梁博超', '00000000', 1, '2022-04-26 20:40:24', '14726582479', '日照', 3, 1, '2022-12-24 21:00:36',
        '2022-04-10 08:36:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (385, 'U6EI', '徐智辉', '00000000', 1, '2022-02-14 06:40:53', '13612842956', '沧州', 3, 1, '2022-10-14 09:55:44',
        '2022-04-15 15:36:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (386, 'jzvj', '顾志强', '00000000', 1, '2022-02-24 04:39:12', '15644755488', '宝鸡', 3, 1, '2022-10-24 17:22:59',
        '2022-11-30 19:43:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (387, 'Bk', '许雨泽', '00000000', 1, '2022-03-13 08:09:15', '15918383096', '安阳', 3, 1, '2022-06-19 02:13:15',
        '2022-08-27 00:05:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (388, 'JsW', '邵烨霖', '00000000', 1, '2022-04-04 15:35:46', '15651367387', '芜湖', 3, 1, '2022-08-31 08:48:57',
        '2022-09-22 14:31:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (389, 'tP', '吴琪', '00000000', 1, '2022-04-23 06:49:48', '17059141729', '保定', 3, 1, '2022-07-25 14:59:23',
        '2022-06-14 17:07:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (390, 'Gjs3H', '胡睿渊', '00000000', 1, '2022-10-29 13:15:38', '14535672638', '泸州', 3, 1, '2022-03-03 21:16:23',
        '2022-10-12 05:40:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (391, 'JhWnq', '魏文轩', '00000000', 1, '2022-10-29 18:54:55', '18960689270', '武汉', 3, 1, '2022-05-01 05:30:51',
        '2022-06-06 12:46:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (392, 'H2Bs', '傅致远', '00000000', 1, '2022-12-19 23:05:34', '17042676608', '湛江', 3, 1, '2022-04-26 09:10:18',
        '2022-04-11 23:18:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (393, 't2kuH', '白弘文', '00000000', 1, '2022-01-16 08:30:23', '17885188904', '宁波', 3, 1, '2022-09-10 13:46:38',
        '2022-02-11 07:19:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (394, 'H0r', '黄鸿煊', '00000000', 1, '2022-12-25 10:23:41', '15309442259', '渭南', 3, 1, '2022-10-13 01:36:17',
        '2022-03-18 06:05:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (395, 'pDg', '贾子涵', '00000000', 1, '2022-07-27 18:53:38', '17107808835', '银川', 3, 1, '2022-02-21 05:10:45',
        '2022-04-19 20:46:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (396, '5c', '蔡伟宸', '00000000', 1, '2022-09-06 18:04:11', '17271829743', '贵阳', 3, 1, '2022-11-03 03:50:42',
        '2022-09-02 02:01:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (397, '1BCOA', '程炫明', '00000000', 1, '2022-12-09 05:05:25', '14508112067', '江门', 3, 1, '2022-05-10 08:26:06',
        '2022-01-10 21:29:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (398, '745', '秦立果', '00000000', 1, '2022-08-17 12:51:00', '15781751467', '石家庄', 3, 1, '2022-06-12 13:57:02',
        '2022-11-08 10:16:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (399, '1Z4ja', '韦思远', '00000000', 1, '2022-10-01 21:32:46', '17233632701', '即墨', 3, 1, '2022-11-30 08:12:35',
        '2022-04-22 16:26:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (400, 'OFy8', '蔡金鑫', '00000000', 1, '2022-08-21 13:13:21', '17614551410', '义乌', 3, 1, '2022-08-11 13:26:01',
        '2022-10-14 17:37:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (401, 'MrM', '李胤祥', '00000000', 1, '2022-02-15 00:57:43', '15278892793', '烟台', 3, 1, '2022-06-27 07:09:48',
        '2022-05-05 06:30:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (402, 'coY', '戴博超', '00000000', 1, '2022-04-17 19:20:34', '15323880248', '广州', 3, 1, '2022-11-27 23:57:23',
        '2022-04-28 20:31:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (403, 'Zr9wj', '贾绍辉', '00000000', 1, '2022-09-24 10:37:05', '17550974194', '富阳', 3, 1, '2022-05-15 15:01:21',
        '2022-08-15 06:20:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (404, 'vS', '贺琪', '00000000', 1, '2022-08-27 12:51:39', '15755698248', '张家口', 3, 1, '2022-06-09 09:31:56',
        '2022-01-28 17:20:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (405, 'ez2', '潘浩宇', '00000000', 1, '2022-02-05 20:48:32', '14594635926', '唐山', 3, 1, '2022-04-03 19:25:28',
        '2022-03-29 03:53:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (406, 'Ll', '于浩', '00000000', 1, '2022-10-17 01:02:00', '17567569248', '南通', 3, 1, '2022-12-17 00:26:40',
        '2022-07-14 11:45:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (407, 'Y9', '邱鸿涛', '00000000', 1, '2022-06-06 01:20:48', '15375460048', '揭阳', 3, 1, '2022-09-12 14:03:55',
        '2022-12-23 04:44:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (408, 'cE', '武笑愚', '00000000', 1, '2022-08-28 07:37:47', '15504008623', '哈尔滨', 3, 1, '2022-12-19 06:56:46',
        '2022-01-22 17:35:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (409, 'sfR', '石思', '00000000', 1, '2022-02-26 05:45:43', '15829108275', '克拉玛依', 3, 1, '2022-02-25 14:15:37',
        '2022-01-02 11:12:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (410, '0kKV', '石文轩', '00000000', 1, '2022-12-17 23:23:06', '17014009649', '太原', 3, 1, '2022-11-30 10:03:43',
        '2022-05-28 21:01:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (411, '0jc0v', '孙烨磊', '00000000', 1, '2022-10-22 22:16:36', '15980709311', '临汾', 3, 1, '2022-03-21 08:54:02',
        '2022-12-18 03:02:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (412, 'CA', '韩烨伟', '00000000', 1, '2022-03-24 23:07:53', '17030322294', '临安', 3, 1, '2022-03-14 18:36:59',
        '2022-05-04 22:25:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (413, '0zhu', '姜弘文', '00000000', 1, '2022-05-10 10:32:29', '17363768452', '玉溪', 3, 1, '2022-05-02 11:29:41',
        '2022-05-02 02:42:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (414, 'Qrqb8', '孔智宸', '00000000', 1, '2022-06-12 10:46:04', '17870529373', '济宁', 3, 1, '2022-08-12 20:17:34',
        '2022-06-24 11:37:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (415, '5UY', '唐展鹏', '00000000', 1, '2022-07-29 13:09:46', '17527546963', '抚顺', 3, 1, '2022-07-02 11:59:47',
        '2022-10-26 07:46:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (416, 'ksrFx', '顾晓博', '00000000', 1, '2022-03-27 14:10:06', '15583188026', '义乌', 3, 1, '2022-08-11 13:49:39',
        '2022-06-26 15:42:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (417, 'Fw', '孔昊然', '00000000', 1, '2022-02-15 02:43:53', '15288204130', '烟台', 3, 1, '2022-01-17 04:48:58',
        '2022-08-15 14:53:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (418, 'Db', '钟文轩', '00000000', 1, '2022-03-20 02:52:40', '15668068027', '临汾', 3, 1, '2022-08-15 14:50:38',
        '2022-12-27 09:22:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (419, 'b6g', '邓伟宸', '00000000', 1, '2022-05-17 05:35:43', '15241548344', '胶州', 3, 1, '2022-05-16 03:55:20',
        '2022-02-08 07:26:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (420, '6MQcu', '于熠彤', '00000000', 1, '2022-07-26 15:55:31', '13237039641', '咸阳', 3, 1, '2022-10-03 03:56:52',
        '2022-02-17 09:02:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (421, 'weXv', '万致远', '00000000', 1, '2022-08-21 13:41:25', '17376511242', '滨州', 3, 1, '2022-10-26 18:42:18',
        '2022-12-08 13:41:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (422, 'ct68', '梁志泽', '00000000', 1, '2022-02-20 20:42:38', '17234029916', '天津', 3, 1, '2022-12-09 14:46:34',
        '2022-01-22 21:22:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (423, 'VKL1', '吕瑾瑜', '00000000', 1, '2022-01-31 00:14:23', '15615538622', '湛江', 3, 1, '2022-01-14 18:57:25',
        '2022-04-15 16:28:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (424, 'iRo', '潘胤祥', '00000000', 1, '2022-07-12 00:40:22', '15352740856', '盘锦', 3, 1, '2022-12-30 20:35:02',
        '2022-01-09 03:49:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (425, '96al', '吕子涵', '00000000', 1, '2022-09-26 20:28:24', '15997422026', '长沙', 3, 1, '2022-12-20 08:22:09',
        '2022-01-07 04:02:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (426, '17P', '董擎宇', '00000000', 1, '2022-07-24 15:36:23', '15810503271', '牡丹江', 3, 1, '2022-09-09 08:34:39',
        '2022-06-13 06:27:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (427, 'ljaQ', '朱明', '00000000', 1, '2022-08-20 13:38:26', '17280085776', '长治', 3, 1, '2022-11-07 15:35:26',
        '2022-06-25 14:06:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (428, 'NBAl', '蔡擎宇', '00000000', 1, '2022-07-15 09:53:39', '17118429541', '上海', 3, 1, '2022-09-29 15:42:45',
        '2022-12-07 04:55:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (429, 'ndCR', '廖嘉熙', '00000000', 1, '2022-07-14 01:19:14', '13457681974', '章丘', 3, 1, '2022-07-05 04:17:17',
        '2022-04-27 05:05:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (430, 'SF0', '陆荣轩', '00000000', 1, '2022-02-14 12:41:37', '17658900624', '衢州', 3, 1, '2022-07-02 13:31:46',
        '2022-01-05 12:57:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (431, 'pqNkl', '贺建辉', '00000000', 1, '2022-02-24 12:19:58', '17010278519', '常德', 3, 1, '2022-02-25 11:44:29',
        '2022-06-09 19:14:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (432, '2fQWZ', '杨驰', '00000000', 1, '2022-10-24 17:24:52', '15081353664', '合肥', 3, 1, '2022-03-29 22:22:27',
        '2022-04-27 13:08:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (433, 'NASO', '宋健雄', '00000000', 1, '2022-12-09 17:38:19', '15728227085', '石家庄', 3, 1, '2022-01-17 22:43:56',
        '2022-07-05 13:42:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (434, 'fYy5', '钱越彬', '00000000', 1, '2022-06-18 12:52:27', '15641413207', '邯郸', 3, 1, '2022-09-16 22:19:54',
        '2022-05-04 04:31:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (435, 'amp2m', '董鹤轩', '00000000', 1, '2022-09-01 11:51:02', '15087732547', '焦作', 3, 1, '2022-02-23 20:46:52',
        '2022-07-28 06:57:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (436, 'zUhn9', '秦晋鹏', '00000000', 1, '2022-03-30 00:44:43', '15790781204', '昆明', 3, 1, '2022-12-25 17:30:32',
        '2022-09-10 11:14:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (437, 'PJ', '傅文昊', '00000000', 1, '2022-12-04 20:06:47', '15852522383', '南京', 3, 1, '2022-03-28 23:11:42',
        '2022-01-21 14:29:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (438, 'iH', '邱弘文', '00000000', 1, '2022-09-05 02:12:26', '15828935765', '江门', 3, 1, '2022-08-12 06:41:00',
        '2022-12-28 03:16:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (439, '0q', '龙鹏煊', '00000000', 1, '2022-02-04 23:45:34', '14709230645', '大连', 3, 1, '2022-03-22 23:23:05',
        '2022-03-07 13:40:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (440, '9V', '叶瑾瑜', '00000000', 1, '2022-01-28 17:20:54', '15222400471', '张家界', 3, 1, '2022-11-22 18:27:03',
        '2022-08-23 02:58:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (441, 'EE1ZW', '董语堂', '00000000', 1, '2022-01-07 22:01:13', '13813159829', '莱芜', 3, 1, '2022-05-05 20:31:06',
        '2022-08-02 16:01:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (442, 'd0e1k', '谭锦程', '00000000', 1, '2022-05-26 23:45:06', '15378711742', '滨州', 3, 1, '2022-12-03 11:50:08',
        '2022-04-08 10:11:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (443, '6g0', '沈修杰', '00000000', 1, '2022-11-24 20:17:19', '15208732959', '台州', 3, 1, '2022-01-15 20:03:29',
        '2022-01-04 04:48:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (444, 'cRn', '韦昊天', '00000000', 1, '2022-10-03 08:46:33', '15695220011', '常熟', 3, 1, '2022-08-15 18:50:55',
        '2022-11-15 09:20:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (445, 'f0k', '刘昊强', '00000000', 1, '2022-06-07 10:33:44', '15821961538', '邢台', 3, 1, '2022-06-02 09:12:07',
        '2022-03-12 12:12:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (446, 'E6', '姜风华', '00000000', 1, '2022-10-18 22:32:05', '15037351385', '宿迁', 3, 1, '2022-09-30 20:45:40',
        '2022-06-25 13:10:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (447, 'FF', '黄胤祥', '00000000', 1, '2022-05-08 08:33:21', '13373610722', '绵阳', 3, 1, '2022-10-29 07:40:59',
        '2022-03-03 20:52:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (448, 'eK', '顾琪', '00000000', 1, '2022-03-24 08:12:44', '17176912388', '衡水', 3, 1, '2022-06-26 05:28:52',
        '2022-10-26 09:31:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (449, 'ep2', '戴鹏涛', '00000000', 1, '2022-05-09 19:08:13', '14518628214', '张家口', 3, 1, '2022-07-12 14:32:10',
        '2022-06-07 19:53:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (450, 'LIko', '万思聪', '00000000', 1, '2022-06-18 04:13:57', '15367756806', '瓦房店', 3, 1, '2022-11-19 10:28:19',
        '2022-09-01 12:04:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (451, 'QbVX', '周文博', '00000000', 1, '2022-11-06 22:49:56', '13199723565', '莱西', 3, 1, '2022-05-18 15:03:43',
        '2022-06-22 16:05:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (452, 'Ot', '邓擎宇', '00000000', 1, '2022-05-28 04:35:09', '15262901394', '金昌', 3, 1, '2022-02-01 04:14:06',
        '2022-09-15 02:10:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (453, 'oIl', '石博超', '00000000', 1, '2022-01-17 04:25:49', '18180877351', '珠海', 3, 1, '2022-01-06 02:15:13',
        '2022-02-14 07:03:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (454, 'a0kja', '戴泽洋', '00000000', 1, '2022-03-19 06:40:43', '17362283922', '海口', 3, 1, '2022-04-19 12:47:33',
        '2022-06-21 03:34:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (455, 'a4Q3', '董立轩', '00000000', 1, '2022-10-11 10:16:38', '15647194421', '太原', 3, 1, '2022-03-16 16:58:29',
        '2022-11-01 05:18:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (456, 'ob', '江明辉', '00000000', 1, '2022-06-25 00:18:01', '13461045235', '肇庆', 3, 1, '2022-09-13 15:39:27',
        '2022-12-31 00:32:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (457, 'sgvHT', '刘修杰', '00000000', 1, '2022-07-08 05:50:10', '15595888312', '临汾', 3, 1, '2022-10-13 20:47:37',
        '2022-07-10 08:05:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (458, 'rLIa', '段文博', '00000000', 1, '2022-07-11 01:40:17', '17523318633', '宜宾', 3, 1, '2022-01-06 03:49:52',
        '2022-05-26 11:49:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (459, '5vMK', '冯思淼', '00000000', 1, '2022-04-23 11:25:11', '15302160740', '莱州', 3, 1, '2022-01-23 16:25:35',
        '2022-09-09 07:54:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (460, 'wSz', '黄鹏煊', '00000000', 1, '2022-11-20 18:16:07', '18591348324', '文登', 3, 1, '2022-07-27 07:33:01',
        '2022-05-09 15:25:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (461, 'FY', '莫楷瑞', '00000000', 1, '2022-05-20 21:16:01', '15089881963', '石家庄', 3, 1, '2022-09-21 10:22:34',
        '2022-02-15 16:45:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (462, 'JKXP8', '彭明哲', '00000000', 1, '2022-06-28 07:53:41', '17213675948', '韶关', 3, 1, '2022-06-22 01:48:42',
        '2022-04-26 14:54:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (463, '7iV', '叶智渊', '00000000', 1, '2022-07-09 10:25:30', '18133219883', '马鞍山', 3, 1, '2022-11-24 10:13:08',
        '2022-07-30 15:36:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (464, 'bai3', '魏天磊', '00000000', 1, '2022-07-07 02:29:35', '14714848444', '莱芜', 3, 1, '2022-10-15 05:38:46',
        '2022-03-03 08:10:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (465, 'Vt', '彭伟诚', '00000000', 1, '2022-09-20 13:16:15', '15812325784', '宜宾', 3, 1, '2022-09-06 21:19:52',
        '2022-07-04 15:26:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (466, '6Y', '白嘉熙', '00000000', 1, '2022-05-26 19:14:38', '17109547631', '滨州', 3, 1, '2022-02-16 20:42:35',
        '2022-11-05 01:19:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (467, '9vR', '杨炫明', '00000000', 1, '2022-07-09 12:32:35', '15338276380', '平度', 3, 1, '2022-09-11 16:12:40',
        '2022-08-28 17:26:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (468, '3nma', '韦熠彤', '00000000', 1, '2022-11-18 16:15:59', '15375656701', '贵阳', 3, 1, '2022-11-06 00:05:55',
        '2022-07-01 03:29:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (469, 'Myos', '赵博文', '00000000', 1, '2022-06-11 17:27:01', '15067850674', '汕尾', 3, 1, '2022-04-06 04:49:24',
        '2022-08-04 19:05:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (470, 'qCQAW', '何苑博', '00000000', 1, '2022-01-06 12:24:17', '17693587641', '三门峡', 3, 1, '2022-09-06 06:06:40',
        '2022-05-31 01:37:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (471, 'QH', '邵烨霖', '00000000', 1, '2022-02-08 14:54:50', '17608716507', '舟山', 3, 1, '2022-11-12 14:08:27',
        '2022-02-13 01:16:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (472, 'BdRT', '卢明哲', '00000000', 1, '2022-09-20 09:32:24', '17574429812', '克拉玛依', 3, 1, '2022-04-24 13:00:06',
        '2022-02-22 02:18:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (473, 'yKQ0', '尹胤祥', '00000000', 1, '2022-07-08 22:37:34', '15081003919', '镇江', 3, 1, '2022-07-16 20:16:42',
        '2022-07-06 01:05:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (474, 'nEJH', '江立辉', '00000000', 1, '2022-06-25 00:28:34', '15008965046', '梅州', 3, 1, '2022-03-22 23:04:45',
        '2022-07-15 03:43:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (475, 'mT2', '蒋熠彤', '00000000', 1, '2022-07-11 02:37:33', '17021345652', '鞍山', 3, 1, '2022-01-07 16:07:42',
        '2022-09-29 16:54:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (476, 'i9qo', '王鑫磊', '00000000', 1, '2022-03-25 03:20:09', '13379449834', '克拉玛依', 3, 1, '2022-04-07 09:31:14',
        '2022-01-23 19:32:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (477, 'ry1', '莫泽洋', '00000000', 1, '2022-02-09 05:22:42', '15673821848', '盐城', 3, 1, '2022-12-23 06:49:53',
        '2022-12-20 22:41:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (478, 'UOq', '郑文昊', '00000000', 1, '2022-02-01 12:49:56', '15676216171', '聊城', 3, 1, '2022-02-23 17:32:02',
        '2022-10-22 06:21:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (479, 'GG9O5', '毛嘉懿', '00000000', 1, '2022-11-03 05:06:03', '15077222109', '株洲', 3, 1, '2022-06-28 09:43:38',
        '2022-08-12 21:29:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (480, 'ImBC', '龚浩然', '00000000', 1, '2022-07-13 08:43:54', '17813193285', '岳阳', 3, 1, '2022-04-26 12:58:54',
        '2022-06-02 19:27:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (481, 'i3m', '杜展鹏', '00000000', 1, '2022-01-26 14:50:22', '15021945184', '瓦房店', 3, 1, '2022-06-16 16:01:31',
        '2022-06-04 20:45:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (482, 'FXL', '谭明辉', '00000000', 1, '2022-11-14 06:49:44', '17783220557', '湛江', 3, 1, '2022-04-30 00:31:29',
        '2022-12-31 13:07:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (483, 'jqI4W', '田思聪', '00000000', 1, '2022-08-29 14:29:26', '15810477922', '东莞', 3, 1, '2022-03-05 02:06:53',
        '2022-04-15 17:36:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (484, 'jnu', '蒋智渊', '00000000', 1, '2022-07-26 19:54:37', '15770003771', '盘锦', 3, 1, '2022-07-28 17:50:39',
        '2022-12-23 09:58:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (485, 'nABYH', '彭鸿涛', '00000000', 1, '2022-07-01 08:14:45', '14570754563', '聊城', 3, 1, '2022-03-24 01:07:52',
        '2022-08-06 10:53:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (486, 'yY43n', '卢哲瀚', '00000000', 1, '2022-09-29 18:35:53', '17379986123', '北海', 3, 1, '2022-09-13 20:52:19',
        '2022-07-31 07:45:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (487, '1xHcG', '冯瑾瑜', '00000000', 1, '2022-10-10 20:11:06', '17548974135', '洛阳', 3, 1, '2022-05-13 01:30:12',
        '2022-10-18 03:07:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (488, '4G', '高炎彬', '00000000', 1, '2022-06-07 14:20:08', '17549927109', '盐城', 3, 1, '2022-04-23 21:57:14',
        '2022-10-28 02:35:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (489, 'qJspZ', '龙远航', '00000000', 1, '2022-03-26 16:57:27', '15092837976', '牡丹江', 3, 1, '2022-02-16 17:31:40',
        '2022-12-18 23:30:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (490, 'pV', '傅鹏', '00000000', 1, '2022-08-31 21:32:46', '14713667976', '岳阳', 3, 1, '2022-03-31 14:02:43',
        '2022-02-24 12:01:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (491, 'QLzCS', '冯聪健', '00000000', 1, '2022-09-30 10:21:07', '17309176470', '鄂尔多斯', 3, 1, '2022-11-28 16:35:13',
        '2022-03-04 19:16:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (492, 'MZUZH', '田子轩', '00000000', 1, '2022-01-12 02:28:06', '18196914106', '丽水', 3, 1, '2022-04-14 00:54:21',
        '2022-08-31 17:30:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (493, 'fVh9n', '丁志泽', '00000000', 1, '2022-02-23 06:38:44', '15637139045', '宜宾', 3, 1, '2022-07-14 15:56:09',
        '2022-12-26 05:33:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (494, 'P2', '傅鸿煊', '00000000', 1, '2022-05-11 03:37:34', '14527531743', '鞍山', 3, 1, '2022-10-02 09:53:22',
        '2022-03-02 15:44:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (495, 'YX7e', '顾伟宸', '00000000', 1, '2022-04-06 04:46:00', '17683689860', '金昌', 3, 1, '2022-08-13 11:35:06',
        '2022-09-25 08:22:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (496, 'W3Qo', '张晋鹏', '00000000', 1, '2022-08-14 01:16:06', '17266347717', '桂林', 3, 1, '2022-04-10 22:48:51',
        '2022-03-01 23:46:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (497, 'Z5', '何鹏', '00000000', 1, '2022-08-01 00:18:17', '15965267387', '乳山', 3, 1, '2022-05-28 06:24:13',
        '2022-01-22 02:36:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (498, 'NyZ', '韦文昊', '00000000', 1, '2022-11-04 19:58:27', '15185862460', '滨州', 3, 1, '2022-12-04 07:15:34',
        '2022-08-15 10:19:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (499, 'lyzs3', '苏昊天', '00000000', 1, '2022-05-09 10:18:13', '15016023142', '北海', 3, 1, '2022-02-10 04:44:10',
        '2022-10-02 12:10:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (500, 'mpeL', '廖烨伟', '00000000', 1, '2022-08-10 09:34:09', '18735993835', '锦州', 3, 1, '2022-11-03 04:05:53',
        '2022-09-14 18:49:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (501, 'SkLK', '谭明辉', '00000000', 1, '2022-09-16 03:10:08', '18275640818', '济南', 3, 1, '2022-05-12 16:19:59',
        '2022-01-20 02:33:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (502, 'J9', '潘伟宸', '00000000', 1, '2022-04-03 11:52:58', '15318035507', '张家界', 3, 1, '2022-03-03 12:46:39',
        '2022-05-04 11:19:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (503, 'rDk', '林越泽', '00000000', 1, '2022-07-31 06:04:09', '15220438509', '承德', 3, 1, '2022-02-28 19:03:31',
        '2022-09-14 10:20:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (504, 'pPX', '吕嘉熙', '00000000', 1, '2022-12-03 14:59:55', '17674832393', '嘉峪关', 3, 1, '2022-11-09 02:41:21',
        '2022-06-13 11:33:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (505, 'ex', '魏昊天', '00000000', 1, '2022-07-13 03:31:36', '18553542392', '河源', 3, 1, '2022-04-24 11:21:17',
        '2022-02-20 03:13:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (506, '80', '梁钰轩', '00000000', 1, '2022-05-09 00:07:35', '15824031155', '昆明', 3, 1, '2022-12-24 15:32:57',
        '2022-02-15 05:48:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (507, 'RU9', '徐俊驰', '00000000', 1, '2022-02-21 00:57:11', '17617279291', '营口', 3, 1, '2022-11-24 01:51:35',
        '2022-04-17 22:30:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (508, 'hmG7', '袁胤祥', '00000000', 1, '2022-09-29 02:12:52', '14773218480', '济宁', 3, 1, '2022-03-30 14:22:30',
        '2022-11-29 22:25:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (509, 'nK', '杜语堂', '00000000', 1, '2022-02-17 22:05:28', '17159411280', '珠海', 3, 1, '2022-09-17 12:23:18',
        '2022-07-08 15:27:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (510, 'rBPbV', '袁越泽', '00000000', 1, '2022-03-23 01:58:16', '18507991453', '南京', 3, 1, '2022-07-05 05:14:23',
        '2022-06-05 22:33:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (511, 'Sq6', '朱鑫鹏', '00000000', 1, '2022-04-09 06:45:28', '17296106457', '秦皇岛', 3, 1, '2022-02-11 14:42:12',
        '2022-09-27 03:34:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (512, 'ycu', '魏智辉', '00000000', 1, '2022-03-23 20:11:24', '17316991560', '云浮', 3, 1, '2022-04-17 22:23:34',
        '2022-01-30 09:10:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (513, 'gLk', '孔子默', '00000000', 1, '2022-11-24 07:51:06', '15278653228', '成都', 3, 1, '2022-01-09 10:12:27',
        '2022-12-16 17:49:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (514, 'dRV4', '朱涛', '00000000', 1, '2022-08-27 05:57:15', '17872449353', '青岛', 3, 1, '2022-11-17 17:28:09',
        '2022-02-06 19:10:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (515, '5nR', '陶鹏', '00000000', 1, '2022-06-26 02:23:00', '15136161335', '芜湖', 3, 1, '2022-04-06 19:37:04',
        '2022-02-08 05:22:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (516, 'JLVX', '汪鹭洋', '00000000', 1, '2022-03-11 07:38:49', '15293499333', '东莞', 3, 1, '2022-06-14 15:13:20',
        '2022-06-06 13:33:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (517, '2pt', '崔鸿涛', '00000000', 1, '2022-09-10 09:09:56', '18534255575', '荣成', 3, 1, '2022-10-03 03:43:48',
        '2022-12-04 04:25:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (518, 'zIsT', '张鸿煊', '00000000', 1, '2022-02-25 06:34:49', '15037238157', '宜昌', 3, 1, '2022-08-31 00:56:28',
        '2022-11-19 19:28:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (519, 'KHv', '卢修杰', '00000000', 1, '2022-01-12 05:37:54', '13881430367', '南充', 3, 1, '2022-07-05 10:32:22',
        '2022-12-02 02:17:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (520, '1eccs', '高伟祺', '00000000', 1, '2022-12-28 11:17:18', '17568453117', '玉溪', 3, 1, '2022-02-21 13:41:32',
        '2022-01-26 08:02:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (521, '0OT', '秦文博', '00000000', 1, '2022-12-30 09:16:29', '17600842787', '葫芦岛', 3, 1, '2022-08-27 01:15:05',
        '2022-08-12 20:12:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (522, 'Gos', '钱乐驹', '00000000', 1, '2022-05-27 09:30:09', '15292668421', '河源', 3, 1, '2022-10-14 14:11:27',
        '2022-03-30 07:34:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (523, 'phLme', '韩鹤轩', '00000000', 1, '2022-09-04 16:36:44', '15031663349', '茂名', 3, 1, '2022-10-28 05:37:13',
        '2022-11-16 04:54:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (524, 'UwkS', '韦健雄', '00000000', 1, '2022-11-24 18:34:05', '15930451028', '南京', 3, 1, '2022-12-27 04:20:15',
        '2022-08-28 06:27:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (525, 'hSZb8', '魏黎昕', '00000000', 1, '2022-02-23 22:53:31', '15865592042', '莱西', 3, 1, '2022-02-28 01:09:23',
        '2022-11-10 06:05:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (526, 'Pers9', '戴思远', '00000000', 1, '2022-04-16 07:46:52', '14520041057', '渭南', 3, 1, '2022-10-16 17:06:28',
        '2022-09-09 11:51:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (527, 'ksr', '任旭尧', '00000000', 1, '2022-07-14 05:41:14', '15777285951', '溧阳', 3, 1, '2022-01-05 04:15:25',
        '2022-11-26 02:05:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (528, 'VB', '李越彬', '00000000', 1, '2022-09-18 01:56:34', '15508587288', '北海', 3, 1, '2022-09-24 19:48:28',
        '2022-10-20 05:53:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (529, 'pvx', '冯伟宸', '00000000', 1, '2022-04-20 12:53:42', '17276132107', '本溪', 3, 1, '2022-12-14 13:52:50',
        '2022-10-03 22:43:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (530, 'cBm', '龙昊天', '00000000', 1, '2022-08-15 15:08:20', '17814313050', '吴江', 3, 1, '2022-07-02 17:40:10',
        '2022-09-13 18:35:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (531, 'xDODU', '邹潇然', '00000000', 1, '2022-05-22 20:17:37', '15811962238', '清远', 3, 1, '2022-06-15 21:33:33',
        '2022-08-27 12:27:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (532, 'UR', '萧烨霖', '00000000', 1, '2022-12-24 19:08:30', '15004476224', '韶关', 3, 1, '2022-02-18 02:05:06',
        '2022-10-19 04:38:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (533, '7pZ', '沈鹭洋', '00000000', 1, '2022-11-21 05:35:56', '15897031528', '阳江', 3, 1, '2022-02-07 11:17:05',
        '2022-08-24 10:22:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (534, 'JS', '莫苑博', '00000000', 1, '2022-10-31 09:58:33', '14574953107', '临安', 3, 1, '2022-10-11 16:02:55',
        '2022-06-04 04:03:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (535, 'SCQIv', '石语堂', '00000000', 1, '2022-08-23 09:43:26', '15130243055', '淄博', 3, 1, '2022-08-05 18:15:46',
        '2022-03-10 16:24:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (536, '5i', '萧驰', '00000000', 1, '2022-08-02 05:27:15', '14533804042', '石家庄', 3, 1, '2022-07-08 18:03:17',
        '2022-05-28 15:35:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (537, 'FUS5S', '薛胤祥', '00000000', 1, '2022-11-11 04:04:09', '17730496054', '阳江', 3, 1, '2022-05-01 16:24:39',
        '2022-02-12 20:15:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (538, '77S', '覃鸿涛', '00000000', 1, '2022-07-17 04:32:25', '14717542603', '海口', 3, 1, '2022-06-26 02:18:27',
        '2022-08-29 06:45:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (539, 'x2uf', '徐绍齐', '00000000', 1, '2022-06-18 13:03:48', '17522523075', '昆明', 3, 1, '2022-04-08 07:10:15',
        '2022-09-13 22:59:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (540, 'deYW', '傅博涛', '00000000', 1, '2022-07-22 00:31:50', '17167371865', '东莞', 3, 1, '2022-02-10 00:11:38',
        '2022-10-30 12:06:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (541, 'qJx', '丁熠彤', '00000000', 1, '2022-04-04 14:07:38', '17164604591', '丹东', 3, 1, '2022-12-04 03:06:46',
        '2022-09-28 22:53:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (542, 'bXfU', '郭鹏飞', '00000000', 1, '2022-05-12 00:59:52', '14543498773', '菏泽', 3, 1, '2022-06-24 17:35:40',
        '2022-08-01 14:16:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (543, '6Bss', '徐浩', '00000000', 1, '2022-01-12 00:45:52', '15559881096', '秦皇岛', 3, 1, '2022-06-04 17:06:18',
        '2022-06-22 00:16:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (544, 'UB', '萧熠彤', '00000000', 1, '2022-03-23 06:16:44', '17306624829', '西宁', 3, 1, '2022-05-04 07:04:07',
        '2022-08-23 22:35:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (545, 'Yj', '胡烨伟', '00000000', 1, '2022-06-21 23:42:58', '15180590203', '沧州', 3, 1, '2022-09-14 05:07:56',
        '2022-02-16 12:43:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (546, '95Cl', '沈金鑫', '00000000', 1, '2022-07-31 17:37:12', '15205887854', '聊城', 3, 1, '2022-08-01 10:06:51',
        '2022-09-07 11:38:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (547, 'ZN0SC', '于君浩', '00000000', 1, '2022-05-02 22:34:48', '17093398007', '岳阳', 3, 1, '2022-07-22 22:43:51',
        '2022-07-31 07:24:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (548, 'eoG', '贾智辉', '00000000', 1, '2022-04-07 23:23:47', '14752485633', '东营', 3, 1, '2022-10-27 22:35:35',
        '2022-10-16 08:31:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (549, '1L', '程博超', '00000000', 1, '2022-04-10 21:25:50', '17267838338', '赤峰', 3, 1, '2022-05-18 10:04:14',
        '2022-10-21 05:44:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (550, 'qbY', '覃旭尧', '00000000', 1, '2022-11-26 04:16:07', '18164956054', '河源', 3, 1, '2022-03-08 16:13:12',
        '2022-04-10 21:18:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (551, 'yfZ', '廖鑫鹏', '00000000', 1, '2022-09-21 09:37:06', '14720757680', '宿迁', 3, 1, '2022-01-02 01:18:13',
        '2022-02-05 16:04:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (552, '0y', '白果', '00000000', 1, '2022-08-14 22:28:18', '13905990737', '承德', 3, 1, '2022-05-16 00:21:56',
        '2022-02-02 23:29:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (553, 'BB', '刘嘉懿', '00000000', 1, '2022-07-17 06:16:32', '15840396293', '吉林', 3, 1, '2022-06-21 20:11:14',
        '2022-05-04 23:41:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (554, 'ZyL', '熊弘文', '00000000', 1, '2022-02-02 01:43:03', '17744958459', '蓬莱', 3, 1, '2022-04-14 18:43:31',
        '2022-07-30 18:40:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (555, 'U2rSW', '洪擎宇', '00000000', 1, '2022-06-12 04:01:32', '15665324556', '包头', 3, 1, '2022-06-27 07:51:22',
        '2022-03-29 01:37:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (556, 'Lg7In', '陈语堂', '00000000', 1, '2022-06-28 16:52:35', '14539287234', '莱州', 3, 1, '2022-02-08 13:21:31',
        '2022-02-23 16:21:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (557, 'bn7', '赵炎彬', '00000000', 1, '2022-06-26 01:57:38', '15123311872', '三门峡', 3, 1, '2022-06-02 22:04:23',
        '2022-01-14 07:37:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (558, 'IQjh', '傅昊强', '00000000', 1, '2022-02-17 21:46:16', '17008208113', '太原', 3, 1, '2022-09-19 08:02:06',
        '2022-07-01 09:18:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (559, '7dJK', '尹峻熙', '00000000', 1, '2022-11-04 22:16:46', '14789188628', '西宁', 3, 1, '2022-12-20 10:21:36',
        '2022-09-24 01:28:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (560, '0Zap', '唐越彬', '00000000', 1, '2022-07-26 02:16:26', '15163377853', '镇江', 3, 1, '2022-02-04 05:44:10',
        '2022-05-20 13:00:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (561, 'my0V7', '苏熠彤', '00000000', 1, '2022-07-16 19:04:37', '17577672206', '开封', 3, 1, '2022-01-11 02:33:13',
        '2022-06-23 02:04:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (562, 'QG', '史俊驰', '00000000', 1, '2022-08-12 00:23:33', '15513835838', '玉溪', 3, 1, '2022-02-13 06:46:14',
        '2022-03-14 09:00:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (563, 'fKGUk', '熊琪', '00000000', 1, '2022-10-11 10:38:51', '17898176499', '淄博', 3, 1, '2022-10-21 21:04:37',
        '2022-02-17 22:17:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (564, '4NHad', '薛智辉', '00000000', 1, '2022-10-08 11:17:59', '14709668456', '东营', 3, 1, '2022-10-20 08:45:20',
        '2022-09-21 11:22:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (565, 'Zux', '侯鹏飞', '00000000', 1, '2022-09-03 20:31:30', '15080998850', '汕尾', 3, 1, '2022-05-08 01:21:05',
        '2022-12-22 02:33:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (566, 'BX', '高擎宇', '00000000', 1, '2022-05-06 23:12:53', '18663886755', '乳山', 3, 1, '2022-10-18 05:05:55',
        '2022-10-26 07:16:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (567, '3Hb6a', '孔浩轩', '00000000', 1, '2022-12-24 01:00:19', '17195569541', '咸阳', 3, 1, '2022-04-11 13:05:13',
        '2022-03-13 04:07:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (568, 'iuU8', '陆志强', '00000000', 1, '2022-11-05 01:29:45', '17122839010', '湘潭', 3, 1, '2022-01-24 15:10:54',
        '2022-01-11 10:42:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (569, 'MLep', '余钰轩', '00000000', 1, '2022-06-16 11:16:35', '15670392343', '梅州', 3, 1, '2022-10-11 16:25:22',
        '2022-02-01 14:11:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (570, 'LW2Mc', '孙昊天', '00000000', 1, '2022-10-18 03:54:02', '17749788678', '乌鲁木齐', 3, 1, '2022-11-05 19:08:43',
        '2022-04-09 07:04:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (571, 'nE1zC', '钟俊驰', '00000000', 1, '2022-04-04 14:33:30', '15002626420', '成都', 3, 1, '2022-03-29 05:41:33',
        '2022-12-04 13:43:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (572, 'QO', '吕明辉', '00000000', 1, '2022-09-20 17:32:07', '18747114355', '南通', 3, 1, '2022-03-08 01:52:45',
        '2022-08-14 13:15:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (573, 'DX', '阎梓晨', '00000000', 1, '2022-11-17 08:57:45', '18010747106', '湛江', 3, 1, '2022-12-27 22:42:11',
        '2022-09-24 18:27:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (574, '3eFO', '于旭尧', '00000000', 1, '2022-08-04 04:46:14', '15732735421', '湘潭', 3, 1, '2022-04-16 12:00:51',
        '2022-03-30 22:40:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (575, 'ibc3', '邹晋鹏', '00000000', 1, '2022-04-02 20:05:12', '17070506855', '昆明', 3, 1, '2022-11-04 01:16:06',
        '2022-12-10 03:43:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (576, 'TSc', '侯伟宸', '00000000', 1, '2022-09-08 05:00:37', '17733856082', '蓬莱', 3, 1, '2022-12-13 04:41:10',
        '2022-11-20 07:26:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (577, 'sFSm', '邹昊然', '00000000', 1, '2022-06-03 07:26:43', '14588375460', '日照', 3, 1, '2022-08-24 14:19:15',
        '2022-05-13 03:21:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (578, 'CQJY', '韦雪松', '00000000', 1, '2022-09-15 17:50:05', '15341991849', '遵义', 3, 1, '2022-11-12 16:31:39',
        '2022-10-19 11:18:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (579, 'Qr', '袁鸿煊', '00000000', 1, '2022-01-28 06:47:21', '15067723216', '铜川', 3, 1, '2022-01-31 23:58:24',
        '2022-04-15 07:57:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (580, 'xU2', '武凯瑞', '00000000', 1, '2022-08-16 22:07:35', '15669530679', '临沂', 3, 1, '2022-12-01 01:39:53',
        '2022-10-29 06:17:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (581, 'Ng3N', '林俊驰', '00000000', 1, '2022-05-01 19:26:15', '15729484919', '诸暨', 3, 1, '2022-03-12 19:31:49',
        '2022-08-10 18:54:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (582, 'KGW', '姚晓啸', '00000000', 1, '2022-07-13 12:47:34', '17014081035', '柳州', 3, 1, '2022-12-15 01:18:16',
        '2022-08-11 09:46:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (583, 'tr1', '阎鑫鹏', '00000000', 1, '2022-06-11 04:56:31', '14719779616', '绵阳', 3, 1, '2022-07-18 08:52:31',
        '2022-09-10 04:51:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (584, 'EOd', '萧志强', '00000000', 1, '2022-05-22 04:24:07', '17753020490', '舟山', 3, 1, '2022-02-14 16:19:30',
        '2022-11-07 03:11:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (585, 'IIZc', '唐智渊', '00000000', 1, '2022-08-11 18:26:58', '15342468029', '本溪', 3, 1, '2022-06-20 20:57:33',
        '2022-08-16 12:06:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (586, 'Pe5Ox', '罗文轩', '00000000', 1, '2022-10-24 04:30:49', '15244444828', '阳江', 3, 1, '2022-06-28 22:08:36',
        '2022-06-10 15:09:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (587, 'h61Uu', '许天磊', '00000000', 1, '2022-03-05 14:42:05', '13013209577', '上海', 3, 1, '2022-03-29 09:20:09',
        '2022-02-18 20:54:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (588, 'AdkT', '戴凯瑞', '00000000', 1, '2022-05-04 15:04:24', '15233574078', '泉州', 3, 1, '2022-07-06 17:07:10',
        '2022-11-19 16:58:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (589, '6w4a', '赖思源', '00000000', 1, '2022-08-10 10:10:39', '17381989034', '泰州', 3, 1, '2022-09-03 14:41:59',
        '2022-09-10 15:41:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (590, 'tA4A', '邱鹏飞', '00000000', 1, '2022-03-20 13:55:42', '15905417236', '海口', 3, 1, '2022-07-25 18:52:45',
        '2022-06-19 16:05:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (591, 'me', '张俊驰', '00000000', 1, '2022-05-19 14:18:27', '15923456851', '福州', 3, 1, '2022-04-12 20:33:04',
        '2022-01-21 15:53:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (592, 'wRq', '陆正豪', '00000000', 1, '2022-05-11 13:17:28', '14774045066', '武汉', 3, 1, '2022-01-20 14:18:49',
        '2022-11-08 02:43:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (593, 'dq', '黄越泽', '00000000', 1, '2022-05-13 02:59:47', '15968307019', '库尔勒', 3, 1, '2022-09-02 18:19:40',
        '2022-03-13 00:35:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (594, 'WAOJV', '沈彬', '00000000', 1, '2022-08-02 07:25:07', '17604831021', '贵阳', 3, 1, '2022-09-26 15:05:06',
        '2022-05-08 20:51:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (595, 'TpOtQ', '龙修洁', '00000000', 1, '2022-06-29 04:59:24', '17773466530', '金坛', 3, 1, '2022-07-16 03:43:04',
        '2022-12-06 20:00:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (596, 'B70X', '石煜城', '00000000', 1, '2022-07-10 21:40:52', '15723361457', '西宁', 3, 1, '2022-09-28 16:06:03',
        '2022-07-13 20:40:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (597, 'oDq', '毛擎苍', '00000000', 1, '2022-11-02 05:01:09', '17658004425', '抚顺', 3, 1, '2022-11-20 14:49:31',
        '2022-02-14 14:20:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (598, 'XW', '郑烨伟', '00000000', 1, '2022-09-08 04:30:56', '15342099946', '威海', 3, 1, '2022-02-18 17:48:15',
        '2022-10-30 19:20:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (599, 'tgSa', '余雨泽', '00000000', 1, '2022-01-16 20:23:26', '15188781615', '南宁', 3, 1, '2022-12-13 05:11:21',
        '2022-02-15 21:23:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (600, 'TF', '陆博涛', '00000000', 1, '2022-06-09 20:19:50', '15727549897', '荣成', 3, 1, '2022-12-22 15:03:19',
        '2022-09-01 03:34:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (601, 'RYO', '邓皓轩', '00000000', 1, '2022-07-21 05:04:25', '17752028405', '大庆', 3, 1, '2022-01-09 09:48:07',
        '2022-06-12 23:14:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (602, 'NSt', '沈鹏', '00000000', 1, '2022-09-10 07:14:44', '15938709484', '石嘴山', 3, 1, '2022-01-08 17:06:14',
        '2022-11-15 06:57:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (603, 'Gqo', '卢子默', '00000000', 1, '2022-08-04 20:59:37', '15040091415', '大庆', 3, 1, '2022-09-21 13:20:22',
        '2022-08-13 10:38:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (604, 'Tk', '范天翊', '00000000', 1, '2022-04-24 15:27:52', '17045747293', '绍兴', 3, 1, '2022-08-13 06:48:11',
        '2022-11-22 21:09:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (605, 'nB', '叶峻熙', '00000000', 1, '2022-11-27 10:27:18', '15270574202', '江阴', 3, 1, '2022-01-01 20:17:07',
        '2022-06-21 13:02:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (606, '3UL8w', '沈梓晨', '00000000', 1, '2022-05-06 16:35:26', '15181255394', '鞍山', 3, 1, '2022-12-02 07:51:49',
        '2022-04-23 19:06:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (607, 'DRN', '魏彬', '00000000', 1, '2022-02-07 06:25:55', '17355270294', '大连', 3, 1, '2022-01-10 19:25:20',
        '2022-06-12 08:10:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (608, 'Z8CuL', '吴浩宇', '00000000', 1, '2022-05-20 17:23:40', '17317929562', '东营', 3, 1, '2022-04-03 23:03:08',
        '2022-10-22 01:58:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (609, 'OuEr', '姚健雄', '00000000', 1, '2022-06-15 18:46:03', '14799371666', '济宁', 3, 1, '2022-08-31 05:35:10',
        '2022-04-08 21:40:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (610, 'Dk', '胡嘉懿', '00000000', 1, '2022-01-11 06:56:05', '15938463421', '义乌', 3, 1, '2022-02-17 11:11:33',
        '2022-10-30 08:17:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (611, 'BV8', '梁智辉', '00000000', 1, '2022-07-05 21:02:28', '15645820209', '衡水', 3, 1, '2022-05-27 22:04:00',
        '2022-03-14 23:50:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (612, 'TVm', '黄天宇', '00000000', 1, '2022-01-26 07:45:14', '17714530700', '盐城', 3, 1, '2022-10-29 20:43:35',
        '2022-07-31 13:25:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (613, 'EZKi', '石凯瑞', '00000000', 1, '2022-02-18 02:09:27', '15087527626', '海口', 3, 1, '2022-04-14 10:04:16',
        '2022-11-05 21:23:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (614, 'Plus', '罗苑博', '00000000', 1, '2022-01-10 05:06:02', '15056922501', '广州', 3, 1, '2022-03-17 23:40:51',
        '2022-02-16 05:58:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (615, '7BV0', '史黎昕', '00000000', 1, '2022-08-08 05:24:21', '17826956664', '烟台', 3, 1, '2022-07-08 15:06:34',
        '2022-12-22 13:52:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (616, 'xsG', '张鑫磊', '00000000', 1, '2022-09-18 01:44:50', '14700154338', '泉州', 3, 1, '2022-08-30 13:44:41',
        '2022-03-05 01:03:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (617, 'vW9E', '崔志泽', '00000000', 1, '2022-12-18 23:40:35', '17141007176', '抚顺', 3, 1, '2022-11-02 03:33:48',
        '2022-07-25 22:32:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (618, 'yr8lO', '董昊强', '00000000', 1, '2022-06-14 21:51:59', '15670960814', '聊城', 3, 1, '2022-09-13 21:06:46',
        '2022-07-18 04:31:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (619, '1vX', '丁远航', '00000000', 1, '2022-12-11 15:04:07', '17191533146', '株洲', 3, 1, '2022-02-03 15:13:10',
        '2022-12-28 10:22:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (620, 'd6ZA', '叶博涛', '00000000', 1, '2022-12-05 10:22:45', '14575388277', '平顶山', 3, 1, '2022-08-14 01:24:56',
        '2022-01-08 00:31:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (621, '0KG', '杜睿渊', '00000000', 1, '2022-05-31 22:09:30', '17510846752', '海口', 3, 1, '2022-12-14 17:26:38',
        '2022-08-29 21:24:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (622, 'Vp', '苏晓博', '00000000', 1, '2022-10-05 16:46:17', '17311729501', '泸州', 3, 1, '2022-03-25 04:41:50',
        '2022-10-16 16:21:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (623, 'ey226', '冯泽洋', '00000000', 1, '2022-02-24 10:48:58', '15618897428', '临沂', 3, 1, '2022-10-20 11:32:17',
        '2022-10-04 19:59:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (624, 'Q1ss', '袁子默', '00000000', 1, '2022-11-29 10:13:28', '15895292493', '淮安', 3, 1, '2022-09-28 08:51:05',
        '2022-02-18 02:09:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (625, 'rnd', '陆绍齐', '00000000', 1, '2022-03-19 16:52:26', '17667984915', '北海', 3, 1, '2022-05-22 12:01:40',
        '2022-12-30 13:48:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (626, 'b1fB', '洪明哲', '00000000', 1, '2022-12-17 04:27:49', '17631734628', '莱西', 3, 1, '2022-11-25 05:33:21',
        '2022-05-29 03:39:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (627, 'Q7wIg', '张展鹏', '00000000', 1, '2022-08-24 16:26:08', '17824199076', '云浮', 3, 1, '2022-06-04 09:00:28',
        '2022-12-24 09:11:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (628, '6K', '熊志强', '00000000', 1, '2022-02-23 00:45:22', '17060181732', '北海', 3, 1, '2022-12-16 03:44:31',
        '2022-12-24 19:20:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (629, 'z8y', '石熠彤', '00000000', 1, '2022-11-07 00:58:16', '18694403960', '南通', 3, 1, '2022-01-28 08:57:19',
        '2022-11-10 22:36:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (630, 'bHv', '谭晟睿', '00000000', 1, '2022-03-16 17:56:18', '18436335196', '丽水', 3, 1, '2022-12-20 09:38:44',
        '2022-04-24 08:51:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (631, 'AJS', '何明', '00000000', 1, '2022-03-15 15:48:40', '15511463771', '湖州', 3, 1, '2022-12-04 08:57:38',
        '2022-05-04 23:10:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (632, '08', '李懿轩', '00000000', 1, '2022-11-07 13:56:59', '17032455841', '重庆', 3, 1, '2022-02-02 18:05:34',
        '2022-03-05 06:20:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (633, 'JQVq', '郭弘文', '00000000', 1, '2022-08-02 05:13:34', '17059120919', '沧州', 3, 1, '2022-06-16 04:28:46',
        '2022-06-10 17:34:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (634, '8t4', '贾烨霖', '00000000', 1, '2022-08-15 23:23:21', '15261787519', '大连', 3, 1, '2022-05-17 12:50:45',
        '2022-10-28 13:58:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (635, 'qE', '郭熠彤', '00000000', 1, '2022-12-08 19:18:39', '15732349737', '抚顺', 3, 1, '2022-09-07 05:36:56',
        '2022-09-26 23:03:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (636, 'BnI', '史立果', '00000000', 1, '2022-09-04 19:19:36', '17045527468', '德阳', 3, 1, '2022-11-30 19:34:43',
        '2022-07-28 11:43:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (637, 'fRqo5', '夏晓博', '00000000', 1, '2022-06-23 12:41:09', '17245118134', '泰州', 3, 1, '2022-03-22 00:12:53',
        '2022-03-21 23:39:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (638, 'oyOr', '郝思', '00000000', 1, '2022-04-12 15:03:42', '17345112852', '遵义', 3, 1, '2022-08-12 15:53:36',
        '2022-07-06 12:32:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (639, 'L6', '汪涛', '00000000', 1, '2022-12-14 20:31:21', '17710184254', '阳江', 3, 1, '2022-05-09 16:18:43',
        '2022-11-25 21:30:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (640, 't6U', '潘烨霖', '00000000', 1, '2022-05-25 04:09:48', '17538680516', '合肥', 3, 1, '2022-06-03 10:49:33',
        '2022-08-17 09:07:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (641, 'rJEQ', '于烨霖', '00000000', 1, '2022-08-16 22:25:31', '17649601784', '海口', 3, 1, '2022-11-11 08:53:56',
        '2022-05-11 21:59:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (642, 'pIy4p', '阎钰轩', '00000000', 1, '2022-04-26 18:58:03', '15608191983', '保定', 3, 1, '2022-12-28 14:13:01',
        '2022-09-26 02:36:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (643, 'HSHFs', '孔皓轩', '00000000', 1, '2022-01-31 14:39:44', '15510782381', '株洲', 3, 1, '2022-03-15 10:14:12',
        '2022-11-23 07:08:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (644, 'Bh0zx', '江子骞', '00000000', 1, '2022-07-30 16:53:11', '15201838365', '盐城', 3, 1, '2022-01-21 08:49:26',
        '2022-12-18 12:57:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (645, 'eOxRR', '杜昊强', '00000000', 1, '2022-10-15 12:00:47', '17032205036', '金坛', 3, 1, '2022-11-22 16:28:41',
        '2022-09-18 20:56:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (646, 'IhhlG', '郑锦程', '00000000', 1, '2022-06-08 22:00:27', '15166251081', '开封', 3, 1, '2022-03-07 18:27:24',
        '2022-11-17 13:05:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (647, 'JXa', '黎峻熙', '00000000', 1, '2022-12-22 20:20:21', '15299968964', '荣成', 3, 1, '2022-04-24 06:23:02',
        '2022-04-06 20:50:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (648, 'TNe3', '顾浩轩', '00000000', 1, '2022-06-04 03:11:11', '17322546527', '北海', 3, 1, '2022-03-02 05:11:05',
        '2022-05-28 14:33:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (649, 'dI', '侯天宇', '00000000', 1, '2022-04-10 08:36:48', '14724751782', '绍兴', 3, 1, '2022-02-23 06:38:03',
        '2022-09-08 21:08:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (650, '6hbm', '吴果', '00000000', 1, '2022-09-09 07:31:20', '14520793273', '广州', 3, 1, '2022-10-26 02:48:27',
        '2022-02-13 12:40:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (651, 'LCmoQ', '程鹏煊', '00000000', 1, '2022-05-22 22:11:21', '15175897885', '桂林', 3, 1, '2022-11-06 00:08:55',
        '2022-04-18 16:50:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (652, 'o614', '薛泽洋', '00000000', 1, '2022-10-12 13:11:20', '15795397798', '锦州', 3, 1, '2022-10-14 05:33:05',
        '2022-07-30 16:19:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (653, 'Um', '龙弘文', '00000000', 1, '2022-01-01 17:16:01', '17543791558', '海口', 3, 1, '2022-01-20 12:49:51',
        '2022-07-20 17:50:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (654, 'Irg', '姜志强', '00000000', 1, '2022-11-09 19:50:31', '17008833810', '咸阳', 3, 1, '2022-02-06 22:01:07',
        '2022-12-05 09:48:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (655, 'C6ysN', '曹文轩', '00000000', 1, '2022-02-19 14:10:56', '15182708552', '南宁', 3, 1, '2022-08-28 00:28:02',
        '2022-06-11 20:55:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (656, 't4BgF', '赖潇然', '00000000', 1, '2022-11-11 14:12:13', '14516560476', '金坛', 3, 1, '2022-08-02 17:59:16',
        '2022-03-25 11:59:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (657, 'Ryf', '谢潇然', '00000000', 1, '2022-07-20 23:32:09', '15613205946', '韶关', 3, 1, '2022-09-28 06:07:19',
        '2022-09-12 14:24:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (658, 'nO9', '刘弘文', '00000000', 1, '2022-03-19 16:39:07', '17186861458', '滨州', 3, 1, '2022-04-05 09:34:58',
        '2022-12-28 13:48:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (659, 'JIhI', '江晓啸', '00000000', 1, '2022-04-07 11:56:56', '17562767777', '聊城', 3, 1, '2022-03-18 19:49:47',
        '2022-08-01 02:08:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (660, 'caTA', '苏建辉', '00000000', 1, '2022-06-24 22:02:38', '15294430732', '云浮', 3, 1, '2022-07-31 10:22:52',
        '2022-10-23 23:03:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (661, '4A', '许鸿煊', '00000000', 1, '2022-07-18 21:08:50', '15987021876', '咸阳', 3, 1, '2022-03-05 05:24:51',
        '2022-10-13 05:12:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (662, 'NOJ', '周修杰', '00000000', 1, '2022-08-28 18:44:46', '15651788178', '牡丹江', 3, 1, '2022-06-04 20:11:43',
        '2022-03-30 00:30:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (663, 'Xfe6', '贺思', '00000000', 1, '2022-09-17 00:11:34', '17514321029', '牡丹江', 3, 1, '2022-03-26 17:53:52',
        '2022-11-10 20:26:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (664, 'XAvOA', '杨思远', '00000000', 1, '2022-07-25 15:21:24', '15347476604', '无锡', 3, 1, '2022-11-07 04:22:57',
        '2022-09-05 01:02:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (665, 'okzh', '苏瑞霖', '00000000', 1, '2022-10-20 07:05:56', '17251933316', '盘锦', 3, 1, '2022-01-15 05:56:16',
        '2022-10-12 04:29:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (666, 'SB', '罗胤祥', '00000000', 1, '2022-09-06 11:32:36', '17058621444', '临安', 3, 1, '2022-12-12 19:19:15',
        '2022-07-24 02:12:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (667, 'lBCoQ', '周致远', '00000000', 1, '2022-02-24 00:59:12', '15777076123', '临沂', 3, 1, '2022-09-24 09:08:52',
        '2022-02-08 15:31:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (668, 'os', '覃烨伟', '00000000', 1, '2022-09-21 20:36:40', '17889097550', '烟台', 3, 1, '2022-04-09 03:08:16',
        '2022-12-03 07:57:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (669, '1p', '谭明辉', '00000000', 1, '2022-07-27 11:53:39', '15163905330', '嘉兴', 3, 1, '2022-08-06 00:20:13',
        '2022-05-14 00:05:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (670, '9Mlq', '周金鑫', '00000000', 1, '2022-01-30 02:56:29', '15746812392', '邢台', 3, 1, '2022-02-17 06:10:59',
        '2022-09-12 11:54:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (671, 'qnfBg', '杜晋鹏', '00000000', 1, '2022-11-27 17:25:05', '15995574779', '库尔勒', 3, 1, '2022-04-15 08:42:31',
        '2022-01-19 07:55:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (672, 'MC', '田金鑫', '00000000', 1, '2022-01-17 15:37:59', '17210779779', '佛山', 3, 1, '2022-05-26 10:39:53',
        '2022-09-22 18:16:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (673, 'svk', '黎致远', '00000000', 1, '2022-10-07 09:39:55', '15033349108', '聊城', 3, 1, '2022-12-06 18:57:30',
        '2022-05-31 15:53:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (674, 'h5em', '吴子轩', '00000000', 1, '2022-11-28 15:50:25', '13370521011', '南京', 3, 1, '2022-09-23 21:52:22',
        '2022-07-01 08:00:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (675, 'vajQv', '汪峻熙', '00000000', 1, '2022-03-23 03:15:55', '13380166260', '南充', 3, 1, '2022-03-24 09:26:14',
        '2022-11-06 00:07:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (676, '2RgV', '陈伟泽', '00000000', 1, '2022-05-06 05:53:29', '17333378791', '太原', 3, 1, '2022-01-18 15:41:51',
        '2022-08-18 18:20:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (677, 'l8HyT', '邹浩轩', '00000000', 1, '2022-09-09 11:15:15', '17660532939', '胶州', 3, 1, '2022-09-01 04:51:33',
        '2022-09-11 12:10:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (678, 'tnW', '袁昊然', '00000000', 1, '2022-05-31 02:01:17', '17869988241', '焦作', 3, 1, '2022-11-22 21:56:15',
        '2022-05-11 12:20:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (679, 'kDQK', '邓正豪', '00000000', 1, '2022-11-12 07:14:51', '15380147604', '克拉玛依', 3, 1, '2022-11-28 01:09:17',
        '2022-12-14 12:04:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (680, 'KuNDs', '王嘉熙', '00000000', 1, '2022-09-16 02:45:39', '17246858401', '云浮', 3, 1, '2022-02-09 06:59:31',
        '2022-02-19 21:53:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (681, 'BPFPl', '周皓轩', '00000000', 1, '2022-12-14 23:09:50', '15151029393', '绵阳', 3, 1, '2022-11-28 04:49:46',
        '2022-08-07 20:16:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (682, 'o4ik', '贾果', '00000000', 1, '2022-01-02 11:00:39', '15690576531', '乌鲁木齐', 3, 1, '2022-01-07 19:50:51',
        '2022-09-14 21:38:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (683, '3M', '龙鹭洋', '00000000', 1, '2022-03-16 09:40:02', '15681841902', '深圳', 3, 1, '2022-12-18 23:38:35',
        '2022-02-06 09:06:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (684, 'iTAFF', '薛擎宇', '00000000', 1, '2022-02-13 20:38:24', '17124047538', '张家界', 3, 1, '2022-09-27 23:10:01',
        '2022-02-19 12:25:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (685, 'hx', '白鸿涛', '00000000', 1, '2022-12-25 15:34:55', '17111880681', '衢州', 3, 1, '2022-03-27 19:03:55',
        '2022-01-31 08:59:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (686, 'gp', '龙志强', '00000000', 1, '2022-07-17 20:14:24', '17131670323', '西宁', 3, 1, '2022-08-25 10:12:13',
        '2022-09-03 13:07:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (687, 'PZin3', '孔鑫磊', '00000000', 1, '2022-02-27 22:42:13', '15144241126', '太原', 3, 1, '2022-10-12 19:28:52',
        '2022-10-06 01:33:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (688, '4Styi', '林鸿涛', '00000000', 1, '2022-03-11 09:24:29', '17122432747', '韶关', 3, 1, '2022-03-13 06:43:12',
        '2022-01-30 05:13:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (689, 'LT', '黄鸿煊', '00000000', 1, '2022-01-10 21:44:47', '15954490070', '克拉玛依', 3, 1, '2022-07-21 01:10:31',
        '2022-09-09 12:00:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (690, '5zs', '程烨磊', '00000000', 1, '2022-01-02 11:28:00', '15796368843', '江门', 3, 1, '2022-05-16 11:34:10',
        '2022-03-15 17:11:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (691, 'DgU', '蒋鑫鹏', '00000000', 1, '2022-08-26 23:29:07', '17262507232', '阳泉', 3, 1, '2022-01-20 07:57:15',
        '2022-03-20 14:47:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (692, '1oU', '沈鹏煊', '00000000', 1, '2022-03-08 10:52:30', '15114632576', '盐城', 3, 1, '2022-08-27 16:12:50',
        '2022-05-15 22:01:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (693, '8h', '廖浩', '00000000', 1, '2022-02-01 06:47:52', '15636196314', '东莞', 3, 1, '2022-06-23 08:31:45',
        '2022-10-20 06:40:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (694, 'Zvay', '雷明杰', '00000000', 1, '2022-07-09 08:18:25', '15373010703', '库尔勒', 3, 1, '2022-08-27 04:41:08',
        '2022-12-12 11:44:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (695, '8mTsL', '薛旭尧', '00000000', 1, '2022-02-22 18:40:02', '15754933508', '舟山', 3, 1, '2022-10-23 06:38:32',
        '2022-01-18 16:11:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (696, 'MsdNr', '马泽洋', '00000000', 1, '2022-01-26 13:06:14', '15618306559', '潍坊', 3, 1, '2022-09-21 15:18:16',
        '2022-01-30 06:50:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (697, 'h6jN', '龙明辉', '00000000', 1, '2022-03-25 05:16:09', '14766728150', '石家庄', 3, 1, '2022-06-15 08:18:55',
        '2022-05-13 02:57:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (698, '7Ls', '谭嘉熙', '00000000', 1, '2022-02-17 19:19:22', '18053941244', '金坛', 3, 1, '2022-06-05 16:21:01',
        '2022-09-09 06:01:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (699, 'bv', '蔡俊驰', '00000000', 1, '2022-07-13 09:49:26', '15387433955', '金昌', 3, 1, '2022-08-27 04:56:11',
        '2022-11-30 06:51:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (700, '4Jm', '许凯瑞', '00000000', 1, '2022-03-16 14:37:56', '14731569704', '蓬莱', 3, 1, '2022-03-15 09:04:03',
        '2022-12-21 08:27:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (701, 'zs', '潘苑博', '00000000', 1, '2022-04-14 20:40:42', '17767898251', '常熟', 3, 1, '2022-02-03 15:05:50',
        '2022-06-29 05:55:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (702, 'Ek', '龙驰', '00000000', 1, '2022-10-13 05:01:54', '18298166709', '丹东', 3, 1, '2022-02-20 16:33:14',
        '2022-02-19 02:33:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (703, '1WM5', '薛瑾瑜', '00000000', 1, '2022-11-15 18:08:21', '17295051181', '成都', 3, 1, '2022-09-11 16:44:24',
        '2022-12-13 07:37:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (704, '353ii', '高鸿煊', '00000000', 1, '2022-04-09 16:52:00', '17160082105', '乌鲁木齐', 3, 1, '2022-05-06 21:25:12',
        '2022-06-13 00:23:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (705, 'OQ', '刘文博', '00000000', 1, '2022-05-12 04:07:31', '17023274848', '滨州', 3, 1, '2022-03-05 03:20:49',
        '2022-10-23 04:34:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (706, 'ZHj', '阎驰', '00000000', 1, '2022-12-20 15:36:36', '17064847828', '瓦房店', 3, 1, '2022-05-04 13:55:22',
        '2022-09-05 00:59:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (707, 'lO', '白思聪', '00000000', 1, '2022-09-12 23:42:57', '17113014755', '鄂尔多斯', 3, 1, '2022-07-03 23:52:38',
        '2022-10-03 16:54:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (708, 'ZE', '陈博超', '00000000', 1, '2022-09-16 05:06:52', '15919250068', '承德', 3, 1, '2022-08-21 05:33:26',
        '2022-01-24 22:39:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (709, 'qCY7', '雷楷瑞', '00000000', 1, '2022-10-29 11:17:38', '18608352574', '临汾', 3, 1, '2022-05-07 22:14:53',
        '2022-06-11 14:30:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (710, 'QlKpn', '金胤祥', '00000000', 1, '2022-01-26 12:03:35', '18351727712', '溧阳', 3, 1, '2022-03-21 23:49:21',
        '2022-03-02 01:11:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (711, 'cF', '余语堂', '00000000', 1, '2022-04-26 00:14:47', '15876824625', '德阳', 3, 1, '2022-09-12 06:13:01',
        '2022-01-19 01:48:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (712, 'MdRp', '赖鑫鹏', '00000000', 1, '2022-07-10 13:14:22', '17624087236', '衢州', 3, 1, '2022-04-24 14:18:33',
        '2022-07-24 15:18:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (713, 'U7', '雷笑愚', '00000000', 1, '2022-01-13 11:15:22', '15975311963', '泸州', 3, 1, '2022-10-23 00:47:42',
        '2022-10-24 14:51:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (714, 'XU9i', '吕建辉', '00000000', 1, '2022-09-19 23:13:01', '15946702875', '太仓', 3, 1, '2022-07-24 11:56:58',
        '2022-02-12 11:32:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (715, '0p', '梁天磊', '00000000', 1, '2022-05-07 03:23:02', '15220908556', '丽水', 3, 1, '2022-08-09 03:50:38',
        '2022-02-05 19:23:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (716, 'gfCkC', '侯伟诚', '00000000', 1, '2022-05-20 20:19:08', '15093723896', '乌鲁木齐', 3, 1, '2022-08-29 21:29:35',
        '2022-02-25 18:49:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (717, 'xku', '邹鑫鹏', '00000000', 1, '2022-10-26 14:46:25', '14511712745', '洛阳', 3, 1, '2022-04-17 14:34:54',
        '2022-08-19 03:59:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (718, 'NO', '许立果', '00000000', 1, '2022-07-16 13:31:52', '17639844253', '东莞', 3, 1, '2022-08-13 10:01:39',
        '2022-11-04 11:50:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (719, 'CF88', '余博涛', '00000000', 1, '2022-01-14 22:11:25', '15077545108', '临汾', 3, 1, '2022-05-23 01:52:39',
        '2022-01-19 19:02:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (720, 'RjAdu', '侯浩', '00000000', 1, '2022-07-21 16:22:05', '15080903560', '九江', 3, 1, '2022-02-19 21:41:24',
        '2022-08-23 15:46:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (721, 'jf', '叶嘉熙', '00000000', 1, '2022-05-17 04:28:08', '15392248263', '金华', 3, 1, '2022-06-28 11:38:10',
        '2022-01-07 22:25:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (722, 'WBS', '田懿轩', '00000000', 1, '2022-11-09 03:28:57', '14784897940', '长沙', 3, 1, '2022-07-25 00:55:38',
        '2022-04-14 08:22:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (723, 'xN1D', '林弘文', '00000000', 1, '2022-12-25 06:20:25', '15713612900', '潮州', 3, 1, '2022-12-22 14:24:57',
        '2022-08-06 20:13:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (724, 'aB5N', '陆昊然', '00000000', 1, '2022-04-25 12:00:12', '15850731857', '铜川', 3, 1, '2022-07-05 12:09:31',
        '2022-03-22 18:46:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (725, 'QYn', '范鹭洋', '00000000', 1, '2022-08-24 01:13:09', '17140163194', '句容', 3, 1, '2022-05-16 18:17:41',
        '2022-08-09 23:21:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (726, 'do', '丁琪', '00000000', 1, '2022-08-30 22:36:01', '18660701213', '瓦房店', 3, 1, '2022-01-24 07:04:47',
        '2022-09-16 07:42:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (727, 'nD', '吕天翊', '00000000', 1, '2022-07-18 12:53:07', '15828295970', '乳山', 3, 1, '2022-06-27 08:53:24',
        '2022-10-31 07:46:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (728, '7x', '钟越彬', '00000000', 1, '2022-05-01 07:55:12', '18426526487', '淮安', 3, 1, '2022-04-15 23:53:24',
        '2022-07-29 00:19:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (729, 'PEpKz', '侯鹏煊', '00000000', 1, '2022-06-18 08:33:17', '15277099101', '三门峡', 3, 1, '2022-12-11 08:54:52',
        '2022-07-18 05:15:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (730, 'neSm', '崔越彬', '00000000', 1, '2022-12-07 00:21:11', '13393844476', '泸州', 3, 1, '2022-04-18 10:50:55',
        '2022-03-30 07:22:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (731, 'v9Wg', '吴君浩', '00000000', 1, '2022-02-27 08:37:45', '15157659769', '三亚', 3, 1, '2022-11-07 10:25:01',
        '2022-04-19 12:59:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (732, 'qa', '邱立辉', '00000000', 1, '2022-07-06 07:38:38', '15175048336', '张家口', 3, 1, '2022-06-22 12:03:53',
        '2022-10-18 00:08:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (733, 'F78', '侯明辉', '00000000', 1, '2022-02-08 06:01:28', '13736767587', '赤峰', 3, 1, '2022-03-26 00:57:11',
        '2022-01-05 21:39:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (734, 'fMWA', '江天宇', '00000000', 1, '2022-02-13 21:50:00', '13233949936', '绵阳', 3, 1, '2022-05-28 12:10:07',
        '2022-06-11 23:47:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (735, '8pVb', '潘鹤轩', '00000000', 1, '2022-12-26 03:22:05', '15063319419', '石嘴山', 3, 1, '2022-07-10 00:41:41',
        '2022-02-05 04:45:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (736, 'dDis8', '龚天翊', '00000000', 1, '2022-08-04 06:37:13', '15522220960', '菏泽', 3, 1, '2022-01-12 15:34:30',
        '2022-11-21 20:40:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (737, 'gCb', '贾修洁', '00000000', 1, '2022-05-05 19:53:45', '15987234803', '咸阳', 3, 1, '2022-10-21 19:36:20',
        '2022-05-09 06:00:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (738, 'qGwpc', '郑烨霖', '00000000', 1, '2022-04-23 05:20:55', '17820555224', '德阳', 3, 1, '2022-06-08 11:08:03',
        '2022-02-15 03:09:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (739, 't4u', '严振家', '00000000', 1, '2022-11-06 08:07:45', '17677163441', '南充', 3, 1, '2022-02-09 13:12:50',
        '2022-09-25 06:31:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (740, 'h5M', '钟建辉', '00000000', 1, '2022-11-13 15:51:38', '17306021601', '鄂尔多斯', 3, 1, '2022-07-10 05:30:17',
        '2022-06-19 01:08:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (741, '2w', '沈君浩', '00000000', 1, '2022-11-19 04:39:09', '15285540095', '柳州', 3, 1, '2022-06-06 22:57:28',
        '2022-11-15 16:47:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (742, 'Bi', '夏鑫鹏', '00000000', 1, '2022-02-08 19:27:26', '15747733792', '廊坊', 3, 1, '2022-05-07 11:45:34',
        '2022-04-05 11:44:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (743, 'UxkB', '周金鑫', '00000000', 1, '2022-01-08 22:16:11', '15990142323', '莱芜', 3, 1, '2022-08-19 00:49:50',
        '2022-12-26 16:46:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (744, 'Mo', '郑瑞霖', '00000000', 1, '2022-09-14 12:28:11', '15934102812', '天津', 3, 1, '2022-01-11 17:09:11',
        '2022-01-24 21:17:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (745, '4lm72', '郭君浩', '00000000', 1, '2022-11-12 17:58:36', '18439959359', '昆山', 3, 1, '2022-02-06 17:23:19',
        '2022-09-08 08:26:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (746, 'TZ', '毛熠彤', '00000000', 1, '2022-08-21 22:05:23', '17690671020', '文登', 3, 1, '2022-01-10 18:06:32',
        '2022-09-03 15:26:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (747, 'XBr', '曾正豪', '00000000', 1, '2022-10-08 21:05:29', '15210184258', '宜昌', 3, 1, '2022-12-24 22:31:19',
        '2022-11-12 18:50:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (748, 'gTGT', '邵越彬', '00000000', 1, '2022-04-12 03:24:27', '14540918356', '淄博', 3, 1, '2022-07-28 16:19:34',
        '2022-02-18 16:25:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (749, 'B6', '彭致远', '00000000', 1, '2022-07-08 08:29:55', '18824882198', '义乌', 3, 1, '2022-10-02 04:29:57',
        '2022-10-02 04:06:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (750, 'duZ6V', '周雪松', '00000000', 1, '2022-12-09 18:06:14', '15971707885', '葫芦岛', 3, 1, '2022-07-13 20:07:17',
        '2022-04-04 04:38:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (751, '7YwxB', '薛熠彤', '00000000', 1, '2022-11-09 09:55:15', '17133640543', '茂名', 3, 1, '2022-07-23 06:25:41',
        '2022-10-22 18:19:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (752, 'W3', '胡弘文', '00000000', 1, '2022-09-18 00:48:22', '15215012438', '乳山', 3, 1, '2022-03-22 06:59:31',
        '2022-03-15 19:57:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (753, 'uZmf', '廖峻熙', '00000000', 1, '2022-03-24 06:22:19', '17696369028', '德州', 3, 1, '2022-01-10 13:27:47',
        '2022-12-30 06:01:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (754, 'RTN5', '黄晋鹏', '00000000', 1, '2022-04-14 12:59:54', '17131807132', '武汉', 3, 1, '2022-02-28 04:08:47',
        '2022-10-02 09:33:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (755, 'WOk', '石弘文', '00000000', 1, '2022-11-09 15:47:53', '15622201175', '阳江', 3, 1, '2022-01-27 20:13:44',
        '2022-11-17 10:07:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (756, 'Fi2c', '黄建辉', '00000000', 1, '2022-12-16 00:30:50', '15505104357', '株洲', 3, 1, '2022-02-18 04:07:56',
        '2022-09-04 13:36:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (757, 'd1tfi', '邓伟泽', '00000000', 1, '2022-02-04 08:13:04', '15279606940', '芜湖', 3, 1, '2022-04-09 14:59:41',
        '2022-03-28 04:59:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (758, '9m', '林昊强', '00000000', 1, '2022-01-10 23:40:24', '15960481037', '阳江', 3, 1, '2022-08-19 03:51:43',
        '2022-01-07 01:01:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (759, 'x5W', '卢烨霖', '00000000', 1, '2022-08-03 06:55:53', '15549384997', '东营', 3, 1, '2022-08-11 17:22:36',
        '2022-03-10 00:24:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (760, 'RqS', '傅鹏涛', '00000000', 1, '2022-12-17 22:03:50', '17073306538', '杭州', 3, 1, '2022-06-27 21:11:40',
        '2022-03-08 09:38:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (761, 'QC', '谢修洁', '00000000', 1, '2022-05-05 06:20:02', '17050588597', '沈阳', 3, 1, '2022-05-25 07:12:47',
        '2022-04-16 00:36:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (762, 'zQWJK', '黄鹏煊', '00000000', 1, '2022-05-23 15:22:56', '13154813529', '曲靖', 3, 1, '2022-01-28 22:15:20',
        '2022-07-23 19:24:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (763, 'b3DT', '梁昊天', '00000000', 1, '2022-09-22 21:43:18', '15807884164', '石家庄', 3, 1, '2022-10-13 11:09:56',
        '2022-06-21 19:50:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (764, 'dZ6', '李思远', '00000000', 1, '2022-08-19 23:05:39', '15137756837', '克拉玛依', 3, 1, '2022-10-18 21:21:16',
        '2022-09-22 17:05:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (765, 'U4WD', '唐绍辉', '00000000', 1, '2022-12-11 09:49:54', '17539018774', '泰州', 3, 1, '2022-02-25 23:08:21',
        '2022-01-24 19:38:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (766, 'ZXL', '韦琪', '00000000', 1, '2022-01-28 00:50:37', '17211380058', '吴江', 3, 1, '2022-04-29 21:05:35',
        '2022-03-13 06:46:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (767, 'bIB8A', '严金鑫', '00000000', 1, '2022-09-29 16:07:31', '15031786011', '柳州', 3, 1, '2022-09-10 19:15:35',
        '2022-04-19 13:56:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (768, 'PZ', '熊黎昕', '00000000', 1, '2022-07-26 21:25:37', '17021862497', '义乌', 3, 1, '2022-09-21 23:00:28',
        '2022-09-20 14:53:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (769, 'Tfz8', '贺胤祥', '00000000', 1, '2022-03-19 15:17:22', '15919755372', '宿迁', 3, 1, '2022-05-18 12:45:55',
        '2022-06-27 02:23:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (770, 'qlw', '董烨伟', '00000000', 1, '2022-07-31 13:44:20', '17627015470', '湛江', 3, 1, '2022-05-06 02:00:57',
        '2022-04-18 07:31:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (771, '3W9', '陶子轩', '00000000', 1, '2022-11-05 11:31:46', '17114434966', '银川', 3, 1, '2022-03-23 10:43:00',
        '2022-04-23 03:21:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (772, '69l', '白炫明', '00000000', 1, '2022-06-04 14:24:18', '15585017430', '咸阳', 3, 1, '2022-04-02 01:36:49',
        '2022-11-02 06:52:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (773, 'EwB', '冯鹏涛', '00000000', 1, '2022-09-22 14:03:58', '17660431543', '寿光', 3, 1, '2022-08-29 20:23:02',
        '2022-12-22 01:53:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (774, 'xUV5f', '熊黎昕', '00000000', 1, '2022-09-03 07:59:02', '17162919687', '招远', 3, 1, '2022-12-05 03:22:56',
        '2022-09-26 17:49:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (775, '9AHi', '夏鸿煊', '00000000', 1, '2022-05-04 05:13:16', '14781556173', '舟山', 3, 1, '2022-08-08 23:32:30',
        '2022-12-02 21:12:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (776, 'nNIU', '贺明', '00000000', 1, '2022-09-11 10:02:01', '15933192876', '东营', 3, 1, '2022-10-13 14:19:06',
        '2022-03-29 07:25:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (777, 'obj', '龚哲瀚', '00000000', 1, '2022-04-02 10:18:07', '15209644952', '东营', 3, 1, '2022-05-28 15:27:04',
        '2022-10-23 21:52:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (778, 'ISsy', '吴立果', '00000000', 1, '2022-10-27 04:34:55', '15897982290', '梅州', 3, 1, '2022-10-30 14:12:16',
        '2022-06-26 15:59:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (779, '9V', '袁文', '00000000', 1, '2022-09-09 19:31:02', '17688479232', '玉溪', 3, 1, '2022-08-27 21:02:39',
        '2022-09-09 12:26:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (780, 'Kn', '邓鸿煊', '00000000', 1, '2022-10-27 00:04:55', '15194756809', '自贡', 3, 1, '2022-06-05 20:36:19',
        '2022-09-11 21:16:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (781, 'Rky', '石浩', '00000000', 1, '2022-10-16 08:20:37', '17884906359', '汕尾', 3, 1, '2022-04-10 03:07:04',
        '2022-01-12 16:38:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (782, 'i6kQc', '汪弘文', '00000000', 1, '2022-06-03 06:15:34', '13420603136', '肇庆', 3, 1, '2022-10-06 01:04:13',
        '2022-04-28 06:07:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (783, '5QB5d', '戴擎苍', '00000000', 1, '2022-03-31 08:19:01', '15200601673', '泰安', 3, 1, '2022-03-27 02:00:06',
        '2022-08-19 21:43:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (784, 'GQ8', '谭文', '00000000', 1, '2022-03-10 08:33:40', '17628349247', '寿光', 3, 1, '2022-01-15 00:26:09',
        '2022-01-19 08:49:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (785, 'bV', '傅志泽', '00000000', 1, '2022-11-19 19:20:55', '15637724301', '北京', 3, 1, '2022-11-17 13:00:54',
        '2022-07-27 16:02:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (786, 'cTQ', '江思', '00000000', 1, '2022-01-10 03:09:13', '14506748801', '汕尾', 3, 1, '2022-01-20 17:34:15',
        '2022-10-27 22:03:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (787, 'z6m', '段博超', '00000000', 1, '2022-12-28 16:32:23', '15611627613', '天津', 3, 1, '2022-04-27 17:14:07',
        '2022-06-10 11:28:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (788, '9IF', '雷烨磊', '00000000', 1, '2022-12-12 14:41:21', '15654065020', '大同', 3, 1, '2022-03-04 00:24:15',
        '2022-03-02 07:32:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (789, 'MMY9L', '龚志泽', '00000000', 1, '2022-12-02 09:01:47', '17335995264', '湘潭', 3, 1, '2022-12-31 03:17:12',
        '2022-01-15 14:58:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (790, '5lTk', '叶建辉', '00000000', 1, '2022-10-31 10:53:35', '14780759860', '芜湖', 3, 1, '2022-08-16 17:56:53',
        '2022-12-29 15:22:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (791, 'U0xMf', '任修杰', '00000000', 1, '2022-01-20 16:44:34', '15518792157', '绵阳', 3, 1, '2022-12-17 20:01:09',
        '2022-03-17 13:19:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (792, '5T', '程笑愚', '00000000', 1, '2022-08-03 23:43:40', '15830101014', '南宁', 3, 1, '2022-05-16 17:46:50',
        '2022-05-23 07:49:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (793, 'ja', '戴浩然', '00000000', 1, '2022-05-15 08:28:14', '14774213600', '安阳', 3, 1, '2022-08-20 06:40:01',
        '2022-10-18 22:31:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (794, 'Npnr', '莫睿渊', '00000000', 1, '2022-05-15 16:17:33', '15690668854', '聊城', 3, 1, '2022-04-15 06:51:38',
        '2022-03-09 10:01:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (795, '14', '苏靖琪', '00000000', 1, '2022-08-20 13:53:13', '18122413283', '荣成', 3, 1, '2022-08-20 04:46:57',
        '2022-12-21 06:34:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (796, '6eQC', '夏鹤轩', '00000000', 1, '2022-06-15 05:36:24', '17100512423', '吴江', 3, 1, '2022-09-09 11:27:12',
        '2022-07-21 16:59:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (797, 'D0l', '傅浩宇', '00000000', 1, '2022-08-10 00:12:41', '17831180790', '茂名', 3, 1, '2022-11-19 05:33:49',
        '2022-07-03 16:44:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (798, 'J1J', '陆致远', '00000000', 1, '2022-01-08 12:31:59', '17725670601', '芜湖', 3, 1, '2022-05-27 11:09:24',
        '2022-05-22 12:06:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (799, 'Ojf1L', '龚乐驹', '00000000', 1, '2022-03-21 22:59:39', '15220846263', '安阳', 3, 1, '2022-02-10 16:52:34',
        '2022-05-01 12:58:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (800, '23ObL', '武越彬', '00000000', 1, '2022-07-14 00:36:24', '17645313260', '延安', 3, 1, '2022-07-06 01:09:28',
        '2022-06-08 23:15:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (801, 'qdE', '沈思源', '00000000', 1, '2022-02-26 10:26:37', '15016174561', '滨州', 3, 1, '2022-08-12 15:21:07',
        '2022-04-07 02:44:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (802, 'Lp', '余鑫磊', '00000000', 1, '2022-11-01 02:57:26', '17504382601', '福州', 3, 1, '2022-03-23 16:20:06',
        '2022-01-14 00:51:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (803, 'WLE', '韦浩然', '00000000', 1, '2022-07-18 04:50:08', '15769954995', '洛阳', 3, 1, '2022-03-11 14:26:22',
        '2022-05-07 01:10:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (804, 'rGG', '邹立辉', '00000000', 1, '2022-08-19 02:42:37', '17316634248', '阳江', 3, 1, '2022-08-11 06:39:53',
        '2022-10-29 21:03:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (805, 'xTP', '梁黎昕', '00000000', 1, '2022-03-07 20:33:57', '17365286711', '南宁', 3, 1, '2022-08-28 13:34:28',
        '2022-08-10 12:16:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (806, 'MPe', '金烨伟', '00000000', 1, '2022-07-13 17:06:31', '15373484009', '金昌', 3, 1, '2022-03-20 02:59:23',
        '2022-12-15 16:58:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (807, 'BR', '许擎苍', '00000000', 1, '2022-12-01 03:37:04', '17213481885', '安阳', 3, 1, '2022-03-16 01:57:17',
        '2022-12-11 20:32:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (808, 'UtCyQ', '崔泽洋', '00000000', 1, '2022-01-18 16:30:31', '15850164258', '清远', 3, 1, '2022-06-13 07:27:51',
        '2022-04-25 03:00:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (809, '07QDI', '薛哲瀚', '00000000', 1, '2022-12-02 06:39:28', '15551632182', '即墨', 3, 1, '2022-11-22 19:18:29',
        '2022-01-08 08:49:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (810, 'Z8Cq', '莫致远', '00000000', 1, '2022-09-04 18:31:07', '17503275842', '大同', 3, 1, '2022-05-13 21:32:22',
        '2022-03-22 00:37:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (811, 'DPxQP', '梁金鑫', '00000000', 1, '2022-08-05 23:31:47', '14515031223', '大庆', 3, 1, '2022-12-11 08:49:01',
        '2022-08-03 00:26:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (812, '2sM93', '姜智宸', '00000000', 1, '2022-01-08 19:32:40', '15646284474', '库尔勒', 3, 1, '2022-02-13 13:14:46',
        '2022-05-16 13:35:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (813, '0c', '袁熠彤', '00000000', 1, '2022-12-16 08:11:37', '17165423098', '拉萨', 3, 1, '2022-12-13 15:00:09',
        '2022-04-04 20:34:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (814, 'vP4', '钟雨泽', '00000000', 1, '2022-11-17 12:21:56', '14507068314', '呼和浩特', 3, 1, '2022-07-17 12:00:51',
        '2022-01-19 01:48:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (815, 'pn', '林远航', '00000000', 1, '2022-09-16 18:38:41', '17219836992', '珠海', 3, 1, '2022-08-11 20:56:15',
        '2022-11-17 03:05:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (816, 'cR0', '孟明杰', '00000000', 1, '2022-11-27 23:34:58', '14795984222', '云浮', 3, 1, '2022-11-22 06:01:01',
        '2022-08-17 18:06:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (817, '3tE', '贾天磊', '00000000', 1, '2022-11-16 13:42:21', '17735704095', '鞍山', 3, 1, '2022-06-06 21:26:09',
        '2022-08-17 03:51:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (818, 'dp8', '邵煜祺', '00000000', 1, '2022-04-25 05:45:48', '15730151478', '保定', 3, 1, '2022-06-21 19:30:52',
        '2022-12-05 17:11:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (819, 'mj3', '崔烨伟', '00000000', 1, '2022-05-23 07:18:45', '17202995215', '胶南', 3, 1, '2022-07-01 09:00:15',
        '2022-09-09 15:00:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (820, 'vR4', '洪雨泽', '00000000', 1, '2022-01-18 14:57:16', '17020909302', '承德', 3, 1, '2022-06-21 08:40:38',
        '2022-05-30 03:13:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (821, 'OA7', '郝智辉', '00000000', 1, '2022-06-15 03:59:33', '15620511963', '韶关', 3, 1, '2022-04-29 16:29:22',
        '2022-12-27 01:57:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (822, '0CurW', '万立轩', '00000000', 1, '2022-10-01 11:17:46', '17842669576', '葫芦岛', 3, 1, '2022-02-10 05:32:17',
        '2022-07-28 07:34:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (823, 'jd', '冯弘文', '00000000', 1, '2022-12-11 16:22:10', '17543757681', '揭阳', 3, 1, '2022-05-10 04:12:53',
        '2022-05-20 21:07:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (824, 'IdpNY', '毛子轩', '00000000', 1, '2022-03-29 10:57:36', '14579536152', '韶关', 3, 1, '2022-09-21 06:26:38',
        '2022-04-09 14:20:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (825, 'Vn', '万泽洋', '00000000', 1, '2022-12-21 09:40:15', '14779070917', '济宁', 3, 1, '2022-04-06 22:23:26',
        '2022-07-02 03:56:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (826, 'mpc', '郑正豪', '00000000', 1, '2022-10-06 07:24:11', '17572308442', '营口', 3, 1, '2022-02-12 04:32:56',
        '2022-05-05 16:29:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (827, 'w7', '罗风华', '00000000', 1, '2022-02-16 06:17:41', '15053436307', '遵义', 3, 1, '2022-11-04 07:17:37',
        '2022-11-17 22:02:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (828, 'R2', '高瑾瑜', '00000000', 1, '2022-01-30 05:10:34', '15244038519', '太原', 3, 1, '2022-03-16 22:34:17',
        '2022-12-15 21:19:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (829, '0Ho', '崔鑫磊', '00000000', 1, '2022-03-01 23:35:51', '17857021044', '蓬莱', 3, 1, '2022-03-24 14:34:49',
        '2022-10-08 18:16:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (830, '78', '程博涛', '00000000', 1, '2022-05-15 18:47:22', '15517017176', '太仓', 3, 1, '2022-08-04 02:24:45',
        '2022-05-04 07:55:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (831, 'up', '苏博涛', '00000000', 1, '2022-08-27 03:03:34', '17568702488', '金华', 3, 1, '2022-09-28 21:17:16',
        '2022-12-06 23:08:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (832, '9woE', '吕梓晨', '00000000', 1, '2022-11-26 11:23:23', '15600137241', '无锡', 3, 1, '2022-12-24 16:59:30',
        '2022-08-19 23:12:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (833, 'Ds5tP', '黎伟诚', '00000000', 1, '2022-05-16 22:58:54', '17542019395', '哈尔滨', 3, 1, '2022-01-09 06:27:36',
        '2022-01-23 20:55:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (834, 'KlkZn', '萧鹏煊', '00000000', 1, '2022-02-18 20:29:24', '15562970116', '安阳', 3, 1, '2022-10-28 12:53:15',
        '2022-04-05 17:48:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (835, 'UwoXc', '沈绍齐', '00000000', 1, '2022-02-06 01:43:42', '15061781849', '青岛', 3, 1, '2022-06-05 15:14:27',
        '2022-05-30 04:28:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (836, 'vK', '顾思远', '00000000', 1, '2022-04-11 20:18:16', '17275286454', '宜昌', 3, 1, '2022-12-12 05:00:50',
        '2022-10-09 04:43:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (837, 'vr', '杨雨泽', '00000000', 1, '2022-10-07 13:38:53', '15950646763', '金坛', 3, 1, '2022-12-17 04:07:38',
        '2022-08-07 20:43:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (838, 'tx', '黎锦程', '00000000', 1, '2022-04-13 20:03:42', '15260443424', '长春', 3, 1, '2022-04-12 22:55:33',
        '2022-10-03 03:19:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (839, 'KRYp', '吴聪健', '00000000', 1, '2022-06-19 17:05:00', '15660332301', '牡丹江', 3, 1, '2022-08-21 19:40:12',
        '2022-10-01 03:48:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (840, '0oXr', '周烨伟', '00000000', 1, '2022-09-09 03:43:40', '17365044113', '瓦房店', 3, 1, '2022-08-07 14:00:36',
        '2022-02-02 06:44:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (841, 'yYR', '魏浩宇', '00000000', 1, '2022-03-16 04:03:28', '15511208557', '无锡', 3, 1, '2022-11-04 04:14:39',
        '2022-01-21 16:11:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (842, 'iXZP0', '侯靖琪', '00000000', 1, '2022-12-16 21:14:02', '17704038982', '马鞍山', 3, 1, '2022-04-29 19:28:23',
        '2022-12-20 18:24:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (843, 'gGL', '邱梓晨', '00000000', 1, '2022-06-12 18:42:04', '15877957841', '宝鸡', 3, 1, '2022-09-14 04:47:58',
        '2022-04-26 19:31:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (844, 't54', '毛远航', '00000000', 1, '2022-07-16 06:33:07', '15821127767', '福州', 3, 1, '2022-09-17 10:46:32',
        '2022-10-28 04:26:54');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (845, 'iz9', '覃修杰', '00000000', 1, '2022-09-21 09:22:34', '17032281188', '呼和浩特', 3, 1, '2022-12-29 10:35:58',
        '2022-07-29 16:06:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (846, 'KGJL', '邱立诚', '00000000', 1, '2022-10-23 06:45:49', '15020630032', '绍兴', 3, 1, '2022-10-25 22:25:42',
        '2022-03-31 15:35:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (847, '7dpWR', '魏思', '00000000', 1, '2022-02-02 07:03:37', '17302196594', '焦作', 3, 1, '2022-10-01 20:58:12',
        '2022-12-27 05:59:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (848, 'F4', '崔伟诚', '00000000', 1, '2022-01-19 08:50:50', '15109288483', '胶南', 3, 1, '2022-01-01 17:23:12',
        '2022-02-17 20:18:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (849, '6SZsm', '马雨泽', '00000000', 1, '2022-07-23 06:32:16', '17042829355', '太仓', 3, 1, '2022-04-15 21:22:29',
        '2022-07-30 08:12:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (850, 'Urw', '姜睿渊', '00000000', 1, '2022-07-17 22:59:14', '17738427201', '泸州', 3, 1, '2022-09-05 16:26:40',
        '2022-06-16 16:17:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (851, 'H5', '董伟宸', '00000000', 1, '2022-08-11 07:25:08', '17826941607', '宝鸡', 3, 1, '2022-10-10 11:41:18',
        '2022-06-01 11:04:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (852, 'Nca', '吴健雄', '00000000', 1, '2022-05-05 02:06:31', '17196940011', '太仓', 3, 1, '2022-08-29 08:00:04',
        '2022-01-11 06:05:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (853, 'oKK', '郑子涵', '00000000', 1, '2022-03-08 06:06:16', '18249946209', '文登', 3, 1, '2022-06-21 04:31:37',
        '2022-06-28 16:06:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (854, 'Tlcm2', '郭鹏飞', '00000000', 1, '2022-05-24 05:11:55', '14767716484', '本溪', 3, 1, '2022-08-15 20:28:05',
        '2022-09-04 22:01:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (855, 'rlNpd', '任嘉懿', '00000000', 1, '2022-06-28 22:49:54', '15998498390', '潍坊', 3, 1, '2022-06-04 00:23:08',
        '2022-09-20 04:50:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (856, 'Gp', '姚明辉', '00000000', 1, '2022-08-15 04:10:05', '15339810069', '烟台', 3, 1, '2022-03-01 05:38:05',
        '2022-11-03 01:12:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (857, 'pVx', '阎熠彤', '00000000', 1, '2022-12-14 16:11:46', '17318253248', '临安', 3, 1, '2022-02-24 06:39:17',
        '2022-06-30 18:51:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (858, 'YZ', '赵志强', '00000000', 1, '2022-12-16 23:51:16', '14554210902', '胶南', 3, 1, '2022-06-14 04:56:50',
        '2022-10-04 14:54:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (859, 'tiAuO', '顾弘文', '00000000', 1, '2022-11-16 09:59:50', '18491338345', '唐山', 3, 1, '2022-09-22 08:35:54',
        '2022-07-14 13:15:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (860, '40i', '毛立诚', '00000000', 1, '2022-06-01 09:28:14', '15661936920', '本溪', 3, 1, '2022-12-10 10:44:31',
        '2022-03-26 10:29:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (861, 'GbUs', '郝睿渊', '00000000', 1, '2022-11-02 06:31:50', '15001765775', '营口', 3, 1, '2022-07-09 21:12:56',
        '2022-11-08 10:04:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (862, 'L3q', '万修杰', '00000000', 1, '2022-07-05 06:30:27', '15628816431', '德阳', 3, 1, '2022-02-26 06:06:53',
        '2022-03-03 00:02:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (863, 'Zp41', '秦立辉', '00000000', 1, '2022-06-21 05:49:12', '15902579027', '吴江', 3, 1, '2022-03-31 00:05:19',
        '2022-01-09 10:23:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (864, 'xOK', '贾志泽', '00000000', 1, '2022-09-20 02:19:28', '15398748864', '鞍山', 3, 1, '2022-01-26 15:51:58',
        '2022-09-16 05:55:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (865, 'agRLE', '杜航', '00000000', 1, '2022-12-11 20:12:04', '13887822424', '北海', 3, 1, '2022-02-17 22:09:00',
        '2022-09-30 12:14:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (866, 'VmXzG', '杜俊驰', '00000000', 1, '2022-10-26 04:21:14', '15953116026', '呼和浩特', 3, 1, '2022-04-13 19:00:53',
        '2022-01-26 12:35:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (867, '8N6f', '刘泽洋', '00000000', 1, '2022-12-26 22:15:35', '15587092578', '宜宾', 3, 1, '2022-06-16 11:52:31',
        '2022-09-25 20:02:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (868, 'wULt', '熊鸿煊', '00000000', 1, '2022-09-08 04:32:18', '17799865442', '台州', 3, 1, '2022-12-17 13:33:55',
        '2022-10-09 18:46:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (869, 'PGYW', '段昊天', '00000000', 1, '2022-03-01 01:54:35', '17192211209', '攀枝花', 3, 1, '2022-09-01 20:33:23',
        '2022-09-12 13:47:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (870, 'ldKnX', '钟思远', '00000000', 1, '2022-08-09 08:20:06', '15373871428', '南昌', 3, 1, '2022-01-26 11:29:53',
        '2022-06-29 13:25:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (871, '1bu', '曾博涛', '00000000', 1, '2022-05-02 07:06:37', '15145563459', '玉溪', 3, 1, '2022-11-01 06:09:44',
        '2022-01-05 14:14:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (872, 'r0er', '严明杰', '00000000', 1, '2022-11-09 06:50:00', '15778527722', '唐山', 3, 1, '2022-12-27 01:14:36',
        '2022-07-27 11:09:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (873, '9mo', '蔡浩然', '00000000', 1, '2022-10-22 20:36:18', '15768533181', '秦皇岛', 3, 1, '2022-11-29 14:40:55',
        '2022-08-16 05:30:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (874, 'M0PQ', '萧昊然', '00000000', 1, '2022-05-12 13:48:10', '17566745252', '珠海', 3, 1, '2022-10-06 05:39:52',
        '2022-06-10 09:09:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (875, 'qpb8j', '姚立轩', '00000000', 1, '2022-10-15 11:32:44', '15977631558', '广州', 3, 1, '2022-07-30 08:50:38',
        '2022-03-11 04:39:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (876, '9q', '郭明辉', '00000000', 1, '2022-01-03 19:24:16', '15637526772', '遵义', 3, 1, '2022-01-17 10:35:40',
        '2022-10-25 13:39:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (877, 'f0cWY', '邹鸿煊', '00000000', 1, '2022-04-23 02:39:27', '15025604891', '安阳', 3, 1, '2022-08-09 08:39:47',
        '2022-09-29 11:17:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (878, 'l9', '黎炫明', '00000000', 1, '2022-09-24 22:07:12', '15124552465', '长春', 3, 1, '2022-11-05 18:34:16',
        '2022-11-19 02:13:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (879, '7J30g', '胡思', '00000000', 1, '2022-12-23 19:33:59', '15367033005', '瓦房店', 3, 1, '2022-10-08 06:56:09',
        '2022-11-27 15:10:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (880, 'ecUrX', '曾弘文', '00000000', 1, '2022-10-21 01:27:43', '17840912003', '泰州', 3, 1, '2022-05-03 12:58:09',
        '2022-11-05 05:27:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (881, 'vwMxN', '许瑾瑜', '00000000', 1, '2022-02-07 14:51:48', '17142952028', '菏泽', 3, 1, '2022-07-14 19:03:05',
        '2022-07-17 12:08:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (882, 'FF7', '许琪', '00000000', 1, '2022-07-14 15:58:35', '17043900207', '即墨', 3, 1, '2022-10-10 15:40:20',
        '2022-02-06 23:23:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (883, 'nz3R2', '潘熠彤', '00000000', 1, '2022-04-11 05:17:23', '15000411817', '昆山', 3, 1, '2022-10-10 02:30:59',
        '2022-03-29 18:20:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (884, 'zmtld', '雷天翊', '00000000', 1, '2022-04-13 20:33:50', '15797929417', '长沙', 3, 1, '2022-05-16 10:11:09',
        '2022-01-19 10:12:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (885, 'Df', '邱思淼', '00000000', 1, '2022-05-29 03:40:12', '15862991028', '咸阳', 3, 1, '2022-08-04 05:16:52',
        '2022-08-18 18:22:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (886, '50', '杨志泽', '00000000', 1, '2022-07-22 04:36:22', '17307753440', '东莞', 3, 1, '2022-06-09 03:07:46',
        '2022-11-05 15:59:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (887, 'DLC', '贺金鑫', '00000000', 1, '2022-10-27 22:31:28', '15533130013', '福州', 3, 1, '2022-04-16 10:42:43',
        '2022-06-06 17:51:07');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (888, 'p4', '石煜祺', '00000000', 1, '2022-10-03 05:04:25', '17723831590', '东莞', 3, 1, '2022-05-10 13:43:44',
        '2022-12-26 04:58:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (889, 'LFwm', '赵楷瑞', '00000000', 1, '2022-12-30 19:47:28', '15001137422', '丽水', 3, 1, '2022-01-15 03:32:53',
        '2022-08-18 06:12:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (890, 'E6', '黄旭尧', '00000000', 1, '2022-09-05 15:21:55', '17656658900', '金华', 3, 1, '2022-06-20 23:47:06',
        '2022-01-30 01:13:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (891, 'uM8t', '曹煜城', '00000000', 1, '2022-12-21 07:31:47', '17785090879', '潮州', 3, 1, '2022-01-12 08:55:50',
        '2022-08-31 04:51:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (892, 'g1uE', '白伟祺', '00000000', 1, '2022-06-08 20:29:43', '17279220738', '临沂', 3, 1, '2022-05-09 23:09:10',
        '2022-01-06 15:06:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (893, 'U5Vmq', '郑黎昕', '00000000', 1, '2022-12-21 12:39:22', '15992520914', '胶州', 3, 1, '2022-06-10 17:32:00',
        '2022-05-17 15:54:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (894, '8lw', '高擎苍', '00000000', 1, '2022-01-25 14:08:17', '17004590628', '张家港', 3, 1, '2022-01-04 18:26:00',
        '2022-06-13 21:05:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (895, 'BlQW', '冯立轩', '00000000', 1, '2022-02-04 22:20:02', '17831254154', '东营', 3, 1, '2022-03-12 04:41:38',
        '2022-02-16 19:47:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (896, 'FsP', '方修杰', '00000000', 1, '2022-01-03 02:44:25', '17623607206', '岳阳', 3, 1, '2022-09-14 03:41:49',
        '2022-02-21 20:02:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (897, 'Zd5', '韦智辉', '00000000', 1, '2022-06-19 21:20:25', '17589755743', '包头', 3, 1, '2022-12-05 09:48:26',
        '2022-07-30 06:17:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (898, 'qn', '钟越彬', '00000000', 1, '2022-03-19 03:47:10', '17792406567', '常州', 3, 1, '2022-07-31 01:48:31',
        '2022-07-09 03:38:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (899, 'c5', '龙博超', '00000000', 1, '2022-08-12 21:40:43', '15520669872', '富阳', 3, 1, '2022-06-01 04:17:06',
        '2022-01-21 02:53:03');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (900, 'sKlTF', '陈彬', '00000000', 1, '2022-03-18 08:03:49', '15658383801', '泰安', 3, 1, '2022-08-01 18:25:29',
        '2022-03-07 21:58:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (901, 'zM44', '江皓轩', '00000000', 1, '2022-04-13 03:36:35', '17856833537', '兰州', 3, 1, '2022-06-24 00:50:51',
        '2022-06-05 13:23:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (902, '6g', '叶鑫鹏', '00000000', 1, '2022-09-02 13:40:15', '15279005616', '江阴', 3, 1, '2022-12-29 23:28:58',
        '2022-05-08 18:43:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (903, 'Qxc7a', '许雨泽', '00000000', 1, '2022-04-30 15:10:21', '17569162517', '宜宾', 3, 1, '2022-07-07 19:28:55',
        '2022-02-05 01:16:51');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (904, 'NhsEc', '阎远航', '00000000', 1, '2022-01-06 06:41:35', '15086702785', '邢台', 3, 1, '2022-08-31 21:31:26',
        '2022-04-26 21:23:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (905, 'zqc', '吕嘉懿', '00000000', 1, '2022-09-22 04:23:48', '17135791661', '海口', 3, 1, '2022-07-18 18:29:59',
        '2022-09-24 08:14:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (906, 'mbWZ', '彭晓啸', '00000000', 1, '2022-06-09 16:45:14', '15097844262', '承德', 3, 1, '2022-09-21 04:05:49',
        '2022-04-28 14:35:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (907, 'Tj97', '陶懿轩', '00000000', 1, '2022-02-18 00:59:07', '15681446304', '邢台', 3, 1, '2022-06-28 03:39:16',
        '2022-11-26 23:59:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (908, 'NQS3', '杨越彬', '00000000', 1, '2022-04-17 00:39:51', '17217454039', '台州', 3, 1, '2022-01-10 17:54:35',
        '2022-12-03 07:56:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (909, 'VxC46', '李烨霖', '00000000', 1, '2022-03-17 17:15:57', '17004600576', '蓬莱', 3, 1, '2022-09-10 04:37:54',
        '2022-05-12 17:06:05');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (910, 'YLSI', '姜思远', '00000000', 1, '2022-10-01 13:56:57', '17351687975', '邯郸', 3, 1, '2022-05-04 22:41:28',
        '2022-06-20 11:59:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (911, 'kx1', '余楷瑞', '00000000', 1, '2022-10-09 20:11:57', '17653440805', '保定', 3, 1, '2022-02-15 03:27:06',
        '2022-05-09 23:56:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (912, 'bztKw', '韦雪松', '00000000', 1, '2022-06-21 01:08:41', '18100047370', '金华', 3, 1, '2022-01-16 02:59:14',
        '2022-08-28 01:13:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (913, '7E', '钟烨霖', '00000000', 1, '2022-01-09 17:02:22', '15218977942', '石嘴山', 3, 1, '2022-04-02 08:30:06',
        '2022-11-15 18:59:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (914, 'CcRr', '周果', '00000000', 1, '2022-10-13 13:06:59', '15015097515', '湘潭', 3, 1, '2022-08-09 11:06:40',
        '2022-02-25 13:44:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (915, 'LocW', '江锦程', '00000000', 1, '2022-03-20 09:11:53', '15110904632', '锦州', 3, 1, '2022-11-17 17:53:53',
        '2022-09-18 05:14:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (916, 'scMh', '廖伟泽', '00000000', 1, '2022-05-16 22:32:26', '17579593589', '河源', 3, 1, '2022-11-03 00:53:41',
        '2022-01-12 17:41:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (917, 'Ubeu', '贾航', '00000000', 1, '2022-11-18 18:01:25', '15114539275', '邯郸', 3, 1, '2022-01-24 09:35:13',
        '2022-05-18 17:33:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (918, 'zaF', '崔煜祺', '00000000', 1, '2022-08-04 16:50:34', '17016815671', '锦州', 3, 1, '2022-04-02 23:31:15',
        '2022-10-08 15:57:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (919, 'KXlih', '金凯瑞', '00000000', 1, '2022-10-08 12:45:13', '18986136638', '衡水', 3, 1, '2022-12-28 16:50:54',
        '2022-08-18 01:19:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (920, 'meHFM', '覃嘉懿', '00000000', 1, '2022-10-04 08:01:13', '15896606784', '金坛', 3, 1, '2022-05-02 09:46:59',
        '2022-06-06 16:10:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (921, '0h', '龙靖琪', '00000000', 1, '2022-01-07 15:12:15', '17584696786', '揭阳', 3, 1, '2022-11-16 12:19:30',
        '2022-04-06 09:37:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (922, '3TO', '金风华', '00000000', 1, '2022-09-05 02:53:33', '15651113338', '自贡', 3, 1, '2022-01-23 01:59:23',
        '2022-06-07 07:14:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (923, 'ZO', '曹熠彤', '00000000', 1, '2022-09-23 06:53:11', '17087613102', '拉萨', 3, 1, '2022-06-11 09:15:14',
        '2022-10-02 06:38:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (924, 'gfSB', '戴子骞', '00000000', 1, '2022-09-07 09:57:39', '15351427063', '蓬莱', 3, 1, '2022-11-24 22:48:28',
        '2022-07-06 18:24:13');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (925, '7Q', '胡绍辉', '00000000', 1, '2022-10-29 13:42:14', '17362668671', '德阳', 3, 1, '2022-11-17 17:07:15',
        '2022-11-17 01:55:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (926, 'A2', '冯煜祺', '00000000', 1, '2022-11-30 15:48:54', '15105774807', '连云港', 3, 1, '2022-07-08 09:40:05',
        '2022-05-17 20:29:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (927, 'seBD', '苏黎昕', '00000000', 1, '2022-07-02 05:35:07', '15013982087', '天津', 3, 1, '2022-04-02 02:14:18',
        '2022-01-06 09:04:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (928, '2rW', '蔡睿渊', '00000000', 1, '2022-05-04 23:58:28', '17731363677', '常熟', 3, 1, '2022-08-08 03:33:54',
        '2022-07-29 05:59:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (929, 'QL9', '龙君浩', '00000000', 1, '2022-05-01 22:26:09', '17370346695', '临汾', 3, 1, '2022-09-04 12:15:00',
        '2022-08-26 15:54:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (930, '0P', '莫泽洋', '00000000', 1, '2022-07-25 17:55:49', '15677929489', '北海', 3, 1, '2022-12-27 10:36:09',
        '2022-01-27 16:13:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (931, 'vsJ', '汪昊然', '00000000', 1, '2022-08-08 08:09:51', '17574980655', '常德', 3, 1, '2022-10-12 14:15:19',
        '2022-01-11 05:24:58');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (932, 'bLuk', '武立果', '00000000', 1, '2022-06-13 08:44:20', '17222928384', '宜昌', 3, 1, '2022-03-24 04:17:39',
        '2022-07-01 10:21:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (933, 'CO', '洪苑博', '00000000', 1, '2022-02-01 06:20:48', '15662371294', '苏州', 3, 1, '2022-08-28 02:07:46',
        '2022-09-21 10:28:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (934, 'GSTH', '韩熠彤', '00000000', 1, '2022-12-04 20:04:32', '17828429188', '义乌', 3, 1, '2022-12-27 01:51:10',
        '2022-05-30 20:44:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (935, 'Ek', '白鹏涛', '00000000', 1, '2022-08-19 20:32:12', '15276936241', '九江', 3, 1, '2022-11-18 17:47:12',
        '2022-11-16 14:04:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (936, 'Z20af', '陆鹤轩', '00000000', 1, '2022-09-29 16:51:38', '17586680774', '句容', 3, 1, '2022-04-19 03:09:41',
        '2022-01-26 12:34:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (937, 'mYX', '曹楷瑞', '00000000', 1, '2022-10-06 08:04:02', '15941071915', '秦皇岛', 3, 1, '2022-04-30 02:48:01',
        '2022-07-28 09:39:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (938, 'wI', '田文博', '00000000', 1, '2022-11-26 07:17:56', '15398241377', '张家港', 3, 1, '2022-06-30 23:35:44',
        '2022-05-05 13:02:37');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (939, 'Tjzy', '胡烨伟', '00000000', 1, '2022-02-23 23:44:15', '15160827400', '哈尔滨', 3, 1, '2022-09-15 05:01:11',
        '2022-10-18 08:44:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (940, 'CAbw', '秦钰轩', '00000000', 1, '2022-11-17 17:04:54', '17125074302', '石嘴山', 3, 1, '2022-03-26 13:51:18',
        '2022-11-21 06:32:35');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (941, 'wO', '崔雨泽', '00000000', 1, '2022-11-29 22:32:40', '17172859451', '银川', 3, 1, '2022-05-21 04:04:48',
        '2022-07-02 19:55:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (942, 'UbtE', '程苑博', '00000000', 1, '2022-05-26 10:19:09', '15603939916', '宝鸡', 3, 1, '2022-08-16 11:32:21',
        '2022-09-06 23:50:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (943, 'oEBWV', '陆越彬', '00000000', 1, '2022-04-04 09:00:27', '15002084982', '泸州', 3, 1, '2022-04-02 01:33:59',
        '2022-09-21 15:23:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (944, 'RKM', '孔钰轩', '00000000', 1, '2022-09-18 08:31:39', '17859040308', '拉萨', 3, 1, '2022-01-27 08:45:35',
        '2022-12-28 22:11:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (945, '7cVA4', '叶琪', '00000000', 1, '2022-11-13 05:54:33', '15725474244', '哈尔滨', 3, 1, '2022-03-06 00:11:08',
        '2022-04-01 18:54:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (946, 'dpj', '谭昊然', '00000000', 1, '2022-05-31 17:28:53', '15884862576', '宿迁', 3, 1, '2022-11-11 16:52:29',
        '2022-10-13 07:46:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (947, 'uK1', '金伟宸', '00000000', 1, '2022-02-12 02:00:07', '15174813623', '南通', 3, 1, '2022-03-06 10:51:47',
        '2022-06-18 18:27:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (948, 'Hp', '杜博涛', '00000000', 1, '2022-12-28 17:58:27', '17875549288', '石嘴山', 3, 1, '2022-01-04 19:03:38',
        '2022-07-04 22:52:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (949, 'HV7V', '陈修杰', '00000000', 1, '2022-08-23 00:21:32', '17191440438', '西宁', 3, 1, '2022-01-03 13:15:30',
        '2022-10-05 23:53:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (950, 'q1R', '黄靖琪', '00000000', 1, '2022-02-02 22:22:26', '15581965458', '肇庆', 3, 1, '2022-05-26 19:40:03',
        '2022-12-03 05:09:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (951, 'rZ', '黄健雄', '00000000', 1, '2022-04-22 23:18:07', '17765815396', '莱芜', 3, 1, '2022-01-20 13:37:38',
        '2022-01-04 22:34:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (952, 'Ojan3', '廖志泽', '00000000', 1, '2022-11-11 19:13:58', '17160901900', '廊坊', 3, 1, '2022-04-21 16:58:04',
        '2022-10-30 05:28:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (953, 'nKh7', '唐智辉', '00000000', 1, '2022-03-16 05:14:00', '17820590382', '岳阳', 3, 1, '2022-10-22 06:25:39',
        '2022-08-06 18:51:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (954, 'MnG', '董皓轩', '00000000', 1, '2022-08-31 12:10:02', '17603345516', '赤峰', 3, 1, '2022-11-21 14:12:29',
        '2022-01-20 10:13:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (955, 'qks', '钟烨华', '00000000', 1, '2022-04-10 21:26:57', '15671982764', '常德', 3, 1, '2022-03-04 01:37:03',
        '2022-04-26 16:29:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (956, 'HUa', '雷雪松', '00000000', 1, '2022-02-26 16:58:47', '15998600040', '溧阳', 3, 1, '2022-02-22 21:32:24',
        '2022-02-09 21:51:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (957, '5cyz', '冯浩', '00000000', 1, '2022-02-01 12:46:41', '15088760923', '宜昌', 3, 1, '2022-04-27 09:27:04',
        '2022-08-26 14:36:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (958, 'CT', '贺荣轩', '00000000', 1, '2022-12-20 08:59:20', '15588303523', '沈阳', 3, 1, '2022-01-21 14:17:29',
        '2022-11-11 02:55:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (959, 'IUBxv', '梁擎苍', '00000000', 1, '2022-01-31 23:00:13', '13487260894', '清远', 3, 1, '2022-05-22 12:27:22',
        '2022-12-17 02:55:57');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (960, 'M6', '毛荣轩', '00000000', 1, '2022-04-18 14:06:31', '17244345275', '兰州', 3, 1, '2022-09-30 09:18:12',
        '2022-03-10 11:00:43');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (961, 'QI3p', '金修杰', '00000000', 1, '2022-01-17 08:00:00', '17623887890', '台州', 3, 1, '2022-06-05 04:43:01',
        '2022-07-28 18:54:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (962, 'HlL61', '罗鹏飞', '00000000', 1, '2022-05-06 00:54:48', '17012087627', '三门峡', 3, 1, '2022-02-09 05:13:35',
        '2022-03-20 11:09:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (963, 'zZZn', '顾耀杰', '00000000', 1, '2022-05-11 22:58:43', '17335812531', '金坛', 3, 1, '2022-03-09 10:48:58',
        '2022-12-18 20:26:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (964, 'Q7nsa', '覃俊驰', '00000000', 1, '2022-12-27 18:53:28', '15351340967', '南昌', 3, 1, '2022-03-08 18:35:43',
        '2022-11-24 08:06:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (965, 'GCREJ', '曹子默', '00000000', 1, '2022-07-14 19:13:27', '15279560183', '即墨', 3, 1, '2022-06-22 22:46:29',
        '2022-02-20 15:40:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (966, 'xB', '邹君浩', '00000000', 1, '2022-07-21 04:57:27', '17781630736', '西安', 3, 1, '2022-03-10 23:29:52',
        '2022-04-27 17:33:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (967, 'fPDe', '史瑞霖', '00000000', 1, '2022-01-24 21:02:38', '18236254547', '无锡', 3, 1, '2022-08-04 16:31:27',
        '2022-06-12 12:40:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (968, 'km', '唐越彬', '00000000', 1, '2022-01-04 13:35:24', '15849110460', '武汉', 3, 1, '2022-06-19 09:09:57',
        '2022-09-10 13:00:53');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (969, 'KM', '邱绍齐', '00000000', 1, '2022-09-19 03:50:02', '14577247421', '湛江', 3, 1, '2022-03-12 08:41:54',
        '2022-10-11 17:20:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (970, 'Rn', '阎熠彤', '00000000', 1, '2022-09-11 15:55:13', '15133841544', '东莞', 3, 1, '2022-01-18 23:31:27',
        '2022-08-28 15:35:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (971, 'LuN87', '孟浩宇', '00000000', 1, '2022-12-16 16:38:56', '17514321482', '开封', 3, 1, '2022-11-29 17:06:01',
        '2022-04-27 20:02:41');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (972, 'oaZm', '苏烨霖', '00000000', 1, '2022-09-03 05:06:27', '15514465147', '威海', 3, 1, '2022-07-29 00:32:23',
        '2022-01-22 22:59:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (973, 'gjM', '熊志强', '00000000', 1, '2022-12-25 07:25:41', '17736956442', '常州', 3, 1, '2022-10-12 20:02:52',
        '2022-09-12 08:32:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (974, 'zksqC', '曹立诚', '00000000', 1, '2022-01-02 00:07:38', '14734011949', '泉州', 3, 1, '2022-07-05 06:13:16',
        '2022-08-14 17:18:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (975, 'FdZ', '范胤祥', '00000000', 1, '2022-02-25 17:34:21', '17715715921', '库尔勒', 3, 1, '2022-09-15 15:43:30',
        '2022-03-08 01:50:12');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (976, 'esB4i', '黄晓博', '00000000', 1, '2022-02-05 05:12:51', '14591621868', '莱芜', 3, 1, '2022-05-08 20:40:29',
        '2022-03-09 23:51:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (977, 'e8D', '朱立果', '00000000', 1, '2022-09-02 07:40:55', '15111635007', '深圳', 3, 1, '2022-11-22 12:56:34',
        '2022-03-25 21:10:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (978, 'fdg', '余立轩', '00000000', 1, '2022-01-27 16:15:04', '14727470234', '即墨', 3, 1, '2022-01-05 03:46:15',
        '2022-06-21 22:48:06');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (979, 'CO', '龙建辉', '00000000', 1, '2022-10-30 00:23:44', '15378059678', '嘉兴', 3, 1, '2022-09-27 05:37:45',
        '2022-04-19 09:14:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (980, 'B7', '孔昊然', '00000000', 1, '2022-10-31 20:39:39', '17041725239', '广州', 3, 1, '2022-08-10 19:30:47',
        '2022-04-14 12:25:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (981, 'Ge', '朱立轩', '00000000', 1, '2022-07-14 04:16:42', '17668128793', '延安', 3, 1, '2022-10-27 21:56:19',
        '2022-05-08 23:32:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (982, 'APng', '谢昊强', '00000000', 1, '2022-04-11 11:17:15', '15296341429', '乌鲁木齐', 3, 1, '2022-01-11 10:05:55',
        '2022-10-17 08:31:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (983, 'fCaYo', '罗煜祺', '00000000', 1, '2022-03-24 11:38:44', '17627924981', '咸阳', 3, 1, '2022-12-20 01:02:59',
        '2022-12-05 19:59:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (984, 'YC4', '姚烨伟', '00000000', 1, '2022-04-29 20:29:40', '17745039473', '深圳', 3, 1, '2022-06-16 12:27:41',
        '2022-02-12 03:18:27');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (985, 'ww', '覃梓晨', '00000000', 1, '2022-10-24 16:40:02', '17329387849', '遵义', 3, 1, '2022-08-22 13:57:29',
        '2022-03-12 03:48:23');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (986, 'C1Dlp', '覃炫明', '00000000', 1, '2022-11-08 12:35:58', '17501282935', '大庆', 3, 1, '2022-11-22 22:11:58',
        '2022-01-01 00:33:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (987, 'Hkf1a', '田思', '00000000', 1, '2022-12-07 15:18:55', '17383750133', '蓬莱', 3, 1, '2022-06-25 04:09:04',
        '2022-01-11 11:31:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (988, 'wTJ', '魏展鹏', '00000000', 1, '2022-10-27 00:23:21', '18101505011', '三门峡', 3, 1, '2022-01-13 19:35:13',
        '2022-02-20 05:52:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (989, '1y4ia', '陆弘文', '00000000', 1, '2022-10-25 03:36:26', '15987728206', '葫芦岛', 3, 1, '2022-07-04 11:46:28',
        '2022-03-02 22:56:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (990, 'wlQ07', '赖梓晨', '00000000', 1, '2022-08-18 00:28:32', '18489445911', '无锡', 3, 1, '2022-05-08 00:28:55',
        '2022-03-15 00:07:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (991, '1G', '邓越泽', '00000000', 1, '2022-09-21 23:30:41', '15245660366', '常州', 3, 1, '2022-02-14 13:04:48',
        '2022-11-10 10:40:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (992, '8q30l', '赖航', '00000000', 1, '2022-01-15 20:10:47', '18935076290', '昆山', 3, 1, '2022-11-28 05:20:18',
        '2022-06-25 18:35:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (993, '53FV', '武振家', '00000000', 1, '2022-04-08 19:49:18', '13002987961', '延安', 3, 1, '2022-06-21 06:56:27',
        '2022-06-13 10:20:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (994, 'keJ', '万文博', '00000000', 1, '2022-02-03 23:27:24', '15137038259', '武汉', 3, 1, '2022-09-16 12:50:58',
        '2022-06-14 06:58:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (995, 'ANd', '梁伟宸', '00000000', 1, '2022-05-10 23:51:20', '15289371903', '滨州', 3, 1, '2022-04-19 10:48:43',
        '2022-06-29 19:42:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (996, 'IAJk', '曾懿轩', '00000000', 1, '2022-10-20 07:37:43', '15361132543', '北海', 3, 1, '2022-04-19 19:45:01',
        '2022-05-12 03:54:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (997, 'Co3', '蔡炫明', '00000000', 1, '2022-02-21 19:56:53', '17510428948', '焦作', 3, 1, '2022-10-24 06:29:10',
        '2022-04-06 07:12:33');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (998, 'tpWRS', '石子涵', '00000000', 1, '2022-07-15 07:47:07', '14566319122', '淄博', 3, 1, '2022-08-03 15:26:20',
        '2022-12-12 00:54:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (999, 'uIW', '洪晓啸', '00000000', 1, '2022-01-11 08:47:42', '15868259566', '兰州', 3, 1, '2022-08-23 15:26:05',
        '2022-02-23 11:23:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1000, 'ysIW', '龚锦程', '00000000', 1, '2022-05-07 07:23:24', '15948290881', '临安', 3, 1, '2022-07-18 11:32:19',
        '2022-08-19 11:06:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1001, 'vcC', '尹峻熙', '00000000', 1, '2022-10-23 00:43:27', '15204578679', '珠海', 3, 1, '2022-11-26 15:31:41',
        '2022-09-17 21:11:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1002, 'j9k', '贺博文', '00000000', 1, '2022-09-02 17:13:09', '14723316386', '福州', 3, 1, '2022-07-24 01:10:30',
        '2022-10-31 09:01:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1003, 'kt', '汪胤祥', '00000000', 1, '2022-01-18 02:01:43', '15797733654', '常熟', 3, 1, '2022-10-27 18:05:37',
        '2022-03-30 05:22:08');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1004, 'uvY8', '蔡黎昕', '00000000', 1, '2022-08-22 18:36:07', '15670073215', '金昌', 3, 1, '2022-02-03 04:31:48',
        '2022-06-23 14:27:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1005, '1Nm3v', '黄楷瑞', '00000000', 1, '2022-08-31 23:21:29', '14740399745', '石嘴山', 3, 1, '2022-06-05 12:29:08',
        '2022-12-21 02:32:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1006, 'pP', '武皓轩', '00000000', 1, '2022-07-22 14:37:44', '17666677739', '菏泽', 3, 1, '2022-10-16 19:58:30',
        '2022-04-28 00:41:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1007, 'Br', '谭博文', '00000000', 1, '2022-12-15 13:19:51', '15635154885', '菏泽', 3, 1, '2022-06-21 14:33:21',
        '2022-08-17 10:38:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1008, 'MMgik', '毛明', '00000000', 1, '2022-08-25 04:10:41', '17759849998', '南昌', 3, 1, '2022-04-01 07:30:12',
        '2022-02-11 12:49:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1009, 'D7o1', '覃博文', '00000000', 1, '2022-06-13 03:48:01', '15038792509', '呼和浩特', 3, 1, '2022-06-13 14:29:32',
        '2022-11-16 09:38:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1010, 'qYA9', '贾乐驹', '00000000', 1, '2022-06-23 15:36:12', '14711725877', '嘉峪关', 3, 1, '2022-01-24 18:37:33',
        '2022-12-24 02:59:22');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1011, 'tu5', '薛烨霖', '00000000', 1, '2022-09-17 09:59:58', '18673708376', '济南', 3, 1, '2022-03-09 01:25:33',
        '2022-09-18 02:16:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1012, 'Cyxl', '杨楷瑞', '00000000', 1, '2022-09-10 16:53:58', '15502413561', '宜昌', 3, 1, '2022-07-02 18:28:11',
        '2022-03-19 21:08:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1013, 't9', '白烨霖', '00000000', 1, '2022-11-20 14:58:24', '17370130187', '诸暨', 3, 1, '2022-04-12 18:05:55',
        '2022-10-20 13:44:32');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1014, 'nWau', '邱伟宸', '00000000', 1, '2022-05-12 10:55:02', '17020815733', '鞍山', 3, 1, '2022-07-10 14:35:35',
        '2022-09-22 00:43:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1015, 'yhJZ', '任思远', '00000000', 1, '2022-09-08 02:53:01', '15986091363', '德阳', 3, 1, '2022-04-19 04:25:22',
        '2022-01-12 08:47:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1016, 'S5', '姜峻熙', '00000000', 1, '2022-04-01 09:31:06', '15606781127', '包头', 3, 1, '2022-05-14 22:42:14',
        '2022-08-24 21:07:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1017, 'f5F', '曹昊天', '00000000', 1, '2022-03-21 20:47:48', '17365898166', '福州', 3, 1, '2022-03-14 20:23:40',
        '2022-09-09 19:03:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1018, 'RxiDk', '魏涛', '00000000', 1, '2022-09-16 06:08:47', '17322417038', '济南', 3, 1, '2022-10-06 12:24:06',
        '2022-03-08 13:40:30');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1019, 'jCy3N', '石峻熙', '00000000', 1, '2022-12-27 13:15:06', '15126459173', '衡水', 3, 1, '2022-03-18 18:12:08',
        '2022-08-01 14:00:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1020, 'yAjP', '黎志强', '00000000', 1, '2022-08-19 20:22:28', '17647648137', '延安', 3, 1, '2022-07-16 03:57:17',
        '2022-04-14 18:44:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1021, 'yCh', '萧子骞', '00000000', 1, '2022-08-17 11:35:09', '15246210998', '唐山', 3, 1, '2022-05-25 01:53:50',
        '2022-11-09 08:12:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1022, 'NzmPC', '戴峻熙', '00000000', 1, '2022-02-08 18:57:18', '15286825365', '大庆', 3, 1, '2022-05-04 14:44:12',
        '2022-05-04 07:08:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1023, 'Teh', '金智辉', '00000000', 1, '2022-02-04 23:37:18', '15856855235', '曲靖', 3, 1, '2022-06-22 04:27:32',
        '2022-04-21 03:31:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1024, 'mBt3', '薛绍辉', '00000000', 1, '2022-08-19 18:18:13', '17379955760', '揭阳', 3, 1, '2022-01-03 12:45:55',
        '2022-05-18 10:18:52');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1025, 'oRox', '石弘文', '00000000', 1, '2022-05-04 12:41:07', '14502379784', '宿迁', 3, 1, '2022-06-11 12:29:49',
        '2022-03-17 15:26:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1026, 'pCAe4', '金思淼', '00000000', 1, '2022-11-08 00:50:02', '17028942416', '邢台', 3, 1, '2022-11-07 07:24:03',
        '2022-12-02 19:03:24');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1027, 'YtR', '蔡晓啸', '00000000', 1, '2022-05-13 06:44:14', '13472689061', '嘉峪关', 3, 1, '2022-05-08 20:38:16',
        '2022-06-12 05:57:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1028, 'Se2X', '严志强', '00000000', 1, '2022-06-10 01:30:58', '17245612247', '哈尔滨', 3, 1, '2022-12-04 13:25:19',
        '2022-07-09 01:14:38');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1029, 'kMhy', '陶绍齐', '00000000', 1, '2022-09-28 12:15:15', '17672298922', '保定', 3, 1, '2022-04-20 22:38:47',
        '2022-11-29 13:11:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1030, 'gU', '张哲瀚', '00000000', 1, '2022-02-14 18:07:16', '17695571901', '上海', 3, 1, '2022-01-21 14:31:25',
        '2022-01-02 18:27:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1031, 'NJF', '王鸿煊', '00000000', 1, '2022-05-22 19:36:59', '17733460855', '乌鲁木齐', 3, 1, '2022-11-28 00:50:50',
        '2022-04-24 21:24:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1032, 'o7Omc', '冯熠彤', '00000000', 1, '2022-05-08 17:47:33', '17242009133', '乌鲁木齐', 3, 1, '2022-02-02 03:18:58',
        '2022-02-17 18:54:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1033, 'xvk', '冯致远', '00000000', 1, '2022-12-26 02:41:44', '17156730197', '包头', 3, 1, '2022-06-06 22:33:52',
        '2022-01-29 09:49:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1034, '9IWX', '黎旭尧', '00000000', 1, '2022-02-23 02:40:05', '15662436161', '张家口', 3, 1, '2022-02-01 06:35:04',
        '2022-12-14 05:05:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1035, '5uT3', '魏凯瑞', '00000000', 1, '2022-05-28 10:20:54', '17564586225', '肇庆', 3, 1, '2022-09-08 20:41:31',
        '2022-07-10 21:44:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1036, 'G1h', '潘烨华', '00000000', 1, '2022-06-02 05:50:57', '15825485876', '云浮', 3, 1, '2022-09-25 04:37:16',
        '2022-11-07 21:56:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1037, 'fDrIu', '沈立果', '00000000', 1, '2022-06-19 11:27:39', '15850600968', '莱芜', 3, 1, '2022-05-14 19:30:50',
        '2022-01-22 15:35:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1038, '9TvP', '方弘文', '00000000', 1, '2022-01-30 16:55:06', '17158324138', '福州', 3, 1, '2022-05-16 08:00:18',
        '2022-02-01 05:50:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1039, 'u7j0f', '戴天宇', '00000000', 1, '2022-02-04 16:26:06', '17274417380', '宜兴', 3, 1, '2022-03-12 01:47:28',
        '2022-12-15 14:19:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1040, 'yQoGK', '袁立辉', '00000000', 1, '2022-06-11 21:05:01', '17301174155', '泰州', 3, 1, '2022-01-04 04:55:09',
        '2022-08-20 12:49:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1041, 'rC5g', '杜思远', '00000000', 1, '2022-03-15 13:31:17', '15534363584', '重庆', 3, 1, '2022-08-15 01:30:12',
        '2022-02-23 15:52:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1042, 'EKx', '李立诚', '00000000', 1, '2022-08-31 05:35:31', '17247512208', '淮安', 3, 1, '2022-05-03 09:31:57',
        '2022-02-17 14:16:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1043, 'Uamx', '吕子轩', '00000000', 1, '2022-01-23 06:21:15', '15352290946', '三门峡', 3, 1, '2022-10-16 20:33:05',
        '2022-04-17 08:10:36');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1044, 'uZat', '史乐驹', '00000000', 1, '2022-11-10 16:18:10', '15771100642', '荣成', 3, 1, '2022-01-22 20:51:45',
        '2022-06-21 12:55:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1045, 'cdP5i', '万鑫磊', '00000000', 1, '2022-06-06 06:54:49', '17733575831', '泸州', 3, 1, '2022-02-02 19:36:39',
        '2022-09-26 09:22:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1046, 'x4EuV', '龚志强', '00000000', 1, '2022-03-30 22:51:06', '17840971984', '诸暨', 3, 1, '2022-08-07 04:29:03',
        '2022-07-03 09:04:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1047, 'deb', '方子默', '00000000', 1, '2022-03-10 01:07:46', '17568016496', '临汾', 3, 1, '2022-03-08 00:30:43',
        '2022-02-10 06:19:00');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1048, 'HsRp5', '刘晓啸', '00000000', 1, '2022-08-08 13:53:03', '17647493830', '湛江', 3, 1, '2022-11-04 08:37:44',
        '2022-08-16 02:33:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1049, 'YO', '贾明轩', '00000000', 1, '2022-06-25 06:11:32', '15572887625', '宿迁', 3, 1, '2022-05-29 17:37:19',
        '2022-04-16 00:10:50');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1050, 'TQQF', '冯浩然', '00000000', 1, '2022-08-23 00:27:32', '17861676388', '沈阳', 3, 1, '2022-02-15 13:18:51',
        '2022-09-19 06:01:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1051, '2M', '贾致远', '00000000', 1, '2022-05-07 15:31:56', '17253953830', '乌鲁木齐', 3, 1, '2022-02-26 16:48:25',
        '2022-12-05 05:49:40');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1052, 'JG', '余浩轩', '00000000', 1, '2022-10-10 08:44:53', '15857430400', '日照', 3, 1, '2022-02-19 06:12:28',
        '2022-09-10 00:34:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1053, 'B2VZ', '林思淼', '00000000', 1, '2022-09-24 09:59:34', '15751747008', '中山', 3, 1, '2022-08-16 18:56:52',
        '2022-06-12 10:57:16');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1054, 'ZBjbw', '杜金鑫', '00000000', 1, '2022-01-13 01:14:34', '14757301225', '常德', 3, 1, '2022-10-13 13:44:25',
        '2022-10-12 06:14:59');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1055, 'JWBQI', '陈峻熙', '00000000', 1, '2022-08-12 04:29:20', '15554705986', '胶州', 3, 1, '2022-10-04 10:10:41',
        '2022-03-03 12:00:47');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1056, 'VuFE', '侯修杰', '00000000', 1, '2022-01-11 14:47:18', '15785863540', '临汾', 3, 1, '2022-07-16 12:38:27',
        '2022-10-15 08:02:04');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1057, 'TeClw', '陶修杰', '00000000', 1, '2022-08-06 20:38:31', '17839338679', '温州', 3, 1, '2022-09-29 21:43:14',
        '2022-11-28 05:05:14');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1058, 'NAn', '龚鑫磊', '00000000', 1, '2022-06-04 22:34:00', '15039076819', '台州', 3, 1, '2022-01-22 08:02:47',
        '2022-09-08 13:42:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1059, 'UPH', '侯伟泽', '00000000', 1, '2022-07-27 04:33:30', '15074046994', '章丘', 3, 1, '2022-12-27 15:32:39',
        '2022-02-14 02:50:10');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1060, 'zUI', '宋睿渊', '00000000', 1, '2022-06-22 07:18:59', '15727649062', '惠州', 3, 1, '2022-05-19 21:19:16',
        '2022-11-30 01:58:44');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1061, 'L5Xc6', '贾雪松', '00000000', 1, '2022-01-08 10:42:58', '14758345208', '海门', 3, 1, '2022-11-11 22:28:36',
        '2022-02-26 15:04:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1062, 'OP3f', '江彬', '00000000', 1, '2022-07-14 02:59:02', '18181746946', '淄博', 3, 1, '2022-04-25 14:01:31',
        '2022-06-04 12:30:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1063, 'B9cX', '覃弘文', '00000000', 1, '2022-04-05 11:54:25', '18323973084', '金坛', 3, 1, '2022-01-17 05:10:02',
        '2022-03-28 16:47:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1064, 'zDUh2', '覃笑愚', '00000000', 1, '2022-08-11 22:22:09', '17794617633', '九江', 3, 1, '2022-07-31 04:18:36',
        '2022-04-06 10:38:26');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1065, 'bKc', '莫胤祥', '00000000', 1, '2022-11-05 17:45:31', '17608692979', '张家口', 3, 1, '2022-09-30 08:15:46',
        '2022-10-19 09:21:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1066, 'U9XU1', '孙锦程', '00000000', 1, '2022-02-25 11:12:05', '17508865407', '延安', 3, 1, '2022-03-07 11:34:37',
        '2022-03-25 07:43:56');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1067, '8X', '田明轩', '00000000', 1, '2022-10-16 11:53:57', '17358394223', '哈尔滨', 3, 1, '2022-09-27 14:46:10',
        '2022-02-17 23:59:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1068, 'XxYp', '刘鑫磊', '00000000', 1, '2022-11-21 10:29:52', '17602859765', '东莞', 3, 1, '2022-06-01 02:40:06',
        '2022-12-03 15:24:09');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1069, 's1', '罗梓晨', '00000000', 1, '2022-04-04 12:08:59', '15250448888', '诸暨', 3, 1, '2022-03-14 17:05:36',
        '2022-07-12 07:50:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1070, 'DDa', '李立辉', '00000000', 1, '2022-12-16 02:11:51', '15150595792', '贵阳', 3, 1, '2022-12-23 23:47:13',
        '2022-09-06 23:21:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1071, 'donv', '王鑫磊', '00000000', 1, '2022-11-13 14:45:18', '15389873005', '无锡', 3, 1, '2022-07-17 07:11:10',
        '2022-02-19 12:02:25');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1072, 'EA', '熊建辉', '00000000', 1, '2022-10-30 11:39:42', '15346671269', '嘉峪关', 3, 1, '2022-07-04 08:55:07',
        '2022-05-02 08:40:15');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1073, 'kDzp', '蒋伟宸', '00000000', 1, '2022-11-02 04:59:33', '18963730708', '丽水', 3, 1, '2022-06-12 19:28:29',
        '2022-05-03 06:30:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1074, '4utiC', '苏炎彬', '00000000', 1, '2022-12-09 18:21:38', '17373273222', '乳山', 3, 1, '2022-06-04 15:42:35',
        '2022-07-04 03:34:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1075, 'ym', '田子涵', '00000000', 1, '2022-08-16 15:33:44', '17176873416', '乌鲁木齐', 3, 1, '2022-11-02 04:56:42',
        '2022-06-11 04:45:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1076, 'nQZVW', '唐煜祺', '00000000', 1, '2022-10-28 17:23:16', '15719860962', '北海', 3, 1, '2022-05-14 21:17:07',
        '2022-08-29 10:13:42');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1077, 'IHaU', '武鸿煊', '00000000', 1, '2022-05-04 09:15:54', '15711984834', '寿光', 3, 1, '2022-03-29 18:15:15',
        '2022-12-24 16:46:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1078, 'EPQC', '沈越泽', '00000000', 1, '2022-04-06 23:16:14', '15098226491', '临沂', 3, 1, '2022-08-30 16:27:37',
        '2022-05-25 19:33:19');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1079, 'x0', '宋弘文', '00000000', 1, '2022-03-23 06:16:48', '17049263429', '江阴', 3, 1, '2022-07-02 03:06:11',
        '2022-06-14 22:32:29');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1080, 'K6R', '冯晋鹏', '00000000', 1, '2022-09-02 07:45:57', '17156584348', '莱芜', 3, 1, '2022-02-01 04:00:30',
        '2022-06-16 10:41:34');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1081, 'eKFPQ', '邵正豪', '00000000', 1, '2022-10-28 01:25:16', '15521052484', '南京', 3, 1, '2022-03-21 05:40:15',
        '2022-07-27 21:20:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1082, 'JVTrA', '戴荣轩', '00000000', 1, '2022-09-15 15:09:55', '15606259227', '扬州', 3, 1, '2022-05-05 21:51:40',
        '2022-10-29 06:14:21');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1083, 'YTxWC', '薛子轩', '00000000', 1, '2022-02-10 17:37:25', '15104388446', '金昌', 3, 1, '2022-07-07 02:25:32',
        '2022-05-21 14:19:46');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1084, '3YV', '郭钰轩', '00000000', 1, '2022-10-18 15:08:11', '15090804546', '青岛', 3, 1, '2022-05-06 09:33:18',
        '2022-06-23 17:40:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1085, '8nwD2', '石鹏', '00000000', 1, '2022-12-04 02:30:16', '15645642832', '开封', 3, 1, '2022-06-26 01:01:33',
        '2022-08-15 23:20:28');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1086, 'GSk6w', '叶伟泽', '00000000', 1, '2022-01-05 07:43:46', '17647648708', '蓬莱', 3, 1, '2022-04-13 22:33:29',
        '2022-05-26 08:17:18');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1087, 'S58', '范立果', '00000000', 1, '2022-08-05 19:52:06', '17175603638', '邢台', 3, 1, '2022-11-30 10:18:40',
        '2022-02-26 03:06:17');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1088, 'lhRqm', '梁振家', '00000000', 1, '2022-02-03 15:54:03', '14546319514', '菏泽', 3, 1, '2022-02-08 14:32:32',
        '2022-12-06 19:35:11');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1089, 'l0', '罗明哲', '00000000', 1, '2022-03-14 11:50:57', '17204085151', '株洲', 3, 1, '2022-11-20 19:18:06',
        '2022-02-28 06:16:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1090, 'T7', '王天宇', '00000000', 1, '2022-09-16 13:00:39', '17323318508', '沧州', 3, 1, '2022-03-03 22:11:37',
        '2022-02-19 16:06:31');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1091, 'JNU', '冯烨霖', '00000000', 1, '2022-11-23 19:03:18', '14792057266', '葫芦岛', 3, 1, '2022-06-10 08:41:38',
        '2022-07-31 03:12:39');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1092, '3ZH', '段荣轩', '00000000', 1, '2022-03-19 19:50:45', '15639241598', '西安', 3, 1, '2022-09-17 04:35:27',
        '2022-01-30 19:42:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1093, 'Nljo', '沈擎宇', '00000000', 1, '2022-09-12 05:06:00', '17025737088', '南通', 3, 1, '2022-03-12 12:12:49',
        '2022-09-28 18:15:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1094, '0O', '孔弘文', '00000000', 1, '2022-10-01 00:36:52', '17607511756', '郑州', 3, 1, '2022-10-30 00:30:24',
        '2022-06-12 01:06:01');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1095, 'ROnX', '石锦程', '00000000', 1, '2022-10-18 03:34:05', '17136916822', '沈阳', 3, 1, '2022-11-30 03:40:07',
        '2022-02-05 15:51:02');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1096, 'o8MNG', '郝峻熙', '00000000', 1, '2022-03-14 05:54:52', '17789042247', '牡丹江', 3, 1, '2022-05-22 10:58:08',
        '2022-11-05 01:11:48');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1097, 'gc', '顾立辉', '00000000', 1, '2022-11-09 08:01:46', '17610463993', '荣成', 3, 1, '2022-12-25 21:28:35',
        '2022-10-02 11:49:45');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1098, 'aa', '谭鸿涛', '00000000', 1, '2022-12-12 21:43:10', '15239200824', '珠海', 3, 1, '2022-05-03 07:57:56',
        '2022-10-31 20:20:55');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1099, 'JKYMH', '张展鹏', '00000000', 1, '2022-05-23 20:42:06', '15960867127', '东营', 3, 1, '2022-12-18 09:35:44',
        '2022-01-08 14:36:20');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1100, 'xpd1', '林正豪', '00000000', 1, '2022-07-28 02:07:47', '15302574163', '泰安', 3, 1, '2022-06-29 05:49:38',
        '2022-03-31 23:07:49');
insert into `smbms_user` (`id`, `userCode`, `userName`, `userPassword`, `gender`, `birthday`, `phone`, `address`,
                          `userRole`, `createdBy`, `creationDate`, `modifyDate`)
values (1101, 'hyL', '曾建辉', '00000000', 1, '2022-03-11 18:23:16', '15517311491', '富阳', 3, 1, '2022-04-01 02:41:20',
        '2022-08-20 00:44:49');