-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 17 2020 г., 20:29
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- База данных: `ecom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, '', '', 1),
(2, 'sanyan', 'sanyan', 1, 'sanyan@gmail.com', '1234567890', 1),


-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(12, 'Пироги', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(75) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(6, 'ООО\"Фрукты-ягоды\"', 'fruct@gmail.com', '7(999)628-53-06', 'Закупка фруктов для пирогов', '2020-06-14 02:26:33');

-- --------------------------------------------------------

--
-- Структура таблицы `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(5, 'ffdgf', 15, 'Процент', 1000, 1),
(6, 'явы', 15, 'Рубли', 1000, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `mihpayid` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_value` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `coupon_code` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `coupon_id`, `coupon_value`, `coupon_code`, `added_on`) VALUES
(5, 2, 'russian', 'Volgograd', 403531, 'payu', 12000, 'pending', 1, 0, 0, 0, 0, 'feffb32113e04d64cfd6', '', 0, 0, '', 0, '', '', '2020-06-14 02:02:35'),
(7, 2, 'stroiteley', 'Volgograd', 403531, 'payu', 1, 'failure', 1, 0, 0, 0, 0, '6576d8a5743690a6f3d3', '403993715521120435', 0, 0, '', 0, '', '', '2020-06-14 02:08:17'),
(9, 2, 'Кирова', 'Волгоград', 403531, 'COD', 500, 'Success', 5, 0, 0, 0, 0, '663a63a7181aac8dd76f', '', 0, 0, '', 0, '', '', '2020-06-15 05:43:20'),
(10, 2, 'stroiteley', 'Фролово', 403531, 'COD', 623, 'pending', 1, 0, 0, 0, 0, '0a4d5c1e8650dd9b460a', '', 0, 0, '', 0, '', '', '2020-06-15 05:47:53'),
(11, 3, 'russian', 'Фролово', 403531, 'payu', 100, 'pending', 1, 0, 0, 0, 0, '7a62c42d5872a12f199e', '', 0, 0, '', 0, '', '', '2020-06-16 01:58:08'),
(12, 3, 'russian', 'Фролово', 403531, 'COD', 500, 'pending', 1, 0, 0, 0, 0, '230ecb96789e1fd591d2', '', 0, 0, '', 0, '', '', '2020-06-16 06:54:32'),
(13, 3, 'stroiteley', 'Фролово', 403531, 'COD', 500, 'pending', 1, 0, 0, 0, 0, 'b72973b01acce6ab6e73', '', 0, 0, '', 0, '', '', '2020-06-17 02:59:12'),
(14, 3, 'stroiteley1', 'Фролово', 403531, 'COD', 1500, 'pending', 1, 0, 0, 0, 0, 'ebb0011363f9a7f73b74', '', 0, 0, '', 0, '', '', '2020-06-17 03:02:15'),
(15, 3, 'delhi', 'Фролово', 403531, 'COD', 12500, 'pending', 1, 0, 0, 0, 0, 'b75a22c5709696bb133c', '', 0, 0, '', 0, '', '', '2020-06-17 03:05:19'),
(16, 3, 'Кирова', 'Фролово', 403531, 'payu', 935, 'pending', 1, 0, 0, 0, 0, 'b973f1c03add5a682f84', '', 0, 0, '', 6, '165', 'явы', '2020-06-17 03:54:59'),
(17, 3, 'russian', 'Фролово', 403531, 'payu', 500, 'pending', 1, 0, 0, 0, 0, 'edb0529b60ac9c3876c1', '', 0, 0, '', 0, '', '', '2020-06-17 06:03:00');

-- --------------------------------------------------------

--
-- Структура таблицы `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(14, 11, 19, 1, 100),
(17, 14, 23, 3, 500),
(20, 16, 25, 1, 600),
(21, 16, 26, 1, 500),
(22, 17, 23, 1, 500);

-- --------------------------------------------------------

--
-- Структура таблицы `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `short_desc` varchar(2000) CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) CHARACTER SET utf8mb4 NOT NULL,
  `meta_desc` varchar(2000) CHARACTER SET utf8mb4 NOT NULL,
  `meta_keyword` varchar(2000) CHARACTER SET utf8mb4 NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(23, 12, 9, 'Пирог мандариновый', 10, 500, 10, '281893463_Pie_apricot_476975_2560x1600.jpg', 'Краткое описание', 'Краткое описание', 1, 'Краткое описание', 'Краткое описание', 'Краткое описание', 1, 1),
(25, 12, 9, 'Пирог вишневый', 10, 600, 10, '156256830_s1200.jpg', 'Краткое описание', 'Краткое описание', 1, 'Краткое описание', 'Краткое описание', 'Краткое описание', 2, 1),
(26, 12, 9, 'Пирог мандариновый', 10, 500, 10, '281810179_Pie_apricot_476975_2560x1600.jpg', 'Краткое описание', 'Краткое описание', 0, 'Краткое описание', 'Краткое описание', 'Краткое описание', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `shiprocket_token`
--

CREATE TABLE `shiprocket_token` (
  `id` int(11) NOT NULL,
  `token` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `shiprocket_token`
--

INSERT INTO `shiprocket_token` (`id`, `token`, `added_on`) VALUES
(1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjQ5NDkwOSwiaXNzIjoiaHR0cHM6Ly9hcGl2Mi5zaGlwcm9ja2V0LmluL3YxL2V4dGVybmFsL2F1dGgvbG9naW4iLCJpYXQiOjE1OTA0MDQ4NTMsImV4cCI6MTU5MTI2ODg1MywibmJmIjoxNTkwNDA0ODUzLCJqdGkiOiJWZU4zaE5YMm1LdVY4cXB0In0.YKracv-yDKppYb2FISr5zE_4gEGWIAz-HzIa6cit9nw', '2020-05-25 05:07:26');

-- --------------------------------------------------------

--
-- Структура таблицы `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(9, 12, 'Сладкие', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(3, 'sanyan', 'ale140898ALE', 'sanyan164@gmail.com', '89996285306', '2020-05-14 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(9, 2, 18, '2020-06-15 05:42:24'),
(10, 2, 16, '2020-06-15 05:47:32'),
(13, 3, 21, '2020-06-16 06:53:03'),
(14, 3, 23, '2020-06-17 02:58:47'),
(15, 3, 24, '2020-06-17 03:04:56');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coupon_master`
--
ALTER TABLE `coupon_master`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `coupon_id` (`coupon_id`);

--
-- Индексы таблицы `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
