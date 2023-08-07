-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3300
-- Generation Time: Aug 07, 2023 at 07:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trollers_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `trl_menu-categories`
--

CREATE TABLE `trl_menu-categories` (
  `id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `cat_description` text NOT NULL,
  `cat_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trl_menu-categories`
--

INSERT INTO `trl_menu-categories` (`id`, `cat_title`, `cat_description`, `cat_created_at`) VALUES
(1, 'Appetizers', '', '2023-08-03 11:35:30'),
(2, 'Burgers', '', '2023-08-03 11:35:30'),
(3, 'Salads', '', '2023-08-03 11:35:30'),
(4, 'Desserts', '', '2023-08-03 11:35:30'),
(10, 'Drinks', 'best drinks in canada', '2023-08-04 09:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `trl_menu-items`
--

CREATE TABLE `trl_menu-items` (
  `menu_id` int(200) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `item_description` text NOT NULL,
  `item_price` varchar(10) NOT NULL,
  `item_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trl_menu-items`
--

INSERT INTO `trl_menu-items` (`menu_id`, `cat_id`, `item_title`, `item_description`, `item_price`, `item_created_at`) VALUES
(1, 1, 'Seafood Chowder', 'Crispy Tortillas.', '9', '2023-08-03 10:51:54'),
(2, 2, 'Portobello Mushroom', 'Pico de Gallo. Feta Cheese. Garlic Aioli.', '19', '2023-08-03 10:57:36'),
(3, 2, 'Smoked Brisket', 'House Slaw. Chimichurri. Garlic Aioli.', '22', '2023-08-03 10:57:36'),
(17, 1, 'Cod Bites', 'Lemon Dill.', '15', '2023-08-04 09:35:56'),
(19, 12, 'Cod Bites', 'Red', '45', '2023-08-04 12:29:57'),
(20, 3, 'Portobello Mushroom Salad', 'Salad', '57', '2023-08-05 06:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `trl_users`
--

CREATE TABLE `trl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(200) NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trl_users`
--

INSERT INTO `trl_users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin', '2023-08-03 09:26:31'),
(4, 'trollers_admin', '$2y$10$XijTc1N6VgmQ.Gc6eNc2Tux6fvTYsl3qspqnwreatdDj0nvHkkHEy', 'user', '2023-08-04 12:51:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trl_menu-categories`
--
ALTER TABLE `trl_menu-categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trl_menu-items`
--
ALTER TABLE `trl_menu-items`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `trl_users`
--
ALTER TABLE `trl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trl_menu-categories`
--
ALTER TABLE `trl_menu-categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trl_menu-items`
--
ALTER TABLE `trl_menu-items`
  MODIFY `menu_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `trl_users`
--
ALTER TABLE `trl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
