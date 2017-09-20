-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-09-20 07:41:16
-- 伺服器版本: 10.1.21-MariaDB
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `ark`
--
CREATE DATABASE IF NOT EXISTS `ark` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ark`;

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `imgicon` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `datetime`, `img`, `imgicon`) VALUES
(3, '「桌」住好心情～桌遊紓壓活動', '每天都有忙不完的事情 數據、書本、paper總占據自己的心思 生活中似乎只剩下忙碌和壓力… 12月，讓我們一起走出房門 透過有趣的桌遊與好吃點心 在輕鬆歡樂中釋放身心積累許久的壓力 重新「桌」回你我的好心情！', '2017-03-10 00:00:00', 'infor_click_pic03_1024.png', 'information_pic03_02.png'),
(4, '跑跳好心情', '為了讓學校的同學們認識跳繩的好處，在活動期間內在校進行多項宣導活動，如「Happy Jumping」、「班際跳繩PK賽」、「三人團體跳繩PK賽」、「跳繩接龍，快樂follow up」、「跳繩555」校內推廣活動；「樂動早餐會」、「親子樂動跳繩日」、「跳繩列車趴趴GO」社區推廣活動；「FB打卡活動」、「跳繩行腳遊臺灣」網路推廣活動及「親子跑跳好心情」、「Happy Jumping」大型戶外推廣活動，在活動推廣期間內，合作學校師生的跳繩累積次數超過八億六千萬下，讓跳繩活動在校園間成為風潮，也將跳繩活動推廣至少三萬五千個家庭當中。透過活動的推廣及媒體傳播，讓全台民眾都能因此認識跳繩運動的好處，促使其建立跳繩運動的習慣。2016年除延續2015年將推廣對象自小學延伸推廣到國中，更特別設計有趣的跳繩操，讓學生們透過跳繩操，養成每週跳繩5次，每次5分鐘，5分鐘累積500下的「跳繩555」運動紓壓習慣！', '2017-03-08 00:00:00', 'infor_click_pic02_1024.png', 'information_pic02_02.png'),
(5, '「活躍老年-照片募集比賽」開跑了!', '你擁有精彩又多元的老年生活嗎?你是個熱愛運動又有多元興趣的長者嗎?\r\n            想跟大家分享你的活躍老年生活嗎?想將自己的正向能量傳遞給更多人嗎?', '2017-03-11 00:00:00', 'infor_click_pic04_720.png', 'information_pic04_02.png'),
(6, '線上互動紓壓遊戲', '上班族整天待在辦公室，工作起來難免會覺得壓力很大，導致身心靈都很煩躁，\r\n            此時不妨來玩玩簡單的小遊戲，幫助你釋放壓力，可以好好發洩一番。', '2017-03-13 00:00:00', 'infor_click_pic05_1024.png', 'information_pic05_02.png'),
(7, '微笑嘉年華525活力青少女行動', '你愛自己嗎?你每天都能自信地展開微笑嗎?\r\n            鼓勵青少女建立自我肯定的能力，於每年5/25\r\n            舉辦我愛我525大型宣導活動，鼓勵大家自信成長，擁抱美好。', '2017-03-15 00:00:00', 'infor_click_pic06_1024.png', 'information_pic06_02.png');

-- --------------------------------------------------------

--
-- 資料表結構 `receive_boat`
--

CREATE TABLE `receive_boat` (
  `receive_id` bigint(20) NOT NULL,
  `boat_id` bigint(20) NOT NULL,
  `receive_user` bigint(20) NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `receive_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_receive` tinyint(1) NOT NULL DEFAULT '0',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `receive_boat`
--

INSERT INTO `receive_boat` (`receive_id`, `boat_id`, `receive_user`, `content`, `receive_time`, `create_time`, `is_receive`, `is_delete`) VALUES
(55, 27, 0, '', NULL, '2017-03-17 12:15:21', 0, 0),
(56, 28, 0, '', NULL, '2017-03-17 12:24:20', 0, 0),
(57, 27, 18, '', NULL, '2017-03-17 12:24:43', 0, 0),
(58, 28, 12, '吃屎', '2017-06-05 18:22:11', '2017-03-17 12:25:32', 1, 0),
(59, 29, 0, '', NULL, '2017-03-17 12:26:37', 0, 0),
(60, 30, 0, '', NULL, '2017-03-17 12:26:52', 0, 0),
(61, 27, 19, '', NULL, '2017-03-17 12:27:08', 0, 0),
(62, 28, 19, '', NULL, '2017-03-17 12:27:08', 0, 0),
(63, 29, 17, '', NULL, '2017-03-17 12:33:02', 0, 0),
(64, 30, 17, '', NULL, '2017-03-17 12:33:02', 0, 0),
(65, 27, 17, '', NULL, '2017-03-17 12:33:02', 0, 0),
(66, 28, 17, '', NULL, '2017-03-17 12:33:02', 0, 0),
(67, 29, 23, '你好~可以認識認識嗎?', '2017-03-17 16:01:16', '2017-03-17 15:58:39', 1, 0),
(68, 30, 23, '超帥~人生勝利組~', '2017-03-17 16:00:51', '2017-03-17 15:58:39', 1, 0),
(69, 27, 23, 'Mojo', '2017-03-17 16:01:58', '2017-03-17 15:58:39', 1, 0),
(70, 28, 23, '對啊!終於要回暖了...吧XD', '2017-03-17 16:01:43', '2017-03-17 15:58:39', 1, 0),
(71, 31, 0, '', NULL, '2017-03-17 16:00:07', 0, 0),
(72, 32, 0, '', NULL, '2017-03-17 16:25:29', 0, 0),
(73, 33, 0, '', NULL, '2017-06-05 14:39:20', 0, 0),
(74, 33, 12, '', NULL, '2017-06-05 14:42:11', 0, 0),
(75, 34, 0, '', NULL, '2017-06-05 14:45:32', 0, 0),
(76, 33, 27, '想說點甚麼..........', '2017-06-05 14:46:08', '2017-06-05 14:45:40', 1, 0),
(77, 35, 0, '', NULL, '2017-06-05 14:46:16', 0, 0),
(78, 34, 25, '', NULL, '2017-06-05 14:47:18', 0, 0),
(79, 36, 0, '', NULL, '2017-06-05 15:51:56', 0, 0),
(80, 37, 0, '', NULL, '2017-06-05 15:53:03', 0, 0),
(81, 38, 0, '', NULL, '2017-06-05 18:23:05', 0, 0),
(82, 39, 0, '', NULL, '2017-06-08 22:41:08', 0, 0),
(83, 40, 0, '', NULL, '2017-06-08 22:41:25', 0, 0),
(84, 39, 34, '', NULL, '2017-06-08 22:43:30', 0, 0),
(85, 40, 34, '西堤', '2017-06-08 22:44:07', '2017-06-08 22:43:30', 1, 0),
(86, 41, 0, '', NULL, '2017-06-09 10:24:10', 0, 0),
(87, 42, 0, '', NULL, '2017-06-09 10:25:28', 0, 0),
(88, 41, 34, '', NULL, '2017-06-09 10:27:43', 0, 0),
(89, 42, 34, '好棒', '2017-06-09 13:19:57', '2017-06-09 10:27:43', 1, 0),
(90, 43, 0, '', NULL, '2017-06-09 13:19:17', 0, 0),
(91, 43, 35, '', NULL, '2017-06-09 13:21:53', 0, 0),
(92, 41, 36, '', NULL, '2017-06-09 13:27:40', 0, 0),
(93, 42, 36, '', NULL, '2017-06-09 13:27:40', 0, 0),
(94, 43, 36, '', '2017-06-09 14:15:32', '2017-06-09 13:27:40', 1, 0),
(95, 44, 0, '', NULL, '2017-06-09 14:07:10', 0, 0),
(96, 44, 33, '第三艘船', '2017-06-13 10:56:16', '2017-06-09 14:08:32', 1, 0),
(97, 41, 33, '', NULL, '2017-06-09 14:08:32', 0, 0),
(98, 42, 33, '', NULL, '2017-06-09 14:08:32', 0, 0),
(99, 43, 33, '', NULL, '2017-06-09 14:08:32', 0, 0),
(100, 45, 0, '', NULL, '2017-06-13 10:55:21', 0, 0),
(101, 46, 0, '', NULL, '2017-06-13 11:12:01', 0, 0),
(102, 45, 37, '哈哈哈，太廢了吧~~~ 不過真的好熱喔 辛苦啦~~~~', '2017-06-13 11:13:11', '2017-06-13 11:12:24', 1, 0),
(103, 46, 38, '', NULL, '2017-06-13 11:16:13', 0, 0),
(104, 45, 38, '', NULL, '2017-06-13 11:16:13', 0, 0),
(105, 47, 0, '', NULL, '2017-06-13 11:24:18', 0, 0),
(106, 46, 36, '', NULL, '2017-06-13 11:27:53', 0, 0),
(107, 45, 36, '', NULL, '2017-06-13 11:27:53', 0, 0),
(108, 48, 0, '', NULL, '2017-06-13 13:01:28', 0, 0),
(109, 49, 0, '', NULL, '2017-06-13 14:41:57', 0, 0),
(110, 47, 33, '', NULL, '2017-06-13 14:42:24', 0, 0),
(111, 48, 33, '', NULL, '2017-06-13 14:42:24', 0, 0),
(112, 46, 33, '', NULL, '2017-06-13 14:42:24', 0, 0),
(113, 50, 0, '', NULL, '2017-06-29 00:28:40', 0, 0),
(114, 50, 40, '我也這麼覺得，我還去龜山島玩呢！', '2017-06-29 00:31:44', '2017-06-29 00:31:03', 1, 0),
(115, 51, 0, '', NULL, '2017-08-30 01:31:34', 0, 0),
(116, 52, 0, '', NULL, '2017-08-31 13:31:26', 0, 0),
(117, 53, 0, '', NULL, '2017-08-31 13:31:50', 0, 0),
(118, 52, 39, '吃鹹酥雞吧\r\n', '2017-08-31 14:03:18', '2017-08-31 13:32:05', 1, 0),
(119, 53, 39, '', NULL, '2017-08-31 13:32:05', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `send_boat`
--

CREATE TABLE `send_boat` (
  `boat_id` bigint(20) NOT NULL COMMENT '流水號',
  `send_user` int(11) NOT NULL COMMENT '發送者的id',
  `title` text COLLATE utf8_unicode_ci NOT NULL COMMENT '標題',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '內容',
  `send_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '送出時間',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否刪除',
  `is_report` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被舉報',
  `send_count` int(11) NOT NULL DEFAULT '0' COMMENT '送出計數器'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `send_boat`
