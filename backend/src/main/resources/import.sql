-- ### 고정 데이터 셋 ###
-- Favorite
INSERT INTO favorite(`id`,`name`) VALUES(1,'Movie');
INSERT INTO favorite(`id`,`name`) VALUES(2,'Sports');
INSERT INTO favorite(`id`,`name`) VALUES(3,'Music');
INSERT INTO favorite(`id`,`name`) VALUES(4,'Investment');
INSERT INTO favorite(`id`,`name`) VALUES(5,'Travel');
INSERT INTO favorite(`id`,`name`) VALUES(6,'Coding');
INSERT INTO favorite(`id`,`name`) VALUES(7,'Game');
INSERT INTO favorite(`id`,`name`) VALUES(8,'Food');
INSERT INTO favorite(`id`,`name`) VALUES(9,'Cooking');
INSERT INTO favorite(`id`,`name`) VALUES(10,'Cafe');
INSERT INTO favorite(`id`,`name`) VALUES(11,'Reading');
INSERT INTO favorite(`id`,`name`) VALUES(12,'Pet');
INSERT INTO favorite(`id`,`name`) VALUES(13,'Party');
INSERT INTO favorite(`id`,`name`) VALUES(14,'Collecting');

-- 활동별 경험치 데이터 테이블
INSERT INTO exp_activity(`id`,`exp`,`name`,`exp_update_type`) VALUES (1,20,'WRITE_POST','ADD');
INSERT INTO exp_activity(`id`,`exp`,`name`,`exp_update_type`) VALUES (2,5,'WRITE_REPLY','ADD');
-- 분당 경험치 2 획득
INSERT INTO exp_activity(`id`,`exp`,`name`,`exp_update_type`) VALUES (3,2,'MEETING','MULTI');
INSERT INTO exp_activity(`id`,`exp`,`name`) VALUES (4,10,'ATTENDANCE','ADD');

-- 경험치별 레벨 데이터 테이블
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (1,'Bronze3',0,19);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (2,'Bronze2',20,49);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (3,'Bronze1',50,99);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (4,'Silver3',100,149);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (5,'Silver2',150,199);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (6,'Silver1',200,274);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (7,'Gold3',275,324);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (8,'Gold2',325,399);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (9,'Gold1',400,499);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (10,'Platinum3',500,599);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (11,'Platinum2',600,699);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (12,'Platinum1',700,849);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (13,'Diamond3',850,999);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (14,'Diamond2',1000,1149);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (15,'Diamond1',1150,1499);
INSERT INTO level (`id`, `name`, `min_exp`, `max_exp`) VALUES (16,'Master',1500,2147483647);

--- ### 고정 데이터 셋 end ###


