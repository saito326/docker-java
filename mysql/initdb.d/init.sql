CREATE TABLE `usertbl` (
  `userid` int NOT NULL AUTO_INCREMENT COMMENT 'ユーザーID',
  `username` varchar(80) DEFAULT NULL COMMENT 'ユーザー名',
  `mailaddress` varchar(300) NOT NULL COMMENT 'メールアドレス',
  `password` varchar(300) NOT NULL COMMENT 'パスワード',
  `ADD_TANCD` varchar(10) DEFAULT NULL COMMENT '登録担当',
  `ADD_DATE` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
  `UPD_TANCD` varchar(10) DEFAULT NULL COMMENT '変更担当',
  `UPD_DATE` datetime DEFAULT NULL COMMENT '変更日時',
  `UPD_COUNT` int NOT NULL DEFAULT '0' COMMENT '更新カウンタ',
  `ENT_KBN` char(1) NOT NULL DEFAULT '1' COMMENT '登録区分',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ユーザー';

insert into usertbl (userid,username,mailaddress,password) values (1,'マイ','sample@example.com','maitaho');