--

INSERT INTO `send_boat` (`boat_id`, `send_user`, `title`, `content`, `send_time`, `is_delete`, `is_report`, `send_count`) VALUES
(27, 12, '今天天氣真好', '我好想出去環島喔~', '2017-03-17 12:15:18', 0, 0, 4),
(28, 18, '', '今天天氣真好~~~~', '2017-03-17 12:24:18', 0, 0, 4),
(29, 19, '', 'hiiiii', '2017-03-17 12:26:35', 0, 0, 2),
(30, 19, '', '育榮好帥\r\n', '2017-03-17 12:26:49', 0, 0, 2),
(31, 23, '比賽加油囉!', '學弟妹好棒~加油加油!', '2017-03-17 16:00:07', 0, 0, 0),
(32, 19, '', '趙宅男', '2017-03-17 16:25:29', 0, 0, 0),
(33, 25, '', '', '2017-06-05 14:39:20', 0, 0, 2),
(34, 27, '', '這邊一直下雨................................\r\n', '2017-06-05 14:45:32', 0, 0, 1),
(35, 25, '', '註冊的新帳號進不去TAT', '2017-06-05 14:46:16', 0, 0, 0),
(36, 12, '顆顆顆', '454654556465465465', '2017-06-05 15:51:56', 0, 0, 0),
(37, 25, '成功了！', 'YA', '2017-06-05 15:53:03', 0, 0, 0),
(38, 12, '你好', 'ER', '2017-06-05 18:23:05', 0, 0, 0),
(39, 33, '', 'Hi!!!!!!!!!!!!!!!!!!!', '2017-06-08 22:41:08', 0, 0, 1),
(40, 33, '', '你今天吃甚麼呢?', '2017-06-08 22:41:25', 0, 0, 1),
(41, 35, '早前往去哦去哦去哦去哦全球哦去哦去哦去哦去哦去哦去哦去哦去哦去哦', '顆顆企鵝酷企鵝企鵝七顆顆顆顆庫克苦苦苦苦苦苦苦苦苦苦希望下下星期況且我期望快快去問看哦可哦可哦前往企鵝企鵝企鵝看哦可哦哦全球呃呃企鵝去企鵝企鵝去哦可哦個永遠的思念看喔人哦社區餓\r\n\r\n\r\n\r\n看哦可哦可去哦前往去玩\r\n\r\n\r\n苦苦哦苦苦哦前往去', '2017-06-09 10:24:10', 0, 0, 3),
(42, 35, '早安', '美麗的早晨 因該要吃一份完美的早餐', '2017-06-09 10:25:28', 0, 0, 3),
(43, 34, '天氣很好', '天氣很好', '2017-06-09 13:19:17', 0, 0, 3),
(44, 34, '第二艘船', '第二艘船', '2017-06-09 14:07:10', 0, 0, 1),
(45, 33, '今天好熱哦', '我們在期末展可是冷氣壞掉了好熱哦', '2017-06-13 10:55:21', 0, 0, 3),
(46, 37, '今天好累喔 又好熱喔', '今天數位系大學部及玩遊所在篤行樓專題展，大家快來玩喔~~~~~', '2017-06-13 11:12:01', 0, 0, 3),
(47, 36, '天氣很熱', '天氣超熱', '2017-06-13 11:24:18', 0, 0, 1),
(48, 36, '', '論文還要修改 ㄚㄚㄚㄚㄚㄚㄚㄚ\r\n', '2017-06-13 13:01:28', 0, 0, 1),
(49, 33, '天氣很熱', '快熱昏了', '2017-06-13 14:41:57', 0, 0, 0),
(50, 39, '今天的天氣很好', '我好喜歡今天的天氣，收到船的你是否和我一樣呢？', '2017-06-29 00:28:40', 0, 0, 1),
(51, 39, '晚安', '', '2017-08-30 01:31:34', 0, 0, 0),
(52, 36, '好熱啊~~~', '下午想吃甚麼消夜呢', '2017-08-31 13:31:26', 0, 0, 1),
(53, 36, '我不要聽!!', '要怎麼才能讓世界安靜呢\r\n', '2017-08-31 13:31:50', 0, 0, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `user_account`
--

CREATE TABLE `user_account` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '使用者id',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '使用者帳號',
  `passwd` text COLLATE utf8_unicode_ci NOT NULL COMMENT '密碼',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '是否啟用',
  `registration_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '註冊日期',
  `last_login_date` datetime NOT NULL COMMENT '最後登入是其',
  `last_boat_date` datetime DEFAULT NULL COMMENT '最後收船時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `user_account`
--

INSERT INTO `user_account` (`id`, `email`, `passwd`, `enabled`, `registration_date`, `last_login_date`, `last_boat_date`) VALUES
(32, 'k4220@yahoo.com.tw', 'V6deKH/6uwBs5v2GRzsO5Q==', 0, '2017-06-08 22:33:56', '2017-06-08 22:38:11', NULL),
(33, 'ling200916@yahoo.com.tw', 'V6deKH/6uwBs5v2GRzsO5Q==', 1, '2017-06-08 22:40:29', '2017-06-13 14:40:49', '2017-06-13 14:42:24'),
(34, 'g112233445598@gmail.com', 'BvL6KVhll31yU398m54XzQ==', 1, '2017-06-08 22:42:44', '2017-07-11 22:39:56', '2017-06-09 10:27:43'),
(35, 'a0920336610@gmail.com', 'C056Dl/oStNftflbnO6seQ==', 1, '2017-06-09 10:20:28', '2017-06-09 13:21:44', '2017-06-09 13:21:53'),
(36, 'c.p.shyuan@gmail.com', 'YgmASVIiWrPRQ0gwe1pKJw==', 1, '2017-06-09 13:18:03', '2017-08-31 13:31:01', '2017-06-13 11:27:53'),
(37, 'yulon805@gmail.com', '4QrcOUm6Wau+VuBX8g+IPg==', 1, '2017-06-13 11:08:40', '2017-06-13 11:11:11', '2017-06-13 11:12:24'),
(38, 'karta004941@gmail.com', 'ChN/gpxTt2XdKlACn3w1Og==', 1, '2017-06-13 11:14:15', '2017-06-13 11:16:09', '2017-06-13 11:16:13'),
(39, 'test@gmail.com', '4QrcOUm6Wau+VuBX8g+IPg==', 1, '2017-06-29 00:27:23', '2017-08-31 14:02:52', '2017-08-31 13:32:05'),
(40, 'test2@gmail.com', '4QrcOUm6Wau+VuBX8g+IPg==', 1, '2017-06-29 00:30:08', '2017-06-29 00:30:59', '2017-06-29 00:31:03'),
(41, 'test022504@gmail.com', 'gdyb21LQTcIANtvYMT7QVQ==', 0, '2017-07-08 16:33:51', '2017-07-08 16:33:51', NULL),
(42, '1234', 'gdyb21LQTcIANtvYMT7QVQ==', 0, '2017-07-13 15:02:17', '2017-07-13 15:02:17', NULL),
(43, '', '1B2M2Y8AsgTpgAmY7PhCfg==', 0, '2017-07-13 15:15:23', '2017-07-13 15:15:23', NULL),
(44, 'g', 'svX/R0NmcbblM9jcNhSEXQ==', 0, '2017-07-14 22:01:29', '2017-07-14 22:01:29', NULL);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `receive_boat`
--
ALTER TABLE `receive_boat`
  ADD PRIMARY KEY (`receive_id`);

--
-- 資料表索引 `send_boat`
--
ALTER TABLE `send_boat`
  ADD PRIMARY KEY (`boat_id`);

--
-- 資料表索引 `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `receive_boat`
--
ALTER TABLE `receive_boat`
  MODIFY `receive_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- 使用資料表 AUTO_INCREMENT `send_boat`
--
ALTER TABLE `send_boat`
  MODIFY `boat_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=54;
--
-- 使用資料表 AUTO_INCREMENT `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者id', AUTO_INCREMENT=45;--
-- 資料庫： `ark_app`
--
CREATE DATABASE IF NOT EXISTS `ark_app` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ark_app`;

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `imgicon` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `datetime`, `img`, `imgicon`) VALUES
(3, '「桌」住好心情～桌遊紓壓活動', '每天都有忙不完的事情 數據、書本、paper總占據自己的心思 生活中似乎只剩下忙碌和壓力… 12月，讓我們一起走出房門 透過有趣的桌遊與好吃點心 在輕鬆歡樂中釋放身心積累許久的壓力 重新「桌」回你我的好心情！', '2017-03-10 00:00:00', 'infor_click_pic03_1024.png', 'information_pic03_02.png'),
(4, '跑跳好心情', '為了讓學校的同學們認識跳繩的好處，在活動期間內在校進行多項宣導活動，如「Happy Jumping」、「班際跳繩PK賽」、「三人團體跳繩PK賽」、「跳繩接龍，快樂follow up」、「跳繩555」校內推廣活動；「樂動早餐會」、「親子樂動跳繩日」、「跳繩列車趴趴GO」社區推廣活動；「FB打卡活動」、「跳繩行腳遊臺灣」網路推廣活動及「親子跑跳好心情」、「Happy Jumping」大型戶外推廣活動，在活動推廣期間內，合作學校師生的跳繩累積次數超過八億六千萬下，讓跳繩活動在校園間成為風潮，也將跳繩活動推廣至少三萬五千個家庭當中。透過活動的推廣及媒體傳播，讓全台民眾都能因此認識跳繩運動的好處，促使其建立跳繩運動的習慣。2016年除延續2015年將推廣對象自小學延伸推廣到國中，更特別設計有趣的跳繩操，讓學生們透過跳繩操，養成每週跳繩5次，每次5分鐘，5分鐘累積500下的「跳繩555」運動紓壓習慣！', '2017-03-08 00:00:00', 'infor_click_pic02_1024.png', 'information_pic02_02.png'),
(5, '「活躍老年-照片募集比賽」開跑了!', '你擁有精彩又多元的老年生活嗎?你是個熱愛運動又有多元興趣的長者嗎?\r\n            想跟大家分享你的活躍老年生活嗎?想將自己的正向能量傳遞給更多人嗎?', '2017-03-11 00:00:00', 'infor_click_pic04_720.png', 'information_pic04_02.png'),
(6, '線上互動紓壓遊戲', '上班族整天待在辦公室，工作起來難免會覺得壓力很大，導致身心靈都很煩躁，\r\n            此時不妨來玩玩簡單的小遊戲，幫助你釋放壓力，可以好好發洩一番。', '2017-03-13 00:00:00', 'infor_click_pic05_1024.png', 'information_pic05_02.png'),
(7, '微笑嘉年華525活力青少女行動', '你愛自己嗎?你每天都能自信地展開微笑嗎?\r\n            鼓勵青少女建立自我肯定的能力，於每年5/25\r\n            舉辦我愛我525大型宣導活動，鼓勵大家自信成長，擁抱美好。', '2017-03-15 00:00:00', 'infor_click_pic06_1024.png', 'information_pic06_02.png');

