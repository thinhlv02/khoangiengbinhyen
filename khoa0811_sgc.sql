-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 04, 2019 lúc 08:42 AM
-- Phiên bản máy phục vụ: 5.6.41-cll-lve
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `khoa0811_sgc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'thinhlv', '103068fd67416005d65097fba26f4ff0', 'Admin thinhlv'),
(2, 'khoangiengbinhyen', '1ccfd4a6a190d6afa3734312667423e9', 'admin binhyen'),
(3, 'admin', 'f84d010f0cf433901f263cd680993d12', 'adminbinhyen');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_recruit` varchar(50) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address_en` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `office_en` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `company_en` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `phone`, `email`, `email_recruit`, `address`, `address_en`, `office`, `office_en`, `company`, `company_en`) VALUES
(1, '0908 902 902', 'Dntnnamyen1985@gmail.com ', 'Dntnnamyen1985@gmail.com ', '11/7Khe Sanh Đà Lạt', '11/7 Khe Sanh Đà Lạt', '11/7 Khe Sanh Đà Lạt', '11/7 Khe Sanh Đà Lạt', 'CTY CP Đầu Tư Tư Vấn Bình Yên', 'CTY CP Đầu Tư Tư Vấn Bình Yên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1: dich vu, 2: timeline, 3: phong cach',
  `prioriti` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `icon` varchar(40) NOT NULL,
  `img` varchar(100) NOT NULL,
  `time` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `content`
--

INSERT INTO `content` (`id`, `type`, `prioriti`, `title`, `title_en`, `content`, `content_en`, `icon`, `img`, `time`) VALUES
(1, 2, 1, 'Về chúng tôi', '', '<p><img alt=\"\" src=\"/upload/anhchitiet/images/7d95ff08fb391a674328.jpg\" style=\"height:764px; width:520px\" /></p>\r\n\r\n<p><span style=\"font-size:14px\">Khoan giếng B&igrave;nh Y&ecirc;n ch&uacute;ng t&ocirc;i chuy&ecirc;n khoan giếng gia đ&igrave;nh &amp; khoan giếng c&ocirc;ng nghiệp với 25 năm kinh nghiệm, đội ngũ nh&acirc;n vi&ecirc;n tay nghề cao, gi&agrave;u kinh nghiệm sẽ lu&ocirc;n mang đến sự an t&acirc;m v&agrave; h&agrave;i l&ograve;ng nhất cho Qu&yacute; kh&aacute;ch. - Khoan giếng c&ocirc;ng nghiệp &Phi;110 &ndash; &Phi;140, khu vực Đ&agrave; Lạt v&agrave; c&aacute;c khu vực l&acirc;n cận tr&ecirc;n mọi địa h&igrave;nh. - Sửa chữa giếng khoan, giếng kh&ocirc;ng l&ecirc;n nước, xử l&yacute; tất cả c&aacute;c sự cố về giếng, điện nước, m&aacute;y bơm. - Khoan tiếp địa v&agrave; chống s&eacute;t cho c&aacute;c c&ocirc;ng tr&igrave;nh v&agrave; nh&agrave; ở&hellip; -</span></p>\r\n', '', '', '', '0'),
(2, 2, 2, 'Sứ mệnh', 'Sứ mệnh', '<p>Lắp đặt, cung cấp m&aacute;y bơm cho hệ thống h&uacute;t s&acirc;u, đẩy cao. - Khoan khảo s&aacute;t lấy mẫu địa chất, khoan cắt đ&aacute;. - Khoan dẫn tạo lỗ trong l&ograve;ng đất. - Thổi, sục rửa c&aacute;c loại giếng khoan gia đ&igrave;nh &amp; c&ocirc;ng nghiệp. - Bảo đảm uy t&iacute;n, chất lượng, tiến độ, lưu lượng nước, gi&aacute; cả phải chăng, bảo h&agrave;nh d&agrave;i hạn, (C&oacute; b&aacute;o gi&aacute; v&agrave; xuất ho&aacute; đơn t&agrave;i ch&iacute;nh). - Qu&yacute; kh&aacute;ch c&oacute; nhu cầu khoan, sửa giếng xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i: 0908.902.902 hoặc 02633988460 Ch&uacute;ng t&ocirc;i cam kết v&agrave; đảm bảo cung ứng cho kh&aacute;ch h&agrave;ng sản phẩm chất lượng tốt với gi&aacute; cả cạnh tranh v&agrave; sự phục vụ chuy&ecirc;n nghiệp trong việc tư vấn những giải ph&aacute;p khả thi v&agrave; ph&ugrave; hợp nhất, đ&aacute;p ứng nhu cầu kỹ thuật ng&agrave;y c&agrave;ng cao hiện nay.</p>\r\n', '<p>SGC Việt Nam được th&agrave;nh lập với sứ mệnh mang lại c&aacute;c phần mềm, ứng dụng tr&ecirc;n mobile, c&aacute;c trang th&ocirc;ng tin điện tử tốt nhất d&agrave;nh cho người d&ugrave;ng.&nbsp;<br />\r\nCh&uacute;ng t&ocirc;i l&agrave; l&agrave;m ngắn lại khoảng c&aacute;ch giữa c&aacute;c bạn với th&ocirc;ng tin tr&ecirc;n to&agrave;n cầu, l&agrave;m thỏa m&atilde;n tối đa mọi nhu cầu cuộc sống của bất kỳ ai, d&ugrave; ở bất cứ đ&acirc;u, d&ugrave; l&agrave;m bất cứ ng&agrave;nh nghề.</p>\r\n', '', '', '0'),
(6, 1, 0, 'Khoan dân dung,', 'Khoan dân dung,', 'Khoan dân dung, khoan công trình , khoan khảo sát', '', 'fa-desktop', 'service.jpg', '0'),
(7, 1, 0, 'Sửa chữa, nâng cấp ', 'Sửa chữa, nâng cấp ', 'Sửa chữa, nâng cấp máy đời mới', 'Sửa chữa, nâng cấp máy đời mới', 'fa-mobile', 'service2.jpg', '0'),
(8, 1, 0, 'Dịch vụ khoan giếng', 'Dịch vụ khoan giếng', 'Chúng tôi cung cấp chuyên nghiệp các loại máy khoan....', 'Chúng tôi cung cấp chuyên nghiệp các loại máy khoan....', 'fa-futbol-o', 'service3.jpg', '0'),
(9, 3, 0, 'Không đồng phục công sởxx', 'No uniform', 'Đến với SGC, chỉ cần trang phục lịch sự, phù hợp với môi trường Công ty. Chúng tôi tôn trọng sở thích và phong cách ăn mặc của bạn.', 'Đến với SGC, chỉ cần trang phục lịch sự, phù hợp với môi trường Công ty. Chúng tôi tôn trọng sở thích và phong cách ăn mặc của bạn.', 'fa-female', '', '0'),
(10, 3, 0, 'Tôn trọng ý kiến cá nhân', 'Tôn trọng ý kiến cá nhân', 'Tranh luận – mâu thuẫn vì mục tiêu chung của Công ty. SGC chúng tôi khuyến khích các bạn.', 'Tranh luận – mâu thuẫn vì mục tiêu chung của Công ty. SGC chúng tôi khuyến khích các bạn.', 'fa-flag-o', '', '0'),
(11, 3, 0, 'Hoạt động – phong trào thú vị', 'Hoạt động – phong trào thú vị', 'Bạn sẽ được tham gia các hoạt động thể dục – thể thao, các trò chơi, các chương trình giao lưu,… nhằm đòi hỏi tinh thần đồng đội và ý chí, sáng tạo của mỗi thành viên.', 'Bạn sẽ được tham gia các hoạt động thể dục – thể thao, các trò chơi, các chương trình giao lưu,… nhằm đòi hỏi tinh thần đồng đội và ý chí, sáng tạo của mỗi thành viên.', 'fa-futbol-o', '', '0'),
(12, 3, 0, 'Không phân biệt bạn là ai? Như thế nào?', 'Không phân biệt bạn là ai? Như thế nào?', 'Cho dù bạn không có bằng cấp, cho dù bạn là người nước nào,…? Chỉ cần bạn có năng lực, SGC chúng tôi luôn sẵn sàng cộng tác làm việc cùng bạn.', 'Cho dù bạn không có bằng cấp, cho dù bạn là người nước nào,…? Chỉ cần bạn có năng lực, SGC chúng tôi luôn sẵn sàng cộng tác làm việc cùng bạn.', 'fa-handshake-o', '', '0'),
(13, 3, 0, 'Học hỏi kinh nghiệm – phát huy năng lực', 'Học hỏi kinh nghiệm – phát huy năng lực', 'Bạn sẽ được trau dồi, mở mang thêm kiến thức, tích lũy thêm kinh nghiệm từ các đồng nghiệp của mình, cũng như phát huy được khả năng sáng tạo, năng lực làm việc của bạn.', 'Bạn sẽ được trau dồi, mở mang thêm kiến thức, tích lũy thêm kinh nghiệm từ các đồng nghiệp của mình, cũng như phát huy được khả năng sáng tạo, năng lực làm việc của bạn.', 'fa-level-up', '', '0'),
(14, 2, 5, 'MỘT CHỮ TÍN - VẠN NIỀM TIN', 'BELIEF', '<p><strong>Dịch vụ khoan giếng B&Igrave;NH Y&Ecirc;N Đ&agrave; Lạt</strong><span style=\"color:rgb(115, 135, 156); font-family:helvetica neue,roboto,arial,droid sans,sans-serif\">&nbsp;lấy uy t&iacute;n l&agrave;m h&agrave;ng đầu, với phương ch&acirc;m&nbsp;</span><em><strong>&quot;một chữ t&iacute;n - vạn niềm tin&quot;</strong></em><span style=\"color:rgb(115, 135, 156); font-family:helvetica neue,roboto,arial,droid sans,sans-serif\">,&nbsp;</span><strong>Khoan Giếng B&Igrave;NH Y&Ecirc;N Đ&Agrave; LẠT</strong><span style=\"color:rgb(115, 135, 156); font-family:helvetica neue,roboto,arial,droid sans,sans-serif\">&nbsp;cam kết l&agrave;m bạn h&agrave;i l&ograve;ng.</span></p>\r\n', '', '', '', ''),
(15, 2, 1, 'DỊCH VỤ SƯẢ MÁY BƠM NƯỚC - KHOAN GIẾNG BÌNH YÊN', 'zz', '<h1>Dịch vụ khoan giếng B&Igrave;NH Y&Ecirc;N Đ&Agrave; LẠT</h1>\r\n\r\n<p>Địa chỉ đơn vị cơ sở chuy&ecirc;n cung cấp&nbsp;<strong>dịch vụ khoan giếng B&Igrave;NH Y&Ecirc;N Đ&Agrave; LẠT</strong>&nbsp;tận nơi tại nh&agrave; uy t&iacute;n gi&aacute; rẻ, khoan giếng gia đ&igrave;nh, khoan giếng c&ocirc;ng nghiệp, khoan hạ mạch nước ngầm, khoan giếng theo y&ecirc;u cầu... ở tại <strong>Đ&Agrave;LẠT</strong>&nbsp;. Hiện nay tr&ecirc;n địa b&agrave;n <strong>Đ&Agrave; LẠT</strong>&nbsp;c&oacute; rất nhiều đơn vị cung cấp dịch vụ khoan giếng gi&aacute; rẻ, tuy nhi&ecirc;n để t&igrave;m được địa chỉ đơn vị khoan giếng uy t&iacute;n kh&ocirc;ng phải l&agrave; dễ. l&agrave; đơn vị ti&ecirc;n phong trong lĩnh vực khoan giếng gia đ&igrave;nh, khoan giếng c&ocirc;ng nghiệp, C&ocirc;ng ty Ch&uacute;ng t&ocirc;i&nbsp; cam kết l&agrave;m bạn h&agrave;i l&ograve;ng:</p>\r\n\r\n<p>Hotline: 0<strong>908.902.902</strong><strong>&nbsp;hoặc khoangiengbinhyen<a href=\"http://khoangiengtainha.com/\" title=\"Khoan Giếng Tại Nhà\">.com</a></strong></p>\r\n\r\n<p><strong>Email : khoangiengbinhyendalat@gmail.com</strong></p>\r\n\r\n<p><strong>Dịch vụ khoan giếng B&Igrave;NH Y&Ecirc;N&nbsp;Đ&Agrave; LẠT</strong>&nbsp;với h&agrave;ng trăm dự &aacute;n khoan giếng gia đ&igrave;nh gi&aacute; rẻ, khoan mạch nước ngầm uy t&iacute;n, sử dụng c&aacute;c m&aacute;y m&oacute;c v&agrave; trang thiết bị khoan giếng hiện đại, nước khoan đạt ti&ecirc;u chuẩn kh&ocirc;ng bị c&aacute;t, nước đục. Sử dụng chất liệu nhựa cao cấp gi&uacute;p giếng khoan c&oacute; độ bền l&acirc;u d&agrave;i. Thời gian triển khai nhanh, đội ngũ kỹ thuật khoan giếng c&oacute; kinh nghiệm l&acirc;u năm đảm bảo l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng ở tại <strong>Đ&Agrave; LẠT</strong>. Gi&aacute; rẻ nhất thị trường</p>\r\n\r\n<p><em><strong>Điểm kh&aacute;c biệt khi sử dụng dịch vụ khoan giếng B&Igrave;NH Y&Ecirc;N ở tại Đ&agrave; Lạt l&agrave;:</strong></em><br />\r\n+ Thi c&ocirc;ng hệ thống giếng khoan gia đ&igrave;nh, khoan c&ocirc;ng nghiệp ở tại Đ&agrave; Lạt<br />\r\n+ Bảo tr&igrave; hệ thống giếng khoan định kỳ<br />\r\n+ Chi ph&iacute; thực hiện rẻ, trang thiết bị khoan hiện đại<br />\r\n+ Đội ngũ nh&acirc;n vi&ecirc;n kỹ thuật c&oacute; kinh nghiệm, nhiệt t&igrave;nh</p>\r\n\r\n<p><br />\r\n<strong>Dịch vụ khoan giếng B&Igrave;NH Y&Ecirc;N Đ&agrave; Lạt</strong>&nbsp;lấy uy t&iacute;n l&agrave;m h&agrave;ng đầu, với phương ch&acirc;m&nbsp;<em><strong>&quot;một chữ t&iacute;n - vạn niềm tin&quot;</strong></em>,&nbsp;<strong>Khoan Giếng B&Igrave;NH Y&Ecirc;N Đ&Agrave; LẠT</strong>&nbsp;cam kết l&agrave;m bạn h&agrave;i l&ograve;ng.<br />\r\n<br />\r\nNếu bạn đang ở&nbsp;<strong>Đ&agrave; Lạt</strong>&nbsp;v&agrave; c&oacute; nhu cầu thi c&ocirc;ng hệ thống khoan giếng. Bạn đừng ngại khoảng c&aacute;ch xa, ch&uacute;ng t&ocirc;i sẽ c&oacute; dịch vụ ở tại&nbsp;<strong>Đ&agrave; Lạt</strong>&nbsp;cho qu&yacute; kh&aacute;ch h&agrave;ng. Thương hiệu đi k&egrave;m chất lượng, &quot;an to&agrave;n, tin tưởng&quot;.<br />\r\n&nbsp;</p>\r\n\r\n<p>Hotline: <strong><u>0908.902.902&nbsp;</u>hoặc <u>khoangiengbinhyen.com</u></strong></p>\r\n\r\n<p><em><strong>Khoan Giếng Tại Nh&agrave; c&oacute; mặt tại 64 Tỉnh/Th&agrave;nh Trong cả nước bao gồm:</strong><br />\r\nHồ Ch&iacute; Minh, H&agrave; Nội, An Giang, Vũng T&agrave;u, Bạc Li&ecirc;u, Bắc Kạn, Bắc Giang, Bắc Ninh, Bến Tre, B&igrave;nh Dương, B&igrave;nh Định, B&igrave;nh Phước, B&igrave;nh Thuận, C&agrave; Mau, Cao Bằng, Cần Thơ, Đ&agrave; Nẵng, Đắk Lắk,Đắk N&ocirc;ng, Đồng Nai, Bi&ecirc;n H&ograve;a, Đồng Th&aacute;p, Điện Bi&ecirc;n, Gia Lai, H&agrave; Giang, H&agrave; Nam,S&agrave;i G&ograve;n, TPHCM, Kh&aacute;nh H&ograve;a, Ki&ecirc;n Giang, Kon Tum, Lai Ch&acirc;u, L&agrave;o Cai, Lạng Sơn, L&acirc;m Đồng, Đ&agrave; Lạt, Long An, Nam Định, Nghệ An, Ninh B&igrave;nh, Ninh Thuận, Ph&uacute; Thọ, Ph&uacute; Y&ecirc;n, Quảng B&igrave;nh, Quảng Nam, Quảng Ng&atilde;i, Quảng Ninh, Quảng Trị, S&oacute;c Trăng, Sơn La, T&acirc;y Ninh, Th&aacute;i B&igrave;nh, Th&aacute;i Nguy&ecirc;n, Thanh H&oacute;a, Huế, Tiền Giang, Tr&agrave; Vinh, Tuy&ecirc;n Quang, Vĩnh Long, Vĩnh Ph&uacute;c, Y&ecirc;n B&aacute;i</em>...</p>\r\n', '<p><img alt=\"\" src=\"/upload/anhchitiet/images/khoangiengbinhyen.png\" style=\"height:100px; width:100px\" /></p>\r\n', '', '', ''),
(16, 2, 2, 'KHOAN GIẾNG BÌNH YÊN ĐÀ LẠT xin giới thiệu các dịch vụ:', 'point', '<p><strong>- Chuy&ecirc;n khoan giếng c&ocirc;ng nghiệp v&agrave; d&acirc;n dụng</strong></p>\r\n\r\n<p><strong>- Nhận sửa giếng khoan chuy&ecirc;n nghiệp 24/24H&nbsp;</strong></p>\r\n\r\n<p><strong>- Sửa chữa m&aacute;y bơm nước, bơm giếng bị hư, kh&ocirc;ng l&ecirc;n nước nhanh ch&oacute;ng, uy t&iacute;n.&nbsp;</strong></p>\r\n\r\n<p><strong>- Khoan khảo s&aacute;t địa chất c&ocirc;ng tr&igrave;nh + thuỷ văn, chống s&eacute;t v.v...</strong></p>\r\n\r\n<p><strong>- Mua b&aacute;n sửa chữa motor c&aacute;c loại: Motor bơm nước, motor giếng khoan từ 1Hp đến 7Hp, m&ocirc; tơ k&eacute;o 1 fa, 3 fa, bơm ch&igrave;m, bơm hỏa tiễn v.v...</strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://i.imgur.com/zRwKlw7.jpg\" />\\</p>\r\n', '', '', '', ''),
(17, 4, 4, 'Dich vụ của chúng tôi', '', '<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; text-align: center;\"><img alt=\"\" src=\"/upload/anhchitiet/images/c194b7ef4dc7ac99f5d6.jpg\" style=\"height:764px; width:520px\" /><br />\r\n<img alt=\"\" src=\"/upload/anhchitiet/images/photo_2018-07-10_17-41-19.jpg\" style=\"height:839px; width:720px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/eeb53b58407aa124f86b.jpg\" style=\"height:721px; width:720px\" /></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\"><span style=\"font-size:22px\"><span style=\"color:#FF0000\">Khoan giếng B&igrave;nh Y&ecirc;n</span></span> ch&uacute;ng t&ocirc;i chuy&ecirc;n khoan giếng gia đ&igrave;nh &amp; khoan giếng c&ocirc;ng nghiệp với 25 năm kinh nghiệm, đội ngũ nh&acirc;n vi&ecirc;n tay nghề cao, gi&agrave;u kinh nghiệm sẽ lu&ocirc;n mang đến sự an t&acirc;m v&agrave; h&agrave;i l&ograve;ng nhất cho Qu&yacute; kh&aacute;ch. Thương hiệu đi k&egrave;m chất lương &quot; An to&agrave;n v&agrave; tin tưởng&quot;. Với những m&aacute;y m&oacute;c hiện đại bậc nhất Việt Nam được nhập khẩu từ c&aacute;c nước tư bản về, với kỹ thuật hiện đại của Ch&acirc;u &Acirc;u.</span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; text-align: center;\"><img alt=\"\" src=\"/upload/anhchitiet/images/22365444_120610358693188_8866645954879134851_n.jpg\" style=\"height:200px; width:197px\" /><strong><span style=\"font-size:18px\"><img alt=\"\" src=\"/upload/anhchitiet/images/logo.png\" style=\"height:364px; width:200px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/NCS0b9L.jpg\" style=\"height:337px; width:300px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/logo_orignial.png\" style=\"height:265px; width:300px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/e35ee2da86f867a63ee9.jpg\" style=\"height:722px; width:720px\" /></span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\">Khoan giếng c&ocirc;ng nghiệp từ &Phi;110 &ndash; &Phi;400, khu vực Đ&agrave; Lạt v&agrave; c&aacute;c khu vực l&acirc;n cận tr&ecirc;n mọi địa h&igrave;nh. - Sửa chữa giếng khoan, giếng kh&ocirc;ng l&ecirc;n nước, xử l&yacute; tất cả c&aacute;c sự cố về giếng, điện nước, m&aacute;y bơm. </span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\">- Khoan tiếp địa v&agrave; chống s&eacute;t cho c&aacute;c c&ocirc;ng tr&igrave;nh v&agrave; nh&agrave; ở&hellip;<img alt=\"\" src=\"/upload/anhchitiet/images/125f04f67fd49e8ac7c5.jpg\" style=\"height:730px; width:720px\" /> </span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\">- Lắp đặt, cung cấp m&aacute;y bơm cho hệ thống h&uacute;t s&acirc;u, đẩy cao. - Khoan khảo s&aacute;t lấy mẫu địa chất, khoan cắt đ&aacute;. </span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\">- Khoan dẫn tạo lỗ trong l&ograve;ng đất. </span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\">- Thổi, sục rửa c&aacute;c loại giếng khoan gia đ&igrave;nh &amp; c&ocirc;ng nghiệp. </span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\">- Bảo đảm uy t&iacute;n, chất lượng, tiến độ, lưu lượng nước, gi&aacute; cả phải chăng, bảo h&agrave;nh d&agrave;i hạn, (C&oacute; b&aacute;o gi&aacute; v&agrave; xuất ho&aacute; đơn t&agrave;i ch&iacute;nh). </span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\">- Qu&yacute; kh&aacute;ch c&oacute; nhu cầu khoan, sửa giếng xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i: 0908.902.902 hoặc 02633988460 </span></strong></div>\r\n\r\n<div style=\"color: rgb(0, 0, 0); font-size: 13.3333px; margin: 0px; padding: 0px; font-family: Tahoma, \"><strong><span style=\"font-size:18px\">Ch&uacute;ng t&ocirc;i cam kết v&agrave; đảm bảo cung ứng cho kh&aacute;ch h&agrave;ng sản phẩm chất lượng tốt với gi&aacute; cả cạnh tranh v&agrave; sự phục vụ chuy&ecirc;n nghiệp trong việc tư vấn những giải ph&aacute;p khả thi v&agrave; ph&ugrave; hợp nhất, đ&aacute;p ứng nhu cầu kỹ thuật ng&agrave;y c&agrave;ng cao hiện nay.<img alt=\"\" src=\"/upload/anhchitiet/images/6e297f9f3dbddce385ac.jpg\" style=\"height:764px; width:520px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/1808e871a953480d1142.jpg\" style=\"height:390px; width:463px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/1abef20bb02951770838.jpg\" style=\"height:540px; width:960px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/207b18025920b87ee131.jpg\" style=\"height:540px; width:960px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/901b8263c341221f7b50.jpg\" style=\"height:540px; width:960px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/6100deb79c957dcb2484.jpg\" style=\"height:540px; width:960px\" /><img alt=\"\" src=\"/upload/anhchitiet/images/7738bf8cfdae1cf045bf.jpg\" style=\"height:540px; width:960px\" /></span></strong></div>\r\n', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `email_recruit`
--

CREATE TABLE `email_recruit` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `email_recruit`
--

INSERT INTO `email_recruit` (`id`, `name`, `email`, `status`, `created`) VALUES
(1, 'tung', 'Dntnnamyen1985@gmail.com', 1, 1508725476);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `created`) VALUES
(1, 'Khoan giếng Bình Yên Đà Lạt', 'khoangiengbinhyendalat@gmail.com', 'Khoan giếng giá rẻ.\nKhoan giếng công nghệ cao.', 1516280262),
(2, 'Hoàng ', 'Tinta@tinta.vn', 'Càn khoan giếng tại quảng bình.', 1531295347),
(3, 'Bùi Phúc Nguyên', 'nguyendl2106@gmail.com', 'Xin chào!\nHiện mình đang có nhu cầu khoan giếng tại Thị trấn Lạc Dương huyện Lạc Dương, Lâm Đồng với mục đích dùng cho việc tưới tiêu. Cảm phiền tư vấn giúp mình khoan loại giếng nào (mình cần nước tưới cho 3000m vuông đất); giá thành trọn gói là bao nhiêu.\nMong nhận được sự tư vấn sớm nhất từ quý công ty! \nLiên lạc qua email của mình có địa chỉ là: nguyendl2106@gmail.com hoặc số điện thoại: 0836676279 (tên Nguyên 30 tuổi).\nChân thành cảm ơn!', 1543591989);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `intro` varchar(255) NOT NULL,
  `intro_en` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `title_en`, `content`, `content_en`, `intro`, `intro_en`, `img`, `created`) VALUES
(9, 'Tin tức công ty khoan giếng bình yên', 'hello', '<p>Khoan giếng B&igrave;nh Y&ecirc;n ch&uacute;ng t&ocirc;i chuy&ecirc;n khoan giếng gia đ&igrave;nh &amp; khoan giếng c&ocirc;ng nghiệp với 25 năm kinh nghiệm, đội ngũ nh&acirc;n vi&ecirc;n tay nghề cao, gi&agrave;u kinh nghiệm sẽ lu&ocirc;n mang đến sự an t&acirc;m v&agrave; h&agrave;i l&ograve;ng nhất cho Qu&yacute; kh&aacute;ch. - Khoan giếng c&ocirc;ng nghiệp &Phi;110 &ndash; &Phi;400,với c&ocirc;ng nghệ ti&ecirc;n tiến nhất Việt Nam,&nbsp;khu vực Đ&agrave; Lạt v&agrave; c&aacute;c khu vực l&acirc;n cận tr&ecirc;n mọi địa h&igrave;nh. - Sửa chữa giếng khoan, giếng kh&ocirc;ng l&ecirc;n nước, xử l&yacute; tất cả c&aacute;c sự cố về giếng, điện nước, m&aacute;y bơm. - Khoan tiếp địa v&agrave; chống s&eacute;t cho c&aacute;c c&ocirc;ng tr&igrave;nh v&agrave; nh&agrave; ở&hellip; - Lắp đặt, cung cấp m&aacute;y bơm cho hệ thống h&uacute;t s&acirc;u, đẩy cao. - Khoan khảo s&aacute;t lấy mẫu địa chất, khoan cắt đ&aacute;. - Khoan dẫn tạo lỗ trong l&ograve;ng đất. - Thổi, sục rửa c&aacute;c loại giếng khoan gia đ&igrave;nh &amp; c&ocirc;ng nghiệp. - Bảo đảm uy t&iacute;n, chất lượng, tiến độ, lưu lượng nước, gi&aacute; cả phải chăng, bảo h&agrave;nh d&agrave;i hạn, (C&oacute; b&aacute;o gi&aacute; v&agrave; xuất ho&aacute; đơn t&agrave;i ch&iacute;nh). - Qu&yacute; kh&aacute;ch c&oacute; nhu cầu khoan, sửa giếng xin vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i: 0908.902.902 hoặc 02633988460 Ch&uacute;ng t&ocirc;i cam kết v&agrave; đảm bảo cung ứng cho kh&aacute;ch h&agrave;ng sản phẩm chất lượng tốt với gi&aacute; cả cạnh tranh v&agrave; sự phục vụ chuy&ecirc;n nghiệp trong việc tư vấn những giải ph&aacute;p khả thi v&agrave; ph&ugrave; hợp nhất, đ&aacute;p ứng nhu cầu kỹ thuật ng&agrave;y c&agrave;ng cao hiện nay.</p>\r\n', '', '', '', 'c194b7ef4dc7ac99f5d6.jpg', 1531828560);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link_iOS` varchar(255) NOT NULL,
  `link_android` varchar(255) NOT NULL,
  `link_windowphone` varchar(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `department` tinyint(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_en` text NOT NULL,
  `expired_date` int(11) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `recruitment`
--

INSERT INTO `recruitment` (`id`, `department`, `title`, `title_en`, `content`, `content_en`, `expired_date`, `created`) VALUES
(7, 10, 'Tuyển thợ khoan Giếng lương cao tại Đà Lạt Lâm đồng', 'Tuyển thợ khoan Giếng Đá lương cao tại Đà Lạt Lâm đồng', '<h2><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Tuyển thợ khoan giếng khu vực Đ&agrave; Lạt - L&acirc;m đồng số lượng 12 người.C&ocirc;ng ty khoangiengbinhyen.com tuyển thợ khoan giếng khu vực Đ&agrave; Lạt&nbsp;y&ecirc;u cầu biết sử dụng qua&nbsp;c&aacute;c d&ograve;ng m&aacute;y khoan 4 số ,5 số; Nếu chưa&nbsp;c&oacute; kinh nghiệm th&igrave; sẽ được đ&agrave;o tạo tại c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</strong></span></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Hiện&nbsp;CTY CP Đầu Tư Tư Vấn B&igrave;nh Y&ecirc;n đang cần tuyển gấp 12 kỹ thuật vi&ecirc;n l&agrave;m việc tại c&ocirc;ng ty ở bộ phận kỹ thuật.&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">M&Ocirc; TẢ C&Ocirc;NG VIỆC</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">- Đứng kỹ thuật cho m&aacute;y khoan đ&aacute;</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">- khoan c&aacute;t</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">-&nbsp;khoan d&acirc;n dụng</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">-khoan c&ocirc;ng nghiệp khảo s&aacute;t</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">- Khoan nh&agrave; d&acirc;n</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">QUYỀN LỢI ĐƯỢC HƯỞNG</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Theo luật lao động + ch&iacute;nh s&aacute;ch c&ocirc;ng ty<br />\r\n- L&agrave;m việc theo ca (s&aacute;ng, tối)<br />\r\n- Nh&acirc;n vi&ecirc;n được hưởng c&aacute;c chế độ BHXH &ndash; BHYT - BHTN.<br />\r\n- Được hưởng ph&eacute;p năm 12 ng&agrave;y<br />\r\n- Cung cấp nh&agrave; trọ miễn ph&iacute; cho nh&acirc;n vi&ecirc;n từ khi đ&agrave;o tạo đến khi đi l&agrave;m, kể cả khu vực th&agrave;nh phố.<br />\r\n- C&ocirc;ng ty sẽ tăng lương cho nh&acirc;n vi&ecirc;n theo thang bảng lương đ&atilde; đăng k&yacute; với Nh&agrave; nước.&nbsp;<br />\r\n- M&ocirc;i trường l&agrave;m việc lịch sự&nbsp;<br />\r\n- C&oacute; cơ hội tăng lương cao nếu ho&agrave;n th&agrave;nh tốt y&ecirc;u cầu c&ocirc;ng việc.<br />\r\n<br />\r\nCH&Iacute;NH S&Aacute;CH V&Agrave; QUYỀN LỢI CỦA C&Ocirc;NG TY KGS VIỆT H&Agrave;N<br />\r\n1. Sinh nhật : 100.000<br />\r\n2. Hiếu hỉ : 500.000<br />\r\n3. ốm đau (3 ng&agrave;y trở l&ecirc;n nằm viện) : 500.000<br />\r\n4. Thai sản: 500.000+BHXH&nbsp;<br />\r\n5. Quốc tế phụ nữ m&ugrave;ng 08 / 03 : 100.000<br />\r\n6. Ng&agrave;y 30 / 04-01 / 05, ng&agrave;y 02 / 09: 100.000<br />\r\n7. Tết thiếu nhi 1 / 6 v&agrave; tết trung thu : 100.000 / ch&aacute;u dưới 13 tuổi v&agrave; 100.000 / ch&aacute;u dưới 15 tuổi<br />\r\n8. Nghỉ m&aacute;t năm : T&ugrave;y t&igrave;nh h&igrave;nh thực tế.<br />\r\n9. Ph&aacute;t phần thưởng học sinh giỏi cho to&agrave;n bộ con em c&aacute;n bộ v&agrave; nh&acirc;n vi&ecirc;n KGS VIỆT H&Agrave;N :HS suất sắc:500.000, HS giỏi: 300.000, HS ti&ecirc;n tiến: 100.000</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">TH&Ocirc;NG TIN LI&Ecirc;N HỆ</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">NGƯỜI LI&Ecirc;N HỆ</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Mr B&igrave;nh</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">ĐỊA CHỈ LI&Ecirc;N HỆ</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">11/6 Khe Sanh Đ&agrave; Lạt</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">EMAIL LI&Ecirc;N HỆ</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Dntnnamyen1985@gmail.com</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">ĐIỆN THOẠI LI&Ecirc;N HỆ</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">0908 902 902</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Cần t&igrave;m thợ khoan Giếng Đ&aacute; tại Đ&agrave; Lạt</p>\r\n', 1516294800, 1517121859),
(8, 11, 'Tuyển thợ phụ ', 'Tuyển thợ phụ ', '<h2><strong>Tuyển thợ khoan giếng khu vực Đ&agrave; Lạt - L&acirc;m đồng số lượng 12 người.C&ocirc;ng ty khoangiengbinhyen.com tuyển thợ khoan giếng khu vực Đ&agrave; Lạt&nbsp;y&ecirc;u cầu biết sử dụng qua&nbsp;c&aacute;c d&ograve;ng m&aacute;y khoan 4 số ,5 số; Nếu chưa&nbsp;c&oacute; kinh nghiệm th&igrave; sẽ được đ&agrave;o tạo tại c&ocirc;ng ty ch&uacute;ng t&ocirc;i.</strong></h2>\r\n\r\n<p>Hiện&nbsp;CTY CP Đầu Tư Tư Vấn B&igrave;nh Y&ecirc;n đang cần tuyển gấp 12 kỹ thuật vi&ecirc;n l&agrave;m việc tại c&ocirc;ng ty ở bộ phận kỹ thuật.&nbsp;</p>\r\n\r\n<p>M&Ocirc; TẢ C&Ocirc;NG VIỆC</p>\r\n\r\n<p>- Đứng kỹ thuật cho m&aacute;y khoan đ&aacute;</p>\r\n\r\n<p>- khoan c&aacute;t</p>\r\n\r\n<p>-&nbsp;khoan d&acirc;n dụng</p>\r\n\r\n<p>-khoan c&ocirc;ng nghiệp khảo s&aacute;t</p>\r\n\r\n<p>- Khoan nh&agrave; d&acirc;n</p>\r\n\r\n<p>QUYỀN LỢI ĐƯỢC HƯỞNG</p>\r\n\r\n<p>Theo luật lao động + ch&iacute;nh s&aacute;ch c&ocirc;ng ty<br />\r\n- L&agrave;m việc theo ca (s&aacute;ng, tối)<br />\r\n- Nh&acirc;n vi&ecirc;n được hưởng c&aacute;c chế độ BHXH &ndash; BHYT - BHTN.<br />\r\n- Được hưởng ph&eacute;p năm 12 ng&agrave;y<br />\r\n- Cung cấp nh&agrave; trọ miễn ph&iacute; cho nh&acirc;n vi&ecirc;n từ khi đ&agrave;o tạo đến khi đi l&agrave;m, kể cả khu vực th&agrave;nh phố.<br />\r\n- C&ocirc;ng ty sẽ tăng lương cho nh&acirc;n vi&ecirc;n theo thang bảng lương đ&atilde; đăng k&yacute; với Nh&agrave; nước.&nbsp;<br />\r\n- M&ocirc;i trường l&agrave;m việc lịch sự&nbsp;<br />\r\n- C&oacute; cơ hội tăng lương cao nếu ho&agrave;n th&agrave;nh tốt y&ecirc;u cầu c&ocirc;ng việc.<br />\r\n<br />\r\nCH&Iacute;NH S&Aacute;CH V&Agrave; QUYỀN LỢI CỦA C&Ocirc;NG TY KGS VIỆT H&Agrave;N<br />\r\n1. Sinh nhật : 100.000<br />\r\n2. Hiếu hỉ : 500.000<br />\r\n3. ốm đau (3 ng&agrave;y trở l&ecirc;n nằm viện) : 500.000<br />\r\n4. Thai sản: 500.000+BHXH&nbsp;<br />\r\n5. Quốc tế phụ nữ m&ugrave;ng 08 / 03 : 100.000<br />\r\n6. Ng&agrave;y 30 / 04-01 / 05, ng&agrave;y 02 / 09: 100.000<br />\r\n7. Tết thiếu nhi 1 / 6 v&agrave; tết trung thu : 100.000 / ch&aacute;u dưới 13 tuổi v&agrave; 100.000 / ch&aacute;u dưới 15 tuổi<br />\r\n8. Nghỉ m&aacute;t năm : T&ugrave;y t&igrave;nh h&igrave;nh thực tế.<br />\r\n9. Ph&aacute;t phần thưởng học sinh giỏi cho to&agrave;n bộ con em c&aacute;n bộ v&agrave; nh&acirc;n vi&ecirc;n KGS VIỆT H&Agrave;N :HS suất sắc:500.000, HS giỏi: 300.000, HS ti&ecirc;n tiến: 100.000</p>\r\n\r\n<p>TH&Ocirc;NG TIN LI&Ecirc;N HỆ</p>\r\n\r\n<p>NGƯỜI LI&Ecirc;N HỆ</p>\r\n\r\n<p>Mr B&igrave;nh</p>\r\n\r\n<p>ĐỊA CHỈ LI&Ecirc;N HỆ</p>\r\n\r\n<p>11/6 Khe Sanh Đ&agrave; Lạt</p>\r\n\r\n<p>EMAIL LI&Ecirc;N HỆ</p>\r\n\r\n<p>Dntnnamyen1985@gmail.com</p>\r\n\r\n<p>ĐIỆN THOẠI LI&Ecirc;N HỆ</p>\r\n\r\n<p>0908 902 902</p>\r\n', '<p>Tuyển thợ phụ&nbsp;</p>\r\n', 1517072400, 1517121955);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_recruit`
--

CREATE TABLE `user_recruit` (
  `id` int(11) NOT NULL,
  `id_recruitment` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `email_recruit`
--
ALTER TABLE `email_recruit`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_recruit`
--
ALTER TABLE `user_recruit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `email_recruit`
--
ALTER TABLE `email_recruit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user_recruit`
--
ALTER TABLE `user_recruit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
