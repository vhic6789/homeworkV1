-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 17, 2023 lúc 05:33 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `homework`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `universityId` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `universityId`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 'Công nghệ thông tin', 1, '2023-01-17 08:55:59', 0, '2023-01-17 08:55:59', 0, 1),
(2, 'Ngữ văn', 1, '2023-01-17 08:55:59', 0, '2023-01-17 08:55:59', 0, 1),
(3, 'Việt Nam học', 1, '2023-01-17 08:55:59', 0, '2023-01-17 08:55:59', 0, 1),
(4, 'An toàn thông tin', 2, '2023-01-17 08:55:59', 0, '2023-01-17 08:55:59', 0, 1),
(5, 'Công nghệ thông tin', 2, '2023-01-17 08:55:59', 0, '2023-01-17 08:55:59', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `recipientId` int(11) NOT NULL,
  `content` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `recipientId` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `salary`, `projectId`, `recipientId`, `result`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 70000, 2, 4, 1, '2023-01-11 18:30:14', 1, '2023-01-17 12:30:14', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `listImage` text COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `finishTime` datetime NOT NULL,
  `request` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `result` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `listImage`, `content`, `salary`, `finishTime`, `request`, `result`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 'cần người làm tl tri', 'làm khoảng 20 trang ạ làm nhanh giúp mình', '', 'đề tài: Sự tương đồng và khác biệt giữa triết học Nho gia và triết học Đạo gia ở Trung Quốc thời cổ đại', 150000, '2023-01-19 12:00:00', '', 1, '2023-01-17 17:38:52', 2, '2023-01-17 09:26:52', 0, 1),
