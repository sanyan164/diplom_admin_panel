-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 14 2020 г., 03:11
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ecom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, '', '', 1),
(2, 'vishal', 'vishal', 1, 'vishal@gmail.com', '1234567890', 1),
(3, 'amit', 'amit', 1, 'amit@gmail.com', '1234567890', 1),
(5, 'vishal1', 'vishal', 1, 'vishal@gmail.com', '1234567890', 1);

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
(1, 'Mobile', 1),
(2, 'Man', 1),
(4, 'Woman', 1),
(6, 'проверка', 1),
(8, 'прувет', 1);

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
(1, 'Vishal', 'vishal@gmail.com', '1234567890', 'Test Query', '2020-01-14 00:00:00'),
(2, 'vishal@gmail.com', '', '1234567890', 'testing', '2020-01-19 07:59:38'),
(3, 'Vishal', 'vishal@gmail.com', '1234567890', 'testing', '2020-01-19 08:00:09'),
(4, 'test', 'test@gmail.com', '9990413778', 'test', '2020-05-01 09:21:37'),
(5, '?????', 'sanyan164@gmail.com', '7(999)628-53-06', 'FHGFHGJJDGFGJJDGFDJG', '2020-06-14 02:25:44'),
(6, 'Alehander', 'sanyan164@gmail.com', '7(999)628-53-06', '?????????? ????', '2020-06-14 02:26:33');

-- --------------------------------------------------------

