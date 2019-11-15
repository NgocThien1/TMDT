-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2019 lúc 04:52 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pttk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `id` int(11) NOT NULL,
  `id_giohang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`id`, `id_giohang`, `id_sanpham`, `soluong`) VALUES
(56, 10, 61, 4),
(61, 10, 56, 3),
(69, 11, 61, 4),
(70, 11, 63, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` int(11) NOT NULL,
  `id_hoadon` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `so_luong` tinyint(4) NOT NULL,
  `thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `id_hoadon`, `id_sanpham`, `so_luong`, `thanh_tien`) VALUES
(103, 105, 50, 1, 4000000),
(104, 106, 52, 1, 8500000),
(105, 107, 52, 1, 8500000),
(106, 107, 50, 1, 4000000),
(107, 108, 52, 1, 8500000),
(108, 108, 51, 1, 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachigiao`
--

CREATE TABLE `diachigiao` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `sdt` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dia_chi` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `diachigiao`
--

INSERT INTO `diachigiao` (`id`, `ten`, `email`, `sdt`, `dia_chi`, `created_at`) VALUES
(1, '3T', NULL, '0123456789', '48 Cao Thắng, Thanh Bình,Hải Châu,Đà Nẵng', '2019-08-29 18:48:07'),
(2, 'nguyễnmạnh', '', '097143152', '5002  Vernon Street', '2018-12-25 14:15:47'),
(3, 'nguyễn mạnh', '', '097143152', '5002  Vernon Street', '2018-12-25 14:16:21'),
(4, 'nguyễn sss', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:18:39'),
(5, 'nguyễn gỗ b', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:18:56'),
(6, 'nguyễn gỗ 222', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:19:37'),
(7, 'nguyễn gỗ 222', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:19:58'),
(8, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:20:14'),
(9, 'nguyễn sdasdsad', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:21:03'),
(10, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:26:10'),
(11, 'nguyễn ss', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:28:56'),
(12, 'nguyễn gỗ b', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:30:25'),
(13, 'nguyễn sss', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:36:38'),
(14, 'nguyễn sss', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:37:55'),
(15, 'nguyễn gỗ b', '', '7606036753', '5002  Vernon Street', '2018-12-25 14:44:34'),
(16, 'nguyễn sss', '', '07142542958', '2230 Parkview Driv', '2018-12-25 14:45:05'),
(17, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 15:24:52'),
(18, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 15:28:49'),
(19, 'nguyễn gỗ b', '', '07142542958', '2230 Parkview Driv', '2018-12-25 15:28:52'),
(20, 'nguyễn phương', '', '7606036753', '5002  Vernon Street', '2018-12-25 23:40:54'),
(21, 'trần lúa', '', '7606036753', '5002  Vernon Street', '2018-12-26 00:00:29'),
(22, 'cao lứa', '', '7606036753', '5002  Vernon Street', '2018-12-26 00:03:20'),
(23, 'đoàn tú', '', '7606036753', '5002  Vernon Street', '2018-12-26 00:12:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaohang`
--

