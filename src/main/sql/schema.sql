-- 数据库初始化脚本

-- 创建数据库
CREATE DATABASE  seckill;

-- 使用数据库
USE seckill;

-- 创建秒杀库表
CREATE TABLE seckill(
  `seckill_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '库存id',
  `name` VARCHAR(120) NOT NULL COMMENT '商品名称',
  `number` INT NOT NULL COMMENT '库存数量',
  `start_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '秒杀开始时间',
  `end_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '秒杀结束时间',
  `create_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '创建时间',
  PRIMARY KEY (seckill_id),
  KEY idx_start_time (start_time),
  KEY idx_end_time (end_time),
  KEY idx_create_time (create_time)
)ENGINE = InnoDB AUTO_INCREMENT=1000 CHARSET = utf8 COMMENT '秒杀库存表';

-- 初始化数据
INSERT INTO
  seckill(name, number, start_time, end_time)
VALUES
  ('2000元秒杀ihpone6', 100, '2017-11-01 00:00:00', '2017-11-02 00:00:00'),
  ('200元秒杀ihpone2', 200, '2017-11-01 00:00:00', '2017-11-02 00:00:00'),
  ('300元秒杀ihpone3', 300, '2017-11-01 00:00:00', '2017-11-02 00:00:00'),
  ('400元秒杀ihpone4', 400, '2017-11-01 00:00:00', '2017-11-02 00:00:00'),
  ('500元秒杀ihpone5', 500, '2017-11-01 00:00:00', '2017-11-02 00:00:00'),
  ('600元秒杀ihpone7', 600, '2017-11-01 00:00:00', '2017-11-02 00:00:00'),
  ('700元秒杀ihpone8', 700, '2017-11-01 00:00:00', '2017-11-02 00:00:00'),
  ('800元秒杀ihpone9', 800, '2017-11-01 00:00:00', '2017-11-02 00:00:00'),
  ('900元秒杀ihponeX', 900, '2017-11-01 00:00:00', '2017-11-02 00:00:00');

-- 秒杀成功明细表
CREATE TABLE success_killed(
  `seckill_id` BIGINT NOT NULL COMMENT '秒杀商品id',
  `user_phone` BIGINT NOT NULL COMMENT '用户手机号',
  `state` TINYINT NOT NULL DEFAULT -1 COMMENT '状态',
  `create_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '创建时间',
  PRIMARY KEY (seckill_id, user_phone),
  KEY idx_create_time (create_time)
)ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '秒杀成功明细表';

-- 用户登录认证相关