-- User (비밀번호는 모두 1234)
INSERT INTO user VALUES(1001,'2022-07-20 09:30:22.232051','2022-07-21 16:30:22.232051','1999-07-02','hello!','userbot1@gmail.com','MALE',null,'KOREAN','userbot1','KOREA','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(1002,'2022-07-18 16:31:22.232051','2022-07-21 16:30:22.232051','1994-04-30','hello?','userbot2@gmail.com','FEMALE',null,'KOREAN','userbot2','KOREA','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','JAPANESE');
INSERT INTO user VALUES(1003,'2022-07-21 16:32:22.232051','2022-07-21 16:30:22.232051','1995-03-21','hello...','userbot3@gmail.com','FEMALE',null,'CHINESE','userbot3','CHINA','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(1004,'2022-07-21 12:33:22.232051','2022-07-21 16:30:22.232051','2001-02-13','hello!!','userbot4@gmail.com','MALE',null,'ENGLISH','userbot4','USA','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','KOREAN');
INSERT INTO user VALUES(1005,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','userbot5@gmail.com','FEMALE',null,'JAPANESE','userbot5','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(1006,'2022-07-23 13:21:42.738291','2022-07-23 13:21:42.738291','1998-01-28','hello hello','userbot6@gmail.com','MALE',null,'SPANISH','userbot6','SPAIN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','CHINESE');

INSERT INTO user VALUES(2001,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','2001@gmail.com','MALE',null,'JAPANESE','userbot2001','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(2002,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','2002@gmail.com','MALE',null,'JAPANESE','userbot2002','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(2003,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','2003@gmail.com','MALE',null,'JAPANESE','userbot2003','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(2004,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','2004@gmail.com','MALE',null,'JAPANESE','userbot2004','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(2005,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','2005@gmail.com','MALE',null,'JAPANESE','userbot2005','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(2006,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','2006@gmail.com','MALE',null,'JAPANESE','userbot2006','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(2007,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','2007@gmail.com','MALE',null,'JAPANESE','userbot2007','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');
INSERT INTO user VALUES(2008,'2022-07-22 16:34:22.232051','2022-07-22 16:34:22.232051','1997-11-02','hello!!!','2008@gmail.com','MALE',null,'JAPANESE','userbot2008','JAPAN','{bcrypt}$2a$10$MBmYHjIMbwXWBX2YZsZrLOexUQabMCexGf8AvznT97DRbppdAfimO','ENGLISH');

-- url.server.mathcing = http://172.17.0.4:8000
--consultant123@test.com / ssafyA603
--coach123@test.com / ssafyA603


-- User Roles
INSERT INTO user_roles(`user_id`,`roles`) VALUES (1001,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (1002,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (1003,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (1004,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (1005,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (1006,'ROLE_USER');

INSERT INTO user_roles(`user_id`,`roles`) VALUES (2001,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (2002,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (2003,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (2004,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (2005,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (2006,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (2007,'ROLE_USER');
INSERT INTO user_roles(`user_id`,`roles`) VALUES (2008,'ROLE_USER');


-- User Exp (유저별 경험치 테이블 생성 및 초기화, 원래는 정상적인 루트로 회원 가입하면 자동으로 생성)
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (1001,0,1,1001);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (1002,0,1,1002);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (1003,0,1,1003);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (1004,0,1,1004);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (1005,0,1,1005);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (1006,0,1,1006);

INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (2001,0,1,2001);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (2002,0,1,2002);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (2003,0,1,2003);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (2004,0,1,2004);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (2005,0,1,2005);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (2006,0,1,2006);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (2007,0,1,2007);
INSERT INTO user_exp(`id`,`exp`,`level_id`,`user_id`) VALUES (2008,0,1,2008);

-- 경험치 획득 활동 (1001,1002 만)

    -- 1. 게시글 작성

    INSERT INTO board(`id`,`created_time`,`modified_time`,`contents`,`author_id`) VALUES(1,'2022-08-02 14:24:31.503768','2022-08-02 14:27:46.421367','Me many has an bananas <- 뭐가 틀린건가요???',1001);
    INSERT INTO board(`id`,`created_time`,`modified_time`,`contents`,`author_id`) VALUES(2,'2022-08-02 14:25:12.028512','2022-08-02 14:25:12.028512','I want to study english!',1001);
    INSERT INTO board(`id`,`created_time`,`modified_time`,`contents`,`author_id`) VALUES(3,'2022-08-02 14:25:39.285407','2022-08-02 14:25:39.285407','안녕하세요 영어 배우고 싶어요 ^_^',1001);
    INSERT INTO board(`id`,`created_time`,`modified_time`,`contents`,`author_id`) VALUES(4,'2022-08-02 14:31:42.123136','2022-08-02 14:31:42.123136','일본어 배우고 싶어서 가입했습니다!!!',1002);
    -- 2. 댓글 작성
    INSERT INTO reply (`id`,`created_time`,`modified_time`,`contents`,`pid`,`board_id`,`user_id`) VALUES (1,'2022-08-02 14:32:18.910127','2022-08-02 14:32:18.910127','다 틀렸어요',0,1,1002)
    INSERT INTO reply (`id`,`created_time`,`modified_time`,`contents`,`pid`,`board_id`,`user_id`) VALUES (2,'2022-08-02 14:36:30.397647','2022-08-02 14:36:30.397647','반갑습니다 ^_^',0,4,1001)


-- 상기 경험치 획득 활동에 해당하는 로그들 (레벨, 경험치 조회 시 아래 로그를 바탕으로 경험치를 계산해서 userExp 테이블이 갱신된다.)
    -- 1. 게시글 작성 로그
    INSERT INTO exp_acquisition_log(`id`,`created_time`,`modified_time`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (1,'2022-08-02 14:24:31.527767','2022-08-02 14:24:31.527767',1,1,1001,0)
    INSERT INTO exp_acquisition_log(`id`,`created_time`,`modified_time`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (2,'2022-08-02 14:25:12.031587','2022-08-02 14:25:12.031587',2,1,1001,0)
    INSERT INTO exp_acquisition_log(`id`,`created_time`,`modified_time`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3,'2022-08-02 14:25:39.289487','2022-08-02 14:25:39.289487',3,1,1001,0)
    INSERT INTO exp_acquisition_log(`id`,`created_time`,`modified_time`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (4,'2022-08-02 14:31:42.125134','2022-08-02 14:31:42.125134',4,1,1002,0)
    -- 2. 댓글 작성 로그
    INSERT INTO exp_acquisition_log(`id`,`created_time`,`modified_time`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (5,'2022-08-02 14:32:18.918093','2022-08-02 14:32:18.918093',1,2,1002,0)
    INSERT INTO exp_acquisition_log(`id`,`created_time`,`modified_time`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (6,'2022-08-02 14:36:30.399644','2022-08-02 14:36:30.399644',2,2,1001,0)


-- User_Favorite
INSERT INTO user_favorite VALUES(2001,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',2,1001);
INSERT INTO user_favorite VALUES(2002,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',3,1001);
INSERT INTO user_favorite VALUES(2003,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',4,1001);
INSERT INTO user_favorite VALUES(2004,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',10,1002);
INSERT INTO user_favorite VALUES(2005,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',12,1003);
INSERT INTO user_favorite VALUES(2006,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',10,1003);
INSERT INTO user_favorite VALUES(2007,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',7,1004);
INSERT INTO user_favorite VALUES(2008,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',9,1005);

INSERT INTO user_favorite VALUES(2009,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1,2001);
INSERT INTO user_favorite VALUES(2010,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',4,2001);
INSERT INTO user_favorite VALUES(2011,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',2,2002);
INSERT INTO user_favorite VALUES(2012,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',3,2002);
INSERT INTO user_favorite VALUES(2013,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',4,2002);
INSERT INTO user_favorite VALUES(2014,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',5,2003);
INSERT INTO user_favorite VALUES(2015,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',2,2004);
INSERT INTO user_favorite VALUES(2016,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',3,2004);
INSERT INTO user_favorite VALUES(2017,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1,2005);
INSERT INTO user_favorite VALUES(2018,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',5,2005);
INSERT INTO user_favorite VALUES(2019,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1,2006);
INSERT INTO user_favorite VALUES(2020,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',6,2006);
INSERT INTO user_favorite VALUES(2021,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',7,2006);
INSERT INTO user_favorite VALUES(2022,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',13,2007);
INSERT INTO user_favorite VALUES(2023,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1,2008);
INSERT INTO user_favorite VALUES(2024,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',2,2008);


-- Follow (userbot1(1001) 위주)
INSERT INTO follow VALUES(3001,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1001,1005);
INSERT INTO follow VALUES(3002,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1001,1004);
INSERT INTO follow VALUES(3003,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1001,1003);
INSERT INTO follow VALUES(3004,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1001,1002);
INSERT INTO follow VALUES(3005,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1002,1001);
INSERT INTO follow VALUES(3006,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1004,1001);
INSERT INTO follow VALUES(3007,'2022-07-21 16:30:22.232051','2022-07-21 16:30:22.232051',1005,1001);



-- ### Meeting Log ###

-- ChatRoomLog (userbot1 위주, userbot6은 어뷰징 유저, 대화 시간이 짧다.)
    -- session   userbot1 & userbot3 (9분 30초)
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10001,'2022-08-01 12:21:22.232051','OPEN','testsessionabcdefgi7a603testsessionid1');
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`,`open_log_id`) VALUES (10002,'2022-08-01 12:30:52.232051','CLOSE','testsessionabcdefgi7a603testsessionid1',10001);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20001,'2022-08-01 12:21:22.232051','START','ENGLISH',10001,1003);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20002,'2022-08-01 12:21:22.232051','START','KOREAN',10001,1001);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20003,'2022-08-01 12:30:52.232051','END','ENGLISH',10002,1003);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20004,'2022-08-01 12:30:52.232051','END','KOREAN',10002,1001);
    -- 경험치 획득 로그
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3001,10002,3,1001,9);
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3002,10002,3,1003,9);

    -- session   userbot1 & userbot4 (12분)
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10003,'2022-08-02 14:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid2');
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`,`open_log_id`) VALUES (10004,'2022-08-02 14:42:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid2',10003);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20005,'2022-08-02 14:30:22.232051','START','ENGLISH',10003,1004);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20006,'2022-08-02 14:30:22.232051','START','KOREAN',10003,1001);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20007,'2022-08-02 14:42:22.232051','END','ENGLISH',10004,1004);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20008,'2022-08-02 14:42:22.232051','END','KOREAN',10004,1001);
    -- 경험치 획득 로그
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3003,10004,3,1001,12);
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3004,10004,3,1004,12);

    -- session   userbot2 & userbot5 (8분 10초)
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10005,'2022-08-02 14:31:22.232051','OPEN','testsessionabcdefgi7a603testsessionid3');
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`,`open_log_id`) VALUES (10006,'2022-08-02 14:39:32.232051','CLOSE','testsessionabcdefgi7a603testsessionid3',10005);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20009,'2022-08-02 14:31:22.232051','START','CHINESE',10005,1005);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20010,'2022-08-02 14:31:22.232051','START','KOREAN',10005,1002);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20011,'2022-08-02 14:39:32.232051','END','CHINESE',10006,1005);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20012,'2022-08-02 14:39:32.232051','END','KOREAN',10006,1002);
    -- 경험치 획득 로그
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3005,10006,3,1002,8);
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3006,10006,3,1005,8);

    -- session   userbot4 & userbot6 (1분 30초)
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10007,'2022-08-03 09:31:22.232051','OPEN','testsessionabcdefgi7a603testsessionid4');
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`,`open_log_id`) VALUES (10008,'2022-08-03 09:32:52.232051','CLOSE','testsessionabcdefgi7a603testsessionid4',10007);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20013,'2022-08-03 09:31:22.232051','START','SPANISH',10007,1006);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20014,'2022-08-03 09:31:22.232051','START','ENGLISH',10007,1004);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20015,'2022-08-03 09:32:52.232051','END','SPANISH',10008,1006);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20016,'2022-08-03 09:32:52.232051','END','ENGLISH',10008,1004);
    -- 경험치 획득 로그
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3007,10008,3,1004,1);
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3008,10008,3,1006,1);

    -- session   userbot5 & userbot6 (2분)
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10009,'2022-08-03 09:35:22.232051','OPEN','testsessionabcdefgi7a603testsessionid5');
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`,`open_log_id`) VALUES (10010,'2022-08-03 09:37:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid5',10009);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20017,'2022-08-03 09:35:22.232051','START','ENGLISH',10009,1006);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20018,'2022-08-03 09:35:22.232051','START','JAPANESE',10009,1005);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20019,'2022-08-03 09:37:22.232051','END','ENGLISH',10010,1006);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20020,'2022-08-03 09:37:22.232051','END','JAPANESE',10010,1005);
    -- 경험치 획득 로그
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3009,10010,3,1005,2);
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3010,10010,3,1006,2);

    -- session   userbot1 & userbot2 (35분 20초)
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10011,'2022-08-05 12:00:22.232051','OPEN','testsessionabcdefgi7a603testsessionid6');
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`,`open_log_id`) VALUES (10012,'2022-08-05 12:35:42.232051','CLOSE','testsessionabcdefgi7a603testsessionid6',10011);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20021,'2022-08-05 12:00:22.232051','START','ENGLISH',10011,1002);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20022,'2022-08-05 12:00:22.232051','START','KOREAN',10011,1001);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20023,'2022-08-05 12:35:42.232051','END','ENGLISH',10012,1002);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20024,'2022-08-05 12:35:42.232051','END','KOREAN',10012,1001);
    -- 경험치 획득 로그
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3011,10012,3,1001,35);
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3012,10012,3,1002,35);

    -- session   userbot1 & userbot2 (22분)
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10013,'2022-08-07 14:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid7');
    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`,`open_log_id`) VALUES (10014,'2022-08-07 14:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid7',10013);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20025,'2022-08-07 14:30:22.232051','START','ENGLISH',10013,1002);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20026,'2022-08-07 14:30:22.232051','START','KOREAN',10013,1001);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20027,'2022-08-07 14:52:22.232051','END','ENGLISH',10014,1002);
    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20028,'2022-08-07 14:52:22.232051','END','KOREAN',10014,1001);
    -- 경험치 획득 로그
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3013,10014,3,1001,22);
    INSERT INTO exp_acquisition_log(`id`,`target_id`,`activity_id`,`user_id`,`multi_base`) VALUES (3014,10014,3,1002,22);

-- 출석 로그
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1234,'2022-08-01 14:30:22.232051',1001);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1235,'2022-08-02 14:35:22.232051',1001);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1236,'2022-08-04 14:33:22.232051',1001);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1237,'2022-08-07 14:31:22.232051',1001);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1238,'2022-08-10 14:32:22.232051',1001);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1239,'2022-04-01 14:30:22.232051',1002);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1240,'2022-08-14 14:30:22.232051',1002);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1241,'2022-08-08 14:30:22.232051',1003);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1242,'2022-08-07 14:30:22.232051',1004);
INSERT INTO attendance_log (`id`,`created_time`,`user_id`) VALUES (1243,'2022-08-03 14:30:22.232051',1005);


--    1월 달 부터 8월 까지 잔디밭 테스트
    -- session   userbot1 & userbot2 (20분)
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10015,'2022-07-07 14:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid8');
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10016,'2022-07-07 14:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid8');
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20029,'2022-07-07 14:30:22.232051','START','ENGLISH',10015,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20030,'2022-07-07 14:30:22.232051','START','KOREAN',10015,1001);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20031,'2022-07-07 14:52:22.232051','END','ENGLISH',10016,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20032,'2022-07-07 14:52:22.232051','END','KOREAN',10016,1001);
--
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10017,'2022-06-07 14:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid9');
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10018,'2022-06-07 14:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid9');
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20033,'2022-06-07 14:30:22.232051','START','ENGLISH',10017,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20034,'2022-06-07 14:30:22.232051','START','KOREAN',10017,1001);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20035,'2022-06-07 14:52:22.232051','END','ENGLISH',10018,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20036,'2022-06-07 14:52:22.232051','END','KOREAN',10018,1001);
--
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10019,'2022-05-07 14:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid10');
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10020,'2022-05-07 14:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid10');
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20037,'2022-05-07 14:30:22.232051','START','ENGLISH',10019,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20038,'2022-05-07 14:30:22.232051','START','KOREAN',10019,1001);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20039,'2022-05-07 14:52:22.232051','END','ENGLISH',10020,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20040,'2022-05-07 14:52:22.232051','END','KOREAN',10020,1001);
--
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10021,'2022-04-07 14:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid11');
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10022,'2022-04-07 14:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid11');
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20041,'2022-04-07 14:30:22.232051','START','ENGLISH',10021,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20042,'2022-04-07 14:30:22.232051','START','KOREAN',10021,1001);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20043,'2022-04-07 14:52:22.232051','END','ENGLISH',10022,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20044,'2022-04-07 14:52:22.232051','END','KOREAN',10022,1001);
--
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10023,'2022-03-07 14:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid12');
--    INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10024,'2022-03-07 14:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid12');
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20045,'2022-03-07 14:30:22.232051','START','ENGLISH',10023,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20046,'2022-03-07 14:30:22.232051','START','KOREAN',10023,1001);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20047,'2022-03-07 14:52:22.232051','END','ENGLISH',10024,1002);
--    INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20048,'2022-03-07 14:52:22.232051','END','KOREAN',10024,1001);
--
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10025,'2022-02-07 14:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid13');
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10026,'2022-02-07 14:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid13');
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20049,'2022-02-07 14:30:22.232051','START','ENGLISH',10025,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20050,'2022-02-07 14:30:22.232051','START','KOREAN',10025,1001);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20051,'2022-02-07 14:52:22.232051','END','ENGLISH',10026,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20052,'2022-02-07 14:52:22.232051','END','KOREAN',10026,1001);
--
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10027,'2022-02-07 12:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid14');
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10028,'2022-02-07 12:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid14');
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20053,'2022-02-07 12:30:22.232051','START','ENGLISH',10027,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20054,'2022-02-07 12:30:22.232051','START','KOREAN',10027,1001);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20055,'2022-02-07 12:52:22.232051','END','ENGLISH',10028,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20056,'2022-02-07 12:52:22.232051','END','KOREAN',10028,1001);
--
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10029,'2022-02-07 13:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid15');
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10030,'2022-02-07 13:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid15');
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20057,'2022-02-07 13:30:22.232051','START','ENGLISH',10029,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20058,'2022-02-07 13:30:22.232051','START','KOREAN',10029,1001);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20059,'2022-02-07 13:52:22.232051','END','ENGLISH',10030,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20060,'2022-02-07 13:52:22.232051','END','KOREAN',10030,1001);
--
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10031,'2022-02-07 17:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid16');
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10032,'2022-02-07 17:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid16');
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20061,'2022-02-07 17:30:22.232051','START','ENGLISH',10031,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20062,'2022-02-07 17:30:22.232051','START','KOREAN',10031,1001);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20063,'2022-02-07 17:52:22.232051','END','ENGLISH',10032,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20064,'2022-02-07 17:52:22.232051','END','KOREAN',10032,1001);
--
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10033,'2022-02-07 18:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid17');
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10034,'2022-02-07 18:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid17');
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20065,'2022-02-07 18:30:22.232051','START','ENGLISH',10033,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20066,'2022-02-07 18:30:22.232051','START','KOREAN',10033,1001);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20067,'2022-02-07 18:52:22.232051','END','ENGLISH',10034,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20068,'2022-02-07 18:52:22.232051','END','KOREAN',10034,1001);
--
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10035,'2022-02-07 19:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid18');
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10036,'2022-02-07 19:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid18');
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20069,'2022-02-07 19:30:22.232051','START','ENGLISH',10035,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20070,'2022-02-07 19:30:22.232051','START','KOREAN',10035,1001);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20071,'2022-02-07 19:52:22.232051','END','ENGLISH',10036,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20072,'2022-02-07 19:52:22.232051','END','KOREAN',10036,1001);
--
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10037,'2022-02-07 20:30:22.232051','OPEN','testsessionabcdefgi7a603testsessionid19');
--     INSERT INTO chat_room_log (`id`,`created_time`,`log_type`,`session_id`) VALUES (10038,'2022-02-07 20:52:22.232051','CLOSE','testsessionabcdefgi7a603testsessionid19');
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20073,'2022-02-07 20:30:22.232051','START','ENGLISH',10037,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20074,'2022-02-07 20:30:22.232051','START','KOREAN',10037,1001);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20075,'2022-02-07 20:52:22.232051','END','ENGLISH',10038,1002);
--     INSERT INTO meeting_log (`id`,`created_time`,`log_type`,`your_language`,`chat_room_log_id`,`user_id`) VALUES (20076,'2022-02-07 20:52:22.232051','END','KOREAN',10038,1001);






