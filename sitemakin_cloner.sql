-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2017 at 09:51 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sitemakin_cloner`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
`artist_id` int(3) unsigned NOT NULL,
  `first_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `first_name`, `middle_name`, `last_name`) VALUES
(1, 'First', NULL, 'Artist'),
(2, 'Second', NULL, 'Artist'),
(3, 'Third', NULL, 'Artist'),
(4, 'Fourth', NULL, 'Artist'),
(5, 'Ken', NULL, 'Elch'),
(6, 'Bohemian CMS', 'ee', 'ee'),
(7, 'Bohemian CMS', 'ee', 'ee'),
(8, 'Bohemian CMS', 'ee', 'ee');

-- --------------------------------------------------------

--
-- Table structure for table `blocked_bookmarks`
--

CREATE TABLE IF NOT EXISTS `blocked_bookmarks` (
  `login` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_flagged` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blocked_bookmarks`
--

INSERT INTO `blocked_bookmarks` (`login`, `customer_id`, `ip_address`, `date_flagged`) VALUES
('kelchuk2', 0, '66.249.67.184', '2011-10-23 13:03:18'),
('kelchuk2', 0, '66.249.67.248', '2012-02-24 02:07:06'),
('kelchuk2', 0, '66.249.68.179', '2011-12-10 14:23:17'),
('kelchuk3', 0, '110.159.22.114', '2011-10-25 01:42:19'),
('kelchuk3', 0, '174.7.73.195', '2011-10-29 07:16:23'),
('kelchuk3', 0, '66.249.67.184', '2011-10-22 18:59:11'),
('kelchuk4', 0, '174.7.73.195', '2011-10-29 07:16:56'),
('kelchuk4', 0, '66.249.67.184', '2011-10-23 13:29:05'),
('kelchuk7', 0, '66.249.67.184', '2011-10-22 16:51:55'),
('kelchuk7', 0, '66.249.67.248', '2012-03-18 15:18:48'),
('kelchuk7', 0, '66.249.68.233', '2012-02-22 16:01:31'),
('kelchuk7', 0, '66.249.68.238', '2012-05-28 02:19:48'),
('kelchuk7', 0, '66.249.72.101', '2011-11-04 04:33:14'),
('kelchuk7', 0, '66.249.73.21', '2012-03-23 15:37:01'),
('kelchuk8', 0, '189.29.25.24', '2012-02-24 19:11:06'),
('kelchuk8', 0, '66.249.67.184', '2011-10-22 19:00:57'),
('kelchuk8', 0, '66.249.68.179', '2011-12-10 14:34:40'),
('kelchuk8', 0, '66.249.68.233', '2012-02-04 23:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `blog_bookmark_header`
--

CREATE TABLE IF NOT EXISTS `blog_bookmark_header` (
`id` int(11) NOT NULL,
  `top` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blog_bookmark_header`
--

INSERT INTO `blog_bookmark_header` (`id`, `top`) VALUES
(1, '<body id=\\"body\\" onLoad=\\"redireccionar()\\">\r\n	<div id=\\"container\\" >\r\n    \r\n            \r\n<div id=\\"main\\">\r\n    <div id=\\"nav_bg\\" style=\\"height:52px;\\">\r\n\r\n<style>#body {min-width:780px; background-image: url(\\"images/bg-help.jpg\\");\r\nbackground-repeat: repeat-x; overflow-x:visible;}\r\n#container{background-color:white; background-image:url(\\"images/bg.jpg\\"); min-width:970px; z-index:3;}\r\n#container2\r\n{background:white; }\r\n#main\r\n{background:white;z-index:3;}\r\n#main2\r\n{background:white;}\r\n</style>\r\n			<span style=\\"font-size:20px; margin-top:13px; /*position:absolute;*/float:left; \\"><i></i></span>			\r\n			<ul id=\\"navigation2\\" style=\\"z-index:2; display:visible;\\">\r\n			<li style=\\"z-index:1;\\"><a href=\\"../index.php\\">Home</a></li>\r\n                        <li style=\\"z-index:1;\\"><a href=\\"blog.php\\">Blog</a></li>\r\n                        <li style=\\"z-index:1;\\"><a href=\\"index.php\\">Bookmarks</a></li>\r\n			<li style=\\"display:none;\\"><a href=\\"../platform.php\\">About</a></li>\r\n			<li style=\\"display:none;\\"><a href=\\"../services.php\\" onmouseover=\\"showstuff()\\" onmouseout=\\"hidestuff()\\">Services</a>\r\n<ul id=\\"submenu\\"><li style=\\"display:none;\\"><a style=\\"width:160px; float:left; margin-top:0 auto; margin-left:0px; position:relative;height:auto;\\" href=\\"../services.php\\" onmouseover=\\"showstuff()\\" onmouseout=\\"hidestuff()\\">Web Development</a></li>\r\n			<li style=\\"display:none;\\"><a style=\\"width:160px; float:left; margin-top:0 auto; margin-left:0px; position:relative;height:auto;\\" href=\\"../learn-web-design.php\\" onmouseover=\\"showstuff()\\" onmouseout=\\"hidestuff()\\">Learn Web Design</a></li>\r\n			</ul></li>\r\n			\r\n				<li style=\\"display:none;\\"><a href=\\"../learn-web-design.php\\" onmouseover=\\"showstuff2()\\" onmouseout=\\"hidestuff2()\\">Learn Web Design</a>\r\n<ul id=\\"submenu2\\"><li><a style=\\"width:160px; float:left; margin-top:0 auto; margin-left:0px; position:relative;height:auto;\\" href=\\"../learn-web-design.php\\" onmouseover=\\"showstuff2()\\" onmouseout=\\"hidestuff2()\\">Overview</a></li>\r\n<li><a style=\\"width:160px; float:left; margin-top:0 auto; margin-left:0px; position:relative;height:auto;\\" href=\\"http://www.bohemianism.ca/forum/index.php\\" onmouseover=\\"showstuff2()\\" onmouseout=\\"hidestuff2()\\">Forum</a></li>\r\n			<li style=\\"display:none;\\"><a style=\\"width:160px; float:left; margin-top:0 auto; margin-left:0px; position:relative;height:auto;\\" href=\\"blog.php\\" onmouseover=\\"showstuff2()\\" onmouseout=\\"hidestuff2()\\">Blog</a></li>\r\n			<li style=\\"display:none;\\"><a style=\\"width:160px; float:left; margin-top:0 auto; margin-left:0px; position:relative;height:auto;\\" href=\\"index.php\\" onmouseover=\\"showstuff2()\\" onmouseout=\\"hidestuff2()\\">Bookmarks</a></li>\r\n<li style=\\"display:none;\\"><a style=\\"width:160px; float:left; margin-top:0 auto; margin-left:0px; position:relative;height:auto;\\" href=\\"../downloads.php\\" onmouseover=\\"showstuff2()\\" onmouseout=\\"hidestuff2()\\">File Management</a></li>\r\n			</ul></li>\r\n			\r\n			\r\n			<li style=\\"display: none;\\"><a href=\\"http://www.bohemianism.ca/forum/index.php\\">Forum</a></li>\r\n			<li style=\\"display: none;\\"><a href=\\"./phpcart/index.php\\">Shopping Cart</a></li>\r\n			<li style=\\"display: none;\\"><a href=\\"./phpcart/view_cart.php\\">View Cart</a></li>\r\n			<li style=\\"display: none;\\"><a href=\\"http://bohemianism.ca/blog/blog.php\\">Blog</a></li>\r\n			<li style=\\"display: none;\\"><a href=\\"http://bohemianism.ca/blog\\">Bookmarks</a></li>\r\n			<li style=\\"display:none;\\"><a href=\\"http://bohemianism.ca/help.php\\">How It Works</a></li>\r\n                        <li style=\\"display:none;\\"><a href=\\"http://bohemianism.ca/phpcart\\">Buy</a></li>\r\n			<li><span style=\\"display: none;\\"><a href=\\"news.php\\">News</a></span></li>\r\n			<li style=\\"display:none\\"><a href=\\"http://bohemiawebsites.com\\">Bohemiawebsites.com</a></li>\r\n			<li style=\\"display:none;\\"><a href=\\"http://bohemianism.ca/help.php\\">Contact</a></li>\r\n			<li><span style=\\"font-size: 40px; display: none;\\"><i>Trust in the Bohemian Approach</i></span></li>\r\n		</ul>\r\n			\r\n		</div>	');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
`cat_id` int(3) NOT NULL,
  `category` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=11 ;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`cat_id`, `category`) VALUES
(1, 'PHP / mySQL'),
(2, 'HTML'),
(3, 'CSS'),
(4, 'Javascript'),
(5, 'Joomla'),
(6, 'Wordpress'),
(7, 'Drupal'),
(8, 'Web Hosts Manager / Cpanel'),
(9, 'XML'),
(10, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE IF NOT EXISTS `blog_tags` (
  `tag_id` int(10) unsigned NOT NULL,
  `bookmark_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `date_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`tag_id`, `bookmark_id`, `customer_id`, `date_deleted`) VALUES
(1, 6, 4, '2010-08-05 17:41:41'),
(2, 6, 4, '2010-08-05 18:39:46'),
(3, 6, 4, '2010-08-05 18:39:46'),
(3, 34, 10, '0000-00-00 00:00:00'),
(4, 3, 4, '0000-00-00 00:00:00'),
(4, 38, 4, '2011-02-07 10:47:08'),
(5, 3, 4, '0000-00-00 00:00:00'),
(5, 37, 4, '0000-00-00 00:00:00'),
(5, 38, 4, '2011-02-07 10:47:08'),
(5, 39, 4, '2011-02-07 11:22:39'),
(6, 8, 4, '0000-00-00 00:00:00'),
(6, 38, 4, '2011-02-07 10:47:08'),
(7, 34, 10, '2010-08-08 10:19:00'),
(8, 1, 10, '0000-00-00 00:00:00'),
(9, 36, 10, '0000-00-00 00:00:00'),
(10, 1, 4, '2011-01-31 20:09:44'),
(10, 11, 7, '0000-00-00 00:00:00'),
(11, 1, 3, '2011-01-14 08:29:38'),
(12, 1, 3, '0000-00-00 00:00:00'),
(12, 6, 4, '0000-00-00 00:00:00'),
(12, 39, 4, '2011-02-07 11:04:52'),
(13, 38, 4, '2011-02-07 11:09:57'),
(14, 2, 1, '0000-00-00 00:00:00'),
(14, 10, 4, '2011-02-07 10:58:42'),
(15, 10, 4, '2011-02-07 10:59:38'),
(16, 39, 4, '2011-02-07 11:22:39'),
(17, 38, 4, '0000-00-00 00:00:00'),
(18, 39, 4, '0000-00-00 00:00:00'),
(19, 7, 4, '0000-00-00 00:00:00'),
(19, 39, 4, '0000-00-00 00:00:00'),
(20, 10, 4, '0000-00-00 00:00:00'),
(21, 8, 4, '0000-00-00 00:00:00'),
(22, 2, 1, '0000-00-00 00:00:00'),
(23, 2, 1, '0000-00-00 00:00:00'),
(24, 2, 1, '0000-00-00 00:00:00'),
(25, 2, 1, '0000-00-00 00:00:00'),
(26, 2, 1, '0000-00-00 00:00:00'),
(27, 2, 1, '0000-00-00 00:00:00'),
(28, 40, 44, '0000-00-00 00:00:00'),
(28, 54, 44, '0000-00-00 00:00:00'),
(29, 40, 44, '0000-00-00 00:00:00'),
(29, 55, 44, '0000-00-00 00:00:00'),
(29, 63, 44, '0000-00-00 00:00:00'),
(29, 66, 44, '0000-00-00 00:00:00'),
(30, 40, 44, '0000-00-00 00:00:00'),
(31, 40, 44, '0000-00-00 00:00:00'),
(32, 40, 44, '0000-00-00 00:00:00'),
(33, 40, 44, '0000-00-00 00:00:00'),
(34, 41, 44, '0000-00-00 00:00:00'),
(35, 41, 44, '0000-00-00 00:00:00'),
(36, 41, 44, '0000-00-00 00:00:00'),
(37, 51, 44, '0000-00-00 00:00:00'),
(38, 53, 44, '2011-11-11 14:07:24'),
(39, 54, 44, '0000-00-00 00:00:00'),
(40, 57, 44, '0000-00-00 00:00:00'),
(41, 57, 44, '0000-00-00 00:00:00'),
(42, 57, 44, '0000-00-00 00:00:00'),
(43, 57, 44, '0000-00-00 00:00:00'),
(44, 58, 44, '0000-00-00 00:00:00'),
(45, 58, 44, '0000-00-00 00:00:00'),
(46, 58, 44, '0000-00-00 00:00:00'),
(47, 85, 44, '0000-00-00 00:00:00'),
(48, 85, 44, '0000-00-00 00:00:00'),
(49, 86, 44, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_urls`
--

CREATE TABLE IF NOT EXISTS `blog_urls` (
`bookmark_id` int(10) unsigned NOT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=196 ;

--
-- Dumping data for table `blog_urls`
--

INSERT INTO `blog_urls` (`bookmark_id`, `url`) VALUES
(49, 'http://pipes.yahoo.com/pipes/'),
(65, 'http://www.littlewebthings.com/projects/countdown/index.php'),
(89, 'http://cksource.com/forums/viewtopic.php?t=530'),
(107, 'http://www.chiark.greenend.org.uk/~sgtatham/putty/faq.html#faq-cleanup'),
(127, 'bb.com'),
(128, 'bb.com'),
(190, 'bb.com'),
(191, 'bb.com'),
(192, 'bb.com'),
(193, 'bb.com'),
(194, 'bb.com'),
(195, 'bb.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_categories`
--

CREATE TABLE IF NOT EXISTS `bookmark_categories` (
`cat_id` int(3) NOT NULL,
  `category` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bookmark_categories`
--

INSERT INTO `bookmark_categories` (`cat_id`, `category`) VALUES
(1, 'PHP / mySQL'),
(2, 'HTML'),
(3, 'CSS'),
(4, 'Javascript'),
(5, 'Joomla'),
(6, 'Wordpress'),
(7, 'Drupal'),
(8, 'Web Hosts Manager / Cpanel'),
(9, 'XML'),
(10, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_tags`
--

CREATE TABLE IF NOT EXISTS `bookmark_tags` (
  `tag_id` int(10) unsigned NOT NULL,
  `bookmark_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `date_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookmark_tags`
--

INSERT INTO `bookmark_tags` (`tag_id`, `bookmark_id`, `customer_id`, `date_deleted`) VALUES
(1, 6, 4, '2010-08-05 17:41:41'),
(2, 6, 4, '2010-08-05 18:39:46'),
(3, 6, 4, '2010-08-05 18:39:46'),
(3, 34, 10, '0000-00-00 00:00:00'),
(4, 3, 4, '0000-00-00 00:00:00'),
(4, 38, 4, '2011-02-07 10:47:08'),
(5, 3, 4, '0000-00-00 00:00:00'),
(5, 37, 4, '0000-00-00 00:00:00'),
(5, 38, 4, '2011-02-07 10:47:08'),
(5, 39, 4, '2011-02-07 11:22:39'),
(6, 8, 4, '0000-00-00 00:00:00'),
(6, 38, 4, '2011-02-07 10:47:08'),
(7, 34, 10, '2010-08-08 10:19:00'),
(8, 1, 10, '0000-00-00 00:00:00'),
(9, 36, 10, '0000-00-00 00:00:00'),
(10, 1, 4, '2011-01-31 20:09:44'),
(10, 11, 7, '0000-00-00 00:00:00'),
(11, 1, 3, '2011-01-14 08:29:38'),
(12, 1, 3, '0000-00-00 00:00:00'),
(12, 6, 4, '0000-00-00 00:00:00'),
(12, 39, 4, '2011-02-07 11:04:52'),
(12, 136, 1, '0000-00-00 00:00:00'),
(13, 38, 4, '2011-02-07 11:09:57'),
(14, 2, 1, '0000-00-00 00:00:00'),
(14, 10, 4, '2011-02-07 10:58:42'),
(15, 10, 4, '2011-02-07 10:59:38'),
(16, 39, 4, '2011-02-07 11:22:39'),
(17, 38, 4, '0000-00-00 00:00:00'),
(18, 39, 4, '0000-00-00 00:00:00'),
(19, 7, 4, '0000-00-00 00:00:00'),
(19, 39, 4, '0000-00-00 00:00:00'),
(20, 10, 4, '0000-00-00 00:00:00'),
(21, 8, 4, '0000-00-00 00:00:00'),
(22, 2, 1, '0000-00-00 00:00:00'),
(23, 2, 1, '0000-00-00 00:00:00'),
(24, 2, 1, '0000-00-00 00:00:00'),
(25, 2, 1, '0000-00-00 00:00:00'),
(26, 2, 1, '0000-00-00 00:00:00'),
(27, 2, 1, '0000-00-00 00:00:00'),
(28, 40, 44, '0000-00-00 00:00:00'),
(28, 54, 44, '0000-00-00 00:00:00'),
(29, 40, 44, '0000-00-00 00:00:00'),
(29, 55, 44, '0000-00-00 00:00:00'),
(29, 63, 44, '0000-00-00 00:00:00'),
(29, 66, 44, '0000-00-00 00:00:00'),
(30, 40, 44, '0000-00-00 00:00:00'),
(31, 40, 44, '0000-00-00 00:00:00'),
(32, 40, 44, '0000-00-00 00:00:00'),
(33, 40, 44, '0000-00-00 00:00:00'),
(34, 41, 44, '0000-00-00 00:00:00'),
(35, 41, 44, '0000-00-00 00:00:00'),
(36, 41, 44, '0000-00-00 00:00:00'),
(37, 51, 44, '0000-00-00 00:00:00'),
(38, 53, 44, '2011-11-11 14:07:24'),
(39, 54, 44, '0000-00-00 00:00:00'),
(40, 57, 44, '0000-00-00 00:00:00'),
(41, 57, 44, '0000-00-00 00:00:00'),
(42, 57, 44, '0000-00-00 00:00:00'),
(43, 57, 44, '0000-00-00 00:00:00'),
(44, 58, 44, '0000-00-00 00:00:00'),
(45, 58, 44, '0000-00-00 00:00:00'),
(46, 58, 44, '0000-00-00 00:00:00'),
(47, 85, 44, '0000-00-00 00:00:00'),
(48, 85, 44, '0000-00-00 00:00:00'),
(49, 86, 44, '0000-00-00 00:00:00'),
(50, 136, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_urls`
--

CREATE TABLE IF NOT EXISTS `bookmark_urls` (
`bookmark_id` int(10) unsigned NOT NULL,
  `url` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=164 ;

--
-- Dumping data for table `bookmark_urls`
--

INSERT INTO `bookmark_urls` (`bookmark_id`, `url`) VALUES
(1, 'http://www.google.com'),
(2, 'http://www.websitebc.com'),
(3, 'http://www.yahoo.com'),
(4, 'http://www.bing.com'),
(5, 'http://www.google.ca'),
(6, 'http://www.excite.com'),
(7, 'http://www.craigslist.org'),
(8, 'http://www.epson.com'),
(9, 'http://www.altavista.com'),
(10, 'http://www.askjeeves.com'),
(11, 'http://google.com'),
(12, 'http://www.twitter.com'),
(13, 'http://www.delicious.com'),
(14, 'asa'),
(15, 'sww'),
(16, 'qss'),
(17, 'ihiohio'),
(18, 'wd'),
(19, 'sq'),
(20, 'wdwdwd'),
(21, 'aqs'),
(34, 'http://www.dell.com'),
(35, 'http://www.msn.com'),
(36, 'http://www.canadiansbaseball.com'),
(37, 'http://www.newbookmarkkelchuk4.com'),
(38, 'http://www.kelchuk4.com'),
(39, 'http://www.bookmark.com'),
(40, 'http://bohemiawebsites.com/Mysql-Fetch-Array-with-PHP.html'),
(41, 'http://www.elated.com/articles/css-rollover-buttons/'),
(42, 'http://www.vsvs.ca'),
(43, 'http://stackoverflow.com/questions/5353665/php-oop-and-mysql-query'),
(44, 'http://www.massassi.com/php/articles/classes/'),
(45, 'https://github.com/a1phanumeric/PHP-MySQL-Class/blob/master/class.MySQL.php'),
(46, 'http://www.hiteshagrawal.com/php/database-class-in-php5'),
(47, 'http://www.sitepoint.com/php-paging-result-sets/'),
(48, 'http://docstore.mik.ua/orelly/webprog/pcook/ch07_01.htm'),
(49, 'http://pipes.yahoo.com/pipes/'),
(50, 'http://cookbooks.adobe.com/post_Alternate_colors_for_table_rows-16650.html'),
(51, 'http://www.sitepoint.com/forums/showthread.php?722578-While-Loop-Alternate-Table'),
(52, 'http://www.xv.ca'),
(53, 'http://test1.html'),
(54, 'http://stackoverflow.com/questions/456841/php-refresh'),
(55, 'http://www.tutorialspoint.com/mysql/mysql-in-clause.htm'),
(56, 'http://pribadidewa.wordpress.com/2008/04/07/session-management-in-joomla/'),
(57, 'http://corz.org/serv/tricks/htaccess2.php'),
(58, 'http://www.jeromelocson.com/joomla-session-handling-with-custom-php-pages/'),
(59, 'http://docs.joomla.org/Retrieving_data_from_GET_and_POST_requests'),
(60, 'http://docs.joomla.org/How_to_access_session_variables_set_by_an_external_script'),
(61, 'http://php.net/manual/en/function.setcookie.php'),
(62, 'http://www.w3schools.com/php/php_arrays.asp'),
(63, 'http://www.webhostingtalk.com/showthread.php?t=1102266'),
(64, 'http://code.google.com/p/jquery-countdown/'),
(65, 'http://www.littlewebthings.com/projects/countdown/index.php'),
(66, 'http://www.plus2net.com/sql_tutorial/sql_select.php'),
(67, 'http://www.thewebhelp.com/php/scripts/image-upload-with-resize/'),
(68, 'http://php.net/manual/en/function.rename.php'),
(69, 'http://php.net/manual/en/function.copy.php'),
(70, 'http://cpan.uwinnipeg.ca/htdocs/WWW-Indeed/WWW/Indeed.pm.html'),
(71, 'http://www.ibm.com/developerworks/opensource/library/os-xmldomphp/'),
(72, 'http://www.javascriptbank.com/javascript-countdown-timer.html'),
(73, 'http://themeforest.net/'),
(74, 'http://www.hotscripts.com/forums/php/34482-update-multiple-rows-outside-loop-need-help.html'),
(75, 'http://www.softwareprojects.com/resources/programming/t-how-to-fix-mysql-database-myisam-innodb-1634.html'),
(76, 'http://www.php.net/manual/en/function.file-exists.php'),
(77, 'http://php.about.com/od/phpwithmysql/ss/php_pagination.htm'),
(78, 'http://searchengineland.com/'),
(79, 'http://www.sitepoint.com/platform-windowed-apps-php/'),
(80, 'http://www.forummatrix.org/compare/bbPress+miniBB+phpBB+SMF+vBulletin'),
(81, 'http://forum.wampserver.com/read.php?2,33699,33746'),
(82, 'http://www.geodatasource.com/world-cities-database/free'),
(83, 'http://www.adamek.biz/md5-generator.php'),
(84, 'http://www.dynamicdrive.com/dynamicindex9/addbook.htm'),
(85, 'http://bassistance.de/jquery-plugins/jquery-plugin-validation/'),
(86, 'http://www.computing.net/answers/webdevel/refresh-a-page-once/196.html'),
(87, 'http://forums.devarticles.com/mysql-development-50/update-multiple-columns-using-mysql-update-4197.html'),
(88, 'http://www.nuwanbando.com/2008/01/joomla-hack-automated-joomla-user-registration-via-jsf-form/'),
(89, 'http://cksource.com/forums/viewtopic.php?t=530'),
(90, 'http://daipratt.co.uk/importing-large-files-into-mysql-with-phpmyadmin/'),
(91, 'http://www.ibsteam.net/blog/web-development/how-import-sql-file-within-wamp-environment-using-command-line'),
(92, 'http://forum.wampserver.com/read.php?2,28660'),
(93, 'http://developers.facebook.com/docs/guides/web/'),
(94, 'http://docs.cpanel.net/twiki/bin/view/AllDocumentation/CpanelDocs/SpamAssassin#Add%20Addresses%20to%20the%20Blacklist'),
(95, 'http://docs.cpanel.net/twiki/bin/view/AllDocumentation/AllFAQ/SecurityFAQ#Can SSL Certificates be added to'),
(96, 'http://richardcummings.info/import-csv-file-into-mysql/'),
(97, 'http://md5decryption.com/'),
(98, 'http://www.stringfunction.com/sha1-decrypter.html'),
(99, 'http://www.qualitycodes.com/tutorial.php?articleid=20&title=How-to-create-bar-graph-in-PHP-with-dynamic-scaling'),
(100, 'http://www.phplist.com/details'),
(101, 'http://php.net/manual/en/function.ob-start.php'),
(102, 'http://php.net/manual/en/language.operators.errorcontrol.php'),
(103, 'http://www.stringfunction.com/sha1-hash.html#string-function-online-tool'),
(104, 'http://www.devshed.com/c/a/MySQL/Analyzing-Queries-for-Speed-with-EXPLAIN/2/'),
(105, 'http://lelutin.ca/article/2011-10-18/mysql-tuning-query-cache'),
(106, 'http://dev.mysql.com/doc/refman/5.0/en/mysql-indexes.html'),
(107, 'http://www.chiark.greenend.org.uk/~sgtatham/putty/faq.html#faq-cleanup'),
(108, 'http://docs.phplist.com/Placeholders'),
(109, 'http://www.percona.com/files/presentations/MySQL_Query_Cache.pdf'),
(110, 'http://www.timlinden.com/blog/website-development/php-cron-jobs-with-cpanel/'),
(111, 'http://www.siteground.com/tutorials/cpanel/cron_jobs.htm'),
(112, 'http://kb.site5.com/control/cpanel/cpanel-cron-jobs/'),
(113, 'http://support.hostgator.com/articles/cpanel/what-do-i-put-for-the-cron-job-command'),
(114, 'http://www.canadianwebhosting.com/flash/whmcs4-setup-voice/How%20to%20setup%20the%20WHMCS%20Cron%20job%20using%20Cpanel.html'),
(115, 'http://www.addictivetips.com/windows-tips/how-to-disable-backup-data-files-in-windows-7/'),
(116, 'http://extensions.joomla.org/'),
(117, 'http://subtlepatterns.com/'),
(118, 'http://www.sugarcrm.com/forums/f29/how-show-only-users-leads-67942/'),
(119, 'http://docs.phplist.com/PhpListConfigSendRate'),
(120, 'http://docs.phplist.com/CommandLineScriptInfo'),
(121, 'http://docs.phplist.com/SetupCronJob'),
(122, 'http://docs.phplist.com/CronJobExamples'),
(123, 'http://forums.phplist.com/viewtopic.php?f=6&t=11712'),
(124, 'http://www.v3whois.com/w/brightoncollege.com'),
(125, 'http://www.wallpaperama.com/forums/how-to-fix-mod-rewrite-500-internal-server-error-on-htaccess-file-apache-t718.html'),
(126, 'http://www.crucialp.com/resources/tutorials/server-administration/common-ssh-commands-linux-unix.php'),
(127, 'free -m (memory usage)'),
(128, 'http://www.tincam.com/'),
(129, 'http://www.joti.tv/help/setup-a-webcam/'),
(130, 'http://www.yawcam.com/screenshots.php#main'),
(131, 'http://www.tincam.com/screenshots/'),
(132, 'http://www.adobe.com/designcenter-archive/soundbooth/articles/lrvid4078_sb.html'),
(133, 'http://serverfault.com/questions/85470/meaning-of-the-buffers-cache-line-in-the-output-of-free'),
(134, 'http://code.google.com/p/php-mobile-detect/'),
(135, 'test.com'),
(136, 'http://www.example.com'),
(137, 'example2.com'),
(138, 'http://www.webmasterworld.com/forum88/4894.htm'),
(139, 'http://jquery.malsup.com/cycle/int.html'),
(140, 'http://docs.cksource.com/CKEditor_3.x/Developers_Guide/Output_Formatting'),
(141, 'http://docs.cksource.com/ckeditor_api/symbols/CKEDITOR.config.html#.autoParagraph'),
(142, 'http://imgur.com/'),
(143, 'http://earthquake.usgs.gov/earthquakes/map/'),
(144, 'http://stackoverflow.com/questions/4683414/mysql-real-escape-stringhtmlspecialchars-value-is-enough-how-can-i-easly'),
(145, 'http://www.makeuseof.com/tag/how-to-actually-make-money-selling-ebooks/'),
(146, 'http://www.collectionscanada.gc.ca/ciss-ssci/app/index.php?fuseaction=priv.registration&lang=eng'),
(147, 'http://forums.cpanel.net/f5/move-addon-domain-main-domain-161126.html'),
(148, 'http://php.net/manual/en/function.mime-content-type.php'),
(149, 'http://php.net'),
(150, 'test.ca'),
(151, 'http://labs.phurix.net/posts/migrating-imap-mailboxes-to-a-cpanel-server'),
(152, 'http://forums.cpanel.net/f5/ssl-certificate-add-domain-149013.html'),
(153, 'http://docs.cpanel.net/twiki/bin/view/AllDocumentation/AllFAQ/SecurityFAQ'),
(154, 'http://test.ca'),
(155, 'test.comn'),
(156, 'pleasework.com'),
(157, 'http://support.microsoft.com/kb/315346'),
(158, 'http://codereflex.net/replace-function-in-mysql/'),
(159, 'http://www.longtailvideo.com/support/jw-player-setup-wizard'),
(160, 'http://videohive.net/'),
(161, 'http://webdesignerwall.com/tutorials/cross-browser-css-gradient'),
(162, 'http://www.capilanoglass.net/contact.php'),
(163, 'http://extensions.joomla.org/index.php?option=com_content&id=50');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
`cms_id` int(10) unsigned NOT NULL,
  `top` text COLLATE utf8_unicode_ci NOT NULL,
  `mid` text COLLATE utf8_unicode_ci,
  `footer` text COLLATE utf8_unicode_ci,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ckc` tinyint(1) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=203 ;

-- --------------------------------------------------------

--
-- Table structure for table `cms_footer`
--

CREATE TABLE IF NOT EXISTS `cms_footer` (
`id` int(11) NOT NULL,
  `footer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_footer`
--

INSERT INTO `cms_footer` (`id`, `footer`) VALUES
(1, '</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `cms_footer_edit`
--

CREATE TABLE IF NOT EXISTS `cms_footer_edit` (
`id` int(11) NOT NULL,
  `footer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_footer_edit`
--

INSERT INTO `cms_footer_edit` (`id`, `footer`) VALUES
(1, '\r\n   <div style=\\"clear:both;\\"></div>\r\n		<div id=\\"container3\\">\r\n		\r\n		<div id=\\"footer\\" style=\\"width:100%; background-color:black; margin-right:0px; margin-left:0px;\\">\r\n		<div><span style=\\"color:#dedddd; margin:0px; padding:0px; font-size:11px;\\"><a href=\\"index.php\\">Home</a>|<a href=\\"http://www.bohemiawebsites.com\\">Content Management</a>|<a href=\\"http://bohemiawebsites.com/portfolio-bohemia-website-services.html\\">Portfolio</a>|<a href=\\"http://bohemiawebsites.com\\">Rates</a>|<a href=\\"/index.php/form\\">Contact Us change</a></span></div>\r\n		<div style=\\"padding-top:10px; font-size:10px;\\">Copyright 2011 Bohemia Website Services Ltd</div>\r\n			\r\n		\r\n		</div>\r\n		</div>');

-- --------------------------------------------------------

--
-- Table structure for table `cms_header`
--

CREATE TABLE IF NOT EXISTS `cms_header` (
`id` int(11) NOT NULL,
  `top` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_header`
--

INSERT INTO `cms_header` (`id`, `top`) VALUES
(1, '<!DOCTYPE html>');

-- --------------------------------------------------------

--
-- Table structure for table `cms_header_edit`
--

CREATE TABLE IF NOT EXISTS `cms_header_edit` (
`id` int(11) NOT NULL,
  `top` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_header_edit`
--

INSERT INTO `cms_header_edit` (`id`, `top`) VALUES
(1, '<body id=\\"body\\" onLoad=\\"redireccionar()\\">\r\n	<div id=\\"container\\" style=\\"background-image: url(\\''images/new-bg.jpg\\'');\\" >\r\n                    \r\n<div id=\\"main\\" style=\\"background-image: url(\\''images/new-bg.jpg\\'');\\">\r\n    <div id=\\"nav_bg\\">\r\n			<span style=\\"font-size:20px; margin-top:13px; /*position:absolute;*/float:left; \\"><i></i></span>			\r\n			<ul id=\\"navigation2\\" style=\\"z-index:2;\\">\r\n			<li style=\\"z-index:1;\\"><a href=\\"index.php\\">Home</a></li>\r\n<li style=\\"z-index:1;\\"><a href=\\"../../users/index.php\\" target=\\"_blank\\">My Tutor</a></li>\r\n			\r\n		</ul>\r\n			\r\n		</div>	\r\n   ');

-- --------------------------------------------------------

--
-- Table structure for table `cms_path`
--

CREATE TABLE IF NOT EXISTS `cms_path` (
`id` int(11) NOT NULL,
  `path` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cms_path`
--

INSERT INTO `cms_path` (`id`, `path`) VALUES
(1, 'bohemianism.ca'),
(2, 'bohemianism.ca/test/');

-- --------------------------------------------------------

--
-- Table structure for table `cms_sidebar`
--

CREATE TABLE IF NOT EXISTS `cms_sidebar` (
`id` int(11) NOT NULL,
  `sidebar` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_sidebar`
--

INSERT INTO `cms_sidebar` (`id`, `sidebar`) VALUES
(1, 'aaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `cms_url`
--

CREATE TABLE IF NOT EXISTS `cms_url` (
`id` int(11) NOT NULL,
  `url` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_url`
--

INSERT INTO `cms_url` (`id`, `url`) VALUES
(1, 'bohemianism.ca/mytutor/SANDBOXES/_9_mysqli');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
`customer_id` int(5) unsigned NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `pass` char(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_blogs`
--

CREATE TABLE IF NOT EXISTS `customer_blogs` (
  `customer_id` int(10) unsigned NOT NULL,
  `bookmark_id` int(10) unsigned NOT NULL,
  `cat_id` int(3) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `date_posted` datetime NOT NULL,
  `date_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_blogs`
--

INSERT INTO `customer_blogs` (`customer_id`, `bookmark_id`, `cat_id`, `title`, `notes`, `date_posted`, `date_deleted`) VALUES
(1, 89, 10, 'CKC Editor ', 'CKC editor', '2012-01-14 15:39:33', '0000-00-00 00:00:00'),
(9, 127, 1, 'newz', 'Add Notes', '2012-03-05 22:52:02', '0000-00-00 00:00:00'),
(44, 49, 9, 'RSS Pipes', 'RSS Pipe aggregate', '2011-11-09 11:34:19', '0000-00-00 00:00:00'),
(44, 65, 4, 'JQUERY Countdown', 'JQUERY Countdown', '2011-12-01 14:51:42', '0000-00-00 00:00:00'),
(44, 107, 8, 'PUTTY Cleanup and FAQ', 'How To Use Putty on public pc', '2012-02-23 09:10:07', '0000-00-00 00:00:00'),
(9, 128, 2, 'eeeee', 'Add Notes', '2012-03-05 22:54:35', '0000-00-00 00:00:00'),
(44, 137, 6, 'Customizing Wordpress', '<p>create a template file based on the template&#39;s page.php file<br>\r\n	Can create a folder and add files for application<br>\r\n	can include any files on a page include (TEMPLATEPATH . &#39;/folder/index.php&#39;);</p>\r\n', '2012-03-22 15:57:13', '0000-00-00 00:00:00'),
(1, 170, 5, 'Joomla 1.5 User Privileges', '<p>With Joomla, you can allow certain user access levels to view specific text in your index.php template file.</p>\r\n<p>The code to allow only administrator or super administrator is shown below.</p>\r\n<p>if($user-&gt;usertype == &quot;Super Administrator&quot; || $user-&gt;usertype == &quot;Administrator&quot;){<br>\r\n	echo &#39;Text for admin&#39;;<br>\r\n	{<br>\r\n	else{<br>\r\n	echo &#39;Text for everybody else&#39;;<br>\r\n	}</p>\r\n', '2012-06-04 17:10:10', '0000-00-00 00:00:00'),
(1, 190, 1, 'New-Test-Blog-Post-With-Hyphens', '<p>Hyphens are added and stripped with Bohemian CMS blog.</p>', '2012-08-08 07:14:34', '0000-00-00 00:00:00'),
(1, 191, 1, 'Test-page-here', '<p>This is a test <a href=\\"http://bohemiawebsites.com\\">here</a>.</p>\r\n', '2012-10-04 05:26:33', '0000-00-00 00:00:00'),
(1, 192, 1, 'Ddd', '<p>Add Notes</p>', '2012-10-04 05:27:37', '0000-00-00 00:00:00'),
(1, 193, 1, 'New-Page-Here', '<p>Add NotesPAGE here</p>', '2012-10-04 02:31:09', '0000-00-00 00:00:00'),
(1, 194, 1, 'Test Again', '<p>Add Notes Maybe I need at least so  many words fpor this to work. I am not sure.</p>', '2012-10-04 05:58:49', '0000-00-00 00:00:00'),
(44, 195, 1, 'Other-blog-file', '<p>Looks like other blog file is called down 1 directory; like phpblog.ca/blog because footer and header points to the folder 1 down. Also, the redirect to 404 is working and that is a big sign that file is being used. Not using the template from BETA1-CMS folder.&nbsp;</p>\r\n<p>Typically, htaccess writes to blog/ maybe need BETA1-CMS, but this could cause problems when using on mass scale for students. Would be nice to not have to hard code BETA1-CMS.&nbsp;</p>\r\n<p>Check .htaccess too</p>\r\n<p>Or getting data from wrong <a href=\\"http://bohemiawebsites.com\\">database</a>.</p>\r\n', '2012-10-04 08:12:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bookmarks`
--

CREATE TABLE IF NOT EXISTS `customer_bookmarks` (
  `customer_id` int(10) unsigned NOT NULL,
  `bookmark_id` int(10) unsigned NOT NULL,
  `cat_id` int(3) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `date_posted` datetime NOT NULL,
  `date_deleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_bookmarks`
--

INSERT INTO `customer_bookmarks` (`customer_id`, `bookmark_id`, `cat_id`, `title`, `notes`, `date_posted`, `date_deleted`) VALUES
(1, 89, 10, 'CKC Editor s', 'CKC editor sggg', '2012-01-14 15:39:33', '0000-00-00 00:00:00'),
(1, 94, 10, 'Spam Assassinssss', 'Spam Assassinsss', '2012-01-16 20:46:08', '0000-00-00 00:00:00'),
(1, 135, 1, 'test title', 'here are my nore', '2012-07-30 20:26:50', '0000-00-00 00:00:00'),
(1, 139, 4, 'JQUERY Cycle Plugin', 'Jquery cycle plugin', '2012-04-01 14:33:11', '0000-00-00 00:00:00'),
(1, 140, 10, 'CKEditor P Tags', 'CKEditor P Tags', '2012-04-12 09:11:29', '0000-00-00 00:00:00'),
(1, 141, 10, 'CK Editor config', 'CK Editor config', '2012-04-12 09:16:41', '0000-00-00 00:00:00'),
(1, 142, 10, 'Image Share at imgur.com', 'Image Share at imgur.com', '2012-04-12 11:07:36', '0000-00-00 00:00:00'),
(1, 143, 10, 'Earthquakes', 'earthquakes', '2012-04-12 15:26:38', '0000-00-00 00:00:00'),
(1, 145, 10, 'Ebooks ', 'Writing and Selling Ebooks', '2012-04-25 06:04:26', '0000-00-00 00:00:00'),
(1, 148, 1, 'Mime Types', 'Mime Types', '2012-04-28 08:02:25', '0000-00-00 00:00:00'),
(1, 157, 10, 'Windows Installer For Vista', 'Missing Windows Installer for vista.', '2012-05-30 19:57:05', '0000-00-00 00:00:00'),
(1, 159, 4, 'JW Player Code Creator', 'JW Player Code Creator', '2012-06-03 11:37:26', '0000-00-00 00:00:00'),
(3, 1, 10, 'another google, but the rest disappear...why?', 'Let\\\\\\\\\\\\\\''s find out', '2010-07-20 15:33:27', '0000-00-00 00:00:00'),
(3, 5, 10, 'google.ca works but not a duplicate', 'dsds', '2010-07-20 15:32:39', '0000-00-00 00:00:00'),
(4, 1, 10, 'Another Google', 'This is for another Google. Yep it does work!!', '2010-08-13 09:39:35', '0000-00-00 00:00:00'),
(4, 3, 10, 'new yahoo from kelchuk4', 'new yahoo bookmark', '2010-07-20 15:08:17', '0000-00-00 00:00:00'),
(4, 6, 10, 'Excite changed', 'This will allow me to edit this url. But the field are not filled in. Go figure.', '2010-07-20 21:06:08', '0000-00-00 00:00:00'),
(4, 7, 10, 'Craigslist', 'Craigslist', '2010-07-20 21:06:46', '0000-00-00 00:00:00'),
(4, 8, 10, 'epson old school', 'epson old school get a kindle DX', '2010-07-20 21:07:24', '0000-00-00 00:00:00'),
(4, 10, 10, 'askjeeves title updated', 'ask Jeeves', '2010-07-20 21:08:16', '0000-00-00 00:00:00'),
(4, 12, 10, 'Twitter', 'This is twitter.', '2010-07-31 12:11:38', '0000-00-00 00:00:00'),
(4, 13, 10, 'Delicious', 'Delicious Bookmark', '2010-07-31 14:35:03', '0000-00-00 00:00:00'),
(4, 37, 10, 'new bookmark kelchuk4', 'kelchuk4 new. I clicked add bookmark from another profile', '2011-02-07 10:42:45', '0000-00-00 00:00:00'),
(4, 38, 10, 'new bookmark', 'ss dddf', '2011-02-07 10:44:33', '0000-00-00 00:00:00'),
(4, 39, 10, 'no tags insert why?', 'need to get the tags working', '2011-02-07 11:04:30', '0000-00-00 00:00:00'),
(7, 11, 10, 'test', 'this is a test', '2010-07-27 15:56:09', '0000-00-00 00:00:00'),
(8, 1, 10, 'Google', 'new google from kelchuk7', '2010-07-20 09:04:40', '0000-00-00 00:00:00'),
(8, 3, 10, 'Yahoo', 'All original info', '2010-07-20 09:12:50', '0000-00-00 00:00:00'),
(8, 4, 10, 'bing from kelchuk7', 'wqwq', '2010-07-20 09:15:31', '0000-00-00 00:00:00'),
(10, 1, 10, 'Google Website', 'Google number one search engine', '2010-08-08 10:20:40', '0000-00-00 00:00:00'),
(10, 34, 10, 'Dell Computers', 'dell', '2010-08-08 10:08:49', '0000-00-00 00:00:00'),
(10, 35, 10, 'MSN', 'MSN', '2010-08-08 10:22:21', '0000-00-00 00:00:00'),
(10, 36, 10, 'Vancouver Canadians Baseball', 'Vancouver Canadians is the highest calibre team in Vancouver. Hope you like Single\\"a\\" baseball.', '2010-08-09 12:30:00', '0000-00-00 00:00:00'),
(44, 41, 3, 'CSS Rollover Buttons', 'Rollover with single image', '2011-10-23 08:59:51', '0000-00-00 00:00:00'),
(44, 46, 1, 'Database Class for PHP 5', 'Database Class', '2011-11-09 06:32:38', '0000-00-00 00:00:00'),
(44, 47, 1, 'Paging Results PHP OOP', 'Paging Results PHP OOP', '2011-11-09 07:04:02', '0000-00-00 00:00:00'),
(44, 48, 1, 'PHP Cookbook Queries Class', 'OOP query', '2011-11-09 07:08:37', '0000-00-00 00:00:00'),
(44, 49, 9, 'RSS Pipes', 'RSS Pipe aggregate', '2011-11-09 11:34:19', '0000-00-00 00:00:00'),
(44, 51, 1, 'Changing background Color MYSQL_FETCH_ASSOC', 'http://www.sitepoint.com/forums/showthread.php?722578-While-Loop-Alternate-Table', '2011-11-10 15:28:39', '0000-00-00 00:00:00'),
(44, 54, 1, 'PHP Refresh', 'Good script to detect a refresh and execute various conditions.', '2011-11-12 13:51:17', '0000-00-00 00:00:00'),
(44, 55, 1, 'MYSQL IN()', 'IN() clause mysql', '2011-11-14 15:59:50', '0000-00-00 00:00:00'),
(44, 56, 5, 'Joomla Session Management', 'cookies and sessions to other scripts.', '2011-11-16 07:18:42', '0000-00-00 00:00:00'),
(44, 57, 1, 'HTACCESS Tips', 'Tips using .htaccess such as rewrite rules and rewrite conditions.', '2011-11-24 08:58:21', '0000-00-00 00:00:00'),
(44, 58, 5, 'Import Session To Joomla', 'Import a PHP Session to Joomla ', '2011-11-24 13:52:53', '0000-00-00 00:00:00'),
(44, 59, 5, 'Joomla getvar', 'Joomla getvar', '2011-11-24 14:12:16', '0000-00-00 00:00:00'),
(44, 60, 5, 'Joomla Sessions Import To PHP Script', 'Joomla Sessions Import To PHP Script', '2011-11-24 15:42:19', '0000-00-00 00:00:00'),
(44, 61, 1, 'PHP setCookie on all domains', 'PHP.net for setting a cookie on all domains. To make available on all subdomains set it to \\\\\\''.mysite.com\\\\\\''', '2011-11-25 14:01:39', '0000-00-00 00:00:00'),
(44, 62, 1, 'PHP Arrays Simple', 'PHP Arrays Simple', '2011-11-26 14:13:21', '0000-00-00 00:00:00'),
(44, 63, 1, 'MYSQL SEARCH STRINGS', 'MYSQL SEARCH STRINGS', '2011-11-29 16:00:54', '0000-00-00 00:00:00'),
(44, 64, 4, 'JQUERY Countdown Timer', 'JQUERY Countdown Timer', '2011-12-01 13:40:05', '0000-00-00 00:00:00'),
(44, 65, 4, 'JQUERY Countdown', 'JQUERY Countdown', '2011-12-01 14:51:42', '0000-00-00 00:00:00'),
(44, 66, 1, 'MYSQL Select LIMIT 2 Params', 'MYSQL Select LIMIT 2 Params', '2011-12-02 13:53:15', '0000-00-00 00:00:00'),
(44, 67, 1, 'PHP Image Resizing', 'Resizing Images with PHP', '2011-12-06 15:38:11', '0000-00-00 00:00:00'),
(44, 68, 1, 'PHP Rename() Function', 'Method for opening a file and renaming it.', '2011-12-11 08:43:37', '0000-00-00 00:00:00'),
(44, 69, 1, 'PHP Copy() Function', 'PHP copy function will move a file to a new directory. Afterwards, renaming it to a post variable could create dynamic cms pages.', '2011-12-11 09:03:06', '0000-00-00 00:00:00'),
(44, 70, 1, 'Indeed API Limit ', 'Setting request limits', '2011-12-13 12:33:34', '0000-00-00 00:00:00'),
(44, 71, 9, 'DOM and XML', 'dom and xml with NEW DOMDocument class.', '2011-12-13 13:10:14', '0000-00-00 00:00:00'),
(44, 72, 4, 'Javscript countdown timer', 'jscript countdown timer', '2011-12-13 14:21:40', '0000-00-00 00:00:00'),
(44, 73, 2, 'Theme Forest', 'Templates, code and more. Great place to find website parts.', '2011-12-14 11:43:12', '0000-00-00 00:00:00'),
(44, 74, 1, 'Update Multiple Rows in / out of Loop', 'Update Multiple Rows in / out of Loop', '2011-12-14 19:04:22', '0000-00-00 00:00:00'),
(44, 75, 1, 'Corrupt MYISAM Tables MYSQL', 'Corrupt MYISAM Tables MYSQL', '2011-12-15 13:12:34', '0000-00-00 00:00:00'),
(44, 76, 1, 'PHP IF FILE EXISTS', 'Check for php file and write condition statements', '2011-12-20 07:15:34', '0000-00-00 00:00:00'),
(44, 77, 1, 'PHP pagination unfinshed', 'PHP pagination needs GET', '2011-12-20 11:33:40', '0000-00-00 00:00:00'),
(44, 78, 10, 'Search Engine Land', 'Search Engine Land', '2011-12-22 10:40:08', '0000-00-00 00:00:00'),
(44, 79, 1, 'PHP-GTK', 'Gimp Tool Kit', '2011-12-22 11:48:36', '0000-00-00 00:00:00'),
(44, 80, 1, 'PHP Forum Comparisons', 'Comparing SMF, PHPBB and VBULLETIN FORUMS.', '2011-12-22 15:11:07', '0000-00-00 00:00:00'),
(44, 81, 1, 'LOAD DATA LOCAL INFILE', 'LOAD DATA LOCAL INFILE \\\\\\"c:/wamp/myfile.txt\\\\\\" ', '2011-12-23 11:05:41', '0000-00-00 00:00:00'),
(44, 82, 1, 'Country City Dropdowns', 'Country City Dropdowns', '2011-12-23 15:36:29', '0000-00-00 00:00:00'),
(44, 83, 1, 'MD5 Password Generator', 'MD5 password generator for creating MD5 PHP or Joomla passowrds.', '2011-12-29 09:48:24', '0000-00-00 00:00:00'),
(44, 84, 1, 'Bookmark Site Script', 'Script to make links to bookmark website.', '2011-12-29 10:46:18', '0000-00-00 00:00:00'),
(44, 85, 4, 'JQuery Validation Plugin', 'JQuery Validation Plugin', '2012-01-03 14:42:09', '0000-00-00 00:00:00'),
(44, 86, 4, 'Javascript Refresh Page once', 'Javascript Refresh Page once', '2012-01-04 09:08:49', '0000-00-00 00:00:00'),
(44, 87, 1, 'MYSQL Multiple Updates', 'mySQL Multiple Updates', '2012-01-05 09:23:55', '0000-00-00 00:00:00'),
(44, 88, 5, 'Joomla Registration hack', 'Joomla Registration hack', '2012-01-05 12:41:08', '0000-00-00 00:00:00'),
(44, 90, 1, 'Large SQL Import  WAMP', 'Large SQL Import into WAMP', '2012-01-15 20:09:00', '0000-00-00 00:00:00'),
(44, 91, 1, 'IMPORT SQL WAMP', 'IMPORT SQL WAMP', '2012-01-15 20:09:27', '0000-00-00 00:00:00'),
(44, 92, 1, 'Dump Large SQL File Wamp', 'Dump Large SQL File Wamp', '2012-01-15 20:13:02', '0000-00-00 00:00:00'),
(44, 93, 1, 'Facebook Developers', 'Facebook Login for Websites', '2012-01-16 14:00:05', '0000-00-00 00:00:00'),
(44, 95, 8, 'ssl and addon domains', 'ssl and addon domains', '2012-01-24 12:56:15', '0000-00-00 00:00:00'),
(44, 96, 1, 'Auto Increment from CSV', 'Auto Increment from CSV', '2012-01-26 09:34:48', '0000-00-00 00:00:00'),
(44, 97, 1, 'md5 encryption ', 'md5 encryption and vice versa', '2012-01-26 13:39:47', '0000-00-00 00:00:00'),
(44, 98, 1, 'sha1 decryption', 'sha1 decryption', '2012-01-26 13:41:39', '0000-00-00 00:00:00'),
(44, 99, 1, 'Graph Bars PHP', 'PHP Graph Bars', '2012-01-30 15:27:02', '0000-00-00 00:00:00'),
(44, 100, 1, 'PHPlist Email Campaign', 'PHPlist Email Campaign', '2012-02-08 10:53:57', '0000-00-00 00:00:00'),
(44, 101, 1, 'ob_start() and end', 'ob_start() and end', '2012-02-16 13:57:45', '0000-00-00 00:00:00'),
(44, 102, 1, 'PHP Error Control Operators', 'PHP Error Control Operators', '2012-02-16 14:25:00', '0000-00-00 00:00:00'),
(44, 103, 1, 'Sha1 Password Encrypter', 'Sha1 Password Encrypter', '2012-02-17 09:58:45', '0000-00-00 00:00:00'),
(44, 104, 1, 'Analyzing MYSQL Queries For Speed', 'Optimizing MYSQL Queries For Speed', '2012-02-21 13:45:31', '0000-00-00 00:00:00'),
(44, 105, 1, 'MYSQL Query cache', 'MYSQL Query cache', '2012-02-22 18:20:55', '0000-00-00 00:00:00'),
(44, 106, 1, 'MYSQL Indexes', 'MYSQL Column Index', '2012-02-23 09:01:55', '0000-00-00 00:00:00'),
(44, 107, 8, 'PUTTY Cleanup and FAQ', 'How To Use Putty on public pc', '2012-02-23 09:10:07', '0000-00-00 00:00:00'),
(44, 108, 1, 'PHPLIST Placeholders', 'PHPLIST Placeholders', '2012-02-23 09:42:16', '0000-00-00 00:00:00'),
(44, 109, 1, 'MYSQL Query Cache Notes', 'MYSQL Query Cache Notes', '2012-02-23 11:29:22', '0000-00-00 00:00:00'),
(44, 110, 8, 'Cpanel Cron Job', 'Cpanel Cron Job', '2012-02-28 11:21:28', '0000-00-00 00:00:00'),
(44, 111, 8, 'Cpanel Cron Job part A', 'Cpanel Cron Job part A', '2012-02-28 11:21:55', '0000-00-00 00:00:00'),
(44, 112, 8, 'Cpanel Cron Job Part 3', 'Cpanel Cron Job Part 3', '2012-02-28 11:23:48', '0000-00-00 00:00:00'),
(44, 113, 8, 'Cron Commands', 'Cron Commands', '2012-02-28 11:26:56', '0000-00-00 00:00:00'),
(44, 114, 8, 'Canadian Web Hosting Cron', 'Canadian Web Hosting Cron\r\nphp -q/home/demo/public_html/WCMCS/admin/cron.php\r\n\r\nGET http://www.example.com/wcmcs/admin/cron.php', '2012-02-28 11:29:01', '0000-00-00 00:00:00'),
(44, 115, 10, 'Windows 7 Restore and backup Data Disable', 'Windows 7 Restore and backup Data Disable', '2012-03-02 10:35:35', '0000-00-00 00:00:00'),
(44, 116, 5, 'Joomla Extension Directory', 'Joomla Extension Directory', '2012-03-03 09:18:22', '0000-00-00 00:00:00'),
(44, 117, 0, 'Subtile Textures For Backgrounds', 'Images for button backgrounds.', '2012-03-06 11:22:59', '0000-00-00 00:00:00'),
(44, 118, 0, 'Sugar CRM Show Users Leads', 'Sugar CRM Show Users Leads', '2012-03-07 09:19:48', '0000-00-00 00:00:00'),
(44, 119, 0, 'PHPLIST', 'PHPLIST SEND RATE', '2012-03-08 13:56:06', '0000-00-00 00:00:00'),
(44, 120, 0, 'PHPLISR CRon Jobs', 'PHPlist Cron Jobs', '2012-03-08 14:03:08', '0000-00-00 00:00:00'),
(44, 121, 0, 'More PHPLIST Cron Jobs', 'More PHPLIST Cron Jobs', '2012-03-08 14:04:00', '0000-00-00 00:00:00'),
(44, 122, 0, 'PHPLIST Cron Job Examples', 'PHPLIST Cron Job Examples', '2012-03-08 14:05:11', '0000-00-00 00:00:00'),
(44, 123, 0, 'PHPLIST and Cpanel', 'PHPLIST and Cpanel', '2012-03-08 14:06:49', '0000-00-00 00:00:00'),
(44, 124, 0, 'iwhois', 'iwhois information to see who hosts a website and dns', '2012-03-11 08:49:38', '0000-00-00 00:00:00'),
(44, 125, 0, 'Mod_rewrite 500 Error', 'Mod_rewrite 500 Error', '2012-03-12 09:36:33', '0000-00-00 00:00:00'),
(44, 126, 0, 'Common SSH Commands', 'Common SSH Commands', '2012-03-12 15:58:29', '0000-00-00 00:00:00'),
(44, 127, 0, 'free -m', 'free -m (memory usage)', '2012-03-12 16:03:08', '0000-00-00 00:00:00'),
(44, 128, 0, 'Webcam Software', 'Tincam Web Cam Software', '2012-03-14 09:59:16', '0000-00-00 00:00:00'),
(44, 129, 0, 'Webcam XP Tutorial', 'Webcam XP Tutorial', '2012-03-14 10:59:14', '0000-00-00 00:00:00'),
(44, 130, 0, 'Yawcam', 'Yawcam with motion detector', '2012-03-14 11:06:13', '0000-00-00 00:00:00'),
(44, 131, 0, 'Tincam Software ', 'Tincam Software', '2012-03-14 11:21:09', '0000-00-00 00:00:00'),
(44, 132, 0, 'Soundbooth Merge and Edit Multitrack', 'Soundbooth Merge and Edit Multitrack', '2012-03-14 12:21:09', '0000-00-00 00:00:00'),
(44, 133, 0, 'Free memory Linux Explained', 'Free memory Linux Explained \r\nfree -m', '2012-03-14 13:08:45', '0000-00-00 00:00:00'),
(44, 134, 0, 'PHP Mobile Detect', 'Detect Mobile Browser Class For PHP', '2012-03-15 15:37:46', '0000-00-00 00:00:00'),
(44, 138, 1, 'PHP Form Processing With Images', 'PHP Form Processing With Images', '2012-03-26 10:49:51', '0000-00-00 00:00:00'),
(44, 144, 1, 'HTMSPECIALCHARS() and MYSQL_REAL_ESCAPE_STRING', 'HTMSPECIALCHARS() and MYSQL_REAL_ESCAPE_STRING', '2012-04-18 11:06:48', '0000-00-00 00:00:00'),
(44, 146, 10, 'ISBN Canada', 'ISBN Canada', '2012-04-25 10:12:04', '0000-00-00 00:00:00'),
(44, 147, 8, 'Addon Domain To New Account in Cpanel', 'Addon Domain To New Account in Cpanel', '2012-04-25 15:40:06', '0000-00-00 00:00:00'),
(44, 149, 1, 'PHP DOT NET', 'Best PHP Site', '2012-05-08 20:24:21', '0000-00-00 00:00:00'),
(44, 151, 8, 'Migrating Mailboxes to Cpanel Addon Domain', 'Migrating Mailboxes to Cpanel Addon Domain', '2012-05-09 10:50:54', '0000-00-00 00:00:00'),
(44, 152, 8, 'SSL On Addon Domain', 'Adding an SSL certificate on an add-on domain.', '2012-05-09 13:16:36', '0000-00-00 00:00:00'),
(44, 153, 8, 'SSL Certificates 1 Domain At A Time', 'SSL Certificates 1 Domain At A Time', '2012-05-09 13:25:38', '0000-00-00 00:00:00'),
(44, 158, 1, 'Replace() Function MYSQL', 'Using the replace() function in a select statement. Can also use in the WHERE clause.', '2012-05-31 13:08:03', '0000-00-00 00:00:00'),
(44, 160, 10, 'Video Hive', 'Video Hive website and templates', '2012-06-09 12:44:04', '0000-00-00 00:00:00'),
(44, 161, 3, 'Cross Browser CSS Gradients', 'Cross Browser CSS Gradients', '2012-06-11 13:23:02', '0000-00-00 00:00:00'),
(44, 162, 10, 'Glass', 'glass shop', '2012-06-23 11:08:27', '0000-00-00 00:00:00'),
(44, 163, 5, 'Joomla Extension Error Codes', 'Error codes for Joomla extensions.', '2012-06-27 15:27:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE IF NOT EXISTS `customer_info` (
`customer_id` int(10) unsigned NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `homepage` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_enrolled` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=87 ;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`customer_id`, `email`, `name`, `homepage`, `date_enrolled`) VALUES
(1, 'kelchuk2@gmail.com', 'Kent', 'http://bohemianism.ca', '2010-06-14 11:52:49'),
(2, 'chukweb@shaw.ca', '', '', '2010-06-18 11:38:36'),
(3, 'kelchuk3@gmail.com', '', '', '2010-06-18 12:24:52'),
(4, 'kelchuk4@gmail.com', '', '', '2010-06-18 12:49:21'),
(5, 'test@gmail.com', '', '', '2010-06-18 18:42:52'),
(6, 'test@test.com', '', '', '2010-06-21 11:04:30'),
(7, 'test2@test.com', '', '', '2010-06-23 15:44:00'),
(8, 'kelchuk7@gmail.com', '', '', '2010-07-19 18:09:27'),
(10, 'kelchuk8@gmail.com', 'Kent L', 'no homepage', '2010-07-21 14:52:59'),
(44, 'kent@bohemiawebsites.com', 'Kent', 'websitebc.com', '2011-10-23 08:33:22'),
(46, 'kelchuk2@shaw.ca', '', '', '2011-10-24 20:04:46'),
(47, 'darren@brightoncollege.ca', '', '', '2012-01-24 09:23:41'),
(48, 'kentelchuk@hotmail.com', '', '', '2012-01-24 12:58:35'),
(56, 'bohemian@bohemiawebsites.com', '', '', '2012-01-24 18:57:39'),
(57, 'terrenceaiton@hotmail.com', '', '', '2012-03-07 19:38:16'),
(58, 'Lasell@louboutinzapatos.net\r\n', '', '', '2012-04-16 18:42:18'),
(59, 'summerdedf@hotmail.com', '', '', '2012-04-18 00:59:11'),
(69, 'info@bohemianism.ca', '', '', '2012-05-19 12:59:53'),
(70, 'nikidarnie@aol.com', '', '', '2012-06-05 23:48:44'),
(71, 'mubblueva@gmail.com', '', '', '2012-06-11 00:15:04'),
(72, 'dippilltatmix@gmail.com', '', '', '2012-06-13 10:33:00'),
(73, 'donimoriten@aol.com', '', '', '2012-06-13 11:28:42'),
(74, 'norimettrr@aol.com', '', '', '2012-06-13 23:28:22'),
(75, 'motkosmm@aol.com', '', '', '2012-06-14 00:13:19'),
(76, 'milkators@aol.com', '', '', '2012-06-14 01:59:46'),
(77, 'sladcatty@gmail.com', '', '', '2012-06-14 04:19:42'),
(78, 'rhydayeasew@gmail.com', '', '', '2012-06-14 05:02:19'),
(79, 'deawlfafpaf@gmail.com', '', '', '2012-06-14 05:43:47'),
(80, 'doldarourdy@gmail.com', '', '', '2012-06-14 09:34:19'),
(81, 'vzzkzkzzvvvz@gmail.com', '', '', '2012-06-18 01:04:19'),
(82, 'nizokre@gmail.com', '', '', '2012-06-18 02:39:47'),
(83, 'oceandaboni@gmail.com', '', '', '2012-06-21 02:22:25'),
(84, 'queelmduh@gmail.com', '', '', '2012-06-21 03:35:57'),
(85, 'vlqvlqlqlvll@gmail.com', '', '', '2012-06-26 07:54:00'),
(86, 'dingolatt@aol.com', '', '', '2012-06-28 03:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `customer_network`
--

CREATE TABLE IF NOT EXISTS `customer_network` (
`friendID` int(10) unsigned NOT NULL,
  `req_customer` int(10) unsigned NOT NULL,
  `req_date` datetime DEFAULT NULL,
  `app_customer` int(10) unsigned NOT NULL,
  `app_date` datetime DEFAULT NULL,
  `date_deactivated` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `customer_network`
--

INSERT INTO `customer_network` (`friendID`, `req_customer`, `req_date`, `app_customer`, `app_date`, `date_deactivated`) VALUES
(2, 3, '2010-06-18 12:25:20', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 4, '2010-06-18 12:49:54', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 4, '2010-06-18 13:00:50', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 4, '2010-06-18 18:38:27', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 5, '2010-06-18 18:43:09', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 5, '2010-06-18 18:54:29', 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 5, '2010-06-18 19:01:05', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 6, '2010-06-23 10:05:58', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 6, '2010-06-23 15:43:24', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 6, '2010-06-23 15:43:32', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 7, '2010-06-23 15:44:20', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, '2011-02-23 14:44:44', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `flagged_bookmarks`
--

CREATE TABLE IF NOT EXISTS `flagged_bookmarks` (
  `bookmark_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_flagged` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flagged_bookmarks`
--

INSERT INTO `flagged_bookmarks` (`bookmark_id`, `customer_id`, `ip_address`, `date_flagged`) VALUES
(36, 0, '66.249.68.179', '2011-12-10 15:33:59'),
(35, 0, '66.249.68.179', '2011-12-10 14:57:35'),
(39, 0, '66.249.67.184', '2011-11-05 06:38:53'),
(3, 0, '66.249.67.184', '2011-10-23 13:33:08'),
(12, 0, '66.249.67.184', '2011-10-23 02:01:52'),
(37, 1, '174.7.73.195', '2011-10-29 11:13:49'),
(35, 0, '66.249.67.184', '2011-10-22 19:14:40'),
(36, 0, '66.249.67.184', '2011-10-22 19:11:06'),
(12, 0, '66.249.68.147', '2011-12-15 00:19:15'),
(13, 0, '66.249.67.184', '2011-10-22 19:07:31'),
(34, 0, '66.249.67.184', '2011-10-22 19:06:55'),
(1, 0, '66.249.67.184', '2011-10-22 19:05:44'),
(10, 0, '66.249.67.184', '2011-10-22 18:58:34'),
(4, 0, '66.249.67.184', '2011-10-22 18:55:02'),
(11, 0, '66.249.67.184', '2011-10-22 18:52:04'),
(8, 0, '66.249.67.184', '2011-10-22 18:42:37'),
(7, 0, '66.249.67.184', '2011-10-22 16:45:51'),
(39, 0, '66.249.68.179', '2011-12-10 15:52:20'),
(38, 0, '66.249.68.147', '2011-12-15 00:23:55'),
(34, 0, '95.211.38.36', '2011-12-18 20:23:04'),
(3, 0, '66.249.68.147', '2011-12-19 15:54:17'),
(34, 0, '66.249.68.147', '2011-12-29 09:48:21'),
(38, 0, '66.249.68.233', '2012-01-19 03:54:26'),
(39, 0, '66.249.68.233', '2012-02-04 23:22:25'),
(3, 0, '66.249.68.233', '2012-02-11 02:38:56'),
(12, 0, '66.249.68.233', '2012-02-13 21:47:37'),
(34, 0, '66.249.68.233', '2012-02-18 13:52:06'),
(36, 0, '66.249.67.248', '2012-03-02 09:37:48'),
(39, 0, '66.249.67.248', '2012-03-03 21:19:03'),
(35, 0, '66.249.67.248', '2012-03-04 10:29:21'),
(3, 0, '66.249.67.248', '2012-03-07 02:33:56'),
(34, 0, '66.249.67.248', '2012-03-18 04:16:06'),
(36, 0, '66.249.67.169', '2012-04-26 05:36:35'),
(39, 0, '66.249.68.243', '2012-04-30 21:17:37'),
(3, 0, '66.249.68.243', '2012-05-04 16:50:43'),
(35, 0, '66.249.68.243', '2012-05-05 16:51:04'),
(13, 0, '66.249.68.243', '2012-05-05 18:03:17'),
(34, 0, '66.249.68.238', '2012-05-28 02:38:52'),
(36, 0, '66.249.68.238', '2012-05-28 02:52:05'),
(3, 0, '66.249.68.238', '2012-06-08 07:03:48'),
(39, 0, '66.249.68.238', '2012-06-09 05:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
`id` int(11) NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `lastname`, `firstname`, `email`, `phone`, `subject`, `notes`, `date`) VALUES
(1, 'Smith', 'John', 'js@bohemiawebsites.com', '', '', '', '2012-01-01'),
(2, 'James', 'Brad', 'bj3@noemail.com', '', '', '', '2012-01-28'),
(3, 'Rogers', 'Stan', 'noemail@example.com', '', '', '', '2012-01-28'),
(4, 'Rogers', 'Paul', 'noemail2@example.com', '', '', '', '2012-01-28'),
(5, 'Plekanic', 'Mark', 'noemail3@example.com', '', '', '', '2012-01-28'),
(6, 'Armstrong', 'Jeff', 'jeffs@example', '', '', '', '2012-01-01'),
(7, 'Smith', 'Raoul', 'bj3@example.com', '', '', '', '2012-01-28'),
(8, 'Ricardo', 'Ricky', 'noemail4@example.com', '', '', '', '2012-01-28'),
(9, 'Ullsman', 'Peter', 'noemail5@example.com', '', '', '', '2012-01-28'),
(10, 'Johnson', 'Markus', 'noemail6@example.com', '', '', '', '2012-01-28'),
(11, 'Zhang', 'John', 'cd@example.com', '', '', '', '2012-01-01'),
(12, 'O''reilly', 'Brad', 'cd2@example.com', '', '', '', '2012-01-28'),
(13, 'Smith', 'Stan', 'cd3@example.com', '', '', '', '2012-01-28'),
(14, 'Rogers', 'Paul', 'cd4@example.com', '', '', '', '2012-01-28'),
(15, 'Rogers', 'Mark', 'cd5@example.com', '', '', '', '2012-01-28'),
(16, 'Anderson', 'Jeff', 'cd6@example.com', '', '', '', '2012-01-01'),
(17, 'Sanchez', 'Raoul', 'cd7@example.com', '', '', '', '2012-01-28'),
(18, 'Jones', 'Ricky', 'cd8@example.com', '', '', '', '2012-01-28'),
(19, 'Mueller', 'Peter', 'cd9@example.com', '', '', '', '2012-01-28'),
(20, 'Randolf', 'Markus', 'cd10@example.com', '', '', '', '2012-01-28'),
(21, 'Jones', 'Randy', 'rd@example.com', '', '', '', '2012-01-28'),
(22, 'Niekro', 'Joe', 'hh@example.com', '', '', '', '2012-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `logins_validate`
--

CREATE TABLE IF NOT EXISTS `logins_validate` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time_check` int(11) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=341 ;

--
-- Dumping data for table `logins_validate`
--

INSERT INTO `logins_validate` (`id`, `user_id`, `time_check`) VALUES
(69, 1, 1415485319),
(70, 1, 1415733622),
(71, 1, 1415733635),
(72, 1, 1415827863),
(73, 1, 1415828092),
(74, 1, 1415828185),
(75, 1, 1415828212),
(76, 1, 1415828243),
(77, 1, 1415828299),
(78, 1, 1415828306),
(79, 1, 1415828333),
(80, 1, 1415828337),
(81, 1, 1415828360),
(82, 1, 1415828384),
(83, 1, 1415828412),
(84, 1, 1415828462),
(85, 1, 1415828577),
(86, 1, 1415828740),
(87, 1, 1415828834),
(88, 1, 1415828964),
(89, 1, 1415829024),
(90, 1, 1415829067),
(91, 1, 1415829130),
(92, 1, 1415829228),
(93, 1, 1415829253),
(94, 1, 1415829291),
(95, 1, 1415829313),
(96, 1, 1415829360),
(97, 1, 1415829423),
(98, 1, 1415829483),
(99, 1, 1415829620),
(100, 1, 1415829645),
(101, 1, 1415829736),
(102, 1, 1415829824),
(103, 1, 1415829887),
(104, 1, 1415829940),
(105, 1, 1415830033),
(106, 1, 1415830138),
(107, 1, 1415830170),
(108, 1, 1415830201),
(109, 1, 1415830226),
(110, 1, 1415830301),
(111, 1, 1415830368),
(112, 1, 1415830409),
(113, 1, 1415830444),
(114, 1, 1415830467),
(115, 1, 1415830744),
(116, 1, 1415830783),
(117, 1, 1415830807),
(118, 1, 1415830831),
(119, 1, 1415830914),
(120, 1, 1415830970),
(121, 1, 1415831015),
(122, 1, 1415831069),
(123, 1, 1415831090),
(124, 1, 1415831105),
(125, 1, 1415831145),
(126, 1, 1415831430),
(127, 1, 1415831558),
(128, 1, 1415832920),
(129, 1, 1415832991),
(130, 1, 1415833984),
(131, 1, 1415834001),
(132, 1, 1415834064),
(133, 1, 1415834120),
(134, 1, 1415834160),
(135, 1, 0),
(136, 1, 0),
(137, 1, 0),
(138, 1, 0),
(139, 1, 0),
(140, 1, 0),
(141, 1, 0),
(142, 1, 0),
(143, 1, 0),
(144, 1, 0),
(145, 1, 0),
(146, 1, 1415834439),
(147, 1, 0),
(148, 1, 0),
(149, 1, 0),
(150, 1, 0),
(151, 1, 0),
(152, 1, 1415834690),
(153, 1, 1415834814),
(154, 1, 1415835584),
(155, 1, 1415835655),
(156, 1, 1415835669),
(157, 1, 1415835690),
(158, 1, 1415835706),
(159, 1, 1415835742),
(160, 1, 1415835779),
(161, 1, 1415835880),
(162, 1, 1415835897),
(163, 1, 1415836138),
(164, 1, 1415837349),
(165, 1, 1415837982),
(166, 1, 1415838039),
(167, 1, 1415838054),
(168, 1, 1415838142),
(169, 1, 1415838145),
(170, 1, 1415838189),
(171, 1, 1415838417),
(172, 1, 1415838460),
(173, 1, 1415838464),
(174, 1, 1415838468),
(175, 1, 1415838549),
(176, 1, 1415838790),
(177, 1, 1415838838),
(178, 1, 1415839341),
(179, 1, 1415839352),
(180, 1, 1415839485),
(181, 1, 1415845876),
(182, 1, 1415846017),
(183, 1, 1415846147),
(184, 1, 1415846235),
(185, 1, 1415846287),
(186, 1, 1415846362),
(187, 1, 1415846410),
(188, 1, 1415846471),
(189, 1, 1415846488),
(190, 1, 1415846500),
(191, 1, 1415846505),
(192, 1, 1415846530),
(193, 1, 1415846565),
(194, 1, 1415846625),
(195, 1, 1415846702),
(196, 1, 1415846768),
(197, 1, 1415846842),
(198, 1, 1415847090),
(199, 1, 1415901153),
(200, 1, 1415902967),
(201, 1, 1415903056),
(202, 1, 1415903116),
(203, 1, 1415903129),
(204, 1, 1415903174),
(205, 1, 1415905330),
(206, 1, 1415905388),
(207, 1, 1415906490),
(208, 1, 1415906595),
(209, 1, 1415906981),
(210, 1, 1415910494),
(211, 1, 1415911560),
(212, 1, 1415920981),
(213, 1, 1415924240),
(214, 1, 1415924246),
(215, 1, 1415924251),
(216, 1, 1415924392),
(217, 1, 1415924464),
(218, 1, 1415924661),
(219, 1, 1415925183),
(220, 1, 1415925201),
(221, 1, 1415925446),
(222, 1, 1415925452),
(223, 1, 1415925564),
(224, 1, 1415925673),
(225, 1, 1415925677),
(226, 1, 1415926256),
(227, 1, 1415926493),
(228, 1, 1415926537),
(229, 1, 1415926556),
(230, 1, 1415926564),
(231, 1, 1415926616),
(232, 1, 1415926866),
(233, 1, 1415926915),
(234, 1, 1415926947),
(235, 1, 1415927067),
(236, 1, 1415927074),
(237, 1, 1415927174),
(238, 1, 1415927208),
(239, 1, 1415927230),
(240, 1, 1415927238),
(241, 1, 1415927298),
(242, 1, 1415930955),
(243, 1, 1415930994),
(244, 1, 1415931015),
(245, 1, 1415990879),
(246, 1, 1415991205),
(247, 1, 1415991250),
(248, 1, 1415991261),
(249, 1, 1415991351),
(250, 1, 1415991478),
(251, 1, 1415991563),
(252, 1, 1415991599),
(253, 1, 1415991619),
(254, 1, 1415991649),
(255, 1, 1415992038),
(256, 1, 1415992168),
(257, 1, 1415992175),
(258, 1, 1415992325),
(259, 1, 1415992329),
(260, 1, 1415992332),
(261, 1, 1415992424),
(262, 1, 1415992885),
(263, 1, 1415992923),
(264, 1, 1415992931),
(265, 1, 1415992982),
(266, 1, 1415992989),
(267, 1, 1415993159),
(268, 1, 1416000607),
(269, 1, 1416068690),
(270, 1, 1416069882),
(271, 1, 1416070106),
(272, 1, 1416076041),
(273, 1, 1416081554),
(274, 1, 1416166576),
(275, 1, 1416170515),
(276, 1, 1416686485),
(277, 1, 1416686747),
(278, 1, 1416686934),
(279, 1, 1416687795),
(280, 1, 1416688611),
(281, 1, 1416699047),
(282, 1, 1416699096),
(283, 1, 1416756380),
(284, 1, 1416774003),
(285, 1, 1416860561),
(286, 1, 1416946521),
(287, 1, 1416948673),
(288, 1, 1416948885),
(289, 1, 1416950097),
(290, 1, 1416950572),
(291, 1, 1416950701),
(292, 1, 1416950890),
(293, 1, 1416950989),
(294, 1, 1416952671),
(295, 1, 1416952948),
(296, 1, 1416953111),
(297, 1, 1416953513),
(298, 1, 1416953871),
(299, 1, 1416953906),
(300, 1, 1416955757),
(301, 1, 1416958380),
(302, 1, 1417028118),
(303, 1, 1417031264),
(304, 1, 1417034548),
(305, 1, 1417034619),
(306, 1, 1417034692),
(307, 1, 1417034738),
(308, 1, 1417034848),
(309, 1, 1417034898),
(310, 1, 1417035154),
(311, 1, 1417036173),
(312, 1, 1417039911),
(313, 1, 1417137194),
(314, 1, 1417137252),
(315, 1, 1417197940),
(316, 1, 1417198397),
(317, 1, 1417199308),
(318, 1, 1417204034),
(319, 1, 1417204250),
(320, 1, 1417205686),
(321, 1, 1417209493),
(322, 1, 1417209551),
(323, 1, 1417210695),
(324, 1, 1417277470),
(325, 1, 1417289745),
(326, 1, 1417321992),
(327, 1, 1417322041),
(328, 1, 1417322339),
(329, 1, 1417323234),
(330, 1, 1417325488),
(331, 1, 1417325720),
(332, 1, 1417325829),
(333, 1, 1417326009),
(334, 1, 1417326076),
(335, 1, 1417326230),
(336, 1, 1417326276),
(337, 1, 1417555831),
(338, 1, 1417556851),
(339, 1, 1417557496),
(340, 1, 1488603650);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`order_id` int(10) unsigned NOT NULL,
  `customer_id` int(5) unsigned NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=726 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `total`, `order_date`) VALUES
(65, 1, '359.40', '2011-02-28 22:43:01'),
(66, 1, '359.40', '2011-02-28 22:43:03'),
(67, 1, '389.35', '2011-02-28 22:43:34'),
(68, 1, '389.35', '2011-02-28 22:43:35'),
(69, 1, '539.10', '2011-02-28 22:43:48'),
(70, 1, '569.05', '2011-02-28 22:47:53'),
(71, 1, '569.05', '2011-02-28 22:47:57'),
(72, 1, '569.05', '2011-02-28 22:48:46'),
(73, 1, '569.05', '2011-02-28 22:48:49'),
(74, 1, '1347.75', '2011-02-28 22:48:54'),
(75, 1, '1347.75', '2011-02-28 22:51:01'),
(76, 1, '149.75', '2011-02-28 22:51:06'),
(77, 1, '0.00', '2011-03-02 21:26:46'),
(78, 1, '29.95', '2011-03-02 21:27:20'),
(79, 1, '29.95', '2011-03-02 21:27:27'),
(80, 1, '149.75', '2011-03-02 21:27:31'),
(81, 1, '149.75', '2011-03-02 21:28:39'),
(82, 1, '29.95', '2011-03-02 21:58:36'),
(83, 1, '59.90', '2011-03-02 21:58:44'),
(84, 1, '29.95', '2011-03-16 13:13:54'),
(85, 1, '59.90', '2011-03-16 13:14:18'),
(86, 1, '89.85', '2011-03-16 13:14:23'),
(87, 1, '89.85', '2011-03-16 13:14:28'),
(88, 1, '89.85', '2011-03-16 13:14:30'),
(89, 1, '149.75', '2011-03-16 13:55:23'),
(90, 1, '29.95', '2011-04-02 13:36:07'),
(91, 1, '29.95', '2011-05-06 19:40:01'),
(92, 1, '59.90', '2011-05-06 19:43:04'),
(93, 1, '29.95', '2011-05-06 19:43:10'),
(94, 1, '29.95', '2011-05-06 19:43:24'),
(95, 1, '29.95', '2011-05-06 20:20:10'),
(96, 1, '29.95', '2011-05-06 20:20:52'),
(97, 1, '29.95', '2011-05-06 20:21:03'),
(98, 1, '59.90', '2011-05-06 20:38:46'),
(99, 1, '179.70', '2011-05-06 20:39:00'),
(100, 1, '179.70', '2011-05-06 20:39:07'),
(101, 1, '209.65', '2011-05-06 20:46:23'),
(102, 1, '269.55', '2011-05-06 20:46:33'),
(103, 1, '299.50', '2011-05-06 20:46:46'),
(104, 1, '29.95', '2011-05-06 20:46:53'),
(105, 1, '149.75', '2011-05-06 20:47:18'),
(106, 1, '149.75', '2011-05-06 20:47:29'),
(107, 1, '149.75', '2011-05-06 20:47:50'),
(108, 1, '29.95', '2011-05-10 01:35:01'),
(109, 1, '59.90', '2011-05-10 01:52:29'),
(110, 1, '59.90', '2011-05-10 01:52:30'),
(111, 1, '119.80', '2011-05-10 04:57:41'),
(112, 1, '119.80', '2011-05-10 04:57:43'),
(113, 1, '119.80', '2011-05-10 04:58:25'),
(114, 1, '119.80', '2011-05-10 04:58:28'),
(115, 1, '119.80', '2011-05-10 04:58:30'),
(116, 1, '119.80', '2011-05-10 04:58:32'),
(117, 1, '119.80', '2011-05-10 04:58:34'),
(118, 1, '119.80', '2011-05-10 04:58:35'),
(119, 1, '179.70', '2011-05-10 04:59:17'),
(120, 1, '179.70', '2011-05-10 04:59:20'),
(121, 1, '119.80', '2011-05-10 04:59:41'),
(122, 1, '119.80', '2011-05-10 04:59:43'),
(123, 1, '59.90', '2011-05-10 05:00:07'),
(124, 1, '59.90', '2011-05-10 05:00:09'),
(125, 1, '29.95', '2011-05-10 05:00:23'),
(126, 1, '29.95', '2011-05-10 05:00:24'),
(127, 1, '89.85', '2011-05-10 05:00:33'),
(128, 1, '89.85', '2011-05-10 05:00:35'),
(129, 1, '59.90', '2011-05-10 05:00:40'),
(130, 1, '59.90', '2011-05-10 05:00:42'),
(131, 1, '119.80', '2011-05-10 05:00:53'),
(132, 1, '119.80', '2011-05-10 05:00:55'),
(133, 1, '59.90', '2011-05-10 05:01:23'),
(134, 1, '59.90', '2011-05-10 05:01:26'),
(135, 1, '29.95', '2011-05-10 05:02:39'),
(136, 1, '29.95', '2011-05-10 05:02:41'),
(137, 1, '59.90', '2011-05-10 05:02:49'),
(138, 1, '59.90', '2011-05-10 05:02:51'),
(139, 1, '89.85', '2011-05-10 05:03:03'),
(140, 1, '89.85', '2011-05-10 05:03:05'),
(141, 1, '119.80', '2011-05-10 05:03:18'),
(142, 1, '119.80', '2011-05-10 05:03:19'),
(143, 1, '29.95', '2011-05-10 05:05:06'),
(144, 1, '29.95', '2011-05-10 05:05:08'),
(145, 1, '59.90', '2011-05-10 05:05:18'),
(146, 1, '59.90', '2011-05-10 05:05:19'),
(147, 1, '89.85', '2011-05-10 05:05:27'),
(148, 1, '89.85', '2011-05-10 05:05:28'),
(149, 1, '0.00', '2011-05-10 12:11:15'),
(150, 1, '59.90', '2011-05-10 12:17:58'),
(151, 1, '59.90', '2011-05-10 12:18:00'),
(152, 1, '29.95', '2011-05-10 12:20:10'),
(153, 1, '59.90', '2011-05-10 12:22:14'),
(154, 1, '89.85', '2011-05-10 12:22:28'),
(155, 1, '89.85', '2011-05-10 12:22:34'),
(156, 1, '59.90', '2011-05-10 12:23:07'),
(157, 1, '59.90', '2011-05-10 12:23:08'),
(158, 1, '59.90', '2011-05-10 12:23:58'),
(159, 1, '59.90', '2011-05-10 12:23:59'),
(160, 1, '29.95', '2011-05-10 12:27:07'),
(161, 1, '29.95', '2011-05-10 12:27:23'),
(162, 1, '29.95', '2011-05-10 12:27:24'),
(163, 1, '89.85', '2011-05-10 12:27:41'),
(164, 1, '89.85', '2011-05-10 12:27:42'),
(165, 1, '59.90', '2011-05-10 12:29:09'),
(166, 1, '59.90', '2011-05-10 12:29:10'),
(167, 1, '119.80', '2011-05-10 12:39:59'),
(168, 1, '119.80', '2011-05-10 12:40:00'),
(169, 1, '59.90', '2011-05-10 12:44:02'),
(170, 1, '59.90', '2011-05-10 12:44:04'),
(171, 1, '29.95', '2011-05-10 12:44:09'),
(172, 1, '29.95', '2011-05-10 12:44:12'),
(173, 1, '89.85', '2011-05-10 12:44:25'),
(174, 1, '89.85', '2011-05-10 12:44:26'),
(175, 1, '89.85', '2011-05-10 12:45:55'),
(176, 1, '89.85', '2011-05-10 12:45:56'),
(177, 1, '59.90', '2011-05-10 12:46:09'),
(178, 1, '59.90', '2011-05-10 12:46:13'),
(179, 1, '59.90', '2011-05-10 12:46:16'),
(180, 1, '59.90', '2011-05-10 12:49:19'),
(181, 1, '59.90', '2011-05-10 12:49:21'),
(182, 1, '59.90', '2011-05-10 12:49:30'),
(183, 1, '59.90', '2011-05-10 12:49:31'),
(184, 1, '119.80', '2011-05-10 12:56:10'),
(185, 1, '119.80', '2011-05-10 12:56:11'),
(186, 1, '59.90', '2011-05-10 12:57:08'),
(187, 1, '59.90', '2011-05-10 12:57:10'),
(188, 1, '59.90', '2011-05-10 12:58:22'),
(189, 1, '59.90', '2011-05-10 12:58:23'),
(190, 1, '59.90', '2011-05-10 12:58:45'),
(191, 1, '59.90', '2011-05-10 12:58:46'),
(192, 1, '59.90', '2011-05-10 12:59:16'),
(193, 1, '59.90', '2011-05-10 12:59:17'),
(194, 1, '239.60', '2011-05-10 13:04:00'),
(195, 1, '239.60', '2011-05-10 13:04:01'),
(196, 1, '59.90', '2011-05-10 13:04:17'),
(197, 1, '59.90', '2011-05-10 13:04:18'),
(198, 1, '29.95', '2011-05-10 13:05:19'),
(199, 1, '29.95', '2011-05-10 13:05:30'),
(200, 1, '59.90', '2011-05-10 13:05:37'),
(201, 1, '59.90', '2011-05-10 22:50:03'),
(202, 1, '59.90', '2011-05-10 22:50:05'),
(203, 1, '59.90', '2011-05-10 23:05:31'),
(204, 1, '59.90', '2011-05-10 23:05:33'),
(205, 1, '59.90', '2011-05-10 23:06:16'),
(206, 1, '59.90', '2011-05-10 23:06:17'),
(207, 1, '59.90', '2011-05-10 23:07:50'),
(208, 1, '59.90', '2011-05-10 23:07:51'),
(209, 1, '59.90', '2011-05-10 23:08:29'),
(210, 1, '59.90', '2011-05-10 23:08:30'),
(211, 1, '119.80', '2011-05-10 23:08:52'),
(212, 1, '119.80', '2011-05-10 23:08:53'),
(213, 1, '59.90', '2011-05-10 23:09:09'),
(214, 1, '59.90', '2011-05-10 23:09:10'),
(215, 1, '29.95', '2011-05-10 23:13:21'),
(216, 1, '59.90', '2011-05-10 23:13:35'),
(217, 1, '59.90', '2011-05-10 23:17:00'),
(218, 1, '59.90', '2011-05-10 23:17:01'),
(219, 1, '59.90', '2011-05-10 23:17:58'),
(220, 1, '59.90', '2011-05-10 23:18:00'),
(221, 1, '59.90', '2011-05-10 23:20:00'),
(222, 1, '59.90', '2011-05-10 23:20:01'),
(223, 1, '59.90', '2011-05-10 23:20:41'),
(224, 1, '59.90', '2011-05-10 23:20:42'),
(225, 1, '59.90', '2011-05-10 23:20:53'),
(226, 1, '59.90', '2011-05-10 23:20:55'),
(227, 1, '119.80', '2011-05-10 23:21:14'),
(228, 1, '119.80', '2011-05-10 23:21:15'),
(229, 1, '179.70', '2011-05-10 23:22:57'),
(230, 1, '179.70', '2011-05-10 23:22:58'),
(231, 1, '239.60', '2011-05-10 23:23:52'),
(232, 1, '239.60', '2011-05-10 23:23:53'),
(233, 1, '59.90', '2011-05-10 23:24:38'),
(234, 1, '59.90', '2011-05-10 23:24:39'),
(235, 1, '59.90', '2011-05-10 23:25:10'),
(236, 1, '59.90', '2011-05-10 23:25:11'),
(237, 1, '59.90', '2011-05-10 23:25:57'),
(238, 1, '59.90', '2011-05-10 23:26:04'),
(239, 1, '59.90', '2011-05-10 23:28:20'),
(240, 1, '59.90', '2011-05-10 23:28:21'),
(241, 1, '59.90', '2011-05-10 23:29:45'),
(242, 1, '59.90', '2011-05-10 23:29:46'),
(243, 1, '89.85', '2011-05-10 23:32:15'),
(244, 1, '29.95', '2011-05-10 23:33:35'),
(245, 1, '59.90', '2011-05-10 23:36:24'),
(246, 1, '59.90', '2011-05-10 23:36:25'),
(247, 1, '119.80', '2011-05-10 23:46:22'),
(248, 1, '119.80', '2011-05-10 23:46:24'),
(249, 1, '179.70', '2011-05-10 23:46:36'),
(250, 1, '179.70', '2011-05-10 23:46:37'),
(251, 1, '179.70', '2011-05-10 23:46:48'),
(252, 1, '179.70', '2011-05-10 23:46:50'),
(253, 1, '29.95', '2011-05-10 23:47:16'),
(254, 1, '59.90', '2011-05-10 23:47:18'),
(255, 1, '119.80', '2011-05-10 23:47:26'),
(256, 1, '119.80', '2011-05-10 23:47:27'),
(257, 1, '179.70', '2011-05-10 23:47:40'),
(258, 1, '179.70', '2011-05-10 23:47:41'),
(259, 1, '59.90', '2011-05-10 23:48:13'),
(260, 1, '59.90', '2011-05-10 23:48:14'),
(261, 1, '59.90', '2011-05-10 23:51:23'),
(262, 1, '59.90', '2011-05-10 23:51:24'),
(263, 1, '59.90', '2011-05-10 23:53:35'),
(264, 1, '59.90', '2011-05-10 23:53:36'),
(265, 1, '59.90', '2011-05-10 23:55:39'),
(266, 1, '59.90', '2011-05-10 23:55:40'),
(267, 1, '149.75', '2011-05-10 23:57:48'),
(268, 1, '209.65', '2011-05-10 23:57:55'),
(269, 1, '209.65', '2011-05-10 23:57:56'),
(270, 1, '59.90', '2011-05-10 23:58:09'),
(271, 1, '59.90', '2011-05-10 23:58:10'),
(272, 1, '59.90', '2011-05-10 23:58:27'),
(273, 1, '59.90', '2011-05-10 23:58:28'),
(274, 1, '29.95', '2011-05-10 23:59:19'),
(275, 1, '29.95', '2011-05-11 00:00:32'),
(276, 1, '29.95', '2011-05-11 00:00:35'),
(277, 1, '29.95', '2011-05-11 00:00:47'),
(278, 1, '59.90', '2011-05-11 00:01:07'),
(279, 1, '59.90', '2011-05-11 00:01:08'),
(280, 1, '59.90', '2011-05-11 00:01:16'),
(281, 1, '59.90', '2011-05-11 00:01:17'),
(282, 1, '59.90', '2011-05-11 00:03:28'),
(283, 1, '0.00', '2011-05-11 00:03:40'),
(284, 1, '29.95', '2011-05-11 00:04:22'),
(285, 1, '29.95', '2011-05-11 00:04:24'),
(286, 1, '59.90', '2011-05-11 00:04:27'),
(287, 1, '59.90', '2011-05-11 00:04:28'),
(288, 1, '89.85', '2011-05-11 00:04:35'),
(289, 1, '89.85', '2011-05-11 00:04:36'),
(290, 1, '0.00', '2011-05-11 00:04:45'),
(291, 1, '0.00', '2011-05-11 00:06:02'),
(292, 1, '29.95', '2011-05-11 00:06:48'),
(293, 1, '59.90', '2011-05-11 00:07:07'),
(294, 1, '59.90', '2011-05-11 00:07:08'),
(295, 1, '59.90', '2011-05-11 00:07:19'),
(296, 1, '59.90', '2011-05-11 00:07:20'),
(297, 1, '59.90', '2011-05-11 00:08:05'),
(298, 1, '59.90', '2011-05-11 00:08:07'),
(299, 1, '59.90', '2011-05-11 00:11:10'),
(300, 1, '59.90', '2011-05-11 00:11:11'),
(301, 1, '89.85', '2011-05-11 00:12:04'),
(302, 1, '89.85', '2011-05-11 00:12:06'),
(303, 1, '59.90', '2011-05-11 00:12:26'),
(304, 1, '59.90', '2011-05-11 00:12:27'),
(305, 1, '718.80', '2011-05-11 00:32:37'),
(306, 1, '718.80', '2011-05-11 00:32:38'),
(307, 1, '59.90', '2011-05-11 00:32:49'),
(308, 1, '59.90', '2011-05-11 00:32:50'),
(309, 1, '59.90', '2011-05-11 00:34:25'),
(310, 1, '59.90', '2011-05-11 00:34:26'),
(311, 1, '59.90', '2011-05-11 00:34:38'),
(312, 1, '59.90', '2011-05-11 00:34:40'),
(313, 1, '119.80', '2011-05-11 00:35:15'),
(314, 1, '119.80', '2011-05-11 00:35:17'),
(315, 1, '29.95', '2011-05-11 00:42:18'),
(316, 1, '179.70', '2011-05-11 00:42:28'),
(317, 1, '179.70', '2011-05-11 00:42:29'),
(318, 1, '29.95', '2011-05-11 00:44:43'),
(319, 1, '29.95', '2011-05-11 00:44:47'),
(320, 1, '59.90', '2011-05-11 00:44:52'),
(321, 1, '59.90', '2011-05-11 00:44:53'),
(322, 1, '29.95', '2011-05-11 00:45:02'),
(323, 1, '29.95', '2011-05-11 00:45:03'),
(324, 1, '29.95', '2011-05-11 00:45:17'),
(325, 1, '29.95', '2011-05-11 00:45:19'),
(326, 1, '29.95', '2011-05-11 00:46:09'),
(327, 1, '29.95', '2011-05-11 00:46:17'),
(328, 1, '29.95', '2011-05-11 00:47:15'),
(329, 1, '29.95', '2011-05-11 00:47:16'),
(330, 1, '89.85', '2011-05-11 00:47:27'),
(331, 1, '89.85', '2011-05-11 00:47:28'),
(332, 1, '59.90', '2011-05-11 00:49:10'),
(333, 1, '59.90', '2011-05-11 00:49:12'),
(334, 1, '119.80', '2011-05-11 00:49:20'),
(335, 1, '119.80', '2011-05-11 00:49:21'),
(336, 1, '59.90', '2011-05-11 00:50:29'),
(337, 1, '59.90', '2011-05-11 00:50:31'),
(338, 1, '119.80', '2011-05-11 00:54:13'),
(339, 1, '119.80', '2011-05-11 00:54:15'),
(340, 1, '119.80', '2011-05-11 00:54:19'),
(341, 1, '119.80', '2011-05-11 00:54:21'),
(342, 1, '179.70', '2011-05-11 00:54:29'),
(343, 1, '179.70', '2011-05-11 00:54:30'),
(344, 1, '239.60', '2011-05-11 00:56:35'),
(345, 1, '239.60', '2011-05-11 00:56:36'),
(346, 1, '269.55', '2011-05-11 00:56:39'),
(347, 1, '269.55', '2011-05-11 00:56:41'),
(348, 1, '329.45', '2011-05-11 00:57:02'),
(349, 1, '329.45', '2011-05-11 00:57:08'),
(350, 1, '329.45', '2011-05-11 01:00:45'),
(351, 1, '329.45', '2011-05-11 01:00:47'),
(352, 1, '29.95', '2011-05-11 01:06:53'),
(353, 1, '29.95', '2011-05-11 01:06:55'),
(354, 1, '59.90', '2011-05-11 01:07:01'),
(355, 1, '59.90', '2011-05-11 01:07:03'),
(356, 1, '29.95', '2011-05-11 01:07:14'),
(357, 1, '29.95', '2011-05-11 01:07:16'),
(358, 1, '29.95', '2011-05-11 01:11:36'),
(359, 1, '29.95', '2011-05-11 01:11:37'),
(360, 1, '29.95', '2011-05-11 01:15:54'),
(361, 1, '29.95', '2011-05-11 01:15:56'),
(362, 1, '29.95', '2011-05-11 01:16:16'),
(363, 1, '29.95', '2011-05-11 01:16:22'),
(364, 1, '29.95', '2011-05-11 01:22:27'),
(365, 1, '29.95', '2011-05-11 01:22:28'),
(366, 1, '29.95', '2011-05-11 01:23:24'),
(367, 1, '29.95', '2011-05-11 01:23:26'),
(368, 1, '29.95', '2011-05-11 01:40:58'),
(369, 1, '29.95', '2011-05-11 01:41:00'),
(370, 1, '29.95', '2011-05-11 01:41:11'),
(371, 1, '29.95', '2011-05-11 01:41:13'),
(372, 1, '29.95', '2011-05-11 01:48:37'),
(373, 1, '29.95', '2011-05-11 01:49:31'),
(374, 1, '59.90', '2011-05-11 01:49:52'),
(375, 1, '89.85', '2011-05-11 01:50:09'),
(376, 1, '59.90', '2011-05-11 01:52:12'),
(377, 1, '59.90', '2011-05-11 01:52:14'),
(378, 1, '29.95', '2011-05-11 02:23:47'),
(379, 1, '59.90', '2011-05-11 02:24:00'),
(380, 1, '89.85', '2011-05-11 02:24:10'),
(381, 1, '59.90', '2011-05-11 02:27:41'),
(382, 1, '59.90', '2011-05-11 02:27:43'),
(383, 1, '59.90', '2011-05-11 02:27:52'),
(384, 1, '59.90', '2011-05-11 02:27:54'),
(385, 1, '59.90', '2011-05-11 02:27:55'),
(386, 1, '59.90', '2011-05-11 02:28:02'),
(387, 1, '59.90', '2011-05-11 02:28:03'),
(388, 1, '119.80', '2011-05-11 02:32:11'),
(389, 1, '59.90', '2011-05-11 02:32:18'),
(390, 1, '59.90', '2011-05-11 02:32:20'),
(391, 1, '119.80', '2011-05-11 02:32:27'),
(392, 1, '119.80', '2011-05-11 02:32:28'),
(393, 1, '59.90', '2011-05-11 02:40:06'),
(394, 1, '59.90', '2011-05-11 02:40:07'),
(395, 1, '29.95', '2011-05-11 02:40:20'),
(396, 1, '29.95', '2011-05-11 02:40:22'),
(397, 1, '89.85', '2011-05-11 02:40:28'),
(398, 1, '89.85', '2011-05-11 02:40:29'),
(399, 1, '149.75', '2011-05-11 02:40:41'),
(400, 1, '149.75', '2011-05-11 02:40:42'),
(401, 1, '209.65', '2011-05-11 02:41:25'),
(402, 1, '209.65', '2011-05-11 02:41:26'),
(403, 1, '29.95', '2011-05-11 03:05:30'),
(404, 1, '29.95', '2011-05-11 03:05:51'),
(405, 1, '59.90', '2011-05-11 03:08:36'),
(406, 1, '59.90', '2011-05-11 03:08:37'),
(407, 1, '59.90', '2011-05-11 04:31:04'),
(408, 1, '59.90', '2011-05-11 04:31:07'),
(409, 1, '179.70', '2011-05-11 04:31:16'),
(410, 1, '179.70', '2011-05-11 04:31:17'),
(411, 1, '239.60', '2011-05-11 04:39:07'),
(412, 1, '239.60', '2011-05-11 04:39:08'),
(413, 1, '359.40', '2011-05-11 04:41:27'),
(414, 1, '359.40', '2011-05-11 04:41:31'),
(415, 1, '389.35', '2011-05-11 04:41:57'),
(416, 1, '389.35', '2011-05-11 04:41:58'),
(417, 1, '389.35', '2011-05-11 04:43:18'),
(418, 1, '389.35', '2011-05-11 04:43:19'),
(419, 1, '389.35', '2011-05-11 04:43:24'),
(420, 1, '389.35', '2011-05-11 04:43:25'),
(421, 1, '29.95', '2011-05-11 04:43:43'),
(422, 1, '29.95', '2011-05-11 04:43:44'),
(423, 1, '29.95', '2011-05-11 04:43:53'),
(424, 1, '29.95', '2011-05-11 04:43:54'),
(425, 1, '29.95', '2011-05-11 04:44:32'),
(426, 1, '59.90', '2011-05-11 04:44:38'),
(427, 1, '29.95', '2011-05-11 04:46:37'),
(428, 1, '59.90', '2011-05-11 04:46:50'),
(429, 1, '89.85', '2011-05-11 04:47:06'),
(430, 1, '29.95', '2011-05-11 04:48:32'),
(431, 1, '59.90', '2011-05-11 04:48:50'),
(432, 1, '89.85', '2011-05-11 04:49:07'),
(433, 1, '29.95', '2011-05-11 04:50:06'),
(434, 1, '29.95', '2011-05-11 04:50:07'),
(435, 1, '29.95', '2011-05-11 04:50:15'),
(436, 1, '29.95', '2011-05-11 04:50:17'),
(437, 1, '59.90', '2011-05-11 04:50:21'),
(438, 1, '59.90', '2011-05-11 04:50:22'),
(439, 1, '29.95', '2011-05-11 05:03:13'),
(440, 1, '29.95', '2011-05-11 05:03:17'),
(441, 1, '59.90', '2011-05-11 05:03:30'),
(442, 1, '89.85', '2011-05-11 05:03:39'),
(443, 1, '89.85', '2011-05-11 05:03:57'),
(444, 1, '89.85', '2011-05-11 05:23:29'),
(447, 1, '59.90', '2011-05-12 04:01:42'),
(470, 1, '658.90', '2011-05-12 04:18:07'),
(473, 1, '658.90', '2011-05-12 04:22:39'),
(475, 1, '359.40', '2011-05-12 04:23:55'),
(476, 1, '359.40', '2011-05-12 04:25:54'),
(479, 1, '419.30', '2011-05-12 04:27:19'),
(481, 1, '179.70', '2011-05-12 04:31:33'),
(482, 1, '269.55', '2011-05-12 04:33:36'),
(483, 1, '299.50', '2011-05-12 04:34:13'),
(484, 1, '299.50', '2011-05-12 04:36:00'),
(485, 1, '269.55', '2011-05-12 04:38:14'),
(490, 1, '209.65', '2011-05-12 04:41:36'),
(494, 1, '329.45', '2011-05-12 04:45:45'),
(497, 1, '329.45', '2011-05-12 04:50:29'),
(499, 1, '239.60', '2011-05-12 04:53:57'),
(500, 1, '239.60', '2011-05-12 04:56:51'),
(501, 1, '239.60', '2011-05-12 04:56:57'),
(502, 1, '179.70', '2011-05-12 04:57:02'),
(503, 1, '658.90', '2011-05-12 04:57:23'),
(505, 1, '299.50', '2011-05-18 02:59:42'),
(507, 1, '209.65', '2011-05-23 13:13:17'),
(508, 1, '209.65', '2011-05-23 13:13:32'),
(513, 1, '179.70', '2011-06-06 22:58:51'),
(514, 1, '179.70', '2011-06-06 23:01:51'),
(516, 1, '209.65', '2011-06-06 23:18:09'),
(518, 1, '73.50', '2011-06-06 23:21:54'),
(520, 1, '35.75', '2011-06-06 23:40:46'),
(521, 1, '35.75', '2011-06-06 23:44:06'),
(522, 1, '35.75', '2011-06-06 23:45:27'),
(523, 1, '35.75', '2011-06-07 00:07:43'),
(526, 1, '17.85', '2011-09-26 04:24:53'),
(527, 1, '17.85', '2011-09-26 04:25:04'),
(531, 1, '13.90', '2011-10-03 17:51:00'),
(532, 1, '13.90', '2011-10-03 17:52:46'),
(533, 1, '13.90', '2011-10-03 17:53:34'),
(534, 1, '13.90', '2011-10-03 17:53:49'),
(535, 1, '13.90', '2011-10-03 18:34:30'),
(541, 1, '11.90', '2011-11-13 20:01:11'),
(546, 1, '37.70', '2011-11-13 20:50:15'),
(551, 1, '17.85', '2011-11-13 21:53:31'),
(553, 1, '77.79', '2011-11-13 22:02:47'),
(554, 1, '77.79', '2011-11-13 22:02:58'),
(555, 1, '87.78', '2011-11-13 22:03:02'),
(556, 1, '37.70', '2011-11-13 22:18:13'),
(557, 1, '37.70', '2011-11-13 22:18:17'),
(558, 1, '37.70', '2011-11-13 22:19:00'),
(559, 1, '37.70', '2011-11-13 22:19:03'),
(560, 1, '37.70', '2011-11-13 22:19:08'),
(561, 1, '37.70', '2011-11-13 22:19:14'),
(562, 1, '45.65', '2011-11-13 22:19:21'),
(563, 1, '45.65', '2011-11-13 22:19:57'),
(564, 1, '45.65', '2011-11-13 22:20:03'),
(565, 1, '45.65', '2011-11-13 22:22:23'),
(566, 1, '45.65', '2011-11-13 22:23:36'),
(567, 1, '0.00', '2011-11-13 22:25:47'),
(568, 1, '45.65', '2011-11-13 22:26:12'),
(569, 1, '45.65', '2011-11-13 22:31:02'),
(570, 1, '45.65', '2011-11-13 22:31:24'),
(571, 1, '85.40', '2011-11-13 22:31:30'),
(572, 1, '85.40', '2011-11-13 22:32:54'),
(573, 1, '85.40', '2011-11-13 22:33:57'),
(574, 1, '105.25', '2011-11-13 22:34:07'),
(576, 1, '17.85', '2012-02-02 23:42:52'),
(577, 1, '17.85', '2012-02-02 23:42:54'),
(580, 1, '17.90', '2012-02-03 02:58:42'),
(582, 1, '41.75', '2012-02-03 02:58:59'),
(583, 1, '41.75', '2012-02-03 02:59:49'),
(585, 1, '23.80', '2012-05-09 22:05:12'),
(586, 1, '23.80', '2012-05-09 22:05:26'),
(593, 1, '19.85', '2012-06-16 18:25:42'),
(594, 1, '19.85', '2012-06-16 18:34:37'),
(595, 1, '19.85', '2012-06-16 18:34:46'),
(596, 1, '19.85', '2012-06-16 18:34:55'),
(597, 1, '19.85', '2012-06-16 18:35:27'),
(599, 1, '71.40', '2012-06-16 18:35:51'),
(601, 1, '85.30', '2012-06-16 18:36:07'),
(602, 1, '85.30', '2012-06-16 18:42:00'),
(603, 1, '85.30', '2012-06-16 18:46:25'),
(604, 1, '85.30', '2012-06-16 18:47:42'),
(605, 1, '85.30', '2012-06-16 18:50:00'),
(606, 1, '85.30', '2012-06-16 18:50:10'),
(607, 1, '85.30', '2012-06-16 18:50:12'),
(622, 1, '25.80', '2012-06-16 19:18:01'),
(624, 1, '150.80', '2012-06-16 19:18:52'),
(625, 1, '182.60', '2012-06-16 19:19:24'),
(626, 1, '137.82', '2012-06-16 19:22:34'),
(627, 1, '145.77', '2012-06-16 19:23:29'),
(628, 1, '145.77', '2012-06-16 19:25:13'),
(629, 1, '182.60', '2012-06-16 19:27:39'),
(638, 1, '5.95', '2012-06-16 19:46:30'),
(639, 1, '29.75', '2012-06-16 19:46:34'),
(640, 1, '327.25', '2012-06-16 19:46:37'),
(642, 1, '327.25', '2012-06-16 20:02:08'),
(643, 1, '327.25', '2012-06-16 20:02:45'),
(644, 1, '0.00', '2012-06-16 20:03:59'),
(646, 1, '327.25', '2012-06-16 20:04:38'),
(647, 1, '3302.25', '2012-06-16 20:04:43'),
(648, 1, '3302.25', '2012-06-16 20:06:38'),
(649, 1, '3302.25', '2012-06-16 20:06:41'),
(668, 1, '35.70', '2012-06-16 20:29:54'),
(669, 1, '35.70', '2012-06-16 20:30:15'),
(670, 1, '95.20', '2012-06-16 20:30:20'),
(685, 1, '29.80', '2012-06-16 20:43:09'),
(686, 1, '29.80', '2012-06-16 20:43:12'),
(687, 1, '74.50', '2012-06-16 20:43:29'),
(688, 1, '149.00', '2012-06-16 20:45:01'),
(689, 1, '149.00', '2012-06-16 20:49:06'),
(690, 1, '149.00', '2012-06-16 20:49:10'),
(691, 1, '298.00', '2012-06-16 20:49:41'),
(692, 1, '298.00', '2012-06-16 20:52:11'),
(693, 1, '447.00', '2012-06-16 20:52:17'),
(694, 1, '5.95', '2012-06-16 20:53:28'),
(695, 1, '9.99', '2012-06-16 20:56:00'),
(696, 1, '17.94', '2012-06-16 20:56:52'),
(697, 1, '24.89', '2012-06-16 20:58:42'),
(698, 1, '256.24', '2012-06-16 21:02:05'),
(699, 1, '256.24', '2012-06-16 21:02:18'),
(700, 1, '275.09', '2012-06-16 21:54:14'),
(701, 1, '275.09', '2012-06-16 21:57:29'),
(702, 1, '275.09', '2012-06-16 21:57:46'),
(703, 1, '275.09', '2012-06-16 21:58:12'),
(704, 1, '275.09', '2012-06-16 21:58:37'),
(705, 1, '275.09', '2012-06-16 21:59:13'),
(706, 1, '275.09', '2012-06-16 21:59:59'),
(707, 1, '275.09', '2012-06-16 22:00:43'),
(708, 1, '275.09', '2012-06-16 22:01:35'),
(709, 1, '275.09', '2012-06-16 22:02:26'),
(710, 1, '275.09', '2012-06-16 22:03:02'),
(711, 1, '275.09', '2012-06-16 22:03:23'),
(712, 1, '275.09', '2012-06-16 22:03:45'),
(713, 1, '275.09', '2012-06-16 22:03:51'),
(714, 1, '288.99', '2012-06-16 22:03:59'),
(715, 1, '288.99', '2012-06-16 22:04:02'),
(716, 1, '288.99', '2012-06-16 22:07:23'),
(717, 1, '288.99', '2012-06-16 22:09:01'),
(718, 1, '573.56', '2012-06-16 22:09:21'),
(719, 1, '913.90', '2012-06-16 23:14:53'),
(720, 1, '1998.00', '2012-06-17 04:10:24'),
(721, 1, '4995.00', '2012-06-17 04:32:07'),
(722, 1, '1998.00', '2012-06-17 20:02:25'),
(723, 1, '1998.00', '2012-06-17 20:03:44'),
(724, 1, '1998.00', '2012-06-17 20:07:11'),
(725, 1, '999.00', '2012-06-17 20:08:12');

-- --------------------------------------------------------

--
-- Table structure for table `order_contents`
--

CREATE TABLE IF NOT EXISTS `order_contents` (
`oc_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(4) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `ship_date` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=316 ;

--
-- Dumping data for table `order_contents`
--

INSERT INTO `order_contents` (`oc_id`, `order_id`, `product_id`, `quantity`, `price`, `ship_date`) VALUES
(1, 1, 4, 3, '3.00', NULL),
(2, 3, 4, 4, '4.00', NULL),
(3, 3, 3, 1, '1.00', NULL),
(4, 4, 4, 4, '4.00', NULL),
(5, 4, 3, 1, '1.00', NULL),
(6, 5, 4, 4, '4.00', NULL),
(7, 5, 3, 1, '1.00', NULL),
(8, 12, 3, 1, '1.00', NULL),
(9, 13, 3, 1, '1.00', NULL),
(10, 14, 3, 1, '1.00', NULL),
(11, 15, 3, 1, '1.00', NULL),
(12, 17, 4, 1, '1.00', NULL),
(13, 18, 4, 1, '1.00', NULL),
(14, 18, 3, 2, '2.00', NULL),
(15, 19, 3, 1, '1.00', NULL),
(16, 20, 2, 1, '1.00', NULL),
(17, 21, 2, 1, '1.00', NULL),
(18, 22, 2, 1, '1.00', NULL),
(19, 26, 2, 1, '1.00', NULL),
(20, 27, 2, 3, '3.00', NULL),
(21, 28, 2, 1, '1.00', NULL),
(22, 29, 1, 1, '1.00', NULL),
(23, 31, 1, 1, '1.00', NULL),
(24, 33, 2, 1, '1.00', NULL),
(25, 35, 1, 1, '1.00', NULL),
(26, 36, 2, 2, '2.00', NULL),
(27, 37, 2, 1, '1.00', NULL),
(28, 38, 2, 1, '1.00', NULL),
(29, 40, 1, 1, '1.00', NULL),
(30, 41, 2, 1, '1.00', NULL),
(31, 43, 2, 1, '1.00', NULL),
(32, 447, 2, 1, '1.00', NULL),
(33, 447, 3, 1, '1.00', NULL),
(34, 473, 2, 2, '2.00', NULL),
(35, 475, 2, 1, '1.00', NULL),
(36, 476, 2, 1, '1.00', NULL),
(37, 479, 2, 1, '1.00', NULL),
(38, 479, 4, 1, '1.00', NULL),
(39, 481, 2, 6, '6.00', NULL),
(40, 482, 2, 9, '9.00', NULL),
(41, 483, 2, 1, '1.00', NULL),
(42, 484, 2, 1, '1.00', NULL),
(43, 485, 2, 9, '9.00', NULL),
(44, 490, 2, 7, '7.00', NULL),
(45, 494, 2, 1, '1.00', NULL),
(46, 497, 2, 1, '1.00', NULL),
(47, 499, 2, 8, '8.00', NULL),
(48, 500, 2, 8, '8.00', NULL),
(49, 501, 2, 8, '8.00', NULL),
(50, 502, 2, 6, '6.00', NULL),
(51, 503, 2, 2, '2.00', NULL),
(52, 505, 2, 1, '1.00', NULL),
(53, 507, 2, 7, '7.00', NULL),
(54, 508, 2, 7, '7.00', NULL),
(55, 513, 2, 6, '6.00', NULL),
(56, 514, 2, 6, '6.00', NULL),
(57, 516, 3, 7, '7.00', NULL),
(58, 518, 3, 7, '7.00', NULL),
(59, 518, 1, 3, '3.00', NULL),
(60, 520, 1, 3, '3.00', NULL),
(61, 520, 4, 2, '2.00', NULL),
(62, 521, 1, 3, '3.00', NULL),
(63, 521, 4, 2, '2.00', NULL),
(64, 522, 1, 3, '3.00', NULL),
(65, 522, 4, 2, '2.00', NULL),
(66, 523, 1, 3, '3.00', NULL),
(67, 523, 4, 2, '2.00', NULL),
(68, 526, 1, 3, '3.00', NULL),
(69, 527, 1, 3, '3.00', NULL),
(70, 531, 2, 2, '2.00', NULL),
(71, 532, 2, 2, '2.00', NULL),
(72, 533, 2, 2, '2.00', NULL),
(73, 534, 2, 2, '2.00', NULL),
(74, 535, 2, 2, '2.00', NULL),
(75, 541, 1, 2, '2.00', NULL),
(76, 546, 1, 5, '5.00', NULL),
(77, 546, 3, 1, '1.00', NULL),
(78, 551, 1, 3, '3.00', NULL),
(79, 553, 1, 3, '3.00', NULL),
(80, 553, 5, 6, '6.00', NULL),
(81, 554, 1, 3, '3.00', NULL),
(82, 554, 5, 6, '6.00', NULL),
(83, 555, 1, 3, '3.00', NULL),
(84, 555, 5, 7, '7.00', NULL),
(85, 556, 3, 1, '1.00', NULL),
(86, 556, 1, 5, '5.00', NULL),
(87, 557, 3, 1, '1.00', NULL),
(88, 557, 1, 5, '5.00', NULL),
(89, 558, 3, 1, '1.00', NULL),
(90, 558, 1, 5, '5.00', NULL),
(91, 559, 3, 1, '1.00', NULL),
(92, 559, 1, 5, '5.00', NULL),
(93, 560, 3, 1, '1.00', NULL),
(94, 560, 1, 5, '5.00', NULL),
(95, 561, 3, 1, '1.00', NULL),
(96, 561, 1, 5, '5.00', NULL),
(97, 562, 3, 2, '2.00', NULL),
(98, 562, 1, 5, '5.00', NULL),
(99, 563, 3, 2, '2.00', NULL),
(100, 563, 1, 5, '5.00', NULL),
(101, 564, 3, 2, '2.00', NULL),
(102, 564, 1, 5, '5.00', NULL),
(103, 565, 3, 2, '2.00', NULL),
(104, 565, 1, 5, '5.00', NULL),
(105, 566, 3, 2, '2.00', NULL),
(106, 566, 1, 5, '5.00', NULL),
(107, 567, 3, 2, '2.00', NULL),
(108, 567, 1, 5, '5.00', NULL),
(109, 568, 3, 2, '2.00', NULL),
(110, 568, 1, 5, '5.00', NULL),
(111, 569, 3, 2, '2.00', NULL),
(112, 569, 1, 5, '5.00', NULL),
(113, 570, 3, 2, '2.00', NULL),
(114, 570, 1, 5, '5.00', NULL),
(115, 571, 3, 7, '7.00', NULL),
(116, 571, 1, 5, '5.00', NULL),
(117, 572, 3, 7, '7.00', NULL),
(118, 572, 1, 5, '5.00', NULL),
(119, 573, 3, 7, '7.00', NULL),
(120, 573, 1, 5, '5.00', NULL),
(121, 574, 3, 8, '8.00', NULL),
(122, 574, 1, 7, '7.00', NULL),
(123, 576, 1, 3, '3.00', NULL),
(124, 577, 1, 3, '3.00', NULL),
(125, 580, 4, 2, '2.00', NULL),
(126, 582, 4, 4, '4.00', NULL),
(127, 582, 1, 1, '1.00', NULL),
(128, 583, 4, 4, '4.00', NULL),
(129, 583, 1, 1, '1.00', NULL),
(130, 585, 1, 4, '4.00', NULL),
(131, 586, 1, 4, '4.00', NULL),
(132, 593, 1, 2, '2.00', NULL),
(133, 593, 3, 1, '1.00', NULL),
(134, 594, 1, 2, '2.00', NULL),
(135, 594, 3, 1, '1.00', NULL),
(136, 595, 1, 2, '2.00', NULL),
(137, 595, 3, 1, '1.00', NULL),
(138, 596, 1, 2, '2.00', NULL),
(139, 596, 3, 1, '1.00', NULL),
(140, 597, 1, 2, '2.00', NULL),
(141, 597, 3, 1, '1.00', NULL),
(142, 599, 1, 1, '1.00', NULL),
(143, 601, 1, 1, '1.00', NULL),
(144, 601, 2, 2, '2.00', NULL),
(145, 602, 1, 1, '1.00', NULL),
(146, 602, 2, 2, '2.00', NULL),
(147, 603, 1, 1, '1.00', NULL),
(148, 603, 2, 2, '2.00', NULL),
(149, 604, 1, 1, '1.00', NULL),
(150, 604, 2, 2, '2.00', NULL),
(151, 605, 1, 1, '1.00', NULL),
(152, 605, 2, 2, '2.00', NULL),
(153, 606, 1, 1, '1.00', NULL),
(154, 606, 2, 2, '2.00', NULL),
(155, 607, 1, 1, '1.00', NULL),
(156, 607, 2, 2, '2.00', NULL),
(157, 622, 1, 3, '3.00', NULL),
(158, 622, 3, 1, '1.00', NULL),
(159, 624, 1, 2, '2.00', NULL),
(160, 624, 3, 4, '4.00', NULL),
(161, 625, 1, 2, '2.00', NULL),
(162, 625, 3, 8, '8.00', NULL),
(163, 626, 3, 1, '1.00', NULL),
(164, 626, 5, 1, '1.00', NULL),
(165, 627, 3, 2, '2.00', NULL),
(166, 627, 5, 1, '1.00', NULL),
(167, 628, 3, 2, '2.00', NULL),
(168, 628, 5, 1, '1.00', NULL),
(169, 629, 1, 2, '2.00', NULL),
(170, 629, 3, 8, '8.00', NULL),
(171, 638, 1, 1, '1.00', NULL),
(172, 639, 1, 5, '5.00', NULL),
(173, 640, 1, 5, '5.00', NULL),
(174, 642, 1, 5, '5.00', NULL),
(175, 643, 1, 5, '5.00', NULL),
(176, 644, 1, 5, '5.00', NULL),
(177, 646, 1, 5, '5.00', NULL),
(178, 647, 1, 5, '5.00', NULL),
(179, 648, 1, 5, '5.00', NULL),
(180, 649, 1, 5, '5.00', NULL),
(181, 668, 1, 6, '5.95', NULL),
(182, 669, 1, 6, '5.95', NULL),
(183, 670, 1, 16, '5.95', NULL),
(184, 685, 1, 2, '5.95', NULL),
(185, 686, 1, 2, '5.95', NULL),
(186, 687, 1, 5, '5.95', NULL),
(187, 688, 1, 10, '5.95', NULL),
(188, 689, 1, 10, '5.95', NULL),
(189, 690, 1, 10, '5.95', NULL),
(190, 691, 1, 20, '5.95', NULL),
(191, 692, 4, 20, '8.95', NULL),
(192, 692, 1, 20, '5.95', NULL),
(193, 693, 4, 30, '8.95', NULL),
(194, 693, 1, 30, '5.95', NULL),
(195, 694, 1, 1, '5.95', NULL),
(196, 695, 5, 1, '9.99', NULL),
(197, 696, 3, 1, '7.95', NULL),
(198, 696, 5, 1, '9.99', NULL),
(199, 697, 2, 1, '6.95', NULL),
(200, 697, 3, 1, '7.95', NULL),
(201, 697, 5, 1, '9.99', NULL),
(202, 698, 2, 33, '6.95', NULL),
(203, 698, 3, 1, '7.95', NULL),
(204, 698, 4, 1, '8.95', NULL),
(205, 698, 5, 1, '9.99', NULL),
(206, 699, 2, 33, '6.95', NULL),
(207, 699, 3, 1, '7.95', NULL),
(208, 699, 4, 1, '8.95', NULL),
(209, 699, 5, 1, '9.99', NULL),
(210, 700, 1, 2, '5.95', NULL),
(211, 700, 2, 34, '6.95', NULL),
(212, 700, 3, 1, '7.95', NULL),
(213, 700, 4, 1, '8.95', NULL),
(214, 700, 5, 1, '9.99', NULL),
(215, 701, 1, 2, '5.95', NULL),
(216, 701, 2, 34, '6.95', NULL),
(217, 701, 3, 1, '7.95', NULL),
(218, 701, 4, 1, '8.95', NULL),
(219, 701, 5, 1, '9.99', NULL),
(220, 702, 1, 2, '5.95', NULL),
(221, 702, 2, 34, '6.95', NULL),
(222, 702, 3, 1, '7.95', NULL),
(223, 702, 4, 1, '8.95', NULL),
(224, 702, 5, 1, '9.99', NULL),
(225, 703, 1, 2, '5.95', NULL),
(226, 703, 2, 34, '6.95', NULL),
(227, 703, 3, 1, '7.95', NULL),
(228, 703, 4, 1, '8.95', NULL),
(229, 703, 5, 1, '9.99', NULL),
(230, 704, 1, 2, '5.95', NULL),
(231, 704, 2, 34, '6.95', NULL),
(232, 704, 3, 1, '7.95', NULL),
(233, 704, 4, 1, '8.95', NULL),
(234, 704, 5, 1, '9.99', NULL),
(235, 705, 1, 2, '5.95', NULL),
(236, 705, 2, 34, '6.95', NULL),
(237, 705, 3, 1, '7.95', NULL),
(238, 705, 4, 1, '8.95', NULL),
(239, 705, 5, 1, '9.99', NULL),
(240, 706, 1, 2, '5.95', NULL),
(241, 706, 2, 34, '6.95', NULL),
(242, 706, 3, 1, '7.95', NULL),
(243, 706, 4, 1, '8.95', NULL),
(244, 706, 5, 1, '9.99', NULL),
(245, 707, 1, 2, '5.95', NULL),
(246, 707, 2, 34, '6.95', NULL),
(247, 707, 3, 1, '7.95', NULL),
(248, 707, 4, 1, '8.95', NULL),
(249, 707, 5, 1, '9.99', NULL),
(250, 708, 1, 2, '5.95', NULL),
(251, 708, 2, 34, '6.95', NULL),
(252, 708, 3, 1, '7.95', NULL),
(253, 708, 4, 1, '8.95', NULL),
(254, 708, 5, 1, '9.99', NULL),
(255, 709, 1, 2, '5.95', NULL),
(256, 709, 2, 34, '6.95', NULL),
(257, 709, 3, 1, '7.95', NULL),
(258, 709, 4, 1, '8.95', NULL),
(259, 709, 5, 1, '9.99', NULL),
(260, 710, 1, 2, '5.95', NULL),
(261, 710, 2, 34, '6.95', NULL),
(262, 710, 3, 1, '7.95', NULL),
(263, 710, 4, 1, '8.95', NULL),
(264, 710, 5, 1, '9.99', NULL),
(265, 711, 1, 2, '5.95', NULL),
(266, 711, 2, 34, '6.95', NULL),
(267, 711, 3, 1, '7.95', NULL),
(268, 711, 4, 1, '8.95', NULL),
(269, 711, 5, 1, '9.99', NULL),
(270, 712, 1, 2, '5.95', NULL),
(271, 712, 2, 34, '6.95', NULL),
(272, 712, 3, 1, '7.95', NULL),
(273, 712, 4, 1, '8.95', NULL),
(274, 712, 5, 1, '9.99', NULL),
(275, 713, 1, 2, '5.95', NULL),
(276, 713, 2, 34, '6.95', NULL),
(277, 713, 3, 1, '7.95', NULL),
(278, 713, 4, 1, '8.95', NULL),
(279, 713, 5, 1, '9.99', NULL),
(280, 714, 1, 2, '5.95', NULL),
(281, 714, 2, 36, '6.95', NULL),
(282, 714, 3, 1, '7.95', NULL),
(283, 714, 4, 1, '8.95', NULL),
(284, 714, 5, 1, '9.99', NULL),
(285, 715, 1, 2, '5.95', NULL),
(286, 715, 2, 36, '6.95', NULL),
(287, 715, 3, 1, '7.95', NULL),
(288, 715, 4, 1, '8.95', NULL),
(289, 715, 5, 1, '9.99', NULL),
(290, 716, 1, 2, '5.95', NULL),
(291, 716, 2, 36, '6.95', NULL),
(292, 716, 3, 1, '7.95', NULL),
(293, 716, 4, 1, '8.95', NULL),
(294, 716, 5, 1, '9.99', NULL),
(295, 717, 1, 2, '5.95', NULL),
(296, 717, 2, 36, '6.95', NULL),
(297, 717, 3, 1, '7.95', NULL),
(298, 717, 4, 1, '8.95', NULL),
(299, 717, 5, 1, '9.99', NULL),
(300, 718, 1, 9, '5.95', NULL),
(301, 718, 2, 40, '6.95', NULL),
(302, 718, 3, 9, '7.95', NULL),
(303, 718, 4, 9, '8.95', NULL),
(304, 718, 5, 9, '9.99', NULL),
(305, 719, 1, 50, '5.95', NULL),
(306, 719, 2, 50, '6.95', NULL),
(307, 719, 3, 10, '7.95', NULL),
(308, 719, 4, 10, '8.95', NULL),
(309, 719, 5, 10, '9.99', NULL),
(310, 720, 10, 2, '999.00', NULL),
(311, 721, 10, 5, '999.00', NULL),
(312, 722, 10, 2, '999.00', NULL),
(313, 723, 10, 2, '999.00', NULL),
(314, 724, 10, 2, '999.00', NULL),
(315, 725, 10, 1, '999.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`product_id` int(4) unsigned NOT NULL,
  `product_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `price`, `description`, `image_name`) VALUES
(10, 'Yearly Subscription', '999.00', 'Yearly subscription to become a webmaster.<br/><br/> Includes private access to closed source software which can be used to build instant websites. Your private tudor will help you create any website you like!<br><br/>Includes web domain, file management, personal blog, bookmarks and personal tutor.', 'Fotolia_28940477_XS.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `raspberry_logins`
--

CREATE TABLE IF NOT EXISTS `raspberry_logins` (
`my_blogger_id` int(10) unsigned NOT NULL,
  `login` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(42) COLLATE utf8_unicode_ci NOT NULL,
  `activation` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_deactivated` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `raspberry_logins`
--

INSERT INTO `raspberry_logins` (`my_blogger_id`, `login`, `password`, `activation`, `date_deactivated`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '4', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tasty_tags`
--

CREATE TABLE IF NOT EXISTS `tasty_tags` (
`tag_id` int(10) unsigned NOT NULL,
  `tag` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `tasty_tags`
--

INSERT INTO `tasty_tags` (`tag_id`, `tag`) VALUES
(33, 'array'),
(5, 'bookmark'),
(20, 'bookmarkcana'),
(36, 'button'),
(9, 'canadians'),
(43, 'conditions'),
(35, 'css'),
(21, 'epsom'),
(30, 'fetch'),
(10, 'google'),
(40, 'htaccess'),
(44, 'import'),
(49, 'javascript'),
(15, 'jeeves'),
(46, 'joomla'),
(47, 'jquery'),
(29, 'mysql'),
(37, 'mysqlfetchas'),
(18, 'newtag4'),
(19, 'newtag5'),
(50, 'no'),
(11, 'one'),
(3, 'outdated'),
(28, 'php'),
(48, 'plugin'),
(1, 'prehistoric'),
(6, 'printer'),
(39, 'refresh'),
(41, 'rewrite'),
(34, 'rollover'),
(32, 'row'),
(17, 'rrr'),
(42, 'rules'),
(8, 'search'),
(45, 'session'),
(2, 'slow'),
(7, 'stock'),
(13, 'tab'),
(31, 'table'),
(12, 'tag'),
(14, 'tag1'),
(22, 'tag2'),
(23, 'tag3'),
(24, 'tag4'),
(25, 'tag5'),
(26, 'tag6'),
(27, 'tag7'),
(16, 'tags'),
(38, 'wdwdw'),
(4, 'yahoo');

-- --------------------------------------------------------

--
-- Table structure for table `tasty_tags_blog`
--

CREATE TABLE IF NOT EXISTS `tasty_tags_blog` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tasty_tags_blog`
--

INSERT INTO `tasty_tags_blog` (`tag_id`, `tag`) VALUES
(33, 'array'),
(5, 'bookmark'),
(20, 'bookmarkcana'),
(36, 'button'),
(9, 'canadians'),
(43, 'conditions'),
(35, 'css'),
(21, 'epsom'),
(30, 'fetch'),
(10, 'google'),
(40, 'htaccess'),
(44, 'import'),
(49, 'javascript'),
(15, 'jeeves'),
(46, 'joomla'),
(47, 'jquery'),
(29, 'mysql'),
(37, 'mysqlfetchas'),
(18, 'newtag4'),
(19, 'newtag5'),
(11, 'one'),
(3, 'outdated'),
(28, 'php'),
(48, 'plugin'),
(1, 'prehistoric'),
(6, 'printer'),
(39, 'refresh'),
(41, 'rewrite'),
(34, 'rollover'),
(32, 'row'),
(17, 'rrr'),
(42, 'rules'),
(8, 'search'),
(45, 'session'),
(2, 'slow'),
(7, 'stock'),
(13, 'tab'),
(31, 'table'),
(12, 'tag'),
(14, 'tag1'),
(22, 'tag2'),
(23, 'tag3'),
(24, 'tag4'),
(25, 'tag5'),
(26, 'tag6'),
(27, 'tag7'),
(16, 'tags'),
(38, 'wdwdw'),
(4, 'yahoo');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uploads_categories`
--

CREATE TABLE IF NOT EXISTS `uploads_categories` (
`id` int(11) NOT NULL,
  `category` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `uploads_categories`
--

INSERT INTO `uploads_categories` (`id`, `category`) VALUES
(1, 'PDF'),
(2, 'HTML'),
(4, 'TXT'),
(5, 'CSS'),
(6, 'JAVASCRIPT'),
(7, 'PHP'),
(8, 'WORD DOC'),
(11, 'ZIP'),
(12, 'JPEG'),
(13, 'GIF'),
(14, 'PNG');

-- --------------------------------------------------------

--
-- Table structure for table `uploads_permission`
--

CREATE TABLE IF NOT EXISTS `uploads_permission` (
  `public` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads_permission`
--

INSERT INTO `uploads_permission` (`public`) VALUES
(0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
 ADD PRIMARY KEY (`artist_id`), ADD KEY `full_name` (`last_name`,`first_name`);

--
-- Indexes for table `blocked_bookmarks`
--
ALTER TABLE `blocked_bookmarks`
 ADD PRIMARY KEY (`login`,`customer_id`,`ip_address`);

--
-- Indexes for table `blog_bookmark_header`
--
ALTER TABLE `blog_bookmark_header`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
 ADD KEY `bookmark_id` (`bookmark_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `blog_urls`
--
ALTER TABLE `blog_urls`
 ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `bookmark_categories`
--
ALTER TABLE `bookmark_categories`
 ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `bookmark_tags`
--
ALTER TABLE `bookmark_tags`
 ADD PRIMARY KEY (`tag_id`,`bookmark_id`,`customer_id`);

--
-- Indexes for table `bookmark_urls`
--
ALTER TABLE `bookmark_urls`
 ADD PRIMARY KEY (`bookmark_id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
 ADD PRIMARY KEY (`cms_id`), ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `cms_footer`
--
ALTER TABLE `cms_footer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_footer_edit`
--
ALTER TABLE `cms_footer_edit`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_header`
--
ALTER TABLE `cms_header`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_header_edit`
--
ALTER TABLE `cms_header_edit`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_path`
--
ALTER TABLE `cms_path`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_sidebar`
--
ALTER TABLE `cms_sidebar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_url`
--
ALTER TABLE `cms_url`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`customer_id`), ADD KEY `email_pass` (`email`,`pass`);

--
-- Indexes for table `customer_blogs`
--
ALTER TABLE `customer_blogs`
 ADD KEY `customer_id` (`customer_id`), ADD KEY `bookmark_id` (`bookmark_id`), ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `customer_bookmarks`
--
ALTER TABLE `customer_bookmarks`
 ADD PRIMARY KEY (`customer_id`,`bookmark_id`), ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
 ADD PRIMARY KEY (`customer_id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `customer_network`
--
ALTER TABLE `customer_network`
 ADD PRIMARY KEY (`friendID`);

--
-- Indexes for table `flagged_bookmarks`
--
ALTER TABLE `flagged_bookmarks`
 ADD PRIMARY KEY (`bookmark_id`,`customer_id`,`ip_address`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins_validate`
--
ALTER TABLE `logins_validate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_id`), ADD KEY `customer_id` (`customer_id`), ADD KEY `order_date` (`order_date`);

--
-- Indexes for table `order_contents`
--
ALTER TABLE `order_contents`
 ADD PRIMARY KEY (`oc_id`), ADD KEY `order_id` (`order_id`), ADD KEY `print_id` (`product_id`), ADD KEY `ship_date` (`ship_date`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`product_id`), ADD KEY `print_name` (`product_name`), ADD KEY `price` (`price`);

--
-- Indexes for table `raspberry_logins`
--
ALTER TABLE `raspberry_logins`
 ADD PRIMARY KEY (`my_blogger_id`), ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `tasty_tags`
--
ALTER TABLE `tasty_tags`
 ADD PRIMARY KEY (`tag_id`), ADD UNIQUE KEY `tag` (`tag`);

--
-- Indexes for table `tasty_tags_blog`
--
ALTER TABLE `tasty_tags_blog`
 ADD PRIMARY KEY (`tag_id`), ADD KEY `tag` (`tag`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `uploads_categories`
--
ALTER TABLE `uploads_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads_permission`
--
ALTER TABLE `uploads_permission`
 ADD KEY `1` (`public`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
MODIFY `artist_id` int(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blog_bookmark_header`
--
ALTER TABLE `blog_bookmark_header`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `blog_urls`
--
ALTER TABLE `blog_urls`
MODIFY `bookmark_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `bookmark_categories`
--
ALTER TABLE `bookmark_categories`
MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `bookmark_urls`
--
ALTER TABLE `bookmark_urls`
MODIFY `bookmark_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
MODIFY `cms_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `cms_footer`
--
ALTER TABLE `cms_footer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_footer_edit`
--
ALTER TABLE `cms_footer_edit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_header`
--
ALTER TABLE `cms_header`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_header_edit`
--
ALTER TABLE `cms_header_edit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_path`
--
ALTER TABLE `cms_path`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_sidebar`
--
ALTER TABLE `cms_sidebar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_url`
--
ALTER TABLE `cms_url`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
MODIFY `customer_id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
MODIFY `customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `customer_network`
--
ALTER TABLE `customer_network`
MODIFY `friendID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `logins_validate`
--
ALTER TABLE `logins_validate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=341;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=726;
--
-- AUTO_INCREMENT for table `order_contents`
--
ALTER TABLE `order_contents`
MODIFY `oc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=316;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `product_id` int(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `raspberry_logins`
--
ALTER TABLE `raspberry_logins`
MODIFY `my_blogger_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tasty_tags`
--
ALTER TABLE `tasty_tags`
MODIFY `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uploads_categories`
--
ALTER TABLE `uploads_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
