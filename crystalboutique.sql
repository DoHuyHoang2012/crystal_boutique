-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 28, 2023 lúc 04:45 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `crystalboutique`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `ordering_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cartdetail` varchar(8000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cartTotal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`ordering_id`, `name`, `phone`, `email`, `address`, `cartdetail`, `cartTotal`, `created_at`, `updated_at`) VALUES
(4, 'Do Huy Hoang', '0985692368', 'dohuyhoang201200@gmail.com', 'Ha Noi', '[{\"thumbnail\":\"http://localhost/eproject/public/img/2cd99d70-ff5d-11e7-8bc8-f9300af17ed0.jpg\",\"productid\":\"P01\",\"price\":\"22.00\",\"quantity\":\"2\",\"subtotal\":44},{\"thumbnail\":\"http://localhost/eproject/public/img/5-8987.jpg\",\"productid\":\"P06\",\"price\":\"10.00\",\"quantity\":\"1\",\"subtotal\":10},{\"thumbnail\":\"http://localhost/eproject/public/img/0001745dba70d01fb99f8654ad2d845c.jpg\",\"productid\":\"P15\",\"price\":\"16.50\",\"quantity\":\"1\",\"subtotal\":16.5}]', '70.5', '2022-05-30 09:43:19', '2022-06-14 09:43:19'),
(5, 'Luu Ngoc Manh', '0985692805', 'manh.luu@gmail.com', 'Ha Noi', '[{\"thumbnail\":\"http://localhost/eproject/public/img/2083_1472263639.97894.jpg\",\"productid\":\"P17\",\"price\":\"20.00\",\"quantity\":\"1\",\"subtotal\":20},{\"thumbnail\":\"http://localhost/eproject/public/img/dam-cong-chua-cho-be-gai-36.jpg\",\"productid\":\"P20\",\"price\":\"12.35\",\"quantity\":\"1\",\"subtotal\":12.35}]', '32.35', '2022-06-14 09:44:25', '2022-06-22 09:44:25'),
(6, 'Bui Duc Long', '0386251215', 'long201293@gmail.com', 'thanhtri ha noi', '[{\"thumbnail\":\"http://localhost/eproject/public/img/206.4.jpg\",\"productid\":\"P10\",\"price\":\"14.00\",\"quantity\":\"2\",\"subtotal\":28}]', '28', '2022-06-22 18:27:48', '2022-06-22 18:27:48'),
(7, 'Do Huy Hoang', '0386250220', 'dohuyhoang201200@gmail.com', 'Vinh Ninh, Vinh Quynh, Thanh Tri, Ha Noi', '[{\"thumbnail\":\"http://localhost/eproject/public/img/56d44540-f03e-11e7-a346-4beecc8e757e.jpg\",\"productid\":\"P02\",\"price\":\"20.00\",\"quantity\":\"2\",\"subtotal\":40}]', '40', '2023-06-28 05:27:38', '2023-06-28 05:27:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `categorygroup_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`categorygroup_id`, `categoryid`, `categoryname`, `created_at`, `updated_at`) VALUES
('CG1', 'C01', 'Đầm Nữ', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG1', 'C02', 'Áo Nữ', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG1', 'C03', 'Quần Nữ', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG1', 'C04', 'Chân Váy', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG1', 'C05', 'Bộ Liền', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG2', 'C06', 'Đầm Nữ', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG2', 'C07', 'Áo Nữ', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG2', 'C08', 'Quần Nữ', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG2', 'C09', 'Chân Váy', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG2', 'C10', 'Bộ Liền', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG3', 'C11', 'Sản Phẩm Mẹ', '2022-06-19 03:01:16', '2022-06-19 03:01:16'),
('CG3', 'C12', 'Sản Phẩm Bé', '2022-06-19 03:01:16', '2022-06-19 03:01:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categoriesgroup`
--

CREATE TABLE `categoriesgroup` (
  `categorygroup_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorygroup_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categoriesgroup`
--

INSERT INTO `categoriesgroup` (`categorygroup_id`, `categorygroup_name`, `created_at`, `updated_at`) VALUES
('CG1', 'Thời Trang Công Sở', '2022-06-19 02:48:51', '2022-06-19 02:48:51'),
('CG2', 'Thời Trang Trẻ', '2022-06-19 02:48:51', '2022-06-19 02:48:51'),
('CG3', 'Mẹ Và Bé', '2022-06-19 02:48:51', '2022-06-19 02:48:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galleries`
--

CREATE TABLE `galleries` (
  `categoryid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `galleries`
--

INSERT INTO `galleries` (`categoryid`, `id`, `thumbnail`, `description`, `created_at`, `updated_at`) VALUES
('C01', 1, 'http://localhost/eproject/public/img/0r0a9843_2016-12-19-164911.jpg', 'Năng động , ngày mới vui vẻ ...', '2022-05-31 05:29:57', '2022-05-31 05:29:57'),
('C01', 2, 'http://localhost/eproject/public/img/5ecd4a60-96c7-11e7-adbf-7ff79c4eee86.jpg', 'Cá tính, mạnh mẽ ...', '2022-06-08 05:31:31', '2022-06-08 05:31:31'),
('C01', 3, 'http://localhost/eproject/public/img/20(12).jpg', 'Tôi không thiết kế trang phục, tôi thiết kế những giấc mơ ...', '2022-06-10 05:35:07', '2022-06-10 05:35:07'),
('C01', 4, 'http://localhost/eproject/public/img/2083_1472263639.97894.jpg', 'Sự khác biệt giữa phong cách và thời trang là ở chất lượng ...', '2022-06-18 05:36:24', '2022-06-18 05:36:24'),
('C06', 5, 'http://localhost/eproject/public/img/47b799_simg_d0daf0_800x1200_max.jpg', 'Hãy bước những bước đi như thể có ba người đàn ông đang bước sau lưng bạn ...', '2022-06-18 05:38:11', '2022-06-18 05:38:11'),
('C06', 6, 'http://localhost/eproject/public/img/305-jumpsuit-ngan-kieu-gia-vay-cup-nguc-1.jpg', 'Hãy bước những bước đi như thể có ba người đàn ông đang bước sau lưng bạn ...', '2022-06-18 05:40:19', '2022-06-18 05:40:19'),
('C06', 7, 'http://localhost/eproject/public/img/product.avatar.90fda647ca15e97c.c491e1baa76d206ee1bbaf2042525631302e6a7067.jpg', 'Sự khác biệt giữa phong cách và thời trang là ở chất lượng ...', '2022-06-18 05:41:19', '2022-06-18 05:41:19'),
('C02', 8, 'http://localhost/eproject/public/img/125.jpg', 'Good', '2022-06-18 05:43:21', '2022-06-18 05:43:21'),
('C02', 9, 'http://localhost/eproject/public/img/ao-thun-nu-tay-lo-thoi-trang-99k.jpg', 'Today you inspired me', '2022-06-18 05:49:59', '2022-06-18 05:49:59'),
('C02', 10, 'http://localhost/eproject/public/img/143505-ao-thun-nu-stay-de-thuong.jpg', 'STAY', '2022-06-18 05:45:21', '2022-06-18 05:45:21'),
('C07', 11, 'http://localhost/eproject/public/img/6_12_1320298526_18_111103fsyes2410.jpg', 'Năng động , ngày mới vui vẻ ...', '2022-06-18 05:46:39', '2022-06-18 05:46:39'),
('C07', 12, 'http://localhost/eproject/public/img/Ao_len_form_dai_mau_hong_vat_bau_b3350_3.jpg', 'Hot ...', '2022-06-18 05:51:50', '2022-06-18 05:51:50'),
('C07', 13, 'http://localhost/eproject/public/img/Don-dong-ve-cung-ao-len-co-lo-am-ap-9.jpg', 'Cá tính, mạnh mẽ ...', '2022-06-18 05:53:41', '2022-06-18 05:53:41'),
('C03', 14, 'http://localhost/eproject/public/img/1U9A4145-1-copy.jpg', 'Đừng chạy theo xu hướng. Đừng lệ thuộc vào thời trang. Bạn có thể quyết định mình là ai, như thế nào thông qua cách bạn lựa chọn trang phục cũng như phong cách sống của mình', '2022-06-18 05:54:42', '2022-06-18 05:54:42'),
('C08', 15, 'http://localhost/eproject/public/img/jyp1464151623.jpg', 'Độc đáo, phá cách ...', '2022-06-18 05:56:44', '2022-06-18 05:56:44'),
('C01', 16, 'http://localhost/eproject/public/img/7-2_2015-10-07-214404.jpg', 'Độc đáo, phá cách ...', '2022-06-18 05:59:44', '2022-06-18 05:59:44'),
('C03', 17, 'http://localhost/eproject/public/img/quan-tay-chat-lieu-cotton-co-gian-cao-cap-quan-ton-dang-2.jpg', 'Hãy bước những bước đi như thể có ba người đàn ông đang bước sau lưng bạn ...', '2022-06-18 18:44:28', '2022-06-18 18:44:28'),
('C03', 18, 'http://localhost/eproject/public/img/sieu-khuyen-mai-set-bo-cong-so-ao-tron-va-quan-tay-cuc-dep-1m4G3-MZGtY9_simg_d0daf0_800x1200_max.jpg', 'Năng động , ngày mới vui vẻ ...', '2022-06-19 05:45:57', '2022-06-19 05:45:57'),
('C04', 19, 'http://localhost/eproject/public/img/00a-1001.jpg', 'Trang phục chẳng có ý nghĩa gì hết cho đến khi ai đó mặc chúng', '2022-06-19 05:46:24', '2022-06-19 05:46:24'),
('C04', 20, 'http://localhost/eproject/public/img/1_mau_Den_w9006ds105_thumb_600x600.jpg', 'Good', '2022-06-19 05:46:43', '2022-06-19 05:46:43'),
('C04', 21, 'http://localhost/eproject/public/img/5079f3fdd2dc7e23c4983065dfeef5e8bc278724 (1).jpg', 'Giản dị mà đẹp kỳ diệu ...', '2022-06-19 05:47:02', '2022-06-19 05:47:02'),
('C09', 22, 'http://localhost/eproject/public/img/20170513090521_23564.jpg', 'Trang phục chẳng có ý nghĩa gì hết cho đến khi ai đó mặc chúng', '2022-06-19 05:47:32', '0000-00-00 00:00:00'),
('C09', 23, 'http://localhost/eproject/public/img/đầm-sọc-ngang.jpg', 'Thời trang là cách để mô tả bạn trông ra làm sao, là cách bạn muốn thể hiện mình mong muốn như thế nào', '2022-06-19 05:48:22', '2022-06-19 05:48:22'),
('C05', 24, 'http://localhost/eproject/public/img/4_3.jpg', 'Thời trang có thể lỗi thời, chỉ phong cách mới tồn tại vĩnh cửu', '2022-06-19 05:49:56', '2022-06-19 05:49:56'),
('C05', 25, 'http://localhost/eproject/public/img/760581833385939278392000_x.jpg', 'Thời trang có thể lỗi thời, chỉ phong cách mới tồn tại vĩnh cửu', '2022-06-19 05:50:09', '2022-06-19 05:50:09'),
('C10', 26, 'http://localhost/eproject/public/img/HTB1y6d3GFXXXXaAXpXXq6xXFXXXn.jpg', 'Thời trang thiên về thể hiện xu hướng. Phong cách thiên về thể hiện bản thân', '2022-06-08 05:50:52', '2022-06-08 05:50:52'),
('C11', 27, 'http://localhost/eproject/public/img/7-shop-thoi-trang-dien-xinh-cho-me-va-be-o-sai-gon-23b84056636202694162887166.jpg', 'Quần áo không làm thay đổi thế giới, chỉ những người phụ nữ mặc chúng mới làm thay đổi thế giới', '2022-06-08 05:51:48', '2022-06-08 05:51:48'),
('C12', 28, 'http://localhost/eproject/public/img/1449214279-3-nguoi-dep-bat-ngo-ly-hon-hinh-anh-2-1513751839-width600height900.jpg', 'Đầm sang trọng cho mẹ và bé', '2022-06-08 05:53:07', '2022-06-08 05:53:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_03_235319_create_categoriesgroup_table', 1),
(4, '2018_10_04_091954_create_categories_table', 1),
(5, '2018_10_04_092022_create_products_table', 1),
(6, '2018_10_07_150247_create_galleries_table', 2),
(7, '2018_10_09_232417_create_carts_table', 3),
(8, '2018_10_10_213142_create_cartdetails_table', 4),
(9, '2018_10_11_095544_create_carts_table', 5),
(10, '2018_10_11_100333_create_carts_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `categoryid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_detail` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`categoryid`, `productid`, `title`, `thumbnail`, `quantity`, `price`, `description`, `description_detail`, `created_at`, `updated_at`) VALUES
('C01', 'P01', 'Đầm Công Sở', 'http://localhost/eproject/public/img/2cd99d70-ff5d-11e7-8bc8-f9300af17ed0.jpg', 20, '22.00', 'Năng động , ngày mới vui vẻ ...', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-19 06:03:28', '2022-06-19 06:03:28'),
('C01', 'P02', 'Đầm Công Sở', 'http://localhost/eproject/public/img/56d44540-f03e-11e7-a346-4beecc8e757e.jpg', 40, '20.00', 'Tôi không thiết kế trang phục, tôi thiết kế những giấc mơ ...', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <span style=\"background-color: rgb(255, 255, 0);\">Việt Nam</span>,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:09:49', '2022-06-08 06:09:49'),
('C01', 'P03', 'Đầm Công Sở', 'http://localhost/eproject/public/img/5ecd4a60-96c7-11e7-adbf-7ff79c4eee86.jpg', 100, '26.00', 'Năng động , ngày mới vui vẻ ...', '<p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-06-08 06:11:31', '2022-06-08 06:11:31'),
('C02', 'P04', 'Áo Nữ Công Sở', 'http://localhost/eproject/public/img/125.jpg', 20, '10.00', 'Good', '<p><span style=\"font-family: &quot;Courier New&quot;;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span></p><p><span style=\"font-family: &quot;Courier New&quot;;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span></p><p><span style=\"font-family: &quot;Courier New&quot;;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span></p><p><span style=\"font-family: &quot;Courier New&quot;;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span></p><p><span style=\"font-family: &quot;Courier New&quot;;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span></p><p><span style=\"font-family: &quot;Courier New&quot;;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-06-08 06:12:58', '2022-06-08 06:12:58'),
('C02', 'P05', 'Áo Nữ Công Sở', 'http://localhost/eproject/public/img/ao-so-mi-co-duc-cong-so-dep.2.jpg', 40, '12.00', 'Năng động , ngày mới vui vẻ ...', '<p><span style=\"font-family: Impact;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span></p><p><span style=\"font-family: Impact;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span></p><p><span style=\"font-family: Impact;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span></p><p><span style=\"font-family: Impact;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span></p><p><span style=\"font-family: Impact;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span></p><p><span style=\"font-family: Impact;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-06-08 06:15:38', '2022-06-08 06:15:38'),
('C03', 'P06', 'Quần nữ Công Sở', 'http://localhost/eproject/public/img/5-8987.jpg', 20, '10.00', 'Sự khác biệt giữa phong cách và thời trang là ở chất lượng ...', '<p><em style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px;\">Sự khác biệt giữa phong cách và thời trang là ở chất lượng</em><em style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px;\">Sự khác biệt giữa phong cách và thời trang là ở chất lượng</em><em style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px;\">Sự khác biệt giữa phong cách và thời trang là ở chất lượng</em><em style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px;\">Sự khác biệt giữa phong cách và thời trang là ở chất lượng</em><em style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Arial, sans-serif; font-size: 16px;\">Sự khác biệt giữa phong cách và thời trang là ở chất lượng</em><br></p>', '2022-06-08 06:20:19', '2022-06-08 06:20:19'),
('C04', 'P07', 'Chân Váy Công Sở', 'http://localhost/eproject/public/img/đầm-sọc-ngang.jpg', 40, '16.90', 'Sự khác biệt giữa phong cách và thời trang là ở chất lượng ...', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:24:57', '2022-06-08 06:24:57'),
('C04', 'P08', 'Chân Váy Công Sở', 'http://localhost/eproject/public/img/344706- (1).jpg', 40, '20.00', 'Phong cách, duyên dáng', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:26:25', '2022-06-08 06:26:25'),
('C04', 'P09', 'Chân Váy Công Sở', 'http://localhost/eproject/public/img/00a-1001.jpg', 100, '10.00', 'Năng động , ngày mới vui vẻ ...', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:27:06', '2022-06-08 06:27:06'),
('C05', 'P10', 'Bộ Liền Công Sở', 'http://localhost/eproject/public/img/206.4.jpg', 20, '14.00', 'Sự khác biệt giữa phong cách và thời trang là ở chất lượng ...', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:46:16', '2022-06-08 06:46:16'),
('C06', 'P11', 'Đầm Teen', 'http://localhost/eproject/public/img/3916203508_1672722215_1024x1024.jpg', 20, '10.00', 'Thời trang là cách để mô tả bạn, là cách bạn muốn thể hiện mình', '<p><span style=\"color: rgb(0, 255, 0);\">Lorem ipsum dolor sit amet</span>, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:50:43', '2022-06-08 06:50:43'),
('C07', 'P12', 'Áo Teen', 'http://localhost/eproject/public/img/143505-ao-thun-nu-stay-de-thuong.jpg', 20, '9.09', 'STAY', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p><br></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:51:51', '2022-06-08 06:51:51'),
('C08', 'P13', 'Quần Teen', 'http://localhost/eproject/public/img/7-mon-do-giup-nguoi-mac-an-gian-tuoi-1557070.png', 40, '4.99', 'Thời trang là một thứ ngôn ngữ ....', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:53:21', '2022-06-08 15:07:14'),
('C09', 'P14', 'Chân Váy Teen', 'http://localhost/eproject/public/img/1_mau_Den_w9006ds105_thumb_600x600.jpg', 100, '3.99', 'Năng động , ngày mới vui vẻ ...', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 06:54:50', '2022-06-08 06:54:50'),
('C10', 'P15', 'Bộ Liền Teen', 'http://localhost/eproject/public/img/0001745dba70d01fb99f8654ad2d845c.jpg', 20, '16.50', 'Thời trang thiên về thể hiện xu hướng. Phong cách thiên về thể hiện bản thân', '<p><span style=\"font-family: &quot;Times New Roman&quot;;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span></p><p><span style=\"font-family: &quot;Times New Roman&quot;;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span></p><p><span style=\"font-family: &quot;Times New Roman&quot;;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span></p><p><span style=\"font-family: &quot;Times New Roman&quot;;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span></p><p><span style=\"font-family: &quot;Times New Roman&quot;;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span></p><p><span style=\"font-family: &quot;Times New Roman&quot;;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-06-08 06:55:57', '2022-06-08 06:55:57'),
('C11', 'P16', 'Sản Phẩm Mẹ', 'http://localhost/eproject/public/img/47b799_simg_d0daf0_800x1200_max.jpg', 10, '10.00', 'Đầm sang trọng của mẹ', '<p><span style=\"font-family: Impact;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span></p><p><span style=\"font-family: Tahoma;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span></p><p><span style=\"font-family: Tahoma;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span></p><p><span style=\"font-family: Tahoma;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span></p><p><span style=\"font-family: Tahoma;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span></p><p><span style=\"font-family: Tahoma;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-06-08 06:57:13', '2022-06-08 06:57:13'),
('C11', 'P17', 'Sản Phẩm Mẹ', 'http://localhost/eproject/public/img/2083_1472263639.97894.jpg', 10, '20.00', 'Đầm sang trọng của mẹ', '<p><span style=\"font-family: Verdana;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span></p><p><span style=\"font-family: Verdana;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span></p><p><span style=\"font-family: Verdana;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span></p><p><span style=\"font-family: Verdana;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span></p><p><span style=\"font-family: Verdana;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span></p><p><span style=\"font-family: Verdana;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-06-08 06:58:34', '2022-06-08 06:58:34'),
('C12', 'P18', 'Sản Phẩm Cho Bé', 'http://localhost/eproject/public/img/15.jpg', 20, '5.00', 'Đầm sang trọng cho bé', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2022-06-08 07:02:16', '2022-06-08 07:02:16'),
('C12', 'P19', 'Sản Phẩm Cho Bé', 'http://localhost/eproject/public/img/DAM-974A.JPG', 20, '6.55', 'Váy Công Chúa sành điệu dành cho bé', '<p><span style=\"font-family: Tahoma;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span></p><p><span style=\"font-family: Tahoma;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span></p><p><span style=\"font-family: Tahoma;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span></p><p><span style=\"font-family: Tahoma;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span></p><p><span style=\"font-family: Tahoma;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span></p><p><span style=\"font-family: Tahoma;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-06-08 07:03:54', '2022-06-08 07:03:54'),
('C12', 'P20', 'Sản Phẩm Cho Bé', 'http://localhost/eproject/public/img/dam-cong-chua-cho-be-gai-36.jpg', 10, '12.35', 'Đầm Công Chúa cho bé', '<p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span></p><p><span style=\"font-family: &quot;Comic Sans MS&quot;;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-06-08 07:05:15', '2022-06-08 07:05:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `birthday`, `gender`, `address`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Muon Tuan Anh', 'mvtaaa21@gmail.com', NULL, '$2y$10$EbxHUdq8RWrWWpsPuIcC9.QA1gFACasLZje8fRYKn6h52mJVei88i', '2000-06-02', 'Male', 'Hai Duong', NULL, '2022-06-19 15:21:30', '2022-06-19 15:21:30'),
(3, 'Luu Ngoc Manh', 'luungmanh533@gmail.com', NULL, '$2y$10$TScH8Hpz/zztbm11Nyn0B.SlKqvcyciWMQukMMu2Jnh2L0//kn8lK', '2000-08-28', 'Male', 'Ha Noi', NULL, '2022-06-19 15:23:33', '2022-06-19 15:23:33'),
(5, 'Do Huy Hoang', 'dohuyhoang201200@gmail.com', NULL, '$2y$10$EbxHUdq8RWrWWpsPuIcC9.QA1gFACasLZje8fRYKn6h52mJVei88i', '2000-09-06', 'Male', 'Ha Noi', '9Hf4WlNwWy0eIq9n5Cx28ewQChx1SUltXAxDm7ViD324bKYJPcpBlVY5ktJY', '2022-06-19 15:25:31', '2022-06-23 04:51:57');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`ordering_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`),
  ADD KEY `categories_categorygroup_id_foreign` (`categorygroup_id`);

--
-- Chỉ mục cho bảng `categoriesgroup`
--
ALTER TABLE `categoriesgroup`
  ADD PRIMARY KEY (`categorygroup_id`);

--
-- Chỉ mục cho bảng `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_categoryid_foreign` (`categoryid`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `products_categoryid_foreign` (`categoryid`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `ordering_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_categorygroup_id_foreign` FOREIGN KEY (`categorygroup_id`) REFERENCES `categoriesgroup` (`categorygroup_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_categoryid_foreign` FOREIGN KEY (`categoryid`) REFERENCES `categories` (`categoryid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`categoryid`) REFERENCES `categories` (`categoryid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
