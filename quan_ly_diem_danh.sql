-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2025 at 01:46 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `buoi_hoc`
--

DROP TABLE IF EXISTS `buoi_hoc`;
CREATE TABLE IF NOT EXISTS `buoi_hoc` (
  `ma_buoi_hoc` int NOT NULL AUTO_INCREMENT,
  `ngay_hoc` date NOT NULL,
  `tiet_bat_dau` int NOT NULL,
  `tiet_ket_thuc` int NOT NULL,
  `gv_id` varchar(255) DEFAULT NULL,
  `ma_mon_hoc` varchar(255) NOT NULL,
  `ma_phong` varchar(255) NOT NULL,
  `ma_tham_gia` varchar(255) NOT NULL,
  PRIMARY KEY (`ma_buoi_hoc`),
  KEY `FKresnpp25ibokky9xcp7r9nn1e` (`ma_mon_hoc`),
  KEY `FK1xu8i7qikw0dq270q1ejw8n27` (`ma_phong`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buoi_hoc`
--

INSERT INTO `buoi_hoc` (`ma_buoi_hoc`, `ngay_hoc`, `tiet_bat_dau`, `tiet_ket_thuc`, `gv_id`, `ma_mon_hoc`, `ma_phong`, `ma_tham_gia`) VALUES
(1, '2025-04-15', 1, 3, 'ND002', 'LTJV', 'P101', 'TG001'),
(2, '2025-04-15', 4, 6, 'ND002', 'CSDL', 'P102', 'TG002'),
(3, '2025-04-16', 1, 3, 'ND003', 'TTNT', 'P201', 'TG003'),
(4, '2025-04-16', 4, 6, 'ND003', 'MMT', 'P202', 'TG004'),
(5, '2025-04-17', 1, 3, 'ND002', 'KTPM', 'P301', 'TG005'),
(6, '2025-04-17', 4, 6, 'ND003', 'LTJV', 'P101', 'TG006'),
(7, '2025-04-18', 1, 3, 'ND002', 'CSDL', 'P102', 'TG007'),
(8, '2025-04-18', 4, 6, 'ND003', 'TTNT', 'P201', 'TG008');

-- --------------------------------------------------------

--
-- Table structure for table `diem_danh`
--

DROP TABLE IF EXISTS `diem_danh`;
CREATE TABLE IF NOT EXISTS `diem_danh` (
  `ma_buoi_hoc` int NOT NULL,
  `ma_diem_danh` int NOT NULL AUTO_INCREMENT,
  `thoi_gian_diem_danh` datetime(6) DEFAULT NULL,
  `ma_nguoi_dung` varchar(255) NOT NULL,
  `phuong_thuc` enum('manual','qr_code') NOT NULL,
  `trang_thai` enum('absent','late','present') NOT NULL,
  PRIMARY KEY (`ma_diem_danh`),
  KEY `FKn39tnia8bkst1qbvkosdx8lew` (`ma_buoi_hoc`),
  KEY `FK56ahhb3iy1e50gim96jbaxyku` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diem_danh`
--

INSERT INTO `diem_danh` (`ma_buoi_hoc`, `ma_diem_danh`, `thoi_gian_diem_danh`, `ma_nguoi_dung`, `phuong_thuc`, `trang_thai`) VALUES
(1, 1, '2025-04-15 07:05:00.000000', 'ND004', 'qr_code', 'present'),
(1, 2, '2025-04-15 07:03:00.000000', 'ND005', 'qr_code', 'present'),
(1, 3, '2025-04-15 07:25:00.000000', 'ND006', 'qr_code', 'late'),
(2, 4, '2025-04-15 10:02:00.000000', 'ND004', 'qr_code', 'present'),
(2, 5, NULL, 'ND005', 'manual', 'absent'),
(2, 6, '2025-04-15 10:05:00.000000', 'ND006', 'qr_code', 'present'),
(3, 7, '2025-04-16 07:01:00.000000', 'ND007', 'qr_code', 'present'),
(3, 8, '2025-04-16 07:04:00.000000', 'ND008', 'qr_code', 'present'),
(4, 9, '2025-04-16 10:20:00.000000', 'ND007', 'qr_code', 'late'),
(4, 10, NULL, 'ND008', 'manual', 'absent'),
(5, 11, '2025-04-17 07:02:00.000000', 'ND004', 'qr_code', 'present'),
(5, 12, '2025-04-17 07:05:00.000000', 'ND005', 'qr_code', 'present'),
(5, 13, '2025-04-17 07:15:00.000000', 'ND006', 'qr_code', 'late'),
(6, 14, NULL, 'ND007', 'manual', 'absent'),
(6, 15, '2025-04-17 10:04:00.000000', 'ND008', 'qr_code', 'present'),
(7, 16, '2025-04-18 07:03:00.000000', 'ND004', 'qr_code', 'present'),
(7, 17, '2025-04-18 07:05:00.000000', 'ND006', 'qr_code', 'present'),
(8, 18, '2025-04-18 10:25:00.000000', 'ND007', 'qr_code', 'late'),
(8, 19, '2025-04-18 10:03:00.000000', 'ND008', 'qr_code', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `lop_sinh_vien`
--

DROP TABLE IF EXISTS `lop_sinh_vien`;
CREATE TABLE IF NOT EXISTS `lop_sinh_vien` (
  `ma_lop` varchar(255) NOT NULL,
  `ten_lop` varchar(255) NOT NULL,
  PRIMARY KEY (`ma_lop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lop_sinh_vien`
--

INSERT INTO `lop_sinh_vien` (`ma_lop`, `ten_lop`) VALUES
('CNTT01', 'Công nghệ thông tin 01'),
('KHMT03', 'Khoa học máy tính 03'),
('KTPM02', 'Kỹ thuật phần mềm 02');

-- --------------------------------------------------------

--
-- Table structure for table `mon_hoc`
--

DROP TABLE IF EXISTS `mon_hoc`;
CREATE TABLE IF NOT EXISTS `mon_hoc` (
  `ma_mon_hoc` varchar(255) NOT NULL,
  `ten_mon_hoc` varchar(255) NOT NULL,
  PRIMARY KEY (`ma_mon_hoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mon_hoc`
--

INSERT INTO `mon_hoc` (`ma_mon_hoc`, `ten_mon_hoc`) VALUES
('CSDL', 'Cơ sở dữ liệu'),
('KTPM', 'Kỹ thuật phần mềm'),
('LTJV', 'Lập trình Java'),
('MMT', 'Mạng máy tính'),
('TTNT', 'Trí tuệ nhân tạo');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
CREATE TABLE IF NOT EXISTS `nguoi_dung` (
  `email` varchar(255) DEFAULT NULL,
  `ma_lop` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` varchar(255) NOT NULL,
  `ma_tai_khoan` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `ten_nguoi_dung` varchar(255) NOT NULL,
  PRIMARY KEY (`ma_nguoi_dung`),
  UNIQUE KEY `UKmajqh5g4djy2tp3p9dvr64brp` (`email`),
  UNIQUE KEY `UKltruy9naf2a8dw4mteq44xufk` (`ma_tai_khoan`),
  KEY `FK4kfboc7g5ory9apx9nntvvslw` (`ma_lop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`email`, `ma_lop`, `ma_nguoi_dung`, `ma_tai_khoan`, `sdt`, `ten_nguoi_dung`) VALUES
('admin@school.edu.vn', NULL, 'ND001', 'TK001', '0901234567', 'Nguyễn Văn Admin'),
('giang1@school.edu.vn', NULL, 'ND002', 'TK002', '0912345678', 'Trần Thị Giảng'),
('day2@school.edu.vn', NULL, 'ND003', 'TK003', '0923456789', 'Lê Văn Dạy'),
('sinh1@student.edu.vn', 'CNTT01', 'ND004', 'TK004', '0934567890', 'Phạm Thị Sinh'),
('vien2@student.edu.vn', 'CNTT01', 'ND005', 'TK005', '0945678901', 'Hoàng Văn Viên'),
('hoc3@student.edu.vn', 'KTPM02', 'ND006', 'TK006', '0956789012', 'Đỗ Thị Học'),
('tro4@student.edu.vn', 'KTPM02', 'ND007', 'TK007', '0967890123', 'Ngô Văn Trò'),
('hoc5@student.edu.vn', 'KHMT03', 'ND008', 'TK008', '0978901234', 'Vũ Thị Học');

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_tham_gia`
--

DROP TABLE IF EXISTS `nguoi_tham_gia`;
CREATE TABLE IF NOT EXISTS `nguoi_tham_gia` (
  `buoihoc_id` int DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nguoidung_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs7m9d0kal9qtv80wssa9lp6gj` (`buoihoc_id`),
  KEY `FKtojp2r3lsbk1ssso6oca99og9` (`nguoidung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoi_tham_gia`
--

INSERT INTO `nguoi_tham_gia` (`buoihoc_id`, `id`, `nguoidung_id`) VALUES
(1, 1, 'ND004'),
(1, 2, 'ND005'),
(1, 3, 'ND006'),
(2, 4, 'ND004'),
(2, 5, 'ND005'),
(2, 6, 'ND006'),
(3, 7, 'ND007'),
(3, 8, 'ND008'),
(4, 9, 'ND007'),
(4, 10, 'ND008'),
(5, 11, 'ND004'),
(5, 12, 'ND005'),
(5, 13, 'ND006'),
(6, 14, 'ND007'),
(6, 15, 'ND008'),
(7, 16, 'ND004'),
(7, 17, 'ND006'),
(8, 18, 'ND007'),
(8, 19, 'ND008');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

DROP TABLE IF EXISTS `phong`;
CREATE TABLE IF NOT EXISTS `phong` (
  `ma_phong` varchar(255) NOT NULL,
  `ten_phong` varchar(255) NOT NULL,
  PRIMARY KEY (`ma_phong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`ma_phong`, `ten_phong`) VALUES
('P101', 'Phòng học 101'),
('P102', 'Phòng học 102'),
('P201', 'Phòng học 201'),
('P202', 'Phòng lab 202'),
('P301', 'Phòng thực hành 301');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

DROP TABLE IF EXISTS `tai_khoan`;
CREATE TABLE IF NOT EXISTS `tai_khoan` (
  `ma_tai_khoan` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `ten_tai_khoan` varchar(255) NOT NULL,
  `role` enum('admin','student','teacher') NOT NULL,
  PRIMARY KEY (`ma_tai_khoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`ma_tai_khoan`, `mat_khau`, `ten_tai_khoan`, `role`) VALUES
('TK001', '$2a$10$AbCdEfGhIjKlMnOpQrStUvWxYz12345', 'admin1', 'admin'),
('TK002', '$2a$10$AbCdEfGhIjKlMnOpQrStUvWxYz12346', 'teacher1', 'teacher'),
('TK003', '$2a$10$AbCdEfGhIjKlMnOpQrStUvWxYz12347', 'teacher2', 'teacher'),
('TK004', '$2a$10$AbCdEfGhIjKlMnOpQrStUvWxYz12348', 'student1', 'student'),
('TK005', '$2a$10$AbCdEfGhIjKlMnOpQrStUvWxYz12349', 'student2', 'student'),
('TK006', '$2a$10$AbCdEfGhIjKlMnOpQrStUvWxYz12350', 'student3', 'student'),
('TK007', '$2a$10$AbCdEfGhIjKlMnOpQrStUvWxYz12351', 'student4', 'student'),
('TK008', '$2a$10$AbCdEfGhIjKlMnOpQrStUvWxYz12352', 'student5', 'student');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buoi_hoc`
--
ALTER TABLE `buoi_hoc`
  ADD CONSTRAINT `FK1xu8i7qikw0dq270q1ejw8n27` FOREIGN KEY (`ma_phong`) REFERENCES `phong` (`ma_phong`),
  ADD CONSTRAINT `FKresnpp25ibokky9xcp7r9nn1e` FOREIGN KEY (`ma_mon_hoc`) REFERENCES `mon_hoc` (`ma_mon_hoc`);

--
-- Constraints for table `diem_danh`
--
ALTER TABLE `diem_danh`
  ADD CONSTRAINT `FK56ahhb3iy1e50gim96jbaxyku` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  ADD CONSTRAINT `FKn39tnia8bkst1qbvkosdx8lew` FOREIGN KEY (`ma_buoi_hoc`) REFERENCES `buoi_hoc` (`ma_buoi_hoc`);

--
-- Constraints for table `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD CONSTRAINT `FK4kfboc7g5ory9apx9nntvvslw` FOREIGN KEY (`ma_lop`) REFERENCES `lop_sinh_vien` (`ma_lop`),
  ADD CONSTRAINT `FKbrlqj8q133ly8l99xc05wf6sk` FOREIGN KEY (`ma_tai_khoan`) REFERENCES `tai_khoan` (`ma_tai_khoan`);

--
-- Constraints for table `nguoi_tham_gia`
--
ALTER TABLE `nguoi_tham_gia`
  ADD CONSTRAINT `FKs7m9d0kal9qtv80wssa9lp6gj` FOREIGN KEY (`buoihoc_id`) REFERENCES `buoi_hoc` (`ma_buoi_hoc`),
  ADD CONSTRAINT `FKtojp2r3lsbk1ssso6oca99og9` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