--
-- Структура таблицы `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'First50', 1000, 'Rupee', 1500, 1),
(2, 'First60', 20, 'Percentage', 1000, 1);

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
(1, 1, 'delhi', 'delhi', 110076, 'COD', 110, 'pending', 1, 0, 0, 0, 0, 'a0a7dfccb449d8fef1fc', '', 0, 0, '', 0, '', '', '2020-05-29 09:55:15'),
(2, 1, 'Delhi', 'Delhi', 110076, 'COD', 250, 'pending', 1, 0, 0, 0, 0, '2f51ccbc668e912fa9c2', '', 0, 0, '', 0, '', '', '2020-05-29 09:59:03'),
(3, 2, 'delhi', 'delhi', 110076, 'COD', 100, 'pending', 1, 0, 0, 0, 0, 'e1bc722b932a35b77ee1', '', 0, 0, '', 0, '', '', '2020-06-14 12:57:54'),
(4, 2, 'delhi', 'Volgograd', 403531, 'COD', 100, 'pending', 1, 0, 0, 0, 0, '500df24cf375f4ab12d8', '', 0, 0, '', 0, '', '', '2020-06-14 01:09:58'),
(5, 2, 'russian', 'Volgograd', 403531, 'payu', 12000, 'pending', 1, 0, 0, 0, 0, 'feffb32113e04d64cfd6', '', 0, 0, '', 0, '', '', '2020-06-14 02:02:35'),
(6, 2, 'stroiteley', 'Volgograd', 403531, 'payu', 0.1, 'pending', 1, 0, 0, 0, 0, '20f3349d4f769b38f35a', '', 0, 0, '', 0, '', '', '2020-06-14 02:05:48'),
(7, 2, 'stroiteley', 'Volgograd', 403531, 'payu', 1, 'failure', 1, 0, 0, 0, 0, '6576d8a5743690a6f3d3', '403993715521120435', 0, 0, '', 0, '', '', '2020-06-14 02:08:17');

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
(1, 1, 12, 1, 100),
(2, 1, 10, 1, 10),
(3, 2, 13, 1, 150),
(4, 2, 12, 1, 100),
(5, 3, 12, 1, 100),
(6, 4, 12, 1, 100),
(7, 5, 15, 1, 12000),
(8, 6, 15, 1, 0.1),
(9, 7, 15, 1, 1);

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
(1, 1, 0, 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', 9999, 8499, 10, '799153645_303b4a46-a701-4b43-b9c1-d98a2b53422f.jpg', 'Mauris dapibus tellus quis risus maximus molestie. Curabitur eget tortor tellus.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus scelerisque quis nisi porta congue. Aenean sed maximus ligula. Vestibulum quis eros id ex condimentum lacinia. Nam interdum finibus odio, sit amet commodo erat varius sed. In at velit velit. Nullam vitae gravida mi. Donec aliquet nunc non ipsum bibendum, et elementum nibh lobortis. Fusce tempor elit at mauris luctus euismod. Donec eu massa eros. Aenean maximus vitae nisl ut sollicitudin. Aenean urna arcu, laoreet at ante eget, maximus mattis lacus. Mauris dapibus tellus quis risus maximus molestie. Curabitur eget tortor tellus.', 1, 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', '', 'Realme C3 (Frozen Blue, 64 GB) (4 GB RAM)', 0, 1),
(2, 1, 0, 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', 165800, 155800, 4, '942626953_iphone.jpg', 'Aenean tempus ut leo nec laoreet. Vestibulum ut est neque.', 'Curabitur eget augue dolor. Curabitur id dapibus massa. Vestibulum at enim quis metus ultrices posuere vitae sit amet eros. Morbi et libero pellentesque, efficitur odio nec, congue lorem. Vestibulum faucibus, risus eget pretium efficitur, neque nulla eleifend purus, non venenatis lorem ligula vel nulla. Fusce finibus efficitur sapien vitae laoreet. Integer imperdiet justo sed tellus dictum, at egestas arcu finibus. Fusce et augue elit. Praesent tincidunt purus in purus dictum volutpat. Aenean tempus ut leo nec laoreet. Vestibulum ut est neque.', 0, 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', '', 'APPLE IPHONE 11 PRO MAX (512GB) - MIDNIGHT GREEN', 0, 1),
(3, 1, 0, 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 115900, 115900, 5, '567328558_samsung-galaxy-s10-plus-1tb-ceramic-white-12gb-ram-.jpg', 'Nullam purus lorem, tincidunt vitae tristique non, imperdiet ut urna.', 'Nullam a nunc et lorem ornare faucibus. Etiam tortor lacus, auctor eget enim at, tincidunt dignissim magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin tincidunt eros eget felis tempor, id volutpat ipsum lacinia. Donec scelerisque risus non purus scelerisque tristique. Mauris enim ligula, condimentum sed iaculis nec, porttitor eu nunc. Sed hendrerit vel arcu vitae iaculis. Phasellus vehicula molestie leo. Nullam purus lorem, tincidunt vitae tristique non, imperdiet ut urna.', 0, 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 'Samsung Galaxy S10 Plus 1TB (Ceramic White, 12GB RAM)', 0, 1),
(4, 2, 2, 'SHEEN-SOLID TROUSER-OLIVE', 1999, 1200, 3, '697347005_2__1538219531_49.204.69.38_600x.jpg', 'per inceptos himenaeos. Ut commodo ullamcorper quam non pulvinar.', 'Duis a felis congue, feugiat est non, suscipit quam. In elit lacus, auctor sed lacus eget, egestas consectetur leo. Duis pellentesque pharetra ante, ac ornare nibh faucibus id. Integer pulvinar malesuada nisl. Nulla vel orci nunc. Nullam a tellus eu ex ullamcorper mollis. Donec commodo ligula a accumsan fermentum. Mauris sed orci lacinia, posuere leo molestie, pretium mi. Cras sodales, neque id cursus fermentum, mi purus vehicula sem, vel laoreet lorem justo id tortor. Sed ut urna ut ipsum vestibulum commodo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut commodo ullamcorper quam non pulvinar.', 0, 'SHEEN-SOLID TROUSER-OLIVE', 'SHEEN-SOLID TROUSER-OLIVE', 'SHEEN-SOLID TROUSER-OLIVE', 0, 1),
(5, 2, 0, 'NATURE-LINEN SHIRT-GREEN', 2799, 2399, 8, '812581380_nature_green-0224_600x.jpg', 'a nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 'Nunc auctor turpis ante, eget bibendum mi mollis in. Aliquam quis neque ut libero malesuada auctor. Aliquam interdum enim at commodo gravida. Donec nisl sem, molestie ut quam quis, vulputate venenatis ipsum. Aenean quis ex ut magna accumsan fringilla. Quisque id ex massa. Sed libero ante, fringilla ac condimentum in, porttitor ac risus. Integer mattis odio nec nunc semper imperdiet. In porttitor tellus eget sapien vulputate, eu euismod lacus aliquet. Maecenas molestie elit augue, sit amet fringilla dolor congue et. Nunc eu libero auctor, sollicitudin lectus quis, porta ligula. In vel ullamcorper risus. Nullam viverra, mi sit amet laoreet luctus, urna nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 0, 'NATURE-LINEN SHIRT-GREEN', 'NATURE-LINEN SHIRT-GREEN', 'T-Shirt, NATURE-LINEN SHIRT-GREEN', 0, 1),
(6, 2, 1, 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 1999, 1500, 10, '931830512__8-(1)-E5x-104831-NJD.jpg', 'lacus quis urna tristique suscipit. Praesent vitae mi mollis dui facilisis convallis eu faucibus augue.', 'Duis in risus quis lectus dictum fringilla. Aenean tempor pellentesque velit id ullamcorper. Ut id aliquam odio. Morbi id pharetra libero, ut tempor nisi. Maecenas a lectus nec risus maximus rutrum. Mauris vel elit ut magna semper laoreet nec sed magna. Quisque eleifend vel sem non malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum eget posuere orci, eu ultrices sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam sit amet ex dictum nisl bibendum elementum non in turpis. In bibendum ipsum nunc, bibendum lacinia lacus maximus eu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus aliquam lacus quis urna tristique suscipit. Praesent vitae mi mollis dui facilisis convallis eu faucibus augue.', 0, 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 'Monte Carlo Turquoise Blue Solid Collar T Shirt', 0, 1),
(7, 4, 0, 'Floral Print Polo T-shirt', 1900, 1350, 7, '309027777_Floral-Print-Polo-T-shirt.jpg', 'isl pharetra orci, at condimentum nisl lorem elementum ipsum.', 'Nunc auctor turpis ante, eget bibendum mi mollis in. Aliquam quis neque ut libero malesuada auctor. Aliquam interdum enim at commodo gravida. Donec nisl sem, molestie ut quam quis, vulputate venenatis ipsum. Aenean quis ex ut magna accumsan fringilla. Quisque id ex massa. Sed libero ante, fringilla ac condimentum in, porttitor ac risus. Integer mattis odio nec nunc semper imperdiet. In porttitor tellus eget sapien vulputate, eu euismod lacus aliquet. Maecenas molestie elit augue, sit amet fringilla dolor congue et. Nunc eu libero auctor, sollicitudin lectus quis, porta ligula. In vel ullamcorper risus. Nullam viverra, mi sit amet laoreet luctus, urna nisl pharetra orci, at condimentum nisl lorem elementum ipsum.', 0, 'Floral Print Polo T-shirt', 'Floral Print Polo T-shirt', 'Floral Print Polo T-shirt', 0, 1),
(8, 4, 0, 'Floral Embroidered Polo T-shirt', 1120, 1900, 10, '651584201_Floral-Embroidered-Polo-T-shirt.jpg', 'rius, lacus velit aliquam ex, in dignissim sem eros ac erat. Vestibulum ac arcu tortor.', 'Vestibulum in auctor turpis. Quisque hendrerit eget turpis et molestie. Phasellus nec nibh a lacus rhoncus eleifend. Donec suscipit id diam non mattis. Fusce eu luctus leo. Etiam eget dui libero. Etiam eros lorem, rhoncus et convallis eget, tempus vel tellus. Nam at diam quis nisl tincidunt aliquam. Quisque placerat magna non libero interdum varius vel id risus. Vivamus mollis maximus fermentum. Donec eget nulla dui. Sed ultricies malesuada metus, non feugiat purus fringilla ac. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer accumsan, tortor id eleifend varius, lacus velit aliquam ex, in dignissim sem eros ac erat. Vestibulum ac arcu tortor.', 1, 'Floral Embroidered Polo T-shirt', '', 'Floral Embroidered Polo T-shirt', 0, 1),
(9, 4, 0, 'Floral Print Polo T-shirt Latest', 650, 1560, 10, '526258680_Floral-Print-Polo-T-shirt1.jpg', 's mus. Vestibulum eget posuere orci, eu ultrices sapien. Orc', 'aximus rutrum. Mauris vel elit ut magna semper laoreet nec sed magna. Quisque eleifend vel sem non malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum eget posuere orci, eu ultrices sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam sit amet ex d', 1, 'Floral Print Polo T-shirt Latest', '', 'Floral Print Polo T-shirt Latest', 0, 1),
(10, 4, 3, 'test', 100, 10, 1, '977077907_651584201_Floral-Embroidered-Polo-T-shirt.jpg', 'test', 'test', 0, '', '', '', 0, 1),
(11, 2, 0, 'Test1', 100, 50, 10, '457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'Test', 'test', 0, '', '', '', 0, 1),
(12, 2, 1, 'Test Man', 120, 100, 10, '332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'Test desc', 'Test desc', 0, '', '', '', 2, 1),
(13, 1, 0, 'My Mobile', 200, 150, 10, '991997612_567328558_samsung-galaxy-s10-plus-1tb-ceramic-white-12gb-ram-.jpg', 'Test desc', 'Test desc', 1, '', '', '', 2, 1),
(14, 2, 1, 'dm', 100, 1213, 421241, '329336870_332899305_457926432_697347005_2__1538219531_49.204.69.38_600x.jpg', 'grgsdg', 'sgrgs', 1, 'gsrgsgr', 'grgs', 'srgsg', 1, 1),
(15, 5, 4, 'hfghfg', 0, 1, 1212, '724761353_imgonline-com-ua-Resize-c0IISXUWkk8DHIA4.jpg', '3123ffsd', 'dsffsdf', 1, 'sdfsf', 'sdfsfds', 'dsfdfs', 1, 1);

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
  `sub_categories` varchar(100) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 2, 'T-Shirt', 1),
(2, 2, 'Trouser', 1),
(3, 4, 'Shirt', 1),
(4, 5, 'hhfghfhfhfg', 1),
(5, 8, '???????', 1),
(6, 8, 'аываыавыа', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Vishal Gupta', 'vishal', 'ytlearnwebdevelopment@gmail.com', '1234567890', '2020-05-13 00:00:00'),
(2, 'Amit', 'amit', 'amir@gmail.com', '1234567890', '2020-05-14 00:00:00');

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
(7, 2, 15, '2020-06-14 02:04:38');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `coupon_master`
--
ALTER TABLE `coupon_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `shiprocket_token`
--
ALTER TABLE `shiprocket_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
