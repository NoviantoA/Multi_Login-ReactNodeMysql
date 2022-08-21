-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220820.c36dd24b59
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 05:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `uuid`, `name`, `price`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '22a3eb60-d1a7-4aed-9688-5d7808ec52a9', 'Toak', 15000, 3, '2022-08-21 01:19:41', '2022-08-21 01:19:41'),
(2, 'c595c133-b3a9-466b-927f-1fad9afb62ca', 'Gado-Gado', 15000, 3, '2022-08-21 02:16:41', '2022-08-21 02:16:41'),
(3, '3166ecc4-bece-4994-843b-d23ea0201622', 'Apel', 20000, 3, '2022-08-21 02:17:04', '2022-08-21 02:17:04'),
(4, 'fd80ebd2-6cad-4153-8695-9c8dbf45ddc3', 'Geprek', 12000, 3, '2022-08-21 02:17:23', '2022-08-21 02:17:23'),
(5, '937fdc4f-c11e-41fb-9a56-09b2451c2e4e', 'Mie Pangsit', 16000, 4, '2022-08-21 02:18:56', '2022-08-21 02:18:56'),
(6, 'c55849e5-1491-4035-9247-9dea098c8331', 'Ceker Tirex', 20000, 4, '2022-08-21 02:19:18', '2022-08-21 02:19:18'),
(7, '325db5c5-a13f-41ff-b7ea-7c9143d71bd4', 'Cireng Coy', 13000, 4, '2022-08-21 02:19:44', '2022-08-21 02:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-F_29alnyXcTBg1CF47PaGZCmdMdqtHf', '2022-08-22 15:07:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:07:58', '2022-08-21 15:07:58'),
('0OAmiFyW3zxOBIkl03p3pRS9qh2Hm3ZI', '2022-08-22 14:40:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:10', '2022-08-21 14:40:10'),
('0xqWEeNLc1zMF_YUv4rju0-HPrXQNB3B', '2022-08-22 15:44:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:29', '2022-08-21 15:44:32'),
('1iySC1Bx5b6krDpEDLPY7B6yjzXb4-hL', '2022-08-22 15:20:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:48', '2022-08-21 15:20:48'),
('1WwX81u0EsgfqU854NEYnCjVEvBkeywo', '2022-08-22 15:08:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:08:02', '2022-08-21 15:08:02'),
('1ZTJZ6kHpS_RYFO_ZmD6aJbq9AA8-Ues', '2022-08-22 14:42:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:42:34', '2022-08-21 14:42:34'),
('2BLGYfkOv6U40jupWR6qfb06nPDfbTWq', '2022-08-22 14:42:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:42:20', '2022-08-21 14:42:20'),
('2X0Piku9y94iOVwuQQl8V4hOulOkobrQ', '2022-08-22 15:25:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:04', '2022-08-21 15:25:04'),
('4PbZX-uC2sq-3TzqbVkAsccOTMuc3wcl', '2022-08-22 13:18:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:16', '2022-08-21 13:18:16'),
('5l8cxZzQlfJB55kw8iUaxFRjwqPZFtUs', '2022-08-22 14:42:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:42:35', '2022-08-21 14:42:35'),
('5xHYNsK-h0M03FyBviEmdhXI3w8ichMd', '2022-08-22 15:21:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:21:53', '2022-08-21 15:21:53'),
('77S9A9wXGBOM7eT0IAYyXIEXhrhoTjqL', '2022-08-22 13:18:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:08', '2022-08-21 13:18:08'),
('8mu41dMWMj3LrLg80IlFhznGnFb3xhSZ', '2022-08-22 15:20:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:44', '2022-08-21 15:20:44'),
('9oRf9V_q7i8SUL9uYB_fSDfjLWDU9UbC', '2022-08-22 15:07:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:07:57', '2022-08-21 15:07:57'),
('A-VOnKZFX-YkQw20Uvvf5NjWz58bxsJL', '2022-08-22 13:18:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:08', '2022-08-21 13:18:08'),
('A4jPECsRR9WxkRRmoPKNZid8tLy6egtN', '2022-08-22 15:08:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:08:00', '2022-08-21 15:08:00'),
('AjBnEh7CxV7h29FO9twWaDpJS5sXSOIB', '2022-08-22 13:25:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:12', '2022-08-21 13:25:12'),
('ANWU3kKItYucfJD8z4ELOXJKSfEHBAnc', '2022-08-22 15:20:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:49', '2022-08-21 15:20:49'),
('auCozLb2S6VTRs_efnno27SnI0UPsEVv', '2022-08-22 13:25:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:05', '2022-08-21 13:25:05'),
('bc3abFLejC22AfCX3FHlLxUyyu7sL9Or', '2022-08-22 15:25:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:04', '2022-08-21 15:25:04'),
('ByR-586Bef2IyrHHfKaE0CojZDsJ04tL', '2022-08-22 15:20:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:41', '2022-08-21 15:20:41'),
('BYTG2uAjhSga9b5PcoL767iIPNRu-bXH', '2022-08-22 14:42:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:42:34', '2022-08-21 14:42:34'),
('cbo7HrWbt-cQM4qoJk1OWGatoEnrzsL3', '2022-08-22 15:20:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:29', '2022-08-21 15:20:29'),
('CZTH7Es2WCJQU5QaPZ8_D0KbuSaG6VYg', '2022-08-22 13:18:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:10', '2022-08-21 13:18:10'),
('D-gBuOSNuUWw0_F3_t5tHAKto4273ts2', '2022-08-22 13:18:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:12', '2022-08-21 13:18:12'),
('d0c4y5jai3aH3TD5TJfc-EHe3MToI0hS', '2022-08-22 15:25:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:04', '2022-08-21 15:25:04'),
('dE51eock1uM7XPsg2oWrVH3A2kEkoQzQ', '2022-08-22 15:27:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:27:16', '2022-08-21 15:27:16'),
('deCROi84kygdwyWLln54Mcu3q8URpGnt', '2022-08-22 13:18:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:11', '2022-08-21 13:18:11'),
('DvP0QQ5FLO2FTRPs4TMjADDle4uE_fNh', '2022-08-22 15:20:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:40', '2022-08-21 15:20:40'),
('d_baKBXn1wKSK8g8nc7FDsFBesnrIoAS', '2022-08-22 13:18:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:14', '2022-08-21 13:18:14'),
('eIzoiYBSrVjOsKu-KB4-KijHiYYuwWoo', '2022-08-22 14:40:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:43', '2022-08-21 14:40:43'),
('Ekv0KfGl4pJ9Vy-dZyBi52rS7boCZOSj', '2022-08-22 13:18:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:10', '2022-08-21 13:18:10'),
('EPQ79HEKLcGDx21zjbKdKcWjoGomKLg7', '2022-08-22 15:25:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:00', '2022-08-21 15:25:00'),
('F6ZYpaFyHmqxuNjCBM6eUcd9mK04354z', '2022-08-22 15:25:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:03', '2022-08-21 15:25:03'),
('fCjllAOdjkNJx-jUZNStzo09N7FISXIz', '2022-08-22 13:18:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:15', '2022-08-21 13:18:15'),
('fElaD1kfROA-26du9rNo7mwwtS7-UM2J', '2022-08-22 13:18:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:13', '2022-08-21 13:18:13'),
('fpL5SkyzbSbCncsx2rQv1bOrN3G0TJin', '2022-08-22 14:40:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:29', '2022-08-21 14:40:29'),
('fw3IVHKnpm9wIU0BC-Zwxi_oFKWugs9M', '2022-08-22 13:18:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:12', '2022-08-21 13:18:12'),
('gq32pTKUY_rf6FNFeN4HZ6I-vJ5ITNoS', '2022-08-22 15:20:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:50', '2022-08-21 15:20:50'),
('GRiN5_o-ojFd1nIng2Jyb5PErWDW8Y_R', '2022-08-22 15:25:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:01', '2022-08-21 15:25:01'),
('GtEsEuTbRCOdPbZhbr72sbcG-88Ma7e0', '2022-08-22 13:25:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:11', '2022-08-21 13:25:11'),
('GYq5lXFaOzevd2RyCYBsoucQBl0Z-PIL', '2022-08-22 15:20:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:43', '2022-08-21 15:20:43'),
('h9SNdOjRoKI2oN7-bAT4l5CQgFaC44kC', '2022-08-22 13:18:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:14', '2022-08-21 13:18:14'),
('hn3cUOoZYTzLOuv1hstuTGE1OCLMe4ES', '2022-08-22 14:42:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:42:35', '2022-08-21 14:42:35'),
('IefW0gaRhy1kQpLf1pO-FizP2BQ8kxp4', '2022-08-22 15:25:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:03', '2022-08-21 15:25:03'),
('iGI-kRguUMxIzDKBlcXLeAMB2jTashwB', '2022-08-22 15:25:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:03', '2022-08-21 15:25:03'),
('imMZtelb_TLSsmiL5iSHDPHykf0LRwmR', '2022-08-22 14:41:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:41:20', '2022-08-21 14:41:20'),
('itagSiLocZW2g3gVKCMJFEnxS7RmuACp', '2022-08-22 14:41:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:41:20', '2022-08-21 14:41:20'),
('jaFJTqTW98b6NHr_7_A8QCiGW3dsFhNq', '2022-08-22 15:20:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:42', '2022-08-21 15:20:42'),
('jnpqNFbswF3FdLEnSmw3fm0LdGW1hGt5', '2022-08-22 14:40:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:44', '2022-08-21 14:40:44'),
('kC4XjiTe-y3T3_YrM7wuAUTyQO4zdZQ4', '2022-08-22 13:25:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:10', '2022-08-21 13:25:10'),
('Kj-Lhts9xIeCFfLtavnCiTMn71OFQJiy', '2022-08-22 14:40:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:43', '2022-08-21 14:40:43'),
('kNyYJoteHEI_w2_8e7cz9GU6Zg-YOG1P', '2022-08-22 15:20:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:51', '2022-08-21 15:20:51'),
('KpzpqBbN1Y5vOtYH984HsBjbIFMZfMEL', '2022-08-22 15:25:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:04', '2022-08-21 15:25:04'),
('LdFNdJlakUrS0ATKCn4RCiUGYeT8sj1b', '2022-08-22 15:25:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:03', '2022-08-21 15:25:03'),
('lKxRywndCUEMzc0mLsVv-X90L1FnvLpd', '2022-08-22 14:41:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:41:19', '2022-08-21 14:41:19'),
('LnPyF1IKn7idUx8SyrndREX0excrN2ae', '2022-08-22 15:46:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:46:02', '2022-08-21 15:46:02'),
('LuYUzfBXbmQOKldthwqZdI4xW5pzC1F9', '2022-08-22 15:08:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:08:02', '2022-08-21 15:08:02'),
('LWYG9yctdnaMnFJF_vzsIrVT1dQgo6Mx', '2022-08-22 15:28:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:28:47', '2022-08-21 15:28:47'),
('Mc0cK_9huOh5PYSDZZY8kh391bMrLPBb', '2022-08-22 15:20:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:28', '2022-08-21 15:20:28'),
('Mx8HBBGYe6IaOyeeww3wd9XK5NRmjPeV', '2022-08-22 13:18:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:10', '2022-08-21 13:18:10'),
('n1pjbaWnhFzHPdvYNyZmunX-TeSo9FWM', '2022-08-22 15:25:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:03', '2022-08-21 15:25:03'),
('N684PZ2kf2exzG6bWo4oBdEw-wHmxI2b', '2022-08-22 15:25:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:03', '2022-08-21 15:25:03'),
('n9PMlaUazpjo7zcfs4hlpiOR_dPBYE2T', '2022-08-22 15:25:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:04', '2022-08-21 15:25:04'),
('nuCZka5jVAhHZ9mWa3H_2a-nILTkZqTI', '2022-08-22 13:25:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:13', '2022-08-21 13:25:13'),
('NZoIGNgawloph3QwpQDGy63lbTMc4fjm', '2022-08-22 15:25:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:01', '2022-08-21 15:25:01'),
('OFQnb-o_YgFGyNdk4SqOfPop3eeCEmC4', '2022-08-22 15:07:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:07:58', '2022-08-21 15:07:58'),
('ogHL_j2nYLMDi3qrH_S090eiAq7Ioc8q', '2022-08-22 14:40:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:12', '2022-08-21 14:40:12'),
('oKC3JPVB5dcKNhhpejz9N0z845NOCsOQ', '2022-08-22 15:27:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:27:14', '2022-08-21 15:27:14'),
('OtXPfKgloPh3MKJ9KyS9jbWoD5329F7a', '2022-08-22 15:24:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:24:48', '2022-08-21 15:24:48'),
('p73W4-1_iO7W67wn2LVb-pcc3ZTyI1yT', '2022-08-22 13:18:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:04', '2022-08-21 13:18:04'),
('PYHZ3ha9Pn888JrjlQuy-i8g98tWzQ_a', '2022-08-22 15:21:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:21:51', '2022-08-21 15:21:51'),
('QJ3uamOdSISqMStXqwCOh0LVAsp-qRXm', '2022-08-22 15:25:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:02', '2022-08-21 15:25:02'),
('QOFbBY0eubOPff-OrTM22OMnBhLCzc-e', '2022-08-22 15:21:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:21:50', '2022-08-21 15:21:50'),
('qV-O393b9LuLMGPO3xyPrGfaHQKkiQWY', '2022-08-22 14:40:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:42', '2022-08-21 14:40:42'),
('rUTX3FbLyhZkyMsx2gBrM3GKOoveOOQW', '2022-08-22 14:40:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:40:12', '2022-08-21 14:40:12'),
('rv-jeh8LSE8gE9tBxAYSPBvKL37_IBuX', '2022-08-22 15:20:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:52', '2022-08-21 15:20:52'),
('sESczT2S2Ad_AH1rDYcjqJyPUrXVdGAb', '2022-08-22 14:41:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:41:20', '2022-08-21 14:41:20'),
('Sq4YAevUf3nKTHNisQlrSVSjAaksdreB', '2022-08-22 15:08:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:08:01', '2022-08-21 15:08:01'),
('tLSK5vvZ8NwLOsuM-wx352gGHClKlwRh', '2022-08-22 15:24:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:24:49', '2022-08-21 15:24:49'),
('T__Ldkz3Lnr9XR4MTtLmzK1cYdWiDAo7', '2022-08-22 02:19:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 02:19:35', '2022-08-21 02:19:35'),
('v4p3LTxcnbfshJwG7PKjCAwETu-YPiRd', '2022-08-22 13:18:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:10', '2022-08-21 13:18:10'),
('ve_-rfc_WNxMqzvLbNA05l1ly-xcmvPL', '2022-08-22 15:24:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:24:59', '2022-08-21 15:24:59'),
('VIbQlcp_41z9oAR0OnaR_V1vKArvGUmx', '2022-08-22 13:25:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:13', '2022-08-21 13:25:13'),
('VqzlOF7By-2z68vPprEHvdhPJ0HXZYAf', '2022-08-22 15:20:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:42', '2022-08-21 15:20:42'),
('vvfamRDvFITNHva84fFmiNCf10K7Ft02', '2022-08-22 13:25:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:04', '2022-08-21 13:25:04'),
('VVstz_alzbjEtdpKNyh0jzZUTEuwdxOF', '2022-08-22 13:25:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:14', '2022-08-21 13:25:14'),
('vwbEiODb9W_7Z-ABAdDMrHLX7qdvly_e', '2022-08-22 15:28:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:28:48', '2022-08-21 15:28:48'),
('WCo_OlZ8ROQNTcwmSIlnXow8hfNiSWdg', '2022-08-22 15:20:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:43', '2022-08-21 15:20:43'),
('Wd1EpNuKasCVhRzQyeF6wIOaIYAUL15w', '2022-08-22 15:25:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:02', '2022-08-21 15:25:02'),
('wDxSRECE8DEzILgdgnBuUHf7gtmbWFtS', '2022-08-22 14:42:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:42:21', '2022-08-21 14:42:21'),
('wEI0aRpPWy_-MisZft1O-bk_mnSWemGe', '2022-08-22 14:41:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:41:18', '2022-08-21 14:41:18'),
('xfLxm_v48F7C0NO6PyaAXyQmH2tf6szh', '2022-08-22 15:25:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:04', '2022-08-21 15:25:04'),
('xLCG4njXgh54-0nzNtDnp4zS6bzeKgjP', '2022-08-22 15:31:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:31:32', '2022-08-21 15:31:32'),
('XTuGvfXy4AsFYIVLSWx2-PpJq3yrSowE', '2022-08-22 14:41:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:41:19', '2022-08-21 14:41:19'),
('xYR74cJh9wuL6UeASQRytVSrwP3TTlxC', '2022-08-22 13:18:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:07', '2022-08-21 13:18:07'),
('YhHOeXN64ppVV3eg9GGK67sXDvziqjzW', '2022-08-22 15:24:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:24:49', '2022-08-21 15:24:49'),
('YpQdmUJ8EfYgp2bSZm4QqBNncAGKrYiL', '2022-08-22 15:20:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:20:47', '2022-08-21 15:20:47'),
('Z9Kgg0sAMiztTuXwAzGyxgamWptvN4_w', '2022-08-22 13:24:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:24:54', '2022-08-21 13:24:54'),
('ZDWWQ4RxlGWXbFrMXD9NyDXK2gxSoCrR', '2022-08-22 13:18:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:11', '2022-08-21 13:18:11'),
('ZhEXxTHZqagO_7KZVKk7XFRdiZ-ui-Wj', '2022-08-22 13:36:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"d2c452f1-7a77-4ef8-9dd5-b1422210ebcb\"}', '2022-08-21 02:20:53', '2022-08-21 13:36:29'),
('ZpsamSLkGOKgYUL0v-8V0naJFZ-jmyNI', '2022-08-22 14:41:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 14:41:19', '2022-08-21 14:41:19'),
('_6Efwy0TfOMMWooFsrWrX72KXe0gGrMm', '2022-08-22 13:18:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:06', '2022-08-21 13:18:06'),
('_mPGNTr26CPikr80YrK3STi-EsIIJXzp', '2022-08-22 15:25:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:25:03', '2022-08-21 15:25:03'),
('_Ni7_Gy0_M5W3jTPXvJLSCWMPlB3Ispe', '2022-08-22 13:18:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:18:09', '2022-08-21 13:18:09'),
('_nw_YNwiEVhfGgdl2RfStYtwCYdFzJyI', '2022-08-22 13:25:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 13:25:11', '2022-08-21 13:25:11'),
('_shGZBilPmg66PdBw2ufW3Rf6Vpc6BeS', '2022-08-22 15:07:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2022-08-21 15:07:59', '2022-08-21 15:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(3, '428e8009-d49e-43e1-84fa-34600e9ec555', 'GG Gaming', 'gg@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$eCNrim+PireQpQk7szR2Qw$k5OZZrIBf9qCoBlVa5K2c6Kim44pgQnUBvUH1b/E35I', 'user', '2022-08-20 14:37:32', '2022-08-20 14:37:32'),
(4, 'd2c452f1-7a77-4ef8-9dd5-b1422210ebcb', 'admin', 'admin@admin.com', '$argon2id$v=19$m=4096,t=3,p=1$p6+jj+aw1eL9RYjNLSAPJg$oaZuzO9rfm7tE3I15onbcit0WcIlSrv/DwQnsiRZqac', 'admin', '2022-08-20 14:46:10', '2022-08-20 14:46:10'),
(5, '31e50844-68f0-42ca-9a19-4c2c6d5cb343', 'M. Novianto Anggoro', 'novianto@admin.com', '$argon2id$v=19$m=4096,t=3,p=1$Oh1AsTIH2Cy9MlO9PMlTcQ$VDgkaZv/GhgGWkEZI9LZfUF/Ml5fLeUqAyeuBWoGawA', 'admin', '2022-08-20 14:46:25', '2022-08-20 14:46:25'),
(6, 'f6f64469-1478-4196-bf14-1d203648ec56', 'Lord Harry Maguire', 'harry@gmail.com', '$argon2id$v=19$m=4096,t=3,p=1$pPCU4bSpk8nDeeJihYPhNQ$OpYbW05QRPtx5TnuI5uvatNzvuGxPEZaafPEwSzuYlI', 'user', '2022-08-20 14:48:39', '2022-08-20 14:49:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