CREATE TABLE `giaohang` (
  `id` int(11) NOT NULL,
  `id_hoadon` int(11) NOT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 1,
  `tien_thu_ho` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `trang_thai_thu` tinyint(4) NOT NULL DEFAULT 1,
  `ghi_chu` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `giaohang`
--

INSERT INTO `giaohang` (`id`, `id_hoadon`, `trang_thai`, `tien_thu_ho`, `trang_thai_thu`, `ghi_chu`, `created_at`) VALUES
(15, 16, 3, '10500000', 2, NULL, '2018-12-26 00:27:36'),
(16, 14, 2, '9400000', 1, NULL, '2018-12-28 13:35:05'),
(17, 15, 1, '0', 1, NULL, '2019-01-01 14:22:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `id_user`, `created_at`) VALUES
(10, 5, '2019-01-01 23:13:54'),
(11, 2, '2019-01-02 00:32:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gopy`
--

CREATE TABLE `gopy` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `y_kien` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sdt` varchar(13) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `thanh_toan` varchar(110) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `tong_tien` varchar(120) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=REDUNDANT;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `id_user`, `ten`, `sdt`, `diachi`, `thanh_toan`, `tong_tien`, `trang_thai`, `created_at`) VALUES
(105, 13, 'binh', '12345678', '28 hòa nam 2', '0', '4000000', 2, '2019-08-12 15:39:05'),
(106, 11, 'Mai Ngoc thien', '0353136067', '105 tôn đản', '0', '8500000', 2, '2019-08-13 09:49:09'),
(107, 12, 'Luu van thanh', '0353136067', '105 tôn đản', '1', '12500000', 2, '2019-08-14 13:33:23'),
(108, 14, 'Ngo Trong Thao', '0353136067', '105 tôn đản', '1', '9085000', 1, '2019-08-14 14:48:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang_users`
--

CREATE TABLE `khachhang_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sdt` varchar(120) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `khachhang_users`
--

INSERT INTO `khachhang_users` (`id`, `name`, `username`, `email`, `diachi`, `sdt`, `password`, `remember_token`, `created_at`) VALUES
(17, 'thienthanhthao', 'ttt3', 'ttt3@gmail.com', '48 cao thang', '012456789', '7a07b07c3d9696133b1213f127227d14', NULL, '2019-11-12 12:46:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichthuoc`
--

CREATE TABLE `kichthuoc` (
  `id` int(11) NOT NULL,
  `kich_thuoc` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `kichthuoc`
--

INSERT INTO `kichthuoc` (`id`, `kich_thuoc`, `gia`, `id_sanpham`) VALUES
(31, '5x5x5', 444444, 33),
(33, '3x3x4', 22222, 33),
(34, '3x3x4', 33333, 30),
(36, '5x5x6', 66666, 30),
(37, '6x6x7', 77777, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linkanh`
--

CREATE TABLE `linkanh` (
  `id` int(11) NOT NULL,
  `link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `linkanh`
--

INSERT INTO `linkanh` (`id`, `link`, `id_sanpham`) VALUES
(9, 'fb.com/23', 33),
(10, 'fb.com', 33),
(11, 'https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.0-9/40029812_942886232579811_2937995279594422272_n.jpg?_nc_cat=0&_nc_eui2=AeHo-JwLnMklCHPZVgtHyUpWpaA9MDjSh2vnkssRL_SQivTfBzwUXCf-kql1AcwsERpsacOvASS8muvNYl5CGSYJoz3pRyxAs2sK5AvQne8JhQ&oh=9a392601c6c3b3729fcf75103dc0d15a&oe=5BF1DB44', 33),
(12, 'https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.0-9/40029812_942886232579811_2937995279594422272_n.jpg?_nc_cat=0&_nc_eui2=AeHo-JwLnMklCHPZVgtHyUpWpaA9MDjSh2vnkssRL_SQivTfBzwUXCf-kql1AcwsERpsacOvASS8muvNYl5CGSYJoz3pRyxAs2sK5AvQne8JhQ&oh=9a392601c6c3b3729fcf75103dc0d15a&oe=5BF1DB44', 33),
(13, 'http://imgs.vietnamnet.vn/Images/2015/08/28/08/20150828081926-1.JPG', 30),
(16, 'jEC89_3x4.jpg', 23),
(17, '7nyNe_2018-10-22 08.41.46 1.jpg', 23),
(18, '4XWCP_3x4.jpg', 23),
(20, 'mwJs1_2018-10-22 08.41.46 1.jpg', 23),
(22, 'FoHye_2018-10-22 08.41.46 1.jpg', 23),
(23, 'yCThY_animal-animal-photography-canidae-45242.jpg', 23),
(24, 'z5Y8G_3x4.jpg', 23),
(26, '88A3l_animal-animal-photography-canidae-45242.jpg', 23),
(27, 'cPBSq_3x4.jpg', 23),
(32, 'D2aEN_44054633_1864064220309724_718422147424321536_n.jpg', 47),
(33, 'Qnlgv_44056829_244819956198642_6156855448680005632_n.jpg', 47),
(34, 'zHZ2X_38749125_175549283227459_4242023324336521216_n.jpg', 48),
(35, 'llhpi_38814132_311916822710957_4143031367615119360_n.jpg', 48),
(36, '4XSSY_38860192_1882106898513667_8533786166711812096_n.jpg', 48),
(37, 'cNbAE_43951456_2207254936229653_5973388949899444224_n.jpg', 49),
(38, 'Wh0Qe_43951793_694035280960232_4435733328707977216_n.jpg', 50),
(39, 'j3TKY_44052113_252871668756526_5583275751848804352_n.jpg', 50),
(40, 'kVxdl_44052502_353618005185077_5218402968495194112_n.jpg', 50),
(41, 'ysmWx_44081551_305406343385573_5423871807344082944_n.jpg', 50),
(42, 'fc7Ue_44161326_1328704067272664_8132468713245900800_n.jpg', 50),
(43, 'h0QkF_44083856_330781917729679_8097958603777900544_n.jpg', 51),
(44, 'izE5L_44159389_295232827981006_914987562018275328_n.jpg', 51),
(45, 'LwT14_44028236_2028405117198641_2570407960945623040_n.jpg', 52),
(46, '8lOVB_44037804_1939810022987250_6770204176145186816_n.jpg', 52),
(47, 'qf6Mx_44065125_334429123986014_1226809502037180416_n.jpg', 52),
(48, 'se3VP_44067994_703098986735531_4817516094090641408_n.jpg', 52),
(49, 'vHc4H_44079827_174232836774206_8754558175899811840_n.jpg', 52),
(50, 'zKDaU_44236255_406505456550297_5723131354569244672_n.jpg', 52),
(51, '1dVBm_44023477_1613007855472644_4516887405780795392_n.jpg', 53),
(52, '13iJh_44081555_476032162884600_9130285630100602880_n.jpg', 53),
(53, 'C1rsp_44088266_2188341158156698_3674683605101051904_n.jpg', 53),
(54, 'melnz_44023477_1613007855472644_4516887405780795392_n.jpg', 54),
(55, 'qnNME_44065329_2381995341827664_1984682002112053248_n.jpg', 54),
(56, 's4PVq_44088266_2188341158156698_3674683605101051904_n.jpg', 54),
(57, 'jzP2j_44100023_290522091785650_2981088095224463360_n.jpg', 54),
(58, '1aIOs_44028212_340817126668201_1457996755378372608_n.jpg', 55),
(59, '0DEsQ_44031547_2033580833612849_7770474949550014464_n.jpg', 55),
(60, 'Fdb0j_44032459_586095681819604_6778265099615338496_n.jpg', 55),
(61, 'MjZnE_44050137_347600472641640_1610364104638201856_n.jpg', 55),
(62, 'LB752_44094722_376475056229192_6987198671402041344_n.jpg', 55),
(63, 'hPV2S_44091318_1832634343458294_3596485474845196288_n.jpg', 56),
(64, 'iLAAB_43952203_2354033141334378_1571063487432491008_n.jpg', 57),
(65, 'pB8nQ_44096308_278639879430934_7682040507773485056_n.jpg', 57),
(66, 'aNxHC_44113610_541462222982049_7707351600452337664_n.jpg', 57),
(67, 'DsgDq_44091813_191037028462135_5240214483166560256_n.jpg', 59),
(68, 'Fw5dm_44126471_538770389908499_233634014605344768_n.jpg', 59),
(69, 'wzV1D_44086239_2168682270018595_4015114640106192896_n.jpg', 61),
(70, 'w4eKS_44099740_267977350581812_2376790487349592064_n.jpg', 61),
(71, 'tszs1_44106500_268126853836598_5130504091960606720_n.jpg', 61),
(72, 'ZitPh_44118607_336408833591607_2298496132646436864_n.jpg', 61),
(73, 'BXoXp_44126935_2017250451698003_6838663661330890752_n.jpg', 61),
(74, 'cFRqp_44271252_2289428721335731_8844209777048289280_n.jpg', 61),
(75, 'TeCFs_44088764_2089035354451911_1069207094449668096_n.jpg', 62),
(76, 'UKuqC_44121568_239402810088460_8233699013648449536_n.jpg', 62),
(77, 'gNH4y_43570809_240651786801472_3584906483533348864_n.jpg', 63),
(78, 'yLl3E_43952434_1387018231432788_8979344235752849408_n.jpg', 63),
(79, 'nDLRF_44028847_552059071908773_3663695472440115200_n.jpg', 63),
(80, 'wJ7uL_44029843_169081967358960_7353383739063271424_n.jpg', 63),
(81, 'Lp8wk_44047473_2185547341668674_3034501025777057792_n.jpg', 63),
(82, '7I56C_44098190_2182321788692780_3767226153031434240_n.jpg', 63),
(83, 'NLQKD_44113604_255263945160224_2578272282287800320_n.jpg', 63),
(84, 'YdS0e_44029755_253644488677699_9063711523888693248_n.jpg', 64),
(85, 'CCanK_44050902_2023181094573504_1130295299063939072_n.jpg', 64),
(86, 'NYUIn_44123847_481504032345240_1530469788717940736_n.jpg', 64),
(87, 'khLic_44159365_725114491176163_9214416287013273600_n.jpg', 64),
(88, 'PTx4a_43952086_489611221535396_7141648315296251904_n.jpg', 65),
(89, 'VYwmj_44035768_188669485357166_8277817523303350272_n.jpg', 65),
(90, 'YNYqu_44060366_293213277951866_4091307338462396416_n.jpg', 65),
(91, 'akTSc_44099942_307428669840637_456880070984728576_n.jpg', 65),
(92, 'TPOS0_44098771_241981563337548_395697523118833664_n.jpg', 66),
(93, '1feJt_44162512_552339038542556_5453291865170247680_n.jpg', 66),
(94, '56kOv_44183958_2274470416105941_2035303977016360960_n.jpg', 66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaigo`
--

CREATE TABLE `loaigo` (
  `id` int(11) NOT NULL,
  `ten_loai_go` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `loaigo`
--

INSERT INTO `loaigo` (`id`, `ten_loai_go`) VALUES
(56, 'Den led dai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten_go` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_loaigo` int(11) NOT NULL,
  `hinhanh` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `so_luong` int(11) NOT NULL,
  `chi_tiet` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gia` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `noi_bat` int(4) DEFAULT 0,
  `soluongban` int(11) DEFAULT 0,
  `chat_lieu` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `xuat_xu` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kich_thuoc` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_go`, `id_loaigo`, `hinhanh`, `so_luong`, `chi_tiet`, `gia`, `noi_bat`, `soluongban`, `chat_lieu`, `xuat_xu`, `kich_thuoc`) VALUES
(50, 'COMBO 10M ĐÈN LED DÂY', 67, '1.jpg', 99, 'Dây Led 5050 sử dụng để trang trí không gian nhà ở, sân vườn, khách sạn, nhà hàng, shop thời trang, quán cà phê hay các không gian khác. Đặc biệt,Dây Led 5050 trang trí vào các ngày lễ tạo không gian lung linh trong nhà và ngoài trời.                                                                                                       ', '4000000', 1, 1, ' Led', 'Việt Nam', 'trắng/vàng/xanh dương/đỏ/xanh lá'),
(51, 'Dây đèn Led trang trí', 66, '2.jpg', 98, 'Màu sắc: trắng và vàng ấm\r\n\r\n✔️Độ dài: 5m\r\n\r\n✔️Số lượng bóng: 45~55 bóng/ dây\r\n\r\n✔️Loại có nháy\r\n\r\n✔️Nguồn điện 220V cắm trực tiếp', '50000', 0, 2, 'Led', 'Việt Nam', '50m-100m'),
(52, 'Đèn LED dây 20m Trắng', 58, '11.jpg', 94, 'ử dụng điện áp tiêu chuẩn 220V, đấu nối và cắm trực tiếp vào điện lưới thông qua đầu cắm đơn giản, gọn nhẹ, dễ dàng sử dụng.\r\n\r\nNguồn cho đèn led dây 220V\r\n\r\n– Sử dụng chip led 3014 ánh sáng trắng nhiệt độ màu lên tới 6500K, màu sắc rõ ràng, cho ánh sáng rất tốt, rất sáng và đặc biệt tuổi thọ cao hơn các loại khác.\r\n\r\n– Mật độ chip led : 60 mắt led / 1 mét dây\r\nChết một mắt led, không ảnh hưởng gì tới các mắt xung quanh. Các mắt led khác của dây led vẫn sáng bình thường.\r\n\r\n– Vỏ đúc plastic siêu bền, trong suốt giúp bảo vệ led và bản mạch bên trong, bản mạch mềm, trùng giúp cho việc co kéo dây led thoải mái không sợ đứt bản mạch hay hỏng mắt led.', '500000', 0, 6, 'led', 'Việt Nam', '20m'),
(53, 'Cuộn led dây 5m CHẠY 7 MÀU', 58, '4.jpg', 100, 'Ứng dụng của đèn led dây dán trong trang trí nội thất, trang trí xe:\r\n- Trang trí phòng giải trí sang trong với đèn led dây indoor..\r\n- Trang trí xe ôtô với led dây 1 màu..\r\n- Trang trí shop với đèn led dây 7 màu..\r\n- Trang trí nhà bếp với led dây một màu trắng tinh khiết..\r\n- Trang trí sảnh với đèn led dây..', '550000', 0, 0, 'Led', 'Trung Quốc', '5m-10m'),
(54, 'Cuộn led dây 5m đơn màu', 58, '5.jpg', 98, 'Trang trí phòng giải trí sang trọng với đèn led dây indoor..\r\n- Trang trí xe ôtô với led dây 1 màu..\r\n- Trang trí shop với đèn led dây 7 màu..\r\n- Trang trí nhà bếp với led dây một màu trắng tinh khiết..\r\n- Trang trí sảnh với đèn led dây..', '220', 0, 2, 'Led', 'Trung Quốc', '10m'),
(55, 'đèn led dây', 67, '6.jpg', 100, 'sử dụng để trang trí không gian nhà ở, sân vườn, khách sạn, nhà hàng, shop thời trang, quán cà phê hay các không gian khác. Đặc biệt,Dây Led 5050 trang trí vào các ngày lễ tạo không gian lung linh trong nhà và ngoài trời.', '300000', 0, 0, 'Led', 'Trung Quốc', '10m-50m'),
(56, 'Đèn LED dây dán', 58, '7.jpg', 998, 'Điện thế :12V\r\nKích thước : 1 cuộn /5m\r\nCông xuất : 14W/1m\r\n1mét : 60 LED\r\n\r\nLed dây 5050 12V có thể sử dụng với ắcquy 12V-5A trở lên', '600000', 1, 20, 'Led', 'Việt Nam', '100m'),
(57, 'Đèn LED dây 5050-5M', 58, '9.jpg', 100, '+ Đèn LED dây 5050 220v 100m dùng trang trí các quán ăn, quán cafe, nhà hàng, shop, khách sạn, trang trí sân vườn, quấn cây xanh\r\n\r\n+ Điện thế : 220V\r\n\r\n+ 1m = 60led\r\n\r\n+ Khả năng chống nước cho phép trang trí ngoài trời.\r\n\r\n+ Cho phép cắt nhỏ tới từng mét để sử dụng', '79000', 0, 0, 'Led', 'Việt Nam', '5m-10m'),
(58, '50 led đúc F8 7 màu', 60, '8.jpg', 100, '50 led đúc F8 7 màu | led F8 7 màu 5v\r\n\r\nLed đúc F8 7 màu trên thị trường được rất nhiều người ưa chuộng và sử dụng, phù hợp trong làm biển quảng cáo, trang trí không gian ở các nhà hàng, khách sạn, tạo điểm nhấn, tô nên vẻ sang trọng, chuyên nghiệp.', '1600000', 1, 0, 'Led', 'Việt Nam', '20m'),
(59, 'Cuộn led dây 5m CHẠY 7 MÀU ', 59, '10.jpg', 100, 'Kích thước: 8mm x 5000mm/1 cuộn.- Điện áp hoạt động: 12V–\r\nDạng dây độ rộng: 10 mm–\r\nĐộ dầy của dây: 2mm\r\nCó lớp vỏ nhựa Silicon bảo vệ chống va đập, chống nước,...-\r\nPhân loại: có keo :\r\nMặt sau là lớp băng dính 2 mặt, tiện lợi cho việc thi công...\r\nCó các màu: đỏ, vàng, trắng, xanh dương, xanh lá, đủ màu và chạy 7 màu.', '200000', 1, 0, 'Led', 'Trung Quốc', '10m');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hoadon` (`id_hoadon`);

--
-- Chỉ mục cho bảng `diachigiao`
--
ALTER TABLE `diachigiao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gopy`
--
ALTER TABLE `gopy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zxc` (`id`);

--
-- Chỉ mục cho bảng `khachhang_users`
--
ALTER TABLE `khachhang_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kichthuoc`
--
ALTER TABLE `kichthuoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `linkanh`
--
ALTER TABLE `linkanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaigo`
--
ALTER TABLE `loaigo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PK_sanpham_loaigo` (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `diachigiao`
--
ALTER TABLE `diachigiao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `gopy`
--
ALTER TABLE `gopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT cho bảng `khachhang_users`
--
ALTER TABLE `khachhang_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `kichthuoc`
--
ALTER TABLE `kichthuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `linkanh`
--
ALTER TABLE `linkanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `loaigo`
--
ALTER TABLE `loaigo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
