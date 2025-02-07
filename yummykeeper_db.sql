-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2025 at 03:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yummykeeper_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `description`) VALUES
(1, 'Spaghetti Carbonara', 'A classic Italian pasta dish with eggs, cheese, pancetta, and pepper.'),
(2, 'Chicken Curry', 'A spicy and flavorful dish made with tender chicken and aromatic spices.'),
(3, 'Veggie Pizza', 'A delicious homemade pizza topped with fresh vegetables and cheese.'),
(4, 'Beef Stroganoff', 'A creamy Russian dish with sautéed beef, onions, and mushrooms.'),
(5, 'Caesar Salad', 'A fresh salad with romaine lettuce, croutons, parmesan cheese, and Caesar dressing.'),
(6, 'Butter Chicken', 'A rich, creamy tomato-based curry with tender chicken pieces.'),
(7, 'Chocolate Brownie', 'A dense, fudgy chocolate dessert with a crispy top layer.'),
(8, 'Garlic Butter Shrimp', 'Juicy shrimp cooked in a garlic butter sauce with herbs.'),
(9, 'Tandoori Chicken', 'Chicken marinated in yogurt and spices, then grilled or baked.'),
(10, 'Pancakes', 'Fluffy breakfast pancakes served with maple syrup and butter.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'ara', 'aratibulun31@gmail.com', '$2y$10$QKrUmZjIFYsXmHTIYcRTC.Gj6j.fBtB50qgaq3aGdHrbjAJ2oAvBe'),
(3, 'jessica', 'aratibulun4188@gmail.com', '$2y$10$W7GYr8ZFKXvNwDfyZpCqAu2cUAdVKryh905xAY7L6hGs1SRfPNtla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
