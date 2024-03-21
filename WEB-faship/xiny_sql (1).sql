-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3309
-- Thời gian đã tạo: Th3 21, 2024 lúc 10:54 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xiny_sql`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `MaSP` int(11) NOT NULL,
  `Anh1` varchar(500) DEFAULT NULL,
  `Anh2` varchar(500) DEFAULT NULL,
  `Anh3` varchar(500) DEFAULT NULL,
  `Anh4` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `anhsp`
--

INSERT INTO `anhsp` (`MaSP`, `Anh1`, `Anh2`, `Anh3`, `Anh4`) VALUES
(151, '125.png', NULL, NULL, NULL),
(152, '152.png', '', '', ''),
(153, '107.jpg', '', '', ''),
(154, '91.png', NULL, NULL, NULL),
(155, '103.png', '', '', ''),
(156, '127.png', '128.png', '', ''),
(157, '93.png', '94.png', '95.png', ''),
(158, 'Q01-072 (5).jpg', 'Q01-072 (6).jpg', '', ''),
(159, 'Q02-004 (8).jpg', 'Q02-004.jpg', '', ''),
(160, '8.png', '9.png', '', ''),
(161, '102.jfif', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaSP`, `MaKH`, `NoiDung`, `ThoiGian`) VALUES
(21, 119, 16, 'rất đẹp', '2024-01-18 15:22:24'),
(22, 151, 6, 'Đẹp\r\n', '2024-02-23 17:28:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `MaMau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(94, 121, 1, 499000, 499000, 'L', 'Xám'),
(94, 127, 1, 335000, 335000, 'L', 'Trắng'),
(95, 151, 2, 499000, 998000, 'L', 'Đen - Trắng'),
(96, 152, 1, 99000, 99000, 'XL', 'Đen - Trắng'),
(97, 154, 10, 499000, 4990000, 'XL', 'Tím'),
(99, 154, 1, 499000, 499000, 'XL', 'Đen '),
(101, 160, 1, 99000, 99000, 'S', 'Đen - Trắng'),
(102, 151, 1, 499000, 499000, 'XL', 'Đen - Trắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int(11) NOT NULL,
  `MaSize` varchar(50) NOT NULL,
  `MaMau` varchar(20) NOT NULL DEFAULT 'null',
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(151, 'L', 'Đen ', 18),
(151, 'L', 'Đen - Trắng', 18),
(151, 'L', 'Trắng', 8),
(151, 'L', 'Trắng -Xanh', 18),
(151, 'L', 'Xanh', 518),
(151, 'M', 'Đen ', 20),
(151, 'M', 'Đen - Trắng', 20),
(151, 'M', 'Trắng', 10),
(151, 'M', 'Trắng -Xanh', 20),
(151, 'M', 'Xanh', 520),
(151, 'XL', 'Đen ', 19),
(151, 'XL', 'Đen - Trắng', 19),
(151, 'XL', 'Trắng', 9),
(151, 'XL', 'Trắng -Xanh', 19),
(151, 'XL', 'Xanh', 519),
(152, 'XL', 'Đen - Trắng', 11),
(152, 'XL', 'Đỏ', 11),
(153, 'M', 'Trắng -Xanh', 50),
(154, 'XL', 'Đen ', 69),
(154, 'XL', 'Tím', 69),
(154, 'XL', 'Trắng -Xanh', 69),
(155, 'L', 'Đen ', 20),
(155, 'L', 'Hồng', 20),
(155, 'L', 'Trắng', 20),
(155, 'L', 'Xám', 20),
(155, 'M', 'Đen ', 20),
(155, 'M', 'Hồng', 20),
(155, 'M', 'Trắng', 20),
(155, 'M', 'Xám', 20),
(155, 'S', 'Đen ', 20),
(155, 'S', 'Hồng', 20),
(155, 'S', 'Trắng', 20),
(155, 'S', 'Xám', 20),
(155, 'XL', 'Đen ', 20),
(155, 'XL', 'Hồng', 20),
(155, 'XL', 'Trắng', 20),
(155, 'XL', 'Xám', 20),
(156, 'S', 'Đen - Trắng', 20),
(156, 'S', 'Trắng -Xanh', 20),
(156, 'XL', 'Đen - Trắng', 20),
(156, 'XL', 'Trắng -Xanh', 20),
(157, 'L', 'Trắng', 20),
(157, 'M', 'Trắng', 20),
(157, 'S', 'Trắng', 20),
(157, 'XL', 'Trắng', 20),
(158, 'M', 'Đen - Trắng', 10),
(158, 'M', 'Trắng', 10),
(158, 'S', 'Đen - Trắng', 10),
(158, 'S', 'Trắng', 10),
(159, 'L', 'Đen ', 2),
(159, 'M', 'Đen ', 2),
(159, 'XL', 'Đen ', 2),
(160, 'M', 'Đen - Trắng', 45),
(160, 'M', 'Trắng -Xanh', 45),
(160, 'S', 'Đen - Trắng', 44),
(160, 'S', 'Trắng -Xanh', 44),
(160, 'XL', 'Đen - Trắng', 45),
(160, 'XL', 'Trắng -Xanh', 45),
(161, 'L', 'Đen - Trắng', 20),
(161, 'M', 'Đen - Trắng', 20),
(161, 'S', 'Đen - Trắng', 20),
(161, 'XL', 'Đen - Trắng', 20);

--
-- Bẫy `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy'),
(7, 'Sản Phẩm Sắp Về');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT current_timestamp(),
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `NgayDat`, `NgayGiao`, `TinhTrang`, `TongTien`, `MaNVGH`) VALUES
(94, 16, NULL, '2024-01-23 10:50:51', NULL, 'chưa duyệt', 834000, NULL),
(95, 6, NULL, '2024-02-23 17:32:59', NULL, 'chưa duyệt', 998000, NULL),
(96, 6, NULL, '2024-03-04 11:27:51', NULL, 'chưa duyệt', 99000, NULL),
(97, 6, NULL, '2024-03-04 13:34:47', NULL, 'chưa duyệt', 4990000, NULL),
(98, 6, NULL, '2024-03-04 13:34:53', NULL, 'chưa duyệt', 4990000, NULL),
(99, 18, NULL, '2024-03-04 20:30:06', NULL, 'chưa duyệt', 499000, NULL),
(100, 18, NULL, '2024-03-04 20:30:26', NULL, 'chưa duyệt', 499000, NULL),
(101, 18, NULL, '2024-03-04 20:31:36', NULL, 'chưa duyệt', 99000, NULL),
(102, 18, NULL, '2024-03-04 20:32:21', NULL, 'chưa duyệt', 499000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SDT` bigint(12) NOT NULL,
  `DiaChi` text NOT NULL,
  `MatKhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES
(18, 'trần duy thái', '123@gmail.com', 12345678, '123', '123'),
(6, 'Nguyễn Nam Cường', 'cuong@gmail.com', 1228923743, 'diachi', '123456'),
(17, 'Nguyễn Tiến Cường', 'tiencuongg19@gmail.com', 12345678, 'VP', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(50) DEFAULT NULL,
  `MoTa` varchar(11) DEFAULT NULL,
  `KM_PT` int(5) DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `MoTa`, `KM_PT`, `TienKM`, `NgayBD`, `NgayKT`) VALUES
(1, 'Tri Ân Khách Hàng', 'sale', 0, 50000, '2020-01-01', '2024-01-31'),
(3, 'Vui Xuân - Đón Tết ', NULL, 0, 100000, '2019-12-19', '2020-02-29'),
(4, 'Khuyến Mãi Đặc Biệt', NULL, 0, 100000, '2019-12-19', '2020-01-31'),
(5, 'khuyễn mãi đặc biệt trị giá 500.000 đ', 'ok', 1, 500000, '2020-01-02', '2020-01-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('Kem'),
('Nâu'),
('Tím'),
('Trắng'),
('Trắng -Xanh'),
('Xám'),
('Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int(11) NOT NULL,
  `TenNN` varchar(50) NOT NULL,
  `DiaChiNN` text NOT NULL,
  `SDTNN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoinhan`
--

INSERT INTO `nguoinhan` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(70, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(86, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(87, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(88, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(89, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(92, 'Nguyễn Doãn Tùng', 'Quận 12 HCM', 348008939),
(93, 'Nguyễn Doãn Tùng', 'Quận 12 HCM', 348008939),
(94, 'Nguyễn Doãn Tùng', 'Quận 12 HCM', 348008939),
(95, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(96, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(97, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(98, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(99, 'trần duy thái', '123', 12345678),
(100, 'trần duy thái', '123', 12345678),
(101, 'trần duy thái', '123', 12345678),
(102, 'trần duy thái', '123', 12345678);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'Áo Polo'),
(2, 'Quần Nam'),
(3, 'Phụ Kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SDT` int(12) NOT NULL,
  `DiaChi` text NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Quyen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'admin', 'admin1@gmail.com', 905027527, 'Số 451 Hoàng Diệu - Thành phố Đà Nẵng', 'admin', 1),
(4, 'Cương', 'cuong@gmail.com', 132465798, 'Số 451 Hoàng Diệu', '1', 1),
(2, 'Nhân Viên Bán Hàng ', 'NVBH@gmail.com', 123456789, 'Đà Nẵng', '123456', 4),
(1, 'Quản Lý', 'thongkul@gmail.com', 778923743, 'Phú Diễn', '123456', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `id` varchar(200) NOT NULL,
  `TenPhieu` varchar(200) NOT NULL,
  `SoTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieugiamgia`
--

INSERT INTO `phieugiamgia` (`id`, `TenPhieu`, `SoTien`) VALUES
('dinhtri', 'phiếu của đình trí ', 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT current_timestamp(),
  `Note` varchar(100) DEFAULT NULL,
  `Size` varchar(50) NOT NULL,
  `Mau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaSP`, `SoLuong`, `DonGia`, `TongTien`, `NgayNhap`, `Note`, `Size`, `Mau`) VALUES
(175, 3, 151, 500, 990000, 495000000, '2024-02-23 19:56:57', '', '0', 'Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Mau` varchar(100) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPX`, `MaNV`, `MaSP`, `Mau`, `Size`, `SoLuong`, `DonGia`, `TongTien`, `Note`, `NgayXuat`) VALUES
(5, 3, 4, 'none', '36', 40, 1000000, 40000000, 'test', '2020-01-10 21:18:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `MoTa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `MaNCC` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 0,
  `MoTa` text DEFAULT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `AnhNen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `AnhNen`) VALUES
(151, ' Áo Polo Premium Pique CVC A02-094', 3, 1, 1755, 'Còn Hàng', 499000, '124.png'),
(152, 'Quần Short Nam Regular Tc Q01-060', 1, 2, 22, 'Thoáng mát', 99000, '151.png'),
(153, 'Giày Gucci Rhyton Gucci Logo Leather Sneaker', 1, 3, 50, 'Đẹp', 999000, '107.jpg'),
(154, 'Áo T-shirt Poly Zacka Interlock Basic A01-088', 1, 1, 207, 'Thoáng Mát', 499000, '91.png'),
(155, ' Áo Polo Slimfit CVC A02-110', 1, 1, 320, 'Thoáng Mát', 190000, '102.png'),
(156, ' Áo polo Slimfit Coolmax Pique A02-131', 1, 1, 80, 'Thoáng Mát', 499000, '129.png'),
(157, ' Áo T-Shirt Nam Slimfit Modal A01-054', 1, 1, 80, 'Thoáng Mát', 99000, '93.png'),
(158, 'Quần Short Slimfit Pro Pique Q01-072', 1, 2, 40, 'Thoáng Mát', 99000, 'Q01-072 (6).jpg'),
(159, 'Quần Jogger Nam Regular Interlock CVC Q02-004', 1, 2, 6, 'Thoáng Mát', 190000, 'Q02-004 (7).jpg'),
(160, ' Quần Short Nam Regular Tc Q01-060', 1, 2, 268, 'OK', 99000, '9.png'),
(161, 'Dép Tổ Ong Huyền Thoại', 1, 3, 80, 'Đẹp', 99000, '102.jfif');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int(11) NOT NULL,
  `MaKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`MaSP`, `MaKM`) VALUES
(119, 1),
(127, 1),
(129, 1),
(131, 1),
(134, 3),
(136, 3),
(138, 3),
(141, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `MaSize` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`MaSize`) VALUES
('L'),
('M'),
('S'),
('XL');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Chỉ mục cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Chỉ mục cho bảng `phieugiamgia`
--
ALTER TABLE `phieugiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Chỉ mục cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
