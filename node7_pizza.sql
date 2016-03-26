-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Време на генериране: 26 март 2016 в 15:00
-- Версия на сървъра: 5.5.45-cll-lve
-- Версия на PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `node7_pizza`
--

-- --------------------------------------------------------

--
-- Структура на таблица `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` varchar(10) NOT NULL,
  `pizzacode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Схема на данните от таблица `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `number`, `pizzacode`) VALUES
(1, 'zasza', 'zaza', 'zaza', 'abababa'),
(2, 'zasza', 'zaza', 'zaza', 'abababa'),
(3, 'zasza', 'zaza', '0899841533', 'abababa'),
(4, 'zasza', 'zaza', '0899841533', 'abababa');

-- --------------------------------------------------------

--
-- Структура на таблица `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `productimage` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` float NOT NULL,
  `displayname` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 COLLATE=cp1251_bin AUTO_INCREMENT=8 ;

--
-- Схема на данните от таблица `products`
--

INSERT INTO `products` (`id`, `productname`, `productimage`, `price`, `displayname`) VALUES
(1, 'domat', 'images/ing/tomato.png', 0.5, 'Доматки'),
(2, 'olive', 'images/ing/olives.png', 0.4, 'Маслинки'),
(3, 'mushroom', 'images/ing/mushrooms.png', 0.6, 'Гъбки'),
(4, 'luk', 'images/ing/luk.png', 0.4, 'Лучец'),
(5, 'bekon', 'images/ing/bekon.png', 1, 'Беконче'),
(6, 'salami', 'images/ing/salami.png', 0.8, 'Саламче'),
(7, 'chushka', 'images/ing/chushka.png', 0.3, 'Чушчица');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `number`, `username`, `password`, `confirmed`) VALUES
(1, 'georgi', 'sasasa', '007', 'gopsan', '86fb3bdfd18c375e452153b46e6ae45bb1e96aae0bca4ff19adc93f474c85f6cb6cd8f184fbfaac56e00df0d7cd480998959769aa0c206227254b62b1f29fca8', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
