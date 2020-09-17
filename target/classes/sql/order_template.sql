-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主机： mysqlsrv
-- 生成日期： 2020-08-11 13:38:25
-- 服务器版本： 5.7.28-log
-- PHP 版本： 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `dispatcher`
--

-- --------------------------------------------------------

--
-- 表的结构 `order_template`
--

CREATE TABLE `order_template` (
  `ID` bigint(20) UNSIGNED NOT NULL COMMENT '任务链模板对应子任务主键',
  `ORDER_CHAIN_TEMPLATE_ID` bigint(20) UNSIGNED NOT NULL COMMENT '所属任务链模板主键',
  `MAP_ID` bigint(20) NOT NULL COMMENT '地图ID',
  `ACTION` bigint(10) NOT NULL COMMENT '动作类型',
  `END_POINT_ID` bigint(20) NOT NULL COMMENT '目标点主键',
  `ORIENT` int(3) DEFAULT NULL COMMENT '对接方向（0-左  1-右  2-前 3-后）',
  `OFFSET` double(10,0) DEFAULT NULL COMMENT '对接距离',
  `LAYINGOFF` int(3) DEFAULT NULL COMMENT '上下料（0-上料  1-下料）',
  `INFO` varchar(255) DEFAULT NULL COMMENT 'INFO信息',
  `ORDER_INDEX` int(5) DEFAULT NULL COMMENT '任务排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务链模板对应子任务信息' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `order_template`
--

INSERT INTO `order_template` (`ID`, `ORDER_CHAIN_TEMPLATE_ID`, `MAP_ID`, `ACTION`, `END_POINT_ID`, `ORIENT`, `OFFSET`, `LAYINGOFF`, `INFO`, `ORDER_INDEX`) VALUES
(489, 25, 20, 200, 1147, 1, NULL, 0, '[]', NULL),
(490, 25, 20, 3, 1144, NULL, NULL, NULL, '[]', NULL),
(491, 25, 20, 210, 1144, 5, NULL, NULL, '[]', NULL),
(492, 25, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(493, 25, 20, 210, 1142, 5, NULL, NULL, '[]', NULL),
(494, 25, 20, 3, 1127, NULL, NULL, NULL, '[]', NULL),
(495, 25, 20, 210, 1127, 4, NULL, NULL, '[]', NULL),
(496, 25, 20, 3, 1202, NULL, NULL, NULL, '[]', NULL),
(497, 25, 20, 210, 1202, 4, NULL, NULL, '[]', NULL),
(498, 25, 20, 3, 1139, NULL, NULL, NULL, '[]', NULL),
(499, 25, 20, 210, 1139, 4, NULL, NULL, '[]', NULL),
(500, 25, 20, 3, 1144, NULL, NULL, NULL, '[]', NULL),
(501, 25, 20, 210, 1144, 4, NULL, NULL, '[]', NULL),
(502, 25, 20, 200, 1147, NULL, NULL, 1, '[]', NULL),
(503, 25, 20, 3, 1206, NULL, NULL, NULL, '[]', NULL),
(504, 25, 20, 3, 1204, NULL, NULL, NULL, '[]', NULL),
(505, 24, 20, 200, 1146, 1, NULL, 0, '[]', NULL),
(506, 24, 20, 3, 1145, NULL, NULL, NULL, '[]', NULL),
(507, 24, 20, 210, 1145, 5, NULL, NULL, '[]', NULL),
(508, 24, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(509, 24, 20, 210, 1142, 5, NULL, NULL, '[]', NULL),
(510, 24, 20, 3, 1127, NULL, NULL, NULL, '[]', NULL),
(511, 24, 20, 210, 1127, 4, NULL, NULL, '[]', NULL),
(512, 24, 20, 3, 1202, NULL, NULL, NULL, '[]', NULL),
(513, 24, 20, 210, 1202, 4, NULL, NULL, '[]', NULL),
(514, 24, 20, 3, 1139, NULL, NULL, NULL, '[]', NULL),
(515, 24, 20, 210, 1139, 4, NULL, NULL, '[]', NULL),
(516, 24, 20, 3, 1145, NULL, NULL, NULL, '[]', NULL),
(517, 24, 20, 210, 1145, 4, NULL, NULL, '[]', NULL),
(518, 24, 20, 200, 1146, NULL, NULL, 1, '[]', NULL),
(519, 24, 20, 3, 1206, NULL, NULL, NULL, '[]', NULL),
(520, 24, 20, 3, 1204, NULL, NULL, NULL, '[]', NULL),
(521, 24, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(597, 27, 20, 3, 1151, NULL, NULL, NULL, '[]', NULL),
(598, 27, 20, 3, 1132, NULL, NULL, NULL, '[]', NULL),
(599, 28, 20, 3, 1139, NULL, NULL, NULL, '[]', NULL),
(600, 28, 20, 3, 1131, NULL, NULL, NULL, '[]', NULL),
(601, 26, 20, 3, 1134, NULL, NULL, NULL, '[]', NULL),
(602, 26, 20, 3, 1152, NULL, NULL, NULL, '[]', NULL),
(603, 26, 20, 3, 1141, NULL, NULL, NULL, '[]', NULL),
(604, 26, 20, 3, 1156, NULL, NULL, NULL, '[]', NULL),
(605, 26, 20, 3, 1131, NULL, NULL, NULL, '[]', NULL),
(812, 30, 20, 200, 1146, 1, NULL, 0, '[]', NULL),
(813, 30, 20, 3, 1145, NULL, NULL, NULL, '[]', NULL),
(814, 30, 20, 210, 1145, 5, NULL, NULL, '[]', NULL),
(815, 30, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(816, 30, 20, 210, 1142, 5, NULL, NULL, '[]', NULL),
(817, 30, 20, 3, 1127, NULL, NULL, NULL, '[]', NULL),
(818, 30, 20, 210, 1127, 4, NULL, NULL, '[]', NULL),
(819, 30, 20, 3, 1202, NULL, NULL, NULL, '[]', NULL),
(820, 30, 20, 210, 1202, 4, NULL, NULL, '[]', NULL),
(821, 30, 20, 3, 1139, NULL, NULL, NULL, '[]', NULL),
(822, 30, 20, 210, 1139, 4, NULL, NULL, '[]', NULL),
(823, 30, 20, 3, 1145, NULL, NULL, NULL, '[]', NULL),
(824, 30, 20, 210, 1145, 4, NULL, NULL, '[]', NULL),
(825, 30, 20, 200, 1146, NULL, NULL, 1, '[]', NULL),
(826, 30, 20, 3, 1206, NULL, NULL, NULL, '[]', NULL),
(827, 30, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(828, 30, 20, 3, 1140, NULL, NULL, NULL, '[]', NULL),
(844, 31, 20, 200, 1147, 1, NULL, 0, '[]', NULL),
(845, 31, 20, 3, 1144, NULL, NULL, NULL, '[]', NULL),
(846, 31, 20, 210, 1144, 5, NULL, NULL, '[]', NULL),
(847, 31, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(848, 31, 20, 210, 1142, 5, NULL, NULL, '[]', NULL),
(849, 31, 20, 3, 1127, NULL, NULL, NULL, '[]', NULL),
(850, 31, 20, 210, 1127, 4, NULL, NULL, '[]', NULL),
(851, 31, 20, 3, 1202, NULL, NULL, NULL, '[]', NULL),
(852, 31, 20, 210, 1202, 4, NULL, NULL, '[]', NULL),
(853, 31, 20, 3, 1133, NULL, NULL, NULL, '[]', NULL),
(854, 31, 20, 3, 1139, NULL, NULL, NULL, '[]', NULL),
(855, 31, 20, 210, 1139, 4, NULL, NULL, '[]', NULL),
(856, 31, 20, 3, 1144, NULL, NULL, NULL, '[]', NULL),
(857, 31, 20, 210, 1144, 4, NULL, NULL, '[]', NULL),
(858, 31, 20, 200, 1147, NULL, NULL, 1, '[]', NULL),
(963, 32, 20, 200, 1177, 1, NULL, 0, '[]', NULL),
(964, 32, 20, 3, 1170, NULL, NULL, NULL, '[]', NULL),
(965, 32, 20, 210, 1170, 5, NULL, NULL, '[]', NULL),
(966, 32, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(967, 32, 20, 210, 1142, 5, NULL, NULL, '[]', NULL),
(968, 32, 20, 3, 1127, NULL, NULL, NULL, '[]', NULL),
(969, 32, 20, 210, 1127, 4, NULL, NULL, '[]', NULL),
(970, 32, 20, 3, 1202, NULL, NULL, NULL, '[]', NULL),
(971, 32, 20, 210, 1202, 4, NULL, NULL, '[]', NULL),
(972, 32, 20, 3, 1133, NULL, NULL, NULL, '[]', NULL),
(973, 32, 20, 3, 1139, NULL, NULL, NULL, '[]', NULL),
(974, 32, 20, 210, 1139, 4, NULL, NULL, '[]', NULL),
(975, 32, 20, 3, 1170, NULL, NULL, NULL, '[]', NULL),
(976, 32, 20, 210, 1170, 4, NULL, NULL, '[]', NULL),
(977, 32, 20, 200, 1177, NULL, NULL, 1, '[]', NULL),
(978, 32, 20, 3, 1206, NULL, NULL, NULL, '[]', NULL),
(979, 32, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(980, 32, 20, 3, 1140, NULL, NULL, NULL, '[]', NULL),
(1017, 33, 20, 200, 1177, 1, NULL, 0, '[]', NULL),
(1018, 33, 20, 3, 1170, NULL, NULL, NULL, '[]', NULL),
(1019, 33, 20, 210, 1170, 5, NULL, NULL, '[]', NULL),
(1020, 33, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(1021, 33, 20, 210, 1142, 5, NULL, NULL, '[]', NULL),
(1022, 33, 23, 3, 1457, NULL, NULL, NULL, '[]', NULL),
(1023, 33, 23, 210, 1457, 4, NULL, NULL, '[]', NULL),
(1024, 33, 23, 200, 1436, NULL, NULL, 1, '[]', NULL),
(1033, 34, 20, 200, 1177, 1, NULL, 0, '[]', NULL),
(1034, 34, 20, 3, 1170, NULL, NULL, NULL, '[]', NULL),
(1035, 34, 20, 210, 1170, 5, NULL, NULL, '[]', NULL),
(1036, 34, 20, 3, 1142, NULL, NULL, NULL, '[]', NULL),
(1037, 34, 20, 210, 1142, 5, NULL, NULL, '[]', NULL),
(1038, 35, 23, 3, 1457, NULL, NULL, NULL, '[]', NULL),
(1039, 35, 23, 210, 1457, 4, NULL, NULL, '[]', NULL),
(1040, 35, 23, 200, 1436, NULL, NULL, 1, '[]', NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `order_template`
--
ALTER TABLE `order_template`
  ADD PRIMARY KEY (`ID`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `order_template`
--
ALTER TABLE `order_template`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '任务链模板对应子任务主键', AUTO_INCREMENT=1041;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
