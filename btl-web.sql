-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 11:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btl-web`
--

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `ma` int(11) NOT NULL,
  `ten` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sdt` varchar(100) DEFAULT NULL,
  `sanpham` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `tien` int(11) DEFAULT NULL,
  `ngay` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`ma`, `ten`, `diachi`, `sdt`, `sanpham`, `tien`, `ngay`) VALUES
(8, 'Nguyễn Quốc Cường', 'Hà Nội', '0338516192', '[{\"ma\":2,\"ten\":\"product-2\",\"mota\":\"desc product-2\",\"anh\":\"https://hgshop.asia/wp-content/uploads/2022/05/product1.webp\",\"gia\":100,\"soluong\":2}]', 200, '2022-06-10 09:19:21'),
(9, 'Nguyễn Quốc Cường', 'Hà Nội', '0338516192', '[{\"ma\":2,\"ten\":\"product-2\",\"mota\":\"desc product-2\",\"anh\":\"https://hgshop.asia/wp-content/uploads/2022/05/product1.webp\",\"gia\":100,\"soluong\":5}]', 500, '2022-06-10 14:12:38'),
(10, 'Nguyễn Quốc Cường', 'Hà Nội', '0338516192', '[{\"ma\":2,\"ten\":\"product-2\",\"mota\":\"desc product-2\",\"anh\":\"https://hgshop.asia/wp-content/uploads/2022/05/product1.webp\",\"gia\":100,\"soluong\":2}]', 200, '2022-06-11 06:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `ma` int(11) NOT NULL,
  `ten` varchar(100) DEFAULT NULL,
  `anh` varchar(100) DEFAULT NULL,
  `mota` varchar(100) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`ma`, `ten`, `anh`, `mota`, `gia`, `soluong`) VALUES
(1, 'product-1', 'https://hgshop.asia/wp-content/uploads/2022/05/product1.webp', 'desc product-1', 140, 1),
(2, 'product-2', 'https://hgshop.asia/wp-content/uploads/2022/05/product1.webp', 'desc product-2', 100, 1),
(18, 'product-3', 'https://hgshop.asia/wp-content/uploads/2022/05/product1.webp', 'desc product-4', 22, 1),
(28, 'product-4', 'https://hgshop.asia/wp-content/uploads/2022/05/product1.webp', 'desc product-4', 121, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
