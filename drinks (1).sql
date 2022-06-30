-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 29, 2022 at 04:12 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petermc_bar`
--

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `menuItemID` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` text NOT NULL,
  `cost` text NOT NULL,
  `category` text NOT NULL,
  `drinkGroup` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`menuItemID`, `name`, `size`, `cost`, `category`, `drinkGroup`) VALUES
(24, 'Johnnie Walker Red', '40 ml', '130', 'Highly Alcoholic Drinks', 'Whisky'),
(25, 'Famous Gouse', '40 ml', '130', 'Highly Alcoholic Drinks', 'Whisky'),
(26, 'Ballantines Finest', '40 ml', '120', 'Highly Alcoholic Drinks', 'Whisky'),
(27, 'Teacher\'s', '40 ml', '120', 'Highly Alcoholic Drinks', 'Whisky'),
(28, 'Smirnoff Red', '40 ml', '90', 'Highly Alcoholic Drinks', 'Vodka'),
(29, 'Stolichnaya', '40 ml', '90', 'Highly Alcoholic Drinks', 'Vodka'),
(30, 'Finlandia', '40 ml', '90', 'Highly Alcoholic Drinks', 'Vodka'),
(36, 'Вотка', '40 ml', '90', 'Highly Alcoholic Drinks', 'Vodka'),
(37, 'Вотка бокалче', '250 ml', '320', 'Highly Alcoholic Drinks', 'Vodka'),
(38, 'Tequila White', '30 ml', '60', 'Highly Alcoholic Drinks', 'Tequila'),
(39, 'Tequila Yellow', '30 ml', '60', 'Highly Alcoholic Drinks', 'Tequila'),
(40, 'Текила бокалче', '250 ml', '390', 'Highly Alcoholic Drinks', 'Tequila'),
(41, 'Jameson', '40 ml', '150', 'Highly Alcoholic Drinks', 'Irish Whisky'),
(42, 'Bushmills Original', '40 ml', '160', 'Highly Alcoholic Drinks', 'Irish Whisky'),
(43, 'Tullamore D.E.W', '40 ml', '160', 'Highly Alcoholic Drinks', 'Irish Whisky'),
(44, 'Teeling Small Batch ', '40 ml', '200', 'Highly Alcoholic Drinks', 'Irish Whisky'),
(45, 'Four Roses', '40 ml', '150', 'Highly Alcoholic Drinks', 'Bourbon'),
(46, 'Wild Turkey 81', '40 ml', '160', 'Highly Alcoholic Drinks', 'Bourbon'),
(47, 'Jim Beam White Label', '40 ml', '130', 'Highly Alcoholic Drinks', 'Bourbon'),
(48, 'Penny Pecker', '40 ml', '110', 'Highly Alcoholic Drinks', 'Bourbon'),
(49, 'Jack Daniel\'s Old No.7	', '40 ml', '180', 'Highly Alcoholic Drinks', 'Tennessee Whiskey'),
(50, 'Jack Daniel\'s Gentelman Jack', '40 ml', '220', 'Highly Alcoholic Drinks', 'Tennessee Whiskey'),
(51, 'Lemmy Jack &amp; Coke', '250 ml', '220', 'Highly Alcoholic Drinks', 'Tennessee Whiskey'),
(52, 'Bacardi Cartai Blanca ', '40 ml', '120', 'Highly Alcoholic Drinks', 'Rum'),
(53, 'Captain Morgan Dark', '40 ml', '110', 'Highly Alcoholic Drinks', 'Rum'),
(54, 'Captain Morgan White', '40 ml', '110', 'Highly Alcoholic Drinks', 'Rum'),
(55, 'Captain Morgan Spiced Gold', '40 ml', '110', 'Highly Alcoholic Drinks', 'Rum'),
(56, 'Рум темен', '40 ml', '70', 'Highly Alcoholic Drinks', 'Rum'),
(57, 'Рум бел', '40 ml', '70', 'Highly Alcoholic Drinks', 'Rum'),
(58, 'Рум темен/бел бокалче', '250 ml', '370', 'Highly Alcoholic Drinks', 'Rum'),
(59, 'Benfeater', '40 ml', '110', 'Highly Alcoholic Drinks', 'Gin'),
(60, 'Gordon\'s', '40 ml', '110', 'Highly Alcoholic Drinks', 'Gin'),
(61, 'Џин', '40 ml', '70', 'Highly Alcoholic Drinks', 'Gin'),
(62, 'Тиквешка Жолта', '40 ml', '60', 'Highly Alcoholic Drinks', 'Brandy'),
(63, 'Стара Жолта', '40 ml', '60', 'Highly Alcoholic Drinks', 'Brandy'),
(64, 'Мастика Струмичка', '40 ml', '70', 'Highly Alcoholic Drinks', 'Brandy'),
(65, 'Рубин Вињак', '40 ml', '70', 'Highly Alcoholic Drinks', 'Brandy'),
(66, 'Узо Цантали', '40 ml', '60', 'Highly Alcoholic Drinks', 'Brandy'),
(67, 'Узо Пломари', '40 ml', '80', 'Highly Alcoholic Drinks', 'Brandy'),
(68, 'Коњак Бадел', '40 ml', '60', 'Highly Alcoholic Drinks', 'Brandy'),
(69, 'Шток', '40 ml', '90', 'Highly Alcoholic Drinks', 'Brandy'),
(70, 'Napoleon VSOP', '40 ml', '70', 'Highly Alcoholic Drinks', 'Brandy'),
(71, 'Жолта тиквешка/стара бокал', '250 ml', '320', 'Highly Alcoholic Drinks', 'Brandy'),
(72, 'Мастика бокалче', '250 ml', '370', 'Highly Alcoholic Drinks', 'Brandy'),
(73, 'Узо цантали бокалче', '250 ml', '320', 'Highly Alcoholic Drinks', 'Brandy'),
(74, 'Bailey\'s', '40 ml', '160', 'Highly Alcoholic Drinks', 'Liquor'),
(75, 'Jagermeister', '40 ml', '120', 'Highly Alcoholic Drinks', 'Liquor'),
(76, 'Khalua кафе ликер', '40 ml', '110', 'Highly Alcoholic Drinks', 'Liquor'),
(77, 'Какао ликер', '40 ml', '110', 'Highly Alcoholic Drinks', 'Liquor'),
(78, 'Martini Blanco', '40 ml', '80', 'Highly Alcoholic Drinks', 'Liquor'),
(79, 'Martini Rosso', '40 ml', '80', 'Highly Alcoholic Drinks', 'Liquor'),
(80, 'Пелинковац', '40 ml', '60', 'Highly Alcoholic Drinks', 'Liquor'),
(81, 'Arnaretio', '40 ml', '60', 'Highly Alcoholic Drinks', 'Liquor'),
(82, 'Тиквеш траминец', '187 ml', '150', 'Highly Alcoholic Drinks', 'Wine'),
(83, 'Тиквеш темјанка', '187 ml', '150', 'Highly Alcoholic Drinks', 'Wine'),
(84, 'Тиквеш Т\'га за југ', '187 ml', '150', 'Highly Alcoholic Drinks', 'Wine'),
(85, 'Тиквеш александрија бела', '187 ml', '150', 'Highly Alcoholic Drinks', 'Wine'),
(86, 'Тиквеш александрија розе', '187 ml', '150', 'Highly Alcoholic Drinks', 'Wine'),
(87, 'Тиквеш александрија црвено', '187 ml', '150', 'Highly Alcoholic Drinks', 'Wine'),
(88, 'Еспресо', '', '50', 'Non-Alcoholic Drinks', 'Coffee'),
(89, 'Ладно Еспресо', '', '50', 'Non-Alcoholic Drinks', 'Coffee'),
(90, 'Фредо Еспресо', '', '60', 'Non-Alcoholic Drinks', 'Coffee'),
(91, 'Американо', '', '50', 'Non-Alcoholic Drinks', 'Coffee'),
(92, 'Мало Макијато', '', '50', 'Non-Alcoholic Drinks', 'Coffee'),
(93, 'Големо Макијато', '', '70', 'Non-Alcoholic Drinks', 'Coffee'),
(94, 'Ладно Макијато', '', '70', 'Non-Alcoholic Drinks', 'Coffee'),
(95, 'Фредо Макијато', '', '80', 'Non-Alcoholic Drinks', 'Coffee'),
(96, 'Капучино', '', '80', 'Non-Alcoholic Drinks', 'Coffee'),
(97, 'Фредо Капучино', '', '90', 'Non-Alcoholic Drinks', 'Coffee'),
(98, 'Glenfiddich 12', '40 ml', '350', 'Highly Alcoholic Drinks', 'Single Malt Scotch'),
(99, 'Glenmorangie Original 10', '40 ml', '350', 'Highly Alcoholic Drinks', 'Single Malt Scotch'),
(100, 'Glenlivet Founder\'s Reserve', '40 ml', '300', 'Highly Alcoholic Drinks', 'Single Malt Scotch'),
(104, 'Црна Мока', '', '90', 'Non-Alcoholic Drinks', 'Coffee'),
(105, 'Бела Мока', '', '90', 'Non-Alcoholic Drinks', 'Coffee'),
(106, 'Ладна Мока', '', '90', 'Non-Alcoholic Drinks', 'Coffee'),
(107, 'Ладно Нес Кафе', '', '90', 'Non-Alcoholic Drinks', 'Coffee'),
(108, 'Топло Нес Кафе', '', '90', 'Non-Alcoholic Drinks', 'Coffee'),
(109, 'Еспресо и Књаз Милош', '', '90', 'Non-Alcoholic Drinks', 'Coffee Bundles'),
(110, 'Еспресо и Аква Вива/Роса', '', '80', 'Non-Alcoholic Drinks', 'Coffee Bundles'),
(111, 'Еспресо и Цедевита', '', '90', 'Non-Alcoholic Drinks', 'Coffee Bundles'),
(112, 'Еспресо и Пепси/Газоза', '', '100', 'Non-Alcoholic Drinks', 'Coffee Bundles'),
(113, 'Еспресо и Кока Кола', '', '110', 'Non-Alcoholic Drinks', 'Coffee Bundles'),
(114, 'Еспресо и 1/2 цеден сок', '', '100', 'Non-Alcoholic Drinks', 'Coffee Bundles'),
(115, 'Еспресо и сок Некст/Браво', '', '120', 'Non-Alcoholic Drinks', 'Coffee Bundles'),
(116, 'Еспресо и леден чај', '', '100', 'Non-Alcoholic Drinks', 'Coffee Bundles'),
(117, 'Coca Cola', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(118, 'Coca Cola Zero', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(119, 'Fanta', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(120, 'Fant Shokata', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(121, 'Fanta Dragonfruit', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(122, 'Sprite', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(123, 'Schweppes Bitter Lemon', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(124, 'Schweppes Tonic Water', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(125, 'Schweppes Pink Tonic', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(126, 'Schweppes Tangerine', '250 ml', '70', 'Non-Alcoholic Drinks', 'Soda'),
(127, 'Pepsi', '250 ml', '60', 'Non-Alcoholic Drinks', 'Soda'),
(128, 'Газоза', '250 ml', '6-', 'Non-Alcoholic Drinks', 'Soda'),
(129, 'Ирско кафе', '', '150', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(130, 'Ирско златно кафе', '', '150', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(131, 'Бејлис кафе', '', '150', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(132, 'Ирско крем кафе', '', '220', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(133, 'Галско кафе', '', '220', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(134, 'Драмбуи кафе', '', '220', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(135, 'Хајленд кафе', '', '150', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(136, 'Ајла кафе', '', '150', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(137, 'Кентаки кафе', '', '120', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(138, 'Корето', '', '100', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(139, 'Париско кафе', '', '110', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(140, 'Англиско кафе', '', '110', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(141, 'Џин кафе', '', '100', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(142, 'Руско кафе', '', '100', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(143, 'Кафе Кариби', '', '140', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(144, 'Шин шин', '', '100', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(145, 'Карахињо', '', '110', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(146, 'Мексиканско кафе', '', '150', 'Highly Alcoholic Drinks', 'Coffee with Alcohol'),
(147, 'Топла чоколада', '', '80', 'Non-Alcoholic Drinks', 'Hot Chocolate &amp; Coco'),
(148, 'Какао', '', '80', 'Non-Alcoholic Drinks', 'Hot Chocolate &amp; Coco'),
(149, 'Ирско Какао', '', '80', 'Non-Alcoholic Drinks', 'Hot Chocolate &amp; Coco'),
(150, 'Књаз Милош', '250 ml', '50', 'Non-Alcoholic Drinks', 'Water'),
(151, 'Роса', '250 ml', '40', 'Non-Alcoholic Drinks', 'Water'),
(152, 'Аква Вива', '250 ml', '40', 'Non-Alcoholic Drinks', 'Water'),
(153, 'Цедевита', '', '50', 'Non-Alcoholic Drinks', 'Juices'),
(154, 'Next', '250 ml', '90', 'Non-Alcoholic Drinks', 'Juices'),
(156, 'Браво', '330 ml', '80', 'Non-Alcoholic Drinks', 'Juices'),
(157, 'Цеден сок лимон', '200 ml', '100', 'Non-Alcoholic Drinks', 'Juices'),
(159, 'Цеден сок портокал', '200 ml', '120', 'Non-Alcoholic Drinks', 'Juices'),
(160, 'Скопско', '330 ml', '90', 'Beer', 'Lager'),
(161, 'Скопско Smooth', '330 ml', '90', 'Beer', 'Lager'),
(162, 'Скопско IPL', '330 ml', '90', 'Beer', 'Lager'),
(163, 'Златен Даб', '330 ml', '90', 'Beer', 'Lager'),
(164, 'Лашко', '330 ml', '90', 'Beer', 'Lager'),
(165, 'Heineken', '330 ml', '120', 'Beer', 'Lager'),
(166, 'Amstel', '330 ml', '100', 'Beer', 'Lager'),
(167, 'Tuborg', '330 ml', '110', 'Beer', 'Lager'),
(168, 'Carlsberg', '330 ml', '120', 'Beer', 'Lager'),
(169, 'Jelen', '330 ml', '90', 'Beer', 'Lager'),
(170, 'Staropramen', '500 ml', '100', 'Beer', 'Lager'),
(171, 'Beck\'s', '500 ml', '100', 'Beer', 'Lager'),
(172, 'Stella Artois', '330 ml', '120', 'Beer', 'Lager'),
(173, 'Budweiser', '330 ml', '100', 'Beer', 'Lager'),
(174, 'Paulaner Salvator', '330 ml', '170', 'Beer', 'Lager'),
(175, 'Paulaner Munchner Hell', '500 ml', '190', 'Beer', 'Lager'),
(176, 'Krombacher Dark', '500 ml', '150', 'Beer', 'Lager'),
(177, 'Paulaner Weissbier', '500 ml', '190', 'Beer', 'Wheat'),
(178, 'Paulaner Weissbier Dunkel', '500 ml', '190', 'Beer', 'Wheat'),
(179, 'Holsten', '500 ml', '130', 'Beer', 'Wheat'),
(180, 'Krombacher Weizen', '500 ml', '150', 'Beer', 'Wheat'),
(181, 'Erdinger Weissbier', '500 ml', '200', 'Beer', 'Wheat'),
(182, 'Chimay Tripel', '330 ml', '280', 'Beer', 'Belgian Beer'),
(184, 'Chimay Rouge', '330 ml', '270', 'Beer', 'Belgian Beer'),
(185, 'La Trappe Dubbel', '330 ml', '230', 'Beer', 'Belgian Beer'),
(186, 'La Trappe Tripel', '330 ml', '240', 'Beer', 'Belgian Beer'),
(187, 'La Trappe Quadrupel', '330 ml', '250', 'Beer', 'Belgian Beer'),
(188, 'Karmeliet Tripel', '330 ml', '250', 'Beer', 'Belgian Beer'),
(189, 'La Chouffe', '330 ml', '230', 'Beer', 'Belgian Beer'),
(190, 'Duvel', '330 ml', '230', 'Beer', 'Belgian Beer'),
(191, 'Kwak', '330 ml', '250', 'Beer', 'Belgian Beer'),
(192, 'Gulden Draak', '330 ml', '290', 'Beer', 'Belgian Beer'),
(193, 'Westmalle Dubbel', '330 ml', '240', 'Beer', 'Belgian Beer'),
(194, 'Westmalle Tripel', '330 ml', '270', 'Beer', 'Belgian Beer'),
(195, 'Leffe Brune', '330 ml', '180', 'Beer', 'Belgian Beer'),
(196, 'Leffe Blonde', '330 ml', '180', 'Beer', 'Belgian Beer'),
(197, 'Hoegaarden', '330 ml', '180', 'Beer', 'Belgian Beer'),
(198, 'IPA Hop Verdomme', '330 ml', '240', 'Beer', 'Belgian Beer'),
(199, 'Rochefort 6', '330 ml', '260', 'Beer', 'Belgian Beer'),
(200, 'Rochefort 8', '330 ml', '290', 'Beer', 'Belgian Beer'),
(201, 'Guinness', '330 ml', '200', 'Beer', 'Stout'),
(202, 'Apocalypse Now', '30 ml', '80', 'Shots and Shakers', 'Shots'),
(203, 'Blow Job', '30 ml', '80', 'Shots and Shakers', 'Shots'),
(204, 'Voodoo', '30 ml', '80', 'Shots and Shakers', 'Shots'),
(205, 'In Flames', '30 ml', '90', 'Shots and Shakers', 'Shots'),
(206, '4th of July', '30 ml', '90', 'Shots and Shakers', 'Shots'),
(207, 'Orgasm', '30 ml', '90', 'Shots and Shakers', 'Shots'),
(208, 'B-52', '30 ml', '90', 'Shots and Shakers', 'Shots'),
(209, 'B-55', '30 ml', '90', 'Shots and Shakers', 'Shots'),
(210, 'Alfherm', '30 ml', '100', 'Shots and Shakers', 'Shots'),
(211, 'Freya', '30 ml', '120', 'Shots and Shakers', 'Shots'),
(212, 'Wake up Dead', '240 ml', '300', 'Shots and Shakers', 'Shakers'),
(213, 'Lemon Drop', '240 ml', '300', 'Shots and Shakers', 'Shakers'),
(214, 'Kamikaze', '240 ml', '350', 'Shots and Shakers', 'Shakers'),
(215, 'Death Wish', '240 ml', '390', 'Shots and Shakers', 'Shakers'),
(216, 'Џин Тоник', '', '80', 'Cocktails', ''),
(217, 'Водка швепс', '', '80', 'Cocktails', ''),
(218, 'Водка боровница', '', '90', 'Cocktails', ''),
(219, 'Рум кола', '', '80', 'Cocktails', ''),
(220, 'Коњак кола', '', '80', 'Cocktails', ''),
(221, 'Совре џин тоник', '', '140', 'Cocktails', ''),
(222, 'Loki', '', '170', 'Cocktails', ''),
(223, 'Vodka Sour', '', '130', 'Cocktails', ''),
(224, 'Brandy Sour', '', '130', 'Cocktails', ''),
(225, 'Balkan special', '', '170', 'Cocktails', ''),
(226, 'Alga', '', '180', 'Cocktails', ''),
(227, 'Blue Lagoon', '', '160', 'Cocktails', ''),
(228, 'Black Russian', '', '150', 'Cocktails', ''),
(229, 'White Russian', '', '160', 'Cocktails', ''),
(230, 'Long Island', '', '239', 'Cocktails', ''),
(231, 'Electric Blues', '', '230', 'Cocktails', ''),
(232, 'Pina Colada', '', '190', 'Cocktails', ''),
(233, 'Painkiller', '', '170', 'Cocktails', ''),
(234, 'Grasshopper', '', '210', 'Cocktails', ''),
(235, 'Cuba Libre', '', '150', 'Cocktails', ''),
(236, 'Tequila Sunrise', '', '190', 'Cocktails', ''),
(237, 'Tom Collins', '', '110', 'Cocktails', ''),
(238, 'French 75', '', '110', 'Cocktails', ''),
(239, 'Margarita', '', '170', 'Cocktails', ''),
(240, 'Fogcutter', '', '200', 'Cocktails', ''),
(241, 'Brave Bull', '', '150', 'Cocktails', ''),
(242, 'Envy', '', '170', 'Cocktails', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`menuItemID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `menuItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