(2, 'thuê làm btl csdl', 'làm chi tiết nha, đảm bảo > 8', '', '.......', 50000, '2023-01-14 18:07:31', '', 5, '2023-01-10 18:07:31', 1, '2023-01-17 12:07:31', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `resultproject`
--

CREATE TABLE `resultproject` (
  `id` int(11) NOT NULL,
  `value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `resultproject`
--

INSERT INTO `resultproject` (`id`, `value`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 'chuabatdau', '2023-01-17 09:22:07', 0, '2023-01-17 09:22:07', 0, 1),
(2, 'dangcho', '2023-01-17 09:22:07', 0, '2023-01-17 09:22:07', 0, 1),
(3, 'dangdienra', '2023-01-17 09:22:07', 0, '2023-01-17 09:22:07', 0, 1),
(4, 'ketthuc', '2023-01-17 09:22:07', 0, '2023-01-17 09:22:07', 0, 1),
(5, 'dathanhtoan', '2023-01-17 09:22:07', 0, '2023-01-17 09:22:07', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviewproject`
--

CREATE TABLE `reviewproject` (
  `id` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `evaluate` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `point` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`) VALUES
(1, 'admin', '2023-01-17 09:04:39', 0, '2023-01-17 09:04:39', 0),
(2, 'quantrivien', '2023-01-17 09:04:39', 0, '2023-01-17 09:04:39', 0),
(3, 'nguoidung', '2023-01-17 09:04:39', 0, '2023-01-17 09:04:39', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `skills`
--

INSERT INTO `skills` (`id`, `name`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 'thi hộ', '2023-01-17 08:58:08', 0, '2023-01-17 08:58:08', 0, 1),
(2, 'học hộ', '2023-01-17 08:58:08', 0, '2023-01-17 08:58:08', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `content` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `avata` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `team`
--

INSERT INTO `team` (`id`, `name`, `size`, `content`, `avata`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 'team làm bài thuê uy tín', 5, 'chuyên làm bài thuê các môn kinh tế vĩ mô, vi mô, lượng\r\ncode thuê c++, java, c#, python,...', 'hdy73h.jpg', '2023-01-17 20:16:28', 1, '2023-01-17 14:16:28', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nạp tiền, rút tiên',
  `money` int(11) NOT NULL,
  `result` int(11) NOT NULL COMMENT '1-thành công; 0-đang chờ',
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `code`, `type`, `money`, `result`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 'hu863d', 'naptien', 150000, 1, '2023-01-17 09:17:59', 1, '2023-01-17 09:18:00', 0, 1),
(2, '8i90o', 'naptien', 500000, 1, '2023-01-17 09:21:00', 2, '2023-01-17 09:21:00', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `universities`
--

CREATE TABLE `universities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `universities`
--

INSERT INTO `universities` (`id`, `name`, `code`, `area`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 'Đại học sư phạm 1', 'HNUE', 'miền bắc', '2023-01-17 08:53:07', 0, '2023-01-17 08:53:07', 0, 1),
(2, 'Học viện bưu chính viễn thông', 'PTIT', 'miền bắc', '2023-01-17 08:53:07', 0, '2023-01-17 08:53:07', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fullName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `university` int(11) NOT NULL,
  `faculty` int(11) NOT NULL,
  `facebook` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `zalo` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `telegram` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `avata` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `introduce` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `skills` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `fullName`, `email`, `phone`, `university`, `faculty`, `facebook`, `zalo`, `telegram`, `link`, `avata`, `introduce`, `skills`, `role`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`, `status`) VALUES
(1, 'anhvu', '123456', 'anh vũ', 'avuthpt@gmail.com', '0123456789', 1, 1, 'fb.com/anhvu', 'zalo.com/anhvu', 'telegram.com/anhvu', 'anhvuprofile.me', 'j34hsd894.jpg', 'mình hiện là sinh viên khóa 70 HNUE', 'làm bài thuê', 3, '2023-01-17 09:06:08', 0, '2023-01-17 09:06:08', 0, 1),
(2, 'vanhoang', '123456', 'Lương Văn Hoàng', 'lvh123@gmail.com', '0123456788', 1, 1, 'fb.com/lvh', 'zalo.com/lvh', 'telegram.com/lvh', 'github.com/lvh', 'sdkhf8322.jpg', 'mình chuyên ngành cntt, sp nhiệt tình', 'thi hộ', 3, '2023-01-17 09:06:08', 0, '2023-01-17 09:06:08', 0, 1),
(3, 'trungquy', '123456', 'trung', 'nqt@gmail.com', '34325234', 2, 4, 'fb.com/nqt', 'zalo.com/nqt', 'telegram.com/nqt', '...', 'fd7.jpg', 'có kinh nghiệm đi thi hộ nha', 'thi hộ; làm bài thuê; làm thẻ sv', 3, '2023-01-17 09:06:08', 0, '2023-01-17 09:06:08', 0, 1),
(4, 'thaiha', '123456', 'thái hà', 'th@gmail.com', '0123456789', 1, 2, '', '', '', '', '', '', '', 3, '2023-01-17 12:01:41', 0, '2023-01-17 12:01:41', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `nameBank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numberBank` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(11) NOT NULL,
  `moneyFreeze` int(11) NOT NULL,
  `teamId` int(11) DEFAULT NULL,
  `reputation` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `userdetails`
--

INSERT INTO `userdetails` (`id`, `nameBank`, `numberBank`, `money`, `moneyFreeze`, `teamId`, `reputation`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`) VALUES
(4, 'MB', '00000000', 80000, 0, 1, 0, '2023-01-17 09:16:47', 1, '2023-01-17 09:16:47', 0),
(5, 'MB', '00000009', 500000, 0, 1, 0, '2023-01-17 09:17:20', 2, '2023-01-17 09:17:20', 0),
(6, '', '', 70000, 0, NULL, 0, '2023-01-17 12:05:31', 4, '2023-01-17 12:05:31', 0),
(7, 'TP', '3333', 0, 0, NULL, 0, '2023-01-17 12:06:33', 3, '2023-01-17 12:06:33', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `salaryAgreement` int(11) NOT NULL,
  `content` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `result` int(11) NOT NULL COMMENT '0-chưa duyệt; 1-đã duyệt',
  `createDate` datetime NOT NULL,
  `createBy` int(11) NOT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `projectId`, `salaryAgreement`, `content`, `result`, `createDate`, `createBy`, `modifiedDate`, `modifiedBy`) VALUES
(1, 1, 200000, '200k thì làm nha, tối nay xong luôn', 0, '2023-01-17 11:41:42', 1, '2023-01-17 11:41:42', 0),
(2, 1, 300000, 'bao >8 nha', 0, '2023-01-17 11:41:42', 3, '2023-01-17 11:41:42', 0),
(5, 2, 70000, '70k nha', 1, '2023-01-11 18:10:11', 4, '2023-01-17 12:10:10', 0),
(6, 2, 100000, 'bài này khó nha', 0, '2023-01-11 18:10:11', 3, '2023-01-17 12:10:10', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `universityId` (`universityId`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createBy` (`createBy`),
  ADD KEY `recipientId` (`recipientId`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectId` (`projectId`),
  ADD KEY `recipientId` (`recipientId`),
  ADD KEY `createBy` (`createBy`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createBy` (`createBy`),
  ADD KEY `result` (`result`);

--
-- Chỉ mục cho bảng `resultproject`
--
ALTER TABLE `resultproject`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviewproject`
--
ALTER TABLE `reviewproject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectId` (`projectId`),
  ADD KEY `createBy` (`createBy`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createBy` (`createBy`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createBy` (`createBy`);

--
-- Chỉ mục cho bảng `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `university` (`university`),
  ADD KEY `faculty` (`faculty`);

--
-- Chỉ mục cho bảng `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teamId` (`teamId`),
  ADD KEY `createBy` (`createBy`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectId` (`projectId`),
  ADD KEY `createBy` (`createBy`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `resultproject`
--
ALTER TABLE `resultproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `reviewproject`
--
ALTER TABLE `reviewproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `universities`
--
ALTER TABLE `universities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `faculties`
--
ALTER TABLE `faculties`
  ADD CONSTRAINT `faculties_ibfk_1` FOREIGN KEY (`universityId`) REFERENCES `universities` (`id`);

--
-- Các ràng buộc cho bảng `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`createBy`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`recipientId`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`recipientId`) REFERENCES `wishlists` (`createBy`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`createBy`) REFERENCES `project` (`createBy`);

--
-- Các ràng buộc cho bảng `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`createBy`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`result`) REFERENCES `resultproject` (`id`);

--
-- Các ràng buộc cho bảng `reviewproject`
--
ALTER TABLE `reviewproject`
  ADD CONSTRAINT `reviewproject_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `reviewproject_ibfk_2` FOREIGN KEY (`createBy`) REFERENCES `project` (`createBy`);

--
-- Các ràng buộc cho bảng `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`createBy`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`createBy`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`university`) REFERENCES `universities` (`id`),
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`faculty`) REFERENCES `faculties` (`id`);

--
-- Các ràng buộc cho bảng `userdetails`
--
ALTER TABLE `userdetails`
  ADD CONSTRAINT `userdetails_ibfk_2` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `userdetails_ibfk_3` FOREIGN KEY (`createBy`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `project` (`id`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`createBy`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