-- --------------------------------------------------------

--
-- 資料表結構 `receive_boat`
--

CREATE TABLE `receive_boat` (
  `receiveId` bigint(20) NOT NULL,
  `boatId` bigint(20) NOT NULL,
  `receiveUser` bigint(20) NOT NULL,
  `receiveBoatContent` text COLLATE utf8_unicode_ci,
  `receiveTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `isReceive` tinyint(1) NOT NULL DEFAULT '0',
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `boatLatitude` text COLLATE utf8_unicode_ci NOT NULL,
  `boatLongitude` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `receive_boat`
--

INSERT INTO `receive_boat` (`receiveId`, `boatId`, `receiveUser`, `receiveBoatContent`, `receiveTime`, `createTime`, `isReceive`, `isDelete`, `boatLatitude`, `boatLongitude`) VALUES
(122, 59, 0, '我也要去那裡比賽\n真巧！', '2017-07-18 08:48:03', '2017-07-18 08:48:03', 0, 0, '24.178768149999993', '120.65277603999996'),
(125, 59, 0, '逢甲夜市很多好吃的', '2017-07-18 08:55:23', '2017-07-18 08:55:23', 0, 0, '24.17959138853906', '120.64880267260448'),
(128, 71, 0, '台中', '2017-07-18 11:18:04', '2017-07-18 11:18:04', 0, 0, '24.179701235570246', '120.64863681376602'),
(129, 59, 0, '我也是', '2017-07-18 14:31:49', '2017-07-18 14:31:49', 0, 0, '24.17975543407493', '120.64853872066833'),
(130, 71, 0, '', '2017-07-18 22:28:07', '2017-07-18 22:28:07', 0, 0, '25.020299839300204', '121.5299604332748'),
(131, 69, 0, '', '2017-08-12 12:19:27', '2017-08-12 12:19:27', 0, 0, '37.785834', '-122.406417'),
(132, 59, 0, 'Ok', '2017-08-14 21:03:45', '2017-08-14 21:03:45', 0, 0, '37.785834', '-122.406417');

-- --------------------------------------------------------

--
-- 資料表結構 `send_boat`
--

CREATE TABLE `send_boat` (
  `boatId` bigint(20) NOT NULL COMMENT '流水號',
  `sendUser` int(11) NOT NULL COMMENT '發送者的id',
  `boatTitle` text COLLATE utf8_unicode_ci NOT NULL COMMENT '標題',
  `boatContent` text COLLATE utf8_unicode_ci NOT NULL COMMENT '內容',
  `boatType` int(11) NOT NULL,
  `sendTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '送出時間',
  `isDelete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否刪除',
  `isReport` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否被舉報',
  `touchCount` int(11) NOT NULL DEFAULT '0' COMMENT '觸碰使用者數量',
  `receiveCount` int(11) NOT NULL DEFAULT '0' COMMENT '回復數量',
  `boatLatitude` text COLLATE utf8_unicode_ci NOT NULL COMMENT '經度',
  `boatLongitude` text COLLATE utf8_unicode_ci NOT NULL COMMENT '緯度'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `send_boat`
--

INSERT INTO `send_boat` (`boatId`, `sendUser`, `boatTitle`, `boatContent`, `boatType`, `sendTime`, `isDelete`, `isReport`, `touchCount`, `receiveCount`, `boatLatitude`, `boatLongitude`) VALUES
(59, 0, '到逢甲大學參加比賽', '天氣很好\n很開心', 0, '2017-07-18 08:23:34', 0, 0, 0, 0, '24.178768150000025', '120.65277603995061'),
(69, 0, '有一個', '其實我有個秘密\n我藏了一百萬在家', 1, '2017-07-18 08:47:24', 0, 0, 0, 0, '24.179604919020406', '120.64880540882982'),
(70, 0, '猶豫', '我想跟一個人告白\n該怎麼做', 1, '2017-07-18 08:48:06', 0, 0, 0, 0, '24.179595551910214', '120.64876464052685'),
(71, 0, '哈囉', '好想出去玩\n去哪邊好呢', 1, '2017-07-18 08:49:08', 0, 0, 0, 0, '24.180031125580015', '120.64872210204102'),
(72, 0, '陪伴', '想認養一隻寵物...\n一個人很孤單', 0, '2017-07-18 09:01:31', 0, 0, 0, 0, '24.179607356528454', '120.64880312501634'),
(74, 0, '', '今天很開心\n', 3, '2017-07-18 11:17:43', 0, 0, 0, 0, '24.179701235570246', '120.64863681376602'),
(75, 0, '今天去比賽', '很高興', 0, '2017-07-18 14:12:09', 0, 0, 0, 0, '24.17974053901719', '120.64851927013335'),
(76, 0, 'Aaaa', 'Cthulhu', 0, '2017-08-14 21:03:03', 0, 0, 0, 0, '37.785834', '-122.406417'),
(77, 0, '', '', 0, '2017-09-05 16:53:49', 0, 0, 0, 0, '37.785834', '-122.406417');

-- --------------------------------------------------------

--
-- 資料表結構 `user_account`
--

CREATE TABLE `user_account` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '使用者id',
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '使用者帳號',
  `passwd` text COLLATE utf8_unicode_ci NOT NULL COMMENT '密碼',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '是否啟用',
  `registration_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '註冊日期',
  `last_login_date` datetime NOT NULL COMMENT '最後登入是其',
  `last_boat_date` datetime DEFAULT NULL COMMENT '最後收船時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `user_account`
--

INSERT INTO `user_account` (`id`, `email`, `passwd`, `enabled`, `registration_date`, `last_login_date`, `last_boat_date`) VALUES
(45, '', '1B2M2Y8AsgTpgAmY7PhCfg==', 0, '2017-07-18 08:12:20', '2017-07-18 08:12:20', NULL),
(46, 'test', 'CY9rzUYh03PK3k6DJie09g==', 0, '2017-07-18 08:59:39', '2017-07-18 08:59:39', NULL);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `receive_boat`
--
ALTER TABLE `receive_boat`
  ADD PRIMARY KEY (`receiveId`);

--
-- 資料表索引 `send_boat`
--
ALTER TABLE `send_boat`
  ADD PRIMARY KEY (`boatId`);

--
-- 資料表索引 `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `receive_boat`
--
ALTER TABLE `receive_boat`
  MODIFY `receiveId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- 使用資料表 AUTO_INCREMENT `send_boat`
--
ALTER TABLE `send_boat`
  MODIFY `boatId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=78;
--
-- 使用資料表 AUTO_INCREMENT `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者id', AUTO_INCREMENT=47;--
-- 資料庫： `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 資料表結構 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 資料表的匯出資料 `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ark_app\",\"table\":\"receive_boat\"},{\"db\":\"ark_app\",\"table\":\"send_boat\"},{\"db\":\"ark_app\",\"table\":\"user_account\"},{\"db\":\"ark\",\"table\":\"user_account\"},{\"db\":\"ark_app\",\"table\":\"news\"},{\"db\":\"ark\",\"table\":\"receive_boat\"}]');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 資料表的匯出資料 `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'ark_app', 'receive_boat', '[]', '2017-09-02 08:51:22');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 資料表的匯出資料 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-06-27 14:24:33', '{\"lang\":\"zh_TW\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 資料表索引 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 資料表索引 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 資料表索引 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 資料表索引 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 資料表索引 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 資料表索引 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 資料表索引 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 資料表索引 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 資料表索引 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 資料表索引 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 資料表索引 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- 資料庫： `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
