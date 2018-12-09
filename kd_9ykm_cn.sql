-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-12-09 21:15:03
-- 服务器版本： 5.6.37-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kd_9ykm_cn`
--

-- --------------------------------------------------------

--
-- 表的结构 `daili`
--

CREATE TABLE IF NOT EXISTS `daili` (
  `name` varchar(10) NOT NULL,
  `time` date NOT NULL COMMENT '划拨时间',
  `iccid` varchar(20) NOT NULL COMMENT '卡号',
  `isjh` varchar(10) NOT NULL COMMENT '是否激活',
  `iscz` varchar(10) NOT NULL COMMENT '本月是否充值 ',
  `isjs` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `daili`
--

INSERT INTO `daili` (`name`, `time`, `iccid`, `isjh`, `iscz`, `isjs`) VALUES
('杨永旺', '2018-08-12', '\n8986111823103314906', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103314907', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103314908', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103314909', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103314910', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103314911', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103314912', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103316823', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103316824', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103316825', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103316827', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103316828', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103316829', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103316830', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103316831', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103317233', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103317234', '未激活', '未充值', '未结算'),
('杨永旺', '2018-08-12', '\n8986111823103317235', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372882', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372883', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372884', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372885', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372888', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372889', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372890', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372891', '已激活', '已充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372893', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372894', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372897', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372898', '已激活', '已充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111822503372899', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', ' 8986111833503372882', '未激活', '未充值', '未结算'),
('宋志浩', '2018-08-12', '8986111822503372886', '未激活', '未充值', '未结算'),
('李文杰', '2018-08-12', '8986111822503372887', '已激活', '已充值', '未结算'),
('马鑫泽', '2018-08-12', '8986111822503372895', '已激活', '已充值', '未结算'),
('宋志浩', '2018-08-12', '8986111822503372896', '已激活', '已充值', '未结算'),
('杨永旺', '2018-08-12', '8986111823103316826', '未激活', '未充值', '未结算');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(10) NOT NULL,
  `com` varchar(20) NOT NULL,
  `num` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`name`, `com`, `num`) VALUES
('付常洪', '天天', '669011850452'),
('任天宇', '韵达', '3102007282238'),
('刘帅', '天天', '668947538048'),
('刘志慧', '天天', '668944782166'),
('刘玲', '韵达', '3102007282237'),
('刘祥和', '韵达', '3102047524812'),
('刘轩东', '天天', '668933818466'),
('姚施泽', '天天', '668922390358'),
('孔令珊', '天天', '668984569352'),
('徐浩然', '韵达', '3102047523201'),
('徐涛', '韵达', '3102047523200'),
('杨永旺', '天天', '668947527556'),
('林俊宏', '天天', '668922390355'),
('殷新楠', '天天', '668922381613'),
('毕文鑫', '天天', '668966334852'),
('王勇', '天天', '668936292493'),
('王朝辉', '天天', '668936281411'),
('王林', '天天', '668922381614'),
('王磊', '天天', '669032580920'),
('程戈', '天天', '668922392075'),
('谢小小', '圆通', '813600689561'),
('赵杰', '天天', '668933818459'),
('邓云丹', '圆通', '814476078441'),
('邓大大', '圆通', '813600687513'),
('邓来菊', '天天', '669011856193'),
('郑嘉威', '天天', '668955074618'),
('郑文', '天天', '668922394030'),
('郭艳杰', '韵达', '3101918018560'),
('陈兴川', '天天', '668984563892'),
('陶子威', '天天', '668922386631'),
('靳帅奇', '韵达', '3101918018561'),
('鲁文昌', '天天', '669011852296'),
('黄丽兰', '韵达', '3102047523199'),
('齐天大圣', '韵达', '3101897024840');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daili`
--
ALTER TABLE `daili`
  ADD UNIQUE KEY `iccid` (`iccid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;